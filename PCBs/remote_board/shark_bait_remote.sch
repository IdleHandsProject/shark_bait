EESchema Schematic File Version 4
LIBS:shark_bait_remote-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
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
Wire Notes Line
	9100 2750 9100 500 
Text Notes 7050 600  0    60   ~ 0
Adafruit FeatherWing\n
$Comp
L shark_bait_remote-rescue:AP2112k_VCC-shark_bait_remote-rescue #PWR01
U 1 1 5CE4174F
P 8300 750
F 0 "#PWR01" H 8300 600 50  0001 C CNN
F 1 "VCC" H 8300 900 50  0000 C CNN
F 2 "" H 8300 750 50  0000 C CNN
F 3 "" H 8300 750 50  0000 C CNN
	1    8300 750 
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:Connector_Generic_Conn_01x12-shark_bait_remote-rescue JP5
U 1 1 5CE41755
P 7900 1850
F 0 "JP5" H 7900 2500 50  0000 C CNN
F 1 "PinHeader_01x12_2.54mm" V 8000 1850 50  0000 C CNN
F 2 "Adafruit_FeatherWing:Conn_PinHeader_1x12_Reduced" H 7900 1850 50  0001 C CNN
F 3 "" H 7900 1850 50  0000 C CNN
	1    7900 1850
	1    0    0    1   
$EndComp
$Comp
L shark_bait_remote-rescue:Connector_Generic_Conn_01x16-shark_bait_remote-rescue JP6
U 1 1 5CE4175F
P 8850 1700
F 0 "JP6" H 8850 850 50  0000 C CNN
F 1 "PinHeader_01x16_2.54mm" V 8950 1700 50  0000 C CNN
F 2 "Adafruit_FeatherWing:Conn_PinHeader_1x16_Reduced" H 8850 1700 50  0001 C CNN
F 3 "" H 8850 1700 50  0000 C CNN
F 4 "_" H 8850 1700 60  0001 C CNN "Manf#"
F 5 "_" H 8850 1700 60  0001 C CNN "Manf"
F 6 "_" H 8850 1700 60  0001 C CNN "Optn"
	1    8850 1700
	1    0    0    1   
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR010
U 1 1 5CE41766
P 8250 2500
F 0 "#PWR010" H 8250 2250 50  0001 C CNN
F 1 "GND" H 8250 2350 50  0000 C CNN
F 2 "" H 8250 2500 50  0000 C CNN
F 3 "" H 8250 2500 50  0000 C CNN
	1    8250 2500
	1    0    0    -1  
$EndComp
Text Label 8650 900  2    60   ~ 0
~RESET
Text Label 8650 1100 2    60   ~ 0
AREF
Text Label 8650 1900 2    60   ~ 0
SCK
Text Label 8650 2000 2    60   ~ 0
MOSI
Text Label 8650 2100 2    60   ~ 0
MISO
Text Label 7700 1350 2    60   ~ 0
EN
Wire Notes Line
	7000 2750 7000 500 
Wire Notes Line
	7000 650  8050 650 
Wire Notes Line
	8050 650  8050 500 
Wire Wire Line
	8650 1200 8250 1200
Wire Wire Line
	8650 1000 8300 1000
Wire Wire Line
	8300 1000 8300 750 
Wire Wire Line
	7250 1450 7300 1450
Wire Wire Line
	7700 1250 7600 1250
Text Label 7600 1250 2    60   ~ 0
VBAT
Text Label 7250 1450 2    60   ~ 0
VUSB
$Comp
L shark_bait_remote-rescue:power_+BATT-shark_bait_remote-rescue #PWR03
U 1 1 5CE5BA76
P 3250 1300
F 0 "#PWR03" H 3250 1150 50  0001 C CNN
F 1 "+BATT" H 3265 1473 50  0000 C CNN
F 2 "" H 3250 1300 50  0001 C CNN
F 3 "" H 3250 1300 50  0001 C CNN
	1    3250 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1300 3250 1400
Wire Wire Line
	3250 1400 3300 1400
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR09
U 1 1 5CE5D0FA
P 3700 1750
F 0 "#PWR09" H 3700 1500 50  0001 C CNN
F 1 "GND" H 3700 1600 50  0000 C CNN
F 2 "" H 3700 1750 50  0000 C CNN
F 3 "" H 3700 1750 50  0000 C CNN
	1    3700 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1750 3700 1700
Wire Wire Line
	4100 1400 4150 1400
Wire Wire Line
	4150 1400 4150 1300
$Comp
L shark_bait_remote-rescue:power_+5V-shark_bait_remote-rescue #PWR04
U 1 1 5CE611F7
P 4150 1300
F 0 "#PWR04" H 4150 1150 50  0001 C CNN
F 1 "+5V" H 4165 1473 50  0000 C CNN
F 2 "" H 4150 1300 50  0001 C CNN
F 3 "" H 4150 1300 50  0001 C CNN
	1    4150 1300
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:power_+5V-shark_bait_remote-rescue #PWR06
U 1 1 5CE654E6
P 7300 1350
F 0 "#PWR06" H 7300 1200 50  0001 C CNN
F 1 "+5V" H 7315 1523 50  0000 C CNN
F 2 "" H 7300 1350 50  0001 C CNN
F 3 "" H 7300 1350 50  0001 C CNN
	1    7300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1450 7300 1350
Connection ~ 7300 1450
$Comp
L shark_bait_remote-rescue:Regulator_Switching_TSR_1-2450-shark_bait_remote-rescue U2
U 1 1 5CE66C96
P 3700 1500
F 0 "U2" H 3700 1867 50  0000 C CNN
F 1 "TSR_1-2450" H 3700 1776 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_TRACO_TSR-1_THT" H 3700 1350 50  0001 L CIN
F 3 "http://www.tracopower.com/products/tsr1.pdf" H 3700 1500 50  0001 C CNN
	1    3700 1500
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:74xx_CD74HC4067M-shark_bait_remote-rescue U3
U 1 1 5CE68F43
P 3350 4500
F 0 "U3" H 3550 5500 50  0000 C CNN
F 1 "CD74HC4067M" H 3750 5400 50  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 4250 3500 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4067.pdf" H 3000 5350 50  0001 C CNN
F 4 "296-29408-1-ND" H 3350 4500 50  0001 C CNN "Digikey Part No."
	1    3350 4500
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR043
U 1 1 5CE68F49
P 3350 5650
F 0 "#PWR043" H 3350 5400 50  0001 C CNN
F 1 "GND" H 3350 5500 50  0000 C CNN
F 2 "" H 3350 5650 50  0000 C CNN
F 3 "" H 3350 5650 50  0000 C CNN
	1    3350 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 5650 3350 5600
$Comp
L shark_bait_remote-rescue:AP2112k_VCC-shark_bait_remote-rescue #PWR011
U 1 1 5CE68F50
P 3350 3400
F 0 "#PWR011" H 3350 3250 50  0001 C CNN
F 1 "VCC" H 3350 3550 50  0000 C CNN
F 2 "" H 3350 3400 50  0000 C CNN
F 3 "" H 3350 3400 50  0000 C CNN
	1    3350 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3500 3350 3400
Wire Wire Line
	2400 4000 2600 4000
Wire Wire Line
	2850 4400 2750 4400
Wire Wire Line
	2850 4500 2750 4500
Wire Wire Line
	2850 4600 2750 4600
Wire Wire Line
	2850 4700 2750 4700
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR039
U 1 1 5CE68F61
P 2750 5200
F 0 "#PWR039" H 2750 4950 50  0001 C CNN
F 1 "GND" H 2750 5050 50  0000 C CNN
F 2 "" H 2750 5200 50  0000 C CNN
F 3 "" H 2750 5200 50  0000 C CNN
	1    2750 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5200 2750 5100
Wire Wire Line
	2750 5100 2850 5100
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R2
U 1 1 5CE68F69
P 2600 3750
F 0 "R2" H 2659 3796 50  0000 L CNN
F 1 "10K" H 2659 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2600 3750 50  0001 C CNN
F 3 "~" H 2600 3750 50  0001 C CNN
	1    2600 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4000 2600 3850
Connection ~ 2600 4000
$Comp
L shark_bait_remote-rescue:AP2112k_VCC-shark_bait_remote-rescue #PWR015
U 1 1 5CE68F72
P 2600 3550
F 0 "#PWR015" H 2600 3400 50  0001 C CNN
F 1 "VCC" H 2600 3700 50  0000 C CNN
F 2 "" H 2600 3550 50  0000 C CNN
F 3 "" H 2600 3550 50  0000 C CNN
	1    2600 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3650 2600 3550
