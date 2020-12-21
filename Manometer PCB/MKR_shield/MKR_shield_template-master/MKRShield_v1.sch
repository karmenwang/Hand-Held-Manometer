EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MKR Shield"
Date "2018-07-31"
Rev "0.1"
Comp "Electronic Cats"
Comment1 "Rocio Rodriguez"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	5745 2600 6145 2600
Wire Notes Line
	6145 2800 5745 2800
Wire Notes Line
	6145 2700 6445 2700
Wire Notes Line
	5445 2700 5745 2700
Wire Notes Line
	5445 2900 5445 2700
Wire Notes Line
	6545 2850 6545 3150
Wire Notes Line
	6345 2850 6545 2850
Wire Notes Line
	6445 2850 6445 2700
Wire Notes Line
	6445 4900 6445 3150
Wire Notes Line
	5745 2600 5745 2800
Wire Notes Line
	6145 2600 6145 2800
Wire Notes Line
	5345 2900 5535 2900
Text Label 6600 3700 0    50   ~ 0
RESET
Text Label 6595 3800 0    50   ~ 0
14 <- TX
Text Label 6595 3900 0    50   ~ 0
13 -> RX
Text Label 6595 4000 0    50   ~ 0
12SCL
Text Label 6595 4100 0    50   ~ 0
11SDA
Text Label 6595 4200 0    50   ~ 0
10MISO
Text Label 6595 4300 0    50   ~ 0
9SCK
Text Label 6595 4400 0    50   ~ 0
8MOSI
Text Label 6595 4500 0    50   ~ 0
7
Text Label 6595 4600 0    50   ~ 0
6
$Comp
L power:GND #PWR?
U 1 1 5B6115E9
P 7500 3600
AR Path="/5B60DF55/5B6115E9" Ref="#PWR?"  Part="1" 
AR Path="/5B6115E9" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 7500 3350 50  0001 C CNN
F 1 "GND" V 7505 3472 50  0000 R CNN
F 2 "" H 7500 3600 50  0001 C CNN
F 3 "" H 7500 3600 50  0001 C CNN
	1    7500 3600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5B6115EF
P 6595 3400
AR Path="/5B60DF55/5B6115EF" Ref="#PWR?"  Part="1" 
AR Path="/5B6115EF" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 6595 3250 50  0001 C CNN
F 1 "VCC" V 6612 3528 50  0000 L CNN
F 2 "" H 6595 3400 50  0001 C CNN
F 3 "" H 6595 3400 50  0001 C CNN
	1    6595 3400
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:DLHR-L10D-E1BD-C-NAV8 IC1
U 1 1 5ECC67F9
P 2400 3500
F 0 "IC1" H 3300 3765 50  0000 C CNN
F 1 "DLHR-L10D-E1BD-C-NAV8" H 3300 3674 50  0000 C CNN
F 2 "SamacSys_Parts:DLHRL10DE1BDCNAV8" H 4050 3600 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/DLHR-L10D-E1BD-C-NAV8.pdf" H 4050 3500 50  0001 L CNN
F 4 "Board Mount Pressure Sensors Low Voltage Digital Pressure Sensor, 10 inH2O" H 4050 3400 50  0001 L CNN "Description"
F 5 "9.15" H 4050 3300 50  0001 L CNN "Height"
F 6 "Amphenol" H 4050 3200 50  0001 L CNN "Manufacturer_Name"
F 7 "DLHR-L10D-E1BD-C-NAV8" H 4050 3100 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "683-LHRL10DE1BDCNAV8" H 4050 3000 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Amphenol-All-Sensors/DLHR-L10D-E1BD-C-NAV8?qs=F5EMLAvA7IAG72p6SeJcnw%3D%3D" H 4050 2900 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 4050 2800 50  0001 L CNN "RS Part Number"
F 11 "" H 4050 2700 50  0001 L CNN "RS Price/Stock"
	1    2400 3500
	1    0    0    -1  
