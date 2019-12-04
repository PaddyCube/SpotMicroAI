EESchema Schematic File Version 4
LIBS:Servo_PCB-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2850 1300 0    50   Input ~ 0
Servo_VCC
$Comp
L Connector_Generic:Conn_01x03 JServo?
U 1 1 5DA1A6C7
P 1250 1950
AR Path="/5DA1A6C7" Ref="JServo?"  Part="1" 
AR Path="/5D9FB295/5DA1A6C7" Ref="JServo4"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6C7" Ref="JServo7"  Part="1" 
AR Path="/5DA1230E/5DA1A6C7" Ref="JServo10"  Part="1" 
AR Path="/5DA14790/5DA1A6C7" Ref="JServo13"  Part="1" 
F 0 "JServo13" H 1168 1625 50  0000 C CNN
F 1 "Conn_01x03" H 1168 1716 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 1250 1950 50  0001 C CNN
F 3 "~" H 1250 1950 50  0001 C CNN
	1    1250 1950
	-1   0    0    1   
$EndComp
Text GLabel 1450 1850 2    50   Input ~ 0
Servo13_VCC
Text GLabel 1450 1950 2    50   Input ~ 0
Servo_GND
Text GLabel 1450 2050 2    50   Input ~ 0
PWM_Servo13
$Comp
L Device:Fuse_Small F_Servo?
U 1 1 5DA1A6C8
P 2950 1300
AR Path="/5DA1A6C8" Ref="F_Servo?"  Part="1" 
AR Path="/5D9FB295/5DA1A6C8" Ref="F_Servo4"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6C8" Ref="F_Servo7"  Part="1" 
AR Path="/5DA1230E/5DA1A6C8" Ref="F_Servo10"  Part="1" 
AR Path="/5DA14790/5DA1A6C8" Ref="F_Servo13"  Part="1" 
F 0 "F_Servo13" H 2700 1400 50  0000 C CNN
F 1 "5A" H 2950 1394 50  0000 C CNN
F 2 "SpotMicroAI:FuseHolder_Schurter_OMH125" H 2950 1300 50  0001 C CNN
F 3 "~" H 2950 1300 50  0001 C CNN
	1    2950 1300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 JServo?
U 1 1 5DA1A6CD
P 1250 2500
AR Path="/5DA1A6CD" Ref="JServo?"  Part="1" 
AR Path="/5D9FB295/5DA1A6CD" Ref="JServo5"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6CD" Ref="JServo8"  Part="1" 
AR Path="/5DA1230E/5DA1A6CD" Ref="JServo11"  Part="1" 
AR Path="/5DA14790/5DA1A6CD" Ref="JServo14"  Part="1" 
F 0 "JServo14" H 1168 2175 50  0000 C CNN
F 1 "Conn_01x03" H 1168 2266 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 1250 2500 50  0001 C CNN
F 3 "~" H 1250 2500 50  0001 C CNN
	1    1250 2500
	-1   0    0    1   
$EndComp
Text GLabel 1450 2400 2    50   Input ~ 0
Servo14_VCC
Text GLabel 1450 2500 2    50   Input ~ 0
Servo_GND
Text GLabel 1450 2600 2    50   Input ~ 0
PWM_Servo14
$Comp
L Connector_Generic:Conn_01x03 JServo?
U 1 1 5DA1A6D0
P 1250 3050
AR Path="/5DA1A6D0" Ref="JServo?"  Part="1" 
AR Path="/5D9FB295/5DA1A6D0" Ref="JServo6"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6D0" Ref="JServo9"  Part="1" 
AR Path="/5DA1230E/5DA1A6D0" Ref="JServo12"  Part="1" 
AR Path="/5DA14790/5DA1A6D0" Ref="JServo15"  Part="1" 
F 0 "JServo15" H 1168 2725 50  0000 C CNN
F 1 "Conn_01x03" H 1168 2816 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 1250 3050 50  0001 C CNN
F 3 "~" H 1250 3050 50  0001 C CNN
	1    1250 3050
	-1   0    0    1   