$Comp
L shark_bait_remote-rescue:Connector_Generic_Conn_01x11-shark_bait_remote-rescue J6
U 1 1 5CE6B37B
P 4250 4300
F 0 "J6" H 4330 4342 50  0000 L CNN
F 1 "FLOW1" H 4330 4251 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B11B-PH-K_1x11_P2.00mm_Vertical" H 4250 4300 50  0001 C CNN
F 3 "~" H 4250 4300 50  0001 C CNN
	1    4250 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3800 4050 3800
Wire Wire Line
	4050 3900 3850 3900
Wire Wire Line
	3850 4000 4050 4000
Wire Wire Line
	4050 4100 3850 4100
Wire Wire Line
	3850 4200 4050 4200
Wire Wire Line
	3850 4300 4050 4300
Wire Wire Line
	4050 4400 3850 4400
Wire Wire Line
	3850 4500 4050 4500
Wire Wire Line
	4050 4600 3850 4600
Wire Wire Line
	3850 4700 4050 4700
Wire Wire Line
	4050 4800 3950 4800
Wire Wire Line
	3950 4800 3950 4850
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR035
U 1 1 5CE82D7C
P 3950 4850
F 0 "#PWR035" H 3950 4600 50  0001 C CNN
F 1 "GND" H 3950 4700 50  0000 C CNN
F 2 "" H 3950 4850 50  0000 C CNN
F 3 "" H 3950 4850 50  0000 C CNN
	1    3950 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1350 2400 1350
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR08
U 1 1 5CEA198B
P 2400 1650
F 0 "#PWR08" H 2400 1400 50  0001 C CNN
F 1 "GND" H 2400 1500 50  0000 C CNN
F 2 "" H 2400 1650 50  0000 C CNN
F 3 "" H 2400 1650 50  0000 C CNN
	1    2400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1650 2400 1600
Wire Wire Line
	2400 1600 2500 1600
$Comp
L shark_bait_remote-rescue:Connector_Generic_Conn_01x01-shark_bait_remote-rescue J1
U 1 1 5CEC15E7
P 2700 1350
F 0 "J1" H 2780 1392 50  0000 L CNN
F 1 "BATT+" H 2780 1301 50  0000 L CNN
F 2 "project_footprints:connect_QC_Male" H 2700 1350 50  0001 C CNN
F 3 "~" H 2700 1350 50  0001 C CNN
F 4 "A100452CT-ND" H 2700 1350 50  0000 C CNN "Digikey Part No."
	1    2700 1350
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:Connector_Generic_Conn_01x01-shark_bait_remote-rescue J2
U 1 1 5CEC4A98
P 2700 1600
F 0 "J2" H 2780 1642 50  0000 L CNN
F 1 "BATT-" H 2780 1551 50  0000 L CNN
F 2 "project_footprints:connect_QC_Male" H 2700 1600 50  0001 C CNN
F 3 "~" H 2700 1600 50  0001 C CNN
F 4 "A100452CT-ND" H 2700 1600 50  0000 C CNN "Digikey Part No."
	1    2700 1600
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:power_+BATT-shark_bait_remote-rescue #PWR02
U 1 1 5CECAE57
P 2400 1250
F 0 "#PWR02" H 2400 1100 50  0001 C CNN
F 1 "+BATT" H 2415 1423 50  0000 C CNN
F 2 "" H 2400 1250 50  0001 C CNN
F 3 "" H 2400 1250 50  0001 C CNN
	1    2400 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1350 2400 1250
$Comp
L shark_bait_remote-rescue:AP2112k_C_Small-shark_bait_remote-rescue C3
U 1 1 5CE1FE80
P 1850 4550
F 0 "C3" H 1942 4596 50  0000 L CNN
F 1 "0.1uF" H 1942 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1850 4550 50  0001 C CNN
F 3 "" H 1850 4550 50  0000 C CNN
	1    1850 4550
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_VCC-shark_bait_remote-rescue #PWR019
U 1 1 5CE20066
P 1850 4350
F 0 "#PWR019" H 1850 4200 50  0001 C CNN
F 1 "VCC" H 1850 4500 50  0000 C CNN
F 2 "" H 1850 4350 50  0000 C CNN
F 3 "" H 1850 4350 50  0000 C CNN
	1    1850 4350
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR027
U 1 1 5CE20143
P 1850 4750
F 0 "#PWR027" H 1850 4500 50  0001 C CNN
F 1 "GND" H 1850 4600 50  0000 C CNN
F 2 "" H 1850 4750 50  0000 C CNN
F 3 "" H 1850 4750 50  0000 C CNN
	1    1850 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 4350 1850 4450
Wire Wire Line
	1850 4650 1850 4750
$Comp
L shark_bait_remote-rescue:AP2112k_C_Small-shark_bait_remote-rescue C4
U 1 1 5CE264D3
P 2250 4550
F 0 "C4" H 2342 4596 50  0000 L CNN
F 1 "0.1uF" H 2342 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2250 4550 50  0001 C CNN
F 3 "" H 2250 4550 50  0000 C CNN
	1    2250 4550
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_VCC-shark_bait_remote-rescue #PWR020
U 1 1 5CE264D9
P 2250 4350
F 0 "#PWR020" H 2250 4200 50  0001 C CNN
F 1 "VCC" H 2250 4500 50  0000 C CNN
F 2 "" H 2250 4350 50  0000 C CNN
F 3 "" H 2250 4350 50  0000 C CNN
	1    2250 4350
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR028
U 1 1 5CE264DF
P 2250 4750
F 0 "#PWR028" H 2250 4500 50  0001 C CNN
F 1 "GND" H 2250 4600 50  0000 C CNN
F 2 "" H 2250 4750 50  0000 C CNN
F 3 "" H 2250 4750 50  0000 C CNN
	1    2250 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4350 2250 4450
Wire Wire Line
	2250 4650 2250 4750
$Comp
L shark_bait_remote-rescue:AP2112k_Conn_01x02-shark_bait_remote-rescue J13
U 1 1 5CE249F2
P 1950 1450
F 0 "J13" H 2030 1442 50  0000 L CNN
F 1 "PLED" H 2030 1351 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 1950 1450 50  0001 C CNN
F 3 "" H 1950 1450 50  0001 C CNN
	1    1950 1450
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:power_+BATT-shark_bait_remote-rescue #PWR05
U 1 1 5CE2504D
P 1650 1350
F 0 "#PWR05" H 1650 1200 50  0001 C CNN
F 1 "+BATT" H 1665 1523 50  0000 C CNN
F 2 "" H 1650 1350 50  0001 C CNN
F 3 "" H 1650 1350 50  0001 C CNN
	1    1650 1350
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR07
U 1 1 5CE25092
P 1650 1650
F 0 "#PWR07" H 1650 1400 50  0001 C CNN
F 1 "GND" H 1650 1500 50  0000 C CNN
F 2 "" H 1650 1650 50  0000 C CNN
F 3 "" H 1650 1650 50  0000 C CNN
	1    1650 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1450 1650 1450
Wire Wire Line
	1650 1450 1650 1350
Wire Wire Line
	1750 1550 1650 1550
Wire Wire Line
	1650 1550 1650 1650
$Comp
L shark_bait_remote-rescue:AP2112k_Conn_01x02-shark_bait_remote-rescue J14
U 1 1 5CE624AC
P 7550 6650
F 0 "J14" H 7630 6642 50  0000 L CNN
F 1 "LED" H 7630 6551 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 7550 6650 50  0001 C CNN
F 3 "" H 7550 6650 50  0001 C CNN
	1    7550 6650
	1    0    0    -1  
$EndComp
Text GLabel 6750 7000 0    60   Input ~ 0
LED3
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR053
U 1 1 5CE62A24
P 7350 7300
F 0 "#PWR053" H 7350 7050 50  0001 C CNN
F 1 "GND" H 7350 7150 50  0000 C CNN
F 2 "" H 7350 7300 50  0000 C CNN
F 3 "" H 7350 7300 50  0000 C CNN
	1    7350 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 7000 7050 7000
Wire Wire Line
	7350 6750 7350 6800
Wire Wire Line
	7350 6650 7350 6550
