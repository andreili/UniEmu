EESchema Schematic File Version 4
LIBS:UniEmu-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title ""
Date ""
Rev "2.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 5100 4500 0    50   Input ~ 0
CA1
Text GLabel 5100 4600 0    50   Input ~ 0
CA2
Text GLabel 5100 4700 0    50   Input ~ 0
CA3
Text GLabel 5100 4800 0    50   Input ~ 0
CA4
Text GLabel 5100 5100 0    50   Input ~ 0
CA7
Text GLabel 5100 5200 0    50   Input ~ 0
CA8
Text GLabel 5100 5300 0    50   Input ~ 0
CA9
Text GLabel 5100 5400 0    50   Input ~ 0
CA10
Text GLabel 5100 5500 0    50   Input ~ 0
CA11
Text GLabel 5100 5600 0    50   Input ~ 0
CA12
Text GLabel 5100 5700 0    50   Input ~ 0
CA13
Text GLabel 5100 5800 0    50   Input ~ 0
CA14
Text GLabel 5100 5900 0    50   Input ~ 0
CA15
Text GLabel 5100 6000 0    50   Input ~ 0
CA16
Text GLabel 8100 4500 0    50   Input ~ 0
CA17
Text GLabel 8100 4600 0    50   Input ~ 0
CA18
Text GLabel 8100 4700 0    50   Input ~ 0
CA19
Text GLabel 8100 4800 0    50   Input ~ 0
CA20
Text GLabel 8100 5000 0    50   Input ~ 0
CA22
Text GLabel 8100 5300 0    50   Input ~ 0
CA25
Text GLabel 8100 5400 0    50   Input ~ 0
CA26
Text GLabel 8100 5500 0    50   Input ~ 0
CA27
Text GLabel 8100 5600 0    50   Input ~ 0
CA28
Text GLabel 5600 4500 2    50   Input ~ 0
CB1
Text GLabel 5600 4600 2    50   Input ~ 0
CB2
Text GLabel 5600 4700 2    50   Input ~ 0
CB3
Text GLabel 5600 5300 2    50   Input ~ 0
CB9
Text GLabel 5600 5400 2    50   Input ~ 0
CB10
Text GLabel 5600 5500 2    50   Input ~ 0
CB11
Text GLabel 5600 5600 2    50   Input ~ 0
CB12
Text GLabel 5600 5700 2    50   Input ~ 0
CB13
Text GLabel 8600 4800 2    50   Input ~ 0
CB20
Text GLabel 8600 4900 2    50   Input ~ 0
CB21
Text GLabel 8600 5000 2    50   Input ~ 0
CB22
Text GLabel 8600 5100 2    50   Input ~ 0
CB23
Text GLabel 8600 5200 2    50   Input ~ 0
CB24
Text GLabel 8600 5300 2    50   Input ~ 0
CB25
Text GLabel 8600 5400 2    50   Input ~ 0
CB26
Text GLabel 8600 5500 2    50   Input ~ 0
CB27
Text GLabel 8600 5600 2    50   Input ~ 0
CB28
Text GLabel 8600 5700 2    50   Input ~ 0
CB29
Text GLabel 5600 5800 2    50   Input ~ 0
CB14
$Comp
L power:+5V #PWR?
U 1 1 5C58FDFE
P 4000 800
AR Path="/5C2D60A3/5C58FDFE" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C58FDFE" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 4000 650 50  0001 C CNN
F 1 "+5V" H 3950 950 50  0000 L CNN
F 2 "" H 4000 800 50  0001 C CNN
F 3 "" H 4000 800 50  0001 C CNN
	1    4000 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C58FE04
P 3900 2200
AR Path="/5C2D60A3/5C58FE04" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C58FE04" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 3900 1950 50  0001 C CNN
F 1 "GND" H 3905 2027 50  0000 C CNN
F 2 "" H 3900 2200 50  0001 C CNN
F 3 "" H 3900 2200 50  0001 C CNN
	1    3900 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5C58FE12
P 3800 800
AR Path="/5C2D60A3/5C58FE12" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C58FE12" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 3800 650 50  0001 C CNN
F 1 "+3V3" H 3700 950 50  0000 L CNN
F 2 "" H 3800 800 50  0001 C CNN
F 3 "" H 3800 800 50  0001 C CNN
	1    3800 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C7D37E8
P 2400 4350
AR Path="/5C2D60A3/5C7D37E8" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C7D37E8" Ref="C53"  Part="1" 
F 0 "C53" H 2450 4450 50  0000 L CNN
F 1 "100nF" H 2400 4250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2438 4200 50  0001 C CNN
F 3 "~" H 2400 4350 50  0001 C CNN
	1    2400 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C7D37EF
P 2700 4350
AR Path="/5C2D60A3/5C7D37EF" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C7D37EF" Ref="C54"  Part="1" 
F 0 "C54" H 2750 4450 50  0000 L CNN
F 1 "100nF" H 2700 4250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2738 4200 50  0001 C CNN
F 3 "~" H 2700 4350 50  0001 C CNN
	1    2700 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C7D37F6
P 3000 4350
AR Path="/5C2D60A3/5C7D37F6" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C7D37F6" Ref="C55"  Part="1" 
F 0 "C55" H 3050 4450 50  0000 L CNN
F 1 "100nF" H 3000 4250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3038 4200 50  0001 C CNN
F 3 "~" H 3000 4350 50  0001 C CNN
	1    3000 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5C7D37FD
P 3100 4100
AR Path="/5C2D60A3/5C7D37FD" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C7D37FD" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 3100 3950 50  0001 C CNN
F 1 "+3V3" V 3100 4350 50  0000 C CNN
F 2 "" H 3100 4100 50  0001 C CNN
F 3 "" H 3100 4100 50  0001 C CNN
	1    3100 4100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C7D3803
P 2300 4900
AR Path="/5C2D60A3/5C7D3803" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C7D3803" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 2300 4650 50  0001 C CNN
F 1 "GND" H 2305 4727 50  0000 C CNN
F 2 "" H 2300 4900 50  0001 C CNN
F 3 "" H 2300 4900 50  0001 C CNN
	1    2300 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4500 2300 4500
Wire Wire Line
	2300 4500 2300 4600
Wire Wire Line
	2200 4600 2300 4600
Connection ~ 2300 4600
Wire Wire Line
	2300 4600 2300 4700
Wire Wire Line
	2200 4700 2300 4700
Connection ~ 2300 4700
Wire Wire Line
	2300 4700 2300 4800
Wire Wire Line
	2200 4800 2300 4800
Connection ~ 2300 4800
Wire Wire Line
	2300 4800 2300 4900
Wire Wire Line
	2200 4200 2300 4200
Wire Wire Line
	2300 4200 2300 4100
Wire Wire Line
	2300 4000 2200 4000
Wire Wire Line
	2200 4100 2300 4100
Connection ~ 2300 4100
Wire Wire Line
	2300 4100 2300 4000
Wire Wire Line
	2300 4100 2400 4100
Wire Wire Line
	2300 4600 2400 4600
Wire Wire Line
	3000 4600 3000 4500
Wire Wire Line
	2700 4500 2700 4600
Connection ~ 2700 4600
Wire Wire Line
	2700 4600 3000 4600
Wire Wire Line
	2400 4500 2400 4600
Connection ~ 2400 4600
Wire Wire Line
	2400 4600 2700 4600
Wire Wire Line
	2400 4200 2400 4100
Connection ~ 2400 4100
Wire Wire Line
	2400 4100 2700 4100
Wire Wire Line
	2700 4200 2700 4100
Connection ~ 2700 4100
Wire Wire Line
	2700 4100 3000 4100
Wire Wire Line
	3000 4200 3000 4100
Connection ~ 3000 4100
Wire Wire Line
	3000 4100 3100 4100
$Comp
L power:+1V2 #PWR?
U 1 1 5C7D382C
P 2700 3800
AR Path="/5C2D60A3/5C7D382C" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C7D382C" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 2700 3650 50  0001 C CNN
F 1 "+1V2" V 2600 3800 50  0000 L CNN
F 2 "" H 2700 3800 50  0001 C CNN
F 3 "" H 2700 3800 50  0001 C CNN
	1    2700 3800
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5C7D3832
P 2550 3900
AR Path="/5C2D60A3/5C7D3832" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C7D3832" Ref="C52"  Part="1" 
F 0 "C52" V 2600 4000 50  0000 L CNN
F 1 "100nF" V 2450 3600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2588 3750 50  0001 C CNN
F 3 "~" H 2550 3900 50  0001 C CNN
	1    2550 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 3900 2300 3900
Wire Wire Line
	2300 3900 2300 3800
Wire Wire Line
	2300 3800 2200 3800
Wire Wire Line
	2300 3800 2700 3800
Connection ~ 2300 3800
$Comp
L power:GND #PWR?
U 1 1 5C7D383E
P 2700 3900
AR Path="/5C2D60A3/5C7D383E" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C7D383E" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 2700 3650 50  0001 C CNN
F 1 "GND" H 2705 3727 50  0000 C CNN
F 2 "" H 2700 3900 50  0001 C CNN
F 3 "" H 2700 3900 50  0001 C CNN
	1    2700 3900
	0    -1   -1   0   
$EndComp
$Comp
L Logic_LevelTranslator:TXB0108DQSR U13
U 1 1 5C2F5E5B
P 3900 1500
F 0 "U13" H 3650 2150 50  0000 C CNN
F 1 "TXB0108DQSR" H 3550 850 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 3900 750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 3900 1400 50  0001 C CNN
	1    3900 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C2FD6C8
P 5300 800
AR Path="/5C2D60A3/5C2FD6C8" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C2FD6C8" Ref="#PWR093"  Part="1" 
F 0 "#PWR093" H 5300 650 50  0001 C CNN
F 1 "+5V" H 5250 950 50  0000 L CNN
F 2 "" H 5300 800 50  0001 C CNN
F 3 "" H 5300 800 50  0001 C CNN
	1    5300 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C2FD6CE
P 5200 2200
AR Path="/5C2D60A3/5C2FD6CE" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C2FD6CE" Ref="#PWR091"  Part="1" 
F 0 "#PWR091" H 5200 1950 50  0001 C CNN
F 1 "GND" H 5205 2027 50  0000 C CNN
F 2 "" H 5200 2200 50  0001 C CNN
F 3 "" H 5200 2200 50  0001 C CNN
	1    5200 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5C2FD6D4
P 5100 800
AR Path="/5C2D60A3/5C2FD6D4" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C2FD6D4" Ref="#PWR089"  Part="1" 
F 0 "#PWR089" H 5100 650 50  0001 C CNN
F 1 "+3V3" H 5000 950 50  0000 L CNN
F 2 "" H 5100 800 50  0001 C CNN
F 3 "" H 5100 800 50  0001 C CNN
	1    5100 800 
	1    0    0    -1  
$EndComp
$Comp
L Logic_LevelTranslator:TXB0108DQSR U14
U 1 1 5C2FD6DA
P 5200 1500
F 0 "U14" H 4950 2150 50  0000 C CNN
F 1 "TXB0108DQSR" H 4850 850 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 5200 750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 5200 1400 50  0001 C CNN
	1    5200 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C306B08
P 6600 800
AR Path="/5C2D60A3/5C306B08" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C306B08" Ref="#PWR087"  Part="1" 
F 0 "#PWR087" H 6600 650 50  0001 C CNN
F 1 "+5V" H 6550 950 50  0000 L CNN
F 2 "" H 6600 800 50  0001 C CNN
F 3 "" H 6600 800 50  0001 C CNN
	1    6600 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C306B0E
P 6500 2200
AR Path="/5C2D60A3/5C306B0E" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C306B0E" Ref="#PWR085"  Part="1" 
F 0 "#PWR085" H 6500 1950 50  0001 C CNN
F 1 "GND" H 6505 2027 50  0000 C CNN
F 2 "" H 6500 2200 50  0001 C CNN
F 3 "" H 6500 2200 50  0001 C CNN
	1    6500 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5C306B14
P 6400 800
AR Path="/5C2D60A3/5C306B14" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C306B14" Ref="#PWR083"  Part="1" 
F 0 "#PWR083" H 6400 650 50  0001 C CNN
F 1 "+3V3" H 6300 950 50  0000 L CNN
F 2 "" H 6400 800 50  0001 C CNN
F 3 "" H 6400 800 50  0001 C CNN
	1    6400 800 
	1    0    0    -1  
$EndComp
$Comp
L Logic_LevelTranslator:TXB0108DQSR U15
U 1 1 5C306B1A
P 6500 1500
F 0 "U15" H 6250 2150 50  0000 C CNN
F 1 "TXB0108DQSR" H 6150 850 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 6500 750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 6500 1400 50  0001 C CNN
	1    6500 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C307B99
P 7900 800
AR Path="/5C2D60A3/5C307B99" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C307B99" Ref="#PWR094"  Part="1" 
F 0 "#PWR094" H 7900 650 50  0001 C CNN
F 1 "+5V" H 7850 950 50  0000 L CNN
F 2 "" H 7900 800 50  0001 C CNN
F 3 "" H 7900 800 50  0001 C CNN
	1    7900 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C307B9F
P 7800 2200
AR Path="/5C2D60A3/5C307B9F" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C307B9F" Ref="#PWR092"  Part="1" 
F 0 "#PWR092" H 7800 1950 50  0001 C CNN
F 1 "GND" H 7805 2027 50  0000 C CNN
F 2 "" H 7800 2200 50  0001 C CNN
F 3 "" H 7800 2200 50  0001 C CNN
	1    7800 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5C307BA5
P 7700 800
AR Path="/5C2D60A3/5C307BA5" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C307BA5" Ref="#PWR090"  Part="1" 
F 0 "#PWR090" H 7700 650 50  0001 C CNN
F 1 "+3V3" H 7600 950 50  0000 L CNN
F 2 "" H 7700 800 50  0001 C CNN
F 3 "" H 7700 800 50  0001 C CNN
	1    7700 800 
	1    0    0    -1  
$EndComp
$Comp
L Logic_LevelTranslator:TXB0108DQSR U16
U 1 1 5C307BAB
P 7800 1500
F 0 "U16" H 7550 2150 50  0000 C CNN
F 1 "TXB0108DQSR" H 7450 850 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 7800 750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 7800 1400 50  0001 C CNN
	1    7800 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C30A7B1
