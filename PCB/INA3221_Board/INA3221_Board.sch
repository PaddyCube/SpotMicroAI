EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+3.3V #PWR?
U 1 1 5DB1E852
P 1200 1300
F 0 "#PWR?" H 1200 1150 50  0001 C CNN
F 1 "+3.3V" H 1215 1473 50  0000 C CNN
F 2 "" H 1200 1300 50  0001 C CNN
F 3 "" H 1200 1300 50  0001 C CNN
	1    1200 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DB1F0AA
P 1800 1100
F 0 "#PWR?" H 1800 850 50  0001 C CNN
F 1 "GND" H 1805 927 50  0000 C CNN
F 2 "" H 1800 1100 50  0001 C CNN
F 3 "" H 1800 1100 50  0001 C CNN
	1    1800 1100
	1    0    0    -1  
$EndComp
Text GLabel 1200 1300 3    50   Input ~ 0
VCC
Text GLabel 1800 1100 1    50   Input ~ 0
GND
$Comp
L Connector_Generic:Conn_01x04 JI2C
U 1 1 5DB1F825
P 1250 1950
F 0 "JI2C" H 1330 1942 50  0000 L CNN
F 1 "Conn_01x04" H 1330 1851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1250 1950 50  0001 C CNN
F 3 "~" H 1250 1950 50  0001 C CNN
	1    1250 1950
	1    0    0    -1  
$EndComp
Text GLabel 1050 1850 0    50   Input ~ 0
VCC
Text GLabel 1050 2150 0    50   Input ~ 0
GND
Text GLabel 1050 2050 0    50   Input ~ 0
SDA
Text GLabel 1050 1950 0    50   Input ~ 0
SCL
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 5DB1FF85
P 1250 2700
F 0 "J1" H 1330 2692 50  0000 L CNN
F 1 "Conn_01x06" H 1330 2601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1250 2700 50  0001 C CNN
F 3 "~" H 1250 2700 50  0001 C CNN
	1    1250 2700
	1    0    0    -1  
$EndComp
Text GLabel 1050 2500 0    50   Input ~ 0
IN1+
Text GLabel 1050 2600 0    50   Input ~ 0
IN1-
Text GLabel 1050 2700 0    50   Input ~ 0
IN2+
Text GLabel 1050 2800 0    50   Input ~ 0
IN2-
Text GLabel 1050 2900 0    50   Input ~ 0
IN3+
Text GLabel 1050 3000 0    50   Input ~ 0
IN3-
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 5DB2146C
P 1250 3350
F 0 "J?" H 1330 3342 50  0000 L CNN
F 1 "Conn_01x06" H 1330 3251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1250 3350 50  0001 C CNN
F 3 "~" H 1250 3350 50  0001 C CNN
	1    1250 3350
	1    0    0    -1  
$EndComp
Text GLabel 1050 3150 0    50   Input ~ 0
IN4+
Text GLabel 1050 3250 0    50   Input ~ 0
IN4-
Text GLabel 1050 3350 0    50   Input ~ 0
IN5+
Text GLabel 1050 3450 0    50   Input ~ 0
IN5-
Text GLabel 1050 3550 0    50   Input ~ 0
IN6+
Text GLabel 1050 3650 0    50   Input ~ 0
IN6-
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 5DB21879
P 1250 4000
F 0 "J?" H 1330 3992 50  0000 L CNN
F 1 "Conn_01x06" H 1330 3901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1250 4000 50  0001 C CNN
F 3 "~" H 1250 4000 50  0001 C CNN
	1    1250 4000
	1    0    0    -1  
$EndComp
Text GLabel 1050 3800 0    50   Input ~ 0
IN7+
Text GLabel 1050 3900 0    50   Input ~ 0
IN7-
Text GLabel 1050 4000 0    50   Input ~ 0
IN8+
Text GLabel 1050 4100 0    50   Input ~ 0
IN8-
Text GLabel 1050 4200 0    50   Input ~ 0
IN9+
Text GLabel 1050 4300 0    50   Input ~ 0
IN9-
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 5DB21EEC
P 1250 4650
F 0 "J?" H 1330 4642 50  0000 L CNN
F 1 "Conn_01x06" H 1330 4551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1250 4650 50  0001 C CNN
F 3 "~" H 1250 4650 50  0001 C CNN
	1    1250 4650
	1    0    0    -1  
$EndComp
Text GLabel 1050 4450 0    50   Input ~ 0
IN10+
Text GLabel 1050 4550 0    50   Input ~ 0
IN10-
Text GLabel 1050 4650 0    50   Input ~ 0
IN11+
Text GLabel 1050 4750 0    50   Input ~ 0
IN11-
Text GLabel 1050 4850 0    50   Input ~ 0
IN12+
Text GLabel 1050 4950 0    50   Input ~ 0
IN12-
$Comp
L Jumper:SolderJumper_2_Open JP1-?
U 1 1 5DB2213B
P 3500 2050
F 0 "JP1-?" H 3500 2255 50  0000 C CNN
F 1 "U1 A0" H 3500 2164 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 3500 2050 50  0001 C CNN
F 3 "~" H 3500 2050 50  0001 C CNN
	1    3500 2050
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP1-?
U 1 1 5DB22890
P 3500 2350
F 0 "JP1-?" H 3500 2555 50  0000 C CNN
F 1 "U1 A0" H 3500 2464 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 3500 2350 50  0001 C CNN
F 3 "~" H 3500 2350 50  0001 C CNN
	1    3500 2350
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP1-?
U 1 1 5DB22E8A
P 3500 2650
F 0 "JP1-?" H 3500 2855 50  0000 C CNN
F 1 "U1 A0" H 3500 2764 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 3500 2650 50  0001 C CNN
F 3 "~" H 3500 2650 50  0001 C CNN
	1    3500 2650
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP1-?
U 1 1 5DB23260
P 3500 2900
F 0 "JP1-?" H 3500 3105 50  0000 C CNN
F 1 "U1 A0" H 3500 3014 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 3500 2900 50  0001 C CNN
F 3 "~" H 3500 2900 50  0001 C CNN
	1    3500 2900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
