EESchema Schematic File Version 4
EELAYER 30 0
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
Text Label 8750 1250 0    60   ~ 0
MOSI
Text Label 8750 1350 0    60   ~ 0
SS
Text Label 8750 1450 0    60   ~ 0
1(Tx1)
Text Label 8750 1550 0    60   ~ 0
0(Rx1)
Text Label 8750 1850 0    60   ~ 0
2(SDA)
Text Label 8750 1950 0    60   ~ 0
3(**/SCL)
Text Label 8750 2050 0    60   ~ 0
4(A6)
Text Label 8750 2150 0    60   ~ 0
5(**)
Text Label 8750 2250 0    60   ~ 0
6(**/A7)
Text Label 8750 2350 0    60   ~ 0
7
Text Label 8750 2450 0    60   ~ 0
8(A8)
Text Label 8750 2550 0    60   ~ 0
9(**/A9)
Text Label 8750 2650 0    60   ~ 0
10(A10)
Text Label 8750 2750 0    60   ~ 0
11(**)
Text Label 8750 2850 0    60   ~ 0
12(A11)
Text Label 10650 1250 0    60   ~ 0
SCK
Text Label 10650 1350 0    60   ~ 0
MISO
Text Label 10250 1100 1    60   ~ 0
Vin
Text Label 10650 2850 0    60   ~ 0
13(**)
Text Label 10650 2650 0    60   ~ 0
AREF
Text Label 10650 2550 0    60   ~ 0
A0
Text Label 10650 2450 0    60   ~ 0
A1
Text Label 10650 2350 0    60   ~ 0
A2
Text Label 10650 2250 0    60   ~ 0
A3
NoConn ~ 10150 1950
NoConn ~ 10150 1850
Text Notes 8550 575  0    60   ~ 0
Shield Arduino Micro Rev 3
Text Notes 10850 1000 0    60   ~ 0
Holes
NoConn ~ 10800 850 
Wire Notes Line
	8525 650  9875 650 
Wire Notes Line
	9875 650  9875 475 
$Comp
L Connector_Generic:Conn_01x17 P1
U 1 1 56D719DF
P 9550 2050
F 0 "P1" H 9550 2950 50  0000 C CNN
F 1 "Digital" H 9550 1150 50  0000 C CNN
F 2 "Socket_Arduino_Micro:Socket_Strip_Arduino_1x17" V 9650 2050 30  0000 C CNN
F 3 "" H 9550 2050 50  0000 C CNN
	1    9550 2050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x17 P2
U 1 1 56D71A21
P 9950 2050
F 0 "P2" H 9950 2950 50  0000 C CNN
F 1 "Analog" H 9950 1150 50  0000 C CNN
F 2 "Socket_Arduino_Micro:Socket_Strip_Arduino_1x17" V 10050 2050 30  0000 C CNN
F 3 "" H 9950 2050 50  0000 C CNN
	1    9950 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8750 1250 9350 1250
Wire Wire Line
	8750 1350 9350 1350
Wire Wire Line
	8750 1450 9350 1450
Wire Wire Line
	8750 1550 9350 1550
Wire Wire Line
	8750 2050 9350 2050
Wire Wire Line
	8750 2150 9350 2150
Wire Wire Line
	8750 2250 9350 2250
Wire Wire Line
	8750 2350 9350 2350
Wire Wire Line
	8750 2450 9350 2450
Wire Wire Line
	8750 2550 9350 2550
Wire Wire Line
	8750 2650 9350 2650
Wire Wire Line
	8750 2750 9350 2750
Wire Wire Line
	8750 2850 9350 2850
$Comp
L power:GND #PWR01
U 1 1 56D71E99
P 9250 3000
F 0 "#PWR01" H 9250 2750 50  0001 C CNN
F 1 "GND" H 9250 2850 50  0000 C CNN
F 2 "" H 9250 3000 50  0000 C CNN
F 3 "" H 9250 3000 50  0000 C CNN
	1    9250 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1750 9250 1750
Wire Wire Line
	9250 1750 9250 3000
Text Notes 9650 1250 0    60   ~ 0
1
Wire Wire Line
	10150 1450 10250 1450
Wire Wire Line
	10250 1450 10250 1100
Wire Wire Line
	10150 1750 10350 1750
Wire Wire Line
	10350 1750 10350 1100
