EESchema Schematic File Version 4
LIBS:control_v1-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "Brushless DC Motor Controller"
Date "2019-05-08"
Rev "1"
Comp "Loma Inrocporated"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L stm32discovery:STM32F4-DISCOVERY M1
U 1 1 5C589EF3
P 5600 2050
F 0 "M1" H 5600 2050 45  0001 C CNN
F 1 "STM32F4-DISCOVERY" H 5600 2250 45  0001 C CNN
F 2 "custom:STM32-F4-DISCOVERY" H 5630 2200 20  0001 C CNN
F 3 "" H 5600 2050 60  0001 C CNN
	1    5600 2050
	1    0    0    -1  
$EndComp
Text HLabel 1100 1250 0    59   UnSpc ~ 0
GND
Text HLabel 1100 1400 0    59   Input ~ 0
5v
Text Label 1350 1250 0    50   ~ 0
GND
Text Label 1350 1400 0    50   ~ 0
5v
Wire Wire Line
	1350 1250 1100 1250
Wire Wire Line
	1100 1400 1350 1400
Text Notes 6000 5150 0    59   ~ 0
STM uses 2x25 0.1" female headers on each side\nPN: SAM10038-ND
Text Label 5200 2050 2    50   ~ 0
GND
Text Label 5200 2250 2    50   ~ 0
GND
Text Label 5200 3150 2    50   ~ 0
GND
Text Label 5200 4450 2    50   ~ 0
GND
Text Label 6800 4450 0    50   ~ 0
GND
Text Label 6800 2050 0    50   ~ 0
GND
Text Label 8650 2050 2    50   ~ 0
GND
Text Label 10150 2050 0    50   ~ 0
GND
Text Label 10150 4450 0    50   ~ 0
GND
Text Label 8650 4450 2    50   ~ 0
GND
Wire Wire Line
	8650 2050 8800 2050
Wire Wire Line
	8650 4450 8800 4450
Wire Wire Line
	10150 4450 10000 4450
Wire Wire Line
	10000 2050 10150 2050
Wire Wire Line
	6800 2050 6600 2050
Wire Wire Line
	5400 2050 5200 2050
Wire Wire Line
	5200 2250 5400 2250
Wire Wire Line
	5400 3150 5200 3150
Wire Wire Line
	6800 4450 6600 4450
Wire Wire Line
	5400 4450 5200 4450
Text HLabel 1100 3150 1    49   Input ~ 0
PHASEB_FB
Text HLabel 5200 3350 0    49   Output ~ 0
HS_A_TTL_PWM
Text HLabel 5200 3450 0    49   Output ~ 0
HS_B_TTL_PWM
Text HLabel 5200 3550 0    49   Output ~ 0
HS_C_TTL_PWM
Wire Wire Line
	5200 3350 5400 3350
Wire Wire Line
	5400 3450 5200 3450
Wire Wire Line
	5200 3550 5400 3550
Text HLabel 5200 4050 0    49   BiDi ~ 0
USART_RX
Wire Wire Line
	5200 4050 5400 4050
Text HLabel 2300 3150 1    49   Input ~ 0
PHASEA_FB
Text HLabel 1100 5300 1    49   Input ~ 0
HALL_C
Wire Wire Line
	6800 3050 6600 3050
Text HLabel 6800 3250 2    49   Output ~ 0
LS_A_TTL_PWM
Text HLabel 6800 3350 2    49   Output ~ 0
LS_B_TTL_PWM
Text HLabel 6800 3450 2    49   Output ~ 0
LS_C_TTL_PWM
Wire Wire Line
	6800 3250 6600 3250
Wire Wire Line
	6600 3350 6800 3350
Wire Wire Line
	6800 3450 6600 3450
Text Label 8650 2150 2    49   ~ 0
5v
Text Label 10150 2150 0    49   ~ 0
5v
Wire Wire Line
	10150 2150 10000 2150
Wire Wire Line
	8800 2150 8650 2150
Text HLabel 3300 5300 1    49   Input ~ 0
HALL_A
Wire Wire Line
	8600 3250 8800 3250
Text HLabel 2200 5300 1    49   Input ~ 0
HALL_B
Wire Wire Line
	10200 3250 10000 3250
