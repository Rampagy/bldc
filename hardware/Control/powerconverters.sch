EESchema Schematic File Version 4
LIBS:control_v1-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "Brushless DC Motor Controller"
Date "2019-02-07"
Rev "1"
Comp "Loma Inrocporated"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Switching:LM2575BU-ADJ U1
U 1 1 5C5640F6
P 5050 1750
F 0 "U1" H 5050 2117 50  0000 C CNN
F 1 "TL2575HV-ADJ" H 5050 2026 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 5050 1500 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/lm2575.pdf" H 5050 1750 50  0001 C CNN
	1    5050 1750
	1    0    0    -1  
$EndComp
Text HLabel 1750 1250 0    50   Input ~ 0
48v
Text Label 1950 1250 0    50   ~ 0
48v
Wire Wire Line
	1950 1250 1750 1250
Text HLabel 1750 1500 0    50   Output ~ 0
GND
Text Label 1950 1500 0    50   ~ 0
GND
Wire Wire Line
	1950 1500 1750 1500
Text Label 2850 1650 2    50   ~ 0
48v
$Comp
L Device:CP1 C1
U 1 1 5C564727
P 3850 2150
F 0 "C1" H 3965 2241 50  0000 L CNN
F 1 "100uF" H 3965 2150 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_10x10.5" H 3850 2150 50  0001 C CNN
F 3 "~" H 3850 2150 50  0001 C CNN
F 4 "EEE-1JA101P" V 3700 1850 50  0000 L CNN "PN"
	1    3850 2150
	1    0    0    -1  
$EndComp
Text Label 2850 2650 2    50   ~ 0
GND
Wire Wire Line
	4550 1850 4400 1850
$Comp
L Device:D_Schottky D1
U 1 1 5C564FE4
P 5750 2250
F 0 "D1" V 5704 2329 50  0000 L CNN
F 1 "1N5819" H 5600 2150 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P12.70mm_Horizontal" H 5750 2250 50  0001 C CNN
F 3 "~" H 5750 2250 50  0001 C CNN
	1    5750 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 1850 5550 1850
Wire Wire Line
	5050 2050 5050 2650
Connection ~ 5050 2650
Wire Wire Line
	5050 2650 5750 2650
Wire Wire Line
	4400 1850 4400 2650
Connection ~ 4400 2650
Wire Wire Line
	4400 2650 5050 2650
Wire Wire Line
	3850 2000 3850 1650
Connection ~ 3850 1650
Wire Wire Line
	3850 1650 4550 1650
Wire Wire Line
	3850 2300 3850 2650
Connection ~ 3850 2650
Wire Wire Line
	3850 2650 4400 2650
Wire Wire Line
	5750 1850 5750 2100
Wire Wire Line
	5750 2400 5750 2650
$Comp
L Device:L L1
U 1 1 5C565BE5
P 6300 1850
F 0 "L1" V 6400 1850 50  0000 C CNN
F 1 "680uH" V 6250 1850 50  0000 C CNN
F 2 "Inductor_SMD:L_Bourns_SRR1260" H 6300 1850 50  0001 C CNN
F 3 "~" H 6300 1850 50  0001 C CNN
F 4 "SRR1210-681M" V 6150 1850 50  0000 C CNN "PN"
	1    6300 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 1850 5750 1850
Connection ~ 5750 1850
$Comp
L Device:CP1 C3
U 1 1 5C565FFF
P 6950 2200
F 0 "C3" H 7065 2291 50  0000 L CNN
F 1 "330uF" H 7065 2200 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x10" H 6950 2200 50  0001 C CNN
F 3 "~" H 6950 2200 50  0001 C CNN
F 4 "EEE-1EA331UP" V 6800 1850 50  0000 L CNN "PN"
	1    6950 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2050 6950 1850
Wire Wire Line
	6950 1850 6450 1850
Wire Wire Line
	6950 2650 5750 2650
Wire Wire Line
	6950 2350 6950 2650
Connection ~ 5750 2650
$Comp
L Device:R_Small R1
U 1 1 5C566B2F
P 7700 2050
F 0 "R1" H 7550 2050 50  0000 L CNN
F 1 "18k" H 7750 2100 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" H 7700 2050 50  0001 C CNN
F 3 "~" H 7700 2050 50  0001 C CNN
F 4 "ERA-6AEB183V" H 8050 2000 50  0000 C CNN "PN"
	1    7700 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5C566B63