$Comp
L power:+5V #PWR02
U 1 1 56D725B4
P 10350 1100
F 0 "#PWR02" H 10350 950 50  0001 C CNN
F 1 "+5V" H 10350 1240 28  0000 C CNN
F 2 "" H 10350 1100 50  0000 C CNN
F 3 "" H 10350 1100 50  0000 C CNN
	1    10350 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D727D3
P 10250 3000
F 0 "#PWR03" H 10250 2750 50  0001 C CNN
F 1 "GND" H 10250 2850 50  0000 C CNN
F 2 "" H 10250 3000 50  0000 C CNN
F 3 "" H 10250 3000 50  0000 C CNN
	1    10250 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR04
U 1 1 56D72867
P 10450 1000
F 0 "#PWR04" H 10450 850 50  0001 C CNN
F 1 "+3.3V" H 10450 1140 28  0000 C CNN
F 2 "" H 10450 1000 50  0000 C CNN
F 3 "" H 10450 1000 50  0000 C CNN
	1    10450 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 1250 10150 1250
Wire Wire Line
	10150 1350 10650 1350
Wire Wire Line
	10150 2650 10650 2650
Wire Wire Line
	10650 2850 10150 2850
Wire Wire Line
	10150 1550 10250 1550
Wire Wire Line
	10250 1550 10250 3000
Wire Wire Line
	10450 1000 10450 2750
Wire Wire Line
	10450 2750 10150 2750
Wire Notes Line
	8500 500  8500 3250
$Comp
L Connector_Generic:Conn_01x01 P3
U 1 1 56D72ED3
P 10800 650
F 0 "P3" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" H 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Micro:1pin_Micro" H 10722 722 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P4
U 1 1 56D72FBF
P 10900 650
F 0 "P4" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" H 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Micro:1pin_Micro" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D72FE7
P 11000 650
F 0 "P5" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" H 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Micro:1pin_Micro" H 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D73012
P 11100 650
F 0 "P6" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" H 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Micro:1pin_Micro" H 11019 581 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 11100 850 
NoConn ~ 11000 850 
NoConn ~ 10900 850 
Wire Notes Line
	11200 1000 10650 1000
Wire Notes Line
	10650 1000 10650 500 
Wire Notes Line
	8500 3250 11200 3250
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J1
U 1 1 5EA9DB3D
P 7500 2150
F 0 "J1" H 7550 2467 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 7550 2376 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x03_P2.54mm_Vertical" H 7500 2150 50  0001 C CNN
F 3 "~" H 7500 2150 50  0001 C CNN
	1    7500 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5EAA15B6
P 7300 2050
F 0 "#PWR0101" H 7300 1800 50  0001 C CNN
F 1 "GND" V 7305 1922 50  0000 R CNN
F 2 "" H 7300 2050 50  0001 C CNN
F 3 "" H 7300 2050 50  0001 C CNN
	1    7300 2050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5EAA2098
P 7800 2050
F 0 "#PWR0102" H 7800 1800 50  0001 C CNN
F 1 "GND" V 7805 1922 50  0000 R CNN
F 2 "" H 7800 2050 50  0001 C CNN
F 3 "" H 7800 2050 50  0001 C CNN
	1    7800 2050
	0    -1   -1   0   
$EndComp
Text Label 7050 2150 2    60   ~ 0
Vin
Wire Wire Line
	7050 2150 7300 2150
$Comp
L power:+3V3 #PWR0103
U 1 1 5EAA3084
P 7300 2250
F 0 "#PWR0103" H 7300 2100 50  0001 C CNN
F 1 "+3.3V" H 7300 2390 28  0000 C CNN
F 2 "" H 7300 2250 50  0000 C CNN
F 3 "" H 7300 2250 50  0000 C CNN
	1    7300 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8600 1950 9350 1950
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 5EAA838B
P 7650 1300
F 0 "J2" H 7542 1585 50  0000 C CNN
F 1 "Conn_01x04_Female" H 7542 1494 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7650 1300 50  0001 C CNN
F 3 "~" H 7650 1300 50  0001 C CNN
	1    7650 1300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5EAA89D4
P 7850 1200
F 0 "#PWR0104" H 7850 950 50  0001 C CNN
F 1 "GND" V 7855 1072 50  0000 R CNN
F 2 "" H 7850 1200 50  0001 C CNN
F 3 "" H 7850 1200 50  0001 C CNN
	1    7850 1200
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0105
U 1 1 5EAA90A5
P 7850 1300
F 0 "#PWR0105" H 7850 1150 50  0001 C CNN
F 1 "+3.3V" H 7850 1440 28  0000 C CNN
F 2 "" H 7850 1300 50  0000 C CNN
F 3 "" H 7850 1300 50  0000 C CNN
	1    7850 1300
	0    1    1    0   
