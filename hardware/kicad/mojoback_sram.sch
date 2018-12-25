EESchema Schematic File Version 4
LIBS:mojoback_sram-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L KL_PARTS:62WV51212ALL SRAM1
U 1 1 5A51D7E6
P 5150 -150
F 0 "SRAM1" H 5125 2465 50  0000 C CNN
F 1 "62WV51212ALL" H 5125 2374 50  0000 C CNN
F 2 "KICAD_PARTS:KL_TSOP44_Pitch0.8mm" H 5150 -150 50  0001 C CNN
F 3 "" H 5150 -150 50  0001 C CNN
	1    5150 -150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 -2500 4550 -2500
Wire Wire Line
	4550 -2400 4100 -2400
Wire Wire Line
	4550 -2300 4100 -2300
Wire Wire Line
	4550 -2200 4100 -2200
Wire Wire Line
	4550 -2100 4100 -2100
Wire Wire Line
	4550 -2000 4100 -2000
Wire Wire Line
	4550 -1900 4100 -1900
Wire Wire Line
	4550 -1800 4100 -1800
Wire Wire Line
	4550 -1700 4100 -1700
Wire Wire Line
	4550 -1600 4100 -1600
Wire Wire Line
	4550 -1500 4100 -1500
Wire Wire Line
	4550 -1300 4100 -1300
Wire Wire Line
	4550 -1200 4100 -1200
Wire Wire Line
	4550 -1100 4100 -1100
Wire Wire Line
	4550 -1000 4100 -1000
Wire Wire Line
	4550 -900 4100 -900
Wire Wire Line
	4550 -800 4100 -800
Wire Wire Line
	4550 -700 4100 -700
Wire Wire Line
	4550 -600 4100 -600
Wire Wire Line
	4550 -500 4100 -500
Wire Wire Line
	4550 -400 4100 -400
Wire Wire Line
	5700 -2200 6000 -2200
Wire Wire Line
	5700 -2100 6000 -2100
Wire Wire Line
	5700 -2000 6000 -2000
Wire Wire Line
	5700 -1900 6000 -1900
Wire Wire Line
	5700 -1800 6000 -1800
Wire Wire Line
	5700 -1700 6000 -1700
Wire Wire Line
	5700 -1600 6000 -1600
Wire Wire Line
	5700 -1500 5900 -1500
Wire Wire Line
	5700 -1400 6000 -1400
Wire Wire Line
	5700 -1300 6000 -1300
Wire Wire Line
	5700 -1200 6000 -1200
Wire Wire Line
	5700 -1100 6000 -1100
Wire Wire Line
	5700 -1000 6000 -1000
Wire Wire Line
	5700 -900 6000 -900
Wire Wire Line
	5700 -800 6000 -800
Wire Wire Line
	5700 -700 6000 -700
Wire Wire Line
	5700 -600 6000 -600
Wire Wire Line
	5700 -500 6000 -500
Wire Wire Line
	5700 -400 6000 -400
Entry Wire Line
	4000 -2600 4100 -2500
Entry Wire Line
	4000 -2500 4100 -2400
Entry Wire Line
	4000 -2400 4100 -2300
Entry Wire Line
	4000 -2300 4100 -2200
Entry Wire Line
	4000 -2200 4100 -2100
Entry Wire Line
	4000 -900 4100 -800
Entry Wire Line
	4000 -800 4100 -700
Entry Wire Line
	4000 -700 4100 -600
Entry Wire Line
	4000 -600 4100 -500
Entry Wire Line
	4000 -500 4100 -400
Entry Wire Line
	6000 -400 6100 -300
Entry Wire Line
	6000 -500 6100 -400
Entry Wire Line
	6000 -600 6100 -500
Entry Wire Line
	6000 -700 6100 -600
Entry Wire Line
	6000 -800 6100 -700
Entry Wire Line
	6000 -900 6100 -800
Entry Wire Line
	6000 -1000 6100 -900
Entry Wire Line
	6000 -1100 6100 -1000
Entry Wire Line
	6000 -1200 6100 -1100
Entry Wire Line
	6000 -1300 6100 -1200
Entry Wire Line
	6000 -1600 6100 -1500
Entry Wire Line
	6000 -1700 6100 -1600
Entry Wire Line
	6000 -1800 6100 -1700
Entry Wire Line
	6000 -1900 6100 -1800
Entry Wire Line
	4000 -2000 4100 -1900
Entry Wire Line
	4000 -1900 4100 -1800
Entry Wire Line
	4000 -1800 4100 -1700
Entry Wire Line
	4000 -1700 4100 -1600
Entry Wire Line
	4000 -1400 4100 -1300
Entry Wire Line
	4000 -1300 4100 -1200
Entry Wire Line
	4000 -1200 4100 -1100
Entry Wire Line
	4000 -1100 4100 -1000
Text Label 5800 -2100 0    50   ~ 0
sram_ub1
Text Label 5800 -2000 0    50   ~ 0
sram_lb1
Text Label 4150 -2000 0    50   ~ 0
sram_cs1
Text Label 4200 -900 0    50   ~ 0
sram_we1
Text Notes 4700 350  0    197  ~ 0
SRAM1\n\n
Wire Wire Line
	4550 -1400 4350 -1400
$Comp
L power:GND #PWR06
U 1 1 5A8C0210
P 4350 -1400
F 0 "#PWR06" H 4350 -1650 50  0001 C CNN
F 1 "GND" H 4355 -1573 50  0000 C CNN
F 2 "" H 4350 -1400 50  0001 C CNN
F 3 "" H 4350 -1400 50  0001 C CNN
	1    4350 -1400
	1    0    0    -1  
$EndComp
Text Label 4250 -1500 0    50   ~ 0
3V3
$Comp
L KL_PARTS:kl_bitsy U2
U 1 1 5A5625EC
P 2100 7700
F 0 "U2" H 2250 11050 50  0000 C CNN
F 1 "kl_bitsy" H 2250 10950 50  0000 C CNN
F 2 "KICAD_PARTS:kl_bitsy" H 2100 7250 50  0001 C CNN
F 3 "" H 2100 7250 50  0001 C CNN
	1    2100 7700
	1    0    0    -1  
$EndComp
$Comp
L KL_PARTS:kl_VGA U3
U 1 1 5A56EA6C
P 1500 3700
F 0 "U3" H 2227 4096 50  0000 L CNN
F 1 "kl_VGA" H 2227 4005 50  0000 L CNN
F 2 "KL_CONNECTORS:KL_VGA" H 2300 4400 50  0001 C CNN
F 3 "" H 2300 4400 50  0001 C CNN
	1    1500 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3150 1200 3150
Wire Wire Line
	1600 3250 1200 3250