$EndComp
Text GLabel 1450 2950 2    50   Input ~ 0
Servo15_VCC
Text GLabel 1450 3050 2    50   Input ~ 0
Servo_GND
Text GLabel 1450 3150 2    50   Input ~ 0
PWM_Servo15
$Comp
L Device:R_Small RShunt1_U?
U 1 1 5DA095DD
P 3050 1400
AR Path="/5DA095DD" Ref="RShunt1_U?"  Part="1" 
AR Path="/5D9FB295/5DA095DD" Ref="RShunt1_U2"  Part="1" 
AR Path="/5DA0FFA3/5DA095DD" Ref="RShunt1_U3"  Part="1" 
AR Path="/5DA1230E/5DA095DD" Ref="RShunt1_U4"  Part="1" 
AR Path="/5DA14790/5DA095DD" Ref="RShunt1_U5"  Part="1" 
F 0 "RShunt1_U5" H 3550 1400 50  0000 R CNN
F 1 "0.05" V 2950 1500 50  0000 R CNN
F 2 "Resistor_SMD:R_2512_6332Metric" H 3050 1400 50  0001 C CNN
F 3 "~" H 3050 1400 50  0001 C CNN
	1    3050 1400
	-1   0    0    1   
$EndComp
Text GLabel 2850 1550 0    50   Input ~ 0
Servo13_VCC
Wire Wire Line
	2850 1550 3050 1550
Wire Wire Line
	3050 1550 3050 1500
$Comp
L Device:R_Small RFilter11_U?
U 1 1 5DA1A6D6
P 3350 1300
AR Path="/5DA1A6D6" Ref="RFilter11_U?"  Part="1" 
AR Path="/5D9FB295/5DA1A6D6" Ref="RFilter11_U4"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6D6" Ref="RFilter11_U3"  Part="1" 
AR Path="/5DA1230E/5DA1A6D6" Ref="RFilter11_U4"  Part="1" 
AR Path="/5DA14790/5DA1A6D6" Ref="RFilter11_U5"  Part="1" 
F 0 "RFilter11_U5" V 3250 1300 50  0000 C CNN
F 1 "10" V 3400 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3350 1300 50  0001 C CNN
F 3 "~" H 3350 1300 50  0001 C CNN
	1    3350 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small RFilter12_U?
U 1 1 5DA1A6D7
P 3350 1550
AR Path="/5DA1A6D7" Ref="RFilter12_U?"  Part="1" 
AR Path="/5D9FB295/5DA1A6D7" Ref="RFilter12_U2"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6D7" Ref="RFilter12_U3"  Part="1" 
AR Path="/5DA1230E/5DA1A6D7" Ref="RFilter12_U4"  Part="1" 
AR Path="/5DA14790/5DA1A6D7" Ref="RFilter12_U5"  Part="1" 
F 0 "RFilter12_U5" V 3450 1500 50  0000 C CNN
F 1 "10" V 3300 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3350 1550 50  0001 C CNN
F 3 "~" H 3350 1550 50  0001 C CNN
	1    3350 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 1300 3250 1300
Wire Wire Line
	3050 1550 3250 1550
Connection ~ 3050 1550
$Comp
L Device:C_Small CFilter1_U?
U 1 1 5DA1A6DC
P 3550 1400
AR Path="/5DA1A6DC" Ref="CFilter1_U?"  Part="1" 
AR Path="/5D9FB295/5DA1A6DC" Ref="CFilter1_U2"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6DC" Ref="CFilter1_U3"  Part="1" 
AR Path="/5DA1230E/5DA1A6DC" Ref="CFilter1_U4"  Part="1" 
AR Path="/5DA14790/5DA1A6DC" Ref="CFilter1_U5"  Part="1" 
F 0 "CFilter1_U5" H 3642 1446 50  0000 L CNN
F 1 "1uF" H 3642 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3550 1400 50  0001 C CNN
F 3 "~" H 3550 1400 50  0001 C CNN
	1    3550 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1300 3550 1300
Wire Wire Line
	3450 1550 3550 1550
Wire Wire Line
	3550 1550 3550 1500