$EndComp
Text GLabel 7850 1400 2    50   Input ~ 0
SCL
Text GLabel 7850 1500 2    50   Input ~ 0
SDA
Text GLabel 7800 2150 2    50   Input ~ 0
SDA
Wire Wire Line
	8700 1850 9350 1850
Text GLabel 7800 2250 2    50   Input ~ 0
SCL
Text GLabel 8600 1950 0    50   Input ~ 0
SCL
Text GLabel 8700 1850 0    50   Input ~ 0
SDA
$Comp
L ST-TF-003A:ST-TF-003A P7
U 1 1 5EAAFC64
P 5850 1500
F 0 "P7" V 5989 770 50  0000 R CNN
F 1 "ST-TF-003A" V 5898 770 50  0000 R CNN
F 2 "ST-TF-003A:SUNTECH_ST-TF-003A" H 5850 1500 50  0001 L BNN
F 3 "Suntech" H 5850 1500 50  0001 L BNN
	1    5850 1500
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0106
U 1 1 5EAB1C53
P 5250 1700
F 0 "#PWR0106" H 5250 1550 50  0001 C CNN
F 1 "+3.3V" H 5250 1840 28  0000 C CNN
F 2 "" H 5250 1700 50  0000 C CNN
F 3 "" H 5250 1700 50  0000 C CNN
	1    5250 1700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5EAB2D29
P 6450 1700
F 0 "#PWR0107" H 6450 1450 50  0001 C CNN
F 1 "GND" H 6455 1527 50  0000 C CNN
F 2 "" H 6450 1700 50  0001 C CNN
F 3 "" H 6450 1700 50  0001 C CNN
	1    6450 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5EAB3834
P 6350 1700
F 0 "#PWR0108" H 6350 1450 50  0001 C CNN
F 1 "GND" H 6355 1527 50  0000 C CNN
F 2 "" H 6350 1700 50  0001 C CNN
F 3 "" H 6350 1700 50  0001 C CNN
	1    6350 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5EAB3E98
P 5750 1700
F 0 "#PWR0109" H 5750 1450 50  0001 C CNN
F 1 "GND" H 5755 1527 50  0000 C CNN
F 2 "" H 5750 1700 50  0001 C CNN
F 3 "" H 5750 1700 50  0001 C CNN
	1    5750 1700
	1    0    0    -1  
$EndComp
Text GLabel 5850 1700 3    50   Input ~ 0
MISO
Text GLabel 5950 2550 3    50   Input ~ 0
MISO
Text GLabel 5550 1700 3    50   Input ~ 0
SCK
Text GLabel 6150 1700 3    50   Input ~ 0
MOSI
Text GLabel 6050 1700 3    50   Input ~ 0
CS
NoConn ~ 5450 1700
NoConn ~ 5950 1700
Text GLabel 8750 1350 0    50   Input ~ 0
CS
Text GLabel 10650 1350 2    50   Input ~ 0
MISO
Text GLabel 8750 1250 0    50   Input ~ 0
MOSI
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 5EABDC20
P 2250 1650
F 0 "SW1" H 2250 2017 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 2250 1926 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 2100 1810 50  0001 C CNN
F 3 "~" H 2250 1910 50  0001 C CNN
	1    2250 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 2350 10950 2350
Wire Wire Line
	10150 2450 10950 2450
Wire Wire Line
	10150 2550 10950 2550
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5EAD7E43
P 9150 3550
F 0 "H1" H 9250 3599 50  0000 L CNN
F 1 "MountingHole_Pad" H 9250 3508 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 9150 3550 50  0001 C CNN
F 3 "~" H 9150 3550 50  0001 C CNN
	1    9150 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5EAD9847
P 9150 3650
F 0 "#PWR0116" H 9150 3400 50  0001 C CNN
F 1 "GND" H 9150 3500 50  0000 C CNN
F 2 "" H 9150 3650 50  0000 C CNN
F 3 "" H 9150 3650 50  0000 C CNN
	1    9150 3650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5EADA3B0
P 10150 3550
F 0 "H2" H 10250 3599 50  0000 L CNN
F 1 "MountingHole_Pad" H 10250 3508 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 10150 3550 50  0001 C CNN
F 3 "~" H 10150 3550 50  0001 C CNN
	1    10150 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5EADA3B6