Wire Wire Line
	1600 3350 1200 3350
Wire Wire Line
	1600 3450 1200 3450
Wire Wire Line
	1600 3550 1200 3550
Text Label 5800 -2200 0    50   ~ 0
sram_oe1
Wire Wire Line
	5700 -2500 6050 -2500
Wire Wire Line
	5700 -2400 6050 -2400
Wire Wire Line
	5700 -2300 6050 -2300
Entry Wire Line
	6050 -2500 6150 -2400
Entry Wire Line
	6050 -2400 6150 -2300
Entry Wire Line
	6050 -2300 6150 -2200
Wire Bus Line
	6150 -2400 6400 -2400
Wire Bus Line
	6100 -1800 6350 -1800
Wire Bus Line
	6100 -800 6400 -800
Wire Bus Line
	4000 -2700 3900 -2700
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5A60520D
P 1150 1200
F 0 "#FLG01" H 1150 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 1150 1374 50  0000 C CNN
F 2 "" H 1150 1200 50  0001 C CNN
F 3 "" H 1150 1200 50  0001 C CNN
	1    1150 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5A605071
P 1150 1600
F 0 "#PWR07" H 1150 1350 50  0001 C CNN
F 1 "GND" H 1155 1427 50  0000 C CNN
F 2 "" H 1150 1600 50  0001 C CNN
F 3 "" H 1150 1600 50  0001 C CNN
	1    1150 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1250 1300 1250
Wire Wire Line
	1150 1250 1150 1200
Wire Wire Line
	1150 1550 1000 1550
Wire Wire Line
	1150 1550 1150 1600
Connection ~ 1150 1550
Wire Wire Line
	1300 1550 1150 1550
Connection ~ 1150 1250
Wire Wire Line
	1000 1250 1150 1250
$Comp
L mojoback_sram-rescue:C-device C2
U 1 1 5A5C6C4E
P 1300 1400
F 0 "C2" H 1415 1446 50  0000 L CNN
F 1 ".1uf" H 1415 1355 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1338 1250 50  0001 C CNN
F 3 "" H 1300 1400 50  0001 C CNN
	1    1300 1400
	1    0    0    -1  
$EndComp
$Comp
L mojoback_sram-rescue:C-device C1
U 1 1 5A5C6C07
P 1000 1400
F 0 "C1" H 1115 1446 50  0000 L CNN
F 1 ".1uf" H 1115 1355 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1038 1250 50  0001 C CNN
F 3 "" H 1000 1400 50  0001 C CNN
	1    1000 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4700 800  4700
Wire Wire Line
	1250 4800 800  4800
Wire Wire Line
	1250 4900 800  4900
Wire Wire Line
	1250 5000 800  5000
Wire Wire Line
	1250 5100 800  5100
Wire Wire Line
	1250 5200 800  5200
Wire Wire Line
	1250 5300 800  5300
Wire Wire Line
	1250 5400 800  5400
Wire Wire Line
	1250 5500 800  5500
Wire Wire Line
	1250 5600 800  5600
Wire Wire Line
	1250 5700 800  5700
Wire Wire Line
	1250 5800 800  5800
Wire Wire Line
	1250 5900 800  5900
Wire Wire Line
	1250 6000 800  6000
Wire Wire Line
	1250 6100 800  6100
Wire Wire Line
	1250 6200 800  6200
Wire Wire Line
	1250 6300 800  6300
Wire Wire Line
	1800 6650 1800 7000
Wire Wire Line
	3300 4650 3650 4650
Wire Wire Line
	3300 4750 3650 4750
Wire Wire Line
	3300 4850 3650 4850
Wire Wire Line
	3300 4950 3650 4950
Wire Wire Line
	3300 5050 3650 5050
Wire Wire Line
	3300 5150 3650 5150
Wire Wire Line
	3300 5250 3650 5250
Wire Wire Line
	3300 5350 3650 5350
Wire Wire Line
	3300 5450 3650 5450
Wire Wire Line
	3300 5550 3650 5550
Wire Wire Line
	3300 5650 3650 5650
Wire Wire Line
	3300 5750 3650 5750
Wire Wire Line
	3300 5850 3650 5850
Wire Wire Line
	3300 5950 3650 5950
Wire Wire Line
	3300 6050 3650 6050
Wire Wire Line
	3300 6150 3650 6150
Wire Wire Line
	4750 3400 4300 3400
Wire Wire Line
	4750 3500 4300 3500
Wire Wire Line
	4750 3600 4300 3600
Wire Wire Line
	4750 3700 4300 3700
Wire Wire Line
	4750 3800 4300 3800
Wire Wire Line
	4750 3900 4300 3900
Wire Wire Line
	4750 4000 4300 4000
Wire Wire Line
	4750 4100 4300 4100
Wire Wire Line
	4750 4200 4300 4200
Wire Wire Line
	4750 4300 4300 4300
Wire Wire Line
	4750 4400 4300 4400
Wire Wire Line
	4750 4500 4300 4500
Wire Wire Line
	4750 4600 4300 4600
Wire Wire Line
	4750 4700 4300 4700
Wire Wire Line
	4750 4800 4300 4800
Wire Wire Line
	4750 4900 4300 4900
Wire Wire Line
	4750 5000 4300 5000
Wire Wire Line
	4750 5100 4300 5100
Wire Wire Line
	4750 5200 4300 5200
Wire Wire Line
	4750 5300 4300 5300
Wire Wire Line
	4750 5400 4300 5400
Wire Wire Line
	4750 5500 4300 5500
Wire Wire Line
	4750 5600 4300 5600
Wire Wire Line
	4750 5700 4300 5700
Wire Wire Line
	4750 5800 4300 5800
Wire Wire Line
	6700 3600 7150 3600
Wire Wire Line
	6700 3700 7150 3700
Wire Wire Line
	6700 3800 7150 3800
Wire Wire Line
	6700 3900 7150 3900
Wire Wire Line
	6700 4000 7150 4000
Wire Wire Line
	6700 4100 7150 4100
Wire Wire Line
	6700 4200 7150 4200
Wire Wire Line
	6700 4300 7150 4300
Wire Wire Line
	6700 4400 7150 4400
Wire Wire Line
	6700 4500 7150 4500
Wire Wire Line
	6700 4600 7150 4600
Wire Wire Line
	6700 4700 7150 4700
Wire Wire Line
	6700 4800 7150 4800
Wire Wire Line
	6700 4900 7150 4900
Wire Wire Line
	6700 5000 7150 5000
Wire Wire Line
	6700 5100 7150 5100
Wire Wire Line
	6700 5200 7150 5200
Wire Wire Line
	6700 5300 7150 5300
Wire Wire Line
	6700 5400 7150 5400
Wire Wire Line
	6700 5500 7150 5500