Wire Wire Line
	7350 7200 7350 7300
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R6
U 1 1 5CE8F740
P 6900 7000
F 0 "R6" H 6959 7046 50  0000 L CNN
F 1 "1k" H 6959 6955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6900 7000 50  0001 C CNN
F 3 "~" H 6900 7000 50  0001 C CNN
	1    6900 7000
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 7000 6800 7000
$Comp
L shark_bait_remote-rescue:Transistor_BJT_MMBT3904-shark_bait_remote-rescue Q1
U 1 1 5CEF71CE
P 7250 7000
F 0 "Q1" H 7441 7046 50  0000 L CNN
F 1 "MMBT3904" H 7441 6955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7450 6925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 7250 7000 50  0001 L CNN
	1    7250 7000
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:74xx_CD74HC4067M-shark_bait_remote-rescue U4
U 1 1 5CE61297
P 6400 4550
F 0 "U4" H 6600 5550 50  0000 C CNN
F 1 "CD74HC4067M" H 6800 5450 50  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 7300 3550 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4067.pdf" H 6050 5400 50  0001 C CNN
F 4 "296-29408-1-ND" H 6400 4550 50  0001 C CNN "Digikey Part No."
	1    6400 4550
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR045
U 1 1 5CE6129D
P 6400 5700
F 0 "#PWR045" H 6400 5450 50  0001 C CNN
F 1 "GND" H 6400 5550 50  0000 C CNN
F 2 "" H 6400 5700 50  0000 C CNN
F 3 "" H 6400 5700 50  0000 C CNN
	1    6400 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5700 6400 5650
$Comp
L shark_bait_remote-rescue:AP2112k_VCC-shark_bait_remote-rescue #PWR013
U 1 1 5CE612A4
P 6400 3450
F 0 "#PWR013" H 6400 3300 50  0001 C CNN
F 1 "VCC" H 6400 3600 50  0000 C CNN
F 2 "" H 6400 3450 50  0000 C CNN
F 3 "" H 6400 3450 50  0000 C CNN
	1    6400 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3550 6400 3450
Wire Wire Line
	5450 4050 5650 4050
Wire Wire Line
	5900 4450 5800 4450
Wire Wire Line
	5900 4550 5800 4550
Wire Wire Line
	5900 4650 5800 4650
Wire Wire Line
	5900 4750 5800 4750
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR041
U 1 1 5CE612B0
P 5800 5250
F 0 "#PWR041" H 5800 5000 50  0001 C CNN
F 1 "GND" H 5800 5100 50  0000 C CNN
F 2 "" H 5800 5250 50  0000 C CNN
F 3 "" H 5800 5250 50  0000 C CNN
	1    5800 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5250 5800 5150
Wire Wire Line
	5800 5150 5900 5150
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R3
U 1 1 5CE612B8
P 5650 3800
F 0 "R3" H 5709 3846 50  0000 L CNN
F 1 "10K" H 5709 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5650 3800 50  0001 C CNN
F 3 "~" H 5650 3800 50  0001 C CNN
	1    5650 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4050 5650 3900
Connection ~ 5650 4050
$Comp
L shark_bait_remote-rescue:AP2112k_VCC-shark_bait_remote-rescue #PWR017
U 1 1 5CE612C1
P 5650 3600
F 0 "#PWR017" H 5650 3450 50  0001 C CNN
F 1 "VCC" H 5650 3750 50  0000 C CNN
F 2 "" H 5650 3600 50  0000 C CNN
F 3 "" H 5650 3600 50  0000 C CNN
	1    5650 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3700 5650 3600
$Comp
L shark_bait_remote-rescue:Connector_Generic_Conn_01x11-shark_bait_remote-rescue J4
U 1 1 5CE612CC
P 7450 4350
F 0 "J4" H 7530 4392 50  0000 L CNN
F 1 "FLOW1" H 7530 4301 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B11B-PH-K_1x11_P2.00mm_Vertical" H 7450 4350 50  0001 C CNN
F 3 "~" H 7450 4350 50  0001 C CNN
	1    7450 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3850 7250 3850
Wire Wire Line
	7250 3950 6900 3950
Wire Wire Line
	6900 4050 7250 4050
Wire Wire Line
	7250 4150 6900 4150
Wire Wire Line
	6900 4250 7250 4250
Wire Wire Line
	6900 4350 7250 4350
Wire Wire Line
	7250 4450 6900 4450
Wire Wire Line
	6900 4550 7250 4550
Wire Wire Line
	7250 4650 6900 4650
Wire Wire Line
	6900 4750 7250 4750
Wire Wire Line
	7250 4850 7100 4850
Wire Wire Line
	7100 4850 7100 4950
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR037
U 1 1 5CE612DE
P 7100 4950
F 0 "#PWR037" H 7100 4700 50  0001 C CNN
F 1 "GND" H 7100 4800 50  0000 C CNN
F 2 "" H 7100 4950 50  0000 C CNN
F 3 "" H 7100 4950 50  0000 C CNN
	1    7100 4950
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_C_Small-shark_bait_remote-rescue C5
U 1 1 5CE612E5
P 4900 4600
F 0 "C5" H 4992 4646 50  0000 L CNN
F 1 "0.1uF" H 4992 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4900 4600 50  0001 C CNN
F 3 "" H 4900 4600 50  0000 C CNN
	1    4900 4600
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_VCC-shark_bait_remote-rescue #PWR023
U 1 1 5CE612EB
P 4900 4400
F 0 "#PWR023" H 4900 4250 50  0001 C CNN
F 1 "VCC" H 4900 4550 50  0000 C CNN
F 2 "" H 4900 4400 50  0000 C CNN
F 3 "" H 4900 4400 50  0000 C CNN
	1    4900 4400
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR031
U 1 1 5CE612F1
P 4900 4800
F 0 "#PWR031" H 4900 4550 50  0001 C CNN
F 1 "GND" H 4900 4650 50  0000 C CNN
F 2 "" H 4900 4800 50  0000 C CNN
F 3 "" H 4900 4800 50  0000 C CNN
	1    4900 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4400 4900 4500
Wire Wire Line
	4900 4700 4900 4800
$Comp
L shark_bait_remote-rescue:AP2112k_C_Small-shark_bait_remote-rescue C6
U 1 1 5CE612F9
P 5300 4600
F 0 "C6" H 5392 4646 50  0000 L CNN
F 1 "0.1uF" H 5392 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5300 4600 50  0001 C CNN
F 3 "" H 5300 4600 50  0000 C CNN
	1    5300 4600
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_VCC-shark_bait_remote-rescue #PWR024
U 1 1 5CE612FF
P 5300 4400
F 0 "#PWR024" H 5300 4250 50  0001 C CNN
F 1 "VCC" H 5300 4550 50  0000 C CNN
F 2 "" H 5300 4400 50  0000 C CNN
F 3 "" H 5300 4400 50  0000 C CNN
	1    5300 4400
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR032
U 1 1 5CE61305
P 5300 4800
F 0 "#PWR032" H 5300 4550 50  0001 C CNN
F 1 "GND" H 5300 4650 50  0000 C CNN
F 2 "" H 5300 4800 50  0000 C CNN
F 3 "" H 5300 4800 50  0000 C CNN
	1    5300 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4400 5300 4500
Wire Wire Line
	5300 4700 5300 4800
$Comp
L shark_bait_remote-rescue:74xx_CD74HC4067M-shark_bait_remote-rescue U1
U 1 1 5CE619B2
P 9600 4500
F 0 "U1" H 9800 5500 50  0000 C CNN
F 1 "CD74HC4067M" H 10000 5400 50  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 10500 3500 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4067.pdf" H 9250 5350 50  0001 C CNN
F 4 "296-29408-1-ND" H 9600 4500 50  0001 C CNN "Digikey Part No."
	1    9600 4500
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR044
U 1 1 5CE619B8
P 9600 5650
F 0 "#PWR044" H 9600 5400 50  0001 C CNN
F 1 "GND" H 9600 5500 50  0000 C CNN
F 2 "" H 9600 5650 50  0000 C CNN
F 3 "" H 9600 5650 50  0000 C CNN
	1    9600 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 5650 9600 5600
$Comp
L shark_bait_remote-rescue:AP2112k_VCC-shark_bait_remote-rescue #PWR012
U 1 1 5CE619BF
P 9600 3400
F 0 "#PWR012" H 9600 3250 50  0001 C CNN
F 1 "VCC" H 9600 3550 50  0000 C CNN
F 2 "" H 9600 3400 50  0000 C CNN
F 3 "" H 9600 3400 50  0000 C CNN
	1    9600 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3500 9600 3400
