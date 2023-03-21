opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F887
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 6 "D:\TTVXL\Project TTVXL\BT06week12ttvxl\BT06week12.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "D:\TTVXL\Project TTVXL\BT06week12ttvxl\BT06week12.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_gotoxy
	FNCALL	_main,_printf
	FNCALL	_main,_lcd_counter
	FNCALL	_main,_lcd_put_byte
	FNCALL	_lcd_counter,_lcd_gotoxy
	FNCALL	_lcd_counter,_printf
	FNCALL	_lcd_counter,_lcd_put_byte
	FNCALL	_printf,_putch
	FNCALL	_printf,_isdigit
	FNCALL	_printf,___wmul
	FNCALL	_printf,___lwdiv
	FNCALL	_printf,___lwmod
	FNCALL	_putch,_lcd_putc
	FNCALL	_lcd_putc,_lcd_put_byte
	FNCALL	_lcd_putc,_lcd_busy
	FNCALL	_lcd_putc,_lcd_gotoxy
	FNCALL	_lcd_putc,_isprint
	FNCALL	_lcd_init,_lcd_put_byte
	FNCALL	_lcd_init,_lcd_busy
	FNCALL	_lcd_gotoxy,_lcd_put_byte
	FNCALL	_lcd_gotoxy,_lcd_busy
	FNROOT	_main
	FNCALL	_ngat,___ftadd
	FNCALL	___ftadd,___ftpack
	FNCALL	intlevel1,_ngat
	global	intlevel1
	FNROOT	intlevel1
	global	_dpowers
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global	_dpowers
	global	_dem
	global	_h
	global	_m
	global	_ms
	global	_s
	global	_S1_state
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_ADCS0
_ADCS0	set	254
	global	_ADCS1
_ADCS1	set	255
	global	_ADON
_ADON	set	248
	global	_CHS0
_CHS0	set	250
	global	_CHS1
_CHS1	set	251
	global	_CHS2
_CHS2	set	252
	global	_CHS3
_CHS3	set	253
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RBIE
_RBIE	set	91
	global	_RBIF
_RBIF	set	88
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
	global	_T1CKPS0
_T1CKPS0	set	132
	global	_T1CKPS1
_T1CKPS1	set	133
	global	_T1SYNC
_T1SYNC	set	130
	global	_TMR1CS
_TMR1CS	set	129
	global	_TMR1GE
_TMR1GE	set	134
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_TRISD
_TRISD	set	136
	global	_WPUB
_WPUB	set	149
	global	_ADFM
_ADFM	set	1279
	global	_TMR1IE
_TMR1IE	set	1120
	global	_TRISA0
_TRISA0	set	1064
	global	_TRISA4
_TRISA4	set	1068
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISD1
_TRISD1	set	1089
	global	_TRISD2
_TRISD2	set	1090
	global	_TRISD3
_TRISD3	set	1091
	global	_TRISD4
_TRISD4	set	1092
	global	_TRISD5
_TRISD5	set	1093
	global	_TRISD6
_TRISD6	set	1094
	global	_TRISD7
_TRISD7	set	1095
	global	_TRISE0
_TRISE0	set	1096
	global	_VCFG0
_VCFG0	set	1276
	global	_VCFG1
_VCFG1	set	1277
	global	_nRBPU
_nRBPU	set	1039
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	global	_ANS0
_ANS0	set	3136
	
STR_5:	
	retlw	78	;'N'
	retlw	103	;'g'
	retlw	117	;'u'
	retlw	121	;'y'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	104	;'h'
	retlw	117	;'u'
	retlw	99	;'c'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	0
psect	strings
	
STR_4:	
	retlw	58	;':'
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	51	;'3'
	retlw	100	;'d'
	retlw	109	;'m'
	retlw	115	;'s'
	retlw	0
psect	strings
	
STR_2:	
	retlw	58	;':'
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	100	;'d'
	retlw	109	;'m'
	retlw	0
psect	strings
	
STR_3:	
	retlw	58	;':'
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	100	;'d'
	retlw	115	;'s'
	retlw	0
psect	strings
	
STR_1:	
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	100	;'d'
	retlw	104	;'h'
	retlw	0
psect	strings
	file	"BT06week12ttvxl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_dem:
       ds      3

_h:
       ds      2

_m:
       ds      2

_ms:
       ds      2

_s:
       ds      2

_S1_state:
       ds      1

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_putc
?_lcd_putc:	; 0 bytes @ 0x0
	global	?_isprint
?_isprint:	; 1 bit 
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	?_lcd_counter
?_lcd_counter:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	?_ngat
?_ngat:	; 0 bytes @ 0x0
	global	?_lcd_busy
?_lcd_busy:	; 1 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	ds	3
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x8
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x8
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0xB
	ds	3
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x0
	ds	3
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x3
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x4
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x5
	ds	1
	global	??_ngat
??_ngat:	; 0 bytes @ 0x6
	ds	4
	global	?_lcd_put_byte
?_lcd_put_byte:	; 0 bytes @ 0xA
	global	??_lcd_busy
??_lcd_busy:	; 0 bytes @ 0xA
	global	??_isprint
??_isprint:	; 0 bytes @ 0xA
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0xA
	global	?___wmul
?___wmul:	; 2 bytes @ 0xA
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0xA
	global	lcd_put_byte@b
lcd_put_byte@b:	; 1 bytes @ 0xA
	global	_isdigit$3660
_isdigit$3660:	; 1 bytes @ 0xA
	global	_isprint$3663
_isprint$3663:	; 1 bytes @ 0xA
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0xA
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0xA
	ds	1
	global	??_lcd_put_byte
??_lcd_put_byte:	; 0 bytes @ 0xB
	global	lcd_busy@busy
lcd_busy@busy:	; 1 bytes @ 0xB
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0xB
	global	isprint@c
isprint@c:	; 1 bytes @ 0xB
	ds	1
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0xC
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0xC
	ds	1
	global	lcd_put_byte@rs
lcd_put_byte@rs:	; 1 bytes @ 0xD
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0xE
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0xE
	global	lcd_put_byte@temp
lcd_put_byte@temp:	; 1 bytes @ 0xE
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0xE
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xE
	ds	1
	global	?_lcd_gotoxy
?_lcd_gotoxy:	; 0 bytes @ 0xF
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0xF
	global	lcd_gotoxy@row
lcd_gotoxy@row:	; 1 bytes @ 0xF
	ds	1
	global	??_lcd_gotoxy
??_lcd_gotoxy:	; 0 bytes @ 0x10
	global	lcd_gotoxy@col
lcd_gotoxy@col:	; 1 bytes @ 0x10
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x10
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x11
	global	lcd_gotoxy@address
lcd_gotoxy@address:	; 1 bytes @ 0x11
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x11
	ds	1
	global	??_lcd_putc
??_lcd_putc:	; 0 bytes @ 0x12
	global	lcd_putc@c
lcd_putc@c:	; 1 bytes @ 0x12
	ds	1
	global	??_putch
??_putch:	; 0 bytes @ 0x13
	global	putch@c
putch@c:	; 1 bytes @ 0x13
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x13
	ds	2
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x15
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x15
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0x16
	ds	2
	global	??_printf
??_printf:	; 0 bytes @ 0x18
	ds	3
	global	printf@ap
printf@ap:	; 1 bytes @ 0x1B
	ds	1
	global	printf@prec
printf@prec:	; 1 bytes @ 0x1C
	ds	1
	global	printf@_val
printf@_val:	; 4 bytes @ 0x1D
	ds	4
	global	printf@flag
printf@flag:	; 1 bytes @ 0x21
	ds	1
	global	printf@f
printf@f:	; 1 bytes @ 0x22
	ds	1
	global	printf@width
printf@width:	; 2 bytes @ 0x23
	ds	2
	global	printf@c
