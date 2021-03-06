EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 3
Title "Brushless DC Motor Controller"
Date "2019-05-08"
Rev "1"
Comp "Loma Inrocporated"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4900 1400 2100 1850
U 5C55A735
F0 "microcontroller" 59
F1 "microcontroller.sch" 59
F2 "GND" U L 4900 1650 49 
F3 "5v" I L 4900 1550 49 
F4 "PHASEB_FB" I L 4900 2000 49 
F5 "HS_A_TTL_PWM" O R 7000 2000 49 
F6 "HS_B_TTL_PWM" O R 7000 2300 49 
F7 "HS_C_TTL_PWM" O R 7000 2600 49 
F8 "USART_RX" B L 4900 2200 49 
F9 "PHASEA_FB" I L 4900 1900 49 
F10 "HALL_A" I L 4900 2800 49 
F11 "LS_A_TTL_PWM" O R 7000 2100 49 
F12 "LS_B_TTL_PWM" O R 7000 2400 49 
F13 "LS_C_TTL_PWM" O R 7000 2700 49 
F14 "HALL_B" I L 4900 2900 49 
F15 "HALL_C" I L 4900 3000 49 
F16 "USART_TX" B L 4900 2300 49 
F17 "AUX_1" I R 7000 3100 59 
F18 "AUX_0" I R 7000 3000 59 
$EndSheet
$Comp
L Connector_Generic:Conn_02x07_Counter_Clockwise J1
U 1 1 5C55A825
P 1750 2150
F 0 "J1" H 1800 2700 50  0000 C CNN
F 1 "Conn_02x07_Counter_Clockwise" H 1800 2600 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x07_P2.54mm_Vertical" H 1750 2150 50  0001 C CNN
F 3 "~" H 1750 2150 50  0001 C CNN
F 4 "ED10522-ND" H 1800 1750 50  0000 C CNN "PN"
	1    1750 2150
	1    0    0    -1  
$EndComp
Text Label 2400 1850 0    50   ~ 0
HS_A_TTL_PWM
Wire Wire Line
	2400 1850 2050 1850
Text Label 2400 1950 0    50   ~ 0
LS_A_TTL_PWM
Wire Wire Line
	2400 1950 2050 1950
Text Label 2400 2050 0    50   ~ 0
HS_B_TTL_PWM
Wire Wire Line
	2400 2050 2050 2050
Text Label 2400 2150 0    50   ~ 0
LS_B_TTL_PWM
Wire Wire Line
	2400 2150 2050 2150
Text Label 2400 2250 0    50   ~ 0
HS_C_TTL_PWM
Wire Wire Line
	2400 2250 2050 2250
Text Label 2400 2350 0    50   ~ 0
LS_C_TTL_PWM
Wire Wire Line
	2400 2350 2050 2350
Text Label 1250 1850 2    50   ~ 0
48v
Text Label 1250 1950 2    50   ~ 0
5v
Text Label 1250 2050 2    50   ~ 0
12v
Text Label 1250 2150 2    50   ~ 0
GND
Text Label 1250 2250 2    50   ~ 0
PHASEA_FB
Text Label 1250 2350 2    50   ~ 0
PHASEB_FB
Wire Wire Line
	1250 2350 1550 2350
Wire Wire Line
	1550 2250 1250 2250
Wire Wire Line
	1250 2150 1550 2150
Wire Wire Line
	1550 2050 1250 2050
Wire Wire Line
	1250 1950 1550 1950
Wire Wire Line
	1550 1850 1250 1850
$Comp
L Connector:Screw_Terminal_01x05 J2
U 1 1 5C55B155
P 1600 3550
F 0 "J2" H 1520 3125 50  0000 C CNN
F 1 "Screw_Terminal_01x05" H 1520 3216 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-5-5.08_1x05_P5.08mm_Horizontal" H 1600 3550 50  0001 C CNN
F 3 "~" H 1600 3550 50  0001 C CNN
F 4 "ED2612-ND" V 1700 3550 50  0000 C CNN "PN"
	1    1600 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 4850 1800 4850