Wire Wire Line
	8650 4000 8850 4000
Wire Wire Line
	9100 4400 9000 4400
Wire Wire Line
	9100 4500 9000 4500
Wire Wire Line
	9100 4600 9000 4600
Wire Wire Line
	9100 4700 9000 4700
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR040
U 1 1 5CE619CB
P 9000 5200
F 0 "#PWR040" H 9000 4950 50  0001 C CNN
F 1 "GND" H 9000 5050 50  0000 C CNN
F 2 "" H 9000 5200 50  0000 C CNN
F 3 "" H 9000 5200 50  0000 C CNN
	1    9000 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5200 9000 5100
Wire Wire Line
	9000 5100 9100 5100
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R1
U 1 1 5CE619D3
P 8850 3750
F 0 "R1" H 8909 3796 50  0000 L CNN
F 1 "10K" H 8909 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8850 3750 50  0001 C CNN
F 3 "~" H 8850 3750 50  0001 C CNN
	1    8850 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4000 8850 3850
Connection ~ 8850 4000
$Comp
L shark_bait_remote-rescue:AP2112k_VCC-shark_bait_remote-rescue #PWR016
U 1 1 5CE619DC
P 8850 3550
F 0 "#PWR016" H 8850 3400 50  0001 C CNN
F 1 "VCC" H 8850 3700 50  0000 C CNN
F 2 "" H 8850 3550 50  0000 C CNN
F 3 "" H 8850 3550 50  0000 C CNN
	1    8850 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3650 8850 3550
$Comp
L shark_bait_remote-rescue:Connector_Generic_Conn_01x11-shark_bait_remote-rescue J3
U 1 1 5CE619E7
P 10700 4300
F 0 "J3" H 10780 4342 50  0000 L CNN
F 1 "FLOW1" H 10780 4251 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B11B-PH-K_1x11_P2.00mm_Vertical" H 10700 4300 50  0001 C CNN
F 3 "~" H 10700 4300 50  0001 C CNN
	1    10700 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3800 10500 3800
Wire Wire Line
	10500 3900 10100 3900
Wire Wire Line
	10100 4000 10500 4000
Wire Wire Line
	10500 4100 10100 4100
Wire Wire Line
	10100 4200 10500 4200
Wire Wire Line
	10100 4300 10500 4300
Wire Wire Line
	10500 4400 10100 4400
Wire Wire Line
	10100 4500 10500 4500
Wire Wire Line
	10500 4600 10100 4600
Wire Wire Line
	10100 4700 10500 4700
Wire Wire Line
	10500 4800 10300 4800
Wire Wire Line
	10300 4800 10300 4900
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR036
U 1 1 5CE619F9
P 10300 4900
F 0 "#PWR036" H 10300 4650 50  0001 C CNN
F 1 "GND" H 10300 4750 50  0000 C CNN
F 2 "" H 10300 4900 50  0000 C CNN
F 3 "" H 10300 4900 50  0000 C CNN
	1    10300 4900
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_C_Small-shark_bait_remote-rescue C1
U 1 1 5CE61A00
P 8100 4550
F 0 "C1" H 8192 4596 50  0000 L CNN
F 1 "0.1uF" H 8192 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8100 4550 50  0001 C CNN
F 3 "" H 8100 4550 50  0000 C CNN
	1    8100 4550
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_VCC-shark_bait_remote-rescue #PWR021
U 1 1 5CE61A06
P 8100 4350
F 0 "#PWR021" H 8100 4200 50  0001 C CNN
F 1 "VCC" H 8100 4500 50  0000 C CNN
F 2 "" H 8100 4350 50  0000 C CNN
F 3 "" H 8100 4350 50  0000 C CNN
	1    8100 4350
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR029
U 1 1 5CE61A0C
P 8100 4750
F 0 "#PWR029" H 8100 4500 50  0001 C CNN
F 1 "GND" H 8100 4600 50  0000 C CNN
F 2 "" H 8100 4750 50  0000 C CNN
F 3 "" H 8100 4750 50  0000 C CNN
	1    8100 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4350 8100 4450
Wire Wire Line
	8100 4650 8100 4750
$Comp
L shark_bait_remote-rescue:AP2112k_C_Small-shark_bait_remote-rescue C2
U 1 1 5CE61A14
P 8500 4550
F 0 "C2" H 8592 4596 50  0000 L CNN
F 1 "0.1uF" H 8592 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8500 4550 50  0001 C CNN
F 3 "" H 8500 4550 50  0000 C CNN
	1    8500 4550
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_VCC-shark_bait_remote-rescue #PWR022
U 1 1 5CE61A1A
P 8500 4350
F 0 "#PWR022" H 8500 4200 50  0001 C CNN
F 1 "VCC" H 8500 4500 50  0000 C CNN
F 2 "" H 8500 4350 50  0000 C CNN
F 3 "" H 8500 4350 50  0000 C CNN
	1    8500 4350
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR030
U 1 1 5CE61A20
P 8500 4750
F 0 "#PWR030" H 8500 4500 50  0001 C CNN
F 1 "GND" H 8500 4600 50  0000 C CNN
F 2 "" H 8500 4750 50  0000 C CNN
F 3 "" H 8500 4750 50  0000 C CNN
	1    8500 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4350 8500 4450
Wire Wire Line
	8500 4650 8500 4750
$Comp
L shark_bait_remote-rescue:74xx_CD74HC4067M-shark_bait_remote-rescue U5
U 1 1 5CE61A29
P 12750 4550
F 0 "U5" H 12950 5550 50  0000 C CNN
F 1 "CD74HC4067M" H 13150 5450 50  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 13650 3550 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4067.pdf" H 12400 5400 50  0001 C CNN
F 4 "296-29408-1-ND" H 12750 4550 50  0001 C CNN "Digikey Part No."
	1    12750 4550
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR046
U 1 1 5CE61A2F
P 12750 5700
F 0 "#PWR046" H 12750 5450 50  0001 C CNN
F 1 "GND" H 12750 5550 50  0000 C CNN
F 2 "" H 12750 5700 50  0000 C CNN
F 3 "" H 12750 5700 50  0000 C CNN
	1    12750 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	12750 5700 12750 5650
$Comp
L shark_bait_remote-rescue:AP2112k_VCC-shark_bait_remote-rescue #PWR014
U 1 1 5CE61A36
P 12750 3450
F 0 "#PWR014" H 12750 3300 50  0001 C CNN
F 1 "VCC" H 12750 3600 50  0000 C CNN
F 2 "" H 12750 3450 50  0000 C CNN
F 3 "" H 12750 3450 50  0000 C CNN
	1    12750 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	12750 3550 12750 3450
Wire Wire Line
	11800 4050 12000 4050
Wire Wire Line
	12250 4450 12150 4450
Wire Wire Line
	12250 4550 12150 4550
Wire Wire Line
	12250 4650 12150 4650
Wire Wire Line
	12250 4750 12150 4750
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR042
U 1 1 5CE61A42
P 12150 5250
F 0 "#PWR042" H 12150 5000 50  0001 C CNN
F 1 "GND" H 12150 5100 50  0000 C CNN
F 2 "" H 12150 5250 50  0000 C CNN
F 3 "" H 12150 5250 50  0000 C CNN
	1    12150 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	12150 5250 12150 5150
Wire Wire Line
	12150 5150 12250 5150
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R4
U 1 1 5CE61A4A
P 12000 3800
F 0 "R4" H 12059 3846 50  0000 L CNN
F 1 "10K" H 12059 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 12000 3800 50  0001 C CNN
F 3 "~" H 12000 3800 50  0001 C CNN
	1    12000 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	12000 4050 12000 3900
Connection ~ 12000 4050
$Comp
L shark_bait_remote-rescue:AP2112k_VCC-shark_bait_remote-rescue #PWR018
U 1 1 5CE61A53
P 12000 3600
F 0 "#PWR018" H 12000 3450 50  0001 C CNN
F 1 "VCC" H 12000 3750 50  0000 C CNN
F 2 "" H 12000 3600 50  0000 C CNN
F 3 "" H 12000 3600 50  0000 C CNN
	1    12000 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	12000 3700 12000 3600