P 4000 2600
AR Path="/5C2D60A3/5C30A7B1" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C30A7B1" Ref="#PWR088"  Part="1" 
F 0 "#PWR088" H 4000 2450 50  0001 C CNN
F 1 "+5V" H 3950 2750 50  0000 L CNN
F 2 "" H 4000 2600 50  0001 C CNN
F 3 "" H 4000 2600 50  0001 C CNN
	1    4000 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C30A7B7
P 3900 4000
AR Path="/5C2D60A3/5C30A7B7" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C30A7B7" Ref="#PWR086"  Part="1" 
F 0 "#PWR086" H 3900 3750 50  0001 C CNN
F 1 "GND" H 3905 3827 50  0000 C CNN
F 2 "" H 3900 4000 50  0001 C CNN
F 3 "" H 3900 4000 50  0001 C CNN
	1    3900 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5C30A7BD
P 3800 2600
AR Path="/5C2D60A3/5C30A7BD" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C30A7BD" Ref="#PWR084"  Part="1" 
F 0 "#PWR084" H 3800 2450 50  0001 C CNN
F 1 "+3V3" H 3700 2750 50  0000 L CNN
F 2 "" H 3800 2600 50  0001 C CNN
F 3 "" H 3800 2600 50  0001 C CNN
	1    3800 2600
	1    0    0    -1  
$EndComp
$Comp
L Logic_LevelTranslator:TXB0108DQSR U17
U 1 1 5C30A7C3
P 3900 3300
F 0 "U17" H 3650 3950 50  0000 C CNN
F 1 "TXB0108DQSR" H 3550 2650 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 3900 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 3900 3200 50  0001 C CNN
	1    3900 3300
	1    0    0    -1  
$EndComp
Text GLabel 7400 1100 0    50   Input ~ 0
ZOE
Text GLabel 3500 1100 0    50   Input ~ 0
ZOE
Text GLabel 4800 1100 0    50   Input ~ 0
ZOE
Text GLabel 5100 4900 0    50   Input ~ 0
CA5
Text GLabel 5600 4900 2    50   Input ~ 0
CB5
Text GLabel 5600 4800 2    50   Input ~ 0
CB4
Text GLabel 5100 5000 0    50   Input ~ 0
CA6
Text GLabel 8100 4900 0    50   Input ~ 0
CA21
Text GLabel 8100 5100 0    50   Input ~ 0
CA23
Text GLabel 8100 5200 0    50   Input ~ 0
CA24
Text GLabel 8100 5700 0    50   Input ~ 0
CA29
Text GLabel 8100 5800 0    50   Input ~ 0
CA30
Text GLabel 8100 5900 0    50   Input ~ 0
CA31
Text GLabel 8100 6000 0    50   Input ~ 0
CA32
Text GLabel 8600 5800 2    50   Input ~ 0
CB30
Text GLabel 8600 5900 2    50   Input ~ 0
CB31
Text GLabel 8600 6000 2    50   Input ~ 0
CB32
Text GLabel 8600 4700 2    50   Input ~ 0
CB19
Text GLabel 8600 4600 2    50   Input ~ 0
CB18
Text GLabel 8600 4500 2    50   Input ~ 0
CB17
Text GLabel 5600 6000 2    50   Input ~ 0
CB16
Text GLabel 5600 5900 2    50   Input ~ 0
CB15
Text GLabel 5600 5200 2    50   Input ~ 0
CB8
Text GLabel 5600 5100 2    50   Input ~ 0
CB7
Text GLabel 5600 5000 2    50   Input ~ 0
CB6
Text GLabel 3800 4500 2    50   Input ~ 0
CA1
Text GLabel 4600 4500 2    50   Input ~ 0
CB1
Text GLabel 3800 4600 2    50   Input ~ 0
CA2
Text GLabel 4600 4600 2    50   Input ~ 0
CB2
Text GLabel 3800 4700 2    50   Input ~ 0
CA3
Text GLabel 4600 4700 2    50   Input ~ 0
CB3
Text GLabel 3800 4800 2    50   Input ~ 0
CA4
Text GLabel 4600 4800 2    50   Input ~ 0
CB4
Text GLabel 3800 5100 2    50   Input ~ 0
CA7
Text GLabel 3800 5200 2    50   Input ~ 0
CA8
Text GLabel 3800 5300 2    50   Input ~ 0
CA9
Text GLabel 3800 5400 2    50   Input ~ 0
CA10
Text GLabel 3800 5500 2    50   Input ~ 0
CA11
Text GLabel 3800 5600 2    50   Input ~ 0
CA12
Text GLabel 3800 5700 2    50   Input ~ 0
CA13
Text GLabel 3800 5800 2    50   Input ~ 0
CA14
Text GLabel 3800 5900 2    50   Input ~ 0
CA15
Text GLabel 3800 6000 2    50   Input ~ 0
CA16
Text GLabel 6800 4500 2    50   Input ~ 0
CA17
Text GLabel 6800 4600 2    50   Input ~ 0
CA18
Text GLabel 6800 4700 2    50   Input ~ 0
CA19
Text GLabel 6800 4800 2    50   Input ~ 0
CA20
Text GLabel 6800 5000 2    50   Input ~ 0
CA22
Text GLabel 6800 5300 2    50   Input ~ 0
CA25
Text GLabel 6800 5400 2    50   Input ~ 0
CA26
Text GLabel 6800 5500 2    50   Input ~ 0
CA27
Text GLabel 6800 5600 2    50   Input ~ 0
CA28
Text GLabel 3800 4900 2    50   Input ~ 0
CA5
Text GLabel 3800 5000 2    50   Input ~ 0
CA6
Text GLabel 6800 4900 2    50   Input ~ 0
CA21
Text GLabel 6800 5100 2    50   Input ~ 0
CA23
Text GLabel 6800 5200 2    50   Input ~ 0
CA24
Text GLabel 6800 5700 2    50   Input ~ 0
CA29
Text GLabel 6800 5800 2    50   Input ~ 0
CA30
Text GLabel 6800 5900 2    50   Input ~ 0
CA31
Text GLabel 6800 6000 2    50   Input ~ 0
CA32
Text GLabel 4600 5300 2    50   Input ~ 0
CB9
Text GLabel 4600 5400 2    50   Input ~ 0
CB10
Text GLabel 4600 5500 2    50   Input ~ 0
CB11
Text GLabel 4600 5600 2    50   Input ~ 0
CB12
Text GLabel 4600 5700 2    50   Input ~ 0
CB13
Text GLabel 7600 4800 2    50   Input ~ 0
CB20
Text GLabel 7600 4900 2    50   Input ~ 0
CB21
Text GLabel 7600 5000 2    50   Input ~ 0
CB22
Text GLabel 7600 5100 2    50   Input ~ 0
CB23
Text GLabel 7600 5200 2    50   Input ~ 0
CB24
Text GLabel 7600 5300 2    50   Input ~ 0
CB25
Text GLabel 7600 5400 2    50   Input ~ 0
CB26
Text GLabel 7600 5500 2    50   Input ~ 0
CB27
Text GLabel 7600 5600 2    50   Input ~ 0
CB28
Text GLabel 7600 5700 2    50   Input ~ 0
CB29
Text GLabel 4600 5800 2    50   Input ~ 0
CB14
Text GLabel 4600 4900 2    50   Input ~ 0
CB5
Text GLabel 7600 5800 2    50   Input ~ 0
CB30
Text GLabel 7600 5900 2    50   Input ~ 0
CB31
Text GLabel 7600 6000 2    50   Input ~ 0
CB32
Text GLabel 7600 4700 2    50   Input ~ 0
CB19
Text GLabel 7600 4600 2    50   Input ~ 0
CB18
Text GLabel 7600 4500 2    50   Input ~ 0
CB17
Text GLabel 4600 6000 2    50   Input ~ 0
CB16
Text GLabel 4600 5900 2    50   Input ~ 0
CB15
Text GLabel 4600 5200 2    50   Input ~ 0
CB8
Text GLabel 4600 5100 2    50   Input ~ 0
CB7
Text GLabel 4600 5000 2    50   Input ~ 0
CB6
$Comp
L power:+5V #PWR?
U 1 1 5C3292F1
P 5300 2600
AR Path="/5C2D60A3/5C3292F1" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C3292F1" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 5300 2450 50  0001 C CNN
F 1 "+5V" H 5250 2750 50  0000 L CNN
F 2 "" H 5300 2600 50  0001 C CNN
F 3 "" H 5300 2600 50  0001 C CNN
	1    5300 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C3292F7
P 5200 4000
AR Path="/5C2D60A3/5C3292F7" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C3292F7" Ref="#PWR0100"  Part="1" 
F 0 "#PWR0100" H 5200 3750 50  0001 C CNN
F 1 "GND" H 5205 3827 50  0000 C CNN
F 2 "" H 5200 4000 50  0001 C CNN
F 3 "" H 5200 4000 50  0001 C CNN
	1    5200 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5C3292FD
P 5100 2600
AR Path="/5C2D60A3/5C3292FD" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C3292FD" Ref="#PWR098"  Part="1" 
F 0 "#PWR098" H 5100 2450 50  0001 C CNN
F 1 "+3V3" H 5000 2750 50  0000 L CNN
F 2 "" H 5100 2600 50  0001 C CNN
F 3 "" H 5100 2600 50  0001 C CNN
	1    5100 2600
	1    0    0    -1  
$EndComp
$Comp
L Logic_LevelTranslator:TXB0108DQSR U18
U 1 1 5C329303
P 5200 3300
F 0 "U18" H 4950 3950 50  0000 C CNN
F 1 "TXB0108DQSR" H 4850 2650 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 5200 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 5200 3200 50  0001 C CNN
	1    5200 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C329745
P 6600 2600
AR Path="/5C2D60A3/5C329745" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C329745" Ref="#PWR097"  Part="1" 
F 0 "#PWR097" H 6600 2450 50  0001 C CNN
F 1 "+5V" H 6550 2750 50  0000 L CNN
F 2 "" H 6600 2600 50  0001 C CNN
F 3 "" H 6600 2600 50  0001 C CNN
	1    6600 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C32974B
P 6500 4000
AR Path="/5C2D60A3/5C32974B" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C32974B" Ref="#PWR096"  Part="1" 
F 0 "#PWR096" H 6500 3750 50  0001 C CNN
F 1 "GND" H 6505 3827 50  0000 C CNN
F 2 "" H 6500 4000 50  0001 C CNN
F 3 "" H 6500 4000 50  0001 C CNN
	1    6500 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5C329751
P 6400 2600
AR Path="/5C2D60A3/5C329751" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C329751" Ref="#PWR095"  Part="1" 
F 0 "#PWR095" H 6400 2450 50  0001 C CNN
F 1 "+3V3" H 6300 2750 50  0000 L CNN
F 2 "" H 6400 2600 50  0001 C CNN
F 3 "" H 6400 2600 50  0001 C CNN
	1    6400 2600
	1    0    0    -1  
$EndComp
$Comp
L Logic_LevelTranslator:TXB0108DQSR U19
U 1 1 5C329757
P 6500 3300
F 0 "U19" H 6250 3950 50  0000 C CNN
F 1 "TXB0108DQSR" H 6150 2650 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 6500 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 6500 3200 50  0001 C CNN
	1    6500 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C32975E
P 7900 2600
AR Path="/5C2D60A3/5C32975E" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C32975E" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 7900 2450 50  0001 C CNN
F 1 "+5V" H 7850 2750 50  0000 L CNN
F 2 "" H 7900 2600 50  0001 C CNN
F 3 "" H 7900 2600 50  0001 C CNN
	1    7900 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C329764
P 7800 4000
AR Path="/5C2D60A3/5C329764" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C329764" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 7800 3750 50  0001 C CNN
F 1 "GND" H 7805 3827 50  0000 C CNN
F 2 "" H 7800 4000 50  0001 C CNN
F 3 "" H 7800 4000 50  0001 C CNN
	1    7800 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5C32976A
P 7700 2600
AR Path="/5C2D60A3/5C32976A" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C32976A" Ref="#PWR099"  Part="1" 
F 0 "#PWR099" H 7700 2450 50  0001 C CNN
F 1 "+3V3" H 7600 2750 50  0000 L CNN
F 2 "" H 7700 2600 50  0001 C CNN
F 3 "" H 7700 2600 50  0001 C CNN
	1    7700 2600
	1    0    0    -1  
$EndComp
$Comp
L Logic_LevelTranslator:TXB0108DQSR U20
U 1 1 5C329770
P 7800 3300
F 0 "U20" H 7550 3950 50  0000 C CNN
F 1 "TXB0108DQSR" H 7450 2650 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 7800 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 7800 3200 50  0001 C CNN
	1    7800 3300
	1    0    0    -1  
$EndComp
Text GLabel 4800 2900 0    50   Input ~ 0
ZOE
Text GLabel 6100 2900 0    50   Input ~ 0
ZOE
Text GLabel 7400 2900 0    50   Input ~ 0
ZOE
$Comp
L Jumper:SolderJumper_2_Bridged CA1
U 1 1 5C3300A8
P 3650 4500
F 0 "CA1" H 3750 4550 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 3650 4614 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3650 4500 50  0001 C CNN
F 3 "~" H 3650 4500 50  0001 C CNN
	1    3650 4500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA2
U 1 1 5C3317CB
P 3650 4600
F 0 "CA2" H 3750 4650 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 3650 4714 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3650 4600 50  0001 C CNN
F 3 "~" H 3650 4600 50  0001 C CNN
	1    3650 4600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA3
U 1 1 5C331A78
P 3650 4700
F 0 "CA3" H 3750 4750 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 3650 4814 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3650 4700 50  0001 C CNN
F 3 "~" H 3650 4700 50  0001 C CNN
	1    3650 4700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA4
U 1 1 5C331A7F
P 3650 4800
F 0 "CA4" H 3750 4850 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 3650 4914 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3650 4800 50  0001 C CNN
F 3 "~" H 3650 4800 50  0001 C CNN
	1    3650 4800
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA5
U 1 1 5C331E65
P 3650 4900
F 0 "CA5" H 3750 4950 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 3650 5014 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3650 4900 50  0001 C CNN
F 3 "~" H 3650 4900 50  0001 C CNN
	1    3650 4900
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA6
U 1 1 5C331E6C
P 3650 5000
F 0 "CA6" H 3750 5050 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 3650 5114 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3650 5000 50  0001 C CNN
F 3 "~" H 3650 5000 50  0001 C CNN
	1    3650 5000
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA7
U 1 1 5C331E73
P 3650 5100
F 0 "CA7" H 3750 5150 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 3650 5214 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3650 5100 50  0001 C CNN
F 3 "~" H 3650 5100 50  0001 C CNN
	1    3650 5100
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA8
U 1 1 5C331E7A
P 3650 5200
F 0 "CA8" H 3750 5250 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 3650 5314 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3650 5200 50  0001 C CNN
F 3 "~" H 3650 5200 50  0001 C CNN
	1    3650 5200
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA9
U 1 1 5C332489
P 3650 5300
F 0 "CA9" H 3750 5350 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 3650 5414 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3650 5300 50  0001 C CNN
F 3 "~" H 3650 5300 50  0001 C CNN
	1    3650 5300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA10
