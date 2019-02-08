EESchema Schematic File Version 4
LIBS:control_v1-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title "Brushless DC Motor Controller"
Date "2019-02-07"
Rev "1"
Comp "Loma Inrocporated"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2100 2000 0    59   Input ~ 0
HS_A_TTL_PWM
Text HLabel 950  700  0    59   Input ~ 0
5v
Text Label 1150 700  0    59   ~ 0
5v
Wire Wire Line
	1150 700  950  700 
Text HLabel 9950 1900 2    59   Output ~ 0
HS_A_CMOS_PWM
Text HLabel 9950 2200 2    59   Output ~ 0
LS_A_CMOS_PWM
Text HLabel 9950 3550 2    59   Output ~ 0
HS_B_CMOS_PWM
Text HLabel 9950 3850 2    59   Output ~ 0
LS_B_CMOS_PWM
Text HLabel 9950 5200 2    59   Output ~ 0
HS_C_CMOS_PWM
Text HLabel 9950 5500 2    59   Output ~ 0
LS_C_CMOS_PWM
$Comp
L 74xGxx:74LVC1G00 U9
U 1 1 5C624437
P 8250 2050
F 0 "U9" H 8250 2200 50  0000 C CNN
F 1 "74LVC1G00" H 8250 1900 50  0000 C CNN
F 2 "" H 8250 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 8250 2050 50  0001 C CNN
	1    8250 2050
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:74LVC1G08 U12
U 1 1 5C624D97
P 9400 1900
F 0 "U12" H 9375 2167 50  0000 C CNN
F 1 "74LVC1G08" H 9375 2076 50  0000 C CNN
F 2 "" H 9400 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 9400 1900 50  0001 C CNN
	1    9400 1900
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:74LVC1G08 U13
U 1 1 5C624DF3
P 9400 2200
F 0 "U13" H 9400 1950 50  0000 C CNN
F 1 "74LVC1G08" H 9350 2050 50  0000 C CNN
F 2 "" H 9400 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 9400 2200 50  0001 C CNN
	1    9400 2200
	1    0    0    -1  
$EndComp
Text Label 3200 2000 0    59   ~ 0
HS_A
Text Label 7750 2000 2    59   ~ 0
HS_A
Text Label 7750 2100 2    59   ~ 0
LS_A
Wire Wire Line
	7750 2000 7900 2000
Wire Wire Line
	7750 2100 7900 2100
Wire Wire Line
	9100 2150 8950 2150
Wire Wire Line
	9100 1850 7900 1850
Wire Wire Line
	7900 1850 7900 2000
Connection ~ 7900 2000
Wire Wire Line
	7900 2000 7950 2000
Wire Wire Line
	7900 2100 7900 2250
Wire Wire Line
	7900 2250 9100 2250
Connection ~ 7900 2100
Wire Wire Line
	7900 2100 7950 2100
Text Label 8500 2050 0    59   ~ 0
SHOOT_A
Wire Wire Line
	8950 2050 8950 1950
Wire Wire Line
	8500 2050 8950 2050
Wire Wire Line
	8950 1950 9100 1950
Wire Wire Line
	8950 2050 8950 2150
Connection ~ 8950 2050
Wire Wire Line
	9950 1900 9650 1900
Wire Wire Line
	9950 2200 9650 2200
$Comp
L 74xGxx:74LVC1G00 U10
U 1 1 5C629F19
P 8250 3700
F 0 "U10" H 8250 3850 50  0000 C CNN
F 1 "74LVC1G00" H 8250 3550 50  0000 C CNN
F 2 "" H 8250 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 8250 3700 50  0001 C CNN
	1    8250 3700
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:74LVC1G08 U14
U 1 1 5C629F20
P 9400 3550
F 0 "U14" H 9375 3817 50  0000 C CNN
F 1 "74LVC1G08" H 9375 3726 50  0000 C CNN
F 2 "" H 9400 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 9400 3550 50  0001 C CNN
	1    9400 3550
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:74LVC1G08 U15
U 1 1 5C629F27
P 9400 3850
F 0 "U15" H 9400 3600 50  0000 C CNN
F 1 "74LVC1G08" H 9350 3700 50  0000 C CNN
F 2 "" H 9400 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 9400 3850 50  0001 C CNN
	1    9400 3850
	1    0    0    -1  