$EndComp
$Comp
L MKRShield_v1-rescue:70543-0004-70543-0004 J4
U 1 1 5ECC90E8
P 7700 3700
F 0 "J4" H 8328 3546 50  0000 L CNN
F 1 "70543-0004" H 8328 3455 50  0000 L CNN
F 2 "70543-0004:SHDR5W109P0X254_1X5_1525X660X1143P" H 8350 3800 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/2/70543-0004.pdf" H 8350 3700 50  0001 L CNN
F 4 "MOLEX - 70543-0004 - HEADER, 2.54MM, 5WAY" H 8350 3600 50  0001 L CNN "Description"
F 5 "11.43" H 8350 3500 50  0001 L CNN "Height"
F 6 "Molex" H 8350 3400 50  0001 L CNN "Manufacturer_Name"
F 7 "70543-0004" H 8350 3300 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "538-70543-0004" H 8350 3200 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Molex/70543-0004?qs=ZwgtpdmWYYQRmWofVdhxiw%3D%3D" H 8350 3100 50  0001 L CNN "Mouser Price/Stock"
F 10 "6792480P" H 8350 3000 50  0001 L CNN "RS Part Number"
F 11 "http://uk.rs-online.com/web/p/products/6792480P" H 8350 2900 50  0001 L CNN "RS Price/Stock"
F 12 "70190952" H 8350 2800 50  0001 L CNN "Allied_Number"
F 13 "https://www.alliedelec.com/molexincorporated-70543-0004/70190952/" H 8350 2700 50  0001 L CNN "Allied Price/Stock"
	1    7700 3700
	1    0    0    -1  
$EndComp
$Comp
L MKRShield_v1-rescue:171971-0102-171971-0102 IC2
U 1 1 5ECCB13E
P 8300 4900
F 0 "IC2" H 8928 4896 50  0000 L CNN
F 1 "171971-0102" H 8928 4805 50  0000 L CNN
F 2 "171971-0102:1719710102" H 8950 5000 50  0001 L CNN
F 3 "https://www.molex.com/pdm_docs/sd/1719710102_sd.pdf" H 8950 4900 50  0001 L CNN
F 4 "2.54mm Pitch SL Header, Single Row, Vertical, LCP, Shrouded, Through Hole, 0.38m Selective Gold (Au) Plating, 02 Circuits" H 8950 4800 50  0001 L CNN "Description"
F 5 "12.16" H 8950 4700 50  0001 L CNN "Height"
F 6 "Molex" H 8950 4600 50  0001 L CNN "Manufacturer_Name"
F 7 "171971-0102" H 8950 4500 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "538-171971-0102" H 8950 4400 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Molex/171971-0102?qs=lc2O%252BfHJPVbT9FZNghdDGA%3D%3D" H 8950 4300 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 8950 4200 50  0001 L CNN "RS Part Number"
F 11 "" H 8950 4100 50  0001 L CNN "RS Price/Stock"
	1    8300 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4400 7550 3900
Wire Wire Line
	7550 3900 7700 3900
Wire Wire Line
	7350 4300 7350 4000
Wire Wire Line
	7350 4000 7700 4000
Wire Wire Line
	4750 4300 4750 3000
Wire Wire Line
	7700 3250 7700 3700
Wire Wire Line
	4900 4500 4900 5050
Wire Wire Line
	7250 5050 7250 3800
Wire Wire Line
	7250 3800 7700 3800
$Comp
L Device:R Sensor_SDA1
U 1 1 5ECD839E
P 1800 4350
F 0 "Sensor_SDA1" H 1870 4396 50  0000 L CNN
F 1 "1k" H 1870 4305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 1730 4350 50  0001 C CNN
F 3 "~" H 1800 4350 50  0001 C CNN
	1    1800 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R Sensor_SCL1
U 1 1 5ECD88FD
P 2450 4350
F 0 "Sensor_SCL1" H 2520 4396 50  0000 L CNN
F 1 "1k" H 2520 4305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 2380 4350 50  0001 C CNN
F 3 "~" H 2450 4350 50  0001 C CNN
	1    2450 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3500 2100 3500
Wire Wire Line
	2100 3500 2100 3200
Wire Wire Line
	2400 3600 2100 3600
Wire Wire Line
	1800 3600 1800 3400
Wire Wire Line
	7150 4100 7150 2450
Wire Wire Line
	7150 2450 1350 2450
Wire Wire Line
	1350 2450 1350 3700
Wire Wire Line
	1350 3700 1800 3700
Wire Wire Line
	1800 4200 1800 3700
Connection ~ 1800 3700
Wire Wire Line
	1800 3700 2400 3700
Wire Wire Line
	1800 4500 1800 5000
Wire Wire Line
	1800 5000 1550 5000
Wire Wire Line
	1550 5000 1550 3400
Wire Wire Line
	1550 3400 1800 3400
Connection ~ 1800 3400
Wire Wire Line
	2450 4200 2400 4200
