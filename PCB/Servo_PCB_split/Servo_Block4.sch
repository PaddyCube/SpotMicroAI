EESchema Schematic File Version 4
LIBS:Servo_PCB-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
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
Servo_VCC2
$Comp
L Connector_Generic:Conn_01x03 JServo?
U 1 1 5DA1A6C6
P 1250 1950
AR Path="/5DA1A6C6" Ref="JServo?"  Part="1" 
AR Path="/5D9FB295/5DA1A6C6" Ref="JServo?"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6C6" Ref="JServo?"  Part="1" 
AR Path="/5DA1230E/5DA1A6C6" Ref="JServo10"  Part="1" 
F 0 "JServo10" H 1168 1625 50  0000 C CNN
F 1 "Conn_01x03" H 1168 1716 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 1250 1950 50  0001 C CNN
F 3 "~" H 1250 1950 50  0001 C CNN
	1    1250 1950
	-1   0    0    1   
$EndComp
Text GLabel 1450 1950 2    50   Input ~ 0
Servo10_VCC
Text GLabel 1450 1850 2    50   Input ~ 0
Servo_GND2
Text GLabel 1450 2050 2    50   Input ~ 0
PWM_Servo10
$Comp
L Device:Fuse_Small F_Servo?
U 1 1 5DA1A6C9
P 2950 1300
AR Path="/5DA1A6C9" Ref="F_Servo?"  Part="1" 
AR Path="/5D9FB295/5DA1A6C9" Ref="F_Servo?"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6C9" Ref="F_Servo?"  Part="1" 
AR Path="/5DA1230E/5DA1A6C9" Ref="F_Servo10"  Part="1" 
F 0 "F_Servo10" H 2700 1400 50  0000 C CNN
F 1 "5A" H 2950 1394 50  0000 C CNN
F 2 "SpotMicroAI:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" H 2950 1300 50  0001 C CNN
F 3 "~" H 2950 1300 50  0001 C CNN
	1    2950 1300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 JServo?
U 1 1 5DA095CB
P 1250 2500
AR Path="/5DA095CB" Ref="JServo?"  Part="1" 
AR Path="/5D9FB295/5DA095CB" Ref="JServo?"  Part="1" 
AR Path="/5DA0FFA3/5DA095CB" Ref="JServo?"  Part="1" 
AR Path="/5DA1230E/5DA095CB" Ref="JServo11"  Part="1" 
F 0 "JServo11" H 1168 2175 50  0000 C CNN
F 1 "Conn_01x03" H 1168 2266 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 1250 2500 50  0001 C CNN
F 3 "~" H 1250 2500 50  0001 C CNN
	1    1250 2500
	-1   0    0    1   
$EndComp
Text GLabel 1450 2500 2    50   Input ~ 0
Servo11_VCC
Text GLabel 1450 2400 2    50   Input ~ 0
Servo_GND2
Text GLabel 1450 2600 2    50   Input ~ 0
PWM_Servo11
$Comp
L Connector_Generic:Conn_01x03 JServo?
U 1 1 5DA095D4
P 1250 3050
AR Path="/5DA095D4" Ref="JServo?"  Part="1" 
AR Path="/5D9FB295/5DA095D4" Ref="JServo?"  Part="1" 
AR Path="/5DA0FFA3/5DA095D4" Ref="JServo?"  Part="1" 
AR Path="/5DA1230E/5DA095D4" Ref="JServo12"  Part="1" 
F 0 "JServo12" H 1168 2725 50  0000 C CNN
F 1 "Conn_01x03" H 1168 2816 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 1250 3050 50  0001 C CNN
F 3 "~" H 1250 3050 50  0001 C CNN
	1    1250 3050
	-1   0    0    1   