$EndComp
Text Label 7750 3650 2    59   ~ 0
HS_B
Text Label 7750 3750 2    59   ~ 0
LS_B
Wire Wire Line
	7750 3650 7900 3650
Wire Wire Line
	7750 3750 7900 3750
Wire Wire Line
	9100 3800 8950 3800
Wire Wire Line
	9100 3500 7900 3500
Wire Wire Line
	7900 3500 7900 3650
Connection ~ 7900 3650
Wire Wire Line
	7900 3650 7950 3650
Wire Wire Line
	7900 3750 7900 3900
Wire Wire Line
	7900 3900 9100 3900
Connection ~ 7900 3750
Wire Wire Line
	7900 3750 7950 3750
Text Label 8500 3700 0    59   ~ 0
SHOOT_B
Wire Wire Line
	8950 3700 8950 3600
Wire Wire Line
	8500 3700 8950 3700
Wire Wire Line
	8950 3600 9100 3600
Wire Wire Line
	8950 3700 8950 3800
Connection ~ 8950 3700
Wire Wire Line
	9950 3550 9650 3550
Wire Wire Line
	9950 3850 9650 3850
$Comp
L 74xGxx:74LVC1G00 U11
U 1 1 5C62AA30
P 8250 5350
F 0 "U11" H 8250 5500 50  0000 C CNN
F 1 "74LVC1G00" H 8250 5200 50  0000 C CNN
F 2 "" H 8250 5350 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 8250 5350 50  0001 C CNN
	1    8250 5350
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:74LVC1G08 U16
U 1 1 5C62AA37
P 9400 5200
F 0 "U16" H 9375 5467 50  0000 C CNN
F 1 "74LVC1G08" H 9375 5376 50  0000 C CNN
F 2 "" H 9400 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 9400 5200 50  0001 C CNN
	1    9400 5200
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:74LVC1G08 U17
U 1 1 5C62AA3E
P 9400 5500
F 0 "U17" H 9400 5250 50  0000 C CNN
F 1 "74LVC1G08" H 9350 5350 50  0000 C CNN
F 2 "" H 9400 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 9400 5500 50  0001 C CNN
	1    9400 5500
	1    0    0    -1  
$EndComp
Text Label 7750 5300 2    59   ~ 0
HS_C
Text Label 7750 5400 2    59   ~ 0
LS_C
Wire Wire Line
	7750 5300 7900 5300
Wire Wire Line
	7750 5400 7900 5400
Wire Wire Line
	9100 5450 8950 5450
Wire Wire Line
	9100 5150 7900 5150
Wire Wire Line
	7900 5150 7900 5300
Connection ~ 7900 5300
Wire Wire Line
	7900 5300 7950 5300
Wire Wire Line
	7900 5400 7900 5550
Wire Wire Line
	7900 5550 9100 5550
Connection ~ 7900 5400
Wire Wire Line
	7900 5400 7950 5400
Text Label 8500 5350 0    59   ~ 0
SHOOT_C
Wire Wire Line
	8950 5350 8950 5250
Wire Wire Line
	8500 5350 8950 5350
Wire Wire Line
	8950 5250 9100 5250
Wire Wire Line
	8950 5350 8950 5450
Connection ~ 8950 5350
Wire Wire Line
	9950 5200 9650 5200
Wire Wire Line
	9950 5500 9650 5500
Text HLabel 950  900  0    59   Output ~ 0
GND
Text Label 1150 900  0    59   ~ 0
GND
Wire Wire Line
	1150 900  950  900 
Wire Notes Line
	10950 2550 7300 2550
Wire Notes Line
	7300 1500 10950 1500
Wire Notes Line
	10950 1500 10950 2550
Wire Notes Line
	7300 1500 7300 2550
Wire Notes Line
	7300 3150 10950 3150
Wire Notes Line
	10950 3150 10950 4200
Wire Notes Line
	10950 4200 7300 4200
Wire Notes Line
	7300 4200 7300 3150
Wire Notes Line
	7300 4800 10950 4800
Wire Notes Line
	10950 4800 10950 5850
Wire Notes Line
	10950 5850 7300 5850
