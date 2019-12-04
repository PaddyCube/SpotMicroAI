EESchema Schematic File Version 4
LIBS:Servo_PCB-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L Driver_LED:PCA9685PW PCA1
U 1 1 5DA1DE8E
P 4800 2500
F 0 "PCA1" H 4800 3681 50  0000 C CNN
F 1 "PCA9685PW" H 4800 3590 50  0000 C CNN
F 2 "Package_SO:TSSOP-28_4.4x9.7mm_P0.65mm" H 4825 1525 50  0001 L CNN
F 3 "http://www.nxp.com/documents/data_sheet/PCA9685.pdf" H 4400 3200 50  0001 C CNN
	1    4800 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C_PCA1
U 1 1 5DA1EF33
P 3850 1450
F 0 "C_PCA1" V 3621 1450 50  0000 C CNN
F 1 "10uF" V 3712 1450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3850 1450 50  0001 C CNN
F 3 "~" H 3850 1450 50  0001 C CNN
	1    3850 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 1450 4100 1450
Wire Wire Line
	4800 1450 4800 1500
Text GLabel 4100 1300 1    50   Input ~ 0
INA_VCC
Wire Wire Line
	4100 1300 4100 1450
Connection ~ 4100 1450
Wire Wire Line
	4100 1450 4800 1450
$Comp
L power:GND #PWR0113
U 1 1 5DA1FF73
P 3750 1450
F 0 "#PWR0113" H 3750 1200 50  0001 C CNN
F 1 "GND" H 3755 1277 50  0000 C CNN
F 2 "" H 3750 1450 50  0001 C CNN
F 3 "" H 3750 1450 50  0001 C CNN
	1    3750 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Pack04 RN1
U 1 1 5DA20DF5
P 6000 1650
F 0 "RN1" V 5583 1650 50  0000 C CNN
F 1 "200Ohm" V 5674 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x1206" V 6275 1650 50  0001 C CNN
F 3 "~" H 6000 1650 50  0001 C CNN
	1    6000 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04 RN2
U 1 1 5DA21DF6
P 6050 2350
F 0 "RN2" V 5633 2350 50  0000 C CNN
F 1 "200" V 5724 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x1206" V 6325 2350 50  0001 C CNN
F 3 "~" H 6050 2350 50  0001 C CNN
	1    6050 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04 RN3
U 1 1 5DA229FC
P 6050 3100
F 0 "RN3" V 5633 3100 50  0000 C CNN
F 1 "200" V 5724 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x1206" V 6325 3100 50  0001 C CNN
F 3 "~" H 6050 3100 50  0001 C CNN
	1    6050 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04 RN4
U 1 1 5DA26526
P 6050 3850
F 0 "RN4" V 5633 3850 50  0000 C CNN
F 1 "200" V 5724 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x1206" V 6325 3850 50  0001 C CNN
F 3 "~" H 6050 3850 50  0001 C CNN
	1    6050 3850
	0    1    1    0   
$EndComp
Text GLabel 4100 1800 0    50   Input ~ 0
SCL
Text GLabel 4100 1900 0    50   Input ~ 0
SDA
$Comp
L power:GND #PWR0114
U 1 1 5DA2EB71
P 4100 2000
F 0 "#PWR0114" H 4100 1750 50  0001 C CNN
F 1 "GND" V 4105 1872 50  0000 R CNN
F 2 "" H 4100 2000 50  0001 C CNN
F 3 "" H 4100 2000 50  0001 C CNN
	1    4100 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 3650 4100 3200
Wire Wire Line
	3800 3550 4050 3550
Wire Wire Line
	4050 3550 4050 3250
Wire Wire Line
	4050 3100 4100 3100
Wire Wire Line
	3800 3450 4000 3450
Wire Wire Line
	4000 3450 4000 3150
Wire Wire Line
	4000 3000 4100 3000
Wire Wire Line
	3800 3350 3950 3350
Wire Wire Line
	3950 3350 3950 3100
Wire Wire Line
	3950 2900 4100 2900
Wire Wire Line
	3800 2800 3900 2800
Wire Wire Line
	3800 2700 3850 2700
Wire Wire Line
	3800 2500 4100 2500
Wire Wire Line
	4100 2500 4100 2100