P 10150 3650
F 0 "#PWR0117" H 10150 3400 50  0001 C CNN
F 1 "GND" H 10150 3500 50  0000 C CNN
F 2 "" H 10150 3650 50  0000 C CNN
F 3 "" H 10150 3650 50  0000 C CNN
	1    10150 3650
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148W D8
U 1 1 5EB2B3A3
P 1800 1750
F 0 "D8" H 1800 1533 50  0000 C CNN
F 1 "1N4148W" H 1800 1624 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 1800 1575 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 1800 1750 50  0001 C CNN
	1    1800 1750
	-1   0    0    1   
$EndComp
Text GLabel 1650 1550 0    50   Input ~ 0
rbus-a
Text GLabel 1650 1750 0    50   Input ~ 0
rbus-b
$Comp
L Diode:1N4148W D7
U 1 1 5EB304BA
P 1800 1550
F 0 "D7" H 1800 1333 50  0000 C CNN
F 1 "1N4148W" H 1800 1424 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 1800 1375 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 1800 1550 50  0001 C CNN
	1    1800 1550
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148W D12
U 1 1 5EB3082F
P 2700 1550
F 0 "D12" H 2700 1767 50  0000 C CNN
F 1 "1N4148W" H 2700 1676 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 2700 1375 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 2700 1550 50  0001 C CNN
	1    2700 1550
	1    0    0    -1  
$EndComp
Text GLabel 2850 1550 2    50   Input ~ 0
rbus-s
Wire Wire Line
	1950 1650 1900 1650
Wire Wire Line
	1900 1650 1900 1950
Wire Wire Line
	1900 1950 2550 1950
Wire Wire Line
	2550 1950 2550 1750
Text GLabel 1900 1950 0    50   Input ~ 0
ecn1
$Comp
L Device:Rotary_Encoder_Switch SW3
U 1 1 5EB385A5
P 2200 2550
F 0 "SW3" H 2200 2917 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 2200 2826 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 2050 2710 50  0001 C CNN
F 3 "~" H 2200 2810 50  0001 C CNN
	1    2200 2550
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148W D4
U 1 1 5EB385AB
P 1750 2650
F 0 "D4" H 1750 2433 50  0000 C CNN
F 1 "1N4148W" H 1750 2524 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 1750 2475 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 1750 2650 50  0001 C CNN
	1    1750 2650
	-1   0    0    1   
$EndComp
Text GLabel 1600 2450 0    50   Input ~ 0
rbus-a
Text GLabel 1600 2650 0    50   Input ~ 0
rbus-b
$Comp
L Diode:1N4148W D3
U 1 1 5EB385B3
P 1750 2450
F 0 "D3" H 1750 2233 50  0000 C CNN
F 1 "1N4148W" H 1750 2324 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 1750 2275 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 1750 2450 50  0001 C CNN
	1    1750 2450
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148W D10
U 1 1 5EB385B9
P 2650 2450
F 0 "D10" H 2650 2667 50  0000 C CNN
F 1 "1N4148W" H 2650 2576 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 2650 2275 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 2650 2450 50  0001 C CNN
	1    2650 2450
	1    0    0    -1  
$EndComp
Text GLabel 2800 2450 2    50   Input ~ 0
rbus-s
Wire Wire Line
	1900 2550 1850 2550
Wire Wire Line
	1850 2550 1850 2850
Wire Wire Line
	1850 2850 2500 2850
Wire Wire Line
	2500 2850 2500 2650
Text GLabel 1850 2850 0    50   Input ~ 0
ecn2
$Comp
L Device:Rotary_Encoder_Switch SW4
U 1 1 5EB3BA2E
P 2200 3400
F 0 "SW4" H 2200 3767 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 2200 3676 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 2050 3560 50  0001 C CNN
F 3 "~" H 2200 3660 50  0001 C CNN
	1    2200 3400
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148W D6
U 1 1 5EB3BA34
P 1750 3500
F 0 "D6" H 1750 3283 50  0000 C CNN
F 1 "1N4148W" H 1750 3374 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 1750 3325 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 1750 3500 50  0001 C CNN
	1    1750 3500
	-1   0    0    1   
