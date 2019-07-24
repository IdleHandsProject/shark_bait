/* Shark Bair Firmware TX
    Program sends a signal to each of the 4 pumping stations and checks to see if they are running
    It will also send a "Flow" value to make sure they are pumping at the correct rate.
*/
#include <SPI.h>
#include <RH_RF95.h>


#define FeatherLORA
//#define ModuleLORA

//LORA Module
#ifdef ModuleLORA
#define RFM95_CS 13
#define RFM95_RST 11
#define RFM95_INT 12
#endif
// LORA Feather
#ifdef FeatherLORA
#define RFM95_CS 8
#define RFM95_RST 4
#define RFM95_INT 3
#endif

#define TESTKNOB
#define BUTT1 9

int s[4] = {14, 15, 16, 17};
int b[4] = {18, 19, 0, 1};

int sLED[4] = {20, 21, 5, 6};
int tLED[4] = {10, 11, 12, 13};

int f[4] = {0, 0, 0, 0};


// Change to 434.0 or other frequency, must match RX's freq!
#define RF95_FREQ 915.0

int state = 0;

// Singleton instance of the radio driver
RH_RF95 rf95(RFM95_CS, RFM95_INT);

void setup()
{
  pinMode(RFM95_RST, OUTPUT);
  digitalWrite(RFM95_RST, HIGH);
  pinMode(BUTT1, INPUT);
  //pinMode(8, OUTPUT);

  for (int y = 0; y < 3; y++) {
    pinMode(sLED[y], OUTPUT);
    pinMode(tLED[y], OUTPUT);
    digitalWrite(sLED[y], HIGH);
    digitalWrite(tLED[y], HIGH);
    pinMode(b[y], INPUT);
    pinMode(s[y], OUTPUT);
    digitalWrite(s[y], LOW);
    delay(300);
  }
  delay(1000);
  for (int j = 0; j < 3; j++) {
    digitalWrite(sLED[j], LOW);
    digitalWrite(tLED[j], LOW);
  }

  Serial.begin(115200);
  //while (!Serial) {
  //  delay(1);
  //}
#ifdef TESTKNOB
  int lasttestflow = 0;
  while (1) {
    int testflow = checkFlow(0);
    if (lasttestflow != testflow) {
      Serial.println(testflow);
      lasttestflow = testflow;
    }
    delay(100);
  }
#endif
  delay(100);

  Serial.println("Feather LoRa TX Test!");

  // manual reset
  digitalWrite(RFM95_RST, LOW);
  delay(10);
  digitalWrite(RFM95_RST, HIGH);
  delay(10);

  while (!rf95.init()) {
    Serial.println("LoRa radio init failed");
    while (1);
  }
  Serial.println("LoRa radio init OK!");

  // Defaults after init are 434.0MHz, modulation GFSK_Rb250Fd250, +13dbM
  if (!rf95.setFrequency(RF95_FREQ)) {
    Serial.println("setFrequency failed");
    while (1);
  }
  Serial.print("Set Freq to: "); Serial.println(RF95_FREQ);

  // Defaults after init are 434.0MHz, 13dBm, Bw = 125 kHz, Cr = 4/5, Sf = 128chips/symbol, CRC on

  // The default transmitter power is 13dBm, using PA_BOOST.
  // If you are using RFM95/96/97/98 modules which uses the PA_BOOST transmitter pin, then
  // you can set transmitter powers from 5 to 23 dBm:
  rf95.setTxPower(23, false);
}

int16_t packetnum = 0;  // packet counter, we increment per xmission

void loop()
{
  int x = 0;
  state = !(digitalRead(BUTT1));
  while (x < 4) {
    state = !(digitalRead(BUTT1));
    digitalWrite(13, state);
    int flow = checkFlow(x);
    transmitBait(x, state, flow);
    delay(400); // Wait 1 second between transmits, could also 'sleep' here!
    x++;
  }
  delay(5000);
}


//Sends to the bait number (0-3), selects the state (0/off 1/on), selects flow setting (0-9)

void transmitBait(int baitnum, int state, int flow) {
  digitalWrite(13, HIGH);
  Serial.println("Transmitting..."); // Send a message to rf95_server
  String sendStr = String(baitnum);
  sendStr += ",";
  sendStr += String(state);
  sendStr += ",";
  sendStr += String(flow);
  Serial.print("Sending "); Serial.println(sendStr);
  char sendBuf[6];
  sendStr.toCharArray(sendBuf, 6);
  Serial.println("Sending...");
  delay(10);

  rf95.send((uint8_t *)sendBuf, sizeof(sendBuf));

  Serial.println("Waiting for packet to complete...");
  delay(10);
  rf95.waitPacketSent();
  // Now wait for a reply
  uint8_t buf[RH_RF95_MAX_MESSAGE_LEN];
  uint8_t len = sizeof(buf);

  Serial.println("Waiting for reply...");
  if (rf95.waitAvailableTimeout(400))
  {
    // Should be a reply message for us now
    if (rf95.recv(buf, &len))
    {
      digitalWrite(tLED[baitnum], HIGH);
      Serial.print("Got reply: ");
      Serial.println((char*)buf);
      state = buf[2] - 48;

      //int flowSetting = buf[4] - 48;
      digitalWrite(sLED[baitnum], state);
      Serial.print("RSSI: ");
      Serial.println(rf95.lastRssi(), DEC);
      digitalWrite(tLED[baitnum], LOW);
    }
    else
    {
      Serial.println("Receive failed");
    }
  }
  else
  {
    Serial.println("No reply, is there a listener around?");
  }
  digitalWrite(13, LOW);



}

byte checkMuxPin(int pin, int bank) {
  for (int i = 0; i < 4; i++) {
    byte state = bitRead(pin, i);
    digitalWrite(s[i], state);
    //Serial.print(state);
  }
  //Serial.print(",");
  //Serial.println(pin);
  byte check = digitalRead(bank);
  return check;
}

int checkFlow(int bait) {
  int setting = 0;
  for (int i = 0; i < 10; i++) {
    byte val = checkMuxPin(i, b[bait]);
    if (val == 0) {
      setting = i;
    }
  }
  //Serial.print("Flow Setting: ");
  //Serial.println(setting);
  return setting;
}
