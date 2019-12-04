EESchema Schematic File Version 4
LIBS:Servo_PCB-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2750 1150 0    50   Input ~ 0
Servo_VCC
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5D9DB9C6
P 900 850
F 0 "J1" H 818 525 50  0000 C CNN
F 1 "Screw_Terminal_01x02" V 1000 900 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 900 850 50  0001 C CNN
F 3 "~" H 900 850 50  0001 C CNN
	1    900  850 
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 JServo1
U 1 1 5D9DC6CF
P 1150 1800
F 0 "JServo1" H 1068 1475 50  0000 C CNN
F 1 "Conn_01x03" H 1068 1566 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 1150 1800 50  0001 C CNN
F 3 "~" H 1150 1800 50  0001 C CNN
	1    1150 1800
	-1   0    0    1   
$EndComp
Text GLabel 1350 1700 2    50   Input ~ 0
Servo1_VCC
Text GLabel 1350 1800 2    50   Input ~ 0
Servo_GND
Text GLabel 1350 1900 2    50   Input ~ 0
PWM_Servo1
Text GLabel 1950 750  2    50   Input ~ 0
Servo_VCC
Text GLabel 1100 850  2    50   Input ~ 0
Servo_GND
$Comp
L Connector_Generic:Conn_01x04 J_I2C1
U 1 1 5D9DDEF8
P 8050 500
F 0 "J_I2C1" V 8014 112 50  0000 R CNN
F 1 "Conn_01x04" V 7923 112 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 8050 500 50  0001 C CNN
F 3 "~" H 8050 500 50  0001 C CNN
	1    8050 500 
	0    -1   -1   0   
$EndComp
Text GLabel 7950 700  3    50   Input ~ 0
INA_VCC
Text GLabel 8150 700  3    50   Input ~ 0
SCL
Text GLabel 8250 700  3    50   Input ~ 0
SDA
$Comp
L Device:Fuse_Small F_Servo1
U 1 1 5D9E1BCE
P 2850 1150
F 0 "F_Servo1" H 2600 1250 50  0000 C CNN
F 1 "5A" H 2850 1244 50  0000 C CNN
F 2 "SpotMicroAI:FuseHolder_Schurter_OMH125" H 2850 1150 50  0001 C CNN
F 3 "~" H 2850 1150 50  0001 C CNN
	1    2850 1150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 JServo2
U 1 1 5D9E5476
P 1150 2350
F 0 "JServo2" H 1068 2025 50  0000 C CNN
F 1 "Conn_01x03" H 1068 2116 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 1150 2350 50  0001 C CNN
F 3 "~" H 1150 2350 50  0001 C CNN
	1    1150 2350
	-1   0    0    1   
$EndComp
Text GLabel 1350 2250 2    50   Input ~ 0
Servo2_VCC
Text GLabel 1350 2350 2    50   Input ~ 0
Servo_GND
Text GLabel 1350 2450 2    50   Input ~ 0
PWM_Servo2
$Comp
L Connector_Generic:Conn_01x03 JServo3
U 1 1 5D9E5C64
P 1150 2900
F 0 "JServo3" H 1068 2575 50  0000 C CNN
F 1 "Conn_01x03" H 1068 2666 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 1150 2900 50  0001 C CNN
F 3 "~" H 1150 2900 50  0001 C CNN
	1    1150 2900
	-1   0    0    1   
$EndComp
Text GLabel 1350 2800 2    50   Input ~ 0
Servo3_VCC
Text GLabel 1350 2900 2    50   Input ~ 0
Servo_GND
Text GLabel 1350 3000 2    50   Input ~ 0
PWM_Servo3
$Comp
L Device:R_Small RShunt1_U1
U 1 1 5D9E8AE9
P 2950 1250
F 0 "RShunt1_U1" H 3450 1250 50  0000 R CNN
F 1 "0.05" V 2850 1350 50  0000 R CNN
F 2 "Resistor_SMD:R_2512_6332Metric" H 2950 1250 50  0001 C CNN
F 3 "~" H 2950 1250 50  0001 C CNN
	1    2950 1250
	-1   0    0    1   
