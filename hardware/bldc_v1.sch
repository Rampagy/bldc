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
LIBS:crf_1
LIBS:STM32F4-DISCOVERY-SIMON
LIBS:bldc_v1-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title "Brushless DC controller"
Date "2018-03-16"
Rev "1"
Comp "Loma Incorporated"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4900 2600 1750 1700
U 5AAE8848
F0 "GateDriver" 60
F1 "GateDriver.sch" 60
F2 "PhaseA" I R 6650 3750 60 
F3 "PhaseB" I R 6650 3850 60 
F4 "PhaseC" I R 6650 3950 60 
F5 "GND" U L 4900 2800 60 
F6 "LS_A_GATE" O R 6650 3100 60 
F7 "HS_A_GATE" O R 6650 3000 60 
F8 "LS_B_GATE" O R 6650 3300 60 
F9 "HS_B_GATE" O R 6650 3200 60 
F10 "LS_C_GATE" O R 6650 3500 60 
F11 "HS_C_GATE" O R 6650 3400 60 
F12 "LS_A_TTL_PWM" I L 4900 3100 60 
F13 "HS_A_TTL_PWM" I L 4900 3000 60 
F14 "LS_B_TTL_PWM" I L 4900 3300 60 
F15 "HS_B_TTL_PWM" I L 4900 3200 60 
F16 "LS_C_TTL_PWM" I L 4900 3500 60 
F17 "HS_C_TTL_PWM" I L 4900 3400 60 
F18 "+12V" I L 4900 2700 60 
$EndSheet
$Sheet
S 7900 2600 1500 1750
U 5AAE8860
F0 "MOSFETS" 60
F1 "MOSFETS.sch" 60
F2 "PhaseA" O L 7900 3750 60 
F3 "PhaseB" O L 7900 3850 60 
F4 "PhaseC" O L 7900 3950 60 
F5 "GND" U L 7900 2850 60 
F6 "HS_A_GATE" I L 7900 3000 60 
F7 "LS_A_GATE" I L 7900 3100 60 
F8 "HS_B_GATE" I L 7900 3200 60 
F9 "LS_B_GATE" I L 7900 3300 60 
F10 "HS_C_GATE" I L 7900 3400 60 
F11 "LS_C_GATE" I L 7900 3500 60 
F12 "FB_A" O R 9400 2700 60 
F13 "FB_B" O R 9400 2800 60 
F14 "48v" I L 7900 2650 60 
F15 "5V" I L 7900 2750 60 
$EndSheet
Wire Wire Line
	6650 3000 7900 3000
Wire Wire Line
	6650 3100 7900 3100
Wire Wire Line
	6650 3200 7900 3200
Wire Wire Line
	6650 3300 7900 3300
Wire Wire Line
	6650 3400 7900 3400
Wire Wire Line
	6650 3500 7900 3500
$Sheet
S 3650 1950 650  500 
U 5AB4694D
F0 "PowerConverter" 60
F1 "PowerConverter.sch" 60
F2 "GND" U L 3650 2300 60 
F3 "12v" O R 4300 2300 60 
F4 "48v" I L 3650 2100 60 
F5 "5v" O R 4300 2100 60 
$EndSheet
Wire Wire Line
	4300 2100 7400 2100
Wire Wire Line
	4900 2700 4700 2700
Wire Wire Line
	4700 2700 4700 2300
Wire Wire Line
	4700 2300 4300 2300
Wire Wire Line
	3350 1750 7500 1750
Wire Wire Line
	3500 1750 3500 2100
Wire Wire Line
	3500 2100 3650 2100
$Sheet
S 2600 2700 1300 1350
U 5AB68FA6
F0 "Microcontroller" 60
F1 "Microcontroller.sch" 60
F2 "GND" U L 2600 2900 60 
F3 "5v" I L 2600 2800 60 
F4 "LS_A_TTL_PWM" O R 3900 3100 60 
F5 "HS_A_TTL_PWM" O R 3900 3000 60 
F6 "HS_B_TTL_PWM" O R 3900 3200 60 
F7 "HS_C_TTL_PWM" O R 3900 3400 60 
F8 "LS_B_TTL_PWM" O R 3900 3300 60 
F9 "LS_C_TTL_PWM" O R 3900 3500 60 
F10 "HALL_A" I L 2600 3100 60 
F11 "HALL_B" I L 2600 3200 60 
F12 "HALL_C" I L 2600 3300 60 
F13 "USART_TX" O L 2600 3600 60 
F14 "USART_RX" I L 2600 3500 60 
F15 "FB_A" I L 2600 3800 60 
F16 "FB_B" I L 2600 3900 60 
F17 "I2C_SCL" U R 3900 3750 60 
F18 "I2C_SDA" U R 3900 3850 60 
$EndSheet
Wire Wire Line
	3900 3000 4900 3000
Wire Wire Line
	3900 3100 4900 3100
Wire Wire Line
	3900 3200 4900 3200
Wire Wire Line
	4900 3300 3900 3300
Wire Wire Line
	3900 3400 4900 3400
Wire Wire Line
	4900 3500 3900 3500
Text Label 4900 1950 0    60   ~ 0
5v
Wire Wire Line
	4900 1950 4750 1950
Wire Wire Line
	4750 1950 4750 2100
Connection ~ 4750 2100
Text Label 2400 2800 2    60   ~ 0
5v
Wire Wire Line
	2400 2800 2600 2800
Text Label 3350 2300 2    60   ~ 0
GND
Wire Wire Line
	3350 2300 3650 2300
Text Label 2400 2900 2    60   ~ 0
GND
Wire Wire Line
	2400 2900 2600 2900
Text Label 4800 2800 2    60   ~ 0
GND
Text Label 7750 2850 2    60   ~ 0
GND
Wire Wire Line
	7500 1750 7500 2650
