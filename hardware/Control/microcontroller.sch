EESchema Schematic File Version 4
LIBS:control_v1-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "Brushless DC Motor Controller"
Date "2019-02-02"
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
P 3800 2550
F 0 "M1" H 3800 2550 45  0001 C CNN
F 1 "STM32F4-DISCOVERY" H 3800 2750 45  0001 C CNN
F 2 "STM32F4-DISCOVERY-SIMON_STM32F4-DISCOVERY" H 3830 2700 20  0001 C CNN
F 3 "" H 3800 2550 60  0001 C CNN
	1    3800 2550
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
Text Notes 1900 5800 0    59   ~ 0
STM uses 2x25 0.1" female headers on each side\nPN: NPPC252KFMS-RC
Text Label 3400 2550 2    50   ~ 0
GND
Text Label 3400 2750 2    50   ~ 0
GND
Text Label 3400 3650 2    50   ~ 0
GND
Text Label 3400 4950 2    50   ~ 0
GND
Text Label 5000 4950 0    50   ~ 0
GND
Text Label 5000 2550 0    50   ~ 0
GND
Text Label 6850 2550 2    50   ~ 0
GND
Text Label 8350 2550 0    50   ~ 0
GND
Text Label 8350 4950 0    50   ~ 0
GND
Text Label 6850 4950 2    50   ~ 0
GND
Wire Wire Line
	6850 2550 7000 2550
Wire Wire Line
	6850 4950 7000 4950
Wire Wire Line
	8350 4950 8200 4950
Wire Wire Line
	8200 2550 8350 2550
Wire Wire Line
	5000 2550 4800 2550
Wire Wire Line
	3600 2550 3400 2550
Wire Wire Line
	3400 2750 3600 2750
Wire Wire Line
	3600 3650 3400 3650
Wire Wire Line
	5000 4950 4800 4950
Wire Wire Line
	3600 4950 3400 4950
Text HLabel 3400 3450 0    49   Input ~ 0
PHASEB_FB
Wire Wire Line
	3400 3450 3600 3450
Text HLabel 3400 3850 0    49   Output ~ 0
HS_A_TTL_PWM
Text HLabel 3400 3950 0    49   Output ~ 0
HS_B_TTL_PWM
Text HLabel 3400 4050 0    49   Output ~ 0
HS_C_TTL_PWM
Wire Wire Line
	3400 3850 3600 3850
Wire Wire Line
	3600 3950 3400 3950
Wire Wire Line
	3400 4050 3600 4050
Text HLabel 3400 4550 0    49   BiDi ~ 0
USART_RX
Wire Wire Line
	3400 4550 3600 4550
Text HLabel 5000 3450 2    49   Input ~ 0
PHASEA_FB
Wire Wire Line
	5000 3450 4800 3450
Text HLabel 5000 3550 2    49   Input ~ 0
HALL_C
Wire Wire Line
	5000 3550 4800 3550
Text HLabel 5000 3750 2    49   Output ~ 0
LS_A_TTL_PWM
Text HLabel 5000 3850 2    49   Output ~ 0
LS_B_TTL_PWM
Text HLabel 5000 3950 2    49   Output ~ 0
LS_C_TTL_PWM
Wire Wire Line
	5000 3750 4800 3750
Wire Wire Line
	4800 3850 5000 3850
Wire Wire Line
	5000 3950 4800 3950
Text Label 6850 2650 2    49   ~ 0
5v
Text Label 8350 2650 0    49   ~ 0
5v
Wire Wire Line
	8350 2650 8200 2650
Wire Wire Line
	7000 2650 6850 2650
Text HLabel 6800 3450 0    49   BiDi ~ 0
I2C_SCL
Wire Wire Line
	6800 3450 7000 3450
Text HLabel 6800 3750 0    49   Input ~ 0
HALL_A
Wire Wire Line
	6800 3750 7000 3750
Text HLabel 8400 3650 2    49   BiDi ~ 0
I2C_SDA
Wire Wire Line
	8400 3650 8200 3650
Text HLabel 8400 3750 2    49   Input ~ 0
HALL_B
Wire Wire Line
	8400 3750 8200 3750
NoConn ~ 3600 2650
NoConn ~ 4800 2650
NoConn ~ 4800 2750
NoConn ~ 4800 2850
NoConn ~ 4800 2950
NoConn ~ 4800 3050
NoConn ~ 4800 3150
NoConn ~ 4800 3250
NoConn ~ 4800 3350
NoConn ~ 4800 3650
NoConn ~ 4800 4050
NoConn ~ 4800 4150
NoConn ~ 4800 4250
NoConn ~ 4800 4350
NoConn ~ 4800 4550
NoConn ~ 4800 4650
NoConn ~ 4800 4750
NoConn ~ 4800 4850
NoConn ~ 3600 4850
NoConn ~ 3600 4750
NoConn ~ 3600 4650
NoConn ~ 3600 4450
NoConn ~ 3600 4350
NoConn ~ 3600 4250
NoConn ~ 3600 4150
NoConn ~ 3600 3750
NoConn ~ 3600 3550
NoConn ~ 3600 3350
NoConn ~ 3600 3250
NoConn ~ 3600 3150
NoConn ~ 3600 3050
NoConn ~ 3600 2950
NoConn ~ 3600 2850
NoConn ~ 7000 2750
NoConn ~ 7000 2850
NoConn ~ 7000 2950
NoConn ~ 7000 3050
NoConn ~ 7000 3150
NoConn ~ 7000 3250
NoConn ~ 7000 3350
NoConn ~ 7000 3550
NoConn ~ 7000 3650
NoConn ~ 7000 3850
NoConn ~ 7000 3950
NoConn ~ 7000 4050
NoConn ~ 7000 4150
NoConn ~ 7000 4250
NoConn ~ 7000 4350
NoConn ~ 7000 4450
NoConn ~ 7000 4550
NoConn ~ 7000 4650
NoConn ~ 7000 4750
NoConn ~ 7000 4850
NoConn ~ 8200 4850
NoConn ~ 8200 4750
NoConn ~ 8200 4650
NoConn ~ 8200 4550
NoConn ~ 8200 4450
NoConn ~ 8200 4350
NoConn ~ 8200 4250
NoConn ~ 8200 4150
NoConn ~ 8200 4050
NoConn ~ 8200 3950
NoConn ~ 8200 3850
NoConn ~ 8200 3550
NoConn ~ 8200 3450
NoConn ~ 8200 3350
NoConn ~ 8200 3250
NoConn ~ 8200 3150
NoConn ~ 8200 3050
NoConn ~ 8200 2950
NoConn ~ 8200 2850
NoConn ~ 8200 2750
Text HLabel 5000 4450 2    49   BiDi ~ 0
USART_TX
Wire Wire Line
	5000 4450 4800 4450
$EndSCHEMATC