$EndComp
Text GLabel 1600 3300 0    50   Input ~ 0
rbus-a
Text GLabel 1600 3500 0    50   Input ~ 0
rbus-b
$Comp
L Diode:1N4148W D5
U 1 1 5EB3BA3C
P 1750 3300
F 0 "D5" H 1750 3083 50  0000 C CNN
F 1 "1N4148W" H 1750 3174 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 1750 3125 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 1750 3300 50  0001 C CNN
	1    1750 3300
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148W D11
U 1 1 5EB3BA42
P 2650 3300
F 0 "D11" H 2650 3517 50  0000 C CNN
F 1 "1N4148W" H 2650 3426 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 2650 3125 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 2650 3300 50  0001 C CNN
	1    2650 3300
	1    0    0    -1  
$EndComp
Text GLabel 2800 3300 2    50   Input ~ 0
rbus-s
Wire Wire Line
	1900 3400 1850 3400
Wire Wire Line
	1850 3400 1850 3700
Wire Wire Line
	1850 3700 2500 3700
Wire Wire Line
	2500 3700 2500 3500
Text GLabel 1850 3700 0    50   Input ~ 0
ecn3
$Comp
L Device:Rotary_Encoder_Switch SW2
U 1 1 5EB400A9
P 2150 4350
F 0 "SW2" H 2150 4717 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 2150 4626 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 2000 4510 50  0001 C CNN
F 3 "~" H 2150 4610 50  0001 C CNN
	1    2150 4350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148W D2
U 1 1 5EB400AF
P 1700 4450
F 0 "D2" H 1700 4233 50  0000 C CNN
F 1 "1N4148W" H 1700 4324 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 1700 4275 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 1700 4450 50  0001 C CNN
	1    1700 4450
	-1   0    0    1   
$EndComp
Text GLabel 1550 4250 0    50   Input ~ 0
rbus-a
Text GLabel 1550 4450 0    50   Input ~ 0
rbus-b
$Comp
L Diode:1N4148W D1
U 1 1 5EB400B7
P 1700 4250
F 0 "D1" H 1700 4033 50  0000 C CNN
F 1 "1N4148W" H 1700 4124 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 1700 4075 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 1700 4250 50  0001 C CNN
	1    1700 4250
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148W D9
U 1 1 5EB400BD
P 2600 4250
F 0 "D9" H 2600 4467 50  0000 C CNN
F 1 "1N4148W" H 2600 4376 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 2600 4075 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 2600 4250 50  0001 C CNN
	1    2600 4250
	1    0    0    -1  
$EndComp
Text GLabel 2750 4250 2    50   Input ~ 0
rbus-s
Wire Wire Line
	1850 4350 1800 4350
Wire Wire Line
	1800 4350 1800 4650
Wire Wire Line
	1800 4650 2450 4650
Wire Wire Line
	2450 4650 2450 4450
Text GLabel 1800 4650 0    50   Input ~ 0
ecn4
Text GLabel 8750 2050 0    50   Input ~ 0
rbus-a
Text GLabel 8750 2250 0    50   Input ~ 0
rbus-b
Text GLabel 8750 2450 0    50   Input ~ 0
rbus-s
Text GLabel 8750 2550 0    50   Input ~ 0
ecn1
Text GLabel 8750 2650 0    50   Input ~ 0
ecn2
Text GLabel 8750 2850 0    50   Input ~ 0
ecn3
NoConn ~ 10150 1650
NoConn ~ 9350 1650
$Comp
L Device:C C1
U 1 1 5EB8F30D
P 5000 2250
F 0 "C1" H 5115 2296 50  0000 L CNN
F 1 "47uF" H 5115 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5038 2100 50  0001 C CNN
F 3 "~" H 5000 2250 50  0001 C CNN
	1    5000 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0113
U 1 1 5EB8FB2C
P 5000 2100
F 0 "#PWR0113" H 5000 1950 50  0001 C CNN
F 1 "+3.3V" H 5000 2240 28  0000 C CNN
F 2 "" H 5000 2100 50  0000 C CNN
F 3 "" H 5000 2100 50  0000 C CNN
	1    5000 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5EB9027D
P 5000 2400
F 0 "#PWR0114" H 5000 2150 50  0001 C CNN
F 1 "GND" H 5005 2227 50  0000 C CNN
F 2 "" H 5000 2400 50  0001 C CNN
F 3 "" H 5000 2400 50  0001 C CNN
	1    5000 2400
	1    0    0    -1  
$EndComp
Text GLabel 8750 2750 0    50   Input ~ 0
ecn4
$Comp
L Device:R_US R2
U 1 1 5F223F73
P 5950 2400
F 0 "R2" H 6018 2446 50  0000 L CNN
F 1 "10k" H 6018 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5990 2390 50  0001 C CNN
F 3 "~" H 5950 2400 50  0001 C CNN
	1    5950 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR05