Wire Wire Line
	6700 5600 7150 5600
Wire Wire Line
	6700 5700 7150 5700
Wire Wire Line
	6700 5800 7150 5800
Wire Wire Line
	8300 3500 7900 3500
Wire Wire Line
	8300 3600 7900 3600
Wire Wire Line
	8300 3700 7900 3700
Wire Wire Line
	8300 3800 7900 3800
Wire Wire Line
	8300 3900 7900 3900
Wire Wire Line
	8300 4000 7900 4000
Wire Wire Line
	8300 4100 7900 4100
Wire Wire Line
	8300 4200 7900 4200
Wire Wire Line
	8300 4300 7900 4300
Wire Wire Line
	8300 4400 7900 4400
Wire Wire Line
	8300 4500 7900 4500
Wire Wire Line
	8300 4600 7900 4600
Wire Wire Line
	8300 4700 7900 4700
Wire Wire Line
	8300 4800 7900 4800
Wire Wire Line
	8300 4900 7900 4900
Wire Wire Line
	8300 5000 7900 5000
Wire Wire Line
	8300 5100 7900 5100
Wire Wire Line
	8300 5200 7900 5200
Wire Wire Line
	8300 5300 7900 5300
Wire Wire Line
	8300 5400 7900 5400
Wire Wire Line
	8300 5500 7900 5500
Wire Wire Line
	8300 5600 7900 5600
Wire Wire Line
	8300 5700 7900 5700
Wire Wire Line
	8300 5800 7900 5800
Wire Wire Line
	10250 3600 10650 3600
Wire Wire Line
	10250 3700 10650 3700
Wire Wire Line
	10250 3800 10650 3800
Wire Wire Line
	10250 3900 10650 3900
Wire Wire Line
	10250 4000 10650 4000
Wire Wire Line
	10250 4100 10650 4100
Wire Wire Line
	10250 4200 10650 4200
Wire Wire Line
	10250 4300 10650 4300
Wire Wire Line
	10250 4400 10650 4400
Wire Wire Line
	10250 4500 10650 4500
Wire Wire Line
	10250 4600 10650 4600
Wire Wire Line
	10250 4700 10650 4700
Wire Wire Line
	10250 4800 10650 4800
Wire Wire Line
	10250 4900 10650 4900
Wire Wire Line
	10250 5000 10650 5000
Wire Wire Line
	10250 5100 10650 5100
Wire Wire Line
	10250 5200 10650 5200
Wire Wire Line
	10250 5300 10650 5300
Wire Wire Line
	10250 5400 10650 5400
Wire Wire Line
	10250 5500 10650 5500
Wire Wire Line
	10250 5600 10650 5600
Wire Wire Line
	10250 5700 10650 5700
Wire Wire Line
	10250 5800 10650 5800
Entry Wire Line
	10650 5800 10750 5900
Entry Wire Line
	10650 5700 10750 5800
Entry Wire Line
	10650 5600 10750 5700
Entry Wire Line
	10650 5500 10750 5600
Entry Wire Line
	7800 5400 7900 5500
Entry Wire Line
	7800 5500 7900 5600
Entry Wire Line
	7800 5600 7900 5700
Entry Wire Line
	7800 5700 7900 5800
Wire Bus Line
	7800 6000 8150 6000
Wire Bus Line
	10750 6100 10500 6100
Text Label 8050 5500 0    50   ~ 0
led1
Text Label 8050 5600 0    50   ~ 0
led3
Text Label 8050 5700 0    50   ~ 0
led5
Text Label 8050 5800 0    50   ~ 0
led7
Wire Wire Line
	4700 1700 4250 1700
Wire Wire Line
	4700 1800 4250 1800
Wire Wire Line
	4700 1900 4250 1900
Wire Wire Line
	4700 2000 4250 2000
Wire Wire Line
	4700 2100 4250 2100
Wire Wire Line
	4700 2300 4250 2300
Wire Wire Line
	4700 2400 4250 2400
Wire Wire Line
	4700 2500 4250 2500
Wire Wire Line
	4700 2600 4250 2600
Wire Wire Line
	6400 1850 6050 1850
Wire Wire Line
	6400 1950 6050 1950
Wire Wire Line
	6400 2050 6050 2050
Wire Wire Line
	6400 2150 6050 2150
Wire Wire Line
	6400 2250 6050 2250
Wire Wire Line
	6400 2350 6050 2350
Wire Wire Line
	6400 2450 6050 2450
Wire Wire Line
	6400 2550 6050 2550
Wire Wire Line
	8900 2050 8600 2050
Wire Wire Line
	8900 2150 8600 2150
$Comp
L power:GND #PWR02
U 1 1 5A6ABD95
P 5900 -1500
F 0 "#PWR02" H 5900 -1750 50  0001 C CNN
F 1 "GND" H 5950 -1500 50  0000 C CNN
F 2 "" H 5900 -1500 50  0001 C CNN
F 3 "" H 5900 -1500 50  0001 C CNN
	1    5900 -1500
	1    0    0    -1  
$EndComp
Text Label 5700 -1400 0    50   ~ 0
3V3
Text Label 4300 -2500 0    50   ~ 0
A4
Text Label 4300 -2400 0    50   ~ 0
A3
Text Label 4300 -2300 0    50   ~ 0
A2
Text Label 4300 -2200 0    50   ~ 0
A1
Text Label 4300 -2100 0    50   ~ 0
A0
Text Label 4300 -1900 0    50   ~ 0
IO_0
Text Label 4300 -1800 0    50   ~ 0
IO_1
Text Label 4300 -1700 0    50   ~ 0
IO_2
Text Label 4300 -1600 0    50   ~ 0
IO_3
Text Label 4150 -1300 0    50   ~ 0
IO_4
Text Label 4150 -1200 0    50   ~ 0
IO_5
Text Label 4150 -1100 0    50   ~ 0
IO_6
Text Label 4150 -1000 0    50   ~ 0
IO_7
Text Label 4200 -800 0    50   ~ 0
A16
Text Label 4200 -700 0    50   ~ 0
A15
Text Label 4200 -600 0    50   ~ 0
A14
Text Label 4200 -500 0    50   ~ 0
A13
Text Label 4200 -400 0    50   ~ 0
A12
Text Label 5800 -2500 0    50   ~ 0
A5
Text Label 5800 -2400 0    50   ~ 0
A6
Text Label 5800 -2300 0    50   ~ 0
A7
Text Label 5800 -1900 0    50   ~ 0
IO_15
Text Label 5800 -1800 0    50   ~ 0
IO_14
Text Label 5800 -1700 0    50   ~ 0
IO_13
Text Label 5800 -1600 0    50   ~ 0
IO_12
Text Label 5750 -1300 0    50   ~ 0
IO_11
Text Label 5750 -1200 0    50   ~ 0
IO_10
Text Label 5750 -1100 0    50   ~ 0
IO_9
Text Label 5750 -1000 0    50   ~ 0
IO_8
Text Label 5750 -900 0    50   ~ 0
A18
Text Label 5750 -800 0    50   ~ 0
A8
Text Label 5750 -700 0    50   ~ 0
A9
Text Label 5750 -600 0    50   ~ 0
A10
Text Label 5750 -500 0    50   ~ 0
A11
Text Label 5750 -400 0    50   ~ 0
A17
$Comp
L mojoback_sram-rescue:C-device C3
U 1 1 5A6AE993
P 1650 1400
F 0 "C3" H 1765 1446 50  0000 L CNN
F 1 ".1uf" H 1765 1355 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1688 1250 50  0001 C CNN
F 3 "" H 1650 1400 50  0001 C CNN
	1    1650 1400
	1    0    0    -1  
