EESchema Schematic File Version 4
LIBS:bldc_v1-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "Brushless DC Motor Controller"
Date "2019-01-30"
Rev "1"
Comp "Loma Incorporated"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1800 1000 0    50   Input ~ 0
12v
Text HLabel 1800 1250 0    50   UnSpc ~ 0
GND
Text HLabel 1750 2000 0    50   Input ~ 0
HS_A_TTL_PWM
Text HLabel 1750 2150 0    50   Input ~ 0
LS_A_TTL_PWM
Text HLabel 1750 2300 0    50   Input ~ 0
HS_B_TTL_PWM
Text HLabel 1750 2450 0    50   Input ~ 0
LS_B_TTL_PWM
Text HLabel 1750 2600 0    50   Input ~ 0
HS_C_TTL_PWM
Text HLabel 1750 2750 0    50   Input ~ 0
LS_C_TTL_PWM
Text Label 2050 2000 0    50   ~ 0
HS_A_TTL_PWM
Text Label 2050 2150 0    50   ~ 0
LS_A_TTL_PWM
Text Label 2050 2300 0    50   ~ 0
HS_B_TTL_PWM
Text Label 2050 2450 0    50   ~ 0
LS_B_TTL_PWM
Text Label 2050 2600 0    50   ~ 0
HS_C_TTL_PWM
Text Label 2050 2750 0    50   ~ 0
LS_C_TTL_PWM
Wire Wire Line
	1750 2000 2050 2000
Wire Wire Line
	2050 2150 1750 2150
Wire Wire Line
	1750 2300 2050 2300
Wire Wire Line
	2050 2450 1750 2450
Wire Wire Line
	1750 2600 2050 2600
Wire Wire Line
	2050 2750 1750 2750
Text Label 2000 1000 0    50   ~ 0
12v
Text Label 2000 1250 0    50   ~ 0
GND
Wire Wire Line
	1800 1000 2000 1000
Wire Wire Line
	1800 1250 2000 1250
Text HLabel 1700 3950 0    50   Input ~ 0
PHASEA_SOURCE
Text HLabel 1700 4150 0    50   Input ~ 0
PHASEB_SOURCE
Text HLabel 1700 4350 0    50   Input ~ 0
PHASEC_SOURCE
Text Label 2050 3950 0    50   ~ 0
PHASEA_SOURCE
Text Label 2050 4150 0    50   ~ 0
PHASEB_SOURCE
Text Label 2050 4350 0    50   ~ 0
PHASEC_SOURCE
Wire Wire Line
	1700 3950 2050 3950
Wire Wire Line
	2050 4150 1700 4150
Wire Wire Line
	1700 4350 2050 4350
Text HLabel 9450 1600 2    50   Output ~ 0
HO_A
Text HLabel 9450 1700 2    50   Output ~ 0
LO_A
Text HLabel 9450 1900 2    50   Output ~ 0
HO_B
Text HLabel 9450 2000 2    50   Output ~ 0
LO_B
Text HLabel 9450 2200 2    50   Output ~ 0
HO_C
Text HLabel 9450 2300 2    50   Output ~ 0
LO_C
$Comp
L Device:C_Small C11
U 1 1 5C53F676
P 6250 1150
F 0 "C11" V 6050 1150 50  0000 C CNN
F 1 "10.0u" V 6150 1150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6250 1150 50  0001 C CNN
F 3 "~" H 6250 1150 50  0001 C CNN
F 4 "445-14418-1-ND" V 6350 1150 50  0000 C CNN "PN"
	1    6250 1150
	0    1    1    0   
$EndComp
$Comp
L infineon:UCC2720xA U1
U 1 1 5C53F8CE
P 6150 1800
F 0 "U1" H 6250 2137 60  0000 C CNN
F 1 "UCC27211A" H 6250 2031 60  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6150 1800 60  0001 C CNN
F 3 "" H 6150 1800 60  0001 C CNN
	1    6150 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1150 5600 1150
Wire Wire Line
	5600 1150 5600 1750
Wire Wire Line
	5600 1750 5850 1750
