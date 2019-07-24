EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Adafruit_FeatherWing-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "sam. 04 avril 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 9150 600  0    60   ~ 0
Adafruit FeatherWing\n
$Comp
L VCC #PWR02
U 1 1 56D753B8
P 10400 750
F 0 "#PWR02" H 10400 600 50  0001 C CNN
F 1 "VCC" H 10400 900 50  0000 C CNN
F 2 "" H 10400 750 50  0000 C CNN
F 3 "" H 10400 750 50  0000 C CNN
	1    10400 750 
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X12 JP3
U 1 1 56D754D1
P 10000 1800
F 0 "JP3" H 10000 2450 50  0000 C CNN
F 1 "PinHeader_01x12_2.54mm" V 10100 1800 50  0000 C CNN
F 2 "Adafruit_FeatherWing:Conn_PinHeader_1x12" H 10000 1800 50  0001 C CNN
F 3 "" H 10000 1800 50  0000 C CNN
	1    10000 1800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X16 JP1
U 1 1 56D755F3
P 10950 1650
F 0 "JP1" H 10950 800 50  0000 C CNN
F 1 "PinHeader_01x16_2.54mm" V 11050 1650 50  0000 C CNN
F 2 "Adafruit_FeatherWing:Conn_PinHeader_1x16" H 10950 1650 50  0001 C CNN
F 3 "" H 10950 1650 50  0000 C CNN
F 4 "_" H 10950 1650 60  0001 C CNN "Manf#"
F 5 "_" H 10950 1650 60  0001 C CNN "Manf"
F 6 "_" H 10950 1650 60  0001 C CNN "Optn"
	1    10950 1650
	1    0    0    1   
$EndComp
$Comp
L GND #PWR04
U 1 1 56D75A03
P 10400 2500
F 0 "#PWR04" H 10400 2250 50  0001 C CNN
F 1 "GND" H 10400 2350 50  0000 C CNN
F 2 "" H 10400 2500 50  0000 C CNN
F 3 "" H 10400 2500 50  0000 C CNN
	1    10400 2500
	1    0    0    -1  
$EndComp
Text Label 10750 900  2    60   ~ 0
~RESET
Text Label 10750 1100 2    60   ~ 0
AREF
Text Label 10750 1300 2    60   ~ 0
A0
Text Label 10750 1400 2    60   ~ 0
A1
Text Label 10750 1500 2    60   ~ 0
A2
Text Label 10750 1600 2    60   ~ 0
A3
Text Label 10750 1800 2    60   ~ 0
A5
Text Label 10750 1900 2    60   ~ 0
SCK
Text Label 10750 2000 2    60   ~ 0
MOSI
Text Label 10750 2100 2    60   ~ 0
MISO
Text Label 10750 2200 2    60   ~ 0
D0
Text Label 10750 2300 2    60   ~ 0
D1
Text Label 10750 1700 2    60   ~ 0
A4
Text Label 9800 1350 2    60   ~ 0
EN
Text Label 9800 1550 2    60   ~ 0
D13
Text Label 9800 1650 2    60   ~ 0
D12
Text Label 9800 1750 2    60   ~ 0
D11
Text Label 9800 1850 2    60   ~ 0
D10
Text Label 9800 1950 2    60   ~ 0
D9
Text Label 9800 2050 2    60   ~ 0
D6
Text Label 9800 2150 2    60   ~ 0
D5
Text Label 9800 2250 2    60   ~ 0
SCI
Text Label 9800 2350 2    60   ~ 0
SDA
Wire Notes Line
	11200 2750 9100 2750
Wire Notes Line
	9100 2750 9100 500 
Wire Notes Line
	9100 650  10150 650 
Wire Notes Line
	10150 650  10150 500 
Wire Wire Line
	10750 1200 10400 1200
Wire Wire Line
	10400 1200 10400 2500
Wire Wire Line
	10750 2400 10400 2400
Connection ~ 10400 2400
Wire Wire Line
	10750 1000 10400 1000
Wire Wire Line
	10400 1000 10400 750 
Wire Wire Line
	9800 1450 9500 1450
Wire Wire Line
	9800 1250 9500 1250
Text Label 9500 1250 2    60   ~ 0
VBAT
Text Label 9500 1450 2    60   ~ 0
VUSB
$EndSCHEMATC
