EESchema Schematic File Version 4
LIBS:Operator-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Operator Controls"
Date "2019-03-20"
Rev "1"
Comp "Loma Incorporated"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 5C92F5C8
P 6450 2950
F 0 "A1" H 5850 4050 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 5850 3950 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 6600 1900 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 6250 4000 50  0001 C CNN
	1    6450 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector:RJ45 J1
U 1 1 5C92F6BA
P 1300 3300
F 0 "J1" H 1355 3967 50  0000 C CNN
F 1 "RJ45" H 1355 3876 50  0000 C CNN
F 2 "Connector_RJ:RJ45_Amphenol_54602-x08_Horizontal" V 1300 3325 50  0001 C CNN
F 3 "~" V 1300 3325 50  0001 C CNN
	1    1300 3300
	1    0    0    -1  
$EndComp
$Comp
L Interface_RS485:DS89C21 U1
U 1 1 5C92F8A8
P 3100 5000
F 0 "U1" H 3125 5386 59  0000 C CNN
F 1 "DS89C21" H 3125 5281 59  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3000 5250 59  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ds89c21.pdf" H 3100 5350 59  0001 C CNN
	1    3100 5000
	1    0    0    -1  
$EndComp
Text Label 1850 2900 0    50   ~ 0
-TX
Text Label 1850 3000 0    50   ~ 0
+Tx
Text Label 1850 3100 0    50   ~ 0
GND
Text Label 1850 3200 0    50   ~ 0
TransEnable_TTL
Text Label 1850 3400 0    50   ~ 0
5v
Text Label 1850 3500 0    50   ~ 0
+RX
Text Label 1850 3600 0    50   ~ 0
-RX
NoConn ~ 1700 3300
Wire Wire Line
	1700 3400 1850 3400
Wire Wire Line
	1850 3500 1700 3500
Wire Wire Line
	1700 3600 1850 3600
Wire Wire Line
	1850 3200 1700 3200
Wire Wire Line
	1700 3100 1850 3100
Wire Wire Line
	1850 3000 1700 3000
Wire Wire Line
	1700 2900 1850 2900
Text Label 4550 4600 0    50   ~ 0
+RX
Text Label 4550 5050 0    50   ~ 0
-RX
Text Label 4550 5600 0    50   ~ 0
-TX
Text Label 4550 5200 0    50   ~ 0
+Tx
Text Label 1350 4900 2    50   ~ 0
5v
Text Label 1350 5350 2    50   ~ 0
GND
Text Label 2500 5050 2    50   ~ 0
USART_RX
Text Label 2500 5200 2    50   ~ 0
USART_TX
Wire Wire Line
	2500 5200 2700 5200
Wire Wire Line
	2500 5050 2700 5050
$Comp
L Device:CP1 C1
U 1 1 5C9309D6
P 1700 1450
F 0 "C1" H 1815 1541 50  0000 L CNN
F 1 "100uF" H 1815 1450 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 1700 1450 50  0001 C CNN
F 3 "~" H 1700 1450 50  0001 C CNN
F 4 "493-12814-1-ND" V 1550 1050 50  0000 L CNN "PN"
	1    1700 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C2
U 1 1 5C930C3F
P 2450 1450
F 0 "C2" H 2565 1541 50  0000 L CNN
F 1 "100uF" H 2565 1450 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 2450 1450 50  0001 C CNN
F 3 "~" H 2450 1450 50  0001 C CNN
F 4 "493-12814-1-ND" V 2300 1050 50  0000 L CNN "PN"
	1    2450 1450
	1    0    0    -1  
$EndComp
Text Label 1250 950  2    50   ~ 0
5v
Text Label 1250 2000 2    50   ~ 0
GND
Wire Wire Line
	1250 2000 1700 2000
Wire Wire Line
	1700 2000 1700 1600
Wire Wire Line
	1700 1300 1700 950 
Wire Wire Line
	1700 950  1250 950 
Wire Wire Line
	1700 2000 2450 2000
Wire Wire Line
	2450 2000 2450 1600
Connection ~ 1700 2000
Wire Wire Line
	2450 1300 2450 950 
Wire Wire Line
	2450 950  1700 950 
Connection ~ 1700 950 
NoConn ~ 6550 1950
Text Label 5750 2350 2    50   ~ 0
USART_RX
Wire Wire Line
	5750 2350 5950 2350
Text Label 5750 2450 2    50   ~ 0
USART_TX
Wire Wire Line
	5750 2450 5950 2450
NoConn ~ 6350 1950
Text Label 6650 1800 0    50   ~ 0
5v
Wire Wire Line
	6650 1800 6650 1950
NoConn ~ 6950 2350
NoConn ~ 6950 2550
NoConn ~ 6950 2750
Text Label 6150 4150 2    50   ~ 0
GND
Wire Wire Line
	6150 4150 6350 4150
Wire Wire Line
	6350 4150 6350 4050
Wire Wire Line
	6350 4150 6450 4150
Wire Wire Line
	6450 4150 6450 4050
Connection ~ 6350 4150
Wire Wire Line
	6450 4150 6550 4150
Wire Wire Line
	6550 4150 6550 4050
Connection ~ 6450 4150
$Comp
L Device:R R1
U 1 1 5C9368A7
P 4300 4800
F 0 "R1" H 4370 4891 50  0000 L CNN
F 1 "120" H 4370 4800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" V 4230 4800 50  0001 C CNN
F 3 "~" H 4300 4800 50  0001 C CNN
F 4 "A126336CT-ND" H 4370 4709 50  0000 L CNN "PN"
	1    4300 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C936A4D