$EndComp
Text GLabel 1450 3050 2    50   Input ~ 0
Servo12_VCC
Text GLabel 1450 2950 2    50   Input ~ 0
Servo_GND2
Text GLabel 1450 3150 2    50   Input ~ 0
PWM_Servo12
$Comp
L Device:R_Small RShunt1_U?
U 1 1 5DA1A6D3
P 3050 1400
AR Path="/5DA1A6D3" Ref="RShunt1_U?"  Part="1" 
AR Path="/5D9FB295/5DA1A6D3" Ref="RShunt1_U?"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6D3" Ref="RShunt1_U?"  Part="1" 
AR Path="/5DA1230E/5DA1A6D3" Ref="RShunt1_U4"  Part="1" 
F 0 "RShunt1_U4" H 3550 1400 50  0000 R CNN
F 1 "0.05" V 2950 1500 50  0000 R CNN
F 2 "Resistor_SMD:R_2512_6332Metric" H 3050 1400 50  0001 C CNN
F 3 "~" H 3050 1400 50  0001 C CNN
	1    3050 1400
	-1   0    0    1   
$EndComp
Text GLabel 2850 1550 0    50   Input ~ 0
Servo10_VCC
Wire Wire Line
	2850 1550 3050 1550
Wire Wire Line
	3050 1550 3050 1500
$Comp
L Device:R_Small RFilter11_U?
U 1 1 5DA1A6D4
P 3350 1300
AR Path="/5DA1A6D4" Ref="RFilter11_U?"  Part="1" 
AR Path="/5D9FB295/5DA1A6D4" Ref="RFilter11_U?"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6D4" Ref="RFilter11_U?"  Part="1" 
AR Path="/5DA1230E/5DA1A6D4" Ref="RFilter11_U4"  Part="1" 
F 0 "RFilter11_U4" V 3250 1300 50  0000 C CNN
F 1 "10" V 3400 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3350 1300 50  0001 C CNN
F 3 "~" H 3350 1300 50  0001 C CNN
	1    3350 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small RFilter12_U?
U 1 1 5DA1A6D9
P 3350 1550
AR Path="/5DA1A6D9" Ref="RFilter12_U?"  Part="1" 
AR Path="/5D9FB295/5DA1A6D9" Ref="RFilter12_U?"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6D9" Ref="RFilter12_U?"  Part="1" 
AR Path="/5DA1230E/5DA1A6D9" Ref="RFilter12_U4"  Part="1" 
F 0 "RFilter12_U4" V 3450 1500 50  0000 C CNN
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
U 1 1 5DA1A6DB
P 3550 1400
AR Path="/5DA1A6DB" Ref="CFilter1_U?"  Part="1" 
AR Path="/5D9FB295/5DA1A6DB" Ref="CFilter1_U?"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6DB" Ref="CFilter1_U?"  Part="1" 
AR Path="/5DA1230E/5DA1A6DB" Ref="CFilter1_U4"  Part="1" 
F 0 "CFilter1_U4" H 3642 1446 50  0000 L CNN
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
U4_IN+1
Text GLabel 4100 1550 2    50   Input ~ 0
U4_IN-1
Wire Wire Line
	3550 1300 4100 1300
Connection ~ 3550 1300
Wire Wire Line
	3550 1550 4100 1550
Connection ~ 3550 1550
Text GLabel 2850 2000 0    50   Input ~ 0
Servo_VCC2
$Comp
L Device:Fuse_Small F_Servo?
U 1 1 5DA1A6DD
P 2950 2000
AR Path="/5DA1A6DD" Ref="F_Servo?"  Part="1" 
AR Path="/5D9FB295/5DA1A6DD" Ref="F_Servo?"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6DD" Ref="F_Servo?"  Part="1" 
AR Path="/5DA1230E/5DA1A6DD" Ref="F_Servo11"  Part="1" 
F 0 "F_Servo11" H 2700 2100 50  0000 C CNN
F 1 "5A" H 2950 2094 50  0000 C CNN
F 2 "SpotMicroAI:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" H 2950 2000 50  0001 C CNN
F 3 "~" H 2950 2000 50  0001 C CNN
	1    2950 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small RShunt2_U?
