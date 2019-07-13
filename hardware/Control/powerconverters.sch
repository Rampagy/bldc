EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L Regulator_Switching:LM2575BU-ADJ U1
U 1 1 5C5640F6
P 5150 1400
F 0 "U1" H 5150 1767 50  0000 C CNN
F 1 "TL2575HV-ADJ" H 5150 1676 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 5150 1150 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/lm2575.pdf" H 5150 1400 50  0001 C CNN
	1    5150 1400
	1    0    0    -1  
$EndComp
Text HLabel 1500 1250 0    50   Input ~ 0
48v
Text Label 1700 1250 0    50   ~ 0
48v
Wire Wire Line
	1700 1250 1500 1250
Text HLabel 1500 1500 0    50   Output ~ 0
GND
Text Label 1700 1500 0    50   ~ 0
GND
Wire Wire Line
	1700 1500 1500 1500
Text Label 2950 1300 2    50   ~ 0
48v
$Comp
L Device:CP1 C1
U 1 1 5C564727
P 3950 1800
F 0 "C1" H 4065 1891 50  0000 L CNN
F 1 "100uF" H 4065 1800 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 3950 1800 50  0001 C CNN
F 3 "~" H 3950 1800 50  0001 C CNN
F 4 "493-12814-1-ND" V 3800 1450 50  0000 L CNN "PN"
	1    3950 1800
	1    0    0    -1  
$EndComp
Text Label 2950 2300 2    50   ~ 0
GND
$Comp
L Device:D_Schottky D1
U 1 1 5C564FE4
P 5850 1900
F 0 "D1" V 5804 1979 50  0000 L CNN
F 1 "1N5819" H 5700 1800 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P12.70mm_Horizontal" H 5850 1900 50  0001 C CNN
F 3 "~" H 5850 1900 50  0001 C CNN
	1    5850 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 1500 5650 1500
Wire Wire Line
	5150 1700 5150 2300
Connection ~ 5150 2300
Wire Wire Line
	5150 2300 5850 2300
Wire Wire Line
	3950 1650 3950 1300
Connection ~ 3950 1300
Wire Wire Line
	3950 1300 4650 1300
Wire Wire Line
	3950 1950 3950 2300
Connection ~ 3950 2300
Wire Wire Line
	5850 1500 5850 1750
Wire Wire Line
	5850 2050 5850 2300
$Comp
L Device:L L1
U 1 1 5C565BE5
P 6400 1500
F 0 "L1" V 6500 1500 50  0000 C CNN
F 1 "680uH" V 6350 1500 50  0000 C CNN
F 2 "Inductor_SMD:L_Bourns_SRR1260" H 6400 1500 50  0001 C CNN
F 3 "~" H 6400 1500 50  0001 C CNN
F 4 "SRR1210-681MCT-ND" V 6250 1500 50  0000 C CNN "PN"
	1    6400 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 1500 5850 1500
Connection ~ 5850 1500
$Comp
L Device:CP1 C3
U 1 1 5C565FFF
P 7050 1850
F 0 "C3" H 7165 1941 50  0000 L CNN
F 1 "330uF" H 7165 1850 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 7050 1850 50  0001 C CNN
F 3 "~" H 7050 1850 50  0001 C CNN
F 4 "493-7053-1-ND" V 6900 1450 50  0000 L CNN "PN"
	1    7050 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1700 7050 1500
Wire Wire Line
	7050 1500 6550 1500
Wire Wire Line
	7050 2300 5850 2300
Wire Wire Line
	7050 2000 7050 2300
Connection ~ 5850 2300
$Comp
L Device:R_Small R1
U 1 1 5C566B2F
P 7800 1700
F 0 "R1" H 7650 1700 50  0000 L CNN
F 1 "18k" H 7850 1750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" H 7800 1700 50  0001 C CNN
F 3 "~" H 7800 1700 50  0001 C CNN
F 4 "P18KDACT-ND" H 8150 1650 50  0000 C CNN "PN"
	1    7800 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5C566B63