P 4300 5400
F 0 "R2" H 4370 5491 50  0000 L CNN
F 1 "120" H 4370 5400 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" V 4230 5400 50  0001 C CNN
F 3 "~" H 4300 5400 50  0001 C CNN
F 4 "A126336CT-ND" H 4370 5309 50  0000 L CNN "PN"
	1    4300 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5350 3900 5600
Wire Wire Line
	3550 5350 3900 5350
Wire Wire Line
	4550 5050 4300 5050
Wire Wire Line
	4300 5050 4300 4950
Wire Wire Line
	3550 5050 4300 5050
Connection ~ 4300 5050
Wire Wire Line
	3900 5600 4300 5600
Wire Wire Line
	4300 5550 4300 5600
Wire Wire Line
	3550 5200 4300 5200
Connection ~ 4300 5600
Wire Wire Line
	4300 5600 4550 5600
Wire Wire Line
	4300 5250 4300 5200
Connection ~ 4300 5200
Wire Wire Line
	4300 5200 4550 5200
Wire Wire Line
	4550 4600 4300 4600
Wire Wire Line
	4300 4600 4300 4650
Wire Wire Line
	3900 4900 3900 4600
Wire Wire Line
	3900 4600 4300 4600
Wire Wire Line
	3550 4900 3900 4900
Connection ~ 4300 4600
Text Label 5750 2550 2    50   ~ 0
TransEnable_TTL
Wire Wire Line
	5750 2550 5950 2550
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5C93C239
P 8750 1450
F 0 "J2" H 8830 1487 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 8830 1396 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 8750 1450 50  0001 C CNN
F 3 "~" H 8750 1450 50  0001 C CNN
F 4 "277-1667-ND" H 8830 1305 50  0000 L CNN "PN"
	1    8750 1450
	1    0    0    -1  
$EndComp
Text Label 8350 1450 2    50   ~ 0
5v
Wire Wire Line
	8350 1450 8550 1450
Text Label 8350 1550 2    50   ~ 0
A0
Wire Wire Line
	8350 1550 8450 1550
Text Label 7150 2950 0    50   ~ 0
A0
Wire Wire Line
	7150 2950 6950 2950
$Comp
L Device:R R3
U 1 1 5C93E2AE
P 8450 1800
F 0 "R3" H 8520 1891 50  0000 L CNN
F 1 "2k" H 8520 1800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" V 8380 1800 50  0001 C CNN
F 3 "~" H 8450 1800 50  0001 C CNN
F 4 "A126358CT-ND" H 8520 1709 50  0000 L CNN "PN"
	1    8450 1800
	1    0    0    -1  
$EndComp
Text Label 8450 2150 3    50   ~ 0
GND
Wire Wire Line
	8450 2150 8450 1950
Wire Wire Line
	8450 1650 8450 1550
Connection ~ 8450 1550
Wire Wire Line
	8450 1550 8550 1550
NoConn ~ 6950 3250
NoConn ~ 6950 3650
NoConn ~ 6950 3750
NoConn ~ 5950 3650
NoConn ~ 5950 3550
NoConn ~ 5950 3450
NoConn ~ 5950 3350
NoConn ~ 5950 3250
NoConn ~ 5950 3150
NoConn ~ 5950 3050
NoConn ~ 5950 2950
NoConn ~ 5950 2750
$Comp
L Connector:Conn_01x06_Male J3
U 1 1 5C944321
P 8850 3500
F 0 "J3" H 8823 3380 50  0000 R CNN
F 1 "Conn_01x06_Male" H 8823 3471 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 8850 3500 50  0001 C CNN
F 3 "~" H 8850 3500 50  0001 C CNN
	1    8850 3500
	-1   0    0    1   
$EndComp
NoConn ~ 6950 3050
NoConn ~ 6950 3150
Text Label 5750 2650 2    50   ~ 0
D3
Text Label 5750 2850 2    50   ~ 0
D5
Text Label 7150 3350 0    50   ~ 0
A4
Text Label 7150 3450 0    50   ~ 0
A5
Wire Wire Line
	7150 3350 6950 3350
Wire Wire Line
	6950 3450 7150 3450
Wire Wire Line
	5750 2650 5950 2650
Wire Wire Line
	5750 2850 5950 2850
Text Label 8450 3200 2    50   ~ 0
D3
Text Label 8450 3300 2    50   ~ 0
D5
Text Label 8450 3400 2    50   ~ 0
A4
Text Label 8450 3500 2    50   ~ 0
A5
Text Label 8450 3600 2    50   ~ 0
5v
Text Label 8450 3700 2    50   ~ 0
GND
Wire Wire Line
	8450 3700 8650 3700
Wire Wire Line
	8650 3600 8450 3600
Wire Wire Line
	8450 3500 8650 3500
Wire Wire Line
	8650 3400 8450 3400
Wire Wire Line
	8450 3300 8650 3300
Wire Wire Line
	8650 3200 8450 3200
$Comp
L Device:C C3
U 1 1 5C9AED9F
P 1700 5100
F 0 "C3" H 1500 5200 50  0000 L CNN
F 1 "2.2uF" H 1400 5100 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1738 4950 50  0001 C CNN
F 3 "~" H 1700 5100 50  0001 C CNN
F 4 "445-12947-1-ND" H 900 5000 50  0000 L CNN "PN"
	1    1700 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4900 1700 4900
Wire Wire Line
	1700 4950 1700 4900
Connection ~ 1700 4900
Wire Wire Line
	1700 4900 2700 4900
Wire Wire Line
	1350 5350 1700 5350
Wire Wire Line
	1700 5350 1700 5250
Wire Wire Line
	1700 5350 2700 5350
Connection ~ 1700 5350
$EndSCHEMATC
