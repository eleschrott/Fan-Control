EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "PWM Fan Control"
Date "2020-01-28"
Rev "1.0.2020"
Comp "eleschrott"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20SU U1
U 1 1 5E1F474D
P 6400 3800
F 0 "U1" H 5871 3846 50  0000 R CNN
F 1 "ATtiny85-20SU" H 7100 3150 50  0000 R CNN
F 2 "ATTINY85-20SU:SOIC127P798X216-8N" H 6400 3800 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 6400 3800 50  0001 C CNN
	1    6400 3800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:TIP122 Q1
U 1 1 5E1F573B
P 8800 3500
F 0 "Q1" H 9007 3546 50  0000 L CNN
F 1 "TIP122" H 9007 3455 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 9000 3425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/TI/TIP120.pdf" H 8800 3500 50  0001 L CNN
	1    8800 3500
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D1
U 1 1 5E1F74AF
P 8900 2450
F 0 "D1" V 8854 2529 50  0000 L CNN
F 1 "1N4007" V 8945 2529 50  0000 L CNN
F 2 "Diodes_ThroughHole:D_DO-41_SOD81_P10.16mm_Horizontal" H 8900 2275 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 8900 2450 50  0001 C CNN
	1    8900 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5E1F89DA
P 8000 3500
F 0 "R2" V 7793 3500 50  0000 C CNN
F 1 "1k" V 7884 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7930 3500 50  0001 C CNN
F 3 "~" H 8000 3500 50  0001 C CNN
	1    8000 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5E1F91B1
P 8000 2300
F 0 "R1" V 7793 2300 50  0000 C CNN
F 1 "10k" V 7884 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7930 2300 50  0001 C CNN
F 3 "~" H 8000 2300 50  0001 C CNN
	1    8000 2300
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5E1FB28D
P 5950 2600
F 0 "C2" V 6050 2700 50  0000 C CNN
F 1 "100n" V 5850 2750 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5988 2450 50  0001 C CNN
F 3 "~" H 5950 2600 50  0001 C CNN
	1    5950 2600
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5E1FB88C
P 6400 1600
F 0 "#PWR03" H 6400 1450 50  0001 C CNN
F 1 "+5V" H 6415 1773 50  0000 C CNN
F 2 "" H 6400 1600 50  0001 C CNN
F 3 "" H 6400 1600 50  0001 C CNN
	1    6400 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR04
U 1 1 5E1FBE70
P 8900 1600
F 0 "#PWR04" H 8900 1450 50  0001 C CNN
F 1 "+12V" H 8915 1773 50  0000 C CNN
F 2 "" H 8900 1600 50  0001 C CNN
F 3 "" H 8900 1600 50  0001 C CNN
	1    8900 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5E1FC98F
P 6400 5300
F 0 "#PWR09" H 6400 5050 50  0001 C CNN
F 1 "GND" H 6405 5127 50  0000 C CNN
F 2 "" H 6400 5300 50  0001 C CNN
F 3 "" H 6400 5300 50  0001 C CNN
	1    6400 5300
	1    0    0    -1  
$EndComp
Connection ~ 6400 2300
Wire Wire Line
	6400 2300 6400 1600
$Comp
L power:GND #PWR08
U 1 1 5E202213
P 5500 5300
F 0 "#PWR08" H 5500 5050 50  0001 C CNN
F 1 "GND" H 5505 5127 50  0000 C CNN
F 2 "" H 5500 5300 50  0001 C CNN
F 3 "" H 5500 5300 50  0001 C CNN
	1    5500 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5E21101B
P 8900 5300
F 0 "#PWR010" H 8900 5050 50  0001 C CNN
F 1 "GND" H 8905 5127 50  0000 C CNN
F 2 "" H 8900 5300 50  0001 C CNN
F 3 "" H 8900 5300 50  0001 C CNN
	1    8900 5300
	1    0    0    -1  
