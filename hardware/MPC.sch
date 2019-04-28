EESchema Schematic File Version 4
LIBS:UniEmu-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title ""
Date ""
Rev "2.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Memory_RAM:IS61C5128AL-10TLI U10
U 1 1 5C2D6E6F
P 8400 2100
F 0 "U10" H 7950 3350 50  0000 C CNN
F 1 "CY7C1049DV33" H 8000 850 50  0000 C CNN
F 2 "Package_SO:TSOP-II-44_10.16x18.41mm_P0.8mm" H 7900 3250 50  0001 C CNN
F 3 "http://www.issi.com/WW/pdf/61-64C5128AL.pdf" H 8400 2100 50  0001 C CNN
	1    8400 2100
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM:IS61C5128AL-10TLI U11
U 1 1 5C2D9B90
P 10200 2100
F 0 "U11" H 9750 3350 50  0000 C CNN
F 1 "CY7C1049DV33" H 9800 850 50  0000 C CNN
F 2 "Package_SO:TSOP-II-44_10.16x18.41mm_P0.8mm" H 9700 3250 50  0001 C CNN
F 3 "http://www.issi.com/WW/pdf/61-64C5128AL.pdf" H 10200 2100 50  0001 C CNN
	1    10200 2100
	1    0    0    -1  
$EndComp
Text GLabel 6000 3200 0    50   Input ~ 0
~ROM
Text GLabel 7800 3000 0    50   Input ~ 0
~SCE1
Text GLabel 7800 3100 0    50   Input ~ 0
~SOE
Text GLabel 7800 3200 0    50   Input ~ 0
~SWE
Text GLabel 9600 3000 0    50   Input ~ 0
~SCE2
Text GLabel 9600 3100 0    50   Input ~ 0
~SOE
Text GLabel 9600 3200 0    50   Input ~ 0
~SWE
Text GLabel 10800 1300 2    50   Input ~ 0
SD0
Text GLabel 10800 1400 2    50   Input ~ 0
SD1
Text GLabel 10800 1200 2    50   Input ~ 0
SD2
Text GLabel 10800 1500 2    50   Input ~ 0
SD3
Text GLabel 10800 1100 2    50   Input ~ 0
SD4
Text GLabel 10800 1600 2    50   Input ~ 0
SD5
Text GLabel 10800 1000 2    50   Input ~ 0
SD6
Text GLabel 10800 1700 2    50   Input ~ 0
SD7
$Comp
L power:GND #PWR036
U 1 1 5C2DEC20
P 8400 3400
F 0 "#PWR036" H 8400 3150 50  0001 C CNN
F 1 "GND" H 8405 3227 50  0000 C CNN
F 2 "" H 8400 3400 50  0001 C CNN
F 3 "" H 8400 3400 50  0001 C CNN
	1    8400 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 5C2F155A
P 10200 3400
F 0 "#PWR037" H 10200 3150 50  0001 C CNN
F 1 "GND" H 10205 3227 50  0000 C CNN
F 2 "" H 10200 3400 50  0001 C CNN
F 3 "" H 10200 3400 50  0001 C CNN
	1    10200 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR034
U 1 1 5C2F1805
P 8400 800
F 0 "#PWR034" H 8400 650 50  0001 C CNN
F 1 "+3V3" H 8415 973 50  0000 C CNN
F 2 "" H 8400 800 50  0001 C CNN
F 3 "" H 8400 800 50  0001 C CNN
	1    8400 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR035
U 1 1 5C2F196E
P 10200 800
F 0 "#PWR035" H 10200 650 50  0001 C CNN
F 1 "+3V3" H 10215 973 50  0000 C CNN
F 2 "" H 10200 800 50  0001 C CNN
F 3 "" H 10200 800 50  0001 C CNN
	1    10200 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C102
U 1 1 5C2F2459
P 9700 5950
F 0 "C102" H 9750 6050 50  0000 L CNN
F 1 "100nF" H 9700 5850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9738 5800 50  0001 C CNN
F 3 "~" H 9700 5950 50  0001 C CNN
	1    9700 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C103
U 1 1 5C2F2460
P 10000 5950
F 0 "C103" H 10050 6050 50  0000 L CNN
F 1 "100nF" H 10000 5850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10038 5800 50  0001 C CNN
F 3 "~" H 10000 5950 50  0001 C CNN
	1    10000 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR040