NoConn ~ 6600 2250
NoConn ~ 6600 2350
NoConn ~ 6600 2450
NoConn ~ 6600 2550
NoConn ~ 6600 2650
NoConn ~ 6600 2750
NoConn ~ 6600 2850
NoConn ~ 6600 3150
NoConn ~ 6600 3550
NoConn ~ 6600 3650
NoConn ~ 6600 3750
NoConn ~ 6600 3850
NoConn ~ 6600 4050
NoConn ~ 6600 4150
NoConn ~ 6600 4250
NoConn ~ 6600 4350
NoConn ~ 5400 4350
NoConn ~ 5400 4250
NoConn ~ 5400 4150
NoConn ~ 5400 3950
NoConn ~ 5400 3850
NoConn ~ 5400 3750
NoConn ~ 5400 3650
NoConn ~ 5400 3250
NoConn ~ 5400 3050
NoConn ~ 5400 2850
NoConn ~ 5400 2750
NoConn ~ 5400 2650
NoConn ~ 5400 2350
NoConn ~ 8800 2350
NoConn ~ 8800 2450
NoConn ~ 8800 2550
NoConn ~ 8800 2650
NoConn ~ 8800 2750
NoConn ~ 8800 2850
NoConn ~ 8800 3050
NoConn ~ 8800 3150
NoConn ~ 8800 3350
NoConn ~ 8800 3450
NoConn ~ 8800 3550
NoConn ~ 8800 3650
NoConn ~ 8800 3750
NoConn ~ 8800 3850
NoConn ~ 8800 3950
NoConn ~ 8800 4050
NoConn ~ 8800 4150
NoConn ~ 8800 4250
NoConn ~ 8800 4350
NoConn ~ 10000 4350
NoConn ~ 10000 4250
NoConn ~ 10000 4150
NoConn ~ 10000 4050
NoConn ~ 10000 3950
NoConn ~ 10000 3850
NoConn ~ 10000 3750
NoConn ~ 10000 3650
NoConn ~ 10000 3550
NoConn ~ 10000 3450
NoConn ~ 10000 3350
NoConn ~ 10000 3050
NoConn ~ 10000 2950
NoConn ~ 10000 2850
NoConn ~ 10000 2750
NoConn ~ 10000 2650
NoConn ~ 10000 2550
NoConn ~ 10000 2450
NoConn ~ 10000 2350
Text HLabel 6800 3950 2    49   BiDi ~ 0
USART_TX
Wire Wire Line
	6800 3950 6600 3950
$Comp
L Device:R_Small R6
U 1 1 5C590F83
P 1100 4200
F 0 "R6" H 1150 4300 50  0000 L CNN
F 1 "2.0k" H 1150 4200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" V 1030 4200 50  0001 C CNN
F 3 "~" H 1100 4200 50  0001 C CNN
F 4 "A126358CT-ND" V 1000 3900 50  0000 L CNN "PN"
	1    1100 4200
	1    0    0    -1  
$EndComp
Text Label 1100 4550 3    50   ~ 0
GND
$Comp
L Device:R_Small R5
U 1 1 5C591E6C
P 1100 3550
F 0 "R5" H 1150 3600 50  0000 L CNN
F 1 "680" H 1150 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" V 1030 3550 50  0001 C CNN
F 3 "~" H 1100 3550 50  0001 C CNN
F 4 "A129747CT-ND" V 1000 3350 50  0000 L CNN "PN"
	1    1100 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3150 1100 3450
Wire Wire Line
	1100 4300 1100 4400
$Comp
L Device:R_Small R8
U 1 1 5C597FB4
P 2300 3550
F 0 "R8" H 2350 3600 50  0000 L CNN
F 1 "680" H 2350 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" V 2230 3550 50  0001 C CNN
F 3 "~" H 2300 3550 50  0001 C CNN
F 4 "A129747CT-ND" V 2200 3350 50  0000 L CNN "PN"
	1    2300 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5C599320
P 2300 4200
F 0 "R7" H 2350 4250 50  0000 L CNN
F 1 "2.0k" H 2350 4150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" V 2230 4200 50  0001 C CNN
F 3 "~" H 2300 4200 50  0001 C CNN
F 4 "A126358CT-ND" V 2200 3900 50  0000 L CNN "PN"
	1    2300 4200
	1    0    0    -1  
$EndComp
Text Label 2300 4550 3    50   ~ 0
GND
Text HLabel 5200 2450 0    59   Input ~ 0
AUX_1
Wire Wire Line
	5400 2450 5200 2450
Text HLabel 5200 2550 0    59   Input ~ 0
AUX_0
Wire Wire Line
	5400 2550 5200 2550
Text Label 1250 3900 0    50   ~ 0
PC5
Text Label 2450 3900 0    50   ~ 0
PC4
Wire Wire Line
	1100 3650 1100 3900
Wire Wire Line
	1250 3900 1100 3900