Wire Wire Line
	2200 4950 1800 4950
Text Label 2200 5050 0    59   ~ 0
GND
Text Label 2200 5350 0    59   ~ 0
5v
Wire Wire Line
	2200 5350 1800 5350
NoConn ~ 1800 5250
Text Label 6450 5500 2    50   ~ 0
USART_RX
Text Label 6450 5650 2    50   ~ 0
USART_TX
Text Label 2250 3450 0    50   ~ 0
GND
Text Label 2250 3350 0    50   ~ 0
5v
Wire Wire Line
	2250 3350 1800 3350
Wire Wire Line
	1800 3450 2250 3450
Text Label 2250 3550 0    50   ~ 0
HALL_A
Text Label 2250 3650 0    50   ~ 0
HALL_B
Text Label 2250 3750 0    50   ~ 0
HALL_C
Wire Wire Line
	2250 3550 1800 3550
Wire Wire Line
	1800 3650 2250 3650
Wire Wire Line
	2250 3750 1800 3750
Wire Notes Line
	700  1450 700  5900
Wire Notes Line
	700  5900 3100 5900
Wire Notes Line
	3100 5900 3100 1450
Wire Notes Line
	3100 1450 700  1450
Text Notes 700  1450 0    59   ~ 0
Connections
$Comp
L Mechanical:MountingHole_Pad MK1
U 1 1 5C58A6B3
P 1000 6850
F 0 "MK1" H 1100 6896 50  0000 L CNN
F 1 "Mounting_Hole" H 1100 6805 50  0000 L CNN
F 2 "MountingHole:MountingHole_5.3mm_M5_DIN965_Pad" H 1000 6850 50  0001 C CNN
F 3 "" H 1000 6850 50  0001 C CNN
	1    1000 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad MK3
U 1 1 5C58A722
P 2200 6850
F 0 "MK3" H 2300 6896 50  0000 L CNN
F 1 "Mounting_Hole" H 2300 6805 50  0000 L CNN
F 2 "MountingHole:MountingHole_5.3mm_M5_DIN965_Pad" H 2200 6850 50  0001 C CNN
F 3 "" H 2200 6850 50  0001 C CNN
	1    2200 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad MK2
U 1 1 5C58A768
P 1000 7350
F 0 "MK2" H 1100 7396 50  0000 L CNN
F 1 "Mounting_Hole" H 1100 7305 50  0000 L CNN
F 2 "MountingHole:MountingHole_5.3mm_M5_DIN965_Pad" H 1000 7350 50  0001 C CNN
F 3 "" H 1000 7350 50  0001 C CNN
	1    1000 7350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad MK4
U 1 1 5C58A7A5
P 2200 7350
F 0 "MK4" H 2300 7396 50  0000 L CNN
F 1 "Mounting_Hole" H 2300 7305 50  0000 L CNN
F 2 "MountingHole:MountingHole_5.3mm_M5_DIN965_Pad" H 2200 7350 50  0001 C CNN
F 3 "" H 2200 7350 50  0001 C CNN
	1    2200 7350
	1    0    0    -1  
$EndComp
Wire Notes Line
	800  6650 800  7700
Wire Notes Line
	800  7700 2950 7700
Wire Notes Line
	2950 7700 2950 6650
Wire Notes Line
	2950 6650 800  6650
Text Notes 800  6650 0    59   ~ 0
Mounting Holes
Text Label 4700 2800 2    50   ~ 0
HALL_A
Text Label 4700 2900 2    49   ~ 0
HALL_B
Text Label 4700 3000 2    49   ~ 0
HALL_C
Wire Wire Line
	4700 2800 4900 2800
Wire Wire Line
	4900 2900 4700 2900
Wire Wire Line
	4700 3000 4900 3000