P 7800 2050
F 0 "R2" H 7650 2050 50  0000 L CNN
F 1 "2k" H 7850 2100 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" H 7800 2050 50  0001 C CNN
F 3 "~" H 7800 2050 50  0001 C CNN
F 4 "A126358CT-ND" H 8150 2000 50  0000 C CNN "PN"
	1    7800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1600 7800 1500
Wire Wire Line
	7800 1500 7050 1500
Connection ~ 7050 1500
Wire Wire Line
	7800 2150 7800 2300
Wire Wire Line
	7800 2300 7050 2300
Connection ~ 7050 2300
Wire Wire Line
	7800 1800 7800 1850
Wire Wire Line
	5650 1300 7550 1300
Wire Wire Line
	7550 1300 7550 1850
Wire Wire Line
	7550 1850 7800 1850
Connection ~ 7800 1850
Wire Wire Line
	7800 1850 7800 1950
Text Label 6200 1300 0    50   ~ 0
12v_FB
Text Label 5900 1500 0    50   ~ 0
12v_OUT
Text HLabel 8250 1500 2    50   Output ~ 0
12v
Wire Wire Line
	8250 1500 7800 1500
Connection ~ 7800 1500
Wire Notes Line
	2700 850  8900 850 
Wire Notes Line
	8900 850  8900 2500
Wire Notes Line
	8900 2500 2700 2500
Wire Notes Line
	2700 2500 2700 850 
Text Notes 3450 850  0    59   ~ 0
12v Converter
$Comp
L Regulator_Switching:LM2575BU-ADJ U2
U 1 1 5C569A05
P 5150 3500
F 0 "U2" H 5150 3867 50  0000 C CNN
F 1 "TL2575HV-ADJ" H 5150 3776 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 5150 3250 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/lm2575.pdf" H 5150 3500 50  0001 C CNN
	1    5150 3500
	1    0    0    -1  
$EndComp
Text Label 2950 3400 2    50   ~ 0
48v
Text Label 2950 4400 2    50   ~ 0
GND
Wire Wire Line
	4650 3600 4500 3600
$Comp
L Device:D_Schottky D2
U 1 1 5C569A17
P 5850 4000
F 0 "D2" V 5804 4079 50  0000 L CNN
F 1 "1N5819" H 5700 3900 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P12.70mm_Horizontal" H 5850 4000 50  0001 C CNN
F 3 "~" H 5850 4000 50  0001 C CNN
	1    5850 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 3600 5650 3600
Wire Wire Line
	5150 3800 5150 4400
Connection ~ 5150 4400
Wire Wire Line
	5150 4400 5850 4400
Wire Wire Line
	4500 3600 4500 4400
Connection ~ 4500 4400
Wire Wire Line
	4500 4400 5150 4400
Wire Wire Line
	3950 3750 3950 3400
Connection ~ 3950 3400
Wire Wire Line
	3950 4050 3950 4400
Connection ~ 3950 4400
Wire Wire Line
	3950 4400 4500 4400
Wire Wire Line
	5850 3600 5850 3850
Wire Wire Line
	5850 4150 5850 4400
$Comp
L Device:L L2
U 1 1 5C569A30
P 6400 3600
F 0 "L2" V 6500 3600 50  0000 C CNN
F 1 "330uH" V 6350 3600 50  0000 C CNN
F 2 "Inductor_SMD:L_Bourns_SRR1260" H 6400 3600 50  0001 C CNN
F 3 "~" H 6400 3600 50  0001 C CNN
F 4 "SRR1210-331MCT-ND" V 6250 3600 50  0000 C CNN "PN"
	1    6400 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 3600 5850 3600
Connection ~ 5850 3600
$Comp
L Device:CP1 C4
U 1 1 5C569A3A
P 7050 3950
F 0 "C4" H 7165 4041 50  0000 L CNN
F 1 "1.2mF" H 7165 3950 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 7050 3950 50  0001 C CNN
F 3 "~" H 7050 3950 50  0001 C CNN
F 4 "493-15294-ND" V 6900 3600 50  0000 L CNN "PN"
	1    7050 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3800 7050 3600