U 1 1 5DA1A6E0
P 3050 2100
AR Path="/5DA1A6E0" Ref="RShunt2_U?"  Part="1" 
AR Path="/5D9FB295/5DA1A6E0" Ref="RShunt2_U?"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6E0" Ref="RShunt2_U?"  Part="1" 
AR Path="/5DA1230E/5DA1A6E0" Ref="RShunt2_U4"  Part="1" 
F 0 "RShunt2_U4" H 3550 2100 50  0000 R CNN
F 1 "0.05" V 2950 2200 50  0000 R CNN
F 2 "Resistor_SMD:R_2512_6332Metric" H 3050 2100 50  0001 C CNN
F 3 "~" H 3050 2100 50  0001 C CNN
	1    3050 2100
	-1   0    0    1   
$EndComp
Text GLabel 2850 2250 0    50   Input ~ 0
Servo11_VCC
Wire Wire Line
	2850 2250 3050 2250
Wire Wire Line
	3050 2250 3050 2200
$Comp
L Device:R_Small RFilter21_U?
U 1 1 5DA1A6E3
P 3350 2000
AR Path="/5DA1A6E3" Ref="RFilter21_U?"  Part="1" 
AR Path="/5D9FB295/5DA1A6E3" Ref="RFilter21_U?"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6E3" Ref="RFilter21_U?"  Part="1" 
AR Path="/5DA1230E/5DA1A6E3" Ref="RFilter21_U4"  Part="1" 
F 0 "RFilter21_U4" V 3250 2000 50  0000 C CNN
F 1 "10" V 3400 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3350 2000 50  0001 C CNN
F 3 "~" H 3350 2000 50  0001 C CNN
	1    3350 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small RFilter22_U?
U 1 1 5DA1A6E7
P 3350 2250
AR Path="/5DA1A6E7" Ref="RFilter22_U?"  Part="1" 
AR Path="/5D9FB295/5DA1A6E7" Ref="RFilter22_U?"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6E7" Ref="RFilter22_U?"  Part="1" 
AR Path="/5DA1230E/5DA1A6E7" Ref="RFilter22_U4"  Part="1" 
F 0 "RFilter22_U4" V 3450 2200 50  0000 C CNN
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
U 1 1 5DA1A6EB
P 3550 2100
AR Path="/5DA1A6EB" Ref="CFilter2_U?"  Part="1" 
AR Path="/5D9FB295/5DA1A6EB" Ref="CFilter2_U?"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6EB" Ref="CFilter2_U?"  Part="1" 
AR Path="/5DA1230E/5DA1A6EB" Ref="CFilter2_U4"  Part="1" 
F 0 "CFilter2_U4" H 3642 2146 50  0000 L CNN
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
U4_IN+2
Text GLabel 4100 2250 2    50   Input ~ 0
U4_IN-2
Wire Wire Line
	3550 2000 4100 2000
Connection ~ 3550 2000
Wire Wire Line
	3550 2250 4100 2250
Connection ~ 3550 2250
Text GLabel 2850 2750 0    50   Input ~ 0
Servo_VCC2
$Comp
L Device:Fuse_Small F_Servo?
U 1 1 5DA1A6EE
P 2950 2750
AR Path="/5DA1A6EE" Ref="F_Servo?"  Part="1" 
AR Path="/5D9FB295/5DA1A6EE" Ref="F_Servo?"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6EE" Ref="F_Servo?"  Part="1" 
AR Path="/5DA1230E/5DA1A6EE" Ref="F_Servo12"  Part="1" 
F 0 "F_Servo12" H 2700 2850 50  0000 C CNN
F 1 "5A" H 2950 2844 50  0000 C CNN
F 2 "SpotMicroAI:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" H 2950 2750 50  0001 C CNN
F 3 "~" H 2950 2750 50  0001 C CNN
	1    2950 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small RShunt3_U?