U 1 1 5C2F324F
P 9600 5700
F 0 "#PWR040" H 9600 5550 50  0001 C CNN
F 1 "+3V3" V 9615 5828 50  0000 L CNN
F 2 "" H 9600 5700 50  0001 C CNN
F 3 "" H 9600 5700 50  0001 C CNN
	1    9600 5700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR045
U 1 1 5C2F32AA
P 9700 6300
F 0 "#PWR045" H 9700 6050 50  0001 C CNN
F 1 "GND" H 9705 6127 50  0000 C CNN
F 2 "" H 9700 6300 50  0001 C CNN
F 3 "" H 9700 6300 50  0001 C CNN
	1    9700 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 5700 9700 5700
Wire Wire Line
	10000 5700 10000 5800
Wire Wire Line
	9700 5800 9700 5700
Connection ~ 9700 5700
Wire Wire Line
	9700 5700 10000 5700
Wire Wire Line
	9700 6300 9700 6200
Wire Wire Line
	9700 6200 10000 6200
Wire Wire Line
	10000 6200 10000 6100
Connection ~ 9700 6200
Wire Wire Line
	9700 6200 9700 6100
$Comp
L Device:C C104
U 1 1 5C2F7097
P 10300 5950
F 0 "C104" H 10350 6050 50  0000 L CNN
F 1 "100nF" H 10300 5850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10338 5800 50  0001 C CNN
F 3 "~" H 10300 5950 50  0001 C CNN
	1    10300 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 6200 10300 6200
Wire Wire Line
	10300 6200 10300 6100
Connection ~ 10000 6200
Wire Wire Line
	10000 5700 10300 5700
Wire Wire Line
	10300 5700 10300 5800
Connection ~ 10000 5700
Text GLabel 6000 3300 0    50   Input ~ 0
~ROE
$Comp
L UniEmu-rescue:SST39VF1681-andreil U9
U 1 1 5C3093D1
P 6600 2000
F 0 "U9" H 6600 3425 50  0000 C CNN
F 1 "SST39VF1681" H 6600 3334 50  0000 C CNN
F 2 "Package_SO:TSOP-I-48_18.4x12mm_P0.5mm" H 6600 2300 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/25040a.pdf" H 6600 2300 50  0001 C CNN
	1    6600 2000
	1    0    0    -1  
$EndComp
Text GLabel 6000 3000 0    50   Input ~ 0
~RWP
Text GLabel 6000 3100 0    50   Input ~ 0
~RWE
Text GLabel 6000 3400 0    50   Input ~ 0
~RRST
$Comp
L power:GND #PWR055
U 1 1 5C31FEBC
P 7200 3400
F 0 "#PWR055" H 7200 3150 50  0001 C CNN
F 1 "GND" V 7200 3200 50  0000 C CNN
F 2 "" H 7200 3400 50  0001 C CNN
F 3 "" H 7200 3400 50  0001 C CNN
	1    7200 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR054
U 1 1 5C320311
P 7200 3300
F 0 "#PWR054" H 7200 3150 50  0001 C CNN
F 1 "+3V3" V 7215 3428 50  0000 L CNN
F 2 "" H 7200 3300 50  0001 C CNN
F 3 "" H 7200 3300 50  0001 C CNN
	1    7200 3300
	0    1    1    0   
$EndComp
$Comp
L Device:C C105
U 1 1 5C330461
P 10600 5950
F 0 "C105" H 10650 6050 50  0000 L CNN
F 1 "100nF" H 10600 5850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10638 5800 50  0001 C CNN
F 3 "~" H 10600 5950 50  0001 C CNN
	1    10600 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C106
U 1 1 5C330468
P 10900 5950
F 0 "C106" H 10950 6050 50  0000 L CNN
F 1 "100nF" H 10900 5850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10938 5800 50  0001 C CNN
F 3 "~" H 10900 5950 50  0001 C CNN
	1    10900 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 6200 10600 6200
Wire Wire Line
	10600 6200 10600 6100
Connection ~ 10300 6200
Wire Wire Line
	10600 6200 10900 6200
Wire Wire Line
	10900 6200 10900 6100
Connection ~ 10600 6200
Wire Wire Line
	10300 5700 10600 5700
Wire Wire Line
	10600 5700 10600 5800
Connection ~ 10300 5700
Wire Wire Line
	10600 5700 10900 5700
Wire Wire Line
	10900 5700 10900 5800