Wire Wire Line
	7050 3600 6550 3600
Wire Wire Line
	7050 4400 5850 4400
Wire Wire Line
	7050 4100 7050 4400
Connection ~ 5850 4400
$Comp
L Device:R_Small R3
U 1 1 5C569A47
P 7800 3800
F 0 "R3" H 7650 3800 50  0000 L CNN
F 1 "6k" H 7850 3850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" H 7800 3800 50  0001 C CNN
F 3 "~" H 7800 3800 50  0001 C CNN
F 4 "P6.04KCCT-ND" H 8150 3750 50  0000 C CNN "PN"
	1    7800 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5C569A4F
P 7800 4150
F 0 "R4" H 7650 4150 50  0000 L CNN
F 1 "2k" H 7850 4200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" H 7800 4150 50  0001 C CNN
F 3 "~" H 7800 4150 50  0001 C CNN
F 4 "A126358CT-ND" H 8150 4100 50  0000 C CNN "PN"
	1    7800 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3700 7800 3600
Wire Wire Line
	7800 3600 7050 3600
Connection ~ 7050 3600
Wire Wire Line
	7800 4250 7800 4400
Wire Wire Line
	7800 4400 7050 4400
Connection ~ 7050 4400
Wire Wire Line
	7800 3900 7800 3950
Wire Wire Line
	5650 3400 7550 3400
Wire Wire Line
	7550 3400 7550 3950
Wire Wire Line
	7550 3950 7800 3950
Connection ~ 7800 3950
Wire Wire Line
	7800 3950 7800 4050
Text Label 6200 3400 0    50   ~ 0
5v_FB
Text Label 5900 3600 0    50   ~ 0
5v_OUT
Text HLabel 8250 3600 2    50   Output ~ 0
5v
Wire Wire Line
	8250 3600 7800 3600
Connection ~ 7800 3600
Wire Notes Line
	2700 2950 8900 2950
Wire Notes Line
	8900 2950 8900 4600
Wire Notes Line
	8900 4600 2700 4600
Wire Notes Line
	2700 4600 2700 2950
Text Notes 3450 2950 0    59   ~ 0
5v Converter
Wire Wire Line
	3950 3400 4650 3400
$Comp
L Device:C C5
U 1 1 5C5E68E9
P 3350 1800
F 0 "C5" H 3465 1891 50  0000 L CNN
F 1 "2.2uF" H 3465 1800 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3388 1650 50  0001 C CNN
F 3 "~" H 3350 1800 50  0001 C CNN
F 4 "445-12947-1-ND" V 3200 1450 50  0000 L CNN "PN"
	1    3350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1650 3350 1300
Wire Wire Line
	3350 1300 3950 1300
Wire Wire Line
	3350 2300 3350 1950
Wire Wire Line
	3350 2300 3950 2300
Wire Wire Line
	2950 1300 3350 1300
Connection ~ 3350 1300
Wire Wire Line
	3350 2300 2950 2300
Connection ~ 3350 2300
$Comp
L Device:C C6
U 1 1 5C5F0240
P 3350 3900
F 0 "C6" H 3465 3991 50  0000 L CNN
F 1 "2.2uF" H 3465 3900 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3388 3750 50  0001 C CNN
F 3 "~" H 3350 3900 50  0001 C CNN
F 4 "445-12947-1-ND" V 3200 3550 50  0000 L CNN "PN"
	1    3350 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3400 3350 3400
Wire Wire Line
	2950 4400 3350 4400
Wire Wire Line
	3350 3750 3350 3400
Connection ~ 3350 3400
Wire Wire Line
	3350 3400 3950 3400
Wire Wire Line
	3350 4050 3350 4400
Connection ~ 3350 4400
Wire Wire Line
	3350 4400 3950 4400
