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
Sheet 3 3
Title "MOSFETS"
Date "2018-03-18"
Rev "1"
Comp "Loma Incorporated"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L IPB017N10N5 HS_A
U 1 1 5AAE8FFF
P 2850 1800
F 0 "HS_A" H 2200 2100 60  0000 C CNN
F 1 "IPB017N10N5" H 2200 2000 60  0000 C CNN
F 2 "" H 2200 2000 60  0001 C CNN
F 3 "" H 2200 2000 60  0001 C CNN
	1    2850 1800
	1    0    0    -1  
$EndComp
$Comp
L IPB017N10N5 HS_B
U 1 1 5AAE909A
P 6250 1800
F 0 "HS_B" H 5600 2100 60  0000 C CNN
F 1 "IPB017N10N5" H 5600 2000 60  0000 C CNN
F 2 "" H 5600 2000 60  0001 C CNN
F 3 "" H 5600 2000 60  0001 C CNN
	1    6250 1800
	1    0    0    -1  
$EndComp
$Comp
L IPB017N10N5 HS_C
U 1 1 5AAE910F
P 9750 1750
F 0 "HS_C" H 9100 2050 60  0000 C CNN
F 1 "IPB017N10N5" H 9100 1950 60  0000 C CNN
F 2 "" H 9100 1950 60  0001 C CNN
F 3 "" H 9100 1950 60  0001 C CNN
	1    9750 1750
	1    0    0    -1  
$EndComp
$Comp
L IPB017N10N5 LS_A
U 1 1 5AAE9174
P 2850 3350
F 0 "LS_A" H 2200 3650 60  0000 C CNN
F 1 "IPB017N10N5" H 2200 3550 60  0000 C CNN
F 2 "" H 2200 3550 60  0001 C CNN
F 3 "" H 2200 3550 60  0001 C CNN
	1    2850 3350
	1    0    0    -1  
$EndComp
$Comp
L IPB017N10N5 LS_B
U 1 1 5AAE9213
P 6250 3350
F 0 "LS_B" H 5600 3650 60  0000 C CNN
F 1 "IPB017N10N5" H 5600 3550 60  0000 C CNN
F 2 "" H 5600 3550 60  0001 C CNN
F 3 "" H 5600 3550 60  0001 C CNN
	1    6250 3350
	1    0    0    -1  
$EndComp
$Comp
L IPB017N10N5 LS_C
U 1 1 5AAE9276
P 9750 3300
F 0 "LS_C" H 9100 3600 60  0000 C CNN
F 1 "IPB017N10N5" H 9100 3500 60  0000 C CNN
F 2 "" H 9100 3500 60  0001 C CNN
F 3 "" H 9100 3500 60  0001 C CNN
	1    9750 3300
	1    0    0    -1  
$EndComp
Text HLabel 4150 2400 2    60   Output ~ 0
PhaseA
Text HLabel 1800 900  0    60   Input ~ 0
Vbatt
Wire Wire Line
	6250 2900 6250 2250
Text HLabel 7700 2550 2    60   Output ~ 0
PhaseB
Wire Wire Line
	9750 2850 9750 2200
Text HLabel 10150 2450 2    60   Output ~ 0
PhaseC
Wire Wire Line
	10150 2450 9750 2450
Connection ~ 9750 2450
Wire Wire Line
	1800 900  9750 900 
Wire Wire Line
	2850 900  2850 1350
Wire Wire Line
	6250 900  6250 1350
Connection ~ 2850 900 
Text HLabel 1550 4800 0    60   UnSpc ~ 0
GND
Wire Wire Line
	2850 4800 2850 3800
Wire Wire Line
	6250 3800 6250 4800
Wire Wire Line
	9750 4800 9750 3750