Text Label 4700 2200 2    49   ~ 0
USART_RX
Text Label 4700 2300 2    49   ~ 0
USART_TX
Wire Wire Line
	4700 2300 4900 2300
Wire Wire Line
	4900 2200 4700 2200
Text Label 4700 2000 2    49   ~ 0
PHASEB_FB
Text Label 4700 1900 2    49   ~ 0
PHASEA_FB
Wire Wire Line
	4700 1900 4900 1900
Wire Wire Line
	4900 2000 4700 2000
Text Label 4700 1550 2    49   ~ 0
5v
Text Label 4700 1650 2    49   ~ 0
GND
Wire Wire Line
	4700 1550 4900 1550
Wire Wire Line
	4900 1650 4700 1650
Text Label 7200 2000 0    49   ~ 0
HS_A_TTL_PWM
Text Label 7200 2100 0    49   ~ 0
LS_A_TTL_PWM
Text Label 7200 2300 0    49   ~ 0
HS_B_TTL_PWM
Text Label 7200 2400 0    49   ~ 0
LS_B_TTL_PWM
Wire Wire Line
	7200 2400 7000 2400
Wire Wire Line
	7000 2300 7200 2300
Wire Wire Line
	7200 2100 7000 2100
Wire Wire Line
	7000 2000 7200 2000
Text Label 7200 2600 0    49   ~ 0
HS_C_TTL_PWM
Wire Wire Line
	7200 2600 7000 2600
Text Label 7200 2700 0    49   ~ 0
LS_C_TTL_PWM
Wire Wire Line
	7200 2700 7000 2700
$Sheet
S 5450 3800 900  600 
U 5C56238F
F0 "powerconverters" 59
F1 "powerconverters.sch" 59
F2 "48v" I L 5450 4050 59 
F3 "GND" O L 5450 4150 59 
F4 "12v" O R 6350 4050 59 
F5 "5v" O R 6350 4150 59 
F6 "TransEnale_TTL" I L 5450 4250 59 
$EndSheet
Text Label 5250 4050 2    59   ~ 0
48v
Text Label 5250 4150 2    59   ~ 0
GND
Text Label 6550 4050 0    59   ~ 0
12v
Text Label 6550 4150 0    59   ~ 0
5v
Wire Wire Line
	5250 4050 5450 4050
Wire Wire Line
	5450 4150 5250 4150
Wire Wire Line
	6350 4150 6550 4150
Wire Wire Line
	6350 4050 6550 4050
Text Label 2400 2450 0    59   ~ 0
AUX_1
Wire Wire Line
	2050 2450 2400 2450
Text Label 7200 3100 0    59   ~ 0
AUX_1
Text Label 1250 2450 2    59   ~ 0
AUX_0
Wire Wire Line
	1250 2450 1550 2450
Wire Wire Line
	7200 3100 7000 3100
Text Label 7200 3000 0    59   ~ 0
AUX_0
Wire Wire Line
	7200 3000 7000 3000
Text Label 5250 4250 2    59   ~ 0
TransEnable_TTL
Wire Wire Line
	5250 4250 5450 4250
Text Label 2200 5150 0    59   ~ 0
TransEnable_TTL
Wire Wire Line
	2200 5150 1800 5150
Wire Wire Line
	2200 5050 1800 5050
Text Label 2200 6950 3    50   ~ 0
GND
Text Label 1000 6950 3    50   ~ 0
GND
Text Label 1000 7450 3    50   ~ 0
GND
Text Label 2200 7450 3    50   ~ 0
GND
$Comp
L Interface_RS485:DS89C21 U3
U 1 1 5C943CE3
P 6950 5450
F 0 "U3" H 6975 5836 59  0000 C CNN
F 1 "DS89C21" H 6975 5731 59  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6850 5700 59  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ds89c21.pdf" H 6950 5800 59  0001 C CNN
	1    6950 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5650 6550 5650
