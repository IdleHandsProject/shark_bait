/*Shark Bait Firmware RX
   Program recieves a signal from the remote to start or stop the shark bait
   It recieves a value asking if that is the currect receiver, and also a "Flow" value selected by the user.
*/


#define FEATHERMOTOR
//#define L298N

#include <SPI.h>
#include <RH_RF95.h>
#include <Servo.h>

#ifdef FEATHERMOTOR
#include <Wire.h>
#include <Adafruit_MotorShield.h>
Adafruit_MotorShield AFMS = Adafruit_MotorShield();
Adafruit_DCMotor *pump = AFMS.getMotor(1);
#endif

//#define TESTKNOB
//#define DEBUG*

Servo myservo;

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

#define MOTORA 20
#define MOTORB 21

// Change to 434.0 or other frequency, must match RX's freq!
#define RF95_FREQ 915.0

// Singleton instance of the radio driver
RH_RF95 rf95(RFM95_CS, RFM95_INT);

// Blinky on receipt
#define LED 13

int RecNum = 0;
int state = 0; // 0 = off, 1 = pumping
int laststate = 0;
int flowSetting = 0;  // Flow Settings(0-9)
int lastflow = 0;
int flowDelay = 60000;

unsigned long startTime = 0;
unsigned long pumpTime = 0;

#define PRIME A1
#define ARM A0
#define ARMLED 9
#define SERVO 5
#define LIMIT 5
#define MINUTES 60000
#define SECONDS 1000
#define PUMPTIME 100

int s[4] = {A3, A2, A5, A4};
int com = 6;

void setup()
{
  pinMode(LED, OUTPUT);
  pinMode(RFM95_RST, OUTPUT);
  digitalWrite(RFM95_RST, HIGH);
  pinMode(ARM, INPUT_PULLUP);
  pinMode(ARMLED, OUTPUT);
  digitalWrite(ARMLED, LOW);
  pinMode(PRIME, INPUT_PULLUP);
  pinMode(com, INPUT);
  for (int x = 0; x < 4; x++) {
    pinMode(s[x], OUTPUT);
    digitalWrite(s[x], LOW);
  }

#ifdef L298N
  pinMode(MOTORB, OUTPUT);
  digitalWrite(MOTORB, LOW);
  pinMode(MOTORA, OUTPUT);
  digitalWrite(MOTORA, LOW);
#endif

  Serial.begin(115200);
#ifdef FEATHERMOTOR
  AFMS.begin();
  pump->setSpeed(255);
  pump->run(FORWARD);
  // turn on motor
  pump->run(RELEASE);
#endif
  //while (!Serial) {
  //  delay(1);
  //}
  //delay(100);
  // Check what number the sensor is set to (with the Rotary DIP);
  RecNum = checkRec();
  myservo.attach(SERVO);
  myservo.write(90);
  delay(500);
  myservo.detach();


#ifdef TESTKNOB
  int lasttestflow = 0;
  while (1) {
    int testflow = checkFlow();
    if (lasttestflow != testflow) {
      Serial.println(testflow);
      lasttestflow = testflow;
    }

    delay(100);
  }
#endif


  // IF YOU START WITH ARM SWITCH ACTIVE IT WILL MANUALLY OVERRIDE THE RF SIGNAL AND START PUMPING IN ONE HOUR DEPENDING ON SET FLOW RATE
  int OVERRIDE = !(digitalRead(ARM));
  unsigned int sorTime = millis();
  unsigned int eorTime = millis();
  unsigned int lorTime = millis();
  unsigned int porTime = millis();
  int overtime = 60000 * 60;
  //int overtime = 5000;
  int pumping = 0;
  int flashtime = 500;
  byte light = 0;
  int flow = checkFlow();
  setFlow(flow);
  Serial.println("Checking Manual Override Switch");
  while ( OVERRIDE == 1) {

    OVERRIDE = !(digitalRead(ARM));
    eorTime = millis();
    if (eorTime - lorTime > flashtime) {
      light = !(light);
      digitalWrite(ARMLED, light);
      lorTime = millis();
      Serial.println(light);
      Serial.println(overtime - eorTime);
    }
    if (pumping == 0) {
      if (eorTime - sorTime > overtime) {
        pumping = 1;
        spinPump();
        spinPump();
      }
    }
    while (pumping == 1) {
      flowSetting = checkFlow();
      setFlow(flowSetting);
      eorTime = millis();
      if (eorTime - porTime > flowDelay) {
        spinPump();
        porTime = millis();
        if (porTime > 120 * MINUTES){
          Serial.println("Test Done");
          while (1);
        }
      }
    }

  }

  Serial.println("Feather LoRa RX Test!");

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
  //Serial.print("Set Freq to: "); Serial.println(RF95_FREQ);

  // Defaults after init are 434.0MHz, 13dBm, Bw = 125 kHz, Cr = 4/5, Sf = 128chips/symbol, CRC on

  // The default transmitter power is 13dBm, using PA_BOOST.
  // If you are using RFM95/96/97/98 modules which uses the PA_BOOST transmitter pin, then
  // you can set transmitter powers from 5 to 23 dBm:
  rf95.setTxPower(23, false);
  //attachInterrupt(PRIME, Prime, LOW);
}