$EndComp
Text GLabel 9550 3800 2    50   Input ~ 0
TempSensor
Text GLabel 9550 2950 2    50   Input ~ 0
FAN-
Text GLabel 9550 1950 2    50   Output ~ 0
FAN+
Text GLabel 9550 4000 2    50   Input ~ 0
ICSP_RST
Text GLabel 9550 4100 2    50   Input ~ 0
ICSP_SCK
Text GLabel 9550 4200 2    50   Output ~ 0
ICSP_MISO
Text GLabel 9550 4300 2    50   Input ~ 0
ICSP_MOSI
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J4
U 1 1 5E26D9D7
P 3450 4500
AR Path="/5E26D9D7" Ref="J4"  Part="1" 
AR Path="/5E22FFD4/5E26D9D7" Ref="J?"  Part="1" 
F 0 "J4" V 3454 4680 50  0000 L CNN
F 1 "Conn_ICSP" V 3545 4680 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 3450 4500 50  0001 C CNN
F 3 "~" H 3450 4500 50  0001 C CNN
	1    3450 4500
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5E26D9DD
P 3450 3200
AR Path="/5E22FFD4/5E26D9DD" Ref="J?"  Part="1" 
AR Path="/5E26D9DD" Ref="J2"  Part="1" 
F 0 "J2" H 3530 3242 50  0000 L CNN
F 1 "Conn_TempSensor" H 3530 3151 50  0000 L CNN
F 2 "Sockets_MOLEX_KK-System:Socket_MOLEX-KK-RM2-54mm_Lock_3pin_straight" H 3450 3200 50  0001 C CNN
F 3 "~" H 3450 3200 50  0001 C CNN
	1    3450 3200
	1    0    0    -1  
$EndComp
Text GLabel 2250 3300 0    50   Output ~ 0
TempSensor
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5E26D9E5
P 3450 2600
AR Path="/5E22FFD4/5E26D9E5" Ref="J?"  Part="1" 
AR Path="/5E26D9E5" Ref="J1"  Part="1" 
F 0 "J1" H 3530 2592 50  0000 L CNN
F 1 "Conn_Power" H 3530 2501 50  0000 L CNN
F 2 "Sockets_MOLEX_KK-System:Socket_MOLEX-KK-RM2-54mm_Lock_4pin_straight" H 3450 2600 50  0001 C CNN
F 3 "~" H 3450 2600 50  0001 C CNN
	1    3450 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5E26D9EB
P 3450 3750
AR Path="/5E22FFD4/5E26D9EB" Ref="J?"  Part="1" 
AR Path="/5E26D9EB" Ref="J3"  Part="1" 
F 0 "J3" H 3530 3742 50  0000 L CNN
F 1 "Conn_Fan" H 3530 3651 50  0000 L CNN
F 2 "Sockets_MOLEX_KK-System:Socket_MOLEX-KK-RM3-96mm_Lock_2pin_straight" H 3450 3750 50  0001 C CNN
F 3 "~" H 3450 3750 50  0001 C CNN
	1    3450 3750
	1    0    0    -1  
$EndComp
Text GLabel 2250 3750 0    50   Input ~ 0
FAN+
Text GLabel 2250 3850 0    50   Output ~ 0
FAN-
$Comp
L power:GND #PWR?
U 1 1 5E26D9F5
P 2850 3450
AR Path="/5E22FFD4/5E26D9F5" Ref="#PWR?"  Part="1" 
AR Path="/5E26D9F5" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 2850 3200 50  0001 C CNN
F 1 "GND" H 2855 3277 50  0000 C CNN
F 2 "" H 2850 3450 50  0001 C CNN
F 3 "" H 2850 3450 50  0001 C CNN
	1    2850 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E26D9FB
P 2850 2850
AR Path="/5E22FFD4/5E26D9FB" Ref="#PWR?"  Part="1" 
AR Path="/5E26D9FB" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 2850 2600 50  0001 C CNN
F 1 "GND" H 2855 2677 50  0000 C CNN
F 2 "" H 2850 2850 50  0001 C CNN
F 3 "" H 2850 2850 50  0001 C CNN
	1    2850 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E26DA08
P 2700 1550
AR Path="/5E22FFD4/5E26DA08" Ref="#PWR?"  Part="1" 
AR Path="/5E26DA08" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 2700 1400 50  0001 C CNN
F 1 "+5V" H 2715 1723 50  0000 C CNN
F 2 "" H 2700 1550 50  0001 C CNN
F 3 "" H 2700 1550 50  0001 C CNN
	1    2700 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E26DA0E
