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
Sheet 5 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L STM32F4-DISCOVERY M?
U 1 1 5AB69504
P 3750 2200
F 0 "M?" H 3750 2200 45  0001 C CNN
F 1 "STM32F4-DISCOVERY" H 3750 2200 45  0001 C CNN
F 2 "STM32F4-DISCOVERY-SIMON_STM32F4-DISCOVERY" H 3780 2350 20  0001 C CNN
F 3 "" H 3750 2200 60  0001 C CNN
	1    3750 2200
	1    0    0    -1  
$EndComp
Text HLabel 1200 1350 0    60   UnSpc ~ 0
GND
Text Label 1400 1350 0    60   ~ 0
GND
Wire Wire Line
	1200 1350 1400 1350
Text Label 3400 2200 2    60   ~ 0
GND
Text Label 3400 2400 2    60   ~ 0
GND
Text Label 3400 3300 2    60   ~ 0
GND
Text Label 3400 4600 2    60   ~ 0
GND
Text Label 4900 4600 0    60   ~ 0
GND
Text Label 4900 2200 0    60   ~ 0
GND
Text Label 6800 2200 2    60   ~ 0
GND
Text Label 6800 4600 2    60   ~ 0
GND
Text Label 8300 2200 0    60   ~ 0
GND
Text Label 8300 4600 0    60   ~ 0
GND
Wire Wire Line
	3400 2200 3550 2200
Wire Wire Line
	3400 2400 3550 2400
Wire Wire Line
	3400 3300 3550 3300
Wire Wire Line
	3400 4600 3550 4600
Wire Wire Line
	4900 4600 4750 4600
Wire Wire Line
	4900 2200 4750 2200
Wire Wire Line
	6800 2200 6950 2200
Wire Wire Line
	6800 4600 6950 4600
Wire Wire Line
	8300 4600 8150 4600
Wire Wire Line
	8300 2200 8150 2200
Text HLabel 1200 1500 0    60   Input ~ 0
5v
Text Label 1400 1500 0    60   ~ 0
5v
Wire Wire Line
	1200 1500 1400 1500
Text Label 8300 2300 0    60   ~ 0
5v
Text Label 6800 2300 2    60   ~ 0
5v
Wire Wire Line
	6800 2300 6950 2300
Wire Wire Line
	8150 2300 8300 2300
Text HLabel 4900 3400 2    60   Output ~ 0
LS_A_TTL_PWM
Text HLabel 3400 3500 0    60   Output ~ 0
HS_A_TTL_PWM
Text HLabel 3400 3600 0    60   Output ~ 0
HS_B_TTL_PWM
Text HLabel 3400 3700 0    60   Output ~ 0
HS_C_TTL_PWM
Text HLabel 4900 3500 2    60   Output ~ 0
LS_B_TTL_PWM
Text HLabel 4900 3600 2    60   Output ~ 0
LS_C_TTL_PWM
Wire Wire Line
	3400 3500 3550 3500
Wire Wire Line
	4900 3400 4750 3400
Wire Wire Line
	4900 3500 4750 3500
Wire Wire Line
	3400 3600 3550 3600
Wire Wire Line
	4900 3600 4750 3600
Wire Wire Line
	3400 3700 3550 3700
Text HLabel 6800 3400 0    60   Input ~ 0
HALL_A
Wire Wire Line
	6800 3400 6950 3400
Text HLabel 8300 3400 2    60   Input ~ 0
HALL_B
Wire Wire Line
	8300 3400 8150 3400
Text HLabel 4900 3200 2    60   Input ~ 0
HALL_C
Wire Wire Line
	4900 3200 4750 3200
Text HLabel 4900 4100 2    60   Output ~ 0
USART_TX
Wire Wire Line
	4900 4100 4750 4100
Text HLabel 3400 4200 0    60   Input ~ 0
USART_RX
Wire Wire Line
	3550 4200 3400 4200
Text HLabel 4900 3100 2    60   Input ~ 0
FB_A
Text HLabel 3400 3100 0    60   Input ~ 0
FB_B
Wire Wire Line
	3400 3100 3550 3100
Wire Wire Line
	4750 3100 4900 3100
Text HLabel 1800 3200 0    60   Input ~ 0
Throttle
Wire Wire Line
	1800 3200 3550 3200
$EndSCHEMATC