Text HLabel 1500 2000 0    60   Input ~ 0
HS_A_GATE
Text HLabel 1550 3550 0    60   Input ~ 0
LS_A_GATE
Text HLabel 5150 2000 0    60   Input ~ 0
HS_B_GATE
Text HLabel 5000 3550 0    60   Input ~ 0
LS_B_GATE
Text HLabel 8500 1950 0    60   Input ~ 0
HS_C_GATE
Text HLabel 8500 3500 0    60   Input ~ 0
LS_C_GATE
$Comp
L R R1
U 1 1 5AAEA2F9
P 2150 2000
F 0 "R1" V 2230 2000 50  0000 C CNN
F 1 "10" V 2150 2000 50  0000 C CNN
F 2 "" V 2080 2000 50  0001 C CNN
F 3 "" H 2150 2000 50  0001 C CNN
	1    2150 2000
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5AAEA36D
P 2150 3550
F 0 "R2" V 2230 3550 50  0000 C CNN
F 1 "10" V 2150 3550 50  0000 C CNN
F 2 "" V 2080 3550 50  0001 C CNN
F 3 "" H 2150 3550 50  0001 C CNN
	1    2150 3550
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5AAEA3DA
P 5550 2000
F 0 "R3" V 5630 2000 50  0000 C CNN
F 1 "10" V 5550 2000 50  0000 C CNN
F 2 "" V 5480 2000 50  0001 C CNN
F 3 "" H 5550 2000 50  0001 C CNN
	1    5550 2000
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5AAEA449
P 5550 3550
F 0 "R4" V 5630 3550 50  0000 C CNN
F 1 "10" V 5550 3550 50  0000 C CNN
F 2 "" V 5480 3550 50  0001 C CNN
F 3 "" H 5550 3550 50  0001 C CNN
	1    5550 3550
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5AAEA476
P 9050 1950
F 0 "R5" V 9130 1950 50  0000 C CNN
F 1 "10" V 9050 1950 50  0000 C CNN
F 2 "" V 8980 1950 50  0001 C CNN
F 3 "" H 9050 1950 50  0001 C CNN
	1    9050 1950
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5AAEA4AC
P 9050 3500
F 0 "R6" V 9130 3500 50  0000 C CNN
F 1 "10" V 9050 3500 50  0000 C CNN
F 2 "" V 8980 3500 50  0001 C CNN
F 3 "" H 9050 3500 50  0001 C CNN
	1    9050 3500
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D1
U 1 1 5AAEAE6D
P 2150 2250
F 0 "D1" H 2150 2350 50  0000 C CNN
F 1 "DFLS1100-7" H 2100 2150 50  0000 C CNN
F 2 "" H 2150 2250 50  0001 C CNN
F 3 "" H 2150 2250 50  0001 C CNN
	1    2150 2250
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D2
U 1 1 5AAEAF3B
P 2150 3800
F 0 "D2" H 2150 3900 50  0000 C CNN
F 1 "DFLS1100-7" H 2100 3700 50  0000 C CNN
F 2 "" H 2150 3800 50  0001 C CNN
F 3 "" H 2150 3800 50  0001 C CNN
	1    2150 3800
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D4
U 1 1 5AAEB1CB
P 5550 3800
F 0 "D4" H 5550 3900 50  0000 C CNN
F 1 "DFLS1100-7" H 5500 3700 50  0000 C CNN
F 2 "" H 5550 3800 50  0001 C CNN
F 3 "" H 5550 3800 50  0001 C CNN
	1    5550 3800
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D3
U 1 1 5AAEB238
P 5550 2250
F 0 "D3" H 5550 2350 50  0000 C CNN
F 1 "DFLS1100-7" H 5500 2150 50  0000 C CNN
F 2 "" H 5550 2250 50  0001 C CNN
F 3 "" H 5550 2250 50  0001 C CNN
	1    5550 2250
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D6
U 1 1 5AAEB354
P 9050 3750
F 0 "D6" H 9050 3850 50  0000 C CNN
F 1 "DFLS1100-7" H 9000 3650 50  0000 C CNN
F 2 "" H 9050 3750 50  0001 C CNN
F 3 "" H 9050 3750 50  0001 C CNN
	1    9050 3750
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D5
U 1 1 5AAEB3CD
P 9050 2200
F 0 "D5" H 9050 2300 50  0000 C CNN
F 1 "DFLS1100-7" H 9000 2100 50  0000 C CNN
F 2 "" H 9050 2200 50  0001 C CNN
F 3 "" H 9050 2200 50  0001 C CNN
	1    9050 2200
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5AAEB875
P 2600 2450
F 0 "R7" V 2680 2450 50  0000 C CNN
F 1 "20k" V 2600 2450 50  0000 C CNN
F 2 "" V 2530 2450 50  0001 C CNN
F 3 "" H 2600 2450 50  0001 C CNN
	1    2600 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 2000 2000 2000