$Comp
L shark_bait_remote-rescue:Connector_Generic_Conn_01x11-shark_bait_remote-rescue J5
U 1 1 5CE61A5E
P 13700 4350
F 0 "J5" H 13780 4392 50  0000 L CNN
F 1 "FLOW1" H 13780 4301 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B11B-PH-K_1x11_P2.00mm_Vertical" H 13700 4350 50  0001 C CNN
F 3 "~" H 13700 4350 50  0001 C CNN
	1    13700 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	13250 3850 13500 3850
Wire Wire Line
	13500 3950 13250 3950
Wire Wire Line
	13250 4050 13500 4050
Wire Wire Line
	13500 4150 13250 4150
Wire Wire Line
	13250 4250 13500 4250
Wire Wire Line
	13250 4350 13500 4350
Wire Wire Line
	13500 4450 13250 4450
Wire Wire Line
	13250 4550 13500 4550
Wire Wire Line
	13500 4650 13250 4650
Wire Wire Line
	13250 4750 13500 4750
Wire Wire Line
	13500 4850 13400 4850
Wire Wire Line
	13400 4850 13400 4950
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR038
U 1 1 5CE61A70
P 13400 4950
F 0 "#PWR038" H 13400 4700 50  0001 C CNN
F 1 "GND" H 13400 4800 50  0000 C CNN
F 2 "" H 13400 4950 50  0000 C CNN
F 3 "" H 13400 4950 50  0000 C CNN
	1    13400 4950
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_C_Small-shark_bait_remote-rescue C7
U 1 1 5CE61A77
P 11250 4600
F 0 "C7" H 11342 4646 50  0000 L CNN
F 1 "0.1uF" H 11342 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 11250 4600 50  0001 C CNN
F 3 "" H 11250 4600 50  0000 C CNN
	1    11250 4600
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_VCC-shark_bait_remote-rescue #PWR025
U 1 1 5CE61A7D
P 11250 4400
F 0 "#PWR025" H 11250 4250 50  0001 C CNN
F 1 "VCC" H 11250 4550 50  0000 C CNN
F 2 "" H 11250 4400 50  0000 C CNN
F 3 "" H 11250 4400 50  0000 C CNN
	1    11250 4400
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR033
U 1 1 5CE61A83
P 11250 4800
F 0 "#PWR033" H 11250 4550 50  0001 C CNN
F 1 "GND" H 11250 4650 50  0000 C CNN
F 2 "" H 11250 4800 50  0000 C CNN
F 3 "" H 11250 4800 50  0000 C CNN
	1    11250 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	11250 4400 11250 4500
Wire Wire Line
	11250 4700 11250 4800
$Comp
L shark_bait_remote-rescue:AP2112k_C_Small-shark_bait_remote-rescue C8
U 1 1 5CE61A8B
P 11650 4600
F 0 "C8" H 11742 4646 50  0000 L CNN
F 1 "0.1uF" H 11742 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 11650 4600 50  0001 C CNN
F 3 "" H 11650 4600 50  0000 C CNN
	1    11650 4600
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_VCC-shark_bait_remote-rescue #PWR026
U 1 1 5CE61A91
P 11650 4400
F 0 "#PWR026" H 11650 4250 50  0001 C CNN
F 1 "VCC" H 11650 4550 50  0000 C CNN
F 2 "" H 11650 4400 50  0000 C CNN
F 3 "" H 11650 4400 50  0000 C CNN
	1    11650 4400
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR034
U 1 1 5CE61A97
P 11650 4800
F 0 "#PWR034" H 11650 4550 50  0001 C CNN
F 1 "GND" H 11650 4650 50  0000 C CNN
F 2 "" H 11650 4800 50  0000 C CNN
F 3 "" H 11650 4800 50  0000 C CNN
	1    11650 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	11650 4400 11650 4500
Wire Wire Line
	11650 4700 11650 4800
$Comp
L shark_bait_remote-rescue:AP2112k_Conn_01x02-shark_bait_remote-rescue J9
U 1 1 5CE647EC
P 9150 6650
F 0 "J9" H 9230 6642 50  0000 L CNN
F 1 "LED" H 9230 6551 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 9150 6650 50  0001 C CNN
F 3 "" H 9150 6650 50  0001 C CNN
	1    9150 6650
	1    0    0    -1  
$EndComp
Text GLabel 8350 7000 0    60   Input ~ 0
LED4
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR054
U 1 1 5CE647F3
P 8950 7300
F 0 "#PWR054" H 8950 7050 50  0001 C CNN
F 1 "GND" H 8950 7150 50  0000 C CNN
F 2 "" H 8950 7300 50  0000 C CNN
F 3 "" H 8950 7300 50  0000 C CNN
	1    8950 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 7000 8650 7000
Wire Wire Line
	8950 6750 8950 6800
Wire Wire Line
	8950 6650 8950 6550
Wire Wire Line
	8950 7200 8950 7300
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R12
U 1 1 5CE647FF
P 8500 7000
F 0 "R12" H 8559 7046 50  0000 L CNN
F 1 "1k" H 8559 6955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8500 7000 50  0001 C CNN
F 3 "~" H 8500 7000 50  0001 C CNN
	1    8500 7000
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 7000 8400 7000
$Comp
L shark_bait_remote-rescue:Transistor_BJT_MMBT3904-shark_bait_remote-rescue Q4
U 1 1 5CE64806
P 8850 7000
F 0 "Q4" H 9041 7046 50  0000 L CNN
F 1 "MMBT3904" H 9041 6955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9050 6925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 8850 7000 50  0001 L CNN
	1    8850 7000
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_Conn_01x02-shark_bait_remote-rescue J7
U 1 1 5CE64D7B
P 4200 6600
F 0 "J7" H 4280 6592 50  0000 L CNN
F 1 "LED" H 4280 6501 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 4200 6600 50  0001 C CNN
F 3 "" H 4200 6600 50  0001 C CNN
	1    4200 6600
	1    0    0    -1  
$EndComp
Text GLabel 3400 6950 0    60   Input ~ 0
LED1
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR051
U 1 1 5CE64D82
P 4000 7250
F 0 "#PWR051" H 4000 7000 50  0001 C CNN
F 1 "GND" H 4000 7100 50  0000 C CNN
F 2 "" H 4000 7250 50  0000 C CNN
F 3 "" H 4000 7250 50  0000 C CNN
	1    4000 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 6950 3700 6950
Wire Wire Line
	4000 6700 4000 6750
Wire Wire Line
	4000 6600 4000 6500
Wire Wire Line
	4000 7150 4000 7250
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R10
U 1 1 5CE64D8E
P 3550 6950
F 0 "R10" H 3609 6996 50  0000 L CNN
F 1 "1k" H 3609 6905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3550 6950 50  0001 C CNN
F 3 "~" H 3550 6950 50  0001 C CNN
	1    3550 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 6950 3450 6950
$Comp
L shark_bait_remote-rescue:Transistor_BJT_MMBT3904-shark_bait_remote-rescue Q2
U 1 1 5CE64D95
P 3900 6950
F 0 "Q2" H 4091 6996 50  0000 L CNN
F 1 "MMBT3904" H 4091 6905 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4100 6875 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 3900 6950 50  0001 L CNN
	1    3900 6950
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_Conn_01x02-shark_bait_remote-rescue J8
U 1 1 5CE64DA2
P 5800 6600
F 0 "J8" H 5880 6592 50  0000 L CNN
F 1 "LED" H 5880 6501 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 5800 6600 50  0001 C CNN
F 3 "" H 5800 6600 50  0001 C CNN
	1    5800 6600
	1    0    0    -1  
$EndComp
Text GLabel 5000 6950 0    60   Input ~ 0
LED2
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR052
U 1 1 5CE64DA9
P 5600 7250
F 0 "#PWR052" H 5600 7000 50  0001 C CNN
F 1 "GND" H 5600 7100 50  0000 C CNN
F 2 "" H 5600 7250 50  0000 C CNN
F 3 "" H 5600 7250 50  0000 C CNN
	1    5600 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 6950 5300 6950
Wire Wire Line
	5600 6700 5600 6750
Wire Wire Line
	5600 6600 5600 6500
Wire Wire Line
	5600 7150 5600 7250
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R11
U 1 1 5CE64DB5
P 5150 6950
F 0 "R11" H 5209 6996 50  0000 L CNN
F 1 "1k" H 5209 6905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5150 6950 50  0001 C CNN
F 3 "~" H 5150 6950 50  0001 C CNN
	1    5150 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 6950 5050 6950