$EndComp
Text GLabel 2750 1400 0    50   Input ~ 0
Servo1_VCC
Wire Wire Line
	2750 1400 2950 1400
Wire Wire Line
	2950 1400 2950 1350
$Comp
L Device:R_Small RFilter11_U1
U 1 1 5D9E9A7C
P 3250 1150
F 0 "RFilter11_U1" V 3150 1150 50  0000 C CNN
F 1 "10" V 3300 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3250 1150 50  0001 C CNN
F 3 "~" H 3250 1150 50  0001 C CNN
	1    3250 1150
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small RFilter12_U1
U 1 1 5D9EA977
P 3250 1400
F 0 "RFilter12_U1" V 3350 1350 50  0000 C CNN
F 1 "10" V 3200 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3250 1400 50  0001 C CNN
F 3 "~" H 3250 1400 50  0001 C CNN
	1    3250 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 1150 3150 1150
Wire Wire Line
	2950 1400 3150 1400
Connection ~ 2950 1400
$Comp
L Device:C_Small CFilter1_U1
U 1 1 5D9EFC93
P 3450 1250
F 0 "CFilter1_U1" H 3542 1296 50  0000 L CNN
F 1 "1uF" H 3542 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3450 1250 50  0001 C CNN
F 3 "~" H 3450 1250 50  0001 C CNN
	1    3450 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1150 3450 1150
Wire Wire Line
	3350 1400 3450 1400
Wire Wire Line
	3450 1400 3450 1350
Text GLabel 4000 1150 2    50   Input ~ 0
U1_IN+1
Text GLabel 4000 1400 2    50   Input ~ 0
U1_IN-1
Wire Wire Line
	3450 1150 4000 1150
Connection ~ 3450 1150
Wire Wire Line
	3450 1400 4000 1400
Connection ~ 3450 1400
Text GLabel 2750 1850 0    50   Input ~ 0
Servo_VCC
$Comp
L Device:Fuse_Small F_Servo2
U 1 1 5D9F1109
P 2850 1850
F 0 "F_Servo2" H 2600 1950 50  0000 C CNN
F 1 "5A" H 2850 1944 50  0000 C CNN
F 2 "SpotMicroAI:FuseHolder_Schurter_OMH125" H 2850 1850 50  0001 C CNN
F 3 "~" H 2850 1850 50  0001 C CNN
	1    2850 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small RShunt2_U1
U 1 1 5D9F1113
P 2950 1950
F 0 "RShunt2_U1" H 3450 1950 50  0000 R CNN
F 1 "0.05" V 2850 2050 50  0000 R CNN
F 2 "Resistor_SMD:R_2512_6332Metric" H 2950 1950 50  0001 C CNN
F 3 "~" H 2950 1950 50  0001 C CNN
	1    2950 1950
	-1   0    0    1   
$EndComp
Text GLabel 2750 2100 0    50   Input ~ 0
Servo2_VCC
Wire Wire Line
	2750 2100 2950 2100
Wire Wire Line
	2950 2100 2950 2050
$Comp
L Device:R_Small RFilter21_U1
U 1 1 5D9F1120
P 3250 1850
F 0 "RFilter21_U1" V 3150 1850 50  0000 C CNN
F 1 "10" V 3300 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3250 1850 50  0001 C CNN
F 3 "~" H 3250 1850 50  0001 C CNN
	1    3250 1850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small RFilter22_U1
U 1 1 5D9F112A
P 3250 2100
F 0 "RFilter22_U1" V 3350 2050 50  0000 C CNN
F 1 "10" V 3200 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3250 2100 50  0001 C CNN
F 3 "~" H 3250 2100 50  0001 C CNN
	1    3250 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 1850 3150 1850
Connection ~ 2950 1850
Wire Wire Line
	2950 2100 3150 2100
Connection ~ 2950 2100
$Comp
L Device:C_Small CFilter2_U1
U 1 1 5D9F1138
P 3450 1950
F 0 "CFilter2_U1" H 3542 1996 50  0000 L CNN
F 1 "1uF" H 3542 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3450 1950 50  0001 C CNN
F 3 "~" H 3450 1950 50  0001 C CNN
	1    3450 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1850 3450 1850