Connection ~ 10600 5700
$Comp
L Device:C C43
U 1 1 5C69C274
P 3500 2300
F 0 "C43" H 3550 2400 50  0000 L CNN
F 1 "100nF" H 3500 2200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3538 2150 50  0001 C CNN
F 3 "~" H 3500 2300 50  0001 C CNN
	1    3500 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C44
U 1 1 5C69C27B
P 3800 2300
F 0 "C44" H 3850 2400 50  0000 L CNN
F 1 "100nF" H 3800 2200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3838 2150 50  0001 C CNN
F 3 "~" H 3800 2300 50  0001 C CNN
	1    3800 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C45
U 1 1 5C69C282
P 4100 2300
F 0 "C45" H 4150 2400 50  0000 L CNN
F 1 "100nF" H 4100 2200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4138 2150 50  0001 C CNN
F 3 "~" H 4100 2300 50  0001 C CNN
	1    4100 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR075
U 1 1 5C69D08B
P 4200 2050
F 0 "#PWR075" H 4200 1900 50  0001 C CNN
F 1 "+3V3" V 4200 2300 50  0000 C CNN
F 2 "" H 4200 2050 50  0001 C CNN
F 3 "" H 4200 2050 50  0001 C CNN
	1    4200 2050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR074
U 1 1 5C69D0BE
P 4100 2650
F 0 "#PWR074" H 4100 2400 50  0001 C CNN
F 1 "GND" H 4105 2477 50  0000 C CNN
F 2 "" H 4100 2650 50  0001 C CNN
F 3 "" H 4100 2650 50  0001 C CNN
	1    4100 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2050 3300 2050
Wire Wire Line
	4100 2150 4100 2050
Connection ~ 4100 2050
Wire Wire Line
	4100 2050 4200 2050
Wire Wire Line
	3800 2150 3800 2050
Connection ~ 3800 2050
Wire Wire Line
	3800 2050 4100 2050
Wire Wire Line
	3500 2150 3500 2050
Connection ~ 3500 2050
Wire Wire Line
	3500 2050 3800 2050
Wire Wire Line
	3200 2250 3300 2250
Wire Wire Line
	3300 2250 3300 2150
Connection ~ 3300 2050
Wire Wire Line
	3300 2050 3500 2050
Wire Wire Line
	3200 2150 3300 2150
Connection ~ 3300 2150
Wire Wire Line
	3300 2150 3300 2050
Wire Wire Line
	3200 2550 3300 2550
Wire Wire Line
	4100 2550 4100 2450
Wire Wire Line
	4100 2650 4100 2550
Connection ~ 4100 2550
Wire Wire Line
	3800 2450 3800 2550
Connection ~ 3800 2550
Wire Wire Line
	3800 2550 4100 2550
Wire Wire Line
	3500 2450 3500 2550
Connection ~ 3500 2550
Wire Wire Line
	3500 2550 3800 2550
Wire Wire Line
	3200 2450 3300 2450
Wire Wire Line
	3300 2450 3300 2550
Connection ~ 3300 2550
Wire Wire Line
	3300 2550 3500 2550
Wire Wire Line
	3200 2650 3300 2650
Wire Wire Line
	3300 2650 3300 2550