Text GLabel 4100 1300 2    50   Input ~ 0
U5_IN+1
Text GLabel 4100 1550 2    50   Input ~ 0
U5_IN-1
Wire Wire Line
	3550 1300 4100 1300
Connection ~ 3550 1300
Wire Wire Line
	3550 1550 4100 1550
Connection ~ 3550 1550
Text GLabel 2850 2000 0    50   Input ~ 0
Servo_VCC
$Comp
L Device:Fuse_Small F_Servo?
U 1 1 5DA1A6DE
P 2950 2000
AR Path="/5DA1A6DE" Ref="F_Servo?"  Part="1" 
AR Path="/5D9FB295/5DA1A6DE" Ref="F_Servo5"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6DE" Ref="F_Servo8"  Part="1" 
AR Path="/5DA1230E/5DA1A6DE" Ref="F_Servo11"  Part="1" 
AR Path="/5DA14790/5DA1A6DE" Ref="F_Servo14"  Part="1" 
F 0 "F_Servo14" H 2700 2100 50  0000 C CNN
F 1 "5A" H 2950 2094 50  0000 C CNN
F 2 "SpotMicroAI:FuseHolder_Schurter_OMH125" H 2950 2000 50  0001 C CNN
F 3 "~" H 2950 2000 50  0001 C CNN
	1    2950 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small RShunt2_U?
U 1 1 5DA1A6E1
P 3050 2100
AR Path="/5DA1A6E1" Ref="RShunt2_U?"  Part="1" 
AR Path="/5D9FB295/5DA1A6E1" Ref="RShunt2_U2"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6E1" Ref="RShunt2_U3"  Part="1" 
AR Path="/5DA1230E/5DA1A6E1" Ref="RShunt2_U4"  Part="1" 
AR Path="/5DA14790/5DA1A6E1" Ref="RShunt2_U5"  Part="1" 
F 0 "RShunt2_U5" H 3550 2100 50  0000 R CNN
F 1 "0.05" V 2950 2200 50  0000 R CNN
F 2 "Resistor_SMD:R_2512_6332Metric" H 3050 2100 50  0001 C CNN
F 3 "~" H 3050 2100 50  0001 C CNN
	1    3050 2100
	-1   0    0    1   
$EndComp
Text GLabel 2850 2250 0    50   Input ~ 0
Servo14_VCC
Wire Wire Line
	2850 2250 3050 2250
Wire Wire Line
	3050 2250 3050 2200
$Comp
L Device:R_Small RFilter21_U?
U 1 1 5DA1A6E4
P 3350 2000
AR Path="/5DA1A6E4" Ref="RFilter21_U?"  Part="1" 
AR Path="/5D9FB295/5DA1A6E4" Ref="RFilter21_U2"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6E4" Ref="RFilter21_U3"  Part="1" 
AR Path="/5DA1230E/5DA1A6E4" Ref="RFilter21_U4"  Part="1" 
AR Path="/5DA14790/5DA1A6E4" Ref="RFilter21_U5"  Part="1" 
F 0 "RFilter21_U5" V 3250 2000 50  0000 C CNN
F 1 "10" V 3400 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3350 2000 50  0001 C CNN
F 3 "~" H 3350 2000 50  0001 C CNN
	1    3350 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small RFilter22_U?
U 1 1 5DA0961A
P 3350 2250
AR Path="/5DA0961A" Ref="RFilter22_U?"  Part="1" 
AR Path="/5D9FB295/5DA0961A" Ref="RFilter22_U2"  Part="1" 
AR Path="/5DA0FFA3/5DA0961A" Ref="RFilter22_U3"  Part="1" 
AR Path="/5DA1230E/5DA0961A" Ref="RFilter22_U4"  Part="1" 
AR Path="/5DA14790/5DA0961A" Ref="RFilter22_U5"  Part="1" 
F 0 "RFilter22_U5" V 3450 2200 50  0000 C CNN
F 1 "10" V 3300 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3350 2250 50  0001 C CNN
F 3 "~" H 3350 2250 50  0001 C CNN
	1    3350 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 2000 3250 2000