P 7700 2400
F 0 "R2" H 7550 2400 50  0000 L CNN
F 1 "2k" H 7750 2450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7700 2400 50  0001 C CNN
F 3 "~" H 7700 2400 50  0001 C CNN
F 4 "RR0816P-202-D" H 8100 2350 50  0000 C CNN "PN"
	1    7700 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1950 7700 1850
Wire Wire Line
	7700 1850 6950 1850
Connection ~ 6950 1850
Wire Wire Line
	7700 2500 7700 2650
Wire Wire Line
	7700 2650 6950 2650
Connection ~ 6950 2650
Wire Wire Line
	7700 2150 7700 2200
Wire Wire Line
	5550 1650 7450 1650
Wire Wire Line
	7450 1650 7450 2200
Wire Wire Line
	7450 2200 7700 2200
Connection ~ 7700 2200
Wire Wire Line
	7700 2200 7700 2300
Text Label 6100 1650 0    50   ~ 0
12v_FB
Text Label 5800 1850 0    50   ~ 0
12v_OUT
Text HLabel 8150 1850 2    50   Output ~ 0
12v
Wire Wire Line
	8150 1850 7700 1850
Connection ~ 7700 1850
Wire Notes Line
	2600 1200 8800 1200
Wire Notes Line
	8800 1200 8800 2850
Wire Notes Line
	8800 2850 2600 2850
Wire Notes Line
	2600 2850 2600 1200
Text Notes 3350 1200 0    59   ~ 0
12v Converter
$Comp
L Regulator_Switching:LM2575BU-ADJ U2
U 1 1 5C569A05
P 5050 4150
F 0 "U2" H 5050 4517 50  0000 C CNN
F 1 "TL2575HV-ADJ" H 5050 4426 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 5050 3900 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/lm2575.pdf" H 5050 4150 50  0001 C CNN
	1    5050 4150
	1    0    0    -1  
$EndComp
Text Label 2850 4050 2    50   ~ 0
48v
$Comp
L Device:CP1 C2
U 1 1 5C569A0E
P 3850 4550
F 0 "C2" H 3965 4641 50  0000 L CNN
F 1 "1mF" H 3965 4550 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D16.0mm_P7.50mm" H 3850 4550 50  0001 C CNN
F 3 "~" H 3850 4550 50  0001 C CNN
F 4 "80ZLH1000MEFC16X40" V 3700 4150 50  0000 L CNN "PN"
	1    3850 4550
	1    0    0    -1  
$EndComp
Text Label 2850 5050 2    50   ~ 0
GND
Wire Wire Line
	4550 4250 4400 4250
$Comp
L Device:D_Schottky D2
U 1 1 5C569A17
P 5750 4650
F 0 "D2" V 5704 4729 50  0000 L CNN
F 1 "1N5819" H 5600 4550 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P12.70mm_Horizontal" H 5750 4650 50  0001 C CNN
F 3 "~" H 5750 4650 50  0001 C CNN
	1    5750 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 4250 5550 4250
Wire Wire Line
	5050 4450 5050 5050
Connection ~ 5050 5050
Wire Wire Line
	5050 5050 5750 5050
Wire Wire Line
	4400 4250 4400 5050
Connection ~ 4400 5050
Wire Wire Line
	4400 5050 5050 5050
Wire Wire Line
	3850 4400 3850 4050
Connection ~ 3850 4050
Wire Wire Line
	3850 4700 3850 5050
Connection ~ 3850 5050
Wire Wire Line
	3850 5050 4400 5050
Wire Wire Line
	5750 4250 5750 4500
Wire Wire Line
	5750 4800 5750 5050
$Comp
L Device:L L2
U 1 1 5C569A30
P 6300 4250
F 0 "L2" V 6400 4250 50  0000 C CNN
F 1 "330uH" V 6250 4250 50  0000 C CNN
F 2 "Inductor_SMD:L_Bourns_SRR1260" H 6300 4250 50  0001 C CNN
F 3 "~" H 6300 4250 50  0001 C CNN
F 4 "SRR1210-331M" V 6150 4250 50  0000 C CNN "PN"
	1    6300 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 4250 5750 4250