Wire Wire Line
	2400 4200 2400 4050
Wire Wire Line
	2450 4500 2450 4750
Wire Wire Line
	2450 4750 2100 4750
Wire Wire Line
	2100 4750 2100 3600
Connection ~ 2100 3600
Wire Wire Line
	2100 3600 1800 3600
Wire Wire Line
	6950 4000 6950 5400
Wire Wire Line
	2800 5400 2800 4050
Wire Wire Line
	2800 4050 2400 4050
Connection ~ 2400 4050
Wire Wire Line
	2400 4050 2400 3800
$Comp
L Device:R 5k1
U 1 1 5ECE6B9D
P 7550 5300
F 0 "5k1" V 7343 5300 50  0000 C CNN
F 1 "Button_Resistor" V 7434 5300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 7480 5300 50  0001 C CNN
F 3 "~" H 7550 5300 50  0001 C CNN
	1    7550 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 4900 7200 4900
Wire Wire Line
	7700 5300 7950 5300
Wire Wire Line
	7950 5300 7950 5000
Connection ~ 7950 5000
Wire Wire Line
	1800 3400 1800 2800
Wire Wire Line
	7400 5300 7400 5800
Wire Wire Line
	7400 5800 850  5800
Wire Wire Line
	850  5800 850  3200
Wire Wire Line
	850  3200 2100 3200
Connection ~ 2100 3200
Wire Wire Line
	2100 3200 2100 2900
Wire Wire Line
	7950 5000 8300 5000
Wire Wire Line
	6600 4400 7550 4400
Wire Wire Line
	6600 4300 7350 4300
Wire Wire Line
	6600 4100 7150 4100
Wire Wire Line
	6600 4000 6950 4000
Wire Wire Line
	5100 5000 7950 5000
Wire Wire Line
	6950 5400 2800 5400
Wire Wire Line
	4900 5050 7250 5050
Wire Wire Line
	5300 4500 4900 4500
Wire Wire Line
	4950 3250 7700 3250
Wire Wire Line
	4950 4400 4950 3250
Wire Wire Line
	5300 4400 4950 4400
Wire Notes Line
	5445 4900 5445 3100
Text Label 5295 3310 2    50   ~ 0
AREF
Text Label 5295 3410 2    50   ~ 0
DAC0/A0
Text Label 5295 3510 2    50   ~ 0
A1
Text Label 5295 3610 2    50   ~ 0
A2
Text Label 5295 3710 2    50   ~ 0
A3
Text Label 5295 3810 2    50   ~ 0
A4
Text Label 5295 3910 2    50   ~ 0
A5
Text Label 5295 4010 2    50   ~ 0
A6
Text Label 5295 4110 2    50   ~ 0
0
Text Label 5295 4210 2    50   ~ 0
1
$Comp
L Connector_Generic:Conn_01x14 J?
U 1 1 5B6115DB
P 5500 3900
AR Path="/5B60DF55/5B6115DB" Ref="J?"  Part="1" 
AR Path="/5B6115DB" Ref="J1"  Part="1" 
F 0 "J1" H 5460 3090 50  0000 L CNN
F 1 " " H 5440 3000 50  0000 L CNN
F 2 "Pines:61301411121" H 5500 3900 50  0001 C CNN
F 3 "~" H 5500 3900 50  0001 C CNN
	1    5500 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4300 4750 4300
Text Label 5295 4610 2    50   ~ 0
~~5
Text Label 5295 4510 2    50   ~ 0
~~4
Text Label 5295 4410 2    50   ~ 0
~~3
Text Label 5295 4310 2    50   ~ 0
~~2
Wire Notes Line
	6345 3150 6545 3150
Wire Notes Line
	5345 3100 5535 3100
Wire Notes Line
	5445 4900 6445 4900
Wire Notes Line
	6345 3150 6345 2850
Wire Notes Line
	5345 3100 5345 2900
Wire Notes Line
	5535 2900 5535 3100
$Comp
L power:+3.3V #PWR?
U 1 1 5B6115BD
P 6595 3500
AR Path="/5B60DF55/5B6115BD" Ref="#PWR?"  Part="1" 
AR Path="/5B6115BD" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 6595 3350 50  0001 C CNN
F 1 "+3.3V" V 6610 3628 50  0000 L CNN
F 2 "" H 6595 3500 50  0001 C CNN
F 3 "" H 6595 3500 50  0001 C CNN
	1    6595 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 2800 7200 2800