$EndComp
$Comp
L mojoback_sram-rescue:C-device C4
U 1 1 5A6AE9C9
P 2000 1400
F 0 "C4" H 2115 1446 50  0000 L CNN
F 1 ".1uf" H 2115 1355 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 2038 1250 50  0001 C CNN
F 3 "" H 2000 1400 50  0001 C CNN
	1    2000 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1250 1650 1250
Connection ~ 1300 1250
Connection ~ 1650 1250
Wire Wire Line
	1650 1250 2000 1250
Wire Wire Line
	2000 1550 1650 1550
Connection ~ 1300 1550
Connection ~ 1650 1550
Wire Wire Line
	1650 1550 1300 1550
Wire Wire Line
	1250 4600 600  4600
$Comp
L power:GND #PWR01
U 1 1 5A6E6C87
P 600 4600
F 0 "#PWR01" H 600 4350 50  0001 C CNN
F 1 "GND" H 605 4427 50  0000 C CNN
F 2 "" H 600 4600 50  0001 C CNN
F 3 "" H 600 4600 50  0001 C CNN
	1    600  4600
	1    0    0    -1  
$EndComp
Text Label 950  6300 0    50   ~ 0
3V3
$Comp
L power:GND #PWR03
U 1 1 5A6E6EF5
P 3650 6150
F 0 "#PWR03" H 3650 5900 50  0001 C CNN
F 1 "GND" H 3655 5977 50  0000 C CNN
F 2 "" H 3650 6150 50  0001 C CNN
F 3 "" H 3650 6150 50  0001 C CNN
	1    3650 6150
	1    0    0    -1  
$EndComp
Text Label 3400 4850 0    50   ~ 0
3V3
Text Label 10350 5500 0    50   ~ 0
led0
Text Label 10350 5600 0    50   ~ 0
led2
Text Label 10350 5700 0    50   ~ 0
led4
Text Label 10350 5800 0    50   ~ 0
led6
$Comp
L power:GND #PWR09
U 1 1 5A6E83F9
P 8600 2150
F 0 "#PWR09" H 8600 1900 50  0001 C CNN
F 1 "GND" H 8605 1977 50  0000 C CNN
F 2 "" H 8600 2150 50  0001 C CNN
F 3 "" H 8600 2150 50  0001 C CNN
	1    8600 2150
	1    0    0    -1  
$EndComp
Text Label 8750 2050 0    50   ~ 0
3V3
Text Label 1850 1250 0    50   ~ 0
3V3
Text Label 4500 3500 0    50   ~ 0
3V3
Text Label 8050 3500 0    50   ~ 0
3V3
Wire Wire Line
	10250 3400 11150 3400
Wire Wire Line
	11150 3400 11150 3500
Wire Wire Line
	10250 3500 11150 3500
Connection ~ 11150 3500
Wire Wire Line
	11150 3500 11150 3550
$Comp
L power:GND #PWR010
U 1 1 5A70EF12
P 11150 3550
F 0 "#PWR010" H 11150 3300 50  0001 C CNN
F 1 "GND" H 11155 3377 50  0000 C CNN
F 2 "" H 11150 3550 50  0001 C CNN
F 3 "" H 11150 3550 50  0001 C CNN
	1    11150 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3400 7500 3400
Wire Wire Line
	7500 3400 7500 3500
Wire Wire Line
	6700 3500 7500 3500
Connection ~ 7500 3500
Wire Wire Line
	7500 3500 7500 3550
$Comp
L power:GND #PWR08
U 1 1 5A74826A
P 7500 3550
F 0 "#PWR08" H 7500 3300 50  0001 C CNN
F 1 "GND" H 7505 3377 50  0000 C CNN
F 2 "" H 7500 3550 50  0001 C CNN
F 3 "" H 7500 3550 50  0001 C CNN
	1    7500 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5A74854A
P 4300 5800
F 0 "#PWR05" H 4300 5550 50  0001 C CNN
F 1 "GND" H 4305 5627 50  0000 C CNN
F 2 "" H 4300 5800 50  0001 C CNN
F 3 "" H 4300 5800 50  0001 C CNN
	1    4300 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5A749558
P 4050 2200
F 0 "#PWR04" H 4050 1950 50  0001 C CNN
F 1 "GND" H 4055 2027 50  0000 C CNN
F 2 "" H 4050 2200 50  0001 C CNN
F 3 "" H 4050 2200 50  0001 C CNN
	1    4050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2200 4700 2200
Wire Wire Line
	1900 6650 1900 7000
Wire Wire Line
	2000 6650 2000 7000
Wire Wire Line
	2100 6650 2100 7000
Wire Wire Line
	2200 6650 2200 7000
Wire Wire Line
	2300 6650 2300 7000
Wire Wire Line
	2400 6650 2400 7000
Wire Wire Line
	2500 6650 2500 7000
Wire Wire Line
	2600 6650 2600 7000
Wire Wire Line
	2700 6650 2700 7000
Text Notes 1050 6650 0    118  ~ 0
1BITSY\n
Text Notes 7350 3200 0    118  ~ 0
FPGA\n
Wire Notes Line
	3850 7250 3850 4350
Wire Notes Line
	3850 4350 550  4350
Wire Notes Line
	550  4350 550  7250
Wire Notes Line
	550  7250 3850 7250
Text Label 6200 -2400 0    50   ~ 0
addr_bus
Text Label 6200 -800 0    50   ~ 0
addr_bus
Wire Bus Line
	4000 -250 4250 -250
Text Label 4050 -250 0    50   ~ 0
addr_bus
Text Label 3950 -2700 0    50   ~ 0
addr_bus
Text Label 6150 -1800 0    50   ~ 0
io_bus
Text Label 3800 -2000 0    50   ~ 0
io_bus
Wire Bus Line
	3800 -2000 4000 -2000
