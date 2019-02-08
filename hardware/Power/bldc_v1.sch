EESchema Schematic File Version 4
LIBS:bldc_v1-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 3
Title "Brushless DC Motor Controller"
Date "2019-01-30"
Rev "1"
Comp "Loma Incorporated"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3650 3150 1700 1800
U 5C526DB4
F0 "gatedrivers" 59
F1 "gatedrivers.sch" 59
F2 "12v" I L 3650 3300 50 
F3 "GND" U L 3650 3400 50 
F4 "HS_A_TTL_PWM" I L 3650 3600 50 
F5 "LS_A_TTL_PWM" I L 3650 3700 50 
F6 "HS_B_TTL_PWM" I L 3650 3900 50 
F7 "LS_B_TTL_PWM" I L 3650 4000 50 
F8 "HS_C_TTL_PWM" I L 3650 4200 50 
F9 "LS_C_TTL_PWM" I L 3650 4300 50 
F10 "HO_A" O R 5350 3450 50 
F11 "LO_A" O R 5350 3550 50 
F12 "HO_B" O R 5350 3750 50 
F13 "LO_B" O R 5350 3850 50 
F14 "HO_C" O R 5350 4050 50 
F15 "LO_C" O R 5350 4150 50 
F16 "PHASEA_SOURCE" I R 5350 4400 50 
F17 "PHASEB_SOURCE" I R 5350 4500 50 
F18 "PHASEC_SOURCE" I R 5350 4600 50 
$EndSheet
$Sheet
S 6700 3000 1700 2350
U 5C526DC3
F0 "mosfets" 59
F1 "mosfets.sch" 59
F2 "5v" I L 6700 3150 50 
F3 "48v" I L 6700 3050 50 
F4 "HO_A" I L 6700 3450 50 
F5 "GND" U L 6700 3250 50 
F6 "LO_A" I L 6700 3550 50 
F7 "HO_B" I L 6700 3750 50 
F8 "HO_C" I L 6700 4050 50 
F9 "LO_B" I L 6700 3850 50 
F10 "LO_C" I L 6700 4150 50 
F11 "PHASE_A" O R 8400 3450 50 
F12 "PHASEA_SOURCE" O L 6700 4400 50 
F13 "PHASEA_FB" O R 8400 4400 50 
F14 "PHASE_B" O R 8400 3600 50 
F15 "PHASEB_SOURCE" O L 6700 4500 50 
F16 "PHASEB_FB" O R 8400 4500 50 
F17 "PHASEC_SOURCE" O L 6700 4600 50 
F18 "PHASE_C" O R 8400 3750 50 
$EndSheet
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5C537DC1
P 1300 1350
F 0 "J1" H 1300 1050 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1300 1150 50  0000 C CNN
F 2 "" H 1300 1350 50  0001 C CNN
F 3 "~" H 1300 1350 50  0001 C CNN
F 4 " 1986660-2 " H 1300 1500 50  0000 C CNN "PN"
	1    1300 1350
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1_Small C1
U 1 1 5C537EEE
P 2200 1300
F 0 "C1" H 2291 1391 50  0000 L CNN
F 1 "1mF" H 2291 1300 50  0000 L CNN
F 2 "" H 2200 1300 50  0001 C CNN
F 3 "~" H 2200 1300 50  0001 C CNN
F 4 "80ZLH1000MEFC16X40" H 2250 1200 50  0000 L CNN "PN"
	1    2200 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1250 1900 1250
Wire Wire Line
	1500 1350 1900 1350
Wire Wire Line
	1900 950  2200 950 
Wire Wire Line
	2200 950  2200 1200
Wire Wire Line
	1900 950  1900 1250
Wire Wire Line
	2200 1400 2200 1600
Wire Wire Line
	2200 1600 1900 1600
Wire Wire Line
	1900 1350 1900 1600
$Comp
L Device:CP1_Small C2
U 1 1 5C53813F
P 3250 1300
F 0 "C2" H 3341 1391 50  0000 L CNN
F 1 "1mF" H 3341 1300 50  0000 L CNN
F 2 "" H 3250 1300 50  0001 C CNN
F 3 "~" H 3250 1300 50  0001 C CNN
F 4 "80ZLH1000MEFC16X40" H 3300 1200 50  0000 L CNN "PN"
	1    3250 1300
	1    0    0    -1  
$EndComp
Connection ~ 2200 950 
Connection ~ 2200 1600
$Comp
L Device:CP1_Small C3
U 1 1 5C538243
P 4300 1300
F 0 "C3" H 4391 1391 50  0000 L CNN
F 1 "1mF" H 4391 1300 50  0000 L CNN
F 2 "" H 4300 1300 50  0001 C CNN
F 3 "~" H 4300 1300 50  0001 C CNN
F 4 "80ZLH1000MEFC16X40" H 4350 1200 50  0000 L CNN "PN"
	1    4300 1300
	1    0    0    -1  