printf@c:	; 1 bytes @ 0x25
	ds	1
	global	??_lcd_counter
??_lcd_counter:	; 0 bytes @ 0x26
	global	??_main
??_main:	; 0 bytes @ 0x26
	ds	2
;;Data sizes: Strings 45, constant 10, data 0, bss 12, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     40      52
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_5(CODE[17]), STR_4(CODE[8]), STR_3(CODE[7]), STR_2(CODE[7]), 
;;		 -> STR_1(CODE[6]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(BANK0[2]), 
;;
;; S3142$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _ngat in COMMON
;;
;;   _ngat->___ftadd
;;   ___ftadd->___ftpack
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_printf
;;   _lcd_counter->_printf
;;   _printf->___lwmod
;;   _putch->_lcd_putc
;;   _lcd_putc->_lcd_gotoxy
;;   _lcd_init->_lcd_put_byte
;;   _lcd_gotoxy->_lcd_put_byte
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _ngat in BANK0
;;
;;   _ngat->___ftadd
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ngat in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _ngat in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _ngat in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0    5194
;;                                             38 BANK0      2     2      0
;;                           _lcd_init
;;                         _lcd_gotoxy
;;                             _printf
;;                        _lcd_counter
;;                       _lcd_put_byte
;; ---------------------------------------------------------------------------------
;; (1) _lcd_counter                                          0     0      0    2475
;;                         _lcd_gotoxy
;;                             _printf
;;                       _lcd_put_byte
;; ---------------------------------------------------------------------------------
;; (2) _printf                                              16    14      2    1941
;;                                             22 BANK0     16    14      2
;;                              _putch
;;                            _isdigit
;;                             ___wmul
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (3) _putch                                                1     1      0     713
;;                                             19 BANK0      1     1      0
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (4) _lcd_putc                                             1     1      0     691
;;                                             18 BANK0      1     1      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;;                         _lcd_gotoxy
;;                            _isprint
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             4     4      0     244
;;                                             15 BANK0      3     3      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (5) _lcd_gotoxy                                           3     2      1     313
;;                                             15 BANK0      3     2      1
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (6) _lcd_busy                                             2     2      0      23
;;                                             10 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _lcd_put_byte                                         5     4      1     221
;;                                             10 BANK0      5     4      1
;; ---------------------------------------------------------------------------------
;; (3) ___lwmod                                              5     1      4     159
;;                                             17 BANK0      5     1      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___lwdiv                                              7     3      4     162
;;                                             10 BANK0      7     3      4
;; ---------------------------------------------------------------------------------
;; (3) ___wmul                                               6     2      4      92
;;                                             10 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (3) _isdigit                                              2     2      0      68
;;                                             10 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (5) _isprint                                              2     2      0      68
;;                                             10 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (7) _ngat                                                 4     4      0    1049
;;                                              6 BANK0      4     4      0
;;                            ___ftadd
;; ---------------------------------------------------------------------------------
;; (8) ___ftadd                                             12     6      6    1049
;;                                              8 COMMON     6     0      6
;;                                              0 BANK0      6     6      0
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (9) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 9
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_put_byte
;;     _lcd_busy
;;   _lcd_gotoxy
;;     _lcd_put_byte
;;     _lcd_busy
;;   _printf
;;     _putch
;;       _lcd_putc
;;         _lcd_put_byte
;;         _lcd_busy
;;         _lcd_gotoxy
;;           _lcd_put_byte
;;           _lcd_busy
;;         _isprint
;;     _isdigit
;;     ___wmul
;;     ___lwdiv
;;     ___lwmod
;;       ___lwdiv (ARG)
;;   _lcd_counter
;;     _lcd_gotoxy
;;       _lcd_put_byte
;;       _lcd_busy
;;     _printf
;;       _putch
;;         _lcd_putc
;;           _lcd_put_byte
;;           _lcd_busy
;;           _lcd_gotoxy
;;             _lcd_put_byte
;;             _lcd_busy
;;           _isprint
;;       _isdigit
;;       ___wmul
;;       ___lwdiv
;;       ___lwmod
;;         ___lwdiv (ARG)
;;     _lcd_put_byte
;;   _lcd_put_byte
;;
;; _ngat (ROOT)
;;   ___ftadd
;;     ___ftpack
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       C       2        0.0%
;;ABS                  0      0      42       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     28      34       5       65.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      4E      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 33 in file "D:\TTVXL\Project TTVXL\BT06week12ttvxl\BT06week12.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_lcd_init
;;		_lcd_gotoxy
;;		_printf
;;		_lcd_counter
;;		_lcd_put_byte
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT06week12ttvxl\BT06week12.c"
	line	33
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	34
	
l4688:	
;BT06week12.c: 34: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	35
	
l4690:	
;BT06week12.c: 35: lcd_init();
	fcall	_lcd_init
	line	36
	
l4692:	
;BT06week12.c: 36: TRISA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1068/8)^080h,(1068)&7
	line	37
	
l4694:	
;BT06week12.c: 37: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	38
	
l4696:	
;BT06week12.c: 38: TRISE0 = 0;
	bcf	(1096/8)^080h,(1096)&7
	line	40
	
l4698:	
;BT06week12.c: 40: TRISB0 = 1;
	bsf	(1072/8)^080h,(1072)&7
	line	41
	
l4700:	
;BT06week12.c: 41: TRISA0 = 1; ANS0 = 1;
	bsf	(1064/8)^080h,(1064)&7
	
l4702:	
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3136/8)^0180h,(3136)&7
	line	42
	
l4704:	
;BT06week12.c: 42: ADCS1 = 1; ADCS0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(255/8),(255)&7
	
l4706:	
	bcf	(254/8),(254)&7
	line	43
	
l4708:	
;BT06week12.c: 43: VCFG1 = 0; VCFG0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1277/8)^080h,(1277)&7
	
l4710:	
	bcf	(1276/8)^080h,(1276)&7
	line	44
	
l4712:	
;BT06week12.c: 44: CHS3 = 0;CHS2 = 0; CHS1 = 0;CHS0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(253/8),(253)&7
	
l4714:	
	bcf	(252/8),(252)&7
	
l4716:	
	bcf	(251/8),(251)&7
	
l4718:	
	bcf	(250/8),(250)&7
	line	45
	
l4720:	
;BT06week12.c: 45: ADFM = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1279/8)^080h,(1279)&7
	line	46
	
l4722:	
;BT06week12.c: 46: ADON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(248/8),(248)&7
	line	47
	
l4724:	
;BT06week12.c: 47: WPUB = 0b00000011;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	48
	
l4726:	
;BT06week12.c: 48: nRBPU =0;
	bcf	(1039/8)^080h,(1039)&7
	line	49
	
l4728:	
;BT06week12.c: 49: GIE = 1;
	bsf	(95/8),(95)&7
	line	50
	
l4730:	
;BT06week12.c: 50: RBIE = 1;
	bsf	(91/8),(91)&7
	line	51
	
l4732:	
;BT06week12.c: 51: RBIF = 0;
	bcf	(88/8),(88)&7
	line	52
	
l4734:	
;BT06week12.c: 52: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u2097:
	decfsz	((??_main+0)+0),f
	goto	u2097
	decfsz	((??_main+0)+0+1),f
	goto	u2097
	clrwdt
opt asmopt_on

	line	54
	
l4736:	
;BT06week12.c: 54: TMR1GE=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(134/8),(134)&7
	line	55
	
l4738:	
;BT06week12.c: 55: TMR1CS=0;
	bcf	(129/8),(129)&7
	line	56
	
l4740:	
;BT06week12.c: 56: T1SYNC=1;
	bsf	(130/8),(130)&7
	line	57
	
l4742:	
;BT06week12.c: 57: T1CKPS1=0;T1CKPS0=0;
	bcf	(133/8),(133)&7
	