U 1 1 5DA1A6EF
P 3050 2850
AR Path="/5DA1A6EF" Ref="RShunt3_U?"  Part="1" 
AR Path="/5D9FB295/5DA1A6EF" Ref="RShunt3_U?"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6EF" Ref="RShunt3_U?"  Part="1" 
AR Path="/5DA1230E/5DA1A6EF" Ref="RShunt3_U4"  Part="1" 
F 0 "RShunt3_U4" H 3550 2850 50  0000 R CNN
F 1 "0.05" V 2950 2950 50  0000 R CNN
F 2 "Resistor_SMD:R_2512_6332Metric" H 3050 2850 50  0001 C CNN
F 3 "~" H 3050 2850 50  0001 C CNN
	1    3050 2850
	-1   0    0    1   
$EndComp
Text GLabel 2850 3000 0    50   Input ~ 0
Servo12_VCC
Wire Wire Line
	2850 3000 3050 3000
Wire Wire Line
	3050 3000 3050 2950
$Comp
L Device:R_Small RFilter31_U?
U 1 1 5DA1A6F4
P 3350 2750
AR Path="/5DA1A6F4" Ref="RFilter31_U?"  Part="1" 
AR Path="/5D9FB295/5DA1A6F4" Ref="RFilter31_U?"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6F4" Ref="RFilter31_U?"  Part="1" 
AR Path="/5DA1230E/5DA1A6F4" Ref="RFilter31_U4"  Part="1" 
F 0 "RFilter31_U4" V 3250 2750 50  0000 C CNN
F 1 "10" V 3400 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3350 2750 50  0001 C CNN
F 3 "~" H 3350 2750 50  0001 C CNN
	1    3350 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small RFilter32_U?
U 1 1 5DA1A6F6
P 3350 3000
AR Path="/5DA1A6F6" Ref="RFilter32_U?"  Part="1" 
AR Path="/5D9FB295/5DA1A6F6" Ref="RFilter32_U?"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6F6" Ref="RFilter32_U?"  Part="1" 
AR Path="/5DA1230E/5DA1A6F6" Ref="RFilter32_U4"  Part="1" 
F 0 "RFilter32_U4" V 3450 2950 50  0000 C CNN
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
U 1 1 5DA1A6FA
P 3550 2850
AR Path="/5DA1A6FA" Ref="CFilter3_U?"  Part="1" 
AR Path="/5D9FB295/5DA1A6FA" Ref="CFilter3_U?"  Part="1" 
AR Path="/5DA0FFA3/5DA1A6FA" Ref="CFilter3_U?"  Part="1" 
AR Path="/5DA1230E/5DA1A6FA" Ref="CFilter3_U4"  Part="1" 
F 0 "CFilter3_U4" H 3642 2896 50  0000 L CNN
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
U4_IN+3
Text GLabel 4100 3000 2    50   Input ~ 0
U4_IN-3
Wire Wire Line
	3550 2750 4100 2750
Connection ~ 3550 2750
Wire Wire Line
	3550 3000 4100 3000
Connection ~ 3550 3000
Text GLabel 6450 2800 2    50   Input ~ 0
SCL
Wire Wire Line
	6150 2800 6450 2800