U 1 1 5C332490
P 3650 5400
F 0 "CA10" H 3750 5450 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 3650 5514 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3650 5400 50  0001 C CNN
F 3 "~" H 3650 5400 50  0001 C CNN
	1    3650 5400
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA11
U 1 1 5C332497
P 3650 5500
F 0 "CA11" H 3750 5550 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 3650 5614 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3650 5500 50  0001 C CNN
F 3 "~" H 3650 5500 50  0001 C CNN
	1    3650 5500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA12
U 1 1 5C33249E
P 3650 5600
F 0 "CA12" H 3750 5650 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 3650 5714 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3650 5600 50  0001 C CNN
F 3 "~" H 3650 5600 50  0001 C CNN
	1    3650 5600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA13
U 1 1 5C3324A5
P 3650 5700
F 0 "CA13" H 3750 5750 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 3650 5814 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3650 5700 50  0001 C CNN
F 3 "~" H 3650 5700 50  0001 C CNN
	1    3650 5700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA14
U 1 1 5C3324AC
P 3650 5800
F 0 "CA14" H 3750 5850 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 3650 5914 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3650 5800 50  0001 C CNN
F 3 "~" H 3650 5800 50  0001 C CNN
	1    3650 5800
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA15
U 1 1 5C3324B3
P 3650 5900
F 0 "CA15" H 3750 5950 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 3650 6014 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3650 5900 50  0001 C CNN
F 3 "~" H 3650 5900 50  0001 C CNN
	1    3650 5900
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA16
U 1 1 5C3324BA
P 3650 6000
F 0 "CA16" H 3750 6050 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 3650 6114 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3650 6000 50  0001 C CNN
F 3 "~" H 3650 6000 50  0001 C CNN
	1    3650 6000
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA17
U 1 1 5C332A54
P 6650 4500
F 0 "CA17" H 6750 4550 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 6650 4614 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 6650 4500 50  0001 C CNN
F 3 "~" H 6650 4500 50  0001 C CNN
	1    6650 4500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA18
U 1 1 5C332A5B
P 6650 4600
F 0 "CA18" H 6750 4650 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 6650 4714 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 6650 4600 50  0001 C CNN
F 3 "~" H 6650 4600 50  0001 C CNN
	1    6650 4600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA19
U 1 1 5C332A62
P 6650 4700
F 0 "CA19" H 6750 4750 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 6650 4814 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 6650 4700 50  0001 C CNN
F 3 "~" H 6650 4700 50  0001 C CNN
	1    6650 4700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA20
U 1 1 5C332A69
P 6650 4800
F 0 "CA20" H 6750 4850 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 6650 4914 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 6650 4800 50  0001 C CNN
F 3 "~" H 6650 4800 50  0001 C CNN
	1    6650 4800
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA21
U 1 1 5C332A70
P 6650 4900
F 0 "CA21" H 6750 4950 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 6650 5014 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 6650 4900 50  0001 C CNN
F 3 "~" H 6650 4900 50  0001 C CNN
	1    6650 4900
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA22
U 1 1 5C332A77
P 6650 5000
F 0 "CA22" H 6750 5050 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 6650 5114 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 6650 5000 50  0001 C CNN
F 3 "~" H 6650 5000 50  0001 C CNN
	1    6650 5000
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA23
U 1 1 5C332A7E
P 6650 5100
F 0 "CA23" H 6750 5150 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 6650 5214 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 6650 5100 50  0001 C CNN
F 3 "~" H 6650 5100 50  0001 C CNN
	1    6650 5100
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA24
U 1 1 5C332A85
P 6650 5200
F 0 "CA24" H 6750 5250 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 6650 5314 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 6650 5200 50  0001 C CNN
F 3 "~" H 6650 5200 50  0001 C CNN
	1    6650 5200
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA25
U 1 1 5C332A8C
P 6650 5300
F 0 "CA25" H 6750 5350 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 6650 5414 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 6650 5300 50  0001 C CNN
F 3 "~" H 6650 5300 50  0001 C CNN
	1    6650 5300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA26
U 1 1 5C332A93
P 6650 5400
F 0 "CA26" H 6750 5450 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 6650 5514 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 6650 5400 50  0001 C CNN
F 3 "~" H 6650 5400 50  0001 C CNN
	1    6650 5400
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA27
U 1 1 5C332A9A
P 6650 5500
F 0 "CA27" H 6750 5550 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 6650 5614 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 6650 5500 50  0001 C CNN
F 3 "~" H 6650 5500 50  0001 C CNN
	1    6650 5500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA28
U 1 1 5C332AA1
P 6650 5600
F 0 "CA28" H 6750 5650 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 6650 5714 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 6650 5600 50  0001 C CNN
F 3 "~" H 6650 5600 50  0001 C CNN
	1    6650 5600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA29
U 1 1 5C332AA8
P 6650 5700
F 0 "CA29" H 6750 5750 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 6650 5814 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 6650 5700 50  0001 C CNN
F 3 "~" H 6650 5700 50  0001 C CNN
	1    6650 5700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA30
U 1 1 5C332AAF
P 6650 5800
F 0 "CA30" H 6750 5850 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 6650 5914 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 6650 5800 50  0001 C CNN
F 3 "~" H 6650 5800 50  0001 C CNN
	1    6650 5800
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA31
U 1 1 5C332AB6
P 6650 5900
F 0 "CA31" H 6750 5950 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 6650 6014 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 6650 5900 50  0001 C CNN
F 3 "~" H 6650 5900 50  0001 C CNN
	1    6650 5900
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CA32
U 1 1 5C332ABD
P 6650 6000
F 0 "CA32" H 6750 6050 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 6650 6114 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 6650 6000 50  0001 C CNN
F 3 "~" H 6650 6000 50  0001 C CNN
	1    6650 6000
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB1
U 1 1 5C33D013
P 4450 4500
F 0 "CB1" H 4550 4550 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 4450 4614 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 4450 4500 50  0001 C CNN
F 3 "~" H 4450 4500 50  0001 C CNN
	1    4450 4500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB2
U 1 1 5C33ED62
P 4450 4600
F 0 "CB2" H 4550 4650 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 4450 4714 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 4450 4600 50  0001 C CNN
F 3 "~" H 4450 4600 50  0001 C CNN
	1    4450 4600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB3
U 1 1 5C33EE43
P 4450 4700
F 0 "CB3" H 4550 4750 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 4450 4814 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 4450 4700 50  0001 C CNN
F 3 "~" H 4450 4700 50  0001 C CNN
	1    4450 4700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB4
U 1 1 5C33EE4A
P 4450 4800
F 0 "CB4" H 4550 4850 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 4450 4914 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 4450 4800 50  0001 C CNN
F 3 "~" H 4450 4800 50  0001 C CNN
	1    4450 4800
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB5
U 1 1 5C33F278
P 4450 4900
F 0 "CB5" H 4550 4950 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 4450 5014 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 4450 4900 50  0001 C CNN
F 3 "~" H 4450 4900 50  0001 C CNN
	1    4450 4900
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB6
U 1 1 5C33F27F
P 4450 5000
F 0 "CB6" H 4550 5050 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 4450 5114 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 4450 5000 50  0001 C CNN
F 3 "~" H 4450 5000 50  0001 C CNN
	1    4450 5000
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB7
U 1 1 5C33F286
P 4450 5100
F 0 "CB7" H 4550 5150 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 4450 5214 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 4450 5100 50  0001 C CNN
F 3 "~" H 4450 5100 50  0001 C CNN
	1    4450 5100
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB8
U 1 1 5C33F28D
P 4450 5200
F 0 "CB8" H 4550 5250 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 4450 5314 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 4450 5200 50  0001 C CNN
F 3 "~" H 4450 5200 50  0001 C CNN
	1    4450 5200
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB9
U 1 1 5C33F990
P 4450 5300
F 0 "CB9" H 4550 5350 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 4450 5414 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 4450 5300 50  0001 C CNN
F 3 "~" H 4450 5300 50  0001 C CNN
	1    4450 5300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB10
U 1 1 5C33F997
P 4450 5400
F 0 "CB10" H 4550 5450 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 4450 5514 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 4450 5400 50  0001 C CNN
F 3 "~" H 4450 5400 50  0001 C CNN
	1    4450 5400
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB11
U 1 1 5C33F99E
P 4450 5500
F 0 "CB11" H 4550 5550 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 4450 5614 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 4450 5500 50  0001 C CNN
F 3 "~" H 4450 5500 50  0001 C CNN
	1    4450 5500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB12
U 1 1 5C33F9A5
P 4450 5600
F 0 "CB12" H 4550 5650 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 4450 5714 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 4450 5600 50  0001 C CNN
F 3 "~" H 4450 5600 50  0001 C CNN
	1    4450 5600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB13
U 1 1 5C33F9AC
P 4450 5700
F 0 "CB13" H 4550 5750 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 4450 5814 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 4450 5700 50  0001 C CNN
F 3 "~" H 4450 5700 50  0001 C CNN
	1    4450 5700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB14
U 1 1 5C33F9B3
P 4450 5800
F 0 "CB14" H 4550 5850 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 4450 5914 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 4450 5800 50  0001 C CNN
F 3 "~" H 4450 5800 50  0001 C CNN
	1    4450 5800
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB15
U 1 1 5C33F9BA
P 4450 5900
F 0 "CB15" H 4550 5950 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 4450 6014 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 4450 5900 50  0001 C CNN
F 3 "~" H 4450 5900 50  0001 C CNN
	1    4450 5900
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB16
U 1 1 5C33F9C1
P 4450 6000
F 0 "CB16" H 4550 6050 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 4450 6114 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 4450 6000 50  0001 C CNN
F 3 "~" H 4450 6000 50  0001 C CNN
	1    4450 6000
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB17
U 1 1 5C33FFBB
P 7450 4500
F 0 "CB17" H 7550 4550 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 7450 4614 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7450 4500 50  0001 C CNN
F 3 "~" H 7450 4500 50  0001 C CNN
	1    7450 4500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB18
U 1 1 5C33FFC2
P 7450 4600
F 0 "CB18" H 7550 4650 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 7450 4714 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7450 4600 50  0001 C CNN
F 3 "~" H 7450 4600 50  0001 C CNN
	1    7450 4600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB19
U 1 1 5C33FFC9
P 7450 4700
F 0 "CB19" H 7550 4750 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 7450 4814 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7450 4700 50  0001 C CNN
F 3 "~" H 7450 4700 50  0001 C CNN
	1    7450 4700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB20
U 1 1 5C33FFD0
P 7450 4800
F 0 "CB20" H 7550 4850 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 7450 4914 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7450 4800 50  0001 C CNN
F 3 "~" H 7450 4800 50  0001 C CNN
	1    7450 4800
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB21
U 1 1 5C33FFD7
P 7450 4900
F 0 "CB21" H 7550 4950 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 7450 5014 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7450 4900 50  0001 C CNN
F 3 "~" H 7450 4900 50  0001 C CNN
	1    7450 4900
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB22
U 1 1 5C33FFDE
P 7450 5000
F 0 "CB22" H 7550 5050 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 7450 5114 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7450 5000 50  0001 C CNN
F 3 "~" H 7450 5000 50  0001 C CNN
	1    7450 5000
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB23
U 1 1 5C33FFE5
P 7450 5100
F 0 "CB23" H 7550 5150 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 7450 5214 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7450 5100 50  0001 C CNN
F 3 "~" H 7450 5100 50  0001 C CNN
	1    7450 5100
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB24
U 1 1 5C33FFEC
P 7450 5200
F 0 "CB24" H 7550 5250 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 7450 5314 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7450 5200 50  0001 C CNN
F 3 "~" H 7450 5200 50  0001 C CNN
	1    7450 5200
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB25
U 1 1 5C33FFF3
P 7450 5300
F 0 "CB25" H 7550 5350 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 7450 5414 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7450 5300 50  0001 C CNN
F 3 "~" H 7450 5300 50  0001 C CNN
	1    7450 5300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB26
U 1 1 5C33FFFA
P 7450 5400
F 0 "CB26" H 7550 5450 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 7450 5514 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7450 5400 50  0001 C CNN
F 3 "~" H 7450 5400 50  0001 C CNN
	1    7450 5400
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB27
U 1 1 5C340001
P 7450 5500
F 0 "CB27" H 7550 5550 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 7450 5614 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7450 5500 50  0001 C CNN
F 3 "~" H 7450 5500 50  0001 C CNN
	1    7450 5500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB28
U 1 1 5C340008
P 7450 5600
F 0 "CB28" H 7550 5650 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 7450 5714 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7450 5600 50  0001 C CNN
F 3 "~" H 7450 5600 50  0001 C CNN
	1    7450 5600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB29
U 1 1 5C34000F
P 7450 5700
F 0 "CB29" H 7550 5750 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 7450 5814 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7450 5700 50  0001 C CNN
F 3 "~" H 7450 5700 50  0001 C CNN
	1    7450 5700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB30
U 1 1 5C340016
P 7450 5800
F 0 "CB30" H 7550 5850 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 7450 5914 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7450 5800 50  0001 C CNN
F 3 "~" H 7450 5800 50  0001 C CNN
	1    7450 5800
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB31
U 1 1 5C34001D
P 7450 5900
F 0 "CB31" H 7550 5950 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 7450 6014 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7450 5900 50  0001 C CNN
F 3 "~" H 7450 5900 50  0001 C CNN
	1    7450 5900
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged CB32
U 1 1 5C340024
P 7450 6000
F 0 "CB32" H 7550 6050 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 7450 6114 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7450 6000 50  0001 C CNN
F 3 "~" H 7450 6000 50  0001 C CNN
	1    7450 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C35AE51