Wire Wire Line
	2300 2000 2450 2000
Wire Wire Line
	2000 2250 1900 2250
Wire Wire Line
	1900 2250 1900 2000
Connection ~ 1900 2000
Wire Wire Line
	2850 2900 2850 2250
Wire Wire Line
	2750 2450 2850 2450
Connection ~ 2850 2450
Wire Wire Line
	2450 2450 2400 2450
Wire Wire Line
	2400 2000 2400 2650
Connection ~ 2400 2000
Wire Wire Line
	2300 2250 2400 2250
Connection ~ 2400 2250
$Comp
L R R8
U 1 1 5AAEBFF4
P 2600 4000
F 0 "R8" V 2680 4000 50  0000 C CNN
F 1 "20k" V 2600 4000 50  0000 C CNN
F 2 "" V 2530 4000 50  0001 C CNN
F 3 "" H 2600 4000 50  0001 C CNN
	1    2600 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 3550 2000 3550
Wire Wire Line
	2000 3800 1850 3800
Wire Wire Line
	1850 3800 1850 3550
Connection ~ 1850 3550
Wire Wire Line
	2300 3800 2400 3800
Wire Wire Line
	2400 3550 2400 4250
Wire Wire Line
	2300 3550 2450 3550
Connection ~ 2400 3550
Wire Wire Line
	2400 4000 2450 4000
Connection ~ 2400 3800
Wire Wire Line
	2750 4000 2850 4000
Connection ~ 2850 4000
Wire Wire Line
	5000 3550 5400 3550
Wire Wire Line
	5400 3800 5300 3800
Wire Wire Line
	5300 3800 5300 3550
Connection ~ 5300 3550
Wire Wire Line
	5700 3550 5850 3550
Wire Wire Line
	5700 3800 5800 3800
Wire Wire Line
	5800 3550 5800 4200
Connection ~ 5800 3550
$Comp
L R R10
U 1 1 5AAEC38A
P 6000 3950
F 0 "R10" V 6080 3950 50  0000 C CNN
F 1 "20k" V 6000 3950 50  0000 C CNN
F 2 "" V 5930 3950 50  0001 C CNN
F 3 "" H 6000 3950 50  0001 C CNN
	1    6000 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 3950 5850 3950
Connection ~ 5800 3800
Wire Wire Line
	6150 3950 6250 3950
Connection ~ 6250 3950
Wire Wire Line
	5150 2000 5400 2000
Wire Wire Line
	5400 2250 5300 2250
Wire Wire Line
	5300 2250 5300 2000
Connection ~ 5300 2000
Wire Wire Line
	5700 2000 5850 2000
Wire Wire Line
	5700 2250 5800 2250
Wire Wire Line
	5800 2000 5800 2650
Connection ~ 5800 2000
$Comp
L R R9
U 1 1 5AAEC68E
P 6000 2400
F 0 "R9" V 6080 2400 50  0000 C CNN
F 1 "20k" V 6000 2400 50  0000 C CNN
F 2 "" V 5930 2400 50  0001 C CNN
F 3 "" H 6000 2400 50  0001 C CNN
	1    6000 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 2400 5850 2400
Connection ~ 5800 2250
Wire Wire Line
	6150 2400 6250 2400
Connection ~ 6250 2400
Wire Wire Line
	8500 1950 8900 1950
Wire Wire Line
	9200 1950 9350 1950
Wire Wire Line
	8900 2200 8750 2200
Wire Wire Line
	8750 2200 8750 1950
Connection ~ 8750 1950
Wire Wire Line
	9200 2200 9300 2200
Wire Wire Line
	9300 1950 9300 2600
Connection ~ 9300 1950
$Comp
L R R11
U 1 1 5AAECB0F
P 9500 2350
F 0 "R11" V 9580 2350 50  0000 C CNN
F 1 "20k" V 9500 2350 50  0000 C CNN
F 2 "" V 9430 2350 50  0001 C CNN
F 3 "" H 9500 2350 50  0001 C CNN
	1    9500 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	9300 2350 9350 2350