Connection ~ 3050 2000
Wire Wire Line
	3050 2250 3250 2250
Connection ~ 3050 2250
$Comp
L Device:C_Small CFilter2_U?
U 1 1 5DA09624
P 3550 2100
AR Path="/5DA09624" Ref="CFilter2_U?"  Part="1" 
AR Path="/5D9FB295/5DA09624" Ref="CFilter2_U2"  Part="1" 
AR Path="/5DA0FFA3/5DA09624" Ref="CFilter2_U3"  Part="1" 
AR Path="/5DA1230E/5DA09624" Ref="CFilter2_U4"  Part="1" 
AR Path="/5DA14790/5DA09624" Ref="CFilter2_U5"  Part="1" 
F 0 "CFilter2_U5" H 3642 2146 50  0000 L CNN
F 1 "1uF" H 3642 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3550 2100 50  0001 C CNN
F 3 "~" H 3550 2100 50  0001 C CNN
	1    3550 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2000 3550 2000
Wire Wire Line
	3450 2250 3550 2250
Wire Wire Line
	3550 2250 3550 2200
Text GLabel 4100 2000 2    50   Input ~ 0
U5_IN+2
Text GLabel 4100 2250 2    50   Input ~ 0
U5_IN-2
Wire Wire Line
	3550 2000 4100 2000
Connection ~ 3550 2000
Wire Wire Line
	3550 2250 4100 2250
Connection ~ 3550 2250
Text GLabel 2850 2750 0    50   Input ~ 0
Servo_VCC
$Comp
L Device:Fuse_Small F_Servo?
U 1 1 5DA1A6EC
P 2950 2750
AR Path="/5DA1A6EC" Ref="F_Servo?"  Part="1" 
AR Path="/5D9FB295/5DA1A6EC" Ref="F_Servo6"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6EC" Ref="F_Servo9"  Part="1" 
AR Path="/5DA1230E/5DA1A6EC" Ref="F_Servo12"  Part="1" 
AR Path="/5DA14790/5DA1A6EC" Ref="F_Servo15"  Part="1" 
F 0 "F_Servo15" H 2700 2850 50  0000 C CNN
F 1 "5A" H 2950 2844 50  0000 C CNN
F 2 "SpotMicroAI:FuseHolder_Schurter_OMH125" H 2950 2750 50  0001 C CNN
F 3 "~" H 2950 2750 50  0001 C CNN
	1    2950 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small RShunt3_U?
U 1 1 5DA1A6F0
P 3050 2850
AR Path="/5DA1A6F0" Ref="RShunt3_U?"  Part="1" 
AR Path="/5D9FB295/5DA1A6F0" Ref="RShunt3_U2"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6F0" Ref="RShunt3_U3"  Part="1" 
AR Path="/5DA1230E/5DA1A6F0" Ref="RShunt3_U4"  Part="1" 
AR Path="/5DA14790/5DA1A6F0" Ref="RShunt3_U5"  Part="1" 
F 0 "RShunt3_U5" H 3550 2850 50  0000 R CNN
F 1 "0.05" V 2950 2950 50  0000 R CNN
F 2 "Resistor_SMD:R_2512_6332Metric" H 3050 2850 50  0001 C CNN
F 3 "~" H 3050 2850 50  0001 C CNN
	1    3050 2850
	-1   0    0    1   
$EndComp
Text GLabel 2850 3000 0    50   Input ~ 0
Servo15_VCC
Wire Wire Line
	2850 3000 3050 3000
Wire Wire Line
	3050 3000 3050 2950
$Comp
L Device:R_Small RFilter31_U?
U 1 1 5DA09643
P 3350 2750
AR Path="/5DA09643" Ref="RFilter31_U?"  Part="1" 
AR Path="/5D9FB295/5DA09643" Ref="RFilter31_U2"  Part="1" 
AR Path="/5DA0FFA3/5DA09643" Ref="RFilter31_U3"  Part="1" 
AR Path="/5DA1230E/5DA09643" Ref="RFilter31_U4"  Part="1" 
AR Path="/5DA14790/5DA09643" Ref="RFilter31_U5"  Part="1" 
F 0 "RFilter31_U5" V 3250 2750 50  0000 C CNN
F 1 "10" V 3400 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3350 2750 50  0001 C CNN
F 3 "~" H 3350 2750 50  0001 C CNN
	1    3350 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small RFilter32_U?