Wire Wire Line
	7500 2650 7900 2650
Wire Wire Line
	7400 2100 7400 2750
Wire Wire Line
	7400 2750 7900 2750
Wire Wire Line
	7750 2850 7900 2850
Wire Wire Line
	6650 3950 7900 3950
Wire Wire Line
	6650 3750 7900 3750
Wire Wire Line
	6650 3850 7900 3850
Wire Wire Line
	4800 2800 4900 2800
Text Label 9600 2700 0    60   ~ 0
FB_A
Wire Wire Line
	9400 2700 9600 2700
Text Label 9600 2800 0    60   ~ 0
FB_B
Wire Wire Line
	9400 2800 9600 2800
Text Label 2400 3800 2    60   ~ 0
FB_A
Wire Wire Line
	2400 3800 2600 3800
Text Label 2400 3900 2    60   ~ 0
FB_B
Wire Wire Line
	2400 3900 2600 3900
Text Label 1400 3200 0    60   ~ 0
GND
Text Notes 1450 3600 0    60   ~ 0
Intentionally connected \nbackwards
Wire Wire Line
	1250 3500 2600 3500
Wire Wire Line
	2600 3600 1250 3600
Wire Wire Line
	1400 3200 1250 3200
Text Label 4500 4200 1    60   ~ 0
5v
Wire Wire Line
	4500 4200 4500 4450
Text Label 4200 4200 1    60   ~ 0
GND
Text Label 3350 1750 2    60   ~ 0
48v
Connection ~ 3500 1750
Text Label 1650 950  0    60   ~ 0
48v
Wire Wire Line
	1650 950  1400 950 
Text Label 1650 1050 0    60   ~ 0
GND
Wire Wire Line
	1650 1050 1400 1050
$Comp
L Conn_01x06 J1
U 1 1 5AB8F4C0
P 1050 3500
F 0 "J1" H 1050 3800 50  0000 C CNN
F 1 "Conn_01x06" V 1150 3500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm_SMD_Pin1Right" H 1050 3500 50  0001 C CNN
F 3 "" H 1050 3500 50  0001 C CNN
F 4 "TSM-106-01-L-SV" V 1250 3500 60  0000 C CNN "PN"
	1    1050 3500
	-1   0    0    1   
$EndComp
$Comp
L Screw_Terminal_01x05 J3
U 1 1 5AB91720
P 1900 2300
F 0 "J3" V 2200 2300 50  0000 C CNN
F 1 "Screw_Terminal_01x05" V 2000 2300 50  0000 C CNN
F 2 "custom:1x5_ScrewTerminal_1A" H 1900 2300 50  0001 C CNN
F 3 "" H 1900 2300 50  0001 C CNN
F 4 "1935190" V 2100 2300 60  0000 C CNN "PN"
	1    1900 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2600 3300 1700 3300
Wire Wire Line
	1700 3300 1700 2500
Wire Wire Line
	1800 2500 1800 3200
Wire Wire Line
	1800 3200 2600 3200
Wire Wire Line
	2600 3100 1900 3100
Wire Wire Line
	1900 3100 1900 2500
Text Label 2100 2600 3    60   ~ 0
5v
Wire Wire Line
	2100 2600 2100 2500
Text Label 2000 2600 3    60   ~ 0
GND
Wire Wire Line
	2000 2600 2000 2500
$Comp
L 1x2_ScrewTerminal_65A J2
U 1 1 5ABA8578
P 1200 1050
F 0 "J2" H 1200 1150 50  0000 C CNN
F 1 "1x2_ScrewTerminal_65A" H 1200 850 50  0000 C CNN
F 2 "custom:1x2_ScrewTerminal_65A" H 1200 1050 50  0001 C CNN
F 3 "" H 1200 1050 50  0001 C CNN
	1    1200 1050
	-1   0    0    1   
$EndComp
$Comp
L Screw_Terminal_01x03 J5
U 1 1 5ABABEF7
P 7350 4750
F 0 "J5" H 7350 4950 50  0000 C CNN
F 1 "Screw_Terminal_01x03" V 7450 4750 50  0000 C CNN
F 2 "custom:1x3_ScrewTerminal_65A" H 7350 4750 50  0001 C CNN
F 3 "" H 7350 4750 50  0001 C CNN
F 4 "1986660-3" V 7550 4750 60  0000 C CNN "PN"
	1    7350 4750
	0    1    1    0   
$EndComp
$Comp
L RJ45 J4
U 1 1 5ABC4D57
P 4350 4900
F 0 "J4" H 4550 5400 50  0000 C CNN
F 1 "RJ45" H 4200 5400 50  0000 C CNN
F 2 "Connectors:RJ45_8" H 4350 4900 50  0001 C CNN
F 3 "" H 4350 4900 50  0001 C CNN
F 4 "SS-6488S-A-NF" H 4350 5500 60  0000 C CNN "PN"
	1    4350 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4200 4200 4200 4450
Wire Wire Line
	3900 3750 4100 3750
Wire Wire Line
	4100 3750 4100 4450
Wire Wire Line
	4000 4450 4000 3850
Wire Wire Line
	4000 3850 3900 3850
NoConn ~ 3800 5250
NoConn ~ 1250 3300
NoConn ~ 1250 3400
NoConn ~ 1250 3700
NoConn ~ 4700 4450
NoConn ~ 4600 4450
NoConn ~ 4400 4450
NoConn ~ 4300 4450
Wire Wire Line
	7250 4550 7250 3950
Connection ~ 7250 3950
Wire Wire Line
	7350 4550 7350 3850
Connection ~ 7350 3850
Wire Wire Line
	7450 4550 7450 3750
Connection ~ 7450 3750
$EndSCHEMATC