P 2500 1550
AR Path="/5E22FFD4/5E26DA0E" Ref="#PWR?"  Part="1" 
AR Path="/5E26DA0E" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 2500 1400 50  0001 C CNN
F 1 "+12V" H 2515 1723 50  0000 C CNN
F 2 "" H 2500 1550 50  0001 C CNN
F 3 "" H 2500 1550 50  0001 C CNN
	1    2500 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3100 2700 3100
Wire Wire Line
	2700 3100 2700 2500
Wire Wire Line
	2700 2500 3250 2500
Text GLabel 2250 4700 0    50   Output ~ 0
ICSP_RST
Text GLabel 2250 4600 0    50   Output ~ 0
ICSP_SCK
Text GLabel 2250 4400 0    50   Input ~ 0
ICSP_MISO
Text GLabel 2250 4500 0    50   Output ~ 0
ICSP_MOSI
Wire Wire Line
	3550 4300 3550 4100
Wire Wire Line
	3550 4100 2850 4100
Wire Wire Line
	2850 4100 2850 4400
Wire Wire Line
	2950 4600 2950 4200
Wire Wire Line
	2950 4200 3450 4200
Wire Wire Line
	3450 4200 3450 4300
Wire Wire Line
	3350 4300 3050 4300
Wire Wire Line
	3050 4300 3050 4700
Wire Wire Line
	3450 4800 3450 4900
$Comp
L power:GND #PWR?
U 1 1 5E26DA2E
P 3350 5300
AR Path="/5E22FFD4/5E26DA2E" Ref="#PWR?"  Part="1" 
AR Path="/5E26DA2E" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 3350 5050 50  0001 C CNN
F 1 "GND" H 3355 5127 50  0000 C CNN
F 2 "" H 3350 5300 50  0001 C CNN
F 3 "" H 3350 5300 50  0001 C CNN
	1    3350 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4800 3550 5000
Connection ~ 2700 3100
Wire Wire Line
	5500 2300 5500 2600
Wire Wire Line
	6400 2300 6400 2600
Wire Wire Line
	5800 2300 5500 2300
Wire Wire Line
	6100 2300 6400 2300
Wire Wire Line
	6100 2600 6400 2600
Wire Wire Line
	5800 2600 5500 2600
Wire Wire Line
	8150 3500 8600 3500
Wire Wire Line
	8900 2600 8900 2950
Wire Wire Line
	9550 2950 8900 2950
Connection ~ 8900 2950
Wire Wire Line
	8900 2950 8900 3300
Wire Wire Line
	9550 1950 8900 1950
Wire Wire Line
	8900 1950 8900 2300
Wire Wire Line
	8400 2300 8150 2300
Wire Wire Line
	2250 3750 3250 3750
Wire Wire Line
	2250 3850 3250 3850
Wire Wire Line
	2250 4400 2850 4400
Wire Wire Line
	2250 4500 2850 4500
Wire Wire Line
	2700 3100 2700 5000
Wire Wire Line
	2950 4600 2250 4600
Wire Wire Line
	2250 4700 3050 4700
Wire Wire Line
	3250 3300 2250 3300
Wire Wire Line
	3250 3200 2850 3200
Wire Wire Line
	2850 3200 2850 3450
Wire Wire Line
	8900 3700 8900 5300
Wire Wire Line
	8900 1600 8900 1950
Connection ~ 8900 1950
Wire Wire Line
	6400 5300 6400 4400
Connection ~ 5500 2600
Wire Wire Line
	3250 2800 2850 2800
Wire Wire Line
	2850 2800 2850 2850
Wire Wire Line
	3250 2600 2850 2600
Wire Wire Line
	2850 2600 2850 2800
Connection ~ 2850 2800
Wire Wire Line
	2700 1550 2700 2500
Connection ~ 2700 2500
Wire Wire Line
	3250 2700 2500 2700
Wire Wire Line
	2500 2700 2500 1550
Wire Wire Line
	6400 3200 6400 2600