Wire Wire Line
	3350 2100 3450 2100
Wire Wire Line
	3450 2100 3450 2050
Text GLabel 4000 1850 2    50   Input ~ 0
U1_IN+2
Text GLabel 4000 2100 2    50   Input ~ 0
U1_IN-2
Wire Wire Line
	3450 1850 4000 1850
Connection ~ 3450 1850
Wire Wire Line
	3450 2100 4000 2100
Connection ~ 3450 2100
Text GLabel 2750 2600 0    50   Input ~ 0
Servo_VCC
$Comp
L Device:Fuse_Small F_Servo3
U 1 1 5D9F2FC0
P 2850 2600
F 0 "F_Servo3" H 2600 2700 50  0000 C CNN
F 1 "5A" H 2850 2694 50  0000 C CNN
F 2 "SpotMicroAI:FuseHolder_Schurter_OMH125" H 2850 2600 50  0001 C CNN
F 3 "~" H 2850 2600 50  0001 C CNN
	1    2850 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small RShunt3_U1
U 1 1 5D9F2FCA
P 2950 2700
F 0 "RShunt3_U1" H 3450 2700 50  0000 R CNN
F 1 "0.05" V 2850 2800 50  0000 R CNN
F 2 "Resistor_SMD:R_2512_6332Metric" H 2950 2700 50  0001 C CNN
F 3 "~" H 2950 2700 50  0001 C CNN
	1    2950 2700
	-1   0    0    1   
$EndComp
Text GLabel 2750 2850 0    50   Input ~ 0
Servo3_VCC
Wire Wire Line
	2750 2850 2950 2850
Wire Wire Line
	2950 2850 2950 2800
$Comp
L Device:R_Small RFilter31_U1
U 1 1 5D9F2FD7
P 3250 2600
F 0 "RFilter31_U1" V 3150 2600 50  0000 C CNN
F 1 "10" V 3300 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3250 2600 50  0001 C CNN
F 3 "~" H 3250 2600 50  0001 C CNN
	1    3250 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small RFilter32_U1
U 1 1 5D9F2FE1
P 3250 2850
F 0 "RFilter32_U1" V 3350 2800 50  0000 C CNN
F 1 "10" V 3200 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3250 2850 50  0001 C CNN
F 3 "~" H 3250 2850 50  0001 C CNN
	1    3250 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 2600 3150 2600
Connection ~ 2950 2600
Wire Wire Line
	2950 2850 3150 2850
Connection ~ 2950 2850
$Comp
L Device:C_Small CFilter3_U1
U 1 1 5D9F2FEF
P 3450 2700
F 0 "CFilter3_U1" H 3542 2746 50  0000 L CNN
F 1 "1uF" H 3542 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3450 2700 50  0001 C CNN
F 3 "~" H 3450 2700 50  0001 C CNN
	1    3450 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2600 3450 2600
Wire Wire Line
	3350 2850 3450 2850
Wire Wire Line
	3450 2850 3450 2800
Text GLabel 4000 2600 2    50   Input ~ 0
U1_IN+3
Text GLabel 4000 2850 2    50   Input ~ 0
U1_IN-3
Wire Wire Line
	3450 2600 4000 2600
Connection ~ 3450 2600
Wire Wire Line
	3450 2850 4000 2850
Connection ~ 3450 2850
$Comp
L Device:Fuse FMain1
U 1 1 5D9F5E3E
P 1250 750
F 0 "FMain1" V 1053 750 50  0000 C CNN
F 1 "20A" V 1144 750 50  0000 C CNN
F 2 "Fuse:Fuse_Blade_Mini_directSolder" V 1180 750 50  0001 C CNN
F 3 "~" H 1250 750 50  0001 C CNN
	1    1250 750 
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky DMain1
U 1 1 5D9F797F
P 1550 750
F 0 "DMain1" H 1550 534 50  0000 C CNN
F 1 "Schottky 30V25A" H 1350 600 50  0000 C CNN
F 2 "Diode_THT:D_P600_R-6_P12.70mm_Horizontal" H 1550 750 50  0001 C CNN
F 3 "~" H 1550 750 50  0001 C CNN
	1    1550 750 
	-1   0    0    1   