$Comp
L KL_PARTS:62WV51212ALL SRAM2
U 1 1 5A6D55C9
P 2000 -200
F 0 "SRAM2" H 1975 2415 50  0000 C CNN
F 1 "62WV51212ALL" H 1975 2324 50  0000 C CNN
F 2 "KICAD_PARTS:KL_TSOP44_Pitch0.8mm" H 2000 -200 50  0001 C CNN
F 3 "" H 2000 -200 50  0001 C CNN
	1    2000 -200
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  -2550 1400 -2550
Wire Wire Line
	1400 -2450 950  -2450
Wire Wire Line
	1400 -2350 950  -2350
Wire Wire Line
	1400 -2250 950  -2250
Wire Wire Line
	1400 -2150 950  -2150
Wire Wire Line
	1400 -2050 950  -2050
Wire Wire Line
	1400 -1950 950  -1950
Wire Wire Line
	1400 -1850 950  -1850
Wire Wire Line
	1400 -1750 950  -1750
Wire Wire Line
	1400 -1650 950  -1650
Wire Wire Line
	1400 -1550 950  -1550
Wire Wire Line
	1400 -1350 950  -1350
Wire Wire Line
	1400 -1250 950  -1250
Wire Wire Line
	1400 -1150 950  -1150
Wire Wire Line
	1400 -1050 950  -1050
Wire Wire Line
	1400 -950 950  -950
Wire Wire Line
	1400 -850 950  -850
Wire Wire Line
	1400 -750 950  -750
Wire Wire Line
	1400 -650 950  -650
Wire Wire Line
	1400 -550 950  -550
Wire Wire Line
	1400 -450 950  -450
Wire Wire Line
	2550 -2250 2850 -2250
Wire Wire Line
	2550 -2150 2850 -2150
Wire Wire Line
	2550 -2050 2850 -2050
Wire Wire Line
	2550 -1950 2850 -1950
Wire Wire Line
	2550 -1850 2850 -1850
Wire Wire Line
	2550 -1750 2850 -1750
Wire Wire Line
	2550 -1650 2850 -1650
Wire Wire Line
	2550 -1550 2750 -1550
Wire Wire Line
	2550 -1450 2850 -1450
Wire Wire Line
	2550 -1350 2850 -1350
Wire Wire Line
	2550 -1250 2850 -1250
Wire Wire Line
	2550 -1150 2850 -1150
Wire Wire Line
	2550 -1050 2850 -1050
Wire Wire Line
	2550 -950 2850 -950
Wire Wire Line
	2550 -850 2850 -850
Wire Wire Line
	2550 -750 2850 -750
Wire Wire Line
	2550 -650 2850 -650
Wire Wire Line
	2550 -550 2850 -550
Wire Wire Line
	2550 -450 2850 -450
Entry Wire Line
	850  -2650 950  -2550
Entry Wire Line
	850  -2550 950  -2450
Entry Wire Line
	850  -2450 950  -2350
Entry Wire Line
	850  -2350 950  -2250
Entry Wire Line
	850  -2250 950  -2150
Entry Wire Line
	850  -950 950  -850
Entry Wire Line
	850  -850 950  -750
Entry Wire Line
	850  -750 950  -650
Entry Wire Line
	850  -650 950  -550
Entry Wire Line
	850  -550 950  -450
Entry Wire Line
	2850 -450 2950 -350
Entry Wire Line
	2850 -550 2950 -450
Entry Wire Line
	2850 -650 2950 -550
Entry Wire Line
	2850 -750 2950 -650
Entry Wire Line
	2850 -850 2950 -750
Entry Wire Line
	2850 -950 2950 -850
Entry Wire Line
	2850 -1050 2950 -950
Entry Wire Line
	2850 -1150 2950 -1050
Entry Wire Line
	2850 -1250 2950 -1150
Entry Wire Line
	2850 -1350 2950 -1250
Entry Wire Line
	2850 -1650 2950 -1550
Entry Wire Line
	2850 -1750 2950 -1650
Entry Wire Line
	2850 -1850 2950 -1750
Entry Wire Line
	2850 -1950 2950 -1850
Entry Wire Line
	850  -2050 950  -1950
Entry Wire Line
	850  -1950 950  -1850
Entry Wire Line
	850  -1850 950  -1750
Entry Wire Line
	850  -1750 950  -1650
Entry Wire Line
	850  -1450 950  -1350
Entry Wire Line
	850  -1350 950  -1250
Entry Wire Line
	850  -1250 950  -1150
Entry Wire Line
	850  -1150 950  -1050
Text Label 2650 -2150 0    50   ~ 0
sram_ub2
Text Label 2650 -2050 0    50   ~ 0
sram_lb2
Text Label 1000 -2050 0    50   ~ 0
sram_cs2
Text Label 1050 -950 0    50   ~ 0
sram_we2
Text Notes 1550 300  0    197  ~ 0
SRAM2\n\n
Wire Wire Line
	1400 -1450 1200 -1450
$Comp
L power:GND #PWR011
U 1 1 5A6D561D
P 1200 -1450
F 0 "#PWR011" H 1200 -1700 50  0001 C CNN
F 1 "GND" H 1205 -1623 50  0000 C CNN
F 2 "" H 1200 -1450 50  0001 C CNN
F 3 "" H 1200 -1450 50  0001 C CNN
	1    1200 -1450
	1    0    0    -1  
$EndComp
Text Label 1100 -1550 0    50   ~ 0
3V3
Text Label 2650 -2250 0    50   ~ 0
sram_oe2
Wire Wire Line
	2550 -2550 2900 -2550
Wire Wire Line
	2550 -2450 2900 -2450
Wire Wire Line
	2550 -2350 2900 -2350
Entry Wire Line
	2900 -2550 3000 -2450
Entry Wire Line
	2900 -2450 3000 -2350
Entry Wire Line
	2900 -2350 3000 -2250
Wire Bus Line
	3000 -2450 3250 -2450
Wire Bus Line
	2950 -1850 3200 -1850
Wire Bus Line
	2950 -850 3250 -850
Wire Bus Line
	850  -2750 750  -2750
$Comp
L power:GND #PWR012
U 1 1 5A6D562F
P 2750 -1550
F 0 "#PWR012" H 2750 -1800 50  0001 C CNN
F 1 "GND" H 2800 -1550 50  0000 C CNN
F 2 "" H 2750 -1550 50  0001 C CNN
F 3 "" H 2750 -1550 50  0001 C CNN
	1    2750 -1550
	1    0    0    -1  