Wire Notes Line
	7300 5850 7300 4800
Text Notes 7300 1500 0    59   ~ 0
Phase A Shoot Through Protection
Text Notes 7300 3150 0    59   ~ 0
Phase B Shoot Through Protection
Text Notes 7300 4800 0    59   ~ 0
Phase C Shoot Through Protection
$Comp
L Logic_LevelTranslator:SN74LVC1T45DCK U5
U 1 1 5C650E29
P 2650 2000
F 0 "U5" H 3050 1900 50  0000 L CNN
F 1 "SN74LVC1T45DCK" H 3050 1800 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 2650 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1t45.pdf" H 1750 1350 50  0001 C CNN
	1    2650 2000
	1    0    0    -1  
$EndComp
Text HLabel 950  1100 0    59   Input ~ 0
3v
Text Label 1150 1100 0    59   ~ 0
3v
Wire Wire Line
	1150 1100 950  1100
Text Label 2550 1500 2    59   ~ 0
3v
Wire Wire Line
	2550 1500 2550 1600
Text Label 2750 1500 0    59   ~ 0
5v
Wire Wire Line
	2750 1500 2750 1600
Text Label 2100 2200 2    59   ~ 0
3v
Wire Wire Line
	2100 2200 2250 2200
Wire Wire Line
	2100 2000 2250 2000
Wire Wire Line
	3200 2000 3050 2000
Text Label 2600 2600 2    59   ~ 0
GND
Wire Wire Line
	2650 2600 2650 2400
Text HLabel 5000 2000 0    59   Input ~ 0
LS_A_TTL_PWM
Text Label 6100 2000 0    59   ~ 0
LS_A
$Comp
L Logic_LevelTranslator:SN74LVC1T45DCK U6
U 1 1 5C663847
P 5550 2000
F 0 "U6" H 5950 1900 50  0000 L CNN
F 1 "SN74LVC1T45DCK" H 5950 1800 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5550 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1t45.pdf" H 4650 1350 50  0001 C CNN
	1    5550 2000
	1    0    0    -1  
$EndComp
Text Label 5450 1500 2    59   ~ 0
3v
Wire Wire Line
	5450 1500 5450 1600
Text Label 5650 1500 0    59   ~ 0
5v
Wire Wire Line
	5650 1500 5650 1600
Text Label 5000 2200 2    59   ~ 0
3v
Wire Wire Line
	5000 2200 5150 2200
Wire Wire Line
	5000 2000 5150 2000
Wire Wire Line
	6100 2000 5950 2000
Text Label 5500 2600 2    59   ~ 0
GND
Wire Wire Line
	5500 2600 5550 2600
Wire Wire Line
	5550 2600 5550 2400
Text HLabel 2050 3650 0    59   Input ~ 0
HS_B_TTL_PWM
Text Label 3150 3650 0    59   ~ 0
HS_B
$Comp
L Logic_LevelTranslator:SN74LVC1T45DCK U3
U 1 1 5C664DFD
P 2600 3650
F 0 "U3" H 3000 3550 50  0000 L CNN
F 1 "SN74LVC1T45DCK" H 3000 3450 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 2600 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1t45.pdf" H 1700 3000 50  0001 C CNN
	1    2600 3650
	1    0    0    -1  
$EndComp
Text Label 2500 3150 2    59   ~ 0
3v
Wire Wire Line
	2500 3150 2500 3250
Text Label 2700 3150 0    59   ~ 0
5v
Wire Wire Line
	2700 3150 2700 3250
Text Label 2050 3850 2    59   ~ 0
3v
Wire Wire Line
	2050 3850 2200 3850
Wire Wire Line
	2050 3650 2200 3650
Wire Wire Line
	3150 3650 3000 3650
Text Label 2550 4250 2    59   ~ 0
GND
Wire Wire Line
	2550 4250 2600 4250
Wire Wire Line
	2600 4250 2600 4050
Text HLabel 5000 3650 0    59   Input ~ 0
LS_B_TTL_PWM
Text Label 6100 3650 0    59   ~ 0
LS_B
$Comp
L Logic_LevelTranslator:SN74LVC1T45DCK U7
U 1 1 5C66678D
P 5550 3650
F 0 "U7" H 5950 3550 50  0000 L CNN
F 1 "SN74LVC1T45DCK" H 5950 3450 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5550 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1t45.pdf" H 4650 3000 50  0001 C CNN
	1    5550 3650
	1    0    0    -1  