Text GLabel 5150 2700 0    50   Input ~ 0
U4_IN+3
Text GLabel 5150 2400 0    50   Input ~ 0
U4_IN+2
Text GLabel 5150 2100 0    50   Input ~ 0
U4_IN+1
Text GLabel 7600 3150 0    50   Input ~ 0
U4_WARNING
Text GLabel 7600 3050 0    50   Input ~ 0
U4_CRITICAL
Text GLabel 5550 1800 1    50   Input ~ 0
INA_VCC
Text GLabel 6150 2300 2    50   Input ~ 0
U4_WARNING
Text GLabel 6150 2200 2    50   Input ~ 0
U4_CRITICAL
Text GLabel 6150 2700 2    50   Input ~ 0
SDA
Text GLabel 6150 2600 2    50   Input ~ 0
SCA
Text GLabel 5150 2800 0    50   Input ~ 0
U4_IN-3
Text GLabel 5150 2500 0    50   Input ~ 0
U4_IN-2
Text GLabel 5150 2200 0    50   Input ~ 0
U4_IN-1
$Comp
L power:GND #PWR?
U 1 1 5DA1A70F
P 5550 3100
AR Path="/5DA1A70F" Ref="#PWR?"  Part="1" 
AR Path="/5D9FB295/5DA1A70F" Ref="#PWR?"  Part="1" 
AR Path="/5DA0FFA3/5DA1A70F" Ref="#PWR?"  Part="1" 
AR Path="/5DA1230E/5DA1A70F" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 5550 2850 50  0001 C CNN
F 1 "GND" H 5555 2927 50  0000 C CNN
F 2 "" H 5550 3100 50  0001 C CNN
F 3 "" H 5550 3100 50  0001 C CNN
	1    5550 3100
	1    0    0    -1  
$EndComp
$Comp
L Servo_PCB-rescue:INA3221-Power_Management U?
U 1 1 5DA1A710
P 5650 2500
AR Path="/5DA1A710" Ref="U?"  Part="1" 
AR Path="/5D9FB295/5DA1A710" Ref="U?"  Part="1" 
AR Path="/5DA0FFA3/5DA1A710" Ref="U?"  Part="1" 
AR Path="/5DA1230E/5DA1A710" Ref="U4"  Part="1" 
F 0 "U4" H 5650 3381 50  0000 C CNN
F 1 "INA3221 0x43" H 5650 3290 50  0000 C CNN
F 2 "Package_DFN_QFN:Texas_RGV_S-PVQFN-N16_EP2.1x2.1mm" H 5650 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina3221.pdf" H 5650 3200 50  0001 C CNN
	1    5650 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1800 5750 1750
$Comp
L Connector:TestPoint J1_U4_critical?
U 1 1 5DA85A8F
P 7600 3050
AR Path="/5DA85A8F" Ref="J1_U4_critical?"  Part="1" 
AR Path="/5D9FB295/5DA85A8F" Ref="J1_U4_critical?"  Part="1" 
AR Path="/5DA0FFA3/5DA85A8F" Ref="J1_U4_critical?"  Part="1" 
AR Path="/5DA1230E/5DA85A8F" Ref="J1_U4_critical1"  Part="1" 
F 0 "J1_U4_critical1" H 7680 3042 50  0000 L CNN
F 1 "CRT" H 7680 2951 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_2.0x2.0mm" H 7600 3050 50  0001 C CNN
F 3 "~" H 7600 3050 50  0001 C CNN
	1    7600 3050
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint J1_U4_warning?
U 1 1 5DA85A95
P 7600 3150
AR Path="/5DA85A95" Ref="J1_U4_warning?"  Part="1" 
AR Path="/5D9FB295/5DA85A95" Ref="J1_U4_warning?"  Part="1" 
AR Path="/5DA0FFA3/5DA85A95" Ref="J1_U4_warning?"  Part="1" 
AR Path="/5DA1230E/5DA85A95" Ref="J1_U4_warning1"  Part="1" 
F 0 "J1_U4_warning1" H 7680 3142 50  0000 L CNN
F 1 "WRN" H 7680 3051 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_2.0x2.0mm" H 7600 3150 50  0001 C CNN
F 3 "~" H 7600 3150 50  0001 C CNN
	1    7600 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 3450 7600 3450
NoConn ~ 5750 3100
NoConn ~ 6150 2400
NoConn ~ 6150 2100
NoConn ~ 5750 1750
$EndSCHEMATC