Connection ~ 1100 3900
Wire Wire Line
	1100 3900 1100 4000
Wire Wire Line
	2300 4300 2300 4400
Wire Wire Line
	2300 4100 2300 4000
Wire Wire Line
	2450 3900 2300 3900
Connection ~ 2300 3900
Wire Wire Line
	2300 3900 2300 3650
Wire Wire Line
	2300 3150 2300 3450
Text Label 6800 2950 0    50   ~ 0
PC4
Wire Wire Line
	6800 2950 6600 2950
Text Label 5200 2950 2    50   ~ 0
PC5
Wire Wire Line
	5200 2950 5400 2950
Text Label 6800 3050 0    50   ~ 0
HALL_C_SENSE
$Comp
L Device:R R9
U 1 1 5C646A43
P 1100 5700
F 0 "R9" H 1000 5650 50  0000 C CNN
F 1 "18k" V 1100 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" V 1030 5700 50  0001 C CNN
F 3 "~" H 1100 5700 50  0001 C CNN
F 4 "P18KDACT-ND" V 1200 5700 50  0000 C CNN "PN"
	1    1100 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	1100 5550 1100 5300
$Comp
L Device:R R10
U 1 1 5C647858
P 1100 6400
F 0 "R10" H 1200 6450 50  0000 C CNN
F 1 "30k" V 1100 6400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" V 1030 6400 50  0001 C CNN
F 3 "~" H 1100 6400 50  0001 C CNN
F 4 "P30KDACT-ND" V 1000 6350 50  0000 C CNN "PN"
	1    1100 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 6250 1100 6200
Wire Wire Line
	1100 6550 1100 6650
Text Label 1100 6800 3    59   ~ 0
GND
Text Label 1250 6050 0    50   ~ 0
HALL_C_SENSE
Wire Wire Line
	1250 6050 1100 6050
Connection ~ 1100 6050
Wire Wire Line
	1100 6050 1100 5850
$Comp
L Device:R R11
U 1 1 5C64FC11
P 2200 5700
F 0 "R11" H 2100 5650 50  0000 C CNN
F 1 "18k" V 2200 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" V 2130 5700 50  0001 C CNN
F 3 "~" H 2200 5700 50  0001 C CNN
F 4 "P18KDACT-ND" V 2300 5700 50  0000 C CNN "PN"
	1    2200 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 5550 2200 5300
$Comp
L Device:R R12
U 1 1 5C64FC19
P 2200 6400
F 0 "R12" H 2300 6450 50  0000 C CNN
F 1 "30k" V 2200 6400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" V 2130 6400 50  0001 C CNN
F 3 "~" H 2200 6400 50  0001 C CNN
F 4 "P30KDACT-ND" V 2100 6350 50  0000 C CNN "PN"
	1    2200 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6250 2200 6200
Wire Wire Line
	2200 6550 2200 6650
Text Label 2200 6800 3    59   ~ 0
GND
Text Label 2350 6050 0    50   ~ 0
HALL_B_SENSE
Wire Wire Line
	2350 6050 2200 6050
Connection ~ 2200 6050
Wire Wire Line
	2200 6050 2200 5850
$Comp
L Device:R R13
U 1 1 5C650C74
P 3300 5700
F 0 "R13" H 3200 5650 50  0000 C CNN
F 1 "18k" V 3300 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" V 3230 5700 50  0001 C CNN
F 3 "~" H 3300 5700 50  0001 C CNN
F 4 "P18KDACT-ND" V 3400 5700 50  0000 C CNN "PN"
	1    3300 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 5550 3300 5300
$Comp
L Device:R R14
U 1 1 5C650C7C
P 3300 6400
F 0 "R14" H 3400 6450 50  0000 C CNN
F 1 "30k" V 3300 6400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" V 3230 6400 50  0001 C CNN
F 3 "~" H 3300 6400 50  0001 C CNN
F 4 "P30KDACT-ND" V 3200 6350 50  0000 C CNN "PN"
	1    3300 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 6250 3300 6200
Wire Wire Line
	3300 6550 3300 6650
Text Label 3300 6800 3    59   ~ 0
GND
Text Label 3450 6050 0    50   ~ 0
HALL_A_SENSE
Wire Wire Line
	3450 6050 3300 6050
Connection ~ 3300 6050
Wire Wire Line
	3300 6050 3300 5850