Text Label 7550 1150 0    50   ~ 0
GND
Text Label 4750 2050 2    50   ~ 0
PHASEA_SOURCE
Text Label 6850 1750 0    50   ~ 0
LO_A
Wire Wire Line
	6850 1750 6650 1750
Wire Wire Line
	6350 1150 7400 1150
Wire Wire Line
	7400 1150 7400 1850
Wire Wire Line
	6650 1850 7400 1850
Wire Wire Line
	7550 1150 7400 1150
Connection ~ 7400 1150
Text Label 6850 1950 0    50   ~ 0
LS_A_TTL_PWM
Wire Wire Line
	6850 1950 6650 1950
Text Label 6850 2050 0    50   ~ 0
HS_A_TTL_PWM
Wire Wire Line
	6850 2050 6650 2050
Text Label 5650 1950 2    50   ~ 0
HO_A
Wire Wire Line
	5650 1950 5850 1950
$Comp
L Device:C_Small C8
U 1 1 5C541FED
P 4900 1950
F 0 "C8" H 5000 2000 50  0000 L CNN
F 1 "0.68u" H 5000 1900 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 4900 1950 50  0001 C CNN
F 3 "~" H 4900 1950 50  0001 C CNN
F 4 "399-15953-1-ND" H 4450 2100 50  0000 L CNN "PN"
	1    4900 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2050 4900 2050
Connection ~ 4900 2050
Wire Wire Line
	4900 2050 5850 2050
Wire Wire Line
	4900 1850 5850 1850
Text Label 5300 1150 2    50   ~ 0
12v
Wire Wire Line
	5300 1150 5600 1150
Connection ~ 5600 1150
$Comp
L Device:C_Small C12
U 1 1 5C546410
P 6300 2900
F 0 "C12" V 6100 2900 50  0000 C CNN
F 1 "10.0u" V 6200 2900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6300 2900 50  0001 C CNN
F 3 "~" H 6300 2900 50  0001 C CNN
F 4 "445-14418-1-ND" V 6400 2900 50  0000 C CNN "PN"
	1    6300 2900
	0    1    1    0   
$EndComp
$Comp
L infineon:UCC2720xA U2
U 1 1 5C546417
P 6200 3550
F 0 "U2" H 6300 3887 60  0000 C CNN
F 1 "UCC27211A" H 6300 3781 60  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6200 3550 60  0001 C CNN
F 3 "" H 6200 3550 60  0001 C CNN
	1    6200 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2900 5650 2900
Wire Wire Line
	5650 2900 5650 3500
Wire Wire Line
	5650 3500 5900 3500
Text Label 7600 2900 0    50   ~ 0
GND
Text Label 4800 3800 2    50   ~ 0
PHASEB_SOURCE
Text Label 6900 3500 0    50   ~ 0
LO_B
Wire Wire Line
	6900 3500 6700 3500
Wire Wire Line
	6400 2900 7450 2900
Wire Wire Line
	7450 2900 7450 3600
Wire Wire Line
	6700 3600 7450 3600
Wire Wire Line
	7600 2900 7450 2900
Connection ~ 7450 2900
Text Label 6900 3700 0    50   ~ 0
LS_B_TTL_PWM
Wire Wire Line
	6900 3700 6700 3700
Text Label 6900 3800 0    50   ~ 0
HS_B_TTL_PWM
Wire Wire Line
	6900 3800 6700 3800
Text Label 5700 3700 2    50   ~ 0
HO_B
Wire Wire Line
	5700 3700 5900 3700
$Comp
L Device:C_Small C9
U 1 1 5C546431
P 4950 3700
F 0 "C9" H 5050 3750 50  0000 L CNN
F 1 "0.68u" H 5050 3650 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 4950 3700 50  0001 C CNN
F 3 "~" H 4950 3700 50  0001 C CNN
F 4 "399-15953-1-ND" H 4400 3850 50  0000 L CNN "PN"
	1    4950 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3800 4950 3800
Connection ~ 4950 3800
Wire Wire Line
	4950 3800 5900 3800
Wire Wire Line
	4950 3600 5900 3600
Text Label 5350 2900 2    50   ~ 0
12v
Wire Wire Line
	5350 2900 5650 2900