$Comp
L shark_bait_remote-rescue:Transistor_BJT_MMBT3904-shark_bait_remote-rescue Q3
U 1 1 5CE64DBC
P 5500 6950
F 0 "Q3" H 5691 6996 50  0000 L CNN
F 1 "MMBT3904" H 5691 6905 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5700 6875 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5500 6950 50  0001 L CNN
	1    5500 6950
	1    0    0    -1  
$EndComp
Text GLabel 2400 4000 0    60   Input ~ 0
KNOB1
Text GLabel 5450 4050 0    60   Input ~ 0
KNOB2
Text GLabel 8650 4000 0    60   Input ~ 0
KNOB3
Text GLabel 11800 4050 0    60   Input ~ 0
KNOB4
$Comp
L shark_bait_remote-rescue:power_+5V-shark_bait_remote-rescue #PWR047
U 1 1 5CE64821
P 4000 6300
F 0 "#PWR047" H 4000 6150 50  0001 C CNN
F 1 "+5V" H 4015 6473 50  0000 C CNN
F 2 "" H 4000 6300 50  0001 C CNN
F 3 "" H 4000 6300 50  0001 C CNN
	1    4000 6300
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:power_+5V-shark_bait_remote-rescue #PWR048
U 1 1 5CE64CC4
P 5600 6300
F 0 "#PWR048" H 5600 6150 50  0001 C CNN
F 1 "+5V" H 5615 6473 50  0000 C CNN
F 2 "" H 5600 6300 50  0001 C CNN
F 3 "" H 5600 6300 50  0001 C CNN
	1    5600 6300
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:power_+5V-shark_bait_remote-rescue #PWR049
U 1 1 5CE651D7
P 7350 6350
F 0 "#PWR049" H 7350 6200 50  0001 C CNN
F 1 "+5V" H 7365 6523 50  0000 C CNN
F 2 "" H 7350 6350 50  0001 C CNN
F 3 "" H 7350 6350 50  0001 C CNN
	1    7350 6350
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:power_+5V-shark_bait_remote-rescue #PWR050
U 1 1 5CE65482
P 8950 6350
F 0 "#PWR050" H 8950 6200 50  0001 C CNN
F 1 "+5V" H 8965 6523 50  0000 C CNN
F 2 "" H 8950 6350 50  0001 C CNN
F 3 "" H 8950 6350 50  0001 C CNN
	1    8950 6350
	1    0    0    -1  
$EndComp
Text GLabel 2750 4400 0    60   Input ~ 0
S0
Text GLabel 2750 4500 0    60   Input ~ 0
S1
Text GLabel 2750 4600 0    60   Input ~ 0
S2
Text GLabel 2750 4700 0    60   Input ~ 0
S3
Text GLabel 5800 4450 0    60   Input ~ 0
S0
Text GLabel 5800 4550 0    60   Input ~ 0
S1
Text GLabel 5800 4650 0    60   Input ~ 0
S2
Text GLabel 5800 4750 0    60   Input ~ 0
S3
Text GLabel 9000 4400 0    60   Input ~ 0
S0
Text GLabel 9000 4500 0    60   Input ~ 0
S1
Text GLabel 9000 4600 0    60   Input ~ 0
S2
Text GLabel 9000 4700 0    60   Input ~ 0
S3
Text GLabel 12150 4450 0    60   Input ~ 0
S0
Text GLabel 12150 4550 0    60   Input ~ 0
S1
Text GLabel 12150 4650 0    60   Input ~ 0
S2
Text GLabel 12150 4750 0    60   Input ~ 0
S3
Text GLabel 8650 1300 0    60   Input ~ 0
S0
Text GLabel 8650 1400 0    60   Input ~ 0
S1
Text GLabel 8650 1500 0    60   Input ~ 0
S2
Text GLabel 8650 1600 0    60   Input ~ 0
S3
Text GLabel 8650 1700 0    60   Input ~ 0
KNOB1
Text GLabel 8650 1800 0    60   Input ~ 0
KNOB2
Text GLabel 8650 2200 0    60   Input ~ 0
KNOB3
Text GLabel 8650 2300 0    60   Input ~ 0
KNOB4
Text GLabel 7700 2350 0    60   Input ~ 0
LED1
Text GLabel 7700 2250 0    60   Input ~ 0
LED2
Text GLabel 7700 2150 0    60   Input ~ 0
LED3
Text GLabel 7700 2050 0    60   Input ~ 0
LED4
$Comp
L shark_bait_remote-rescue:SW_PUSH_SMALL_H-shark_bait_remote-rescue SW1
U 1 1 5CE7450E
P 3900 9500
F 0 "SW1" H 3980 9610 50  0000 C CNN
F 1 "PUSH" H 4260 9440 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 3900 9700 50  0001 C CNN
F 3 "" H 3900 9700 50  0000 C CNN
	1    3900 9500
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R21
U 1 1 5CE7526A
P 3550 9300
F 0 "R21" H 3609 9346 50  0000 L CNN
F 1 "10K" H 3609 9255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3550 9300 50  0001 C CNN
F 3 "~" H 3550 9300 50  0001 C CNN
	1    3550 9300
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_VCC-shark_bait_remote-rescue #PWR063
U 1 1 5CE76144
P 3550 9150
F 0 "#PWR063" H 3550 9000 50  0001 C CNN
F 1 "VCC" H 3550 9300 50  0000 C CNN
F 2 "" H 3550 9150 50  0000 C CNN
F 3 "" H 3550 9150 50  0000 C CNN
	1    3550 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 9500 3550 9500
Wire Wire Line
	3550 9400 3550 9500
Connection ~ 3550 9500
Wire Wire Line
	3550 9200 3550 9150
Wire Wire Line
	4050 9500 4100 9500
Wire Wire Line
	4100 9500 4100 9700
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR065
U 1 1 5CE76C52
P 4100 9700
F 0 "#PWR065" H 4100 9450 50  0001 C CNN
F 1 "GND" H 4100 9550 50  0000 C CNN
F 2 "" H 4100 9700 50  0000 C CNN
F 3 "" H 4100 9700 50  0000 C CNN
	1    4100 9700
	1    0    0    -1  
$EndComp
Text GLabel 3400 9500 0    60   Input ~ 0
BUTT1
$Comp
L shark_bait_remote-rescue:SW_PUSH_SMALL_H-shark_bait_remote-rescue SW2
U 1 1 5CE784D6
P 5350 9500
F 0 "SW2" H 5430 9610 50  0000 C CNN
F 1 "PUSH" H 5710 9440 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 5350 9700 50  0001 C CNN
F 3 "" H 5350 9700 50  0000 C CNN
	1    5350 9500
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R22
U 1 1 5CE784DC
P 5000 9300
F 0 "R22" H 5059 9346 50  0000 L CNN
F 1 "10K" H 5059 9255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5000 9300 50  0001 C CNN
F 3 "~" H 5000 9300 50  0001 C CNN
	1    5000 9300
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_VCC-shark_bait_remote-rescue #PWR064
U 1 1 5CE784E2
P 5000 9150
F 0 "#PWR064" H 5000 9000 50  0001 C CNN
F 1 "VCC" H 5000 9300 50  0000 C CNN
F 2 "" H 5000 9150 50  0000 C CNN
F 3 "" H 5000 9150 50  0000 C CNN
	1    5000 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 9500 5000 9500
Wire Wire Line
	5000 9400 5000 9500
Connection ~ 5000 9500
Wire Wire Line
	5000 9200 5000 9150
Wire Wire Line
	5500 9500 5550 9500
Wire Wire Line
	5550 9500 5550 9700
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR066
U 1 1 5CE784EE
P 5550 9700
F 0 "#PWR066" H 5550 9450 50  0001 C CNN
F 1 "GND" H 5550 9550 50  0000 C CNN
F 2 "" H 5550 9700 50  0000 C CNN
F 3 "" H 5550 9700 50  0000 C CNN
	1    5550 9700
	1    0    0    -1  
$EndComp
Text GLabel 7700 1950 0    60   Input ~ 0
BUTT1
$Comp
L shark_bait_remote-rescue:AP2112k_Conn_01x02-shark_bait_remote-rescue J12
U 1 1 5CE79D35
P 7450 8000
F 0 "J12" H 7530 7992 50  0000 L CNN
F 1 "LED" H 7530 7901 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 7450 8000 50  0001 C CNN
F 3 "" H 7450 8000 50  0001 C CNN
	1    7450 8000
	1    0    0    -1  
