EESchema Schematic File Version 4
LIBS:Servo_PCB-cache
EELAYER 30 0
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
L Connector_Generic:Conn_01x03 S1
U 1 1 5D9DC6CF
P 1150 1800
F 0 "S1" H 1068 1475 50  0000 C CNN
F 1 "Conn_01x03" H 1050 1550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1150 1800 50  0001 C CNN
F 3 "~" H 1150 1800 50  0001 C CNN
	1    1150 1800
	-1   0    0    1   
$EndComp
Text GLabel 1350 1700 2    50   Input ~ 0
Servo_GND1
Text GLabel 1350 1900 2    50   Input ~ 0
PWM_Servo1
Text GLabel 1950 750  2    50   Input ~ 0
Servo_VCC1
Text GLabel 1100 850  2    50   Input ~ 0
Servo_GND1
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
L Connector_Generic:Conn_01x03 S2
U 1 1 5D9E5476
P 1150 2350
F 0 "S2" H 1068 2025 50  0000 C CNN
F 1 "Conn_01x03" H 1068 2116 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1150 2350 50  0001 C CNN
F 3 "~" H 1150 2350 50  0001 C CNN
	1    1150 2350
	-1   0    0    1   
$EndComp
Text GLabel 1350 2250 2    50   Input ~ 0
Servo_GND1
Text GLabel 1350 2450 2    50   Input ~ 0
PWM_Servo2
$Comp
L Connector_Generic:Conn_01x03 S3
U 1 1 5D9E5C64
P 1150 2900
F 0 "S3" H 1068 2575 50  0000 C CNN
F 1 "Conn_01x03" H 1068 2666 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1150 2900 50  0001 C CNN
F 3 "~" H 1150 2900 50  0001 C CNN
	1    1150 2900
	-1   0    0    1   
$EndComp
Text GLabel 1350 2800 2    50   Input ~ 0
Servo_GND1
Text GLabel 1350 3000 2    50   Input ~ 0
PWM_Servo3
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
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 7580 700 50  0001 C CNN
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
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 7580 900 50  0001 C CNN
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
F 2 "Capacitor_THT:C_Radial_D10.0mm_H16.0mm_P5.00mm" H 1838 750 50  0001 C CNN
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
Servo_GND1
$Sheet
S 1550 4200 1600 1050
U 5D9FB295
F0 "Servo_Block2" 50
F1 "Servo_Block2.sch" 50
$EndSheet
$Comp
L power:GND #PWR03
U 1 1 5DA0CDAB
P 8050 700
F 0 "#PWR03" H 8050 450 50  0001 C CNN
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
L power:+3.3V #PWR04
U 1 1 5DA5E6D1
P 9850 850
F 0 "#PWR04" H 9850 700 50  0001 C CNN
F 1 "+3.3V" V 9865 978 50  0000 L CNN
F 2 "" H 9850 850 50  0001 C CNN
F 3 "" H 9850 850 50  0001 C CNN
	1    9850 850 
	0    1    1    0   
$EndComp
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
L power:GND #PWR05
U 1 1 5DA6D926
P 9850 1350
F 0 "#PWR05" H 9850 1100 50  0001 C CNN
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
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5DA7334F
P 7750 3300
F 0 "J2" H 7668 2975 50  0000 C CNN
F 1 "Screw_Terminal_01x02" V 7850 3350 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 7750 3300 50  0001 C CNN
F 3 "~" H 7750 3300 50  0001 C CNN
	1    7750 3300
	-1   0    0    1   
$EndComp
Text GLabel 8800 3200 2    50   Input ~ 0
Servo_VCC2
Text GLabel 7950 3300 2    50   Input ~ 0
Servo_GND2
$Comp
L Device:Fuse FMain2
U 1 1 5DA7335B
P 8100 3200
F 0 "FMain2" V 7903 3200 50  0000 C CNN
F 1 "20A" V 7994 3200 50  0000 C CNN
F 2 "Fuse:Fuse_Blade_Mini_directSolder" V 8030 3200 50  0001 C CNN
F 3 "~" H 8100 3200 50  0001 C CNN
	1    8100 3200
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky DMain2
U 1 1 5DA73365
P 8400 3200
F 0 "DMain2" H 8400 2984 50  0000 C CNN
F 1 "Schottky 30V25A" H 8200 3050 50  0000 C CNN
F 2 "Diode_THT:D_P600_R-6_P12.70mm_Horizontal" H 8400 3200 50  0001 C CNN
F 3 "~" H 8400 3200 50  0001 C CNN
	1    8400 3200
	-1   0    0    1   
