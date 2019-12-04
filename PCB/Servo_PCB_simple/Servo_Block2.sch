EESchema Schematic File Version 4
LIBS:Servo_PCB-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
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
L Connector_Generic:Conn_01x03 JServo?
U 1 1 5DA095B0
P 1250 1950
AR Path="/5DA095B0" Ref="JServo?"  Part="1" 
AR Path="/5D9FB295/5DA095B0" Ref="S4"  Part="1" 
F 0 "S4" H 1168 1625 50  0000 C CNN
F 1 "Conn_01x03" H 1168 1716 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1250 1950 50  0001 C CNN
F 3 "~" H 1250 1950 50  0001 C CNN
	1    1250 1950
	-1   0    0    1   
$EndComp
Text GLabel 2350 1950 2    50   Input ~ 0
Servo_VCC1
Text GLabel 1450 1850 2    50   Input ~ 0
Servo_GND1
Text GLabel 1450 2050 2    50   Input ~ 0
PWM_Servo4
$Comp
L Connector_Generic:Conn_01x03 JServo?
U 1 1 5DA1A6CB
P 1250 2500
AR Path="/5DA1A6CB" Ref="JServo?"  Part="1" 
AR Path="/5D9FB295/5DA1A6CB" Ref="S5"  Part="1" 
F 0 "S5" H 1168 2175 50  0000 C CNN
F 1 "Conn_01x03" H 1168 2266 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1250 2500 50  0001 C CNN
F 3 "~" H 1250 2500 50  0001 C CNN
	1    1250 2500
	-1   0    0    1   
$EndComp
Text GLabel 1450 2400 2    50   Input ~ 0
Servo_GND1
Text GLabel 1450 2600 2    50   Input ~ 0
PWM_Servo5
$Comp
L Connector_Generic:Conn_01x03 JServo?
U 1 1 5DA1A6CE
P 1250 3050
AR Path="/5DA1A6CE" Ref="JServo?"  Part="1" 
AR Path="/5D9FB295/5DA1A6CE" Ref="S6"  Part="1" 
F 0 "S6" H 1168 2725 50  0000 C CNN
F 1 "Conn_01x03" H 1168 2816 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1250 3050 50  0001 C CNN
F 3 "~" H 1250 3050 50  0001 C CNN
	1    1250 3050
	-1   0    0    1   
$EndComp
Text GLabel 1450 2950 2    50   Input ~ 0
Servo_GND1
Text GLabel 1450 3150 2    50   Input ~ 0
PWM_Servo6
Text GLabel 2350 2500 2    50   Input ~ 0
Servo_VCC1
Text GLabel 2350 3050 2    50   Input ~ 0
Servo_VCC1
$Comp
L Device:R_Small RShunt4
U 1 1 5DAEB6E4
P 2250 1950
F 0 "RShunt4" V 2054 1950 50  0000 C CNN
F 1 "0.05Ohm" V 2145 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_1210_3225Metric" H 2250 1950 50  0001 C CNN
F 3 "~" H 2250 1950 50  0001 C CNN
	1    2250 1950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small RShunt5
U 1 1 5DAEBEFD
P 2250 2500
F 0 "RShunt5" V 2054 2500 50  0000 C CNN
F 1 "0.05Ohm" V 2145 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_1210_3225Metric" H 2250 2500 50  0001 C CNN
F 3 "~" H 2250 2500 50  0001 C CNN
	1    2250 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small RShunt6
U 1 1 5DAEC1FB
P 2250 3050
F 0 "RShunt6" V 2054 3050 50  0000 C CNN
F 1 "0.05Ohm" V 2145 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_1210_3225Metric" H 2250 3050 50  0001 C CNN
F 3 "~" H 2250 3050 50  0001 C CNN
	1    2250 3050
	0    1    1    0   
$EndComp
Text GLabel 2350 2050 2    50   Input ~ 0
Shunt_4_IN+
Text GLabel 2350 2150 2    50   Input ~ 0
Shunt_4_IN-
Wire Wire Line
	2350 2050 2350 1950
Wire Wire Line
	2350 2150 2150 2150
Wire Wire Line
	2150 2150 2150 1950
Text GLabel 2350 2600 2    50   Input ~ 0
Shunt_5_IN+
Text GLabel 2350 2700 2    50   Input ~ 0
Shunt_5_IN-
Wire Wire Line
	2350 2600 2350 2500
Wire Wire Line
	2350 2700 2150 2700
Wire Wire Line
	2150 2700 2150 2500
Text GLabel 2350 3150 2    50   Input ~ 0
Shunt_6_IN+
Text GLabel 2350 3250 2    50   Input ~ 0
Shunt_6_IN-
Wire Wire Line
	2350 3150 2350 3050
Wire Wire Line
	2350 3250 2150 3250
Wire Wire Line
	2150 3250 2150 3050
Wire Wire Line
	2150 1950 1450 1950
Connection ~ 2150 1950
Wire Wire Line
	2150 2500 1450 2500
Connection ~ 2150 2500
Wire Wire Line
	2150 3050 1450 3050
Connection ~ 2150 3050
$EndSCHEMATC