$EndComp
Text Label 4700 950  0    50   ~ 0
48v
Text Label 4700 1600 0    50   ~ 0
GND
Text Label 9550 1000 0    50   ~ 0
HS_A_TTL_PWM
Wire Wire Line
	9550 1000 9200 1000
Text Label 9550 1100 0    50   ~ 0
LS_A_TTL_PWM
Wire Wire Line
	9550 1100 9200 1100
Text Label 9550 1400 0    50   ~ 0
HS_C_TTL_PWM
Text Label 9550 1500 0    50   ~ 0
LS_C_TTL_PWM
Text Label 9550 1200 0    50   ~ 0
HS_B_TTL_PWM
Wire Wire Line
	9550 1200 9200 1200
Text Label 9550 1300 0    50   ~ 0
LS_B_TTL_PWM
Wire Wire Line
	9550 1300 9200 1300
Wire Wire Line
	9200 1400 9550 1400
Wire Wire Line
	9550 1500 9200 1500
$Comp
L Connector:Screw_Terminal_01x03 J3
U 1 1 5C53D1B9
P 8950 2150
F 0 "J3" H 8900 2450 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 8550 2350 50  0000 L CNN
F 2 "" H 8950 2150 50  0001 C CNN
F 3 "~" H 8950 2150 50  0001 C CNN
F 4 "1986660-3" H 8950 1950 50  0000 C CNN "PN"
	1    8950 2150
	1    0    0    -1  
$EndComp
Text Label 8350 1400 2    50   ~ 0
PHASEA_FB
Text Label 8350 1500 2    50   ~ 0
PHASEB_FB
Wire Wire Line
	8700 1500 8350 1500
Wire Wire Line
	8350 1400 8700 1400
Text Label 8400 2050 2    50   ~ 0
PHASE_A
Text Label 8400 2150 2    50   ~ 0
PHASE_B
Text Label 8400 2250 2    50   ~ 0
PHASE_C
Wire Wire Line
	8400 2050 8750 2050
Wire Wire Line
	8400 2150 8750 2150
Wire Wire Line
	8400 2250 8750 2250
Text Label 3400 3300 2    50   ~ 0
12v
Text Label 3400 3400 2    50   ~ 0
GND
Text Label 3400 3600 2    50   ~ 0
HS_A_TTL_PWM
Text Label 3400 3700 2    50   ~ 0
LS_A_TTL_PWM
Text Label 3400 3900 2    50   ~ 0
HS_B_TTL_PWM
Text Label 3400 4000 2    50   ~ 0
LS_B_TTL_PWM
Text Label 3400 4200 2    50   ~ 0
HS_C_TTL_PWM
Text Label 3400 4300 2    50   ~ 0
LS_C_TTL_PWM
Wire Wire Line
	3400 4300 3650 4300
Wire Wire Line
	3650 4200 3400 4200
Wire Wire Line
	3400 4000 3650 4000
Wire Wire Line
	3650 3900 3400 3900
Wire Wire Line
	3400 3700 3650 3700
Wire Wire Line
	3650 3600 3400 3600
Wire Wire Line
	3400 3400 3650 3400
Wire Wire Line
	3650 3300 3400 3300
Text Label 8350 1000 2    50   ~ 0
48v
Text Label 8350 1100 2    50   ~ 0
5v
Text Label 8350 1200 2    50   ~ 0
12v
Text Label 8350 1300 2    50   ~ 0
GND
Wire Wire Line
	8350 1300 8700 1300
Wire Wire Line
	8350 1000 8700 1000
Wire Wire Line
	8350 1100 8700 1100
Wire Wire Line
	8700 1200 8350 1200
NoConn ~ 9200 1600
NoConn ~ 8700 1600
Wire Wire Line
	2200 950  3250 950 
Wire Wire Line
	2200 1600 3250 1600
Wire Wire Line
	3250 1400 3250 1600
Connection ~ 3250 1600
Wire Wire Line
	3250 1200 3250 950 
Connection ~ 3250 950 
Wire Wire Line
	3250 950  4300 950 
Wire Wire Line
	3250 1600 4300 1600
Wire Wire Line
	4300 1400 4300 1600
Wire Wire Line
	4300 1200 4300 950 
Wire Wire Line
	4700 950  4300 950 
Connection ~ 4300 950 
Wire Wire Line
	4300 1600 4700 1600
Connection ~ 4300 1600
Wire Wire Line
	5350 4050 6700 4050
Wire Wire Line
	6700 4150 5350 4150
Wire Wire Line
	5350 3750 6700 3750
Wire Wire Line
	6700 3850 5350 3850
Wire Wire Line
	5350 3550 6700 3550