Connection ~ 9300 2200
Wire Wire Line
	9650 2350 9750 2350
Connection ~ 9750 2350
Wire Wire Line
	8500 3500 8900 3500
Wire Wire Line
	8900 3750 8800 3750
Wire Wire Line
	8800 3750 8800 3500
Connection ~ 8800 3500
Wire Wire Line
	9200 3500 9350 3500
Wire Wire Line
	9200 3750 9300 3750
Wire Wire Line
	9300 3500 9300 4150
Connection ~ 9300 3500
$Comp
L R R12
U 1 1 5AAECEF5
P 9500 3900
F 0 "R12" V 9580 3900 50  0000 C CNN
F 1 "20k" V 9500 3900 50  0000 C CNN
F 2 "" V 9430 3900 50  0001 C CNN
F 3 "" H 9500 3900 50  0001 C CNN
	1    9500 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	9300 3900 9350 3900
Connection ~ 9300 3750
Wire Wire Line
	9650 3900 9750 3900
Connection ~ 9750 3900
Wire Wire Line
	2400 2650 2450 2650
Connection ~ 2400 2450
Wire Wire Line
	2750 2650 2850 2650
Connection ~ 2850 2650
$Comp
L D_Zener D7
U 1 1 5AB071F9
P 2600 2650
F 0 "D7" H 2600 2750 50  0000 C CNN
F 1 "SMBJ14A-13-F" H 2500 2550 50  0000 C CNN
F 2 "" H 2600 2650 50  0001 C CNN
F 3 "" H 2600 2650 50  0001 C CNN
	1    2600 2650
	1    0    0    -1  
$EndComp
$Comp
L D_Zener D8
U 1 1 5AB07384
P 2600 4250
F 0 "D8" H 2600 4350 50  0000 C CNN
F 1 "SMBJ14A-13-F" H 2500 4150 50  0000 C CNN
F 2 "" H 2600 4250 50  0001 C CNN
F 3 "" H 2600 4250 50  0001 C CNN
	1    2600 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4250 2850 4250
Connection ~ 2850 4250
Wire Wire Line
	2400 4250 2450 4250
Connection ~ 2400 4000
$Comp
L D_Zener D10
U 1 1 5AB076A1
P 6000 4200
F 0 "D10" H 6000 4300 50  0000 C CNN
F 1 "SMBJ14A-13-F" H 5900 4100 50  0000 C CNN
F 2 "" H 6000 4200 50  0001 C CNN
F 3 "" H 6000 4200 50  0001 C CNN
	1    6000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4200 6250 4200
Connection ~ 6250 4200
Wire Wire Line
	5800 4200 5850 4200
Connection ~ 5800 3950
$Comp
L D_Zener D9
U 1 1 5AB0789C
P 6000 2650
F 0 "D9" H 6000 2750 50  0000 C CNN
F 1 "SMBJ14A-13-F" H 5900 2550 50  0000 C CNN
F 2 "" H 6000 2650 50  0001 C CNN
F 3 "" H 6000 2650 50  0001 C CNN
	1    6000 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2650 5850 2650
Connection ~ 5800 2400
Wire Wire Line
	6150 2650 6250 2650
Connection ~ 6250 2650
$Comp
L D_Zener D11
U 1 1 5AB08A88
P 9500 2600
F 0 "D11" H 9500 2700 50  0000 C CNN
F 1 "SMBJ14A-13-F" H 9400 2500 50  0000 C CNN
F 2 "" H 9500 2600 50  0001 C CNN
F 3 "" H 9500 2600 50  0001 C CNN
	1    9500 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 2600 9750 2600
Connection ~ 9750 2600
Wire Wire Line
	9300 2600 9350 2600
Connection ~ 9300 2350
$Comp
L D_Zener D12
U 1 1 5AB08CA7
P 9500 4150
F 0 "D12" H 9500 4250 50  0000 C CNN
F 1 "SMBJ14A-13-F" H 9400 4050 50  0000 C CNN
F 2 "" H 9500 4150 50  0001 C CNN
F 3 "" H 9500 4150 50  0001 C CNN
	1    9500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 4150 9750 4150
Connection ~ 9750 4150
Wire Wire Line
	9300 4150 9350 4150