U 1 1 5DA09649
P 3350 3000
AR Path="/5DA09649" Ref="RFilter32_U?"  Part="1" 
AR Path="/5D9FB295/5DA09649" Ref="RFilter32_U2"  Part="1" 
AR Path="/5DA0FFA3/5DA09649" Ref="RFilter32_U3"  Part="1" 
AR Path="/5DA1230E/5DA09649" Ref="RFilter32_U4"  Part="1" 
AR Path="/5DA14790/5DA09649" Ref="RFilter32_U5"  Part="1" 
F 0 "RFilter32_U5" V 3450 2950 50  0000 C CNN
F 1 "10" V 3300 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3350 3000 50  0001 C CNN
F 3 "~" H 3350 3000 50  0001 C CNN
	1    3350 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 2750 3250 2750
Connection ~ 3050 2750
Wire Wire Line
	3050 3000 3250 3000
Connection ~ 3050 3000
$Comp
L Device:C_Small CFilter3_U?
U 1 1 5DA09653
P 3550 2850
AR Path="/5DA09653" Ref="CFilter3_U?"  Part="1" 
AR Path="/5D9FB295/5DA09653" Ref="CFilter3_U3"  Part="1" 
AR Path="/5DA0FFA3/5DA09653" Ref="CFilter3_U3"  Part="1" 
AR Path="/5DA1230E/5DA09653" Ref="CFilter3_U4"  Part="1" 
AR Path="/5DA14790/5DA09653" Ref="CFilter3_U5"  Part="1" 
F 0 "CFilter3_U5" H 3642 2896 50  0000 L CNN
F 1 "1uF" H 3642 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3550 2850 50  0001 C CNN
F 3 "~" H 3550 2850 50  0001 C CNN
	1    3550 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2750 3550 2750
Wire Wire Line
	3450 3000 3550 3000
Wire Wire Line
	3550 3000 3550 2950
Text GLabel 4100 2750 2    50   Input ~ 0
U5_IN+3
Text GLabel 4100 3000 2    50   Input ~ 0
U5_IN-3
Wire Wire Line
	3550 2750 4100 2750
Connection ~ 3550 2750
Wire Wire Line
	3550 3000 4100 3000
Connection ~ 3550 3000
Text GLabel 7450 2450 0    50   Input ~ 0
U5_EP
Text GLabel 5750 3100 3    50   Input ~ 0
U5_EP
Text GLabel 7450 2250 0    50   Input ~ 0
U5_PV
Text GLabel 7400 2350 0    50   Input ~ 0
U5_VPU
Text GLabel 5750 1700 1    50   Input ~ 0
U5_VPU
$Comp
L Connector_Generic:Conn_01x06 J1_U2_events?
U 1 1 5DA0968E
P 7650 2150
AR Path="/5DA0968E" Ref="J1_U2_events?"  Part="1" 
AR Path="/5D9FB295/5DA0968E" Ref="J1_U2_events1"  Part="1" 
AR Path="/5DA0FFA3/5DA0968E" Ref="J1_U3_events"  Part="1" 
AR Path="/5DA1230E/5DA0968E" Ref="J1_U4_events"  Part="1" 
AR Path="/5DA14790/5DA0968E" Ref="J1_U5_events1"  Part="1" 
F 0 "J1_U5_events1" H 7730 2142 50  0000 L CNN
F 1 "Conn_01x06" H 7730 2051 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 7650 2150 50  0001 C CNN
F 3 "~" H 7650 2150 50  0001 C CNN
	1    7650 2150
	1    0    0    -1  