P 3800 6550
AR Path="/5C2D60A3/5C35AE51" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C35AE51" Ref="C79"  Part="1" 
F 0 "C79" H 3850 6650 50  0000 L CNN
F 1 "100nF" H 3800 6450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3838 6400 50  0001 C CNN
F 3 "~" H 3800 6550 50  0001 C CNN
	1    3800 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C35B93B
P 4100 6550
AR Path="/5C2D60A3/5C35B93B" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C35B93B" Ref="C80"  Part="1" 
F 0 "C80" H 4150 6650 50  0000 L CNN
F 1 "100nF" H 4100 6450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4138 6400 50  0001 C CNN
F 3 "~" H 4100 6550 50  0001 C CNN
	1    4100 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C35BA9C
P 4400 6550
AR Path="/5C2D60A3/5C35BA9C" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C35BA9C" Ref="C81"  Part="1" 
F 0 "C81" H 4450 6650 50  0000 L CNN
F 1 "100nF" H 4400 6450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4438 6400 50  0001 C CNN
F 3 "~" H 4400 6550 50  0001 C CNN
	1    4400 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C35BAA3
P 4700 6550
AR Path="/5C2D60A3/5C35BAA3" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C35BAA3" Ref="C82"  Part="1" 
F 0 "C82" H 4750 6650 50  0000 L CNN
F 1 "100nF" H 4700 6450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4738 6400 50  0001 C CNN
F 3 "~" H 4700 6550 50  0001 C CNN
	1    4700 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C35BF99
P 5000 6550
AR Path="/5C2D60A3/5C35BF99" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C35BF99" Ref="C83"  Part="1" 
F 0 "C83" H 5050 6650 50  0000 L CNN
F 1 "100nF" H 5000 6450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5038 6400 50  0001 C CNN
F 3 "~" H 5000 6550 50  0001 C CNN
	1    5000 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C35BFA0
P 5300 6550
AR Path="/5C2D60A3/5C35BFA0" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C35BFA0" Ref="C84"  Part="1" 
F 0 "C84" H 5350 6650 50  0000 L CNN
F 1 "100nF" H 5300 6450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5338 6400 50  0001 C CNN
F 3 "~" H 5300 6550 50  0001 C CNN
	1    5300 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C35BFA7
P 5600 6550
AR Path="/5C2D60A3/5C35BFA7" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C35BFA7" Ref="C85"  Part="1" 
F 0 "C85" H 5650 6650 50  0000 L CNN
F 1 "100nF" H 5600 6450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5638 6400 50  0001 C CNN
F 3 "~" H 5600 6550 50  0001 C CNN
	1    5600 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C35BFAE
P 5900 6550
AR Path="/5C2D60A3/5C35BFAE" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C35BFAE" Ref="C86"  Part="1" 
F 0 "C86" H 5950 6650 50  0000 L CNN
F 1 "100nF" H 5900 6450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5938 6400 50  0001 C CNN
F 3 "~" H 5900 6550 50  0001 C CNN
	1    5900 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C35C650
P 3800 7250
AR Path="/5C2D60A3/5C35C650" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C35C650" Ref="C87"  Part="1" 
F 0 "C87" H 3850 7350 50  0000 L CNN
F 1 "100nF" H 3800 7150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3838 7100 50  0001 C CNN
F 3 "~" H 3800 7250 50  0001 C CNN
	1    3800 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C35C657
P 4100 7250
AR Path="/5C2D60A3/5C35C657" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C35C657" Ref="C88"  Part="1" 
F 0 "C88" H 4150 7350 50  0000 L CNN
F 1 "100nF" H 4100 7150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4138 7100 50  0001 C CNN
F 3 "~" H 4100 7250 50  0001 C CNN
	1    4100 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C35C65E
P 4400 7250
AR Path="/5C2D60A3/5C35C65E" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C35C65E" Ref="C89"  Part="1" 
F 0 "C89" H 4450 7350 50  0000 L CNN
F 1 "100nF" H 4400 7150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4438 7100 50  0001 C CNN
F 3 "~" H 4400 7250 50  0001 C CNN
	1    4400 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C35C665
P 4700 7250
AR Path="/5C2D60A3/5C35C665" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C35C665" Ref="C90"  Part="1" 
F 0 "C90" H 4750 7350 50  0000 L CNN
F 1 "100nF" H 4700 7150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4738 7100 50  0001 C CNN
F 3 "~" H 4700 7250 50  0001 C CNN
	1    4700 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C35C66C
P 5000 7250
AR Path="/5C2D60A3/5C35C66C" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C35C66C" Ref="C91"  Part="1" 
F 0 "C91" H 5050 7350 50  0000 L CNN
F 1 "100nF" H 5000 7150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5038 7100 50  0001 C CNN
F 3 "~" H 5000 7250 50  0001 C CNN
	1    5000 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C35C673
P 5300 7250
AR Path="/5C2D60A3/5C35C673" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C35C673" Ref="C92"  Part="1" 
F 0 "C92" H 5350 7350 50  0000 L CNN
F 1 "100nF" H 5300 7150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5338 7100 50  0001 C CNN
F 3 "~" H 5300 7250 50  0001 C CNN
	1    5300 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C35C67A
P 5600 7250
AR Path="/5C2D60A3/5C35C67A" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C35C67A" Ref="C93"  Part="1" 
F 0 "C93" H 5650 7350 50  0000 L CNN
F 1 "100nF" H 5600 7150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5638 7100 50  0001 C CNN
F 3 "~" H 5600 7250 50  0001 C CNN
	1    5600 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C35C681
P 5900 7250
AR Path="/5C2D60A3/5C35C681" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C35C681" Ref="C94"  Part="1" 
F 0 "C94" H 5950 7350 50  0000 L CNN
F 1 "100nF" H 5900 7150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5938 7100 50  0001 C CNN
F 3 "~" H 5900 7250 50  0001 C CNN
	1    5900 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C35CA2C
P 3700 7500
AR Path="/5C2D60A3/5C35CA2C" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C35CA2C" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 3700 7250 50  0001 C CNN
F 1 "GND" H 3705 7327 50  0000 C CNN
F 2 "" H 3700 7500 50  0001 C CNN
F 3 "" H 3700 7500 50  0001 C CNN
	1    3700 7500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C35CAF5
P 3700 6800
AR Path="/5C2D60A3/5C35CAF5" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C35CAF5" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 3700 6550 50  0001 C CNN
F 1 "GND" H 3705 6627 50  0000 C CNN
F 2 "" H 3700 6800 50  0001 C CNN
F 3 "" H 3700 6800 50  0001 C CNN
	1    3700 6800
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5C35CF7A
P 3700 6300
AR Path="/5C2D60A3/5C35CF7A" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C35CF7A" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 3700 6150 50  0001 C CNN
F 1 "+3V3" V 3700 6550 50  0000 C CNN
F 2 "" H 3700 6300 50  0001 C CNN
F 3 "" H 3700 6300 50  0001 C CNN
	1    3700 6300
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C35D458
P 3700 7000
AR Path="/5C2D60A3/5C35D458" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C35D458" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 3700 6850 50  0001 C CNN
F 1 "+5V" V 3700 7150 50  0000 L CNN
F 2 "" H 3700 7000 50  0001 C CNN
F 3 "" H 3700 7000 50  0001 C CNN
	1    3700 7000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 6300 3800 6300
Wire Wire Line
	5900 6300 5900 6400
Wire Wire Line
	5600 6300 5600 6400
Connection ~ 5600 6300
Wire Wire Line
	5600 6300 5900 6300
Wire Wire Line
	5300 6300 5300 6400
Connection ~ 5300 6300
Wire Wire Line
	5300 6300 5600 6300
Wire Wire Line
	5000 6300 5000 6400
Connection ~ 5000 6300
Wire Wire Line
	5000 6300 5300 6300
Wire Wire Line
	4700 6300 4700 6400
Connection ~ 4700 6300
Wire Wire Line
	4700 6300 5000 6300
Wire Wire Line
	4400 6300 4400 6400
Connection ~ 4400 6300
Wire Wire Line
	4400 6300 4700 6300
Wire Wire Line
	4100 6300 4100 6400
Connection ~ 4100 6300
Wire Wire Line
	4100 6300 4400 6300
Wire Wire Line
	3800 6300 3800 6400
Connection ~ 3800 6300
Wire Wire Line
	3800 6300 4100 6300
Wire Wire Line
	3800 6800 4100 6800
Wire Wire Line
	5900 6800 5900 6700
Wire Wire Line
	3800 6800 3800 6700
Wire Wire Line
	5600 6700 5600 6800
Connection ~ 5600 6800
Wire Wire Line
	5600 6800 5900 6800
Wire Wire Line
	5300 6700 5300 6800
Connection ~ 5300 6800
Wire Wire Line
	5300 6800 5600 6800
Wire Wire Line
	5000 6700 5000 6800
Connection ~ 5000 6800
Wire Wire Line
	5000 6800 5300 6800
Wire Wire Line
	4700 6700 4700 6800
Connection ~ 4700 6800
Wire Wire Line
	4700 6800 5000 6800
Wire Wire Line
	4400 6700 4400 6800
Connection ~ 4400 6800
Wire Wire Line
	4400 6800 4700 6800
Wire Wire Line
	4100 6700 4100 6800
Connection ~ 4100 6800
Wire Wire Line
	4100 6800 4400 6800
Wire Wire Line
	3700 7000 3800 7000
Wire Wire Line
	5900 7000 5900 7100
Wire Wire Line
	5600 7100 5600 7000
Connection ~ 5600 7000
Wire Wire Line
	5600 7000 5900 7000
Wire Wire Line
	5300 7100 5300 7000
Connection ~ 5300 7000
Wire Wire Line
	5300 7000 5600 7000
Wire Wire Line
	5000 7100 5000 7000
Connection ~ 5000 7000
Wire Wire Line
	5000 7000 5300 7000
Wire Wire Line
	4700 7100 4700 7000
Connection ~ 4700 7000
Wire Wire Line
	4700 7000 5000 7000
Wire Wire Line
	4400 7100 4400 7000
Connection ~ 4400 7000
Wire Wire Line
	4400 7000 4700 7000
Wire Wire Line
	4100 7100 4100 7000
Connection ~ 4100 7000
Wire Wire Line
	4100 7000 4400 7000
Wire Wire Line
	3800 7100 3800 7000
Connection ~ 3800 7000
Wire Wire Line
	3800 7000 4100 7000
Wire Wire Line
	3800 7500 4100 7500
Wire Wire Line
	5900 7500 5900 7400
Wire Wire Line
	3800 7500 3800 7400
Wire Wire Line
	5600 7400 5600 7500
Connection ~ 5600 7500
Wire Wire Line
	5600 7500 5900 7500
Wire Wire Line
	5300 7400 5300 7500
Connection ~ 5300 7500
Wire Wire Line
	5300 7500 5600 7500
Wire Wire Line
	5000 7400 5000 7500
Connection ~ 5000 7500
Wire Wire Line
	5000 7500 5300 7500
Wire Wire Line
	4700 7400 4700 7500
Connection ~ 4700 7500
Wire Wire Line
	4700 7500 5000 7500
Wire Wire Line
	4400 7400 4400 7500
Connection ~ 4400 7500
Wire Wire Line
	4400 7500 4700 7500
Wire Wire Line
	4100 7400 4100 7500
Connection ~ 4100 7500
Wire Wire Line
	4100 7500 4400 7500
$Comp
L Device:C C?
U 1 1 5C4735D3
P 2300 6550
AR Path="/5C2D60A3/5C4735D3" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C4735D3" Ref="C57"  Part="1" 
F 0 "C57" H 2350 6650 50  0000 L CNN
F 1 "100nF" H 2300 6450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2338 6400 50  0001 C CNN
F 3 "~" H 2300 6550 50  0001 C CNN
	1    2300 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C4735DA
P 2600 6550
AR Path="/5C2D60A3/5C4735DA" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C4735DA" Ref="C58"  Part="1" 
F 0 "C58" H 2650 6650 50  0000 L CNN
F 1 "100nF" H 2600 6450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2638 6400 50  0001 C CNN
F 3 "~" H 2600 6550 50  0001 C CNN
	1    2600 6550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5C4735E1
P 2700 6300
AR Path="/5C2D60A3/5C4735E1" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C4735E1" Ref="#PWR078"  Part="1" 
F 0 "#PWR078" H 2700 6150 50  0001 C CNN
F 1 "+3V3" V 2700 6550 50  0000 C CNN
F 2 "" H 2700 6300 50  0001 C CNN
F 3 "" H 2700 6300 50  0001 C CNN
	1    2700 6300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C4735E7
P 2300 7300
AR Path="/5C2D60A3/5C4735E7" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C4735E7" Ref="#PWR079"  Part="1" 
F 0 "#PWR079" H 2300 7050 50  0001 C CNN
F 1 "GND" H 2305 7127 50  0000 C CNN
F 2 "" H 2300 7300 50  0001 C CNN
F 3 "" H 2300 7300 50  0001 C CNN
	1    2300 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C4735ED
P 2300 5650
AR Path="/5C2D60A3/5C4735ED" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5C4735ED" Ref="C56"  Part="1" 
F 0 "C56" H 2350 5750 50  0000 L CNN
F 1 "100nF" H 2300 5550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2338 5500 50  0001 C CNN
F 3 "~" H 2300 5650 50  0001 C CNN
	1    2300 5650
	1    0    0    -1  
$EndComp
$Comp
L power:+2V5 #PWR?
U 1 1 5C4735F4
P 2400 5400
AR Path="/5C2D60A3/5C4735F4" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C4735F4" Ref="#PWR076"  Part="1" 
F 0 "#PWR076" H 2400 5250 50  0001 C CNN
F 1 "+2V5" V 2415 5528 50  0000 L CNN
F 2 "" H 2400 5400 50  0001 C CNN
F 3 "" H 2400 5400 50  0001 C CNN
	1    2400 5400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C4735FA
P 2300 6000
AR Path="/5C2D60A3/5C4735FA" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C4735FA" Ref="#PWR077"  Part="1" 
F 0 "#PWR077" H 2300 5750 50  0001 C CNN
F 1 "GND" H 2450 5950 50  0000 C CNN
F 2 "" H 2300 6000 50  0001 C CNN
F 3 "" H 2300 6000 50  0001 C CNN
	1    2300 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 5400 2300 5400
Wire Wire Line
	2300 5500 2300 5400