Text GLabel 6250 2150 2    50   Input ~ 0
PWM_Servo1
Text GLabel 6250 2250 2    50   Input ~ 0
PWM_Servo2
Text GLabel 6250 2350 2    50   Input ~ 0
PWM_Servo3
Text GLabel 6250 2450 2    50   Input ~ 0
PWM_Servo4
Text GLabel 6200 1450 2    50   Input ~ 0
PWM_Servo5
Text GLabel 6200 1550 2    50   Input ~ 0
PWM_Servo6
Text GLabel 6200 1650 2    50   Input ~ 0
PWM_Servo7
Text GLabel 6200 1750 2    50   Input ~ 0
PWM_Servo8
Text GLabel 6250 2900 2    50   Input ~ 0
PWM_Servo9
Text GLabel 6250 3000 2    50   Input ~ 0
PWM_Servo10
Text GLabel 6250 3100 2    50   Input ~ 0
PWM_Servo11
Text GLabel 6250 3200 2    50   Input ~ 0
PWM_Servo12
Text GLabel 6250 3650 2    50   Input ~ 0
PWM_Servo13
Text GLabel 6250 3750 2    50   Input ~ 0
PWM_Servo14
Text GLabel 6250 3850 2    50   Input ~ 0
PWM_Servo15
$Comp
L power:GND #PWR0112
U 1 1 5DA64A40
P 4800 3600
F 0 "#PWR0112" H 4800 3350 50  0001 C CNN
F 1 "GND" H 4805 3427 50  0000 C CNN
F 2 "" H 4800 3600 50  0001 C CNN
F 3 "" H 4800 3600 50  0001 C CNN
	1    4800 3600
	1    0    0    -1  
$EndComp
Text GLabel 6250 3950 2    50   Input ~ 0
PWM_Servo16
Text GLabel 9250 3600 0    50   Input ~ 0
PWM_Servo14
Text GLabel 9250 3200 0    50   Input ~ 0
PWM_Servo15
Text GLabel 9350 4400 0    50   Input ~ 0
PWM_Servo16
Wire Wire Line
	2650 2850 2800 2850
$Comp
L Zimprich:Lötpad LP_PCA5
U 1 1 5DA3A0FB
P 2850 3700
F 0 "LP_PCA5" H 2850 3820 20  0000 C CNN
F 1 "A5" H 2850 3777 20  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2850 3700 60  0001 C CNN
F 3 "" H 2850 3700 60  0000 C CNN
	1    2850 3700
	1    0    0    -1  
$EndComp
$Comp
L Zimprich:Lötpad LP_PCA4
U 1 1 5DA39F77
P 2850 3600
F 0 "LP_PCA4" H 2850 3720 20  0000 C CNN
F 1 "A4" H 2850 3677 20  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2850 3600 60  0001 C CNN
F 3 "" H 2850 3600 60  0000 C CNN
	1    2850 3600
	1    0    0    -1  
$EndComp
$Comp
L Zimprich:Lötpad LP_PCA2
U 1 1 5DA39B36
P 2850 3200
F 0 "LP_PCA2" H 2850 3320 20  0000 C CNN
F 1 "A2" H 2850 3277 20  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2850 3200 60  0001 C CNN
F 3 "" H 2850 3200 60  0000 C CNN
	1    2850 3200
	1    0    0    -1  
$EndComp
Connection ~ 2800 3050
$Comp
L Zimprich:Lötpad LP_PCA1
U 1 1 5DA3974F
P 2850 3050
F 0 "LP_PCA1" H 2850 3170 20  0000 C CNN
F 1 "A1" H 2850 3127 20  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2850 3050 60  0001 C CNN
F 3 "" H 2850 3050 60  0000 C CNN
	1    2850 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2950 2800 3050
Wire Wire Line
	2800 2850 2800 2950
Connection ~ 2800 2950
$Comp
L Zimprich:Lötpad LP_PCA0
U 1 1 5DA38DC0
P 2850 2950
F 0 "LP_PCA0" H 2850 3070 20  0000 C CNN
F 1 "A0" H 2850 3027 20  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2850 3058 60  0001 C CNN
F 3 "" H 2850 2950 60  0000 C CNN
	1    2850 2950
	1    0    0    -1  
$EndComp
Text GLabel 2650 2850 0    50   Input ~ 0
INA_VCC
$Comp
L power:GND #PWR0115
U 1 1 5DA65616
P 3600 2500
F 0 "#PWR0115" H 3600 2250 50  0001 C CNN
F 1 "GND" V 3605 2372 50  0000 R CNN
F 2 "" H 3600 2500 50  0001 C CNN
F 3 "" H 3600 2500 50  0001 C CNN
	1    3600 2500
	0    1    1    0   
$EndComp
Text GLabel 9250 3800 0    50   Input ~ 0
Servo_VCC
Text GLabel 9250 3700 0    50   Input ~ 0
Servo_GND
Wire Wire Line
	5850 2150 5650 2150
Wire Wire Line
	5650 2150 5650 2500
Wire Wire Line
	5650 2500 5500 2500
Wire Wire Line
	5850 2250 5700 2250
Wire Wire Line
	5700 2250 5700 2400