Text Label 10200 3250 0    50   ~ 0
HALL_B_SENSE
Text Label 8600 3250 2    50   ~ 0
HALL_A_SENSE
$Comp
L Device:C_Small C7
U 1 1 5C6568BA
P 1400 6400
F 0 "C7" H 1500 6500 50  0000 L CNN
F 1 "2.2nF" H 1500 6400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.33x1.40mm_HandSolder" H 1400 6400 50  0001 C CNN
F 3 "~" H 1400 6400 50  0001 C CNN
F 4 "478-3753-1-ND" H 1450 6300 39  0000 L CNN "PN"
	1    1400 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 6200 1100 6200
Connection ~ 1100 6200
Wire Wire Line
	1100 6200 1100 6050
Wire Wire Line
	1400 6650 1100 6650
Connection ~ 1100 6650
Wire Wire Line
	1100 6650 1100 6800
$Comp
L Device:C_Small C8
U 1 1 5C6595FA
P 2500 6400
F 0 "C8" H 2600 6500 50  0000 L CNN
F 1 "2.2nF" H 2600 6400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.33x1.40mm_HandSolder" H 2500 6400 50  0001 C CNN
F 3 "~" H 2500 6400 50  0001 C CNN
F 4 "478-3753-1-ND" H 2550 6300 39  0000 L CNN "PN"
	1    2500 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 6300 2500 6200
Wire Wire Line
	2500 6200 2200 6200
Connection ~ 2200 6200
Wire Wire Line
	2200 6200 2200 6050
Wire Wire Line
	2500 6500 2500 6650
Wire Wire Line
	2500 6650 2200 6650
Connection ~ 2200 6650
Wire Wire Line
	2200 6650 2200 6800
$Comp
L Device:C_Small C9
U 1 1 5C65C44B
P 3600 6400
F 0 "C9" H 3700 6500 50  0000 L CNN
F 1 "2.2nF" H 3700 6400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.33x1.40mm_HandSolder" H 3600 6400 50  0001 C CNN
F 3 "~" H 3600 6400 50  0001 C CNN
F 4 "478-3753-1-ND" H 3650 6300 39  0000 L CNN "PN"
	1    3600 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6300 3600 6200
Wire Wire Line
	3600 6200 3300 6200
Connection ~ 3300 6200
Wire Wire Line
	3300 6200 3300 6050
Wire Wire Line
	3600 6500 3600 6650
Wire Wire Line
	3600 6650 3300 6650
Connection ~ 3300 6650
Wire Wire Line
	3300 6650 3300 6800
$Comp
L Device:C_Small C10
U 1 1 5C661CE6
P 1400 4200
F 0 "C10" H 1500 4300 50  0000 L CNN
F 1 "2.2nF" H 1500 4200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.33x1.40mm_HandSolder" H 1400 4200 50  0001 C CNN
F 3 "~" H 1400 4200 50  0001 C CNN
F 4 "478-3753-1-ND" H 1450 4100 39  0000 L CNN "PN"
	1    1400 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4100 1400 4000
Wire Wire Line
	1400 4000 1100 4000
Connection ~ 1100 4000
Wire Wire Line
	1100 4000 1100 4100
Wire Wire Line
	1400 4300 1400 4400
Wire Wire Line
	1400 4400 1100 4400
Connection ~ 1100 4400
Wire Wire Line
	1100 4400 1100 4550
$Comp
L Device:C_Small C11
U 1 1 5C6679E3
P 2650 4200
F 0 "C11" H 2750 4300 50  0000 L CNN
F 1 "2.2nF" H 2750 4200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.33x1.40mm_HandSolder" H 2650 4200 50  0001 C CNN
F 3 "~" H 2650 4200 50  0001 C CNN
F 4 "478-3753-1-ND" H 2700 4100 39  0000 L CNN "PN"
	1    2650 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4100 2650 4000
Wire Wire Line
	2650 4000 2300 4000
Connection ~ 2300 4000
Wire Wire Line
	2300 4000 2300 3900
Wire Wire Line
	2650 4300 2650 4400
Wire Wire Line
	2650 4400 2300 4400
Connection ~ 2300 4400
Wire Wire Line
	2300 4400 2300 4550
Wire Notes Line
	750  2450 4250 2450
Wire Notes Line
	4250 2450 4250 7100
Wire Notes Line
	4250 7100 750  7100
Wire Notes Line
	750  7100 750  2450
Text Notes 750  2450 0    59   ~ 0
Signal Filtering
NoConn ~ 5400 2150
NoConn ~ 6600 2150
NoConn ~ 8800 2250
NoConn ~ 10000 2250
Wire Wire Line
	1400 6500 1400 6650
Wire Wire Line
	1400 6300 1400 6200
NoConn ~ 10000 3150
NoConn ~ 8800 2950
$EndSCHEMATC