$EndComp
Text GLabel 6550 3250 2    50   Input ~ 0
SCL
Text GLabel 6550 3100 2    50   Input ~ 0
SDA
Text GLabel 6550 2950 2    50   Input ~ 0
INA_VCC
$Comp
L power:GND #PWR?
U 1 1 5DA1A6FF
P 6550 2800
AR Path="/5DA1A6FF" Ref="#PWR?"  Part="1" 
AR Path="/5D9FB295/5DA1A6FF" Ref="#PWR0103"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6FF" Ref="#PWR?"  Part="1" 
AR Path="/5DA1230E/5DA1A6FF" Ref="#PWR?"  Part="1" 
AR Path="/5DA14790/5DA1A6FF" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 6550 2550 50  0001 C CNN
F 1 "GND" V 6555 2672 50  0000 R CNN
F 2 "" H 6550 2800 50  0001 C CNN
F 3 "" H 6550 2800 50  0001 C CNN
	1    6550 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 3250 6450 3250
Wire Wire Line
	6150 3100 6150 3250
Wire Wire Line
	6150 2950 6150 3100
Connection ~ 6150 3100
Wire Wire Line
	6150 3100 6450 3100
Wire Wire Line
	6150 2950 6450 2950
Connection ~ 6150 2950
Wire Wire Line
	6150 2800 6150 2950
Wire Wire Line
	6150 2800 6450 2800
$Comp
L Zimprich:Lötpad LP4_U?
U 1 1 5DA096A6
P 6500 3250
AR Path="/5DA096A6" Ref="LP4_U?"  Part="1" 
AR Path="/5D9FB295/5DA096A6" Ref="LP4_U2"  Part="1" 
AR Path="/5DA0FFA3/5DA096A6" Ref="LP4_U3"  Part="1" 
AR Path="/5DA1230E/5DA096A6" Ref="LP4_U4"  Part="1" 
AR Path="/5DA14790/5DA096A6" Ref="LP4_U5"  Part="1" 
F 0 "LP4_U5" H 6500 3370 20  0000 C CNN
F 1 "0x43" H 6500 3327 20  0000 C CNN
F 2 "Zimprich:Lötpad_1x02" H 6500 3250 60  0001 C CNN
F 3 "" H 6500 3250 60  0001 C CNN
	1    6500 3250
	1    0    0    -1  
$EndComp
$Comp
L Zimprich:Lötpad LP3_U?
U 1 1 5DA1A706
P 6500 3100
AR Path="/5DA1A706" Ref="LP3_U?"  Part="1" 
AR Path="/5D9FB295/5DA1A706" Ref="LP3_U2"  Part="1" 
AR Path="/5DA0FFA3/5DA1A706" Ref="LP3_U3"  Part="1" 
AR Path="/5DA1230E/5DA1A706" Ref="LP3_U4"  Part="1" 
AR Path="/5DA14790/5DA1A706" Ref="LP3_U5"  Part="1" 
F 0 "LP3_U5" H 6500 3220 20  0000 C CNN
F 1 "0x42" H 6500 3177 20  0000 C CNN
F 2 "Zimprich:Lötpad_1x02" H 6500 3100 60  0001 C CNN
F 3 "" H 6500 3100 60  0001 C CNN
	1    6500 3100
	1    0    0    -1  
$EndComp
$Comp
L Zimprich:Lötpad LP2_U?
U 1 1 5DA1A709
P 6500 2950
AR Path="/5DA1A709" Ref="LP2_U?"  Part="1" 
AR Path="/5D9FB295/5DA1A709" Ref="LP2_U2"  Part="1" 
AR Path="/5DA0FFA3/5DA1A709" Ref="LP2_U3"  Part="1" 
AR Path="/5DA1230E/5DA1A709" Ref="LP2_U4"  Part="1" 
AR Path="/5DA14790/5DA1A709" Ref="LP2_U5"  Part="1" 
F 0 "LP2_U5" H 6500 3070 20  0000 C CNN
F 1 "0x41" H 6500 3027 20  0000 C CNN
F 2 "Zimprich:Lötpad_1x02" H 6500 2950 60  0001 C CNN
F 3 "" H 6500 2950 60  0001 C CNN
	1    6500 2950
	1    0    0    -1  