$EndComp
Text Label 2550 -1450 0    50   ~ 0
3V3
Text Label 1150 -2550 0    50   ~ 0
A4
Text Label 1150 -2450 0    50   ~ 0
A3
Text Label 1150 -2350 0    50   ~ 0
A2
Text Label 1150 -2250 0    50   ~ 0
A1
Text Label 1150 -2150 0    50   ~ 0
A0
Text Label 1150 -1950 0    50   ~ 0
IO_0
Text Label 1150 -1850 0    50   ~ 0
IO_1
Text Label 1150 -1750 0    50   ~ 0
IO_2
Text Label 1150 -1650 0    50   ~ 0
IO_3
Text Label 1000 -1350 0    50   ~ 0
IO_4
Text Label 1000 -1250 0    50   ~ 0
IO_5
Text Label 1000 -1150 0    50   ~ 0
IO_6
Text Label 1000 -1050 0    50   ~ 0
IO_7
Text Label 1050 -850 0    50   ~ 0
A16
Text Label 1050 -750 0    50   ~ 0
A15
Text Label 1050 -650 0    50   ~ 0
A14
Text Label 1050 -550 0    50   ~ 0
A13
Text Label 1050 -450 0    50   ~ 0
A12
Text Label 2650 -2550 0    50   ~ 0
A5
Text Label 2650 -2450 0    50   ~ 0
A6
Text Label 2650 -2350 0    50   ~ 0
A7
Text Label 2650 -1950 0    50   ~ 0
IO_15
Text Label 2650 -1850 0    50   ~ 0
IO_14
Text Label 2650 -1750 0    50   ~ 0
IO_13
Text Label 2650 -1650 0    50   ~ 0
IO_12
Text Label 2600 -1350 0    50   ~ 0
IO_11
Text Label 2600 -1250 0    50   ~ 0
IO_10
Text Label 2600 -1150 0    50   ~ 0
IO_9
Text Label 2600 -1050 0    50   ~ 0
IO_8
Text Label 2600 -950 0    50   ~ 0
A18
Text Label 2600 -850 0    50   ~ 0
A8
Text Label 2600 -750 0    50   ~ 0
A9
Text Label 2600 -650 0    50   ~ 0
A10
Text Label 2600 -550 0    50   ~ 0
A11
Text Label 2600 -450 0    50   ~ 0
A17
Text Label 3050 -2450 0    50   ~ 0
addr_bus
Text Label 3050 -850 0    50   ~ 0
addr_bus
Wire Bus Line
	850  -300 1100 -300
Text Label 900  -300 0    50   ~ 0
addr_bus
Text Label 800  -2750 0    50   ~ 0
addr_bus
Text Label 3000 -1850 0    50   ~ 0
io_bus
Text Label 650  -2050 0    50   ~ 0
io_bus
Wire Bus Line
	650  -2050 850  -2050
$Comp
L mojoback_sram-rescue:R-device R1
U 1 1 5A72137F
P 1200 2350
F 0 "R1" V 993 2350 50  0000 C CNN
F 1 "R" V 1084 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1130 2350 50  0001 C CNN
F 3 "" H 1200 2350 50  0001 C CNN
	1    1200 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 2350 1450 2350
Wire Wire Line
	1050 2350 900  2350
Wire Wire Line
	1750 2350 1900 2350
Wire Wire Line
	1900 2350 1900 2400
$Comp
L power:GND #PWR013
U 1 1 5A82AF4C
P 1900 2400
F 0 "#PWR013" H 1900 2150 50  0001 C CNN
F 1 "GND" H 1905 2227 50  0000 C CNN
F 2 "" H 1900 2400 50  0001 C CNN
F 3 "" H 1900 2400 50  0001 C CNN
	1    1900 2400
	1    0    0    -1  
$EndComp
Text Label 900  2350 0    50   ~ 0
3V3
Wire Wire Line
	1600 3050 800  3050
Wire Wire Line
	800  3050 800  3150
$Comp
L power:GND #PWR014
U 1 1 5A851D55
P 800 3150
F 0 "#PWR014" H 800 2900 50  0001 C CNN
F 1 "GND" H 805 2977 50  0000 C CNN
F 2 "" H 800 3150 50  0001 C CNN
F 3 "" H 800 3150 50  0001 C CNN
	1    800  3150
	1    0    0    -1  
$EndComp
Wire Notes Line
	3900 1350 3900 6300
Wire Notes Line
	3900 6300 11350 6300
Wire Notes Line
	11350 6300 11350 1350
Wire Notes Line
	11350 1350 3900 1350
Text Label 7950 6000 0    50   ~ 0
led_bus
Text Label 10550 6100 0    50   ~ 0
led_bus
Wire Bus Line
	6050 1850 6050 2700
Wire Bus Line
	6050 2700 6250 2700
Text Label 6100 2700 0    50   ~ 0
led_bus
Text Label 6200 1850 0    50   ~ 0
led0
Text Label 6200 1950 0    50   ~ 0
led1
Text Label 6200 2050 0    50   ~ 0
led2
Text Label 6200 2150 0    50   ~ 0
led3
Text Label 6200 2250 0    50   ~ 0
led4
Text Label 6200 2350 0    50   ~ 0
led5
Text Label 6200 2450 0    50   ~ 0
led6
Text Label 6200 2550 0    50   ~ 0
led7
NoConn ~ 3650 4950
NoConn ~ 3650 5050
NoConn ~ 3650 5150
NoConn ~ 3650 5250
NoConn ~ 3650 5350
NoConn ~ 3650 5450
NoConn ~ 3650 5550
NoConn ~ 3650 5650
NoConn ~ 3650 5750
NoConn ~ 3650 5850
NoConn ~ 3650 5950
NoConn ~ 3650 6050
NoConn ~ 800  4700
NoConn ~ 800  4800
NoConn ~ 800  4900
NoConn ~ 800  5000
NoConn ~ 800  5100
NoConn ~ 800  5200
NoConn ~ 800  5300
NoConn ~ 800  5400
NoConn ~ 800  5500
NoConn ~ 800  5600
NoConn ~ 800  5700
NoConn ~ 800  5800
NoConn ~ 800  5900
NoConn ~ 800  6000
NoConn ~ 800  6100
NoConn ~ 800  6200
NoConn ~ 3650 4650
NoConn ~ 1800 7000
NoConn ~ 1900 7000
NoConn ~ 2000 7000
NoConn ~ 2100 7000
NoConn ~ 2200 7000
NoConn ~ 2300 7000
NoConn ~ 2400 7000
NoConn ~ 2500 7000
NoConn ~ 2600 7000
NoConn ~ 2700 7000
$Comp
L mojoback_sram-rescue:R-device R2
U 1 1 5AD115C6
P 3050 1600
F 0 "R2" V 3050 1600 50  0000 C CNN
F 1 "R" V 3000 1450 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2980 1600 50  0001 C CNN
F 3 "" H 3050 1600 50  0001 C CNN
	1    3050 1600
	0    1    1    0   