Connection ~ 5650 2900
$Comp
L Device:C_Small C13
U 1 1 5C547E5A
P 6350 4600
F 0 "C13" V 6150 4600 50  0000 C CNN
F 1 "10.0u" V 6250 4600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6350 4600 50  0001 C CNN
F 3 "~" H 6350 4600 50  0001 C CNN
F 4 "445-14418-1-ND" V 6450 4600 50  0000 C CNN "PN"
	1    6350 4600
	0    1    1    0   
$EndComp
$Comp
L infineon:UCC2720xA U3
U 1 1 5C547E61
P 6250 5250
F 0 "U3" H 6350 5587 60  0000 C CNN
F 1 "UCC27211A" H 6350 5481 60  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6250 5250 60  0001 C CNN
F 3 "" H 6250 5250 60  0001 C CNN
	1    6250 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4600 5700 4600
Wire Wire Line
	5700 4600 5700 5200
Wire Wire Line
	5700 5200 5950 5200
Text Label 7650 4600 0    50   ~ 0
GND
Text Label 4850 5500 2    50   ~ 0
PHASEC_SOURCE
Text Label 6950 5200 0    50   ~ 0
LO_C
Wire Wire Line
	6950 5200 6750 5200
Wire Wire Line
	6450 4600 7500 4600
Wire Wire Line
	7500 4600 7500 5300
Wire Wire Line
	6750 5300 7500 5300
Wire Wire Line
	7650 4600 7500 4600
Connection ~ 7500 4600
Text Label 6950 5400 0    50   ~ 0
LS_C_TTL_PWM
Wire Wire Line
	6950 5400 6750 5400
Text Label 6950 5500 0    50   ~ 0
HS_C_TTL_PWM
Wire Wire Line
	6950 5500 6750 5500
Text Label 5750 5400 2    50   ~ 0
HO_C
Wire Wire Line
	5750 5400 5950 5400
$Comp
L Device:C_Small C10
U 1 1 5C547E7B
P 5000 5400
F 0 "C10" H 5100 5450 50  0000 L CNN
F 1 "0.68u" H 5100 5350 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 5000 5400 50  0001 C CNN
F 3 "~" H 5000 5400 50  0001 C CNN
F 4 "399-15953-1-ND" H 4450 5550 50  0000 L CNN "PN"
	1    5000 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5500 5000 5500
Connection ~ 5000 5500
Wire Wire Line
	5000 5500 5950 5500
Wire Wire Line
	5000 5300 5950 5300
Text Label 5400 4600 2    50   ~ 0
12v
Wire Wire Line
	5400 4600 5700 4600
Connection ~ 5700 4600
Text Label 9200 1700 2    50   ~ 0
LO_A
Text Label 9200 1600 2    50   ~ 0
HO_A
Text Label 9200 2000 2    50   ~ 0
LO_B
Text Label 9200 1900 2    50   ~ 0
HO_B
Text Label 9200 2300 2    50   ~ 0
LO_C
Text Label 9200 2200 2    50   ~ 0
HO_C
Wire Wire Line
	9200 2200 9450 2200
Wire Wire Line
	9200 2300 9450 2300
Wire Wire Line
	9200 2000 9450 2000
Wire Wire Line
	9200 1900 9450 1900
Wire Wire Line
	9200 1700 9450 1700
Wire Wire Line
	9200 1600 9450 1600
Wire Notes Line
	3950 2250 8000 2250
Wire Notes Line
	8000 2250 8000 850 
Wire Notes Line
	8000 850  3950 850 
Wire Notes Line
	3950 850  3950 2250
Text Notes 3950 850  0    59   ~ 0
Phase A
Wire Notes Line
	8000 2600 3950 2600
Wire Notes Line
	3950 2600 3950 4000
Text Notes 3950 2600 0    59   ~ 0
Phase B
Wire Notes Line
	3950 4000 8000 4000
Wire Notes Line
	8000 4000 8000 2600
Wire Notes Line
	8000 4300 3950 4300
Wire Notes Line
	3950 4300 3950 5700
Text Notes 3950 4300 0    59   ~ 0
Phase C
Wire Notes Line
	3950 5700 8000 5700
Wire Notes Line
	8000 5700 8000 4300
$EndSCHEMATC