l4744:	
	bcf	(132/8),(132)&7
	line	58
	
l4746:	
;BT06week12.c: 58: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	59
	
l4748:	
;BT06week12.c: 59: TMR1H=246;
	movlw	(0F6h)
	movwf	(15)	;volatile
	line	60
	
l4750:	
;BT06week12.c: 60: TMR1L=60;
	movlw	(03Ch)
	movwf	(14)	;volatile
	line	62
	
l4752:	
;BT06week12.c: 62: TMR1IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	63
	
l4754:	
;BT06week12.c: 63: TMR1IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(96/8),(96)&7
	line	64
	
l4756:	
;BT06week12.c: 64: PEIE=1;
	bsf	(94/8),(94)&7
	line	65
	
l4758:	
;BT06week12.c: 65: GIE=1;
	bsf	(95/8),(95)&7
	line	67
;BT06week12.c: 67: lcd_gotoxy(0,0);
	clrf	(?_lcd_gotoxy)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	68
	
l4760:	
;BT06week12.c: 68: printf("Nguyen Phuc Dung");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_printf
	line	72
	
l4762:	
;BT06week12.c: 71: {
;BT06week12.c: 72: if (S1_state==1){while(S1_state==1){}}
	decf	(_S1_state),w
	skipz
	goto	u2011
	goto	u2010
u2011:
	goto	l4768
u2010:
	
l4766:	
	decf	(_S1_state),w
	skipnz
	goto	u2021
	goto	u2020
u2021:
	goto	l4766
u2020:
	line	73
	
l4768:	
;BT06week12.c: 73: if ((S1_state==2)||(S1_state==0)){
	movf	(_S1_state),w
	xorlw	02h
	skipnz
	goto	u2031
	goto	u2030
u2031:
	goto	l4772
u2030:
	
l4770:	
	movf	(_S1_state),f
	skipz
	goto	u2041
	goto	u2040
u2041:
	goto	l4762
u2040:
	line	74
	
l4772:	
;BT06week12.c: 74: lcd_counter();
	fcall	_lcd_counter
	line	75
	
l4774:	
;BT06week12.c: 75: if (ms>=1000){
	movf	(_ms+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2055
	movlw	low(03E8h)
	subwf	(_ms),w
u2055:

	skipc
	goto	u2051
	goto	u2050
u2051:
	goto	l4804
u2050:
	line	76
	
l4776:	
;BT06week12.c: 76: ms=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ms)
	clrf	(_ms+1)
	line	77
	
l4778:	
;BT06week12.c: 77: s=s+1;
	incf	(_s),f
	skipnz
	incf	(_s+1),f
	line	78
	
l4780:	
;BT06week12.c: 78: lcd_counter();
	fcall	_lcd_counter
	line	79
	
l4782:	
;BT06week12.c: 79: if (s>=60){
	movf	(_s+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2065
	movlw	low(03Ch)
	subwf	(_s),w
u2065:

	skipc
	goto	u2061
	goto	u2060
u2061:
	goto	l4804
u2060:
	line	80
	
l4784:	
;BT06week12.c: 80: s=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_s)
	clrf	(_s+1)
	line	81
	
l4786:	
;BT06week12.c: 81: m=m+1;
	incf	(_m),f
	skipnz
	incf	(_m+1),f
	line	82
	
l4788:	
;BT06week12.c: 82: lcd_counter();
	fcall	_lcd_counter
	line	83
	
l4790:	
;BT06week12.c: 83: if (m>=60){
	movf	(_m+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2075
	movlw	low(03Ch)
	subwf	(_m),w
u2075:

	skipc
	goto	u2071
	goto	u2070
u2071:
	goto	l4804
u2070:
	line	84
	
l4792:	
;BT06week12.c: 84: m=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_m)
	clrf	(_m+1)
	line	85
	
l4794:	
;BT06week12.c: 85: h=h+1;
	incf	(_h),f
	skipnz
	incf	(_h+1),f
	line	86
	
l4796:	
;BT06week12.c: 86: lcd_counter();
	fcall	_lcd_counter
	line	87
	
l4798:	
;BT06week12.c: 87: if (h>=60){
	movf	(_h+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2085
	movlw	low(03Ch)
	subwf	(_h),w
u2085:

	skipc
	goto	u2081
	goto	u2080
u2081:
	goto	l1079
u2080:
	line	88
	
l4800:	
;BT06week12.c: 88: ms=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ms)
	clrf	(_ms+1)
	line	89
;BT06week12.c: 89: s=0;
	clrf	(_s)
	clrf	(_s+1)
	line	90
;BT06week12.c: 90: m=0;
	clrf	(_m)
	clrf	(_m+1)
	line	91
;BT06week12.c: 91: h=0;
	clrf	(_h)
	clrf	(_h+1)
	line	92
	
l4802:	
;BT06week12.c: 92: lcd_counter();
	fcall	_lcd_counter
	goto	l4804
	line	95
	
l1079:	
	line	97
	
l4804:	
;BT06week12.c: 93: }
;BT06week12.c: 94: }
;BT06week12.c: 95: }
;BT06week12.c: 96: }
;BT06week12.c: 97: lcd_put_byte(1,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(01h)
	fcall	_lcd_put_byte
	goto	l4762
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	100
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_counter
psect	text278,local,class=CODE,delta=2
global __ptext278
__ptext278:

;; *************** function _lcd_counter *****************
;; Defined at:
;;		line 20 in file "D:\TTVXL\Project TTVXL\BT06week12ttvxl\BT06week12.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_lcd_gotoxy
;;		_printf
;;		_lcd_put_byte
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text278
	file	"D:\TTVXL\Project TTVXL\BT06week12ttvxl\BT06week12.c"
	line	20
	global	__size_of_lcd_counter
	__size_of_lcd_counter	equ	__end_of_lcd_counter-_lcd_counter
	
_lcd_counter:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _lcd_counter: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	21
	
l4674:	
;BT06week12.c: 21: lcd_gotoxy(0,1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	22
	
l4676:	
;BT06week12.c: 22: printf("%02dh",h);
	movf	(_h+1),w
	movwf	(?_printf+1)
	movf	(_h),w
	movwf	(?_printf)
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	23
	
l4678:	
;BT06week12.c: 23: lcd_gotoxy(3,1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(03h)
	fcall	_lcd_gotoxy
	line	24
;BT06week12.c: 24: printf(":%02dm",m);
	movf	(_m+1),w
	movwf	(?_printf+1)
	movf	(_m),w
	movwf	(?_printf)
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	line	25
	
l4680:	
;BT06week12.c: 25: lcd_gotoxy(7,1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(07h)
	fcall	_lcd_gotoxy
	line	26
	
l4682:	
;BT06week12.c: 26: printf(":%02ds",s);
	movf	(_s+1),w
	movwf	(?_printf+1)
	movf	(_s),w
	movwf	(?_printf)
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_printf
	line	27
;BT06week12.c: 27: lcd_gotoxy(11,1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0Bh)
	fcall	_lcd_gotoxy
	line	28
	
l4684:	
;BT06week12.c: 28: printf(":%03dms",ms);
	movf	(_ms+1),w
	movwf	(?_printf+1)
	movf	(_ms),w
	movwf	(?_printf)
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_printf
	line	29
	
l4686:	
;BT06week12.c: 29: lcd_put_byte(1,1);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(01h)
	fcall	_lcd_put_byte
	line	30
	
l1067:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_counter
	__end_of_lcd_counter:
;; =============== function _lcd_counter ends ============

	signat	_lcd_counter,88
	global	_printf
psect	text279,local,class=CODE,delta=2
global __ptext279
__ptext279:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_5(17), STR_4(8), STR_3(7), STR_2(7), 
;;		 -> STR_1(6), 
;; Auto vars:     Size  Location     Type
;;  f               1   34[BANK0 ] PTR const unsigned char 
;;		 -> STR_5(17), STR_4(8), STR_3(7), STR_2(7), 
;;		 -> STR_1(6), 
;;  _val            4   29[BANK0 ] struct .
;;  width           2   35[BANK0 ] int 
;;  c               1   37[BANK0 ] char 
;;  flag            1   33[BANK0 ] unsigned char 
;;  prec            1   28[BANK0 ] char 
;;  ap              1   27[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   22[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0      11       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_putch
;;		_isdigit
;;		___wmul
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_lcd_counter
;;		_main
;; This function uses a non-reentrant model
;;
psect	text279
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	537
	movwf	(printf@f)
	
l4582:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)
	line	540
	goto	l4672
	line	542
	
l4584:	
	movf	(printf@c),w
	xorlw	025h
	skipnz
	goto	u1831
	goto	u1830
u1831:
	goto	l4588
u1830:
	line	545
	
l4586:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l4672
	line	550
	
l4588:	
	clrf	(printf@width)
	clrf	(printf@width+1)
	line	552
	clrf	(printf@flag)
	goto	l4594
	line	583
	
l2216:	
	line	584
	bsf	(printf@flag)+(2/8),(2)&7
	line	585
	
l4590:	
	incf	(printf@f),f
	line	555
	
l4594:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 48 to 48
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           14    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	48^0	; case 48
	skipnz
	goto	l2216
	goto	l4596
	opt asmopt_on

	line	601
	
l4596:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u1841
	goto	u1840
u1841:
	goto	l4608
u1840:
	line	602
	
l4598:	
	clrf	(printf@width)
	clrf	(printf@width+1)
	line	604
	
l4600:	
	movf	(printf@width+1),w
	movwf	(?___wmul+1)
	movf	(printf@width),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	movwf	(??_printf+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_printf+0)+0
	movf	0+(??_printf+0)+0,w
	addlw	low(0FFD0h)
	movwf	(printf@width)
	movf	1+(??_printf+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(printf@width)
	
l4602:	
	incf	(printf@f),f
	line	605
	
l4604:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u1851
	goto	u1850
u1851:
	goto	l4600
u1850:
	line	638
	
l4608:	
	movf	(printf@f),w
	incf	(printf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
; rangetable           110     6 (fixed)
; spacedrange          218     9 (fixed)
; locatedrange         106     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2251
	xorlw	100^0	; case 100
	skipnz
	goto	l4610
	xorlw	105^100	; case 105
	skipnz
	goto	l4610
	goto	l4672
	opt asmopt_on

	line	1254
	
l4610:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@_val+1)
	
l4612:	
	incf	(printf@ap),f
	incf	(printf@ap),f
	line	1256
	
l4614:	
	btfss	(printf@_val+1),7
	goto	u1861
	goto	u1860
u1861:
	goto	l4620
u1860:
	line	1257
	
l4616:	
	movlw	(03h)
	iorwf	(printf@flag),f
	line	1258
	
l4618:	
	comf	(printf@_val),f
	comf	(printf@_val+1),f
	incf	(printf@_val),f
	skipnz
	incf	(printf@_val+1),f
	line	1300
	
l4620:	
	clrf	(printf@c)
	incf	(printf@c),f
	line	1301
	
l4624:	
	clrc
	rlf	(printf@c),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+0)+0
	fcall	stringdir
	movwf	(??_printf+0)+0+1
	movf	1+(??_printf+0)+0,w
	subwf	(printf@_val+1),w
	skipz
	goto	u1875
	movf	0+(??_printf+0)+0,w
	subwf	(printf@_val),w
u1875:
	skipnc
	goto	u1871
	goto	u1870
u1871:
	goto	l4628
u1870:
	goto	l4632
	line	1300
	
l4628:	
	incf	(printf@c),f
	
l4630:	
	movf	(printf@c),w
	xorlw	05h
	skipz
	goto	u1881
	goto	u1880
u1881:
	goto	l4624
u1880:
	line	1340
	
l4632:	
	movf	(printf@width+1),w
	iorwf	(printf@width),w
	skipnz
	goto	u1891
	goto	u1890
u1891:
	goto	l4638
u1890:
	
l4634:	
	movf	(printf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1901
	goto	u1900
u1901:
	goto	l4638
u1900:
	line	1341
	
l4636:	
	movlw	-1
	addwf	(printf@width),f
	skipc
	decf	(printf@width+1),f
	line	1376
	
l4638:	
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	btfsc	(??_printf+0)+0,7
	decf	(??_printf+0)+0+1,f
	movf	1+(??_printf+0)+0,w
	xorlw	80h
	movwf	(??_printf+2)+0
	movf	(printf@width+1),w
	xorlw	80h
	subwf	(??_printf+2)+0,w
	skipz
	goto	u1915
	movf	(printf@width),w
	subwf	0+(??_printf+0)+0,w
u1915:

	skipnc
	goto	u1911
	goto	u1910
u1911:
	goto	l4642
u1910:
	line	1377
	
l4640:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	btfsc	(??_printf+0)+0,7
	decf	(??_printf+0)+0+1,f
	movf	0+(??_printf+0)+0,w
	subwf	(printf@width),f
	movf	1+(??_printf+0)+0,w
	skipc
	decf	(printf@width+1),f
	subwf	(printf@width+1),f
	goto	l4644
	line	1379
	
l4642:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(printf@width)
	clrf	(printf@width+1)
	line	1382
	
l4644:	
	btfss	(printf@flag),(2)&7
	goto	u1921
	goto	u1920
u1921:
	goto	l4656
u1920:
	line	1387
	
l4646:	
	movf	(printf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1931
	goto	u1930
u1931:
	goto	l4650
u1930:
	line	1388
	
l4648:	
	movlw	(02Dh)
	fcall	_putch
	line	1410
	
l4650:	
	movf	(printf@width+1),w
	iorwf	(printf@width),w
	skipnz
	goto	u1941
	goto	u1940
u1941:
	goto	l4666
u1940:
	line	1412
	
l4652:	
	movlw	(030h)
	fcall	_putch
	line	1413
	
l4654:	
	movlw	-1
	addwf	(printf@width),f
	skipc
	decf	(printf@width+1),f
	movf	(((printf@width+1))),w
	iorwf	(((printf@width))),w
	skipz
	goto	u1951
	goto	u1950
u1951:
	goto	l4652
u1950:
	goto	l4666
	line	1423
	
l4656:	
	movf	(printf@width+1),w
	iorwf	(printf@width),w
	skipnz
	goto	u1961
	goto	u1960
u1961:
	goto	l4662
u1960:
	line	1425
	
l4658:	
	movlw	(020h)
	fcall	_putch
	line	1426
	
l4660:	
	movlw	-1
	addwf	(printf@width),f
	skipc
	decf	(printf@width+1),f
	movf	(((printf@width+1))),w
	iorwf	(((printf@width))),w
	skipz
	goto	u1971
	goto	u1970
u1971:
	goto	l4658
u1970:
	line	1433
	
l4662:	
	movf	(printf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1981
	goto	u1980
u1981:
	goto	l4666
u1980:
	line	1434
	
l4664:	
	movlw	(02Dh)
	fcall	_putch
	line	1467
	
l4666:	
	movf	(printf@c),w
	movwf	(printf@prec)
	line	1469
	goto	l4670
	line	1484
	
l4668:	
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	clrc
	rlf	(printf@prec),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)
	fcall	stringdir
	movwf	(?___lwdiv+1)
	movf	(printf@_val+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(printf@_val),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(printf@c)
	line	1516
	movf	(printf@c),w
	fcall	_putch
	line	1469
	
l4670:	
	decf	(printf@prec),f
	incf	((printf@prec)),w
	skipz
	goto	u1991
	goto	u1990
u1991:
	goto	l4668
u1990:
	line	540
	
l4672:	
	movf	(printf@f),w
	incf	(printf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
	movf	((printf@c)),f
	skipz
	goto	u2001
	goto	u2000
u2001:
	goto	l4584
u2000:
	line	1533
	
l2251:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_putch
psect	text280,local,class=CODE,delta=2
global __ptext280
__ptext280:

;; *************** function _putch *****************
;; Defined at:
;;		line 103 in file "D:\TTVXL\Project TTVXL\BT06week12ttvxl\BT06week12.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_lcd_putc
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text280
	file	"D:\TTVXL\Project TTVXL\BT06week12ttvxl\BT06week12.c"
	line	103
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _putch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;putch@c stored from wreg
	movwf	(putch@c)
	line	104
	
l4580:	
;BT06week12.c: 104: lcd_putc(c);
	movf	(putch@c),w
	fcall	_lcd_putc
	line	105
	
l1087:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_putc
psect	text281,local,class=CODE,delta=2
global __ptext281
__ptext281:

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 143 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;;		_lcd_gotoxy
;;		_isprint
;; This function is called by:
;;		_putch
;; This function uses a non-reentrant model
;;
psect	text281
	file	"D:\TTVXL\Library\lcd(16).c"
	line	143
	global	__size_of_lcd_putc
	__size_of_lcd_putc	equ	__end_of_lcd_putc-_lcd_putc
	
_lcd_putc:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _lcd_putc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_putc@c stored from wreg
	movwf	(lcd_putc@c)
	line	144
	
l4562:	
;lcd(16).c: 144: switch(c){
	goto	l4578
	line	146
	
l4564:	
;lcd(16).c: 146: lcd_put_byte(0, 1);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	147
;lcd(16).c: 147: while(lcd_busy());
	
l4566:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1801
	goto	u1800
u1801:
	goto	l4566
u1800:
	goto	l2184
	line	150
	
l4568:	
;lcd(16).c: 150: lcd_gotoxy(0, 1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	151
;lcd(16).c: 151: break;
	goto	l2184
	line	153
	
l4570:	
;lcd(16).c: 153: if(isprint(c)){
	movf	(lcd_putc@c),w
	fcall	_isprint
	btfss	status,0
	goto	u1811
	goto	u1810
u1811:
	goto	l2184
u1810:
	line	154
	
l4572:	
;lcd(16).c: 154: lcd_put_byte(1, c);
	movf	(lcd_putc@c),w
	movwf	(?_lcd_put_byte)
	movlw	(01h)
	fcall	_lcd_put_byte
	line	155
;lcd(16).c: 155: while(lcd_busy());
	
l4574:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1821
	goto	u1820
u1821:
	goto	l4574
u1820:
	goto	l2184
	line	144
	
l4578:	
	movf	(lcd_putc@c),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 10 to 12
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           20    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	10^0	; case 10
	skipnz
	goto	l4568
	xorlw	12^10	; case 12
	skipnz
	goto	l4564
	goto	l4570
	opt asmopt_on

	line	159
	
l2184:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	_lcd_init
psect	text282,local,class=CODE,delta=2
global __ptext282
__ptext282:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 5 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/60
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text282
	file	"D:\TTVXL\Library\lcd(16).c"
	line	5
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l4524:	
;lcd(16).c: 6: unsigned char i;
;lcd(16).c: 7: TRISD3 = 0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1091/8)^080h,(1091)&7
	line	8
;lcd(16).c: 8: TRISD1 = 0;
	bcf	(1089/8)^080h,(1089)&7
	line	9
;lcd(16).c: 9: TRISD2 = 0;
	bcf	(1090/8)^080h,(1090)&7
	line	10
;lcd(16).c: 10: TRISD4 = 0;
	bcf	(1092/8)^080h,(1092)&7
	line	11
;lcd(16).c: 11: TRISD5 = 0;
	bcf	(1093/8)^080h,(1093)&7
	line	12
;lcd(16).c: 12: TRISD6 = 0;
	bcf	(1094/8)^080h,(1094)&7
	line	13
;lcd(16).c: 13: TRISD7 = 0;
	bcf	(1095/8)^080h,(1095)&7
	line	14
;lcd(16).c: 14: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(67/8),(67)&7
	line	15
;lcd(16).c: 15: RD1 = 0;
	bcf	(65/8),(65)&7
	line	16
;lcd(16).c: 16: RD2 = 0;
	bcf	(66/8),(66)&7
	line	18
	
l4526:	
;lcd(16).c: 18: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u2107:
	decfsz	((??_lcd_init+0)+0),f
	goto	u2107
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u2107
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u2107
	nop2
opt asmopt_on

	line	21
	
l4528:	
;lcd(16).c: 21: lcd_put_byte(0,0x30);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	22
	
l4530:	
;lcd(16).c: 22: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u2117:
	decfsz	((??_lcd_init+0)+0),f
	goto	u2117
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u2117
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u2117
	nop2
opt asmopt_on

	line	23
;lcd(16).c: 23: lcd_put_byte(0,0x30);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	24
	
l4532:	
;lcd(16).c: 24: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u2127:
	decfsz	((??_lcd_init+0)+0),f
	goto	u2127
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u2127
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u2127
	nop2
opt asmopt_on

	line	25
	
l4534:	
;lcd(16).c: 25: lcd_put_byte(0,0x32);
	movlw	(032h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	26
;lcd(16).c: 26: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u2137:
	decfsz	((??_lcd_init+0)+0),f
	goto	u2137
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u2137
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u2137
	nop2
opt asmopt_on

	line	27
;lcd(16).c: 27: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u2147:
	decfsz	((??_lcd_init+0)+0),f
	goto	u2147
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u2147
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u2147
	nop2
opt asmopt_on

	line	28
;lcd(16).c: 28: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u2157:
	decfsz	((??_lcd_init+0)+0),f
	goto	u2157
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u2157
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u2157
	nop2
opt asmopt_on

	line	30
;lcd(16).c: 30: while(lcd_busy());
	
l4536:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1731
	goto	u1730
u1731:
	goto	l4536
u1730:
	line	31
	
l4538:	
;lcd(16).c: 31: lcd_put_byte(0,0b00101100 & 0b00111000);
	movlw	(028h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	32
;lcd(16).c: 32: while(lcd_busy());
	
l4540:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1741
	goto	u1740
u1741:
	goto	l4540
u1740:
	line	34
	
l4542:	
;lcd(16).c: 34: lcd_put_byte(0,0b00001011&0b00001101&0b00001110);
	movlw	(08h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	35
;lcd(16).c: 35: while(lcd_busy());
	
l4544:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1751
	goto	u1750
u1751:
	goto	l4544
u1750:
	line	36
	
l4546:	
;lcd(16).c: 36: lcd_put_byte(0,0b00001111&0b00001101&0b00001110);
	movlw	(0Ch)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	37
;lcd(16).c: 37: while(lcd_busy());
	
l4548:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1761
	goto	u1760
u1761:
	goto	l4548
u1760:
	line	39
	
l4550:	
;lcd(16).c: 39: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	40
;lcd(16).c: 40: while(lcd_busy());
	
l4552:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1771
	goto	u1770
u1771:
	goto	l4552
u1770:
	line	41
	
l4554:	
;lcd(16).c: 41: lcd_put_byte(0,0b00000100);
	movlw	(04h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	42
;lcd(16).c: 42: while(lcd_busy());
	
l4556:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1781
	goto	u1780
u1781:
	goto	l4556
u1780:
	line	43
	
l4558:	
;lcd(16).c: 43: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	44
;lcd(16).c: 44: while(lcd_busy());
	
l4560:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1791
	goto	u1790
u1791:
	goto	l4560
u1790:
	line	45
	
l2158:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_gotoxy
psect	text283,local,class=CODE,delta=2
global __ptext283
__ptext283:

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 162 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1   15[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1   16[BANK0 ] unsigned char 
;;  address         1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_lcd_counter
;;		_main
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text283
	file	"D:\TTVXL\Library\lcd(16).c"
	line	162
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _lcd_gotoxy: [wreg+status,2+status,0+pclath+cstack]
;lcd_gotoxy@col stored from wreg
	line	165
	movwf	(lcd_gotoxy@col)
	
l4512:	
;lcd(16).c: 163: unsigned char address;
;lcd(16).c: 165: if(row!=0)
	movf	(lcd_gotoxy@row),w
	skipz
	goto	u1710
	goto	l4516
u1710:
	line	166
	
l4514:	
;lcd(16).c: 166: address=0x40;
	movlw	(040h)
	movwf	(lcd_gotoxy@address)
	goto	l4518
	line	168
	
l4516:	
;lcd(16).c: 167: else
;lcd(16).c: 168: address=0;
	clrf	(lcd_gotoxy@address)
	line	170
	
l4518:	
;lcd(16).c: 170: address += col;
	movf	(lcd_gotoxy@col),w
	addwf	(lcd_gotoxy@address),f
	line	171
	
l4520:	
;lcd(16).c: 171: lcd_put_byte(0,0x80|address);
	movf	(lcd_gotoxy@address),w
	iorlw	080h
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	172
;lcd(16).c: 172: while(lcd_busy());
	
l4522:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1721
	goto	u1720
u1721:
	goto	l4522
u1720:
	line	173
	
l2192:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
;; =============== function _lcd_gotoxy ends ============

	signat	_lcd_gotoxy,8312
	global	_lcd_busy
psect	text284,local,class=CODE,delta=2
global __ptext284
__ptext284:

;; *************** function _lcd_busy *****************
;; Defined at:
;;		line 47 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  busy            1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;;		_lcd_putc
;;		_lcd_gotoxy
;; This function uses a non-reentrant model
;;
psect	text284
	file	"D:\TTVXL\Library\lcd(16).c"
	line	47
	global	__size_of_lcd_busy
	__size_of_lcd_busy	equ	__end_of_lcd_busy-_lcd_busy
	
_lcd_busy:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _lcd_busy: [wreg]
	line	50
	
l4498:	
;lcd(16).c: 48: unsigned char busy;
;lcd(16).c: 50: TRISD4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1092/8)^080h,(1092)&7
	line	51
;lcd(16).c: 51: TRISD5 = 1;
	bsf	(1093/8)^080h,(1093)&7
	line	52
;lcd(16).c: 52: TRISD6 = 1;
	bsf	(1094/8)^080h,(1094)&7
	line	53
;lcd(16).c: 53: TRISD7 = 1;
	bsf	(1095/8)^080h,(1095)&7
	line	55
;lcd(16).c: 55: RD2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(66/8),(66)&7
	line	56
;lcd(16).c: 56: RD1 = 0;
	bcf	(65/8),(65)&7
	line	57
	
l4500:	
;lcd(16).c: 57: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u2167:
decfsz	(??_lcd_busy+0)+0,f
	goto	u2167
opt asmopt_on

	line	58
	
l4502:	
;lcd(16).c: 58: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	59
;lcd(16).c: 59: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u2177:
decfsz	(??_lcd_busy+0)+0,f
	goto	u2177
opt asmopt_on

	line	61
;lcd(16).c: 61: busy = RD7;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	movlw	1
	movwf	(lcd_busy@busy)
	line	63
	
l4504:	
;lcd(16).c: 63: RD3 = 0;
	bcf	(67/8),(67)&7
	line	64
;lcd(16).c: 64: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u2187:
decfsz	(??_lcd_busy+0)+0,f
	goto	u2187
opt asmopt_on

	line	65
	
l4506:	
;lcd(16).c: 65: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	66
;lcd(16).c: 66: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u2197:
decfsz	(??_lcd_busy+0)+0,f
	goto	u2197
opt asmopt_on

	line	67
	
l4508:	
;lcd(16).c: 67: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	70
;lcd(16).c: 70: return busy;
	movf	(lcd_busy@busy),w
	line	71
	
l2161:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_busy
	__end_of_lcd_busy:
;; =============== function _lcd_busy ends ============

	signat	_lcd_busy,89
	global	_lcd_put_byte
psect	text285,local,class=CODE,delta=2
global __ptext285
__ptext285:

;; *************** function _lcd_put_byte *****************
;; Defined at:
;;		line 106 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  rs              1    wreg     unsigned char 
;;  b               1   10[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rs              1   13[BANK0 ] unsigned char 
;;  temp            1   14[BANK0 ] struct _BYTE_VAL
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_counter
;;		_main
;;		_lcd_init
;;		_lcd_putc
;;		_lcd_gotoxy
;; This function uses a non-reentrant model
;;
psect	text285
	file	"D:\TTVXL\Library\lcd(16).c"
	line	106
	global	__size_of_lcd_put_byte
	__size_of_lcd_put_byte	equ	__end_of_lcd_put_byte-_lcd_put_byte
	
_lcd_put_byte:	
	opt	stack 4
; Regs used in _lcd_put_byte: [wreg+status,2+status,0]
;lcd_put_byte@rs stored from wreg
	line	109
	movwf	(lcd_put_byte@rs)
	
l4462:	
;lcd(16).c: 107: BYTE_VAL temp;
;lcd(16).c: 109: TRISD4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1092/8)^080h,(1092)&7
	line	110
;lcd(16).c: 110: TRISD5 = 0;
	bcf	(1093/8)^080h,(1093)&7
	line	111
;lcd(16).c: 111: TRISD6 = 0;
	bcf	(1094/8)^080h,(1094)&7
	line	112
;lcd(16).c: 112: TRISD7 = 0;
	bcf	(1095/8)^080h,(1095)&7
	line	114
;lcd(16).c: 114: RD1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(65/8),(65)&7
	line	115
	
l4464:	
;lcd(16).c: 115: if(rs) RD1 = 1;
	movf	(lcd_put_byte@rs),w
	skipz
	goto	u1540
	goto	l4468
u1540:
	
l4466:	
	bsf	(65/8),(65)&7
	line	117
	
l4468:	
;lcd(16).c: 117: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u2207:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u2207
opt asmopt_on

	line	118
	
l4470:	
;lcd(16).c: 118: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	119
;lcd(16).c: 119: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u2217:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u2217
opt asmopt_on

	line	120
	
l4472:	
;lcd(16).c: 120: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	122
;lcd(16).c: 122: temp.Val = b;
	movf	(lcd_put_byte@b),w
	movwf	(lcd_put_byte@temp)
	line	125
	
l4474:	
;lcd(16).c: 125: RD4 = temp.bits.b4;
	swapf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u1551
	goto	u1550
	
u1551:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u1564
u1550:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u1564:
	line	126
	
l4476:	
;lcd(16).c: 126: RD5 = temp.bits.b5;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u1571
	goto	u1570
	
u1571:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u1584
u1570:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u1584:
	line	127
	
l4478:	
;lcd(16).c: 127: RD6 = temp.bits.b6;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u1591
	goto	u1590
	
u1591:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u1604
u1590:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u1604:
	line	128
	
l4480:	
;lcd(16).c: 128: RD7 = temp.bits.b7;
	rlf	(lcd_put_byte@temp),w
	rlf	(lcd_put_byte@temp),w
	andlw	1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u1611
	goto	u1610
	
u1611:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u1624
u1610:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u1624:
	line	129
;lcd(16).c: 129: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u2227:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u2227
opt asmopt_on

	line	130
	
l4482:	
;lcd(16).c: 130: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	131
;lcd(16).c: 131: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u2237:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u2237
opt asmopt_on

	line	132
	
l4484:	
;lcd(16).c: 132: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	134
	
l4486:	
;lcd(16).c: 134: RD4 = temp.bits.b0;
	movf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u1631
	goto	u1630
	
u1631:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u1644
u1630:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u1644:
	line	135
	
l4488:	
;lcd(16).c: 135: RD5 = temp.bits.b1;
	rrf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u1651
	goto	u1650
	
u1651:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u1664
u1650:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u1664:
	line	136
	
l4490:	
;lcd(16).c: 136: RD6 = temp.bits.b2;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u1671
	goto	u1670
	
u1671:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u1684
u1670:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u1684:
	line	137
	
l4492:	
;lcd(16).c: 137: RD7 = temp.bits.b3;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u1691
	goto	u1690
	
u1691:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u1704
u1690:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u1704:
	line	138
;lcd(16).c: 138: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u2247:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u2247
opt asmopt_on

	line	139
	
l4494:	
;lcd(16).c: 139: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	140
;lcd(16).c: 140: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u2257:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u2257
opt asmopt_on

	line	141
	
l4496:	
;lcd(16).c: 141: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	142
	
l2169:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_put_byte
	__end_of_lcd_put_byte:
;; =============== function _lcd_put_byte ends ============

	signat	_lcd_put_byte,8312
	global	___lwmod
psect	text286,local,class=CODE,delta=2
global __ptext286
__ptext286:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   17[BANK0 ] unsigned int 
;;  dividend        2   19[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   21[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   17[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text286
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 2
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l4336:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u1231
	goto	u1230
u1231:
	goto	l4352
u1230:
	line	9
	
l4338:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l4342
	line	11
	
l4340:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l4342:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u1241
	goto	u1240
u1241:
	goto	l4340
u1240:
	line	15
	
l4344:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u1255
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u1255:
	skipc
	goto	u1251
	goto	u1250
u1251:
	goto	l4348
u1250:
	line	16
	
l4346:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l4348:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l4350:	
	decfsz	(___lwmod@counter),f
	goto	u1261
	goto	u1260
u1261:
	goto	l4344
u1260:
	line	20
	
l4352:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l3273:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text287,local,class=CODE,delta=2
global __ptext287
__ptext287:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   10[BANK0 ] unsigned int 
;;  dividend        2   12[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   14[BANK0 ] unsigned int 
;;  counter         1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   10[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text287
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 2
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l4310:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l4312:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u1191
	goto	u1190
u1191:
	goto	l4332
u1190:
	line	11
	
l4314:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l4318
	line	13
	
l4316:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l4318:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1201
	goto	u1200
u1201:
	goto	l4316
u1200:
	line	17
	
l4320:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l4322:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1215
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1215:
	skipc
	goto	u1211
	goto	u1210
u1211:
	goto	l4328
u1210:
	line	19
	
l4324:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l4326:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l4328:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l4330:	
	decfsz	(___lwdiv@counter),f
	goto	u1221
	goto	u1220
u1221:
	goto	l4320
u1220:
	line	25
	
l4332:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l3263:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text288,local,class=CODE,delta=2
global __ptext288
__ptext288:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2   10[BANK0 ] unsigned int 
;;  multiplicand    2   12[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   14[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   10[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text288
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 2
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l4294:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l4296:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1171
	goto	u1170
u1171:
	goto	l4300
u1170:
	line	8
	
l4298:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l4300:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l4302:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l4304:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1181
	goto	u1180
u1181:
	goto	l4296
u1180:
	line	12
	
l4306:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l3253:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_isdigit
psect	text289,local,class=CODE,delta=2
global __ptext289
__ptext289:

;; *************** function _isdigit *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text289
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 2
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l4282:	
	clrf	(_isdigit$3660)
	
l4284:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u1151
	goto	u1150
u1151:
	goto	l4290
u1150:
	
l4286:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u1161
	goto	u1160
u1161:
	goto	l4290
u1160:
	
l4288:	
	clrf	(_isdigit$3660)
	incf	(_isdigit$3660),f
	
l4290:	
	rrf	(_isdigit$3660),w
	
	line	15
	
l3236:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_isprint
psect	text290,local,class=CODE,delta=2
global __ptext290
__ptext290:

;; *************** function _isprint *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isprint.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text290
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isprint.c"
	line	13
	global	__size_of_isprint
	__size_of_isprint	equ	__end_of_isprint-_isprint
	
_isprint:	
	opt	stack 0
; Regs used in _isprint: [wreg+status,2+status,0]
;isprint@c stored from wreg
	movwf	(isprint@c)
	line	14
	
l4270:	
	clrf	(_isprint$3663)
	
l4272:	
	movlw	(07Fh)
	subwf	(isprint@c),w
	skipnc
	goto	u1131
	goto	u1130
u1131:
	goto	l4278
u1130:
	
l4274:	
	movlw	(020h)
	subwf	(isprint@c),w
	skipc
	goto	u1141
	goto	u1140
u1141:
	goto	l4278
u1140:
	
l4276:	
	clrf	(_isprint$3663)
	incf	(_isprint$3663),f
	
l4278:	
	rrf	(_isprint$3663),w
	
	line	15
	
l3241:	
	return
	opt stack 0
GLOBAL	__end_of_isprint
	__end_of_isprint:
;; =============== function _isprint ends ============

	signat	_isprint,4216
	global	_ngat
psect	text291,local,class=CODE,delta=2
global __ptext291
__ptext291:

;; *************** function _ngat *****************
;; Defined at:
;;		line 107 in file "D:\TTVXL\Project TTVXL\BT06week12ttvxl\BT06week12.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text291
	file	"D:\TTVXL\Project TTVXL\BT06week12ttvxl\BT06week12.c"
	line	107
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _ngat: [allreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ngat+0)
	movf	fsr0,w
	movwf	(??_ngat+1)
	movf	pclath,w
	movwf	(??_ngat+2)
	movf	btemp+1,w
	movwf	(??_ngat+3)
	ljmp	_ngat
psect	text291
	line	108
	
i1l4248:	
;BT06week12.c: 108: RBIF = 0;
	bcf	(88/8),(88)&7
	line	109
;BT06week12.c: 109: if (RB0 == 0){
	btfsc	(48/8),(48)&7
	goto	u105_21
	goto	u105_20
u105_21:
	goto	i1l1090
u105_20:
	line	111
	
i1l1091:	
	line	110
	btfss	(48/8),(48)&7
	goto	u106_21
	goto	u106_20
u106_21:
	goto	i1l1091
u106_20:
	
i1l1093:	
	line	112
;BT06week12.c: 111: }
;BT06week12.c: 112: if (RB0 == 1){
	btfss	(48/8),(48)&7
	goto	u107_21
	goto	u107_20
u107_21:
	goto	i1l1090
u107_20:
	line	113
	
i1l4252:	
;BT06week12.c: 113: S1_state =1 ;
	clrf	(_S1_state)
	incf	(_S1_state),f
	line	115
	
i1l1090:	
	line	116
;BT06week12.c: 114: }
;BT06week12.c: 115: }
;BT06week12.c: 116: if (RB1 == 0){
	btfsc	(49/8),(49)&7
	goto	u108_21
	goto	u108_20
u108_21:
	goto	i1l1095
u108_20:
	line	118
	
i1l1096:	
	line	117
	btfss	(49/8),(49)&7
	goto	u109_21
	goto	u109_20
u109_21:
	goto	i1l1096
u109_20:
	
i1l1098:	
	line	119
;BT06week12.c: 118: }
;BT06week12.c: 119: if (RB1 == 1){
	btfss	(49/8),(49)&7
	goto	u110_21
	goto	u110_20
u110_21:
	goto	i1l1095
u110_20:
	line	120
	
i1l4256:	
;BT06week12.c: 120: S1_state =2 ;
	movlw	(02h)
	movwf	(_S1_state)
	line	122
	
i1l1095:	
	line	123
;BT06week12.c: 121: }
;BT06week12.c: 122: }
;BT06week12.c: 123: TMR1H=246; TMR1L=60;
	movlw	(0F6h)
	movwf	(15)	;volatile
	movlw	(03Ch)
	movwf	(14)	;volatile
	line	124
	
i1l4258:	
;BT06week12.c: 124: if(TMR1IF)
	btfss	(96/8),(96)&7
	goto	u111_21
	goto	u111_20
u111_21:
	goto	i1l4268
u111_20:
	line	126
	
i1l4260:	
;BT06week12.c: 125: {
;BT06week12.c: 126: dem++;
	movlw	0x0
	movwf	(?___ftadd)
	movlw	0x80
	movwf	(?___ftadd+1)
	movlw	0x3f
	movwf	(?___ftadd+2)
	movf	(_dem),w
	movwf	0+(?___ftadd)+03h
	movf	(_dem+1),w
	movwf	1+(?___ftadd)+03h
	movf	(_dem+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_dem)
	movf	(1+(?___ftadd)),w
	movwf	(_dem+1)
	movf	(2+(?___ftadd)),w
	movwf	(_dem+2)
	line	127
	
i1l4262:	
;BT06week12.c: 127: if(dem == 2){dem= 0; ms=ms+1;}
	movlw	0x40
	xorwf	(_dem+2),w
	skipz
	goto	u112_25
	movlw	0x0
	xorwf	(_dem+1),w
	skipz
	goto	u112_25
	movlw	0x0
	xorwf	(_dem),w
u112_25:
	skipz
	goto	u112_21
	goto	u112_20
u112_21:
	goto	i1l4268
u112_20:
	
i1l4264:	
	clrf	(_dem)
	clrf	(_dem+1)
	clrf	(_dem+2)
	
i1l4266:	
	incf	(_ms),f
	skipnz
	incf	(_ms+1),f
	line	129
	
i1l4268:	
;BT06week12.c: 128: }
;BT06week12.c: 129: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	130
	
i1l1102:	
	movf	(??_ngat+3),w
	movwf	btemp+1
	movf	(??_ngat+2),w
	movwf	pclath
	movf	(??_ngat+1),w
	movwf	fsr0
	swapf	(??_ngat+0)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ngat
	__end_of_ngat:
;; =============== function _ngat ends ============

	signat	_ngat,88
	global	___ftadd
psect	text292,local,class=CODE,delta=2
global __ptext292
__ptext292:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMMON] float 
;;  f2              3   11[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1    5[BANK0 ] unsigned char 
;;  exp2            1    4[BANK0 ] unsigned char 
;;  sign            1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         6       6       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ngat
;; This function uses a non-reentrant model
;;
psect	text292
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
i1l4356:	
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(___ftadd@exp2)
	line	92
	
i1l4358:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u127_20
	goto	i1l4364
u127_20:
	
i1l4360:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u128_21
	goto	u128_20
u128_21:
	goto	i1l4368
u128_20:
	
i1l4362:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u129_21
	goto	u129_20
u129_21:
	goto	i1l4368
u129_20:
	line	93
	
i1l4364:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	i1l3297
	line	94
	
i1l4368:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u130_20
	goto	i1l3300
u130_20:
	
i1l4370:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u131_21
	goto	u131_20
u131_21:
	goto	i1l4374
u131_20:
	
i1l4372:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u132_21
	goto	u132_20
u132_21:
	goto	i1l4374
u132_20:
	
i1l3300:	
	line	95
	goto	i1l3297
	line	96
	
i1l4374:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
i1l4376:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u133_21
	goto	u133_20
u133_21:
	goto	i1l3301
u133_20:
	line	98
	
i1l4378:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
i1l3301:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u134_21
	goto	u134_20
u134_21:
	goto	i1l3302
u134_20:
	line	100
	
i1l4380:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
i1l3302:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
i1l4382:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
i1l4384:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u135_21
	goto	u135_20
u135_21:
	goto	i1l4396
u135_20:
	line	110
	
i1l4386:	
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
i1l4388:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u136_21
	goto	u136_20
u136_21:
	goto	i1l4394
u136_20:
	
i1l4390:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u137_21
	goto	u137_20
u137_21:
	goto	i1l4386
u137_20:
	goto	i1l4394
	line	114
	
i1l4392:	
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
i1l4394:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u138_21
	goto	u138_20
u138_21:
	goto	i1l4392
u138_20:
	goto	i1l3311
	line	117
	
i1l4396:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u139_21
	goto	u139_20
u139_21:
	goto	i1l3311
u139_20:
	line	121
	
i1l4398:	
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
i1l4400:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u140_21
	goto	u140_20
u140_21:
	goto	i1l4406
u140_20:
	
i1l4402:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u141_21
	goto	u141_20
u141_21:
	goto	i1l4398
u141_20:
	goto	i1l4406
	line	125
	
i1l4404:	
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
i1l4406:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u142_21
	goto	u142_20
u142_21:
	goto	i1l4404
u142_20:
	line	129
	
i1l3311:	
	btfss	(___ftadd@sign),(7)&7
	goto	u143_21
	goto	u143_20
u143_21:
	goto	i1l4412
u143_20:
	line	131
	
i1l4408:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
i1l4410:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
i1l4412:	
	btfss	(___ftadd@sign),(6)&7
	goto	u144_21
	goto	u144_20
u144_21:
	goto	i1l4418
u144_20:
	line	136
	
i1l4414:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
i1l4416:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
i1l4418:	
	clrf	(___ftadd@sign)
	line	140
	
i1l4420:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u145_21
	addwf	(___ftadd@f2+1),f
u145_21:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u145_22
	addwf	(___ftadd@f2+2),f
u145_22:

	line	141
	
i1l4422:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u146_21
	goto	u146_20
u146_21:
	goto	i1l4430
u146_20:
	line	142
	
i1l4424:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
i1l4426:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
i1l4428:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
i1l4430:	
	movf	(___ftadd@f2),w
	movwf	(?___ftpack)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftpack+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftpack+2)
	movf	(___ftadd@exp1),w
	movwf	0+(?___ftpack)+03h
	movf	(___ftadd@sign),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	line	148
	
i1l3297:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	___ftpack
psect	text293,local,class=CODE,delta=2
global __ptext293
__ptext293:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;; This function uses a non-reentrant model
;;
psect	text293
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
i1l4434:	
	movf	(___ftpack@exp),w
	skipz
	goto	u147_20
	goto	i1l4438
u147_20:
	
i1l4436:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u148_21
	goto	u148_20
u148_21:
	goto	i1l4444
u148_20:
	line	65
	
i1l4438:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	i1l3585
	line	67
	
i1l4442:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
i1l4444:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u149_21
	goto	u149_20
u149_21:
	goto	i1l4442
u149_20:
	goto	i1l4448
	line	71
	
i1l4446:	
	incf	(___ftpack@exp),f
	line	72
	incf	(___ftpack@arg),f
	skipnz
	incf	(___ftpack@arg+1),f
	skipnz
	incf	(___ftpack@arg+2),f
	line	73
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	70
	
i1l4448:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u150_21
	goto	u150_20
u150_21:
	goto	i1l4446
u150_20:
	goto	i1l4452
	line	76
	
i1l4450:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
i1l4452:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u151_21
	goto	u151_20
u151_21:
	goto	i1l4450
u151_20:
	
i1l3594:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u152_21
	goto	u152_20
u152_21:
	goto	i1l3595
u152_20:
	line	80
	
i1l4454:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
i1l3595:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
i1l4456:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0+2)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+0)
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
i1l4458:	
	movf	(___ftpack@sign),w
	skipz
	goto	u153_20
	goto	i1l3596
u153_20:
	line	84
	
i1l4460:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
i1l3596:	
	line	85
	line	86
	
i1l3585:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
psect	text294,local,class=CODE,delta=2
global __ptext294
__ptext294:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