$EndComp
$Comp
L mojoback_sram-rescue:R-device R3
U 1 1 5AD11628
P 3050 1700
F 0 "R3" V 3050 1700 50  0000 C CNN
F 1 "R" V 3100 1550 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2980 1700 50  0001 C CNN
F 3 "" H 3050 1700 50  0001 C CNN
	1    3050 1700
	0    1    1    0   
$EndComp
$Comp
L mojoback_sram-rescue:R-device R4
U 1 1 5AD11691
P 3050 2000
F 0 "R4" V 3050 2000 50  0000 C CNN
F 1 "R" V 3000 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2980 2000 50  0001 C CNN
F 3 "" H 3050 2000 50  0001 C CNN
	1    3050 2000
	0    1    1    0   
$EndComp
$Comp
L mojoback_sram-rescue:R-device R5
U 1 1 5AD80ABD
P 3050 2100
F 0 "R5" V 3050 2100 50  0000 C CNN
F 1 "R" V 3100 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2980 2100 50  0001 C CNN
F 3 "" H 3050 2100 50  0001 C CNN
	1    3050 2100
	0    1    1    0   
$EndComp
$Comp
L mojoback_sram-rescue:R-device R6
U 1 1 5AD80B1B
P 3050 2400
F 0 "R6" V 3050 2400 50  0000 C CNN
F 1 "R" V 3000 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2980 2400 50  0001 C CNN
F 3 "" H 3050 2400 50  0001 C CNN
	1    3050 2400
	0    1    1    0   
$EndComp
$Comp
L mojoback_sram-rescue:R-device R7
U 1 1 5AD80BB8
P 3050 2500
F 0 "R7" V 3050 2500 50  0000 C CNN
F 1 "R" V 3100 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2980 2500 50  0001 C CNN
F 3 "" H 3050 2500 50  0001 C CNN
	1    3050 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 1700 2900 1650
Wire Wire Line
	3200 2500 3200 2450
Wire Wire Line
	3200 2100 3200 2050
Wire Wire Line
	3200 1700 3200 1650
Wire Wire Line
	3200 1650 3350 1650
Connection ~ 3200 1650
Wire Wire Line
	3200 1650 3200 1600
Wire Wire Line
	3200 2050 3350 2050
Connection ~ 3200 2050
Wire Wire Line
	3200 2050 3200 2000
Wire Wire Line
	3200 2450 3350 2450
Connection ~ 3200 2450
Wire Wire Line
	3200 2450 3200 2400
Wire Wire Line
	2900 1650 2900 1600
Text Label 1350 3350 0    50   ~ 0
clr_r
Text Label 1350 3450 0    50   ~ 0
clr_g
Text Label 1350 3550 0    50   ~ 0
clr_b
Text Label 3300 1650 0    50   ~ 0
clr_r
Text Label 3300 2050 0    50   ~ 0
clr_g
Text Label 3300 2450 0    50   ~ 0
clr_b
NoConn ~ 4250 1700
NoConn ~ 4250 1800
NoConn ~ 4250 1900
NoConn ~ 4250 2000
NoConn ~ 4250 2100
NoConn ~ 4250 2300
NoConn ~ 4250 2400
NoConn ~ 4250 2500
NoConn ~ 4250 2600
Text Label 8000 3600 0    50   ~ 0
sram_we1
Text Label 10300 3600 0    50   ~ 0
sram_we2
Text Label 8000 3700 0    50   ~ 0
sram_cs1
Text Label 10300 3700 0    50   ~ 0
sram_cs2
$Comp
L KL_PARTS:kl_patch_via_2 U1
U 1 1 5A7BCF0F
P 3150 -3000
F 0 "U1" H 3150 -2525 50  0000 C CNN
F 1 "kl_patch_via_2" H 3150 -2616 50  0000 C CNN
F 2 "KL_CONNECTORS:KL_port_2X1" H 3150 -3000 50  0001 C CNN
F 3 "" H 3150 -3000 50  0001 C CNN
	1    3150 -3000
	1    0    0    -1  
$EndComp
$Comp
L KL_PARTS:kl_patch_via_2 U4
U 1 1 5A7BD1B0
P 4350 -3000
F 0 "U4" H 4350 -2525 50  0000 C CNN
F 1 "kl_patch_via_2" H 4350 -2616 50  0000 C CNN
F 2 "KL_CONNECTORS:KL_port_2X1" H 4350 -3000 50  0001 C CNN
F 3 "" H 4350 -3000 50  0001 C CNN
	1    4350 -3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 -3250 2700 -3250
Wire Wire Line
	3050 -3150 2700 -3150
Wire Wire Line
	3250 -3250 3550 -3250
Wire Wire Line
	3250 -3150 3550 -3150
Wire Wire Line
	4250 -3250 3900 -3250
Wire Wire Line
	4250 -3150 3900 -3150
Wire Wire Line
	4450 -3250 4850 -3250
Wire Wire Line
	4450 -3150 4850 -3150
Wire Wire Line
	4850 -3250 4850 -3200
Wire Wire Line
	3550 -3150 3550 -3200
Wire Wire Line
	3550 -3200 3650 -3200
Connection ~ 3550 -3200
Wire Wire Line
	3550 -3200 3550 -3250
Wire Wire Line
	4850 -3200 5000 -3200
Connection ~ 4850 -3200
Wire Wire Line
	4850 -3200 4850 -3150
Text Label 8000 3800 0    50   ~ 0
sram_oe1
Text Label 10300 3800 0    50   ~ 0
sram_oe2
$Comp
L KL_PARTS:mojo_header p2
U 1 1 5A5E3172
P 7350 4450
F 0 "p2" H 7550 2800 50  0000 C CNN
F 1 "mojo_header" H 7600 2700 50  0000 C CNN
F 2 "KL_CONNECTORS:mojo_header" H 7200 4400 50  0001 C CNN
F 3 "" H 7200 4400 50  0001 C CNN
	1    7350 4450
	1    0    0    -1  