Connection ~ 5750 4250
$Comp
L Device:CP1 C4
U 1 1 5C569A3A
P 6950 4600
F 0 "C4" H 7065 4691 50  0000 L CNN
F 1 "1.2mF" H 7065 4600 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_10x10" H 6950 4600 50  0001 C CNN
F 3 "~" H 6950 4600 50  0001 C CNN
F 4 "UCL1A122MNL1GS" V 6800 4250 50  0000 L CNN "PN"
	1    6950 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4450 6950 4250
Wire Wire Line
	6950 4250 6450 4250
Wire Wire Line
	6950 5050 5750 5050
Wire Wire Line
	6950 4750 6950 5050
Connection ~ 5750 5050
$Comp
L Device:R_Small R3
U 1 1 5C569A47
P 7700 4450
F 0 "R3" H 7550 4450 50  0000 L CNN
F 1 "6k" H 7750 4500 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7700 4450 50  0001 C CNN
F 3 "~" H 7700 4450 50  0001 C CNN
F 4 "ERA-3AEB6041V" H 8050 4400 50  0000 C CNN "PN"
	1    7700 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5C569A4F
P 7700 4800
F 0 "R4" H 7550 4800 50  0000 L CNN
F 1 "2k" H 7750 4850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" H 7700 4800 50  0001 C CNN
F 3 "~" H 7700 4800 50  0001 C CNN
F 4 "RR0816P-202-D" H 8100 4750 50  0000 C CNN "PN"
	1    7700 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 4350 7700 4250
Wire Wire Line
	7700 4250 6950 4250
Connection ~ 6950 4250
Wire Wire Line
	7700 4900 7700 5050
Wire Wire Line
	7700 5050 6950 5050
Connection ~ 6950 5050
Wire Wire Line
	7700 4550 7700 4600
Wire Wire Line
	5550 4050 7450 4050
Wire Wire Line
	7450 4050 7450 4600
Wire Wire Line
	7450 4600 7700 4600
Connection ~ 7700 4600
Wire Wire Line
	7700 4600 7700 4700
Text Label 6100 4050 0    50   ~ 0
5v_FB
Text Label 5800 4250 0    50   ~ 0
5v_OUT
Text HLabel 8150 4250 2    50   Output ~ 0
5v
Wire Wire Line
	8150 4250 7700 4250
Connection ~ 7700 4250
Wire Notes Line
	2600 3600 8800 3600
Wire Notes Line
	8800 3600 8800 5250
Wire Notes Line
	8800 5250 2600 5250
Wire Notes Line
	2600 5250 2600 3600
Text Notes 3350 3600 0    59   ~ 0
5v Converter
Wire Wire Line
	3850 4050 4550 4050
$Comp
L Device:C C5
U 1 1 5C5E68E9
P 3250 2150
F 0 "C5" H 3365 2241 50  0000 L CNN
F 1 "2.2uF" H 3365 2150 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3288 2000 50  0001 C CNN
F 3 "~" H 3250 2150 50  0001 C CNN
F 4 "CGA5L3X7S2A225M160AB" V 3100 1700 50  0000 L CNN "PN"
	1    3250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2000 3250 1650
Wire Wire Line
	3250 1650 3850 1650
Wire Wire Line
	3250 2650 3250 2300
Wire Wire Line
	3250 2650 3850 2650
Wire Wire Line
	2850 1650 3250 1650
Connection ~ 3250 1650
Wire Wire Line
	3250 2650 2850 2650
Connection ~ 3250 2650
$Comp
L Device:C C6
U 1 1 5C5F0240
P 3250 4550
F 0 "C6" H 3365 4641 50  0000 L CNN
F 1 "2.2uF" H 3365 4550 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3288 4400 50  0001 C CNN
F 3 "~" H 3250 4550 50  0001 C CNN
F 4 "CGA5L3X7S2A225M160AB" V 3100 4100 50  0000 L CNN "PN"
	1    3250 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4050 3250 4050
Wire Wire Line
	2850 5050 3250 5050
Wire Wire Line
	3250 4400 3250 4050
Connection ~ 3250 4050
Wire Wire Line
	3250 4050 3850 4050
Wire Wire Line
	3250 4700 3250 5050
Connection ~ 3250 5050
Wire Wire Line
	3250 5050 3850 5050
$EndSCHEMATC