void loop()
{
  int prime = digitalRead(PRIME);
  while (prime == 0) {
    prime = digitalRead(PRIME);
    Prime();
  }
  flowSetting = checkFlow();
  for (int z = 0; z < flowSetting + 1; z++) {
    digitalWrite(ARMLED, HIGH);
    delay(100);
    digitalWrite(ARMLED, LOW);
    delay(100);
  }
  delay(1000);
  int armed = !(digitalRead(ARM));

  while (armed == 1) {
    if (rf95.available()) {
      // Should be a message for us now
      uint8_t buf[RH_RF95_MAX_MESSAGE_LEN];
      uint8_t len = sizeof(buf);

      if (rf95.recv(buf, &len))
      {
        digitalWrite(ARMLED, HIGH);
        //RH_RF95::printBuffer("Received: ", buf, len);
        Serial.print("Got: ");
        Serial.println((char*)buf);
        Serial.print("RSSI: ");
        Serial.println(rf95.lastRssi(), DEC);

        // Message for this number.
        if (char(buf[0]) == RecNum + 48) {
          //myservo.attach(SERVO);
          //myservo.write(0);
          //delay(500);
          //myservo.detach();
          state = buf[2] - 48;
          flowSetting = buf[4] - 48;
          if (flowSetting == -16) {
            flowSetting = checkFlow();
            setFlow(flowSetting);
          }
          String sendStr = String(RecNum);
          sendStr += ",";
          sendStr += String(state);
          sendStr += ",";
          sendStr += String(flowSetting);
          char sendBuf[6];
          sendStr.toCharArray(sendBuf, 6);
          rf95.send((uint8_t *)sendBuf, sizeof(sendBuf));
          rf95.waitPacketSent();
          Serial.println("Taking Commands:");
          Serial.print("State: ");
          Serial.println(state);
          Serial.print("Flow Setting: ");
          Serial.println(flowSetting);
          Serial.println("Sent a reply");
        }
        else {
          Serial.println("Message for someone else...");
        }
        digitalWrite(ARMLED, LOW);
      }
      else
      {
        Serial.println("Receive failed");
      }
    }

    if (state != laststate) {
      setServo(state);
      setFlow(flowSetting);
      laststate = state;
      startTime = millis();
      if (state == 1) {
        Serial.println("Starting Pump Timer");
        spinPump();
        spinPump();
      }
    }

    if (state == 1) {
      pumpTime = millis();
      if (pumpTime - startTime > flowDelay) {
        spinPump();
        startTime = millis();
      }
    }
    armed = !(digitalRead(ARM));
  }
}