Wire Wire Line
	5350 3450 6700 3450
Text Label 6450 3050 2    50   ~ 0
48v
Wire Wire Line
	6450 3050 6700 3050
Text Label 6450 3250 2    50   ~ 0
GND
Wire Wire Line
	6450 3250 6700 3250
Text Label 6450 3150 2    50   ~ 0
5v
Wire Wire Line
	6450 3150 6700 3150
Wire Wire Line
	6700 4400 5350 4400
Wire Wire Line
	6700 4500 5350 4500
Wire Wire Line
	6700 4600 5350 4600
Text Label 8700 3450 0    50   ~ 0
PHASE_A
Wire Wire Line
	8400 3450 8700 3450
Text Label 8700 3600 0    50   ~ 0
PHASE_B
Wire Wire Line
	8700 3600 8400 3600
Text Label 8700 3750 0    50   ~ 0
PHASE_C
Wire Wire Line
	8700 3750 8400 3750
$Comp
L Connector_Generic:Conn_02x07_Counter_Clockwise J2
U 1 1 5C54FAB2
P 8900 1300
F 0 "J2" H 8950 1850 50  0000 C CNN
F 1 "Conn_02x07_Counter_Clockwise" H 8950 1750 50  0000 C CNN
F 2 "" H 8900 1300 50  0001 C CNN
F 3 "~" H 8900 1300 50  0001 C CNN
F 4 "302-S141" H 8950 900 50  0000 C CNN "PN"
	1    8900 1300
	1    0    0    -1  
$EndComp
Text Label 8650 4400 0    50   ~ 0
PHASEA_FB
Text Label 8650 4500 0    50   ~ 0
PHASEB_FB
Wire Wire Line
	8650 4500 8400 4500
Wire Wire Line
	8400 4400 8650 4400
$Comp
L Mechanical:Mounting_Hole MK1
U 1 1 5C55DC62
P 1850 6050
F 0 "MK1" H 1950 6096 50  0000 L CNN
F 1 "Mounting_Hole" H 1950 6005 50  0000 L CNN
F 2 "" H 1850 6050 50  0001 C CNN
F 3 "" H 1850 6050 50  0001 C CNN
	1    1850 6050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK3
U 1 1 5C55DCE5
P 3150 6050
F 0 "MK3" H 3250 6096 50  0000 L CNN
F 1 "Mounting_Hole" H 3250 6005 50  0000 L CNN
F 2 "" H 3150 6050 50  0001 C CNN
F 3 "" H 3150 6050 50  0001 C CNN
	1    3150 6050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK2
U 1 1 5C55DD35
P 1850 6700
F 0 "MK2" H 1950 6746 50  0000 L CNN
F 1 "Mounting_Hole" H 1950 6655 50  0000 L CNN
F 2 "" H 1850 6700 50  0001 C CNN
F 3 "" H 1850 6700 50  0001 C CNN
	1    1850 6700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK4
U 1 1 5C55DD86
P 3150 6700
F 0 "MK4" H 3250 6746 50  0000 L CNN
F 1 "Mounting_Hole" H 3250 6655 50  0000 L CNN
F 2 "" H 3150 6700 50  0001 C CNN
F 3 "" H 3150 6700 50  0001 C CNN
	1    3150 6700
	1    0    0    -1  
$EndComp
Wire Notes Line
	1550 5900 3850 5900
Wire Notes Line
	3850 5900 3850 6900
Wire Notes Line
	3850 6900 1550 6900
Wire Notes Line
	1550 6900 1550 5900
Text Notes 1550 5900 0    59   ~ 0
Mounting Holes
Wire Notes Line
	7800 600  10200 600 
Wire Notes Line
	10200 600  10200 2500
Wire Notes Line
	10200 2500 7800 2500
Wire Notes Line
	7800 2500 7800 600 
Text Notes 7800 600  0    59   ~ 0
Connections
Wire Notes Line
	650  700  650  2550
Wire Notes Line
	650  2550 5450 2550
Wire Notes Line
	5450 2550 5450 700 
Wire Notes Line
	5450 700  650  700 
Text Notes 650  700  0    59   ~ 0
Power Filtering
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5C5DBDE6
P 1300 2000
F 0 "J4" H 1300 1700 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1300 1800 50  0000 C CNN
F 2 "" H 1300 2000 50  0001 C CNN
F 3 "~" H 1300 2000 50  0001 C CNN
F 4 " 1986660-2 " H 1300 2150 50  0000 C CNN "PN"
	1    1300 2000
	-1   0    0    1   
$EndComp
Text Label 1750 1900 0    50   ~ 0
48v
Wire Wire Line
	1750 1900 1500 1900
Text Label 1750 2000 0    50   ~ 0
GND
Wire Wire Line
	1750 2000 1500 2000
$EndSCHEMATC