Wire Wire Line
	7350 3500 7350 2800
$Comp
L power:+5V #PWR?
U 1 1 5B6115B7
P 6595 3300
AR Path="/5B60DF55/5B6115B7" Ref="#PWR?"  Part="1" 
AR Path="/5B6115B7" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 6595 3150 50  0001 C CNN
F 1 "+5V" V 6610 3428 50  0000 L CNN
F 2 "" H 6595 3300 50  0001 C CNN
F 3 "" H 6595 3300 50  0001 C CNN
	1    6595 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 3500 7350 3500
$Comp
L Connector_Generic:Conn_01x14 J?
U 1 1 5B6115E2
P 6400 4000
AR Path="/5B60DF55/5B6115E2" Ref="J?"  Part="1" 
AR Path="/5B6115E2" Ref="J2"  Part="1" 
F 0 "J2" H 6405 4710 50  0000 C CNN
F 1 " " H 6410 4790 50  0000 C CNN
F 2 "Pines:61301411121" H 6400 4000 50  0001 C CNN
F 3 "~" H 6400 4000 50  0001 C CNN
	1    6400 4000
	-1   0    0    1   
$EndComp
Connection ~ 7350 2800
Connection ~ 7500 2900
Text Label 7500 2800 0    50   ~ 0
3V3
Wire Wire Line
	7350 2800 7650 2800
Wire Wire Line
	7500 2900 7650 2900
$Comp
L SamacSys_Parts:70543-0037 J3
U 1 1 5ECC5828
P 7650 2800
F 0 "J3" H 8278 2746 50  0000 L CNN
F 1 "70543-0037" H 8278 2655 50  0000 L CNN
F 2 "SamacSys_Parts:SHDR3W89P0X254_1X3_1017X508X1143P" H 8300 2900 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/2/70543-0037.pdf" H 8300 2800 50  0001 L CNN
F 4 "Header 2.54mm, single row, vertical, 3w Molex SL Series, Series Number 70543, 2.54mm Pitch 3 Way 1 Row Straight PCB Header, Solder Termination, 3A" H 8300 2700 50  0001 L CNN "Description"
F 5 "11.43" H 8300 2600 50  0001 L CNN "Height"
F 6 "Molex" H 8300 2500 50  0001 L CNN "Manufacturer_Name"
F 7 "70543-0037" H 8300 2400 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "538-70543-0037" H 8300 2300 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Molex/70543-0037?qs=tYx%252BZc2nXqrtAYibG9KyeQ%3D%3D" H 8300 2200 50  0001 L CNN "Mouser Price/Stock"
F 10 "6700810P" H 8300 2100 50  0001 L CNN "RS Part Number"
F 11 "http://uk.rs-online.com/web/p/products/6700810P" H 8300 2000 50  0001 L CNN "RS Price/Stock"
F 12 "70373264" H 8300 1900 50  0001 L CNN "Allied_Number"
F 13 "https://www.alliedelec.com/molex-incorporated-70543-0037/70373264/" H 8300 1800 50  0001 L CNN "Allied Price/Stock"
	1    7650 2800
	1    0    0    -1  
$EndComp
Text Label 7600 2900 0    50   ~ 0
GND
Connection ~ 7500 3600
Wire Wire Line
	6600 3600 7500 3600
Wire Wire Line
	5100 4200 5300 4200
Wire Wire Line
	5100 4200 5100 5000
Wire Wire Line
	2100 2900 7500 2900
Wire Wire Line
	7200 4900 7200 2800
Connection ~ 7200 2800
Wire Wire Line
	7200 2800 7350 2800
Wire Wire Line
	4750 3000 7650 3000
Wire Wire Line
	7500 3600 7500 2900
Text Label 7550 3000 0    50   ~ 0
SCE
Text Label 7600 3250 0    50   ~ 0
RST
Text Label 7600 3800 0    50   ~ 0
DC
Text Label 7600 3900 0    50   ~ 0
MOSI
Text Label 7600 4000 0    50   ~ 0
SCLK
Text Label 7750 4900 0    50   ~ 0
3V3
Text Label 7600 5000 0    50   ~ 0
Pin1
Text Label 7400 5450 0    50   ~ 0
GND
Text Label 2300 4750 0    50   ~ 0
3V3
Text Label 1650 5000 0    50   ~ 0
3V3
$EndSCHEMATC