Connection ~ 6400 2600
$Comp
L power:+5V #PWR0101
U 1 1 5E2DB34A
P 5500 6800
F 0 "#PWR0101" H 5500 6650 50  0001 C CNN
F 1 "+5V" H 5515 6973 50  0000 C CNN
F 2 "" H 5500 6800 50  0001 C CNN
F 3 "" H 5500 6800 50  0001 C CNN
	1    5500 6800
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5E2DBA9F
P 5850 6800
F 0 "#FLG0101" H 5850 6875 50  0001 C CNN
F 1 "PWR_FLAG" H 5850 6973 50  0000 C CNN
F 2 "" H 5850 6800 50  0001 C CNN
F 3 "~" H 5850 6800 50  0001 C CNN
	1    5850 6800
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5E2DC002
P 6300 6800
F 0 "#FLG0102" H 6300 6875 50  0001 C CNN
F 1 "PWR_FLAG" H 6300 6973 50  0000 C CNN
F 2 "" H 6300 6800 50  0001 C CNN
F 3 "~" H 6300 6800 50  0001 C CNN
	1    6300 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E2DC3B5
P 6300 7400
F 0 "#PWR0102" H 6300 7150 50  0001 C CNN
F 1 "GND" H 6305 7227 50  0000 C CNN
F 2 "" H 6300 7400 50  0001 C CNN
F 3 "" H 6300 7400 50  0001 C CNN
	1    6300 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 6800 5500 7400
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5E2E010B
P 4950 6800
F 0 "#FLG0103" H 4950 6875 50  0001 C CNN
F 1 "PWR_FLAG" H 4950 6973 50  0000 C CNN
F 2 "" H 4950 6800 50  0001 C CNN
F 3 "~" H 4950 6800 50  0001 C CNN
	1    4950 6800
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0103
U 1 1 5E2E08C6
P 4600 6800
F 0 "#PWR0103" H 4600 6650 50  0001 C CNN
F 1 "+12V" H 4615 6973 50  0000 C CNN
F 2 "" H 4600 6800 50  0001 C CNN
F 3 "" H 4600 6800 50  0001 C CNN
	1    4600 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 7400 4950 6800
Wire Wire Line
	8400 2300 8400 4000
Wire Wire Line
	7850 2300 6400 2300
Wire Wire Line
	7500 3600 7000 3600
Wire Wire Line
	7600 3700 7000 3700
Wire Wire Line
	7000 3800 9550 3800
Wire Wire Line
	7000 4000 8400 4000
Wire Wire Line
	3350 4800 3350 5300
Wire Wire Line
	5500 2600 5500 5300
NoConn ~ 7000 3900
Wire Wire Line
	8400 4000 9550 4000
Connection ~ 8400 4000
Wire Wire Line
	7600 3700 7600 4100
Wire Wire Line
	7600 4100 9550 4100
Wire Wire Line
	7500 3600 7500 4200
Wire Wire Line
	7500 4200 9550 4200
Wire Wire Line
	7000 3500 7400 3500
Wire Wire Line
	7400 3500 7400 4300
Wire Wire Line
	7400 4300 9550 4300
Connection ~ 7400 3500
Wire Wire Line
	7400 3500 7850 3500
Wire Wire Line
	6300 6800 6300 7400
Wire Wire Line
	5500 7400 5850 7400
Wire Wire Line
	5850 7400 5850 6800
Wire Wire Line
	4950 7400 4600 7400
Wire Wire Line
	4600 7400 4600 6800
Text Notes 3550 3450 0    39   ~ 0
You can use a LM35DT as sensor,\nthis type works fine between -55ºC and +150ºC.
Wire Wire Line
	3450 4900 2850 4900
Wire Wire Line
	2850 4900 2850 4500
Wire Wire Line
	3550 5000 2700 5000
$Comp
L Device:CP C1
U 1 1 5E31CA3E
P 5950 2300
F 0 "C1" V 6000 2400 50  0000 C CNN
F 1 "10µ" V 5800 2450 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5988 2150 50  0001 C CNN
F 3 "~" H 5950 2300 50  0001 C CNN
	1    5950 2300
	0    1    1    0   
$EndComp
$EndSCHEMATC