$EndComp
$Comp
L Device:R R_SCL1
U 1 1 5D9FF40D
P 7650 700
F 0 "R_SCL1" V 7443 700 50  0000 C CNN
F 1 "10K" V 7534 700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7580 700 50  0001 C CNN
F 3 "~" H 7650 700 50  0001 C CNN
	1    7650 700 
	0    1    1    0   
$EndComp
$Comp
L Device:R R_SDA1
U 1 1 5D9FFD57
P 7650 900
F 0 "R_SDA1" V 7750 900 50  0000 C CNN
F 1 "10K" V 7850 900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7580 900 50  0001 C CNN
F 3 "~" H 7650 900 50  0001 C CNN
	1    7650 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 700  7800 900 
Text GLabel 7500 700  0    50   Input ~ 0
SCL
Text GLabel 7500 900  0    50   Input ~ 0
SDA
Wire Wire Line
	7950 700  7800 700 
Connection ~ 7800 700 
$Comp
L Device:CP CMain_ServoVCC1
U 1 1 5DA0A547
P 1800 900
F 0 "CMain_ServoVCC1" H 1918 946 50  0000 L CNN
F 1 "2200uF" H 1918 855 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D16.0mm_H25.0mm_P7.50mm" H 1838 750 50  0001 C CNN
F 3 "~" H 1800 900 50  0001 C CNN
	1    1800 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 750  1800 750 
Wire Wire Line
	1800 750  1950 750 
Connection ~ 1800 750 
Text GLabel 1800 1050 3    50   Input ~ 0
Servo_GND
Text GLabel 7350 2300 0    50   Input ~ 0
U1_EP
Text GLabel 5650 2950 3    50   Input ~ 0
U1_EP
Text GLabel 7350 2100 0    50   Input ~ 0
U1_PV
Text GLabel 7350 2200 0    50   Input ~ 0
U1_VPU
Text GLabel 5650 1550 1    50   Input ~ 0
U1_VPU
$Comp
L Connector_Generic:Conn_01x06 J1_U1_events1
U 1 1 5DA089B1
P 7550 2000
F 0 "J1_U1_events1" H 7630 1992 50  0000 L CNN
F 1 "Conn_01x06" H 7630 1901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 7550 2000 50  0001 C CNN
F 3 "~" H 7550 2000 50  0001 C CNN
	1    7550 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5DA06AEB
P 6350 2650
F 0 "#PWR0102" H 6350 2400 50  0001 C CNN
F 1 "GND" V 6355 2522 50  0000 R CNN
F 2 "" H 6350 2650 50  0001 C CNN
F 3 "" H 6350 2650 50  0001 C CNN
	1    6350 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 2650 6350 2650
Text GLabel 5050 2550 0    50   Input ~ 0
U1_IN+3
Text GLabel 5050 2250 0    50   Input ~ 0
U1_IN+2
Text GLabel 5050 1950 0    50   Input ~ 0
U1_IN+1
Text GLabel 7350 2000 0    50   Input ~ 0
U1_TC
Text GLabel 7350 1900 0    50   Input ~ 0
U1_WARNING
Text GLabel 7350 1800 0    50   Input ~ 0
U1_CRITICAL
Text GLabel 5450 1650 1    50   Input ~ 0
INA_VCC
Text GLabel 6050 2250 2    50   Input ~ 0
U1_TC
Text GLabel 6050 2150 2    50   Input ~ 0
U1_WARNING
Text GLabel 6050 2050 2    50   Input ~ 0
U1_CRITICAL
Text GLabel 6050 1950 2    50   Input ~ 0
U1_PV
Text GLabel 6050 2550 2    50   Input ~ 0
SDA
Text GLabel 6050 2450 2    50   Input ~ 0
SCA
Text GLabel 5050 2650 0    50   Input ~ 0
U1_IN-3
Text GLabel 5050 2350 0    50   Input ~ 0
U1_IN-2
Text GLabel 5050 2050 0    50   Input ~ 0
U1_IN-1
$Comp
L power:GND #PWR0101
U 1 1 5D9D8B49
P 5450 3000
F 0 "#PWR0101" H 5450 2750 50  0001 C CNN
F 1 "GND" H 5455 2827 50  0000 C CNN
F 2 "" H 5450 3000 50  0001 C CNN
F 3 "" H 5450 3000 50  0001 C CNN
	1    5450 3000
	1    0    0    -1  
