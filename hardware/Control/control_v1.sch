EESchema Schematic File Version 4
LIBS:control_v1-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 3
Title "Brushless DC Motor Controller"
Date "2019-02-02"
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
F14 "I2C_SCL" B L 4900 2500 49 
F15 "I2C_SDA" B L 4900 2600 49 
F16 "HALL_B" I L 4900 2900 49 
F17 "HALL_C" I L 4900 3000 49 
F18 "USART_TX" B L 4900 2300 49 
$EndSheet
$Comp
L Connector_Generic:Conn_02x07_Counter_Clockwise J1
U 1 1 5C55A825
P 1750 2150
F 0 "J1" H 1800 2700 50  0000 C CNN
F 1 "Conn_02x07_Counter_Clockwise" H 1800 2600 50  0000 C CNN
F 2 "" H 1750 2150 50  0001 C CNN
F 3 "~" H 1750 2150 50  0001 C CNN
F 4 "302-S141" H 1800 1750 50  0000 C CNN "PN"
	1    1750 2150
	1    0    0    -1  
$EndComp
NoConn ~ 2050 2450
NoConn ~ 1550 2450
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
L Connector:RJ45 J4
U 1 1 5C55B055
P 1750 5250
F 0 "J4" H 1805 5917 50  0000 C CNN
F 1 "RJ45" H 1805 5826 50  0000 C CNN
F 2 "" V 1750 5275 50  0001 C CNN
F 3 "~" V 1750 5275 50  0001 C CNN
F 4 "SS-6488S-A-NF" H 1750 4800 50  0000 C CNN "PN"
	1    1750 5250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x05 J2
U 1 1 5C55B155
P 1750 3200
F 0 "J2" H 1670 2775 50  0000 C CNN
F 1 "Screw_Terminal_01x05" H 1670 2866 50  0000 C CNN
F 2 "" H 1750 3200 50  0001 C CNN
F 3 "~" H 1750 3200 50  0001 C CNN
F 4 "1935190" V 1850 3200 50  0000 C CNN "PN"
	1    1750 3200
	-1   0    0    1   
$EndComp
Text Label 2550 4850 0    50   ~ 0
I2C_SDA
Text Label 2550 4950 0    50   ~ 0
I2C_SCL
Wire Wire Line
	2550 4850 2150 4850
Wire Wire Line
	2550 4950 2150 4950
Text Label 2550 5050 0    50   ~ 0
GND
Wire Wire Line
	2550 5050 2150 5050
Text Label 2550 5350 0    50   ~ 0
5v
Wire Wire Line
	2550 5350 2150 5350
NoConn ~ 2150 5150
NoConn ~ 2150 5250
NoConn ~ 2150 5450
NoConn ~ 2150 5550
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 5C584728
P 1750 4150
F 0 "J3" H 1650 3650 50  0000 C CNN
F 1 "Conn_01x06" H 1600 3750 50  0000 C CNN
F 2 "" H 1750 4150 50  0001 C CNN
F 3 "~" H 1750 4150 50  0001 C CNN
F 4 "TSM-106-01-L-SV" V 1900 4100 50  0000 C CNN "PN"
	1    1750 4150
	-1   0    0    1   
$EndComp
Text Label 2300 3850 0    50   ~ 0
GND
Text Label 2300 4150 0    50   ~ 0
USART_RX
Text Label 2300 4250 0    50   ~ 0
USART_TX
Wire Wire Line
	2300 4250 1950 4250
Wire Wire Line
	1950 4150 2300 4150
Wire Wire Line
	2300 3850 1950 3850
NoConn ~ 1950 3950
NoConn ~ 1950 4050
NoConn ~ 1950 4350
Text Label 2400 3100 0    50   ~ 0
GND
Text Label 2400 3000 0    50   ~ 0
5v
Wire Wire Line
	2400 3000 1950 3000
Wire Wire Line
	1950 3100 2400 3100
Text Label 2400 3200 0    50   ~ 0
HALL_A
Text Label 2400 3300 0    50   ~ 0
HALL_B
Text Label 2400 3400 0    50   ~ 0
HALL_C
Wire Wire Line
	2400 3200 1950 3200
Wire Wire Line
	1950 3300 2400 3300
Wire Wire Line
	2400 3400 1950 3400
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
L Mechanical:Mounting_Hole MK1
U 1 1 5C58A6B3
P 1000 6850
F 0 "MK1" H 1100 6896 50  0000 L CNN
F 1 "Mounting_Hole" H 1100 6805 50  0000 L CNN
F 2 "" H 1000 6850 50  0001 C CNN
F 3 "" H 1000 6850 50  0001 C CNN
	1    1000 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK3
U 1 1 5C58A722
P 2200 6850
F 0 "MK3" H 2300 6896 50  0000 L CNN
F 1 "Mounting_Hole" H 2300 6805 50  0000 L CNN
F 2 "" H 2200 6850 50  0001 C CNN
F 3 "" H 2200 6850 50  0001 C CNN
	1    2200 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK2
U 1 1 5C58A768
P 1000 7350
F 0 "MK2" H 1100 7396 50  0000 L CNN
F 1 "Mounting_Hole" H 1100 7305 50  0000 L CNN
F 2 "" H 1000 7350 50  0001 C CNN
F 3 "" H 1000 7350 50  0001 C CNN
	1    1000 7350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK4
U 1 1 5C58A7A5
P 2200 7350
F 0 "MK4" H 2300 7396 50  0000 L CNN
F 1 "Mounting_Hole" H 2300 7305 50  0000 L CNN
F 2 "" H 2200 7350 50  0001 C CNN
F 3 "" H 2200 7350 50  0001 C CNN
	1    2200 7350
	1    0    0    -1  
$EndComp
Wire Notes Line
	800  6650 800  7550
Wire Notes Line
	800  7550 2950 7550
Wire Notes Line
	2950 7550 2950 6650
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
Text Label 4700 2600 2    49   ~ 0
I2C_SDA
Text Label 4700 2500 2    49   ~ 0
I2C_SCL
Wire Wire Line
	4700 2500 4900 2500
Wire Wire Line
	4900 2600 4700 2600
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
$EndSCHEMATC
