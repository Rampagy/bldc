EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:infineon
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title "Gate Drivers"
Date "2018-03-18"
Rev "1"
Comp "Loma Incorporated"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L UCC2720xA PhaseA
U 1 1 5AAF1479
P 3800 1900
F 0 "PhaseA" H 3900 1500 60  0000 C CNN
F 1 "UCC2720xA" H 3900 2100 60  0000 C CNN
F 2 "" H 3800 1900 60  0001 C CNN
F 3 "" H 3800 1900 60  0001 C CNN
	1    3800 1900
	1    0    0    -1  
$EndComp
$Comp
L UCC2720xA PhaseB
U 1 1 5AAF151B
P 3800 3000
F 0 "PhaseB" H 3900 2600 60  0000 C CNN
F 1 "UCC2720xA" H 3900 3200 60  0000 C CNN
F 2 "" H 3800 3000 60  0001 C CNN
F 3 "" H 3800 3000 60  0001 C CNN
	1    3800 3000
	1    0    0    -1  
$EndComp
$Comp
L UCC2720xA PhaseC
U 1 1 5AAF1572
P 3800 4150
F 0 "PhaseC" H 3900 3750 60  0000 C CNN
F 1 "UCC2720xA" H 3900 4350 60  0000 C CNN
F 2 "" H 3800 4150 60  0001 C CNN
F 3 "" H 3800 4150 60  0001 C CNN
	1    3800 4150
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5AAF19CF
P 2450 2100
F 0 "C1" H 2475 2200 50  0000 L CNN
F 1 "0.1u" H 2475 2000 50  0000 L CNN
F 2 "" H 2488 1950 50  0001 C CNN
F 3 "" H 2450 2100 50  0001 C CNN
	1    2450 2100
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5AAF1A5A
P 2400 3200
F 0 "C2" H 2425 3300 50  0000 L CNN
F 1 "0.1u" H 2425 3100 50  0000 L CNN
F 2 "" H 2438 3050 50  0001 C CNN
F 3 "" H 2400 3200 50  0001 C CNN
	1    2400 3200
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5AAF1AF9
P 2400 4350
F 0 "C3" H 2425 4450 50  0000 L CNN
F 1 "0.1u" H 2425 4250 50  0000 L CNN
F 2 "" H 2438 4200 50  0001 C CNN
F 3 "" H 2400 4350 50  0001 C CNN
	1    2400 4350
	1    0    0    -1  
$EndComp
Text HLabel 2250 2250 0    60   Input ~ 0
PhaseA
Text HLabel 2250 3350 0    60   Input ~ 0
PhaseB
Text HLabel 2250 4500 0    60   Input ~ 0
PhaseC
Text HLabel 5100 900  0    60   UnSpc ~ 0
GND
Text HLabel 4400 1850 2    60   Output ~ 0
LS_A_GATE
Text HLabel 3350 2050 0    60   Output ~ 0
HS_A_GATE
Wire Wire Line
	3500 2050 3350 2050
Wire Wire Line
	2250 2250 2900 2250
Wire Wire Line
	3500 2150 2900 2150
Wire Wire Line
	2900 2150 2900 2250
Connection ~ 2450 2250
Wire Wire Line
	2450 1950 3500 1950
Wire Wire Line
	4300 1850 4400 1850
Text HLabel 4450 2950 2    60   Output ~ 0
LS_B_GATE
Wire Wire Line
	4300 2950 4450 2950
Connection ~ 2400 3350
Wire Wire Line
	2400 3050 3500 3050
Wire Wire Line
	2250 4500 2850 4500
Wire Wire Line
	2850 4500 2850 4400
Wire Wire Line
	2850 4400 3500 4400
Connection ~ 2400 4500
Wire Wire Line
	2400 4200 3500 4200
Wire Wire Line
	2250 3350 2750 3350
Wire Wire Line
	2750 3350 2750 3250
Wire Wire Line
	2750 3250 3500 3250
Text HLabel 3350 3150 0    60   Output ~ 0
HS_B_GATE
Wire Wire Line
	3350 3150 3500 3150
Text HLabel 4450 4100 2    60   Output ~ 0
LS_C_GATE
Text HLabel 3350 4300 0    60   Output ~ 0
HS_C_GATE
Wire Wire Line
	3500 4300 3350 4300
Wire Wire Line
	4300 4100 4450 4100
Wire Wire Line
	5300 900  5300 4200
Wire Wire Line
	5300 1950 4300 1950
Wire Wire Line
	5300 3050 4300 3050
Connection ~ 5300 1950
Wire Wire Line
	5300 4200 4300 4200
Connection ~ 5300 3050
$Comp
L C C4
U 1 1 5AAF26C0
P 3900 1300
F 0 "C4" H 3925 1400 50  0000 L CNN
F 1 "1.0u" H 3925 1200 50  0000 L CNN
F 2 "" H 3938 1150 50  0001 C CNN
F 3 "" H 3900 1300 50  0001 C CNN
	1    3900 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 900  5100 900 
Wire Wire Line
	4050 1300 5300 1300
Connection ~ 5300 1300
Wire Wire Line
	2950 1300 3750 1300
Wire Wire Line
	3500 950  3500 1850
$Comp
L C C5
U 1 1 5AAF28D3
P 3950 2500
F 0 "C5" H 3975 2600 50  0000 L CNN
F 1 "1.0u" H 3975 2400 50  0000 L CNN
F 2 "" H 3988 2350 50  0001 C CNN
F 3 "" H 3950 2500 50  0001 C CNN
	1    3950 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 2500 5300 2500
Connection ~ 5300 2500
Wire Wire Line
	3150 2500 3800 2500
Wire Wire Line
	3500 2500 3500 2950
$Comp
L C C6
U 1 1 5AAF29AA
P 3950 3650
F 0 "C6" H 3975 3750 50  0000 L CNN
F 1 "1.0u" H 3975 3550 50  0000 L CNN
F 2 "" H 3988 3500 50  0001 C CNN
F 3 "" H 3950 3650 50  0001 C CNN
	1    3950 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 3650 5300 3650
Connection ~ 5300 3650
Wire Wire Line
	3500 4100 3500 3650
Wire Wire Line
	3150 3650 3800 3650
Text HLabel 4400 2050 2    60   Input ~ 0
LS_A_TTL_PWM
Wire Wire Line
	4300 2050 4400 2050
Text HLabel 4400 2150 2    60   Input ~ 0
HS_A_TTL_PWM
Wire Wire Line
	4400 2150 4300 2150
Text HLabel 4450 3150 2    60   Input ~ 0
LS_B_TTL_PWM
Wire Wire Line
	4450 3150 4300 3150
Text HLabel 4450 3250 2    60   Input ~ 0
HS_B_TTL_PWM
Wire Wire Line
	4450 3250 4300 3250
Text HLabel 4450 4300 2    60   Input ~ 0
LS_C_TTL_PWM
Wire Wire Line
	4300 4300 4450 4300
Text HLabel 4450 4400 2    60   Input ~ 0
HS_C_TTL_PWM
Wire Wire Line
	4300 4400 4450 4400
Text HLabel 2950 1300 0    60   Input ~ 0
+12V
Connection ~ 3500 1300
Wire Wire Line
	3650 950  3500 950 
Connection ~ 3500 2500
Connection ~ 3500 3650
Text Label 3650 950  0    60   ~ 0
+12V
Text Label 3150 2500 0    60   ~ 0
+12V
Text Label 3150 3650 0    60   ~ 0
+12V
$EndSCHEMATC