$EndComp
$Comp
L Servo_PCB-rescue:INA3221-Power_Management U1
U 1 1 5D9D7EF5
P 5550 2350
F 0 "U1" H 5550 3231 50  0000 C CNN
F 1 "INA3221 0x40" H 5550 3140 50  0000 C CNN
F 2 "Package_DFN_QFN:Texas_RGV_S-PVQFN-N16_EP2.1x2.1mm" H 5550 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina3221.pdf" H 5550 3050 50  0001 C CNN
	1    5550 2350
	1    0    0    -1  
$EndComp
$Sheet
S 1550 4200 1600 1050
U 5D9FB295
F0 "Servo_Block2" 50
F1 "Servo_Block2.sch" 50
$EndSheet
$Comp
L power:GND #PWR0105
U 1 1 5DA0CDAB
P 8050 700
F 0 "#PWR0105" H 8050 450 50  0001 C CNN
F 1 "GND" H 8055 527 50  0000 C CNN
F 2 "" H 8050 700 50  0001 C CNN
F 3 "" H 8050 700 50  0001 C CNN
	1    8050 700 
	1    0    0    -1  
$EndComp
$Sheet
S 3500 4200 1350 1100
U 5DA0FFA3
F0 "Servo_Block3" 50
F1 "Servo_Block3.sch" 50
$EndSheet
$Sheet
S 5200 4250 1100 1100
U 5DA1230E
F0 "Servo_Block4" 50
F1 "Servo_Block4.sch" 50
$EndSheet
$Sheet
S 6650 4250 900  700 
U 5DA1D29E
F0 "PCA9685" 50
F1 "PCA9685.sch" 50
$EndSheet
Text GLabel 9750 850  0    50   Input ~ 0
INA_VCC
$Comp
L power:+3.3V #PWR0116
U 1 1 5DA5E6D1
P 9850 850
F 0 "#PWR0116" H 9850 700 50  0001 C CNN
F 1 "+3.3V" V 9865 978 50  0000 L CNN
F 2 "" H 9850 850 50  0001 C CNN
F 3 "" H 9850 850 50  0001 C CNN
	1    9850 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 1650 5650 1550
Wire Wire Line
	5450 3000 5450 2950
$Comp
L Device:LED_Small PWR_LED1
U 1 1 5DA6C6A4
P 9850 1050
F 0 "PWR_LED1" V 9896 982 50  0000 R CNN
F 1 "Green" V 9805 982 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 9850 1050 50  0001 C CNN
F 3 "~" V 9850 1050 50  0001 C CNN
	1    9850 1050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R_PWR_LED1
U 1 1 5DA6D2B1
P 9850 1250
F 0 "R_PWR_LED1" H 9909 1296 50  0000 L CNN
F 1 "470" H 9909 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9850 1250 50  0001 C CNN
F 3 "~" H 9850 1250 50  0001 C CNN
	1    9850 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5DA6D926
P 9850 1350
F 0 "#PWR0117" H 9850 1100 50  0001 C CNN
F 1 "GND" H 9855 1177 50  0000 C CNN
F 2 "" H 9850 1350 50  0001 C CNN
F 3 "" H 9850 1350 50  0001 C CNN
	1    9850 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 950  9850 850 
Wire Wire Line
	9750 850  9850 850 
Connection ~ 9850 850 
Text Notes 7050 6900 0    50   ~ 0
INA3221 supports up to 4 addresses 0x40 - 0x43\nPCA9685 supports up to 5 addresses 0x40 - 0x44\n\nBecause they share the same address range, only 4 INA3221 can act together with PCA9685
$EndSCHEMATC