$EndComp
$Comp
L Zimprich:Lötpad LP1_U?
U 1 1 5DA1A70C
P 6500 2800
AR Path="/5DA1A70C" Ref="LP1_U?"  Part="1" 
AR Path="/5D9FB295/5DA1A70C" Ref="LP1_U2"  Part="1" 
AR Path="/5DA0FFA3/5DA1A70C" Ref="LP1_U3"  Part="1" 
AR Path="/5DA1230E/5DA1A70C" Ref="LP1_U4"  Part="1" 
AR Path="/5DA14790/5DA1A70C" Ref="LP1_U5"  Part="1" 
F 0 "LP1_U5" H 6500 2920 20  0000 C CNN
F 1 "0x40" H 6500 2877 20  0000 C CNN
F 2 "Zimprich:Lötpad_1x02" H 6500 2908 60  0001 C CNN
F 3 "" H 6500 2800 60  0001 C CNN
	1    6500 2800
	1    0    0    -1  
$EndComp
Text GLabel 5150 2700 0    50   Input ~ 0
U5_IN+3
Text GLabel 5150 2400 0    50   Input ~ 0
U5_IN+2
Text GLabel 5150 2100 0    50   Input ~ 0
U5_IN+1
Text GLabel 7450 2150 0    50   Input ~ 0
U5_TC
Text GLabel 7450 2050 0    50   Input ~ 0
U5_WARNING
Text GLabel 7450 1950 0    50   Input ~ 0
U5_CRITICAL
Text GLabel 5550 1700 1    50   Input ~ 0
INA_VCC
Text GLabel 6150 2400 2    50   Input ~ 0
U5_TC
Text GLabel 6150 2300 2    50   Input ~ 0
U5_WARNING
Text GLabel 6150 2200 2    50   Input ~ 0
U5_CRITICAL
Text GLabel 6150 2100 2    50   Input ~ 0
U5_PV
Text GLabel 6150 2700 2    50   Input ~ 0
SDA
Text GLabel 6150 2600 2    50   Input ~ 0
SCA
Text GLabel 5150 2800 0    50   Input ~ 0
U5_IN-3
Text GLabel 5150 2500 0    50   Input ~ 0
U5_IN-2
Text GLabel 5150 2200 0    50   Input ~ 0
U5_IN-1
$Comp
L power:GND #PWR?
U 1 1 5DA1A70D
P 5550 3100
AR Path="/5DA1A70D" Ref="#PWR?"  Part="1" 
AR Path="/5D9FB295/5DA1A70D" Ref="#PWR0104"  Part="1" 
AR Path="/5DA0FFA3/5DA1A70D" Ref="#PWR?"  Part="1" 
AR Path="/5DA1230E/5DA1A70D" Ref="#PWR?"  Part="1" 
AR Path="/5DA14790/5DA1A70D" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 5550 2850 50  0001 C CNN
F 1 "GND" H 5555 2927 50  0000 C CNN
F 2 "" H 5550 3100 50  0001 C CNN
F 3 "" H 5550 3100 50  0001 C CNN
	1    5550 3100
	1    0    0    -1  
$EndComp
Connection ~ 6150 2800
$Comp
L Power_Management:INA3221 U?
U 1 1 5DA096D5
P 5650 2500
AR Path="/5DA096D5" Ref="U?"  Part="1" 
AR Path="/5D9FB295/5DA096D5" Ref="U2"  Part="1" 
AR Path="/5DA0FFA3/5DA096D5" Ref="U3"  Part="1" 
AR Path="/5DA1230E/5DA096D5" Ref="U4"  Part="1" 
AR Path="/5DA14790/5DA096D5" Ref="U5"  Part="1" 
F 0 "U5" H 5650 3381 50  0000 C CNN
F 1 "INA3221" H 5650 3290 50  0000 C CNN
F 2 "Package_DFN_QFN:Texas_RGV_S-PVQFN-N16_EP2.1x2.1mm" H 5650 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina3221.pdf" H 5650 3200 50  0001 C CNN
	1    5650 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1800 5550 1700
Wire Wire Line
	5750 1800 5750 1700
Wire Wire Line
	7400 2350 7450 2350
$EndSCHEMATC