$EndComp
Text GLabel 6650 8350 0    60   Input ~ 0
LED7
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR061
U 1 1 5CE79D3C
P 7250 8650
F 0 "#PWR061" H 7250 8400 50  0001 C CNN
F 1 "GND" H 7250 8500 50  0000 C CNN
F 2 "" H 7250 8650 50  0000 C CNN
F 3 "" H 7250 8650 50  0000 C CNN
	1    7250 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 8350 6950 8350
Wire Wire Line
	7250 8100 7250 8150
Wire Wire Line
	7250 8000 7250 7900
Wire Wire Line
	7250 8550 7250 8650
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R19
U 1 1 5CE79D46
P 6800 8350
F 0 "R19" H 6859 8396 50  0000 L CNN
F 1 "1k" H 6859 8305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6800 8350 50  0001 C CNN
F 3 "~" H 6800 8350 50  0001 C CNN
	1    6800 8350
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 8350 6700 8350
$Comp
L shark_bait_remote-rescue:Transistor_BJT_MMBT3904-shark_bait_remote-rescue Q7
U 1 1 5CE79D4D
P 7150 8350
F 0 "Q7" H 7341 8396 50  0000 L CNN
F 1 "MMBT3904" H 7341 8305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7350 8275 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 7150 8350 50  0001 L CNN
	1    7150 8350
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_Conn_01x02-shark_bait_remote-rescue J15
U 1 1 5CE79D53
P 9050 8000
F 0 "J15" H 9130 7992 50  0000 L CNN
F 1 "LED" H 9130 7901 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 9050 8000 50  0001 C CNN
F 3 "" H 9050 8000 50  0001 C CNN
	1    9050 8000
	1    0    0    -1  
$EndComp
Text GLabel 8250 8350 0    60   Input ~ 0
LED8
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR062
U 1 1 5CE79D5A
P 8850 8650
F 0 "#PWR062" H 8850 8400 50  0001 C CNN
F 1 "GND" H 8850 8500 50  0000 C CNN
F 2 "" H 8850 8650 50  0000 C CNN
F 3 "" H 8850 8650 50  0000 C CNN
	1    8850 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 8350 8550 8350
Wire Wire Line
	8850 8100 8850 8150
Wire Wire Line
	8850 8000 8850 7900
Wire Wire Line
	8850 8550 8850 8650
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R20
U 1 1 5CE79D64
P 8400 8350
F 0 "R20" H 8459 8396 50  0000 L CNN
F 1 "1k" H 8459 8305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8400 8350 50  0001 C CNN
F 3 "~" H 8400 8350 50  0001 C CNN
	1    8400 8350
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 8350 8300 8350
$Comp
L shark_bait_remote-rescue:Transistor_BJT_MMBT3904-shark_bait_remote-rescue Q8
U 1 1 5CE79D6B
P 8750 8350
F 0 "Q8" H 8941 8396 50  0000 L CNN
F 1 "MMBT3904" H 8941 8305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8950 8275 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 8750 8350 50  0001 L CNN
	1    8750 8350
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_Conn_01x02-shark_bait_remote-rescue J10
U 1 1 5CE79D71
P 4100 7950
F 0 "J10" H 4180 7942 50  0000 L CNN
F 1 "LED" H 4180 7851 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 4100 7950 50  0001 C CNN
F 3 "" H 4100 7950 50  0001 C CNN
	1    4100 7950
	1    0    0    -1  
$EndComp
Text GLabel 3300 8300 0    60   Input ~ 0
LED5
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR059
U 1 1 5CE79D78
P 3900 8600
F 0 "#PWR059" H 3900 8350 50  0001 C CNN
F 1 "GND" H 3900 8450 50  0000 C CNN
F 2 "" H 3900 8600 50  0000 C CNN
F 3 "" H 3900 8600 50  0000 C CNN
	1    3900 8600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 8300 3600 8300
Wire Wire Line
	3900 8050 3900 8100
Wire Wire Line
	3900 7950 3900 7850
Wire Wire Line
	3900 8500 3900 8600
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R17
U 1 1 5CE79D82
P 3450 8300
F 0 "R17" H 3509 8346 50  0000 L CNN
F 1 "1k" H 3509 8255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3450 8300 50  0001 C CNN
F 3 "~" H 3450 8300 50  0001 C CNN
	1    3450 8300
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 8300 3350 8300
$Comp
L shark_bait_remote-rescue:Transistor_BJT_MMBT3904-shark_bait_remote-rescue Q5
U 1 1 5CE79D89
P 3800 8300
F 0 "Q5" H 3991 8346 50  0000 L CNN
F 1 "MMBT3904" H 3991 8255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4000 8225 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 3800 8300 50  0001 L CNN
	1    3800 8300
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_Conn_01x02-shark_bait_remote-rescue J11
U 1 1 5CE79D8F
P 5700 7950
F 0 "J11" H 5780 7942 50  0000 L CNN
F 1 "LED" H 5780 7851 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 5700 7950 50  0001 C CNN
F 3 "" H 5700 7950 50  0001 C CNN
	1    5700 7950
	1    0    0    -1  
$EndComp
Text GLabel 4900 8300 0    60   Input ~ 0
LED6
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR060
U 1 1 5CE79D96
P 5500 8600
F 0 "#PWR060" H 5500 8350 50  0001 C CNN
F 1 "GND" H 5500 8450 50  0000 C CNN
F 2 "" H 5500 8600 50  0000 C CNN
F 3 "" H 5500 8600 50  0000 C CNN
	1    5500 8600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 8300 5200 8300
Wire Wire Line
	5500 8050 5500 8100
Wire Wire Line
	5500 7950 5500 7850
Wire Wire Line
	5500 8500 5500 8600
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R18
U 1 1 5CE79DA0
P 5050 8300
F 0 "R18" H 5109 8346 50  0000 L CNN
F 1 "1k" H 5109 8255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5050 8300 50  0001 C CNN
F 3 "~" H 5050 8300 50  0001 C CNN
	1    5050 8300
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 8300 4950 8300
$Comp
L shark_bait_remote-rescue:Transistor_BJT_MMBT3904-shark_bait_remote-rescue Q6
U 1 1 5CE79DA7
P 5400 8300
F 0 "Q6" H 5591 8346 50  0000 L CNN
F 1 "MMBT3904" H 5591 8255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5600 8225 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5400 8300 50  0001 L CNN
	1    5400 8300
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:power_+5V-shark_bait_remote-rescue #PWR055
U 1 1 5CE79DAD
P 3900 7650
F 0 "#PWR055" H 3900 7500 50  0001 C CNN
F 1 "+5V" H 3915 7823 50  0000 C CNN
F 2 "" H 3900 7650 50  0001 C CNN
F 3 "" H 3900 7650 50  0001 C CNN
	1    3900 7650
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:power_+5V-shark_bait_remote-rescue #PWR056
U 1 1 5CE79DB3
P 5500 7650
F 0 "#PWR056" H 5500 7500 50  0001 C CNN
F 1 "+5V" H 5515 7823 50  0000 C CNN
F 2 "" H 5500 7650 50  0001 C CNN
F 3 "" H 5500 7650 50  0001 C CNN
	1    5500 7650
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:power_+5V-shark_bait_remote-rescue #PWR057
U 1 1 5CE79DB9
P 7250 7700
F 0 "#PWR057" H 7250 7550 50  0001 C CNN
F 1 "+5V" H 7265 7873 50  0000 C CNN
F 2 "" H 7250 7700 50  0001 C CNN
F 3 "" H 7250 7700 50  0001 C CNN
	1    7250 7700
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:power_+5V-shark_bait_remote-rescue #PWR058
U 1 1 5CE79DBF
P 8850 7700
F 0 "#PWR058" H 8850 7550 50  0001 C CNN
F 1 "+5V" H 8865 7873 50  0000 C CNN
F 2 "" H 8850 7700 50  0001 C CNN
F 3 "" H 8850 7700 50  0001 C CNN
	1    8850 7700
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R5
U 1 1 5CE7AC7C
P 4000 6400
F 0 "R5" H 4059 6446 50  0000 L CNN
F 1 "1k" H 4059 6355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4000 6400 50  0001 C CNN
F 3 "~" H 4000 6400 50  0001 C CNN
	1    4000 6400
	-1   0    0    1   
$EndComp
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R7
U 1 1 5CE7BD7A
P 5600 6400
F 0 "R7" H 5659 6446 50  0000 L CNN
F 1 "1k" H 5659 6355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5600 6400 50  0001 C CNN
F 3 "~" H 5600 6400 50  0001 C CNN
	1    5600 6400
	-1   0    0    1   