Text GLabel 1900 2550 0    50   Input ~ 0
SA0
Text GLabel 1900 2150 0    50   Input ~ 0
SA1
Text GLabel 1900 1450 0    50   Input ~ 0
SA4
Text GLabel 1900 1550 0    50   Input ~ 0
SA6
Text GLabel 1900 950  0    50   Input ~ 0
~SCE1
Text GLabel 3200 850  2    50   Input ~ 0
~SWE
Text GLabel 1900 1350 0    50   Input ~ 0
SD2
Text GLabel 1900 2250 0    50   Input ~ 0
SD3
Text GLabel 6000 1900 0    50   Input ~ 0
SA11
Text GLabel 6000 2000 0    50   Input ~ 0
SA12
Text GLabel 6000 2100 0    50   Input ~ 0
SA13
Text GLabel 6000 2200 0    50   Input ~ 0
SA14
Text GLabel 6000 2300 0    50   Input ~ 0
SA15
Text GLabel 6000 2400 0    50   Input ~ 0
SA16
Text GLabel 6000 2500 0    50   Input ~ 0
SA17
Text GLabel 6000 2600 0    50   Input ~ 0
SA18
Text GLabel 6000 2700 0    50   Input ~ 0
SA19
Text GLabel 6000 2800 0    50   Input ~ 0
SA20
Text GLabel 1900 4000 0    50   Input ~ 0
SA19
Text GLabel 3200 3300 2    50   Input ~ 0
SA20
Text GLabel 1900 850  0    50   Input ~ 0
SD14
Text GLabel 7200 800  2    50   Input ~ 0
SD0
Text GLabel 7200 900  2    50   Input ~ 0
SD1
Text GLabel 7200 1000 2    50   Input ~ 0
SD2
Text GLabel 7200 1100 2    50   Input ~ 0
SD3
Text GLabel 7200 1200 2    50   Input ~ 0
SD4
Text GLabel 7200 1300 2    50   Input ~ 0
SD5
Text GLabel 7200 1400 2    50   Input ~ 0
SD6
Text GLabel 7200 1500 2    50   Input ~ 0
SD7
Text GLabel 6000 800  0    50   Input ~ 0
SA0
Text GLabel 6000 900  0    50   Input ~ 0
SA1
Text GLabel 6000 1000 0    50   Input ~ 0
SA2
Text GLabel 6000 1100 0    50   Input ~ 0
SA3
Text GLabel 6000 1200 0    50   Input ~ 0
SA4
Text GLabel 6000 1300 0    50   Input ~ 0
SA5
Text GLabel 6000 1400 0    50   Input ~ 0
SA6
Text GLabel 6000 1500 0    50   Input ~ 0
SA7
Text GLabel 6000 1600 0    50   Input ~ 0
SA8
Text GLabel 6000 1700 0    50   Input ~ 0
SA9
Text GLabel 6000 1800 0    50   Input ~ 0
SA10
Text GLabel 9000 1300 2    50   Input ~ 0
SD8
Text GLabel 9000 1400 2    50   Input ~ 0
SD9
Text GLabel 9000 1200 2    50   Input ~ 0
SD10
Text GLabel 9000 1500 2    50   Input ~ 0
SD11
Text GLabel 9000 1100 2    50   Input ~ 0
SD12
Text GLabel 9000 1600 2    50   Input ~ 0
SD13
Text GLabel 9000 1000 2    50   Input ~ 0
SD14
Text GLabel 9000 1700 2    50   Input ~ 0
SD15
Text GLabel 9600 1900 0    50   Input ~ 0
SA1
Text GLabel 9600 1100 0    50   Input ~ 0
SA4
Text GLabel 9600 2800 0    50   Input ~ 0
SA3
Text GLabel 9600 1000 0    50   Input ~ 0
SA2
Text GLabel 9600 2700 0    50   Input ~ 0
SA5
Text GLabel 9600 1200 0    50   Input ~ 0
SA6
Text GLabel 9600 2600 0    50   Input ~ 0
SA7
Text GLabel 9600 1300 0    50   Input ~ 0
SA8
Text GLabel 9600 2500 0    50   Input ~ 0
SA18
Text GLabel 9600 2000 0    50   Input ~ 0
SA17
Text GLabel 9600 1700 0    50   Input ~ 0
SA16
Text GLabel 9600 2100 0    50   Input ~ 0
SA15
Text GLabel 9600 2200 0    50   Input ~ 0
SA13
Text GLabel 9600 1500 0    50   Input ~ 0
SA12
Text GLabel 9600 2300 0    50   Input ~ 0
SA11
Text GLabel 9600 2400 0    50   Input ~ 0
SA10
Text GLabel 9600 1800 0    50   Input ~ 0
SA0
Text GLabel 9600 1400 0    50   Input ~ 0
SA9
Text GLabel 9600 1600 0    50   Input ~ 0
SA14
$Comp
L UniEmu-rescue:EP4CE6F17-andreil U?
U 5 1 5C435390
P 2550 1600
AR Path="/5C435390" Ref="U?"  Part="1" 
AR Path="/5C2D60A3/5C435390" Ref="U4"  Part="5" 
F 0 "U4" H 2550 2575 50  0000 C CNN
F 1 "EP4CE6F17" H 2550 2484 50  0000 C CNN
F 2 "Package_BGA:BGA-256_17.0x17.0mm_Layout16x16_P1.0mm_Ball0.5mm_Pad0.4mm_NSMD" H 2600 400 50  0001 C CNN
F 3 "" H 3050 1150 50  0001 C CNN
	5    2550 1600
	1    0    0    -1  