U 1 1 5F224999
P 5950 2250
F 0 "#PWR05" H 5950 2100 50  0001 C CNN
F 1 "+3.3V" H 5950 2390 28  0000 C CNN
F 2 "" H 5950 2250 50  0000 C CNN
F 3 "" H 5950 2250 50  0000 C CNN
	1    5950 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 5EAB7A01
P 13200 3050
F 0 "R1" H 13268 3096 50  0000 L CNN
F 1 "10k" H 13268 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 13240 3040 50  0001 C CNN
F 3 "~" H 13200 3050 50  0001 C CNN
	1    13200 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0110
U 1 1 5EAB9327
P 13000 2800
F 0 "#PWR0110" H 13000 2650 50  0001 C CNN
F 1 "+3.3V" H 13000 2940 28  0000 C CNN
F 2 "" H 13000 2800 50  0000 C CNN
F 3 "" H 13000 2800 50  0000 C CNN
	1    13000 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 5F230F09
P 13000 2950
F 0 "R3" H 13068 2996 50  0000 L CNN
F 1 "10k" H 13068 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 13040 2940 50  0001 C CNN
F 3 "~" H 13000 2950 50  0001 C CNN
	1    13000 2950
	-1   0    0    1   
$EndComp
Text GLabel 12900 3100 3    50   Input ~ 0
rflip
Text GLabel 10150 2050 2    50   Input ~ 0
rflip
Text GLabel 13100 3200 3    50   Input ~ 0
inc4
Text GLabel 10150 2250 2    50   Input ~ 0
inc4
NoConn ~ 10150 2150
$Comp
L Switch:SW_DIP_x03 SW5
U 1 1 5F243952
P 12500 3300
F 0 "SW5" H 12500 3767 50  0000 C CNN
F 1 "SW_DIP_x03" H 12500 3676 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx03_Slide_9.78x9.8mm_W7.62mm_P2.54mm" H 12500 3300 50  0001 C CNN
F 3 "~" H 12500 3300 50  0001 C CNN
	1    12500 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 3100 13000 3100
Wire Wire Line
	13200 3200 12800 3200
$Comp
L Device:R_US R4
U 1 1 5F24B293
P 13450 3150
F 0 "R4" H 13518 3196 50  0000 L CNN
F 1 "10k" H 13518 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 13490 3140 50  0001 C CNN
F 3 "~" H 13450 3150 50  0001 C CNN
	1    13450 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 3300 13450 3300
$Comp
L power:+3V3 #PWR0115
U 1 1 5F24E97C
P 13200 2900
F 0 "#PWR0115" H 13200 2750 50  0001 C CNN
F 1 "+3.3V" H 13200 3040 28  0000 C CNN
F 2 "" H 13200 2900 50  0000 C CNN
F 3 "" H 13200 2900 50  0000 C CNN
	1    13200 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0118
U 1 1 5F24EEA5
P 13450 3000
F 0 "#PWR0118" H 13450 2850 50  0001 C CNN
F 1 "+3.3V" H 13450 3140 28  0000 C CNN
F 2 "" H 13450 3000 50  0000 C CNN
F 3 "" H 13450 3000 50  0000 C CNN
	1    13450 3000
	1    0    0    -1  
$EndComp
Text GLabel 13300 3300 3    50   Input ~ 0
mouse
$Comp
L power:GND #PWR0119
U 1 1 5F25105C
P 12200 3300
F 0 "#PWR0119" H 12200 3050 50  0001 C CNN
F 1 "GND" H 12200 3150 50  0000 C CNN
F 2 "" H 12200 3300 50  0000 C CNN
F 3 "" H 12200 3300 50  0000 C CNN
	1    12200 3300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5F251A00
P 12200 3200
F 0 "#PWR0120" H 12200 2950 50  0001 C CNN
F 1 "GND" H 12200 3050 50  0000 C CNN
F 2 "" H 12200 3200 50  0000 C CNN
F 3 "" H 12200 3200 50  0000 C CNN
	1    12200 3200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5F251BE5
P 12200 3100
F 0 "#PWR0121" H 12200 2850 50  0001 C CNN
F 1 "GND" H 12200 2950 50  0000 C CNN
F 2 "" H 12200 3100 50  0000 C CNN
F 3 "" H 12200 3100 50  0000 C CNN
	1    12200 3100
	0    1    1    0   
$EndComp
Text GLabel 10950 2350 2    50   Input ~ 0
mouse
$EndSCHEMATC