$EndComp
$Comp
L Device:CP CMain_ServoVCC2
U 1 1 5DA7336F
P 8650 3350
F 0 "CMain_ServoVCC2" H 8768 3396 50  0000 L CNN
F 1 "2200uF" H 8768 3305 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D10.0mm_H16.0mm_P5.00mm" H 8688 3200 50  0001 C CNN
F 3 "~" H 8650 3350 50  0001 C CNN
	1    8650 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3200 8650 3200
Wire Wire Line
	8650 3200 8800 3200
Connection ~ 8650 3200
Text GLabel 8650 3500 3    50   Input ~ 0
Servo_GND2
Text GLabel 2200 1800 2    50   Input ~ 0
Servo_VCC1
Text GLabel 2200 2350 2    50   Input ~ 0
Servo_VCC1
Text GLabel 2200 2900 2    50   Input ~ 0
Servo_VCC1
$Comp
L Device:R_Small RShunt1
U 1 1 5DAE96C0
P 2100 1800
F 0 "RShunt1" V 1904 1800 50  0000 C CNN
F 1 "0.05Ohm" V 1995 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_1210_3225Metric" H 2100 1800 50  0001 C CNN
F 3 "~" H 2100 1800 50  0001 C CNN
	1    2100 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small RShunt2
U 1 1 5DAEA49E
P 2100 2350
F 0 "RShunt2" V 1904 2350 50  0000 C CNN
F 1 "0.05Ohm" V 1995 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_1210_3225Metric" H 2100 2350 50  0001 C CNN
F 3 "~" H 2100 2350 50  0001 C CNN
	1    2100 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small RShunt3
U 1 1 5DAEA880
P 2100 2900
F 0 "RShunt3" V 1904 2900 50  0000 C CNN
F 1 "0.05Ohm" V 1995 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_1210_3225Metric" H 2100 2900 50  0001 C CNN
F 3 "~" H 2100 2900 50  0001 C CNN
	1    2100 2900
	0    1    1    0   
$EndComp
Text GLabel 2200 2450 2    50   Input ~ 0
Shunt_2_IN+
Text GLabel 2200 2550 2    50   Input ~ 0
Shunt_2_IN-
Wire Wire Line
	2200 2450 2200 2350
Wire Wire Line
	2200 2550 2000 2550
Wire Wire Line
	2000 2000 2000 1800
Wire Wire Line
	2000 1800 1350 1800
Connection ~ 2000 1800
Text GLabel 2200 1900 2    50   Input ~ 0
Shunt_1_IN+
Text GLabel 2200 2000 2    50   Input ~ 0
Shunt_1_IN-
Wire Wire Line
	2200 1900 2200 1800
Wire Wire Line
	2200 2000 2000 2000
Text GLabel 2200 3000 2    50   Input ~ 0
Shunt_3_IN+
Text GLabel 2200 3100 2    50   Input ~ 0
Shunt_3_IN-
Wire Wire Line
	2200 3000 2200 2900
Wire Wire Line
	2200 3100 2000 3100
Wire Wire Line
	2000 2550 2000 2350
Wire Wire Line
	1350 2350 2000 2350
Connection ~ 2000 2350
Wire Wire Line
	1350 2900 2000 2900
Wire Wire Line
	2000 3100 2000 2900