Wire Wire Line
	5700 2400 5500 2400
Wire Wire Line
	5850 2350 5500 2350
Wire Wire Line
	5500 2350 5500 2300
Wire Wire Line
	5500 2200 5800 2200
Wire Wire Line
	5800 2200 5800 2450
Wire Wire Line
	5800 2450 5850 2450
Wire Wire Line
	5500 2100 5600 2100
Wire Wire Line
	5600 2100 5600 1450
Wire Wire Line
	5600 1450 5800 1450
Wire Wire Line
	5500 2000 5650 2000
Wire Wire Line
	5650 2000 5650 1550
Wire Wire Line
	5650 1550 5800 1550
Wire Wire Line
	5500 1900 5700 1900
Wire Wire Line
	5700 1900 5700 1650
Wire Wire Line
	5700 1650 5800 1650
Wire Wire Line
	5500 1800 5800 1800
Wire Wire Line
	5800 1800 5800 1750
Wire Wire Line
	5500 2900 5850 2900
Wire Wire Line
	5850 3000 5700 3000
Wire Wire Line
	5700 3000 5700 2800
Wire Wire Line
	5700 2800 5500 2800
Wire Wire Line
	5850 3100 5750 3100
Wire Wire Line
	5750 3100 5750 2700
Wire Wire Line
	5750 2700 5500 2700
Wire Wire Line
	5500 2600 5800 2600
Wire Wire Line
	5800 2600 5800 3200
Wire Wire Line
	5800 3200 5850 3200
Wire Wire Line
	5850 3650 5500 3650
Wire Wire Line
	5500 3650 5500 3300
Wire Wire Line
	5850 3750 5550 3750
Wire Wire Line
	5550 3750 5550 3200
Wire Wire Line
	5550 3200 5500 3200
Wire Wire Line
	5500 3100 5600 3100
Wire Wire Line
	5600 3100 5600 3850
Wire Wire Line
	5600 3850 5850 3850
Wire Wire Line
	5850 3950 5650 3950
Wire Wire Line
	5650 3950 5650 3000
Wire Wire Line
	5650 3000 5500 3000
$Comp
L Device:R_Small R1
U 1 1 5DA5CDDA
P 3700 2500
F 0 "R1" V 3504 2500 50  0000 C CNN
F 1 "10K" V 3595 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3700 2500 50  0001 C CNN
F 3 "~" H 3700 2500 50  0001 C CNN
	1    3700 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5DA5D95A
P 3700 2700
F 0 "R2" V 3504 2700 50  0000 C CNN
F 1 "10K" V 3595 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3700 2700 50  0001 C CNN
F 3 "~" H 3700 2700 50  0001 C CNN
	1    3700 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5DA5DB2F
P 3700 2800
F 0 "R3" V 3504 2800 50  0000 C CNN
F 1 "10K" V 3595 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3700 2800 50  0001 C CNN
F 3 "~" H 3700 2800 50  0001 C CNN
	1    3700 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5DA5DC0A
P 3700 3350
F 0 "R4" V 3504 3350 50  0000 C CNN
F 1 "10K" V 3595 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3700 3350 50  0001 C CNN
F 3 "~" H 3700 3350 50  0001 C CNN
	1    3700 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5DA5DF56
P 3700 3450
F 0 "R5" V 3504 3450 50  0000 C CNN
F 1 "10K" V 3595 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3700 3450 50  0001 C CNN
F 3 "~" H 3700 3450 50  0001 C CNN
	1    3700 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5DA5E0B9
P 3700 3550
F 0 "R6" V 3504 3550 50  0000 C CNN
F 1 "10K" V 3595 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3700 3550 50  0001 C CNN
F 3 "~" H 3700 3550 50  0001 C CNN
	1    3700 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5DA5E223
P 3700 3650
F 0 "R7" V 3504 3650 50  0000 C CNN
F 1 "10K" V 3595 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3700 3650 50  0001 C CNN
F 3 "~" H 3700 3650 50  0001 C CNN
	1    3700 3650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5DA73FFD
P 3300 3800
F 0 "#PWR0103" H 3300 3550 50  0001 C CNN
F 1 "GND" H 3305 3627 50  0000 C CNN
F 2 "" H 3300 3800 50  0001 C CNN
F 3 "" H 3300 3800 50  0001 C CNN
	1    3300 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2700 3300 2700
Wire Wire Line
	3300 2700 3300 2800
Wire Wire Line
	3600 2800 3300 2800
Connection ~ 3300 2800
Wire Wire Line
	3300 2800 3300 3350
Wire Wire Line
	3600 3350 3300 3350
Connection ~ 3300 3350
Wire Wire Line
	3300 3350 3300 3450
Wire Wire Line
	3600 3450 3300 3450
