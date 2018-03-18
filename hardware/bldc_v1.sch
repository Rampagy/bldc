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
Sheet 1 3
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
S 1850 1450 1500 1400
U 5AAE8848
F0 "GateDriver" 60
F1 "GateDriver.sch" 60
$EndSheet
$Sheet
S 4950 1450 1550 1450
U 5AAE8860
F0 "MOSFETS" 60
F1 "MOSFETS.sch" 60
F2 "PhaseA" O R 6500 1900 60 
F3 "+V" I L 4950 1550 60 
F4 "PhaseB" O R 6500 2050 60 
F5 "PhaseC" O R 6500 2200 60 
F6 "GND" O L 4950 2800 60 
F7 "HS_A_GATE" I L 4950 1850 60 
F8 "LS_A_GATE" I L 4950 1950 60 
F9 "HS_B_GATE" I L 4950 2050 60 
F10 "LS_B_GATE" I L 4950 2150 60 
F11 "HS_C_GATE" I L 4950 2250 60 
F12 "LS_C_GATE" I L 4950 2350 60 
$EndSheet
$EndSCHEMATC