byte checkTime(unsigned long stime, unsigned long ptime) {
  unsigned long timer = ptime - stime;
  byte timetopump = 0;
  if (timer > flowDelay) {
    timetopump = 1;
  }
  return timetopump;
}

byte checkMuxPin(int pin) {
  for (int i = 0; i < 4; i++) {
    byte state = bitRead(pin, i);
    digitalWrite(s[i], state);
#ifdef DEBUG
    Serial.print(state);
#endif
  }
#ifdef DEBUG
  Serial.print(",");
  Serial.println(pin);
#endif
  byte check = digitalRead(com);
  return check;
}


int checkRec() {
  int Rec = 0;
  for (int i = 11; i < 15; i++) {
    byte val = checkMuxPin(i);
    if (val == 0) {
      Rec = i - 11;
    }
  }
#ifdef DEBUG
  Serial.print("Receiver Number: ");
  Serial.println(Rec);
#endif
  return Rec;
}

int checkFlow() {
  int setting = 0;
  for (int i = 0; i < 10; i++) {
    byte val = checkMuxPin(i);
    if (val == 0) {
      setting = i;
    }
  }
#ifdef DEBUG
  Serial.print("Flow Setting: ");
  Serial.println(setting);
#endif
  return setting;
}

int setFlow(int flowsetting) {
  switch (flowsetting) {
    case 0:
      flowDelay = 15 * MINUTES;
      break;
    case 1:
      flowDelay = 115200;  
      break;
    case 2:
      flowDelay = 57600;
      break;
    case 3:
      flowDelay = 28800;
      break;
    case 4:
      flowDelay = 11520;
      break;
    case 5:
      flowDelay = 5760;
      break;
    case 6:
      flowDelay = 3840;
      break;
    case 7:
      flowDelay = 2880;
      break;
    case 8:
      flowDelay = 1920;
      break;
    case 9:
      flowDelay = 1440;
      break;
    default:
      break;
  }
}

byte checkDir() {
  byte dir = checkMuxPin(10);
  return dir;
}

void setServo(int val) {
  if (val == 1) {
    myservo.attach(SERVO);
    myservo.write(0);
    delay(500);
    myservo.detach();
  }
  else {
    myservo.attach(SERVO);
    myservo.write(90);
    delay(500);
    myservo.detach();
  }
}

void spinPump() { //Spins the pump one pulse
  Serial.println("Spinning Pump");
#ifdef L298N
  digitalWrite(MOTORB, HIGH);
  digitalWrite(MOTORA, LOW);
#endif
#ifdef FEATHERMOTOR
  pump->run(FORWARD);
#endif
  delay(PUMPTIME);
#ifdef L298N
  digitalWrite(MOTORB, LOW);
  digitalWrite(MOTORA, LOW);
#endif
#ifdef FEATHERMOTOR
  pump->run(RELEASE);
#endif
}

void Prime() {
  byte dir = checkDir();
  if (dir == 0) {
#ifdef L298N
    digitalWrite(MOTORA, HIGH);
    digitalWrite(MOTORB, LOW);
#endif
#ifdef FEATHERMOTOR
    pump->run(BACKWARD);
#endif
    Serial.println("Reverse");
  }
  else {
#ifdef L298N
    digitalWrite(MOTORB, HIGH);
    digitalWrite(MOTORA, LOW);
#endif
#ifdef FEATHERMOTOR
    pump->run(FORWARD);
#endif
  }
  int button = digitalRead(PRIME);
  while (button == 0) {
    digitalWrite(ARMLED, HIGH);
    button = digitalRead(PRIME);
    Serial.println("PRIMING Pump");
    delay(100);
    digitalWrite(ARMLED, LOW);
  }
#ifdef L298N
  digitalWrite(MOTORB, LOW);
  digitalWrite(MOTORA, LOW);
#endif
#ifdef FEATHERMOTOR
  pump->run(RELEASE);
#endif

}