Connection ~ 3300 3450
Wire Wire Line
	3300 3450 3300 3550
Wire Wire Line
	3600 3550 3300 3550
Connection ~ 3300 3550
Wire Wire Line
	3300 3550 3300 3650
Wire Wire Line
	3600 3650 3300 3650
Connection ~ 3300 3650
Wire Wire Line
	3300 3650 3300 3800
Wire Wire Line
	2900 2950 3850 2950
Wire Wire Line
	3850 2950 3850 2700
Connection ~ 3850 2700
Wire Wire Line
	3850 2700 4100 2700
Wire Wire Line
	2900 3050 3900 3050
Wire Wire Line
	3900 3050 3900 2800
Connection ~ 3900 2800
Wire Wire Line
	3900 2800 4100 2800
Connection ~ 2800 3200
Wire Wire Line
	2800 3200 2800 3050
$Comp
L Zimprich:Lötpad LP_PCA3
U 1 1 5DA39D14
P 2850 3400
F 0 "LP_PCA3" H 2850 3520 20  0000 C CNN
F 1 "A3" H 2850 3477 20  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2850 3400 60  0001 C CNN
F 3 "" H 2850 3400 60  0000 C CNN
	1    2850 3400
	1    0    0    -1  
$EndComp
Connection ~ 2800 3400
Wire Wire Line
	2800 3400 2800 3200
Wire Wire Line
	2800 3400 2800 3600
Connection ~ 2800 3600
Wire Wire Line
	2800 3600 2800 3700
Wire Wire Line
	2900 3200 2950 3200
Wire Wire Line
	2950 3200 2950 3100
Wire Wire Line
	2950 3100 3950 3100
Connection ~ 3950 3100
Wire Wire Line
	3950 3100 3950 2900
Wire Wire Line
	4000 3150 3000 3150
Wire Wire Line
	3000 3150 3000 3400
Wire Wire Line
	3000 3400 2900 3400
Connection ~ 4000 3150
Wire Wire Line
	4000 3150 4000 3000
Wire Wire Line
	4050 3250 3050 3250
Wire Wire Line
	3050 3250 3050 3600
Wire Wire Line
	3050 3600 2900 3600
Connection ~ 4050 3250
Wire Wire Line
	4050 3250 4050 3100
Wire Wire Line
	3800 3650 3850 3650
Wire Wire Line
	3850 3650 3850 3700
Wire Wire Line
	3850 3700 2900 3700
Connection ~ 3850 3650
Wire Wire Line
	3850 3650 4100 3650
$Comp
L Connector_Generic:Conn_01x03 JResServo2
U 1 1 5DA10182
P 9450 3700
F 0 "JResServo2" H 9530 3742 50  0000 L CNN
F 1 "Conn_01x03" H 9530 3651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9450 3700 50  0001 C CNN
F 3 "~" H 9450 3700 50  0001 C CNN
	1    9450 3700
	1    0    0    -1  
$EndComp
Text GLabel 9350 4000 0    50   Input ~ 0
PWM_Servo13
Text GLabel 9250 3400 0    50   Input ~ 0
Servo_VCC
Text GLabel 9250 3300 0    50   Input ~ 0
Servo_GND
$Comp
L Connector_Generic:Conn_01x03 JResServo1
U 1 1 5DA148D1
P 9450 3300
F 0 "JResServo1" H 9530 3342 50  0000 L CNN
F 1 "Conn_01x03" H 9530 3251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9450 3300 50  0001 C CNN
F 3 "~" H 9450 3300 50  0001 C CNN
	1    9450 3300
	1    0    0    -1  
$EndComp
Text GLabel 9350 4600 0    50   Input ~ 0
Servo_VCC
Text GLabel 9350 4500 0    50   Input ~ 0
Servo_GND
$Comp
L Connector_Generic:Conn_01x03 JResServo4
U 1 1 5DA1914E
P 9550 4500
F 0 "JResServo4" H 9630 4542 50  0000 L CNN
F 1 "Conn_01x03" H 9630 4451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9550 4500 50  0001 C CNN
F 3 "~" H 9550 4500 50  0001 C CNN
	1    9550 4500
	1    0    0    -1  
$EndComp
Text GLabel 9350 4200 0    50   Input ~ 0
Servo_VCC
Text GLabel 9350 4100 0    50   Input ~ 0
Servo_GND
$Comp
L Connector_Generic:Conn_01x03 JResServo3
U 1 1 5DA19157
P 9550 4100
F 0 "JResServo3" H 9630 4142 50  0000 L CNN
F 1 "Conn_01x03" H 9630 4051 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9550 4100 50  0001 C CNN
F 3 "~" H 9550 4100 50  0001 C CNN
	1    9550 4100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