$EndComp
Text GLabel 1900 4300 0    50   Input ~ 0
~ROE
Text GLabel 1900 4400 0    50   Input ~ 0
~ROM
Text GLabel 1900 4500 0    50   Input ~ 0
~RRST
Text GLabel 1900 4600 0    50   Input ~ 0
~RWP
Text GLabel 1900 3500 0    50   Input ~ 0
~RWE
Text GLabel 3200 1250 2    50   Input ~ 0
SD11
Text GLabel 1900 1750 0    50   Input ~ 0
SD10
Text GLabel 3200 1150 2    50   Input ~ 0
SD9
Text GLabel 1900 1650 0    50   Input ~ 0
SD8
Text GLabel 1900 4100 0    50   Input ~ 0
SD7
Text GLabel 1900 1050 0    50   Input ~ 0
SD6
Text GLabel 1900 3400 0    50   Input ~ 0
SD5
Text GLabel 1900 2050 0    50   Input ~ 0
~SCE2
Text GLabel 3200 1450 2    50   Input ~ 0
SA17
Text GLabel 1900 1850 0    50   Input ~ 0
SA16
Text GLabel 3200 950  2    50   Input ~ 0
SA15
Text GLabel 1900 2350 0    50   Input ~ 0
SA14
Text GLabel 1900 2450 0    50   Input ~ 0
SA13
Text GLabel 1900 1950 0    50   Input ~ 0
SA12
Text GLabel 3200 1550 2    50   Input ~ 0
SA11
Text GLabel 3200 1050 2    50   Input ~ 0
SA10
Text GLabel 1900 2650 0    50   Input ~ 0
SA9
Text GLabel 1900 1150 0    50   Input ~ 0
SA8
Text GLabel 7800 1900 0    50   Input ~ 0
SA1
Text GLabel 7800 1100 0    50   Input ~ 0
SA4
Text GLabel 7800 2800 0    50   Input ~ 0
SA3
Text GLabel 7800 1000 0    50   Input ~ 0
SA2
Text GLabel 7800 2700 0    50   Input ~ 0
SA5
Text GLabel 7800 1200 0    50   Input ~ 0
SA6
Text GLabel 7800 2600 0    50   Input ~ 0
SA7
Text GLabel 7800 1300 0    50   Input ~ 0
SA8
Text GLabel 7800 2500 0    50   Input ~ 0
SA18
Text GLabel 7800 2000 0    50   Input ~ 0
SA17
Text GLabel 7800 1700 0    50   Input ~ 0
SA16
Text GLabel 7800 2100 0    50   Input ~ 0
SA15
Text GLabel 7800 2200 0    50   Input ~ 0
SA13
Text GLabel 7800 1500 0    50   Input ~ 0
SA12
Text GLabel 7800 2300 0    50   Input ~ 0
SA11
Text GLabel 7800 2400 0    50   Input ~ 0
SA10
Text GLabel 7800 1800 0    50   Input ~ 0
SA0
Text GLabel 7800 1400 0    50   Input ~ 0
SA9
Text GLabel 7800 1600 0    50   Input ~ 0
SA14
Text GLabel 1900 1250 0    50   Input ~ 0
SA2
$Comp
L Device:C C50
U 1 1 5CD42207
P 3500 4850
AR Path="/5C2D60A3/5CD42207" Ref="C50"  Part="1" 
AR Path="/5C58FB63/5CD42207" Ref="C?"  Part="1" 
F 0 "C50" H 3550 4950 50  0000 L CNN
F 1 "100nF" H 3500 4750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3538 4700 50  0001 C CNN
F 3 "~" H 3500 4850 50  0001 C CNN
	1    3500 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C51
U 1 1 5CD4220E
P 3800 4850
AR Path="/5C2D60A3/5CD4220E" Ref="C51"  Part="1" 
AR Path="/5C58FB63/5CD4220E" Ref="C?"  Part="1" 
F 0 "C51" H 3850 4950 50  0000 L CNN
F 1 "100nF" H 3800 4750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3838 4700 50  0001 C CNN
F 3 "~" H 3800 4850 50  0001 C CNN
	1    3800 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0124
U 1 1 5CD42215
P 3900 4600
AR Path="/5C2D60A3/5CD42215" Ref="#PWR0124"  Part="1" 
AR Path="/5C58FB63/5CD42215" Ref="#PWR?"  Part="1" 
F 0 "#PWR0124" H 3900 4450 50  0001 C CNN
F 1 "+3V3" V 3900 4850 50  0000 C CNN
F 2 "" H 3900 4600 50  0001 C CNN
F 3 "" H 3900 4600 50  0001 C CNN
	1    3900 4600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0141