Connection ~ 9300 3900
$Comp
L AD8418 MEAS_FB_A
U 1 1 5AB0952B
P 3750 2900
F 0 "MEAS_FB_A" H 3450 3325 50  0000 R CNN
F 1 "AD8418" H 3450 3250 50  0000 R CNN
F 2 "" H 3800 2550 50  0001 C CNN
F 3 "" H 4400 2200 50  0001 C CNN
	1    3750 2900
	1    0    0    -1  
$EndComp
Text HLabel 1100 1250 0    60   Input ~ 0
+5V
Connection ~ 6250 900 
Text Label 1250 1250 0    60   ~ 0
5V
Wire Wire Line
	1100 1250 1250 1250
$Comp
L R R13
U 1 1 5AB0B7A4
P 3750 2400
F 0 "R13" V 3830 2400 50  0000 C CNN
F 1 "0.001" V 3750 2400 50  0000 C CNN
F 2 "" V 3680 2400 50  0001 C CNN
F 3 "" H 3750 2400 50  0001 C CNN
	1    3750 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 3000 4200 3000
Wire Wire Line
	4200 3000 4200 3350
Wire Wire Line
	1550 4800 9750 4800
Text Label 3550 3350 2    60   ~ 0
GND
Wire Wire Line
	4200 3350 3550 3350
Wire Wire Line
	3750 3300 3750 3350
Connection ~ 3750 3350
Text HLabel 4300 2900 2    60   Output ~ 0
FB_A
Wire Wire Line
	4150 2900 4300 2900
Text Label 3250 2800 2    60   ~ 0
5V
Wire Wire Line
	3350 3100 3250 3100
Wire Wire Line
	3250 3100 3250 2800
Wire Wire Line
	3350 3000 3250 3000
Connection ~ 3250 3000
Wire Wire Line
	3550 2500 3550 2400
Wire Wire Line
	2850 2400 3600 2400
Wire Wire Line
	3900 2400 4150 2400
Wire Wire Line
	3950 2400 3950 2500
Connection ~ 3950 2400
Connection ~ 2850 2400
Connection ~ 3550 2400
$Comp
L AD8418 MEAS_FB_B
U 1 1 5AB0D80F
P 7200 3050
F 0 "MEAS_FB_B" H 6900 3475 50  0000 R CNN
F 1 "AD8418" H 6900 3400 50  0000 R CNN
F 2 "" H 7250 2700 50  0001 C CNN
F 3 "" H 7850 2350 50  0001 C CNN
	1    7200 3050
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 5AB0D8B6
P 7200 2550
F 0 "R14" V 7280 2550 50  0000 C CNN
F 1 "0.001" V 7200 2550 50  0000 C CNN
F 2 "" V 7130 2550 50  0001 C CNN
F 3 "" H 7200 2550 50  0001 C CNN
	1    7200 2550
	0    -1   -1   0   
$EndComp
Text Label 7000 3500 2    60   ~ 0
GND
Wire Wire Line
	7000 2650 7000 2550
Wire Wire Line
	6250 2550 7050 2550
Wire Wire Line
	7350 2550 7700 2550
Wire Wire Line
	7400 2550 7400 2650
Wire Wire Line
	7600 3150 7650 3150
Wire Wire Line
	7650 3150 7650 3500
Wire Wire Line
	7200 3500 7200 3450
Connection ~ 7200 3500
Text Label 6700 3000 2    60   ~ 0
5V
Wire Wire Line
	6700 3000 6700 3250
Wire Wire Line
	6700 3250 6800 3250
Wire Wire Line
	6800 3150 6700 3150
Connection ~ 6700 3150
Wire Wire Line
	7650 3500 7000 3500
Connection ~ 6250 2550
Connection ~ 7000 2550
Connection ~ 7400 2550
Text HLabel 7750 3050 2    60   Output ~ 0
FB_B
Wire Wire Line
	7600 3050 7750 3050
Text Label 1750 5000 3    60   ~ 0
GND
Wire Wire Line
	1750 4800 1750 5000
Connection ~ 1750 4800
Connection ~ 2850 4800
Connection ~ 6250 4800
Wire Wire Line
	9750 900  9750 1300
$EndSCHEMATC