Connection ~ 2300 5400
Wire Wire Line
	2300 5400 2400 5400
Wire Wire Line
	2300 5800 2300 5900
Wire Wire Line
	2300 5900 2200 5900
Connection ~ 2300 5900
Wire Wire Line
	2300 5900 2300 6000
Wire Wire Line
	2200 6300 2300 6300
Wire Wire Line
	2600 6400 2600 6300
Connection ~ 2600 6300
Wire Wire Line
	2600 6300 2700 6300
Wire Wire Line
	2300 6400 2300 6300
Connection ~ 2300 6300
Wire Wire Line
	2300 6300 2600 6300
Wire Wire Line
	2200 6200 2300 6200
Wire Wire Line
	2300 6200 2300 6300
Wire Wire Line
	2200 7000 2300 7000
Wire Wire Line
	2300 7000 2300 7100
Wire Wire Line
	2200 7100 2300 7100
Connection ~ 2300 7100
Wire Wire Line
	2300 7100 2300 7200
Wire Wire Line
	2200 7200 2300 7200
Connection ~ 2300 7200
Wire Wire Line
	2300 7200 2300 7300
Wire Wire Line
	2300 7000 2300 6800
Connection ~ 2300 7000
Wire Wire Line
	2300 6800 2600 6800
Wire Wire Line
	2600 6800 2600 6700
Connection ~ 2300 6800
Wire Wire Line
	2300 6800 2300 6700
Text GLabel 3500 1200 0    50   Input ~ 0
ZA1
Text GLabel 3500 1400 0    50   Input ~ 0
ZA2
Text GLabel 3500 1600 0    50   Input ~ 0
ZA3
Text GLabel 3500 1800 0    50   Input ~ 0
ZA4
Text GLabel 4800 1200 0    50   Input ~ 0
ZA5
Text GLabel 4800 1400 0    50   Input ~ 0
ZA6
Text GLabel 4800 1600 0    50   Input ~ 0
ZA7
Text GLabel 4800 1800 0    50   Input ~ 0
ZA8
Text GLabel 6100 1200 0    50   Input ~ 0
ZA9
Text GLabel 6100 1400 0    50   Input ~ 0
ZA10
Text GLabel 6100 1600 0    50   Input ~ 0
ZA11
Text GLabel 6100 1800 0    50   Input ~ 0
ZA12
Text GLabel 7400 1200 0    50   Input ~ 0
ZA13
Text GLabel 7400 1400 0    50   Input ~ 0
ZA14
Text GLabel 7400 1600 0    50   Input ~ 0
ZA15
Text GLabel 7400 1800 0    50   Input ~ 0
ZA16
Text GLabel 3500 3000 0    50   Input ~ 0
ZA17
Text GLabel 3500 3200 0    50   Input ~ 0
ZA18
Text GLabel 3500 3400 0    50   Input ~ 0
ZA19
Text GLabel 3500 3600 0    50   Input ~ 0
ZA20
Text GLabel 4800 3000 0    50   Input ~ 0
ZA21
Text GLabel 4800 3200 0    50   Input ~ 0
ZA22
Text GLabel 4800 3400 0    50   Input ~ 0
ZA23
Text GLabel 4800 3600 0    50   Input ~ 0
ZA24
Text GLabel 6100 3000 0    50   Input ~ 0
ZA25
Text GLabel 6100 3200 0    50   Input ~ 0
ZA26
Text GLabel 6100 3400 0    50   Input ~ 0
ZA27
Text GLabel 6100 3600 0    50   Input ~ 0
ZA28
Text GLabel 7400 3000 0    50   Input ~ 0
ZA29
Text GLabel 7400 3200 0    50   Input ~ 0
ZA30
Text GLabel 7400 3400 0    50   Input ~ 0
ZA31
Text GLabel 7400 3600 0    50   Input ~ 0
ZA32
Text GLabel 3500 2900 0    50   Input ~ 0
ZOE
Text GLabel 6100 1100 0    50   Input ~ 0
ZOE
Text GLabel 3500 1300 0    50   Input ~ 0
ZB1
Text GLabel 3500 1500 0    50   Input ~ 0
ZB2
Text GLabel 3500 1700 0    50   Input ~ 0
ZB3
Text GLabel 3500 1900 0    50   Input ~ 0
ZB4
Text GLabel 4800 1300 0    50   Input ~ 0
ZB5
Text GLabel 4800 1500 0    50   Input ~ 0
ZB6
Text GLabel 4800 1700 0    50   Input ~ 0
ZB7
Text GLabel 4800 1900 0    50   Input ~ 0
ZB8
Text GLabel 6100 1300 0    50   Input ~ 0
ZB9
Text GLabel 6100 1500 0    50   Input ~ 0
ZB10
Text GLabel 6100 1700 0    50   Input ~ 0
ZB11
Text GLabel 6100 1900 0    50   Input ~ 0
ZB12
Text GLabel 7400 1300 0    50   Input ~ 0
ZB13
Text GLabel 7400 1500 0    50   Input ~ 0
ZB14
Text GLabel 7400 1700 0    50   Input ~ 0
ZB15
Text GLabel 7400 1900 0    50   Input ~ 0
ZB16
Text GLabel 3500 3100 0    50   Input ~ 0
ZB17
Text GLabel 3500 3300 0    50   Input ~ 0
ZB18
Text GLabel 3500 3500 0    50   Input ~ 0
ZB19
Text GLabel 3500 3700 0    50   Input ~ 0
ZB20
Text GLabel 4800 3100 0    50   Input ~ 0
ZB21
Text GLabel 4800 3300 0    50   Input ~ 0
ZB22
Text GLabel 4800 3500 0    50   Input ~ 0
ZB23
Text GLabel 4800 3700 0    50   Input ~ 0
ZB24
Text GLabel 6100 3100 0    50   Input ~ 0
ZB25
Text GLabel 6100 3300 0    50   Input ~ 0
ZB26
Text GLabel 6100 3500 0    50   Input ~ 0
ZB27
Text GLabel 6100 3700 0    50   Input ~ 0
ZB28
Text GLabel 7400 3100 0    50   Input ~ 0
ZB29
Text GLabel 7400 3300 0    50   Input ~ 0
ZB30
Text GLabel 7400 3500 0    50   Input ~ 0
ZB31
Text GLabel 7400 3700 0    50   Input ~ 0
ZB32
Text GLabel 2200 3400 2    50   Input ~ 0
ZA13
Text GLabel 2200 3000 2    50   Input ~ 0
ZA14
Text GLabel 900  4200 0    50   Input ~ 0
ZA15
Text GLabel 900  3200 0    50   Input ~ 0
ZA16
Text GLabel 900  4600 0    50   Input ~ 0
ZB14
Text GLabel 900  4300 0    50   Input ~ 0
ZB15
Text GLabel 900  4000 0    50   Input ~ 0
ZB16
Text GLabel 900  4400 0    50   Input ~ 0
ZA17
Text GLabel 900  3400 0    50   Input ~ 0
ZA18
Text GLabel 900  3800 0    50   Input ~ 0
ZA19
Text GLabel 900  3500 0    50   Input ~ 0
ZA20
Text GLabel 900  4100 0    50   Input ~ 0
ZB17
Text GLabel 900  4500 0    50   Input ~ 0
ZB18
Text GLabel 900  3600 0    50   Input ~ 0
ZB19
Text GLabel 900  3300 0    50   Input ~ 0
ZB20
Text GLabel 900  4800 0    50   Input ~ 0
ZA21
Text GLabel 900  3000 0    50   Input ~ 0
ZA22
Text GLabel 900  6500 0    50   Input ~ 0
ZA23
Text GLabel 900  3700 0    50   Input ~ 0
ZB21
Text GLabel 900  4700 0    50   Input ~ 0
ZB22
Text GLabel 900  3100 0    50   Input ~ 0
ZA24
Text GLabel 900  5900 0    50   Input ~ 0
ZB23
Text GLabel 900  6300 0    50   Input ~ 0
ZB24
Text GLabel 900  6400 0    50   Input ~ 0
ZA25
Text GLabel 900  5600 0    50   Input ~ 0
ZA26
Text GLabel 900  6200 0    50   Input ~ 0
ZB25
Text GLabel 900  6100 0    50   Input ~ 0
ZB26
Text GLabel 900  6000 0    50   Input ~ 0
ZA27
Text GLabel 900  5700 0    50   Input ~ 0
ZA28
Text GLabel 900  5800 0    50   Input ~ 0
ZB27
Text GLabel 900  5400 0    50   Input ~ 0
ZA29
Text GLabel 900  5500 0    50   Input ~ 0
ZB29
Text GLabel 2200 3100 2    50   Input ~ 0
ZB13
$Comp
L power:GND #PWR?
U 1 1 5C48005F
P 900 7100
AR Path="/5C2D60A3/5C48005F" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C48005F" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 900 6850 50  0001 C CNN
F 1 "GND" V 900 6900 50  0000 C CNN
F 2 "" H 900 7100 50  0001 C CNN
F 3 "" H 900 7100 50  0001 C CNN
	1    900  7100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C480BDE
P 900 7200
AR Path="/5C2D60A3/5C480BDE" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5C480BDE" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 900 6950 50  0001 C CNN
F 1 "GND" V 900 7000 50  0000 C CNN
F 2 "" H 900 7200 50  0001 C CNN
F 3 "" H 900 7200 50  0001 C CNN
	1    900  7200
	0    1    1    0   
$EndComp
$Comp
L UniEmu-rescue:EP4CE6F17-andreil U?
U 8 1 5C421E43
P 1550 3750
AR Path="/5C421E43" Ref="U?"  Part="1" 
AR Path="/5C58FB63/5C421E43" Ref="U4"  Part="8" 
F 0 "U4" H 1550 4725 50  0000 C CNN
F 1 "EP4CE6F17" H 1550 4634 50  0000 C CNN
F 2 "Package_BGA:BGA-256_17.0x17.0mm_Layout16x16_P1.0mm_Ball0.5mm_Pad0.4mm_NSMD" H 1600 2550 50  0001 C CNN
F 3 "" H 2050 3300 50  0001 C CNN
	8    1550 3750
	1    0    0    -1  
$EndComp
$Comp
L UniEmu-rescue:EP4CE6F17-andreil U?
U 7 1 5C429326
P 1550 6150
AR Path="/5C429326" Ref="U?"  Part="1" 
AR Path="/5C58FB63/5C429326" Ref="U4"  Part="7" 
F 0 "U4" H 1550 7125 50  0000 C CNN
F 1 "EP4CE6F17" H 1550 7034 50  0000 C CNN
F 2 "Package_BGA:BGA-256_17.0x17.0mm_Layout16x16_P1.0mm_Ball0.5mm_Pad0.4mm_NSMD" H 1600 4950 50  0001 C CNN
F 3 "" H 2050 5700 50  0001 C CNN
	7    1550 6150
	1    0    0    -1  
$EndComp
Text GLabel 900  3900 0    50   Input ~ 0
ZOE
Text GLabel 4300 1200 2    50   Input ~ 0
OA1
Text GLabel 4300 1300 2    50   Input ~ 0
OB1
Text GLabel 4300 1400 2    50   Input ~ 0
OA2
Text GLabel 4300 1500 2    50   Input ~ 0
OB2
Text GLabel 4300 1600 2    50   Input ~ 0
OA3
Text GLabel 4300 1700 2    50   Input ~ 0
OB3
Text GLabel 4300 1800 2    50   Input ~ 0
OA4
Text GLabel 4300 1900 2    50   Input ~ 0
OB4
Text GLabel 3500 4500 0    50   Input ~ 0
OA1
Text GLabel 4300 4500 0    50   Input ~ 0
OB1
Text GLabel 3500 4600 0    50   Input ~ 0
OA2
Text GLabel 4300 4600 0    50   Input ~ 0
OB2
Text GLabel 3500 4700 0    50   Input ~ 0
OA3
Text GLabel 4300 4700 0    50   Input ~ 0
OB3
Text GLabel 3500 4800 0    50   Input ~ 0
OA4
Text GLabel 4300 4800 0    50   Input ~ 0
OB4
Text GLabel 6900 1200 2    50   Input ~ 0
OA9
Text GLabel 6900 1300 2    50   Input ~ 0
OB9
Text GLabel 6900 1400 2    50   Input ~ 0
OA10
Text GLabel 6900 1500 2    50   Input ~ 0
OB10
Text GLabel 6900 1600 2    50   Input ~ 0
OA11
Text GLabel 6900 1700 2    50   Input ~ 0
OB11
Text GLabel 6900 1800 2    50   Input ~ 0
OA12
Text GLabel 6900 1900 2    50   Input ~ 0
OB12
Text GLabel 4300 3000 2    50   Input ~ 0
OA17
Text GLabel 4300 3100 2    50   Input ~ 0
OB17
Text GLabel 4300 3200 2    50   Input ~ 0
OA18
Text GLabel 4300 3300 2    50   Input ~ 0
OB18
Text GLabel 4300 3400 2    50   Input ~ 0
OA19
Text GLabel 4300 3500 2    50   Input ~ 0
OB19
Text GLabel 4300 3600 2    50   Input ~ 0
OA20
Text GLabel 4300 3700 2    50   Input ~ 0
OB20
Text GLabel 6900 3000 2    50   Input ~ 0
OA25
Text GLabel 6900 3100 2    50   Input ~ 0
OB25
Text GLabel 6900 3200 2    50   Input ~ 0
OA26
Text GLabel 6900 3300 2    50   Input ~ 0
OB26
Text GLabel 6900 3400 2    50   Input ~ 0
OA27
Text GLabel 6900 3500 2    50   Input ~ 0
OB27
Text GLabel 6900 3600 2    50   Input ~ 0
OA28
Text GLabel 6900 3700 2    50   Input ~ 0
OB28
$Comp
L Jumper:SolderJumper_2_Open OA1
U 1 1 5CC74FA2
P 9050 1000
F 0 "OA1" H 9150 1050 50  0000 C CNN
F 1 "OA1" H 9050 1114 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 1000 50  0001 C CNN
F 3 "~" H 9050 1000 50  0001 C CNN
	1    9050 1000
	1    0    0    -1  
$EndComp
Text GLabel 9200 1000 2    50   Input ~ 0
OA1
Text GLabel 8900 1000 0    50   Input ~ 0
ZA1
$Comp
L Jumper:SolderJumper_2_Open OB1
U 1 1 5CC772A3
P 9850 1000
F 0 "OB1" H 9950 1050 50  0000 C CNN
F 1 "OA1" H 9850 1114 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 1000 50  0001 C CNN
F 3 "~" H 9850 1000 50  0001 C CNN
	1    9850 1000
	1    0    0    -1  