$EndComp
Text Label 6800 3700 0    50   ~ 0
A0
Text Label 6800 3800 0    50   ~ 0
A1
Text Label 6800 3900 0    50   ~ 0
A2
Text Label 6800 4000 0    50   ~ 0
A3
Text Label 6800 4100 0    50   ~ 0
A4
Text Label 6800 4200 0    50   ~ 0
A5
Text Label 6800 4300 0    50   ~ 0
A6
Text Label 6800 4400 0    50   ~ 0
A7
Text Label 6800 4500 0    50   ~ 0
A8
Text Label 6800 4600 0    50   ~ 0
A9
Text Label 6800 4700 0    50   ~ 0
A10
Text Label 6800 4800 0    50   ~ 0
A11
Text Label 6800 4900 0    50   ~ 0
A12
Text Label 6800 5000 0    50   ~ 0
A13
Text Label 6800 5100 0    50   ~ 0
A14
Text Label 6800 5200 0    50   ~ 0
A15
Text Label 6800 5300 0    50   ~ 0
A16
Text Label 6800 5400 0    50   ~ 0
A17
Text Label 6800 5500 0    50   ~ 0
A18
Text Label 4500 3700 0    50   ~ 0
IO_0
Text Label 4500 3800 0    50   ~ 0
IO_1
Text Label 4500 3900 0    50   ~ 0
IO_2
Text Label 4500 4000 0    50   ~ 0
IO_3
Text Label 4500 4100 0    50   ~ 0
IO_4
Text Label 4500 4200 0    50   ~ 0
IO_5
Text Label 4500 4300 0    50   ~ 0
IO_6
Text Label 4500 4400 0    50   ~ 0
IO_7
Text Label 4500 4500 0    50   ~ 0
IO_8
Text Label 4500 4600 0    50   ~ 0
IO_9
Text Label 4500 4700 0    50   ~ 0
IO_10
Text Label 4500 4800 0    50   ~ 0
IO_11
Text Label 4500 4900 0    50   ~ 0
IO_12
Text Label 4500 5000 0    50   ~ 0
IO_13
Text Label 4500 5100 0    50   ~ 0
IO_14
$Comp
L power:GND #PWR015
U 1 1 5AAC4F82
P 3650 -3200
F 0 "#PWR015" H 3650 -3450 50  0001 C CNN
F 1 "GND" H 3655 -3373 50  0000 C CNN
F 2 "" H 3650 -3200 50  0001 C CNN
F 3 "" H 3650 -3200 50  0001 C CNN
	1    3650 -3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5AAC503B
P 5000 -3200
F 0 "#PWR016" H 5000 -3450 50  0001 C CNN
F 1 "GND" H 5005 -3373 50  0000 C CNN
F 2 "" H 5000 -3200 50  0001 C CNN
F 3 "" H 5000 -3200 50  0001 C CNN
	1    5000 -3200
	1    0    0    -1  
$EndComp
Text Label 2700 -3250 0    50   ~ 0
sram_lb1
Text Label 2700 -3150 0    50   ~ 0
sram_ub1
Text Label 3900 -3250 0    50   ~ 0
sram_lb2
Text Label 3900 -3150 0    50   ~ 0
sram_ub2
Text Label 1350 3150 0    50   ~ 0
h_sync
Text Label 1350 3250 0    50   ~ 0
v_sync
NoConn ~ 4300 5300
NoConn ~ 4300 5400
NoConn ~ 4300 5500
NoConn ~ 4300 5600
NoConn ~ 4300 5700
NoConn ~ 7150 3600
NoConn ~ 7150 5600
NoConn ~ 7150 5700
NoConn ~ 7150 5800
NoConn ~ 7900 3900
NoConn ~ 10650 3900
Text Notes 1200 2550 0    50   ~ 0
pwr_led\n
$Comp
L mojoback_sram-rescue:LED-device D1
U 1 1 5ABFD684
P 1600 2350
F 0 "D1" H 1592 2095 50  0000 C CNN
F 1 "LED" H 1592 2186 50  0000 C CNN
F 2 "LEDs:LED_1206" H 1600 2350 50  0001 C CNN
F 3 "~" H 1600 2350 50  0001 C CNN
	1    1600 2350
	-1   0    0    1   
$EndComp
Text Label 8000 5300 0    50   ~ 0
r_video
Text Label 10350 5300 0    50   ~ 0
g_video
Text Label 8000 5200 0    50   ~ 0
b_video
NoConn ~ 10650 5200
Wire Wire Line
	2900 1650 2450 1650
Wire Wire Line
	2900 2000 2900 2050
Wire Wire Line
	2900 2400 2900 2450
Connection ~ 2900 1650
Wire Wire Line
	2900 2050 2450 2050
Connection ~ 2900 2050
Wire Wire Line
	2900 2050 2900 2100
Wire Wire Line
	2900 2450 2450 2450
Connection ~ 2900 2450
Wire Wire Line
	2900 2450 2900 2500
Text Label 2500 1650 0    50   ~ 0
r_video
Text Label 2500 2050 0    50   ~ 0
g_video
Text Label 2500 2450 0    50   ~ 0
b_video
Text Notes 2700 2800 0    79   ~ 0
video DAC\n\n
Text Notes 1100 3750 0    79   ~ 0
VGA port\n
Text Label 8000 5400 0    39   ~ 0
h_sync
Text Label 10350 5400 0    39   ~ 0
v_sync
NoConn ~ 3650 4750
Text Notes 1350 1700 0    79   ~ 0
bypass caps
NoConn ~ 4300 3400
Wire Wire Line
	8300 3400 7900 3400
NoConn ~ 7900 3400
NoConn ~ 10650 4000
NoConn ~ 10650 4100
NoConn ~ 10650 4200
NoConn ~ 10650 4300
NoConn ~ 10650 4400
NoConn ~ 10650 4500
NoConn ~ 10650 4600
NoConn ~ 10650 4700
NoConn ~ 7900 4000
NoConn ~ 7900 4100
NoConn ~ 7900 4200
NoConn ~ 7900 4300
NoConn ~ 7900 4400
NoConn ~ 7900 4500
NoConn ~ 7900 4600
NoConn ~ 7900 4700
NoConn ~ 7900 4800
NoConn ~ 7900 4900
NoConn ~ 7900 5000
NoConn ~ 7900 5100
NoConn ~ 10650 4800
NoConn ~ 10650 4900
NoConn ~ 10650 5000
NoConn ~ 10650 5100
Text Label 4500 5200 0    50   ~ 0
10_15
NoConn ~ 4300 3600
Wire Bus Line
	3000 -2450 3000 -2250
Wire Bus Line
	6150 -2400 6150 -2200
Wire Bus Line
	850  -2750 850  -2250
Wire Bus Line
	850  -950 850  -300
Wire Bus Line
	4000 -2700 4000 -2200
Wire Bus Line
	4000 -900 4000 -250
Wire Bus Line
	7800 5400 7800 6000
Wire Bus Line
	10750 5600 10750 6100
Wire Bus Line
	6100 -800 6100 -150
Wire Bus Line
	6100 -1800 6100 -900
Wire Bus Line
	4000 -2000 4000 -1100
Wire Bus Line
	2950 -850 2950 -200
Wire Bus Line
	2950 -1850 2950 -950
Wire Bus Line
	850  -2050 850  -1150
$EndSCHEMATC
