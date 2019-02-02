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
F0 "gatedrivers" 50
F1 "gatedrivers.sch" 50
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
F0 "mosfets" 50
F1 "mosfets.sch" 50
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
P 1100 1000
F 0 "J1" H 1100 700 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1100 800 50  0000 C CNN
F 2 "" H 1100 1000 50  0001 C CNN
F 3 "~" H 1100 1000 50  0001 C CNN
F 4 " 1986660-2 " H 1100 1150 50  0000 C CNN "PN"
	1    1100 1000
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1_Small C1
U 1 1 5C537EEE
P 2000 950
F 0 "C1" H 2091 1041 50  0000 L CNN
F 1 "1mF" H 2091 950 50  0000 L CNN
F 2 "" H 2000 950 50  0001 C CNN
F 3 "~" H 2000 950 50  0001 C CNN
F 4 "80ZLH1000MEFC16X40" H 2050 850 50  0000 L CNN "PN"
	1    2000 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 900  1700 900 
Wire Wire Line
	1300 1000 1700 1000
Wire Wire Line
	1700 600  2000 600 
Wire Wire Line
	2000 600  2000 850 
Wire Wire Line
	1700 600  1700 900 
Wire Wire Line
	2000 1050 2000 1250
Wire Wire Line
	2000 1250 1700 1250
Wire Wire Line
	1700 1000 1700 1250
$Comp
L Device:CP1_Small C2
U 1 1 5C53813F
P 3050 950
F 0 "C2" H 3141 1041 50  0000 L CNN
F 1 "1mF" H 3141 950 50  0000 L CNN
F 2 "" H 3050 950 50  0001 C CNN
F 3 "~" H 3050 950 50  0001 C CNN
F 4 "80ZLH1000MEFC16X40" H 3100 850 50  0000 L CNN "PN"
	1    3050 950 
	1    0    0    -1  
$EndComp
Connection ~ 2000 600 
Connection ~ 2000 1250
$Comp
L Device:CP1_Small C3
U 1 1 5C538243
P 4100 950
F 0 "C3" H 4191 1041 50  0000 L CNN
F 1 "1mF" H 4191 950 50  0000 L CNN
F 2 "" H 4100 950 50  0001 C CNN
F 3 "~" H 4100 950 50  0001 C CNN
F 4 "80ZLH1000MEFC16X40" H 4150 850 50  0000 L CNN "PN"
	1    4100 950 
	1    0    0    -1  
$EndComp
Text Label 4500 600  0    50   ~ 0
48v
Text Label 4500 1250 0    50   ~ 0
GND
Text Label 2700 1900 0    50   ~ 0
HS_A_TTL_PWM
Wire Wire Line
	2700 1900 2350 1900
Text Label 2700 2000 0    50   ~ 0
LS_A_TTL_PWM
Wire Wire Line
	2700 2000 2350 2000
Text Label 2700 2300 0    50   ~ 0
HS_C_TTL_PWM
Text Label 2700 2400 0    50   ~ 0
LS_C_TTL_PWM
Text Label 2700 2100 0    50   ~ 0
HS_B_TTL_PWM
Wire Wire Line
	2700 2100 2350 2100
Text Label 2700 2200 0    50   ~ 0
LS_B_TTL_PWM
Wire Wire Line
	2700 2200 2350 2200
Wire Wire Line
	2350 2300 2700 2300
Wire Wire Line
	2700 2400 2350 2400
$Comp
L Connector:Screw_Terminal_01x03 J3
U 1 1 5C53D1B9
P 9800 1200
F 0 "J3" H 9750 1500 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 9400 1400 50  0000 L CNN
F 2 "" H 9800 1200 50  0001 C CNN
F 3 "~" H 9800 1200 50  0001 C CNN
F 4 "1986660-3" H 9800 1000 50  0000 C CNN "PN"
	1    9800 1200
	1    0    0    -1  
$EndComp
Text Label 1500 2300 2    50   ~ 0
PHASEA_FB
Text Label 1500 2400 2    50   ~ 0
PHASEB_FB
Wire Wire Line
	1850 2400 1500 2400
Wire Wire Line
	1500 2300 1850 2300
Text Label 9250 1100 2    50   ~ 0
PHASE_A
Text Label 9250 1200 2    50   ~ 0
PHASE_B
Text Label 9250 1300 2    50   ~ 0
PHASE_C
Wire Wire Line
	9250 1100 9600 1100
Wire Wire Line
	9250 1200 9600 1200
Wire Wire Line
	9250 1300 9600 1300
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
Text Label 1500 1900 2    50   ~ 0
48v
Text Label 1500 2000 2    50   ~ 0
5v
Text Label 1500 2100 2    50   ~ 0
12v
Text Label 1500 2200 2    50   ~ 0
GND
Wire Wire Line
	1500 2200 1850 2200
Wire Wire Line
	1500 1900 1850 1900
Wire Wire Line
	1500 2000 1850 2000
Wire Wire Line
	1850 2100 1500 2100
NoConn ~ 2350 2500
NoConn ~ 1850 2500
Wire Wire Line
	2000 600  3050 600 
Wire Wire Line
	2000 1250 3050 1250
Wire Wire Line
	3050 1050 3050 1250
Connection ~ 3050 1250
Wire Wire Line
	3050 850  3050 600 
Connection ~ 3050 600 
Wire Wire Line
	3050 600  4100 600 
Wire Wire Line
	3050 1250 4100 1250
Wire Wire Line
	4100 1050 4100 1250
Wire Wire Line
	4100 850  4100 600 
Wire Wire Line
	4500 600  4100 600 
Connection ~ 4100 600 
Wire Wire Line
	4100 1250 4500 1250
Connection ~ 4100 1250
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
P 2050 2200
F 0 "J2" H 2100 2750 50  0000 C CNN
F 1 "Conn_02x07_Counter_Clockwise" H 2100 2650 50  0000 C CNN
F 2 "" H 2050 2200 50  0001 C CNN
F 3 "~" H 2050 2200 50  0001 C CNN
F 4 "302-S141" H 2100 1800 50  0000 C CNN "PN"
	1    2050 2200
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
$EndSCHEMATC