$EndComp
Text GLabel 10000 1000 2    50   Input ~ 0
OB1
Text GLabel 9700 1000 0    50   Input ~ 0
ZB1
$Comp
L Jumper:SolderJumper_2_Open OA2
U 1 1 5CC7C7F6
P 9050 1100
F 0 "OA2" H 9150 1150 50  0000 C CNN
F 1 "OA1" H 9050 1214 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 1100 50  0001 C CNN
F 3 "~" H 9050 1100 50  0001 C CNN
	1    9050 1100
	1    0    0    -1  
$EndComp
Text GLabel 9200 1100 2    50   Input ~ 0
OA2
Text GLabel 8900 1100 0    50   Input ~ 0
ZA2
$Comp
L Jumper:SolderJumper_2_Open OB2
U 1 1 5CC7C7FF
P 9850 1100
F 0 "OB2" H 9950 1150 50  0000 C CNN
F 1 "OA1" H 9850 1214 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 1100 50  0001 C CNN
F 3 "~" H 9850 1100 50  0001 C CNN
	1    9850 1100
	1    0    0    -1  
$EndComp
Text GLabel 10000 1100 2    50   Input ~ 0
OB2
Text GLabel 9700 1100 0    50   Input ~ 0
ZB2
$Comp
L Jumper:SolderJumper_2_Open OA3
U 1 1 5CC81D9C
P 9050 1200
F 0 "OA3" H 9150 1250 50  0000 C CNN
F 1 "OA1" H 9050 1314 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 1200 50  0001 C CNN
F 3 "~" H 9050 1200 50  0001 C CNN
	1    9050 1200
	1    0    0    -1  
$EndComp
Text GLabel 9200 1200 2    50   Input ~ 0
OA3
Text GLabel 8900 1200 0    50   Input ~ 0
ZA3
$Comp
L Jumper:SolderJumper_2_Open OB3
U 1 1 5CC81DA5
P 9850 1200
F 0 "OB3" H 9950 1250 50  0000 C CNN
F 1 "OA1" H 9850 1314 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 1200 50  0001 C CNN
F 3 "~" H 9850 1200 50  0001 C CNN
	1    9850 1200
	1    0    0    -1  
$EndComp
Text GLabel 10000 1200 2    50   Input ~ 0
OB3
Text GLabel 9700 1200 0    50   Input ~ 0
ZB3
$Comp
L Jumper:SolderJumper_2_Open OA4
U 1 1 5CC81DAE
P 9050 1300
F 0 "OA4" H 9150 1350 50  0000 C CNN
F 1 "OA1" H 9050 1414 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 1300 50  0001 C CNN
F 3 "~" H 9050 1300 50  0001 C CNN
	1    9050 1300
	1    0    0    -1  
$EndComp
Text GLabel 9200 1300 2    50   Input ~ 0
OA4
Text GLabel 8900 1300 0    50   Input ~ 0
ZA4
$Comp
L Jumper:SolderJumper_2_Open OB4
U 1 1 5CC81DB7
P 9850 1300
F 0 "OB4" H 9950 1350 50  0000 C CNN
F 1 "OA1" H 9850 1414 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 1300 50  0001 C CNN
F 3 "~" H 9850 1300 50  0001 C CNN
	1    9850 1300
	1    0    0    -1  
$EndComp
Text GLabel 10000 1300 2    50   Input ~ 0
OB4
Text GLabel 9700 1300 0    50   Input ~ 0
ZB4
Text GLabel 5600 1200 2    50   Input ~ 0
OA5
Text GLabel 5600 1300 2    50   Input ~ 0
OB5
Text GLabel 5600 1400 2    50   Input ~ 0
OA6
Text GLabel 5600 1500 2    50   Input ~ 0
OB6
Text GLabel 5600 1600 2    50   Input ~ 0
OA7
Text GLabel 5600 1700 2    50   Input ~ 0
OB7
Text GLabel 5600 1800 2    50   Input ~ 0
OA8
Text GLabel 5600 1900 2    50   Input ~ 0
OB8
Text GLabel 3500 4900 0    50   Input ~ 0
OA5
Text GLabel 4300 4900 0    50   Input ~ 0
OB5
Text GLabel 3500 5000 0    50   Input ~ 0
OA6
Text GLabel 4300 5000 0    50   Input ~ 0
OB6
Text GLabel 3500 5100 0    50   Input ~ 0
OA7
Text GLabel 4300 5100 0    50   Input ~ 0
OB7
Text GLabel 3500 5200 0    50   Input ~ 0
OA8
Text GLabel 4300 5200 0    50   Input ~ 0
OB8
$Comp
L Jumper:SolderJumper_2_Open OA5
U 1 1 5CCC0320
P 9050 1400
F 0 "OA5" H 9150 1450 50  0000 C CNN
F 1 "OA1" H 9050 1514 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 1400 50  0001 C CNN
F 3 "~" H 9050 1400 50  0001 C CNN
	1    9050 1400
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB5
U 1 1 5CCC0327
P 9850 1400
F 0 "OB5" H 9950 1450 50  0000 C CNN
F 1 "OA1" H 9850 1514 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 1400 50  0001 C CNN
F 3 "~" H 9850 1400 50  0001 C CNN
	1    9850 1400
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OA6
U 1 1 5CCC032E
P 9050 1500
F 0 "OA6" H 9150 1550 50  0000 C CNN
F 1 "OA1" H 9050 1614 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 1500 50  0001 C CNN
F 3 "~" H 9050 1500 50  0001 C CNN
	1    9050 1500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB6
U 1 1 5CCC0335
P 9850 1500
F 0 "OB6" H 9950 1550 50  0000 C CNN
F 1 "OA1" H 9850 1614 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 1500 50  0001 C CNN
F 3 "~" H 9850 1500 50  0001 C CNN
	1    9850 1500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OA7
U 1 1 5CCC033C
P 9050 1600
F 0 "OA7" H 9150 1650 50  0000 C CNN
F 1 "OA1" H 9050 1714 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 1600 50  0001 C CNN
F 3 "~" H 9050 1600 50  0001 C CNN
	1    9050 1600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB7
U 1 1 5CCC0343
P 9850 1600
F 0 "OB7" H 9950 1650 50  0000 C CNN
F 1 "OA1" H 9850 1714 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 1600 50  0001 C CNN
F 3 "~" H 9850 1600 50  0001 C CNN
	1    9850 1600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OA8
U 1 1 5CCC034A
P 9050 1700
F 0 "OA8" H 9150 1750 50  0000 C CNN
F 1 "OA1" H 9050 1814 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 1700 50  0001 C CNN
F 3 "~" H 9050 1700 50  0001 C CNN
	1    9050 1700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB8
U 1 1 5CCC0351
P 9850 1700
F 0 "OB8" H 9950 1750 50  0000 C CNN
F 1 "OA1" H 9850 1814 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 1700 50  0001 C CNN
F 3 "~" H 9850 1700 50  0001 C CNN
	1    9850 1700
	1    0    0    -1  
$EndComp
Text GLabel 8900 1400 0    50   Input ~ 0
ZA5
Text GLabel 8900 1500 0    50   Input ~ 0
ZA6
Text GLabel 8900 1600 0    50   Input ~ 0
ZA7
Text GLabel 8900 1700 0    50   Input ~ 0
ZA8
Text GLabel 9700 1400 0    50   Input ~ 0
ZB5
Text GLabel 9700 1500 0    50   Input ~ 0
ZB6
Text GLabel 9700 1600 0    50   Input ~ 0
ZB7
Text GLabel 9700 1700 0    50   Input ~ 0
ZB8
Text GLabel 9200 1400 2    50   Input ~ 0
OA5
Text GLabel 10000 1400 2    50   Input ~ 0
OB5
Text GLabel 9200 1500 2    50   Input ~ 0
OA6
Text GLabel 10000 1500 2    50   Input ~ 0
OB6
Text GLabel 9200 1600 2    50   Input ~ 0
OA7
Text GLabel 10000 1600 2    50   Input ~ 0
OB7
Text GLabel 9200 1700 2    50   Input ~ 0
OA8
Text GLabel 10000 1700 2    50   Input ~ 0
OB8
Text GLabel 3500 5300 0    50   Input ~ 0
OA9
Text GLabel 4300 5300 0    50   Input ~ 0
OB9
Text GLabel 3500 5400 0    50   Input ~ 0
OA10
Text GLabel 4300 5400 0    50   Input ~ 0
OB10
Text GLabel 3500 5500 0    50   Input ~ 0
OA11
Text GLabel 4300 5500 0    50   Input ~ 0
OB11
Text GLabel 3500 5600 0    50   Input ~ 0
OA12
Text GLabel 4300 5600 0    50   Input ~ 0
OB12
$Comp
L Jumper:SolderJumper_2_Open OA9
U 1 1 5CCE931C
P 9050 1800
F 0 "OA9" H 9150 1850 50  0000 C CNN
F 1 "OA1" H 9050 1914 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 1800 50  0001 C CNN
F 3 "~" H 9050 1800 50  0001 C CNN
	1    9050 1800
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB9
U 1 1 5CCE9323
P 9850 1800
F 0 "OB9" H 9950 1850 50  0000 C CNN
F 1 "OA1" H 9850 1914 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 1800 50  0001 C CNN
F 3 "~" H 9850 1800 50  0001 C CNN
	1    9850 1800
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OA10
U 1 1 5CCE932A
P 9050 1900
F 0 "OA10" H 9150 1950 50  0000 C CNN
F 1 "OA1" H 9050 2014 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 1900 50  0001 C CNN
F 3 "~" H 9050 1900 50  0001 C CNN
	1    9050 1900
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB10
U 1 1 5CCE9331
P 9850 1900
F 0 "OB10" H 9950 1950 50  0000 C CNN
F 1 "OA1" H 9850 2014 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 1900 50  0001 C CNN
F 3 "~" H 9850 1900 50  0001 C CNN
	1    9850 1900
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OA11
U 1 1 5CCE9338
P 9050 2000
F 0 "OA11" H 9150 2050 50  0000 C CNN
F 1 "OA1" H 9050 2114 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 2000 50  0001 C CNN
F 3 "~" H 9050 2000 50  0001 C CNN
	1    9050 2000
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB11
U 1 1 5CCE933F
P 9850 2000
F 0 "OB11" H 9950 2050 50  0000 C CNN
F 1 "OA1" H 9850 2114 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 2000 50  0001 C CNN
F 3 "~" H 9850 2000 50  0001 C CNN
	1    9850 2000
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OA12
U 1 1 5CCE9346
P 9050 2100
F 0 "OA12" H 9150 2150 50  0000 C CNN
F 1 "OA1" H 9050 2214 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 2100 50  0001 C CNN
F 3 "~" H 9050 2100 50  0001 C CNN
	1    9050 2100
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB12
U 1 1 5CCE934D
P 9850 2100
F 0 "OB12" H 9950 2150 50  0000 C CNN
F 1 "OA1" H 9850 2214 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 2100 50  0001 C CNN
F 3 "~" H 9850 2100 50  0001 C CNN
	1    9850 2100
	1    0    0    -1  