$Comp
L Device:CP1 C2
U 1 1 5C842638
P 3950 3900
F 0 "C2" H 4065 3991 50  0000 L CNN
F 1 "100uF" H 4065 3900 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 3950 3900 50  0001 C CNN
F 3 "~" H 3950 3900 50  0001 C CNN
F 4 "493-12814-1-ND" V 3800 3550 50  0000 L CNN "PN"
	1    3950 3900
	1    0    0    -1  
$EndComp
Text HLabel 1500 1700 0    59   Input ~ 0
TransEnale_TTL
Text Label 1700 1700 0    59   ~ 0
TransEnable_TTL
Wire Wire Line
	1700 1700 1500 1700
Wire Wire Line
	3950 2300 5150 2300
$Comp
L Transistor_BJT:BCX56 Q1
U 1 1 5C8D0B46
P 2950 6200
F 0 "Q1" H 3141 6246 50  0000 L CNN
F 1 "BCX56" H 3141 6155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 3150 6125 50  0001 L CIN
F 3 "http://cache.nxp.com/documents/data_sheet/BCP56_BCX56_BC56PA.pdf?pspll=1" H 2950 6200 50  0001 L CNN
	1    2950 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R16
U 1 1 5C8D126C
P 3050 5650
F 0 "R16" H 2850 5700 50  0000 L CNN
F 1 "18k" H 3100 5700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" H 3050 5650 50  0001 C CNN
F 3 "~" H 3050 5650 50  0001 C CNN
F 4 "P18KDACT-ND" H 3400 5600 50  0000 C CNN "PN"
	1    3050 5650
	1    0    0    -1  
$EndComp
Text Label 3050 5400 2    50   ~ 0
48v
Wire Wire Line
	3050 5400 3050 5550
Wire Wire Line
	2600 6350 2600 6200
Wire Wire Line
	2600 6200 2750 6200
Wire Wire Line
	2400 6200 2600 6200
Connection ~ 2600 6200
Text Label 3050 6800 3    50   ~ 0
GND
Wire Wire Line
	3050 6800 3050 6650
Wire Wire Line
	2600 6550 2600 6650
Wire Wire Line
	2600 6650 3050 6650
Connection ~ 3050 6650
Wire Wire Line
	3050 6650 3050 6400
Wire Wire Line
	3050 5750 3050 5850
Text Label 2800 5850 2    59   ~ 0
TransEnable
Wire Wire Line
	2800 5850 3050 5850
Connection ~ 3050 5850
Wire Wire Line
	3050 5850 3050 6000
Text Label 4450 1650 3    59   ~ 0
TransEnable
Wire Wire Line
	4450 1650 4450 1500
Wire Wire Line
	4450 1500 4650 1500
Text Label 1950 6200 2    59   ~ 0
TransEnable_TTL
Wire Notes Line
	1050 5100 3850 5100
Wire Notes Line
	3850 5100 3850 7150
Wire Notes Line
	3850 7150 1050 7150
Wire Notes Line
	1050 7150 1050 5100
Text Notes 1050 5100 0    59   ~ 0
Transmission Enable
$Comp
L Device:R_Small R19
U 1 1 5CB6F3A0
P 2300 6200
F 0 "R19" V 2100 6200 50  0000 C CNN
F 1 "680" V 2200 6200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" H 2300 6200 50  0001 C CNN
F 3 "~" H 2300 6200 50  0001 C CNN
F 4 "A129747CT-ND" V 2400 6150 50  0000 C CNN "PN"
	1    2300 6200
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 6200 2200 6200
$Comp
L Device:R_Small R15
U 1 1 5CD3D17E
P 2600 6450
F 0 "R15" H 2650 6400 50  0000 L CNN
F 1 "6k" H 2650 6500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.33x1.40mm_HandSolder" H 2600 6450 50  0001 C CNN
F 3 "~" H 2600 6450 50  0001 C CNN
F 4 "P6.04KCCT-ND" V 2500 6250 50  0000 C CNN "PN"
	1    2600 6450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