$EndComp
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R8
U 1 1 5CE7BF36
P 7350 6450
F 0 "R8" H 7409 6496 50  0000 L CNN
F 1 "1k" H 7409 6405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7350 6450 50  0001 C CNN
F 3 "~" H 7350 6450 50  0001 C CNN
	1    7350 6450
	-1   0    0    1   
$EndComp
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R9
U 1 1 5CE7C2CA
P 8950 6450
F 0 "R9" H 9009 6496 50  0000 L CNN
F 1 "1k" H 9009 6405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8950 6450 50  0001 C CNN
F 3 "~" H 8950 6450 50  0001 C CNN
	1    8950 6450
	-1   0    0    1   
$EndComp
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R16
U 1 1 5CE7C5AE
P 8850 7800
F 0 "R16" H 8909 7846 50  0000 L CNN
F 1 "1k" H 8909 7755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8850 7800 50  0001 C CNN
F 3 "~" H 8850 7800 50  0001 C CNN
	1    8850 7800
	-1   0    0    1   
$EndComp
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R15
U 1 1 5CE7C6DC
P 7250 7800
F 0 "R15" H 7309 7846 50  0000 L CNN
F 1 "1k" H 7309 7755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7250 7800 50  0001 C CNN
F 3 "~" H 7250 7800 50  0001 C CNN
	1    7250 7800
	-1   0    0    1   
$EndComp
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R14
U 1 1 5CE7C856
P 5500 7750
F 0 "R14" H 5559 7796 50  0000 L CNN
F 1 "1k" H 5559 7705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5500 7750 50  0001 C CNN
F 3 "~" H 5500 7750 50  0001 C CNN
	1    5500 7750
	-1   0    0    1   
$EndComp
$Comp
L shark_bait_remote-rescue:Device_R_Small-shark_bait_remote-rescue R13
U 1 1 5CE7CB1C
P 3900 7750
F 0 "R13" H 3959 7796 50  0000 L CNN
F 1 "1k" H 3959 7705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3900 7750 50  0001 C CNN
F 3 "~" H 3900 7750 50  0001 C CNN
	1    3900 7750
	-1   0    0    1   
$EndComp
Text GLabel 7700 1850 0    60   Input ~ 0
LED5
Text GLabel 7700 1750 0    60   Input ~ 0
LED6
Text GLabel 7700 1650 0    60   Input ~ 0
LED7
Text GLabel 7700 1550 0    60   Input ~ 0
LED8
Wire Wire Line
	7300 1450 7700 1450
Wire Wire Line
	2600 4000 2850 4000
Wire Wire Line
	5650 4050 5900 4050
Wire Wire Line
	8850 4000 9100 4000
Wire Wire Line
	12000 4050 12250 4050
Wire Wire Line
	3550 9500 3400 9500
Wire Wire Line
	5000 9500 4850 9500
Wire Notes Line
	11300 2750 11300 500 
Text Notes 9250 600  0    60   ~ 0
Adafruit FeatherWing\n
$Comp
L shark_bait_remote-rescue:AP2112k_VCC-shark_bait_remote-rescue #PWR0101
U 1 1 5CFE14D8
P 10500 750
F 0 "#PWR0101" H 10500 600 50  0001 C CNN
F 1 "VCC" H 10500 900 50  0000 C CNN
F 2 "" H 10500 750 50  0000 C CNN
F 3 "" H 10500 750 50  0000 C CNN
	1    10500 750 
	1    0    0    -1  
$EndComp
$Comp
L shark_bait_remote-rescue:Connector_Generic_Conn_01x12-shark_bait_remote-rescue JP2
U 1 1 5CFE14DE
P 10100 1850
F 0 "JP2" H 10100 2500 50  0000 C CNN
F 1 "PinHeader_01x12_2.54mm" V 10200 1850 50  0000 C CNN
F 2 "Adafruit_FeatherWing:Conn_PinHeader_1x12_Reduced" H 10100 1850 50  0001 C CNN
F 3 "" H 10100 1850 50  0000 C CNN
	1    10100 1850
	1    0    0    1   
$EndComp
$Comp
L shark_bait_remote-rescue:Connector_Generic_Conn_01x16-shark_bait_remote-rescue JP1
U 1 1 5CFE14E7
P 11050 1700
F 0 "JP1" H 11050 850 50  0000 C CNN
F 1 "PinHeader_01x16_2.54mm" V 11150 1700 50  0000 C CNN
F 2 "Adafruit_FeatherWing:Conn_PinHeader_1x16_Reduced" H 11050 1700 50  0001 C CNN
F 3 "" H 11050 1700 50  0000 C CNN
F 4 "_" H 11050 1700 60  0001 C CNN "Manf#"
F 5 "_" H 11050 1700 60  0001 C CNN "Manf"
F 6 "_" H 11050 1700 60  0001 C CNN "Optn"
	1    11050 1700
	1    0    0    1   
$EndComp
$Comp
L shark_bait_remote-rescue:AP2112k_GND-shark_bait_remote-rescue #PWR0102
U 1 1 5CFE14ED
P 10450 2500
F 0 "#PWR0102" H 10450 2250 50  0001 C CNN
F 1 "GND" H 10450 2350 50  0000 C CNN
F 2 "" H 10450 2500 50  0000 C CNN
F 3 "" H 10450 2500 50  0000 C CNN
	1    10450 2500
	1    0    0    -1  
$EndComp
Text Label 10850 900  2    60   ~ 0
~RESET
Text Label 10850 1100 2    60   ~ 0
AREF
Text Label 10850 1900 2    60   ~ 0
SCK
Text Label 10850 2000 2    60   ~ 0
MOSI
Text Label 10850 2100 2    60   ~ 0
MISO
Text Label 9900 1350 2    60   ~ 0
EN
Wire Notes Line
	9200 2750 9200 500 
Wire Notes Line
	9200 650  10250 650 
Wire Notes Line
	10250 650  10250 500 
Wire Wire Line
	10850 1200 10450 1200
Wire Wire Line
	10850 1000 10500 1000
Wire Wire Line
	10500 1000 10500 750 
Wire Wire Line
	9450 1450 9500 1450
Wire Wire Line
	9900 1250 9800 1250
Text Label 9800 1250 2    60   ~ 0
VBAT
Text Label 9450 1450 2    60   ~ 0
VUSB
$Comp
L shark_bait_remote-rescue:power_+5V-shark_bait_remote-rescue #PWR0103
U 1 1 5CFE1506
P 9500 1350
F 0 "#PWR0103" H 9500 1200 50  0001 C CNN
F 1 "+5V" H 9515 1523 50  0000 C CNN
F 2 "" H 9500 1350 50  0001 C CNN
F 3 "" H 9500 1350 50  0001 C CNN
	1    9500 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1450 9500 1350
Connection ~ 9500 1450
Text GLabel 10850 1300 0    60   Input ~ 0
S0
Text GLabel 10850 1400 0    60   Input ~ 0
S1
Text GLabel 10850 1500 0    60   Input ~ 0
S2
Text GLabel 10850 1600 0    60   Input ~ 0
S3
Text GLabel 10850 1700 0    60   Input ~ 0
KNOB1
Text GLabel 10850 1800 0    60   Input ~ 0
KNOB2
Text GLabel 10850 2200 0    60   Input ~ 0
KNOB3
Text GLabel 10850 2300 0    60   Input ~ 0
KNOB4
Text GLabel 9900 2350 0    60   Input ~ 0
LED1
Text GLabel 9900 2250 0    60   Input ~ 0
LED2
Text GLabel 9900 2150 0    60   Input ~ 0
LED3
Text GLabel 9900 2050 0    60   Input ~ 0
LED4
Text GLabel 9900 1950 0    60   Input ~ 0
BUTT1
Text GLabel 9900 1850 0    60   Input ~ 0
LED5
Text GLabel 9900 1750 0    60   Input ~ 0
LED6
Text GLabel 9900 1650 0    60   Input ~ 0
LED7
Text GLabel 9900 1550 0    60   Input ~ 0
LED8
Wire Wire Line
	9500 1450 9900 1450
Text GLabel 4850 9500 0    60   Input ~ 0
LED1
Wire Wire Line
	8250 1200 8250 2500
Wire Wire Line
	10450 1200 10450 2500
$EndSCHEMATC