$EndComp
Text GLabel 8900 1800 0    50   Input ~ 0
ZA9
Text GLabel 8900 1900 0    50   Input ~ 0
ZA10
Text GLabel 8900 2000 0    50   Input ~ 0
ZA11
Text GLabel 8900 2100 0    50   Input ~ 0
ZA12
Text GLabel 9700 1800 0    50   Input ~ 0
ZB9
Text GLabel 9700 1900 0    50   Input ~ 0
ZB10
Text GLabel 9700 2000 0    50   Input ~ 0
ZB11
Text GLabel 9700 2100 0    50   Input ~ 0
ZB12
Text GLabel 9200 1800 2    50   Input ~ 0
OA9
Text GLabel 10000 1800 2    50   Input ~ 0
OB9
Text GLabel 9200 1900 2    50   Input ~ 0
OA10
Text GLabel 10000 1900 2    50   Input ~ 0
OB10
Text GLabel 9200 2000 2    50   Input ~ 0
OA11
Text GLabel 10000 2000 2    50   Input ~ 0
OB11
Text GLabel 9200 2100 2    50   Input ~ 0
OA12
Text GLabel 10000 2100 2    50   Input ~ 0
OB12
Text GLabel 8200 1200 2    50   Input ~ 0
OA13
Text GLabel 8200 1300 2    50   Input ~ 0
OB13
Text GLabel 8200 1400 2    50   Input ~ 0
OA14
Text GLabel 8200 1500 2    50   Input ~ 0
OB14
Text GLabel 8200 1600 2    50   Input ~ 0
OA15
Text GLabel 8200 1700 2    50   Input ~ 0
OB15
Text GLabel 8200 1800 2    50   Input ~ 0
OA16
Text GLabel 8200 1900 2    50   Input ~ 0
OB16
Text GLabel 5600 3000 2    50   Input ~ 0
OA21
Text GLabel 5600 3100 2    50   Input ~ 0
OB21
Text GLabel 5600 3200 2    50   Input ~ 0
OA22
Text GLabel 5600 3300 2    50   Input ~ 0
OB22
Text GLabel 5600 3400 2    50   Input ~ 0
OA23
Text GLabel 5600 3500 2    50   Input ~ 0
OB23
Text GLabel 5600 3600 2    50   Input ~ 0
OA24
Text GLabel 5600 3700 2    50   Input ~ 0
OB24
Text GLabel 8200 3000 2    50   Input ~ 0
OA29
Text GLabel 8200 3100 2    50   Input ~ 0
OB29
Text GLabel 8200 3200 2    50   Input ~ 0
OA30
Text GLabel 8200 3300 2    50   Input ~ 0
OB30
Text GLabel 8200 3400 2    50   Input ~ 0
OA31
Text GLabel 8200 3500 2    50   Input ~ 0
OB31
Text GLabel 8200 3600 2    50   Input ~ 0
OA32
Text GLabel 8200 3700 2    50   Input ~ 0
OB32
Text GLabel 3500 5700 0    50   Input ~ 0
OA13
Text GLabel 3500 5800 0    50   Input ~ 0
OA14
Text GLabel 3500 5900 0    50   Input ~ 0
OA15
Text GLabel 3500 6000 0    50   Input ~ 0
OA16
Text GLabel 6500 4500 0    50   Input ~ 0
OA17
Text GLabel 6500 4600 0    50   Input ~ 0
OA18
Text GLabel 6500 4700 0    50   Input ~ 0
OA19
Text GLabel 6500 4800 0    50   Input ~ 0
OA20
Text GLabel 4300 5700 0    50   Input ~ 0
OB13
Text GLabel 4300 5800 0    50   Input ~ 0
OB14
Text GLabel 4300 5900 0    50   Input ~ 0
OB15
Text GLabel 4300 6000 0    50   Input ~ 0
OB16
Text GLabel 7300 4500 0    50   Input ~ 0
OB17
Text GLabel 7300 4600 0    50   Input ~ 0
OB18
Text GLabel 7300 4700 0    50   Input ~ 0
OB19
Text GLabel 7300 4800 0    50   Input ~ 0
OB20
Text GLabel 6500 4900 0    50   Input ~ 0
OA21
Text GLabel 6500 5000 0    50   Input ~ 0
OA22
Text GLabel 6500 5100 0    50   Input ~ 0
OA23
Text GLabel 6500 5200 0    50   Input ~ 0
OA24
Text GLabel 6500 5300 0    50   Input ~ 0
OA25
Text GLabel 6500 5400 0    50   Input ~ 0
OA26
Text GLabel 6500 5500 0    50   Input ~ 0
OA27
Text GLabel 6500 5600 0    50   Input ~ 0
OA28
Text GLabel 6500 5700 0    50   Input ~ 0
OA29
Text GLabel 6500 5800 0    50   Input ~ 0
OA30
Text GLabel 6500 5900 0    50   Input ~ 0
OA31
Text GLabel 6500 6000 0    50   Input ~ 0
OA32
Text GLabel 7300 4900 0    50   Input ~ 0
OB21
Text GLabel 7300 5000 0    50   Input ~ 0
OB22
Text GLabel 7300 5100 0    50   Input ~ 0
OB23
Text GLabel 7300 5200 0    50   Input ~ 0
OB24
Text GLabel 7300 5300 0    50   Input ~ 0
OB25
Text GLabel 7300 5400 0    50   Input ~ 0
OB26
Text GLabel 7300 5500 0    50   Input ~ 0
OB27
Text GLabel 7300 5600 0    50   Input ~ 0
OB28
Text GLabel 7300 5700 0    50   Input ~ 0
OB29
Text GLabel 7300 5800 0    50   Input ~ 0
OB30
Text GLabel 7300 5900 0    50   Input ~ 0
OB31
Text GLabel 7300 6000 0    50   Input ~ 0
OB32
$Comp
L Jumper:SolderJumper_2_Open OA13
U 1 1 5D03FD7B
P 9050 2200
F 0 "OA13" H 9150 2250 50  0000 C CNN
F 1 "OA1" H 9050 2314 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 2200 50  0001 C CNN
F 3 "~" H 9050 2200 50  0001 C CNN
	1    9050 2200
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB13
U 1 1 5D03FD82
P 9850 2200
F 0 "OB13" H 9950 2250 50  0000 C CNN
F 1 "OA1" H 9850 2314 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 2200 50  0001 C CNN
F 3 "~" H 9850 2200 50  0001 C CNN
	1    9850 2200
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OA14
U 1 1 5D03FD89
P 9050 2300
F 0 "OA14" H 9150 2350 50  0000 C CNN
F 1 "OA1" H 9050 2414 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 2300 50  0001 C CNN
F 3 "~" H 9050 2300 50  0001 C CNN
	1    9050 2300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB14
U 1 1 5D03FD90
P 9850 2300
F 0 "OB14" H 9950 2350 50  0000 C CNN
F 1 "OA1" H 9850 2414 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 2300 50  0001 C CNN
F 3 "~" H 9850 2300 50  0001 C CNN
	1    9850 2300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OA15
U 1 1 5D03FD97
P 9050 2400
F 0 "OA15" H 9150 2450 50  0000 C CNN
F 1 "OA1" H 9050 2514 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 2400 50  0001 C CNN
F 3 "~" H 9050 2400 50  0001 C CNN
	1    9050 2400
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB15
U 1 1 5D03FD9E
P 9850 2400
F 0 "OB15" H 9950 2450 50  0000 C CNN
F 1 "OA1" H 9850 2514 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 2400 50  0001 C CNN
F 3 "~" H 9850 2400 50  0001 C CNN
	1    9850 2400
	1    0    0    -1  
$EndComp
Text GLabel 8900 2200 0    50   Input ~ 0
ZA13
Text GLabel 8900 2300 0    50   Input ~ 0
ZA14
Text GLabel 8900 2400 0    50   Input ~ 0
ZA15
Text GLabel 9700 2200 0    50   Input ~ 0
ZB13
Text GLabel 9700 2300 0    50   Input ~ 0
ZB14
Text GLabel 9700 2400 0    50   Input ~ 0
ZB15
Text GLabel 9200 2200 2    50   Input ~ 0
OA13
Text GLabel 10000 2200 2    50   Input ~ 0
OB13
Text GLabel 9200 2300 2    50   Input ~ 0
OA14
Text GLabel 10000 2300 2    50   Input ~ 0
OB14
Text GLabel 9200 2400 2    50   Input ~ 0
OA15
Text GLabel 10000 2400 2    50   Input ~ 0
OB15
$Comp
L Jumper:SolderJumper_2_Open OA16
U 1 1 5D0452DD
P 9050 2500
F 0 "OA16" H 9150 2550 50  0000 C CNN
F 1 "OA1" H 9050 2614 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 2500 50  0001 C CNN
F 3 "~" H 9050 2500 50  0001 C CNN
	1    9050 2500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB16
U 1 1 5D0452E4
P 9850 2500
F 0 "OB16" H 9950 2550 50  0000 C CNN
F 1 "OA1" H 9850 2614 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 2500 50  0001 C CNN
F 3 "~" H 9850 2500 50  0001 C CNN
	1    9850 2500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OA17
U 1 1 5D0452EB
P 9050 2600
F 0 "OA17" H 9150 2650 50  0000 C CNN
F 1 "OA1" H 9050 2714 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 2600 50  0001 C CNN
F 3 "~" H 9050 2600 50  0001 C CNN
	1    9050 2600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB17
U 1 1 5D0452F2
P 9850 2600
F 0 "OB17" H 9950 2650 50  0000 C CNN
F 1 "OA1" H 9850 2714 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 2600 50  0001 C CNN
F 3 "~" H 9850 2600 50  0001 C CNN
	1    9850 2600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OA18
U 1 1 5D0452F9
P 9050 2700
F 0 "OA18" H 9150 2750 50  0000 C CNN
F 1 "OA1" H 9050 2814 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 2700 50  0001 C CNN
F 3 "~" H 9050 2700 50  0001 C CNN
	1    9050 2700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB18
U 1 1 5D045300
P 9850 2700
F 0 "OB18" H 9950 2750 50  0000 C CNN
F 1 "OA1" H 9850 2814 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 2700 50  0001 C CNN
F 3 "~" H 9850 2700 50  0001 C CNN
	1    9850 2700
	1    0    0    -1  
$EndComp
Text GLabel 8900 2500 0    50   Input ~ 0
ZA16
Text GLabel 8900 2600 0    50   Input ~ 0
ZA17
Text GLabel 8900 2700 0    50   Input ~ 0
ZA18
Text GLabel 9700 2500 0    50   Input ~ 0
ZB16
Text GLabel 9700 2600 0    50   Input ~ 0
ZB17
Text GLabel 9700 2700 0    50   Input ~ 0
ZB18
Text GLabel 9200 2500 2    50   Input ~ 0
OA16
Text GLabel 10000 2500 2    50   Input ~ 0
OB16
Text GLabel 9200 2600 2    50   Input ~ 0
OA17
Text GLabel 10000 2600 2    50   Input ~ 0
OB17
Text GLabel 9200 2700 2    50   Input ~ 0
OA18
Text GLabel 10000 2700 2    50   Input ~ 0
OB18
$Comp
L Jumper:SolderJumper_2_Open OA19
U 1 1 5D051F81
P 9050 2800
F 0 "OA19" H 9150 2850 50  0000 C CNN
F 1 "OA1" H 9050 2914 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 2800 50  0001 C CNN
F 3 "~" H 9050 2800 50  0001 C CNN
	1    9050 2800
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB19
U 1 1 5D051F88
P 9850 2800
F 0 "OB19" H 9950 2850 50  0000 C CNN
F 1 "OA1" H 9850 2914 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 2800 50  0001 C CNN
F 3 "~" H 9850 2800 50  0001 C CNN
	1    9850 2800
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OA20
U 1 1 5D051F8F
P 9050 2900
F 0 "OA20" H 9150 2950 50  0000 C CNN
F 1 "OA1" H 9050 3014 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 2900 50  0001 C CNN
F 3 "~" H 9050 2900 50  0001 C CNN
	1    9050 2900
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB20
U 1 1 5D051F96
P 9850 2900
F 0 "OB20" H 9950 2950 50  0000 C CNN
F 1 "OA1" H 9850 3014 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 2900 50  0001 C CNN
F 3 "~" H 9850 2900 50  0001 C CNN
	1    9850 2900
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OA21
U 1 1 5D051F9D
P 9050 3000
F 0 "OA21" H 9150 3050 50  0000 C CNN
F 1 "OA1" H 9050 3114 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 3000 50  0001 C CNN
F 3 "~" H 9050 3000 50  0001 C CNN
	1    9050 3000
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB21
U 1 1 5D051FA4
P 9850 3000
F 0 "OB21" H 9950 3050 50  0000 C CNN
F 1 "OA1" H 9850 3114 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 3000 50  0001 C CNN
F 3 "~" H 9850 3000 50  0001 C CNN
	1    9850 3000
	1    0    0    -1  
$EndComp
Text GLabel 8900 2800 0    50   Input ~ 0
ZA19
Text GLabel 8900 2900 0    50   Input ~ 0
ZA20
Text GLabel 8900 3000 0    50   Input ~ 0
ZA21
Text GLabel 9700 2800 0    50   Input ~ 0
ZB19
Text GLabel 9700 2900 0    50   Input ~ 0
ZB20
Text GLabel 9700 3000 0    50   Input ~ 0
ZB21
Text GLabel 9200 2800 2    50   Input ~ 0
OA19
Text GLabel 10000 2800 2    50   Input ~ 0
OB19
Text GLabel 9200 2900 2    50   Input ~ 0
OA20
Text GLabel 10000 2900 2    50   Input ~ 0
OB20
Text GLabel 9200 3000 2    50   Input ~ 0
OA21
Text GLabel 10000 3000 2    50   Input ~ 0
OB21
$Comp
L Jumper:SolderJumper_2_Open OA22
U 1 1 5D05BA4B
P 9050 3100
F 0 "OA22" H 9150 3150 50  0000 C CNN
F 1 "OA1" H 9050 3214 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 3100 50  0001 C CNN
F 3 "~" H 9050 3100 50  0001 C CNN
	1    9050 3100
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB22
U 1 1 5D05BA52
P 9850 3100
F 0 "OB22" H 9950 3150 50  0000 C CNN
F 1 "OA1" H 9850 3214 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 3100 50  0001 C CNN
F 3 "~" H 9850 3100 50  0001 C CNN
	1    9850 3100
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OA23
U 1 1 5D05BA59
P 9050 3200
F 0 "OA23" H 9150 3250 50  0000 C CNN
F 1 "OA1" H 9050 3314 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 3200 50  0001 C CNN
F 3 "~" H 9050 3200 50  0001 C CNN
	1    9050 3200
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB23
U 1 1 5D05BA60
P 9850 3200
F 0 "OB23" H 9950 3250 50  0000 C CNN
F 1 "OA1" H 9850 3314 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 3200 50  0001 C CNN
F 3 "~" H 9850 3200 50  0001 C CNN
	1    9850 3200
	1    0    0    -1  
$EndComp
Text GLabel 8900 3100 0    50   Input ~ 0
ZA22
Text GLabel 8900 3200 0    50   Input ~ 0
ZA23
Text GLabel 9700 3100 0    50   Input ~ 0
ZB22
Text GLabel 9700 3200 0    50   Input ~ 0
ZB23
Text GLabel 9200 3100 2    50   Input ~ 0
OA22
Text GLabel 10000 3100 2    50   Input ~ 0
OB22
Text GLabel 9200 3200 2    50   Input ~ 0
OA23
Text GLabel 10000 3200 2    50   Input ~ 0
OB23
$Comp
L Jumper:SolderJumper_2_Open OA24
U 1 1 5D0610D3
P 9050 3300
F 0 "OA24" H 9150 3350 50  0000 C CNN
F 1 "OA1" H 9050 3414 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 3300 50  0001 C CNN
F 3 "~" H 9050 3300 50  0001 C CNN
	1    9050 3300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB24
U 1 1 5D0610DA
P 9850 3300
F 0 "OB24" H 9950 3350 50  0000 C CNN
F 1 "OA1" H 9850 3414 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 3300 50  0001 C CNN
F 3 "~" H 9850 3300 50  0001 C CNN
	1    9850 3300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OA25
U 1 1 5D0610E1
P 9050 3400
F 0 "OA25" H 9150 3450 50  0000 C CNN
F 1 "OA1" H 9050 3514 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 3400 50  0001 C CNN
F 3 "~" H 9050 3400 50  0001 C CNN
	1    9050 3400
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB25
U 1 1 5D0610E8
P 9850 3400
F 0 "OB25" H 9950 3450 50  0000 C CNN
F 1 "OA1" H 9850 3514 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 3400 50  0001 C CNN
F 3 "~" H 9850 3400 50  0001 C CNN
	1    9850 3400
	1    0    0    -1  
$EndComp
Text GLabel 8900 3300 0    50   Input ~ 0
ZA24
Text GLabel 8900 3400 0    50   Input ~ 0
ZA25
Text GLabel 9700 3300 0    50   Input ~ 0
ZB24
Text GLabel 9700 3400 0    50   Input ~ 0
ZB25
Text GLabel 9200 3300 2    50   Input ~ 0
OA24
Text GLabel 10000 3300 2    50   Input ~ 0
OB24
Text GLabel 9200 3400 2    50   Input ~ 0
OA25
Text GLabel 10000 3400 2    50   Input ~ 0
OB25
$Comp
L Jumper:SolderJumper_2_Open OA26
U 1 1 5D0610F7
P 9050 3500
F 0 "OA26" H 9150 3550 50  0000 C CNN
F 1 "OA1" H 9050 3614 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 3500 50  0001 C CNN
F 3 "~" H 9050 3500 50  0001 C CNN
	1    9050 3500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB26