$EndComp
Text Label 5450 3150 2    59   ~ 0
3v
Wire Wire Line
	5450 3150 5450 3250
Text Label 5650 3150 0    59   ~ 0
5v
Wire Wire Line
	5650 3150 5650 3250
Text Label 5000 3850 2    59   ~ 0
3v
Wire Wire Line
	5000 3850 5150 3850
Wire Wire Line
	5000 3650 5150 3650
Wire Wire Line
	6100 3650 5950 3650
Text Label 5500 4250 2    59   ~ 0
GND
Wire Wire Line
	5550 4250 5550 4050
Text HLabel 2050 5250 0    59   Input ~ 0
HS_C_TTL_PWM
Text Label 3150 5250 0    59   ~ 0
HS_C
$Comp
L Logic_LevelTranslator:SN74LVC1T45DCK U4
U 1 1 5C6686B1
P 2600 5250
F 0 "U4" H 3000 5150 50  0000 L CNN
F 1 "SN74LVC1T45DCK" H 3000 5050 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 2600 4750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1t45.pdf" H 1700 4600 50  0001 C CNN
	1    2600 5250
	1    0    0    -1  
$EndComp
Text Label 2500 4750 2    59   ~ 0
3v
Wire Wire Line
	2500 4750 2500 4850
Text Label 2700 4750 0    59   ~ 0
5v
Wire Wire Line
	2700 4750 2700 4850
Text Label 2050 5450 2    59   ~ 0
3v
Wire Wire Line
	2050 5450 2200 5450
Wire Wire Line
	2050 5250 2200 5250
Wire Wire Line
	3150 5250 3000 5250
Text Label 2550 5850 2    59   ~ 0
GND
Wire Wire Line
	2550 5850 2600 5850
Wire Wire Line
	2600 5850 2600 5650
Text HLabel 5000 5250 0    59   Input ~ 0
LS_C_TTL_PWM
Text Label 6100 5250 0    59   ~ 0
LS_C
$Comp
L Logic_LevelTranslator:SN74LVC1T45DCK U8
U 1 1 5C66AB51
P 5550 5250
F 0 "U8" H 5950 5150 50  0000 L CNN
F 1 "SN74LVC1T45DCK" H 5950 5050 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5550 4750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1t45.pdf" H 4650 4600 50  0001 C CNN
	1    5550 5250
	1    0    0    -1  
$EndComp
Text Label 5450 4750 2    59   ~ 0
3v
Wire Wire Line
	5450 4750 5450 4850
Text Label 5650 4750 0    59   ~ 0
5v
Wire Wire Line
	5650 4750 5650 4850
Text Label 5000 5450 2    59   ~ 0
3v
Wire Wire Line
	5000 5450 5150 5450
Wire Wire Line
	5000 5250 5150 5250
Wire Wire Line
	6100 5250 5950 5250
Text Label 5500 5850 2    59   ~ 0
GND
Wire Wire Line
	5500 5850 5550 5850
Wire Wire Line
	5550 5850 5550 5650
Wire Wire Line
	5500 4250 5550 4250
Wire Wire Line
	2600 2600 2650 2600
Wire Notes Line
	1200 1300 6800 1300
Wire Notes Line
	6800 1300 6800 2700
Wire Notes Line
	6800 2700 1200 2700
Wire Notes Line
	1200 2700 1200 1300
Wire Notes Line
	1200 2950 6800 2950
Wire Notes Line
	6800 2950 6800 4350
Wire Notes Line
	6800 4350 1200 4350
Wire Notes Line
	1200 4350 1200 2950
Wire Notes Line
	1200 4600 6800 4600
Wire Notes Line
	6800 4600 6800 5950
Wire Notes Line
	6800 5950 1200 5950
Wire Notes Line
	1200 5950 1200 4600
Text Notes 1200 4600 0    59   ~ 0
Phase C Translators
Text Notes 1200 2950 0    59   ~ 0
Phase B Translators
Text Notes 1200 1300 0    59   ~ 0
Phase A Translators
$EndSCHEMATC