U 1 1 5CD4221B
P 3800 5200
AR Path="/5C2D60A3/5CD4221B" Ref="#PWR0141"  Part="1" 
AR Path="/5C58FB63/5CD4221B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0141" H 3800 4950 50  0001 C CNN
F 1 "GND" H 3805 5027 50  0000 C CNN
F 2 "" H 3800 5200 50  0001 C CNN
F 3 "" H 3800 5200 50  0001 C CNN
	1    3800 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4600 3300 4600
Wire Wire Line
	3800 4700 3800 4600
Connection ~ 3800 4600
Wire Wire Line
	3800 4600 3900 4600
Wire Wire Line
	3500 4700 3500 4600
Connection ~ 3500 4600
Wire Wire Line
	3500 4600 3800 4600
Wire Wire Line
	3200 4700 3300 4700
Wire Wire Line
	3300 4700 3300 4600
Connection ~ 3300 4600
Wire Wire Line
	3300 4600 3500 4600
Wire Wire Line
	3200 4900 3300 4900
Wire Wire Line
	3300 4900 3300 5000
Wire Wire Line
	3300 5100 3500 5100
Wire Wire Line
	3800 5100 3800 5000
Wire Wire Line
	3800 5200 3800 5100
Connection ~ 3800 5100
Wire Wire Line
	3200 5000 3300 5000
Connection ~ 3300 5000
Wire Wire Line
	3300 5000 3300 5100
Wire Wire Line
	3500 5100 3500 5000
Connection ~ 3500 5100
Wire Wire Line
	3500 5100 3800 5100
$Comp
L power:GND #PWR0142
U 1 1 5CD42238
P 3300 4200
AR Path="/5C2D60A3/5CD42238" Ref="#PWR0142"  Part="1" 
AR Path="/5C58FB63/5CD42238" Ref="#PWR?"  Part="1" 
F 0 "#PWR0142" H 3300 3950 50  0001 C CNN
F 1 "GND" H 3305 4027 50  0000 C CNN
F 2 "" H 3300 4200 50  0001 C CNN
F 3 "" H 3300 4200 50  0001 C CNN
	1    3300 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4100 3300 4100
Wire Wire Line
	3300 4100 3300 4200
Wire Wire Line
	3200 4000 3300 4000
Wire Wire Line
	3300 4000 3300 4100
Connection ~ 3300 4100
$Comp
L UniEmu-rescue:EP4CE6F17-andreil U?
U 6 1 5CD42243
P 2550 3950
AR Path="/5CD42243" Ref="U?"  Part="1" 
AR Path="/5C58FB63/5CD42243" Ref="U?"  Part="6" 
AR Path="/5C2D60A3/5CD42243" Ref="U4"  Part="6" 
F 0 "U4" H 2550 4925 50  0000 C CNN
F 1 "EP4CE6F17" H 2550 4834 50  0000 C CNN
F 2 "Package_BGA:BGA-256_17.0x17.0mm_Layout16x16_P1.0mm_Ball0.5mm_Pad0.4mm_NSMD" H 2600 2750 50  0001 C CNN
F 3 "" H 3050 3500 50  0001 C CNN
	6    2550 3950
	1    0    0    -1  
$EndComp
Text GLabel 1900 4200 0    50   Input ~ 0
SA3
Text GLabel 1900 3800 0    50   Input ~ 0
SA5
Text GLabel 1900 3900 0    50   Input ~ 0
~SOE
Text GLabel 1900 3200 0    50   Input ~ 0
SD13
Text GLabel 1900 3700 0    50   Input ~ 0
SD15
Text GLabel 1900 3600 0    50   Input ~ 0
SA18
Text GLabel 1900 3300 0    50   Input ~ 0
SA7
Text GLabel 1900 4700 0    50   Input ~ 0
ZB28
Text GLabel 3200 3400 2    50   Input ~ 0
ZA30
Text GLabel 1900 5000 0    50   Input ~ 0
ZA31
Text GLabel 3200 3500 2    50   Input ~ 0
ZB30
Text GLabel 3200 3200 2    50   Input ~ 0
ZB31
Text GLabel 1900 4900 0    50   Input ~ 0
ZA32
Text GLabel 1900 4800 0    50   Input ~ 0
ZB32
Text GLabel 3200 1350 2    50   Input ~ 0
BTN
$EndSCHEMATC