U 1 1 5D0610FE
P 9850 3500
F 0 "OB26" H 9950 3550 50  0000 C CNN
F 1 "OA1" H 9850 3614 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 3500 50  0001 C CNN
F 3 "~" H 9850 3500 50  0001 C CNN
	1    9850 3500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OA27
U 1 1 5D061105
P 9050 3600
F 0 "OA27" H 9150 3650 50  0000 C CNN
F 1 "OA1" H 9050 3714 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 3600 50  0001 C CNN
F 3 "~" H 9050 3600 50  0001 C CNN
	1    9050 3600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB27
U 1 1 5D06110C
P 9850 3600
F 0 "OB27" H 9950 3650 50  0000 C CNN
F 1 "OA1" H 9850 3714 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 3600 50  0001 C CNN
F 3 "~" H 9850 3600 50  0001 C CNN
	1    9850 3600
	1    0    0    -1  
$EndComp
Text GLabel 8900 3500 0    50   Input ~ 0
ZA26
Text GLabel 8900 3600 0    50   Input ~ 0
ZA27
Text GLabel 9700 3500 0    50   Input ~ 0
ZB26
Text GLabel 9700 3600 0    50   Input ~ 0
ZB27
Text GLabel 9200 3500 2    50   Input ~ 0
OA26
Text GLabel 10000 3500 2    50   Input ~ 0
OB26
Text GLabel 9200 3600 2    50   Input ~ 0
OA27
Text GLabel 10000 3600 2    50   Input ~ 0
OB27
$Comp
L Jumper:SolderJumper_2_Open OA28
U 1 1 5D066827
P 9050 3700
F 0 "OA28" H 9150 3750 50  0000 C CNN
F 1 "OA1" H 9050 3814 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 3700 50  0001 C CNN
F 3 "~" H 9050 3700 50  0001 C CNN
	1    9050 3700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB28
U 1 1 5D06682E
P 9850 3700
F 0 "OB28" H 9950 3750 50  0000 C CNN
F 1 "OA1" H 9850 3814 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 3700 50  0001 C CNN
F 3 "~" H 9850 3700 50  0001 C CNN
	1    9850 3700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OA29
U 1 1 5D066835
P 9050 3800
F 0 "OA29" H 9150 3850 50  0000 C CNN
F 1 "OA1" H 9050 3914 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 3800 50  0001 C CNN
F 3 "~" H 9050 3800 50  0001 C CNN
	1    9050 3800
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB29
U 1 1 5D06683C
P 9850 3800
F 0 "OB29" H 9950 3850 50  0000 C CNN
F 1 "OA1" H 9850 3914 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 3800 50  0001 C CNN
F 3 "~" H 9850 3800 50  0001 C CNN
	1    9850 3800
	1    0    0    -1  
$EndComp
Text GLabel 8900 3700 0    50   Input ~ 0
ZA28
Text GLabel 8900 3800 0    50   Input ~ 0
ZA29
Text GLabel 9700 3700 0    50   Input ~ 0
ZB28
Text GLabel 9700 3800 0    50   Input ~ 0
ZB29
Text GLabel 9200 3700 2    50   Input ~ 0
OA28
Text GLabel 10000 3700 2    50   Input ~ 0
OB28
Text GLabel 9200 3800 2    50   Input ~ 0
OA29
Text GLabel 10000 3800 2    50   Input ~ 0
OB29
$Comp
L Jumper:SolderJumper_2_Open OA30
U 1 1 5D06684B
P 9050 3900
F 0 "OA30" H 9150 3950 50  0000 C CNN
F 1 "OA1" H 9050 4014 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 3900 50  0001 C CNN
F 3 "~" H 9050 3900 50  0001 C CNN
	1    9050 3900
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB30
U 1 1 5D066852
P 9850 3900
F 0 "OB30" H 9950 3950 50  0000 C CNN
F 1 "OA1" H 9850 4014 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 3900 50  0001 C CNN
F 3 "~" H 9850 3900 50  0001 C CNN
	1    9850 3900
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OA31
U 1 1 5D066859
P 9050 4000
F 0 "OA31" H 9150 4050 50  0000 C CNN
F 1 "OA1" H 9050 4114 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 4000 50  0001 C CNN
F 3 "~" H 9050 4000 50  0001 C CNN
	1    9050 4000
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB31
U 1 1 5D066860
P 9850 4000
F 0 "OB31" H 9950 4050 50  0000 C CNN
F 1 "OA1" H 9850 4114 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 4000 50  0001 C CNN
F 3 "~" H 9850 4000 50  0001 C CNN
	1    9850 4000
	1    0    0    -1  
$EndComp
Text GLabel 8900 3900 0    50   Input ~ 0
ZA30
Text GLabel 8900 4000 0    50   Input ~ 0
ZA31
Text GLabel 9700 3900 0    50   Input ~ 0
ZB30
Text GLabel 9700 4000 0    50   Input ~ 0
ZB31
Text GLabel 9200 3900 2    50   Input ~ 0
OA30
Text GLabel 10000 3900 2    50   Input ~ 0
OB30
Text GLabel 9200 4000 2    50   Input ~ 0
OA31
Text GLabel 10000 4000 2    50   Input ~ 0
OB31
$Comp
L Jumper:SolderJumper_2_Open OA32
U 1 1 5D06686F
P 9050 4100
F 0 "OA32" H 9150 4150 50  0000 C CNN
F 1 "OA1" H 9050 4214 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9050 4100 50  0001 C CNN
F 3 "~" H 9050 4100 50  0001 C CNN
	1    9050 4100
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open OB32
U 1 1 5D066876
P 9850 4100
F 0 "OB32" H 9950 4150 50  0000 C CNN
F 1 "OA1" H 9850 4214 50  0001 C CNN
F 2 "andreil:SolderJumper-2_P0.4mm_Open_TrianglePad" H 9850 4100 50  0001 C CNN
F 3 "~" H 9850 4100 50  0001 C CNN
	1    9850 4100
	1    0    0    -1  
$EndComp
Text GLabel 8900 4100 0    50   Input ~ 0
ZA32
Text GLabel 9700 4100 0    50   Input ~ 0
ZB32
Text GLabel 9200 4100 2    50   Input ~ 0
OA32
Text GLabel 10000 4100 2    50   Input ~ 0
OB32
$Comp
L Connector_Generic:Conn_02x16_Odd_Even J5
U 1 1 5D0B1F34
P 5300 5200
F 0 "J5" H 5350 6117 50  0000 C CNN
F 1 "GPIO_1" H 5350 6026 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x16_P2.54mm_Vertical" H 5300 5200 50  0001 C CNN
F 3 "~" H 5300 5200 50  0001 C CNN
	1    5300 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 7500 3800 7500
Connection ~ 3800 7500
Wire Wire Line
	3700 6800 3800 6800
Connection ~ 3800 6800
$Comp
L Connector_Generic:Conn_02x16_Odd_Even J6
U 1 1 5D0F7999
P 8300 5200
F 0 "J6" H 8350 6117 50  0000 C CNN
F 1 "GPIO_2" H 8350 6026 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x16_P2.54mm_Vertical" H 8300 5200 50  0001 C CNN
F 3 "~" H 8300 5200 50  0001 C CNN
	1    8300 5200
	1    0    0    -1  
$EndComp
Text GLabel 2200 3500 2    50   Input ~ 0
ZB12
Text GLabel 2200 3600 2    50   Input ~ 0
ZA12
$Comp
L power:GND #PWR?
U 1 1 5CC50DFF
P 2300 2700
AR Path="/5C2D60A3/5CC50DFF" Ref="#PWR?"  Part="1" 
AR Path="/5C4CA0D3/5CC50DFF" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5CC50DFF" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 2300 2450 50  0001 C CNN
F 1 "GND" H 2305 2527 50  0000 C CNN
F 2 "" H 2300 2700 50  0001 C CNN
F 3 "" H 2300 2700 50  0001 C CNN
	1    2300 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2300 2300 2300
Wire Wire Line
	2300 2300 2300 2400
Wire Wire Line
	2200 2400 2300 2400
Connection ~ 2300 2400
Wire Wire Line
	2200 2600 2300 2600
Connection ~ 2300 2600
Wire Wire Line
	2300 2600 2300 2700
$Comp
L power:+3V3 #PWR?
U 1 1 5CC50E0C
P 3000 1800
AR Path="/5C2D60A3/5CC50E0C" Ref="#PWR?"  Part="1" 
AR Path="/5C4CA0D3/5CC50E0C" Ref="#PWR?"  Part="1" 
AR Path="/5C58FB63/5CC50E0C" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0137" H 3000 1650 50  0001 C CNN
F 1 "+3V3" V 3015 1928 50  0000 L CNN
F 2 "" H 3000 1800 50  0001 C CNN
F 3 "" H 3000 1800 50  0001 C CNN
	1    3000 1800
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5CC50E12
P 2300 2050
AR Path="/5C2D60A3/5CC50E12" Ref="C?"  Part="1" 
AR Path="/5C4CA0D3/5CC50E12" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5CC50E12" Ref="C59"  Part="1" 
F 0 "C59" H 2350 2150 50  0000 L CNN
F 1 "100nF" H 2300 1950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2338 1900 50  0001 C CNN
F 3 "~" H 2300 2050 50  0001 C CNN
	1    2300 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5CC50E19
P 2600 2050
AR Path="/5C2D60A3/5CC50E19" Ref="C?"  Part="1" 
AR Path="/5C4CA0D3/5CC50E19" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5CC50E19" Ref="C60"  Part="1" 
F 0 "C60" H 2650 2150 50  0000 L CNN
F 1 "100nF" H 2600 1950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2638 1900 50  0001 C CNN
F 3 "~" H 2600 2050 50  0001 C CNN
	1    2600 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5CC50E20
P 2900 2050
AR Path="/5C2D60A3/5CC50E20" Ref="C?"  Part="1" 
AR Path="/5C4CA0D3/5CC50E20" Ref="C?"  Part="1" 
AR Path="/5C58FB63/5CC50E20" Ref="C61"  Part="1" 
F 0 "C61" H 2950 2150 50  0000 L CNN
F 1 "100nF" H 2900 1950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2938 1900 50  0001 C CNN
F 3 "~" H 2900 2050 50  0001 C CNN
	1    2900 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2300 2300 2200
Connection ~ 2300 2300
Wire Wire Line
	2300 2300 2600 2300
Wire Wire Line
	2900 2300 2900 2200
Wire Wire Line
	2600 2200 2600 2300
Connection ~ 2600 2300
Wire Wire Line
	2600 2300 2900 2300
Wire Wire Line
	2200 1800 2300 1800
Wire Wire Line
	2200 1700 2300 1700
Wire Wire Line
	2300 1700 2300 1800
Connection ~ 2300 1800
Wire Wire Line
	2300 1800 2600 1800
Wire Wire Line
	2200 1600 2300 1600
Wire Wire Line
	2300 1600 2300 1700
Connection ~ 2300 1700
Wire Wire Line
	2300 1900 2300 1800
Wire Wire Line
	2600 1900 2600 1800
Connection ~ 2600 1800
Wire Wire Line
	2600 1800 2900 1800
Wire Wire Line
	2900 1900 2900 1800
Connection ~ 2900 1800
Wire Wire Line
	2900 1800 3000 1800
$Comp
L UniEmu-rescue:EP4CE6F17-andreil U?
U 9 1 5CC50E3D
P 1550 1550
AR Path="/5CC50E3D" Ref="U?"  Part="1" 
AR Path="/5C4CA0D3/5CC50E3D" Ref="U?"  Part="9" 
AR Path="/5C58FB63/5CC50E3D" Ref="U4"  Part="9" 
F 0 "U4" H 1550 2525 50  0000 C CNN
F 1 "EP4CE6F17" H 1550 2434 50  0000 C CNN
F 2 "Package_BGA:BGA-256_17.0x17.0mm_Layout16x16_P1.0mm_Ball0.5mm_Pad0.4mm_NSMD" H 1600 350 50  0001 C CNN
F 3 "" H 2050 1100 50  0001 C CNN
	9    1550 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2400 2300 2600
Text GLabel 2200 800  2    50   Input ~ 0
ZA3
Text GLabel 900  2200 0    50   Input ~ 0
ZA4
Text GLabel 2200 1000 2    50   Input ~ 0
ZB3
Text GLabel 900  1700 0    50   Input ~ 0
ZB4
Text GLabel 900  1800 0    50   Input ~ 0
ZA6
Text GLabel 2200 900  2    50   Input ~ 0
ZA7
Text GLabel 900  1900 0    50   Input ~ 0
ZA8
Text GLabel 900  2500 0    50   Input ~ 0
ZB5
Text GLabel 900  2300 0    50   Input ~ 0
ZB6
Text GLabel 900  2000 0    50   Input ~ 0
ZB7
Text GLabel 900  2100 0    50   Input ~ 0
ZB8
Text GLabel 900  2600 0    50   Input ~ 0
ZA5
Text GLabel 2200 1100 2    50   Input ~ 0
ZB1
Text GLabel 2200 1400 2    50   Input ~ 0
ZB2
Text GLabel 2200 1200 2    50   Input ~ 0
ZA1
Text GLabel 900  2400 0    50   Input ~ 0
ZA2
Text GLabel 900  1300 0    50   Input ~ 0
ZA9
Text GLabel 900  1400 0    50   Input ~ 0
ZB9
Text GLabel 900  1500 0    50   Input ~ 0
ZA10
Text GLabel 900  800  0    50   Input ~ 0
ZA11
Text GLabel 900  1200 0    50   Input ~ 0
ZB10
Text GLabel 900  900  0    50   Input ~ 0
ZB11
Text GLabel 900  1600 0    50   Input ~ 0
B5
Text GLabel 2200 1300 2    50   Input ~ 0
B2
Text GLabel 900  1000 0    50   Input ~ 0
VCLK
Text GLabel 900  1100 0    50   Input ~ 0
LED0
Text GLabel 2200 3300 2    50   Input ~ 0
LED1
Text GLabel 2200 3200 2    50   Input ~ 0
LED2
$EndSCHEMATC