Connection ~ 2000 2900
Text GLabel 4800 2050 0    50   Input ~ 0
Shunt_1_IN+
Text GLabel 4800 2250 0    50   Input ~ 0
Shunt_2_IN+
Text GLabel 4800 2450 0    50   Input ~ 0
Shunt_3_IN+
Text GLabel 4800 2650 0    50   Input ~ 0
Shunt_4_IN+
Text GLabel 4800 2850 0    50   Input ~ 0
Shunt_5_IN+
Text GLabel 4800 3050 0    50   Input ~ 0
Shunt_6_IN+
Text GLabel 4800 2150 0    50   Input ~ 0
Shunt_1_IN-
Text GLabel 4800 2350 0    50   Input ~ 0
Shunt_2_IN-
Text GLabel 4800 2550 0    50   Input ~ 0
Shunt_3_IN-
Text GLabel 4800 2750 0    50   Input ~ 0
Shunt_4_IN-
Text GLabel 4800 2950 0    50   Input ~ 0
Shunt_5_IN-
Text GLabel 4800 3150 0    50   Input ~ 0
Shunt_6_IN-
Text GLabel 6150 2050 0    50   Input ~ 0
Shunt_7_IN+
Text GLabel 6150 2250 0    50   Input ~ 0
Shunt_8_IN+
Text GLabel 6150 2450 0    50   Input ~ 0
Shunt_9_IN+
Text GLabel 6150 2650 0    50   Input ~ 0
Shunt_10_IN+
Text GLabel 6150 2850 0    50   Input ~ 0
Shunt_11_IN+
Text GLabel 6150 3050 0    50   Input ~ 0
Shunt_12_IN+
Text GLabel 6150 2150 0    50   Input ~ 0
Shunt_7_IN-
Text GLabel 6150 2350 0    50   Input ~ 0
Shunt_8_IN-
Text GLabel 6150 2550 0    50   Input ~ 0
Shunt_9_IN-
Text GLabel 6150 2750 0    50   Input ~ 0
Shunt_10_IN-
Text GLabel 6150 2950 0    50   Input ~ 0
Shunt_11_IN-
Text GLabel 6150 3150 0    50   Input ~ 0
Shunt_12_IN-
$Comp
L Connector:TestPoint S1+1
U 1 1 5DAFF4F2
P 4800 2050
F 0 "S1+1" V 4754 2238 50  0000 L CNN
F 1 "TestPoint" V 4845 2238 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 5000 2050 50  0001 C CNN
F 3 "~" H 5000 2050 50  0001 C CNN
	1    4800 2050
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint S1-1
U 1 1 5DAFFC36
P 4800 2150
F 0 "S1-1" V 4754 2338 50  0000 L CNN
F 1 "TestPoint" V 4845 2338 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 5000 2150 50  0001 C CNN
F 3 "~" H 5000 2150 50  0001 C CNN
	1    4800 2150
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint S2+1
U 1 1 5DAFFFE6
P 4800 2250
F 0 "S2+1" V 4754 2438 50  0000 L CNN
F 1 "TestPoint" V 4845 2438 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 5000 2250 50  0001 C CNN
F 3 "~" H 5000 2250 50  0001 C CNN
	1    4800 2250
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint S2-1
U 1 1 5DB00151
P 4800 2350
F 0 "S2-1" V 4754 2538 50  0000 L CNN
F 1 "TestPoint" V 4845 2538 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 5000 2350 50  0001 C CNN
F 3 "~" H 5000 2350 50  0001 C CNN
	1    4800 2350
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint S3-1
U 1 1 5DB0039B
P 4800 2550
F 0 "S3-1" V 4754 2738 50  0000 L CNN
F 1 "TestPoint" V 4845 2738 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 5000 2550 50  0001 C CNN
F 3 "~" H 5000 2550 50  0001 C CNN
	1    4800 2550
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint S4+1
U 1 1 5DB004F3
P 4800 2650
F 0 "S4+1" V 4754 2838 50  0000 L CNN
F 1 "TestPoint" V 4845 2838 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 5000 2650 50  0001 C CNN
F 3 "~" H 5000 2650 50  0001 C CNN
	1    4800 2650
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint S4-1
U 1 1 5DB0065E
P 4800 2750
F 0 "S4-1" V 4754 2938 50  0000 L CNN
F 1 "TestPoint" V 4845 2938 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 5000 2750 50  0001 C CNN
F 3 "~" H 5000 2750 50  0001 C CNN
	1    4800 2750
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint S5+1
U 1 1 5DB007C0
P 4800 2850
F 0 "S5+1" V 4754 3038 50  0000 L CNN
F 1 "TestPoint" V 4845 3038 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 5000 2850 50  0001 C CNN
F 3 "~" H 5000 2850 50  0001 C CNN
	1    4800 2850
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint S5-1
U 1 1 5DB00906
P 4800 2950
F 0 "S5-1" V 4754 3138 50  0000 L CNN
F 1 "TestPoint" V 4845 3138 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 5000 2950 50  0001 C CNN
F 3 "~" H 5000 2950 50  0001 C CNN
	1    4800 2950
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint S6+1
U 1 1 5DB00A04
P 4800 3050
F 0 "S6+1" V 4754 3238 50  0000 L CNN
F 1 "TestPoint" V 4845 3238 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 5000 3050 50  0001 C CNN
F 3 "~" H 5000 3050 50  0001 C CNN
	1    4800 3050
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint S6-1
U 1 1 5DB00B57
P 4800 3150
F 0 "S6-1" V 4754 3338 50  0000 L CNN
F 1 "TestPoint" V 4845 3338 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 5000 3150 50  0001 C CNN
F 3 "~" H 5000 3150 50  0001 C CNN
	1    4800 3150
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP13
U 1 1 5DB02FA9
P 6150 2050
F 0 "TP13" V 6104 2238 50  0000 L CNN
F 1 "TestPoint" V 6195 2238 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6350 2050 50  0001 C CNN
F 3 "~" H 6350 2050 50  0001 C CNN
	1    6150 2050
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP14
U 1 1 5DB02FAF
P 6150 2150
F 0 "TP14" V 6104 2338 50  0000 L CNN
F 1 "TestPoint" V 6195 2338 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6350 2150 50  0001 C CNN
F 3 "~" H 6350 2150 50  0001 C CNN
	1    6150 2150
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP15
U 1 1 5DB02FB5
P 6150 2250
F 0 "TP15" V 6104 2438 50  0000 L CNN
F 1 "TestPoint" V 6195 2438 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6350 2250 50  0001 C CNN
F 3 "~" H 6350 2250 50  0001 C CNN
	1    6150 2250
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP16
U 1 1 5DB02FBB
P 6150 2350
F 0 "TP16" V 6104 2538 50  0000 L CNN
F 1 "TestPoint" V 6195 2538 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6350 2350 50  0001 C CNN
F 3 "~" H 6350 2350 50  0001 C CNN
	1    6150 2350
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP17
U 1 1 5DB02FC1
P 6150 2450
F 0 "TP17" V 6104 2638 50  0000 L CNN
F 1 "TestPoint" V 6195 2638 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6350 2450 50  0001 C CNN
F 3 "~" H 6350 2450 50  0001 C CNN
	1    6150 2450
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP18
U 1 1 5DB02FC7
P 6150 2550
F 0 "TP18" V 6104 2738 50  0000 L CNN
F 1 "TestPoint" V 6195 2738 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6350 2550 50  0001 C CNN
F 3 "~" H 6350 2550 50  0001 C CNN
	1    6150 2550
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP19
U 1 1 5DB02FCD
P 6150 2650
F 0 "TP19" V 6104 2838 50  0000 L CNN
F 1 "TestPoint" V 6195 2838 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6350 2650 50  0001 C CNN
F 3 "~" H 6350 2650 50  0001 C CNN
	1    6150 2650
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP20
U 1 1 5DB02FD3
P 6150 2750
F 0 "TP20" V 6104 2938 50  0000 L CNN
F 1 "TestPoint" V 6195 2938 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6350 2750 50  0001 C CNN
F 3 "~" H 6350 2750 50  0001 C CNN
	1    6150 2750
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP21
U 1 1 5DB02FD9
P 6150 2850
F 0 "TP21" V 6104 3038 50  0000 L CNN
F 1 "TestPoint" V 6195 3038 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6350 2850 50  0001 C CNN
F 3 "~" H 6350 2850 50  0001 C CNN
	1    6150 2850
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP22
U 1 1 5DB02FDF
P 6150 2950
F 0 "TP22" V 6104 3138 50  0000 L CNN
F 1 "TestPoint" V 6195 3138 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6350 2950 50  0001 C CNN
F 3 "~" H 6350 2950 50  0001 C CNN
	1    6150 2950
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP23
U 1 1 5DB02FE5
P 6150 3050
F 0 "TP23" V 6104 3238 50  0000 L CNN
F 1 "TestPoint" V 6195 3238 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6350 3050 50  0001 C CNN
F 3 "~" H 6350 3050 50  0001 C CNN
	1    6150 3050
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP24
U 1 1 5DB02FEB
P 6150 3150
F 0 "TP24" V 6104 3338 50  0000 L CNN
F 1 "TestPoint" V 6195 3338 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6350 3150 50  0001 C CNN
F 3 "~" H 6350 3150 50  0001 C CNN
	1    6150 3150
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint S3+1
U 1 1 5DB00276
P 4800 2450
F 0 "S3+1" V 4754 2638 50  0000 L CNN
F 1 "TestPoint" V 4845 2638 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 5000 2450 50  0001 C CNN
F 3 "~" H 5000 2450 50  0001 C CNN
	1    4800 2450
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5DB149E9
P 4250 5900
F 0 "H3" H 4350 5946 50  0000 L CNN
F 1 "MountingHole" H 4350 5855 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4250 5900 50  0001 C CNN
F 3 "~" H 4250 5900 50  0001 C CNN
	1    4250 5900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5DB14EB8
P 3250 6450
F 0 "H2" H 3350 6496 50  0000 L CNN
F 1 "MountingHole" H 3350 6405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 3250 6450 50  0001 C CNN
F 3 "~" H 3250 6450 50  0001 C CNN
	1    3250 6450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