Wire Wire Line
	6450 5500 6550 5500
Text Label 5250 5350 2    50   ~ 0
5v
Text Label 5250 5800 2    50   ~ 0
GND
Text Label 9350 5050 0    59   ~ 0
+RX
Text Label 9350 5500 0    59   ~ 0
-RX
Text Label 9350 5650 0    59   ~ 0
+TX
Text Label 9350 6150 0    59   ~ 0
-TX
Text Label 2200 4950 0    59   ~ 0
+RX
Text Label 2200 4850 0    59   ~ 0
-RX
Text Label 2200 5450 0    59   ~ 0
+TX
Text Label 2200 5550 0    59   ~ 0
-TX
$Comp
L Connector:RJ45 J4
U 1 1 5C55B055
P 1400 5250
F 0 "J4" H 1455 5917 50  0000 C CNN
F 1 "RJ45" H 1455 5826 50  0000 C CNN
F 2 "Connector_RJ:RJ45_Amphenol_54602-x08_Horizontal" V 1400 5275 50  0001 C CNN
F 3 "~" V 1400 5275 50  0001 C CNN
F 4 "609-1046-ND" H 1400 4800 50  0000 C CNN "PN"
	1    1400 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5450 2200 5450
Wire Wire Line
	2200 5550 1800 5550
$Comp
L Device:R R17
U 1 1 5C942AB2
P 8600 5300
F 0 "R17" H 8670 5391 50  0000 L CNN
F 1 "120" H 8670 5300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" V 8530 5300 50  0001 C CNN
F 3 "~" H 8600 5300 50  0001 C CNN
F 4 "A126336CT-ND" H 8670 5209 50  0000 L CNN "PN"
	1    8600 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5450 8600 5500
Connection ~ 8600 5500
Wire Wire Line
	8600 5500 9350 5500
Wire Wire Line
	9350 5050 8600 5050
Wire Wire Line
	8600 5050 8600 5150
Connection ~ 8600 5050
$Comp
L Device:R R18
U 1 1 5C94C529
P 8600 5900
F 0 "R18" H 8670 5991 50  0000 L CNN
F 1 "120" H 8670 5900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" V 8530 5900 50  0001 C CNN
F 3 "~" H 8600 5900 50  0001 C CNN
F 4 "A126336CT-ND" H 8670 5809 50  0000 L CNN "PN"
	1    8600 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 6150 8600 6150
Wire Wire Line
	8600 6150 8600 6050
Connection ~ 8600 6150
$Comp
L Device:C C12
U 1 1 5C9AF294
P 5600 5550
F 0 "C12" H 5350 5650 50  0000 L CNN
F 1 "2.2uF" H 5300 5550 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5638 5400 50  0001 C CNN
F 3 "~" H 5600 5550 50  0001 C CNN
F 4 "445-12947-1-ND" H 4800 5450 50  0000 L CNN "PN"
	1    5600 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 5350 5600 5350
Wire Wire Line
	5250 5800 5600 5800
Wire Wire Line
	5600 5700 5600 5800
Connection ~ 5600 5800
Wire Wire Line
	5600 5800 6550 5800
Wire Wire Line
	5600 5400 5600 5350
Connection ~ 5600 5350
Wire Wire Line
	5600 5350 6550 5350
Wire Wire Line
	7400 5350 7650 5350
Wire Wire Line
	7650 5050 8600 5050
Wire Wire Line
	7400 5650 8600 5650
Connection ~ 8600 5650
Wire Wire Line
	8600 5650 8600 5750
Wire Wire Line
	9350 5650 8600 5650
Wire Wire Line
	7750 6150 7750 5800
Wire Wire Line
	7750 5800 7400 5800
Wire Wire Line
	7750 6150 8600 6150
Wire Wire Line
	7400 5500 8600 5500
Wire Wire Line
	7650 5350 7650 5050
$EndSCHEMATC
