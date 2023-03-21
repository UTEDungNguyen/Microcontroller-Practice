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
# 9 "D:\TTVXL\Project TTVXL\BT03week11ttvxl\BT03week11ttvxl.c"
	psect config,class=CONFIG,delta=2 ;#
# 9 "D:\TTVXL\Project TTVXL\BT03week11ttvxl\BT03week11ttvxl.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_read_adc_AN0
	FNCALL	_main,_lcd_gotoxy
	FNCALL	_main,___fttol
	FNCALL	_main,_printf
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
	FNCALL	_lcd_gotoxy,_lcd_put_byte
	FNCALL	_lcd_gotoxy,_lcd_busy
	FNCALL	_lcd_init,_lcd_put_byte
	FNCALL	_lcd_init,_lcd_busy
	FNCALL	_read_adc_AN0,___awtoft
	FNCALL	_read_adc_AN0,___ftdiv
	FNCALL	_read_adc_AN0,___ftmul
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNROOT	_main
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
	global	_res1
	global	_adc1
	global	_ADRESH
_ADRESH	set	30
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
	global	_GO_nDONE
_GO_nDONE	set	249
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
	global	_ADRESL
_ADRESL	set	158
	global	_TRISD
_TRISD	set	136
	global	_ADFM
_ADFM	set	1279
	global	_TRISA0
_TRISA0	set	1064
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
	global	_VCFG0
_VCFG0	set	1276
	global	_VCFG1
_VCFG1	set	1277
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	global	_ANS0
_ANS0	set	3136
	
STR_1:	
	retlw	78	;'N'
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	51	;'3'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_2:	
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	55	;'7'
	retlw	100	;'d'
	retlw	45	;'-'
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	55	;'7'
	retlw	100	;'d'
	retlw	0
psect	strings
	file	"BT03week11ttvxl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_res1:
       ds      3

_adc1:
       ds      2

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
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
	global	?_lcd_put_byte
?_lcd_put_byte:	; 0 bytes @ 0x0
	global	??_lcd_busy
??_lcd_busy:	; 0 bytes @ 0x0
	global	?_isprint
?_isprint:	; 1 bit 
	global	??_isprint
??_isprint:	; 0 bytes @ 0x0
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x0
	global	?_read_adc_AN0
?_read_adc_AN0:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	?_lcd_busy
?_lcd_busy:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___fttol
?___fttol:	; 4 bytes @ 0x0
	global	lcd_put_byte@b
lcd_put_byte@b:	; 1 bytes @ 0x0
	global	_isdigit$3645
_isdigit$3645:	; 1 bytes @ 0x0
	global	_isprint$3648
_isprint$3648:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	??_lcd_put_byte
??_lcd_put_byte:	; 0 bytes @ 0x1
	global	lcd_busy@busy
lcd_busy@busy:	; 1 bytes @ 0x1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	global	isprint@c
isprint@c:	; 1 bytes @ 0x1
	ds	1
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	lcd_put_byte@rs
lcd_put_byte@rs:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___fttol
??___fttol:	; 0 bytes @ 0x4
	global	lcd_put_byte@temp
lcd_put_byte@temp:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
	global	?_lcd_gotoxy
?_lcd_gotoxy:	; 0 bytes @ 0x5
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	lcd_gotoxy@row
lcd_gotoxy@row:	; 1 bytes @ 0x5
	ds	1
	global	??_lcd_gotoxy
??_lcd_gotoxy:	; 0 bytes @ 0x6
	global	lcd_gotoxy@col
lcd_gotoxy@col:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x7
	global	lcd_gotoxy@address
lcd_gotoxy@address:	; 1 bytes @ 0x7
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x7
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x7
	ds	1
	global	??_lcd_putc
??_lcd_putc:	; 0 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	lcd_putc@c
lcd_putc@c:	; 1 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x8
	ds	1
	global	??_putch
??_putch:	; 0 bytes @ 0x9
	global	putch@c
putch@c:	; 1 bytes @ 0x9
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x9
	ds	2
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xB
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xB
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xB
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xB
	ds	1
	global	??_read_adc_AN0
??_read_adc_AN0:	; 0 bytes @ 0xC
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xC
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_printf
?_printf:	; 2 bytes @ 0x0
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x0
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x0
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x3
	ds	1
	global	??_printf
??_printf:	; 0 bytes @ 0x4
	ds	2
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x6
	ds	1
	global	printf@ap
printf@ap:	; 1 bytes @ 0x7
	ds	1
	global	printf@prec
printf@prec:	; 1 bytes @ 0x8
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x9
	global	printf@_val
printf@_val:	; 4 bytes @ 0x9
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0xA
	ds	3
	global	printf@flag
printf@flag:	; 1 bytes @ 0xD
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0xD
	ds	1
	global	printf@f
printf@f:	; 1 bytes @ 0xE
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0xE
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xF
	global	printf@width
printf@width:	; 2 bytes @ 0xF
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xF
	ds	2
	global	printf@c
printf@c:	; 1 bytes @ 0x11
	ds	1
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x12
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x15
	ds	3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x18
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x19
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1C
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1D
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x1E
	ds	2
;;Data sizes: Strings 25, constant 10, data 0, bss 5, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     32      37
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
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 15
;;		 -> STR_2(CODE[10]), STR_1(CODE[15]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(BANK0[2]), 
;;
;; S3127$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_read_adc_AN0
;;   _printf->___fttol
;;   _putch->_lcd_putc
;;   _lcd_putc->_lcd_gotoxy
;;   _lcd_gotoxy->_lcd_put_byte
;;   _lcd_init->_lcd_put_byte
;;   _read_adc_AN0->___awtoft
;;   ___awtoft->___ftpack
;;   ___ftmul->___awtoft
;;   ___ftdiv->___awtoft
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _read_adc_AN0->___ftmul
;;   ___ftmul->___ftdiv
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
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
;; (0) _main                                                 2     2      0    4074
;;                                             30 BANK0      2     2      0
;;                           _lcd_init
;;                       _read_adc_AN0
;;                         _lcd_gotoxy
;;                            ___fttol
;;                             _printf
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              18    14      4    1941
;;                                              0 BANK0     18    14      4
;;                              _putch
;;                            _isdigit
;;                             ___wmul
;;                            ___lwdiv
;;                            ___lwmod
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _putch                                                1     1      0     713
;;                                              9 COMMON     1     1      0
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (3) _lcd_putc                                             1     1      0     691
;;                                              8 COMMON     1     1      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;;                         _lcd_gotoxy
;;                            _isprint
;; ---------------------------------------------------------------------------------
;; (4) _lcd_gotoxy                                           3     2      1     313
;;                                              5 COMMON     3     2      1
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             4     4      0     244
;;                                              5 COMMON     3     3      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (1) _read_adc_AN0                                         2     2      0    1324
;;                                             12 COMMON     2     2      0
;;                           ___awtoft
;;                            ___ftdiv
;;                            ___ftmul
;; ---------------------------------------------------------------------------------
;; (2) ___awtoft                                             4     1      3     300
;;                                              8 COMMON     4     1      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             15     9      6     535
;;                                             15 BANK0     15     9      6
;;                           ___ftpack
;;                            ___ftdiv (ARG)
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftdiv                                             15     9      6     489
;;                                              0 BANK0     15     9      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (5) _lcd_busy                                             2     2      0      23
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (5) _lcd_put_byte                                         5     4      1     221
;;                                              0 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (1) ___fttol                                             13     9      4     252
;;                                              0 COMMON    13     9      4
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              5     1      4     159
;;                                              7 COMMON     5     1      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              7     3      4     162
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) _isdigit                                              2     2      0      68
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (4) _isprint                                              2     2      0      68
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_put_byte
;;     _lcd_busy
;;   _read_adc_AN0
;;     ___awtoft
;;       ___ftpack
;;     ___ftdiv
;;       ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;     ___ftmul
;;       ___ftpack
;;       ___ftdiv (ARG)
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;   _lcd_gotoxy
;;     _lcd_put_byte
;;     _lcd_busy
;;   ___fttol
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
;;     ___fttol (ARG)
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
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0      33       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     20      25       5       46.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      38      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 28 in file "D:\TTVXL\Project TTVXL\BT03week11ttvxl\BT03week11ttvxl.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_init
;;		_read_adc_AN0
;;		_lcd_gotoxy
;;		___fttol
;;		_printf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT03week11ttvxl\BT03week11ttvxl.c"
	line	28
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	29
	
l4707:	
;BT03week11ttvxl.c: 29: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	30
	
l4709:	
;BT03week11ttvxl.c: 30: lcd_init();
	fcall	_lcd_init
	line	32
	
l4711:	
;BT03week11ttvxl.c: 32: TRISD= 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	33
	
l4713:	
;BT03week11ttvxl.c: 33: TRISA0 = 1;
	bsf	(1064/8)^080h,(1064)&7
	line	34
	
l4715:	
;BT03week11ttvxl.c: 34: ANS0 = 1;
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3136/8)^0180h,(3136)&7
	line	37
	
l4717:	
;BT03week11ttvxl.c: 37: VCFG1 = 1;VCFG0 = 1;
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1277/8)^080h,(1277)&7
	
l4719:	
	bsf	(1276/8)^080h,(1276)&7
	line	38
	
l4721:	
;BT03week11ttvxl.c: 38: ADCS1 = 1; ADCS0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(255/8),(255)&7
	
l4723:	
	bcf	(254/8),(254)&7
	line	39
	
l4725:	
;BT03week11ttvxl.c: 39: ADFM = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1279/8)^080h,(1279)&7
	line	40
	
l4727:	
;BT03week11ttvxl.c: 40: ADON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(248/8),(248)&7
	line	41
	
l4729:	
;BT03week11ttvxl.c: 41: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u1817:
	decfsz	((??_main+0)+0),f
	goto	u1817
	decfsz	((??_main+0)+0+1),f
	goto	u1817
	nop2
opt asmopt_on

	line	45
	
l4731:	
;BT03week11ttvxl.c: 44: {
;BT03week11ttvxl.c: 45: read_adc_AN0();
	fcall	_read_adc_AN0
	line	46
	
l4733:	
;BT03week11ttvxl.c: 46: lcd_gotoxy(0,0);
	clrf	(?_lcd_gotoxy)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	47
	
l4735:	
;BT03week11ttvxl.c: 47: printf("Nhiet do: %03d",(int)res1);
	movf	(_res1),w
	movwf	(?___fttol)
	movf	(_res1+1),w
	movwf	(?___fttol+1)
	movf	(_res1+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	movwf	(?_printf+1)
	movf	0+(((0+(?___fttol)))),w
	movwf	(?_printf)
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	48
	
l4737:	
;BT03week11ttvxl.c: 48: lcd_gotoxy(0,1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	49
	
l4739:	
;BT03week11ttvxl.c: 49: printf("%07d-%07d",ADRESH,ADRESL);
	movf	(30),w	;volatile
	movwf	(?_printf)
	clrf	(?_printf+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?_printf)+02h
	clrf	1+(?_printf)+02h
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	goto	l4731
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	51
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_printf
psect	text308,local,class=CODE,delta=2
global __ptext308
__ptext308:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_2(10), STR_1(15), 
;; Auto vars:     Size  Location     Type
;;  f               1   14[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(10), STR_1(15), 
;;  _val            4    9[BANK0 ] struct .
;;  width           2   15[BANK0 ] int 
;;  c               1   17[BANK0 ] char 
;;  flag            1   13[BANK0 ] unsigned char 
;;  prec            1    8[BANK0 ] char 
;;  ap              1    7[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0      11       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      18       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_putch
;;		_isdigit
;;		___wmul
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text308
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 3
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	537
	movwf	(printf@f)
	
l4615:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)
	line	540
	goto	l4705
	line	542
	
l4617:	
	movf	(printf@c),w
	xorlw	025h
	skipnz
	goto	u1631
	goto	u1630
u1631:
	goto	l4621
u1630:
	line	545
	
l4619:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l4705
	line	550
	
l4621:	
	clrf	(printf@width)
	clrf	(printf@width+1)
	line	552
	clrf	(printf@flag)
	goto	l4627
	line	583
	
l2173:	
	line	584
	bsf	(printf@flag)+(2/8),(2)&7
	line	585
	
l4623:	
	incf	(printf@f),f
	line	555
	
l4627:	
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
	goto	l2173
	goto	l4629
	opt asmopt_on

	line	601
	
l4629:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u1641
	goto	u1640
u1641:
	goto	l4641
u1640:
	line	602
	
l4631:	
	clrf	(printf@width)
	clrf	(printf@width+1)
	line	604
	
l4633:	
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
	
l4635:	
	incf	(printf@f),f
	line	605
	
l4637:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u1651
	goto	u1650
u1651:
	goto	l4633
u1650:
	line	638
	
l4641:	
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
	goto	l2208
	xorlw	100^0	; case 100
	skipnz
	goto	l4643
	xorlw	105^100	; case 105
	skipnz
	goto	l4643
	goto	l4705
	opt asmopt_on

	line	1254
	
l4643:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@_val+1)
	
l4645:	
	incf	(printf@ap),f
	incf	(printf@ap),f
	line	1256
	
l4647:	
	btfss	(printf@_val+1),7
	goto	u1661
	goto	u1660
u1661:
	goto	l4653
u1660:
	line	1257
	
l4649:	
	movlw	(03h)
	iorwf	(printf@flag),f
	line	1258
	
l4651:	
	comf	(printf@_val),f
	comf	(printf@_val+1),f
	incf	(printf@_val),f
	skipnz
	incf	(printf@_val+1),f
	line	1300
	
l4653:	
	clrf	(printf@c)
	incf	(printf@c),f
	line	1301
	
l4657:	
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
	goto	u1675
	movf	0+(??_printf+0)+0,w
	subwf	(printf@_val),w
u1675:
	skipnc
	goto	u1671
	goto	u1670
u1671:
	goto	l4661
u1670:
	goto	l4665
	line	1300
	
l4661:	
	incf	(printf@c),f
	
l4663:	
	movf	(printf@c),w
	xorlw	05h
	skipz
	goto	u1681
	goto	u1680
u1681:
	goto	l4657
u1680:
	line	1340
	
l4665:	
	movf	(printf@width+1),w
	iorwf	(printf@width),w
	skipnz
	goto	u1691
	goto	u1690
u1691:
	goto	l4671
u1690:
	
l4667:	
	movf	(printf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1701
	goto	u1700
u1701:
	goto	l4671
u1700:
	line	1341
	
l4669:	
	movlw	-1
	addwf	(printf@width),f
	skipc
	decf	(printf@width+1),f
	line	1376
	
l4671:	
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
	goto	u1715
	movf	(printf@width),w
	subwf	0+(??_printf+0)+0,w
u1715:

	skipnc
	goto	u1711
	goto	u1710
u1711:
	goto	l4675
u1710:
	line	1377
	
l4673:	
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
	goto	l4677
	line	1379
	
l4675:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(printf@width)
	clrf	(printf@width+1)
	line	1382
	
l4677:	
	btfss	(printf@flag),(2)&7
	goto	u1721
	goto	u1720
u1721:
	goto	l4689
u1720:
	line	1387
	
l4679:	
	movf	(printf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1731
	goto	u1730
u1731:
	goto	l4683
u1730:
	line	1388
	
l4681:	
	movlw	(02Dh)
	fcall	_putch
	line	1410
	
l4683:	
	movf	(printf@width+1),w
	iorwf	(printf@width),w
	skipnz
	goto	u1741
	goto	u1740
u1741:
	goto	l4699
u1740:
	line	1412
	
l4685:	
	movlw	(030h)
	fcall	_putch
	line	1413
	
l4687:	
	movlw	-1
	addwf	(printf@width),f
	skipc
	decf	(printf@width+1),f
	movf	(((printf@width+1))),w
	iorwf	(((printf@width))),w
	skipz
	goto	u1751
	goto	u1750
u1751:
	goto	l4685
u1750:
	goto	l4699
	line	1423
	
l4689:	
	movf	(printf@width+1),w
	iorwf	(printf@width),w
	skipnz
	goto	u1761
	goto	u1760
u1761:
	goto	l4695
u1760:
	line	1425
	
l4691:	
	movlw	(020h)
	fcall	_putch
	line	1426
	
l4693:	
	movlw	-1
	addwf	(printf@width),f
	skipc
	decf	(printf@width+1),f
	movf	(((printf@width+1))),w
	iorwf	(((printf@width))),w
	skipz
	goto	u1771
	goto	u1770
u1771:
	goto	l4691
u1770:
	line	1433
	
l4695:	
	movf	(printf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1781
	goto	u1780
u1781:
	goto	l4699
u1780:
	line	1434
	
l4697:	
	movlw	(02Dh)
	fcall	_putch
	line	1467
	
l4699:	
	movf	(printf@c),w
	movwf	(printf@prec)
	line	1469
	goto	l4703
	line	1484
	
l4701:	
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
	
l4703:	
	decf	(printf@prec),f
	incf	((printf@prec)),w
	skipz
	goto	u1791
	goto	u1790
u1791:
	goto	l4701
u1790:
	line	540
	
l4705:	
	movf	(printf@f),w
	incf	(printf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
	movf	((printf@c)),f
	skipz
	goto	u1801
	goto	u1800
u1801:
	goto	l4617
u1800:
	line	1533
	
l2208:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_putch
psect	text309,local,class=CODE,delta=2
global __ptext309
__ptext309:

;; *************** function _putch *****************
;; Defined at:
;;		line 53 in file "D:\TTVXL\Project TTVXL\BT03week11ttvxl\BT03week11ttvxl.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    9[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_putc
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text309
	file	"D:\TTVXL\Project TTVXL\BT03week11ttvxl\BT03week11ttvxl.c"
	line	53
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 3
; Regs used in _putch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;putch@c stored from wreg
	movwf	(putch@c)
	line	54
	
l4613:	
;BT03week11ttvxl.c: 54: lcd_putc(c);
	movf	(putch@c),w
	fcall	_lcd_putc
	line	55
	
l1059:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_putc
psect	text310,local,class=CODE,delta=2
global __ptext310
__ptext310:

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 143 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    8[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;;		_lcd_gotoxy
;;		_isprint
;; This function is called by:
;;		_putch
;; This function uses a non-reentrant model
;;
psect	text310
	file	"D:\TTVXL\Library\lcd(16).c"
	line	143
	global	__size_of_lcd_putc
	__size_of_lcd_putc	equ	__end_of_lcd_putc-_lcd_putc
	
_lcd_putc:	
	opt	stack 3
; Regs used in _lcd_putc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_putc@c stored from wreg
	movwf	(lcd_putc@c)
	line	144
	
l4595:	
;lcd(16).c: 144: switch(c){
	goto	l4611
	line	146
	
l4597:	
;lcd(16).c: 146: lcd_put_byte(0, 1);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	147
;lcd(16).c: 147: while(lcd_busy());
	
l4599:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1601
	goto	u1600
u1601:
	goto	l4599
u1600:
	goto	l2141
	line	150
	
l4601:	
;lcd(16).c: 150: lcd_gotoxy(0, 1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	151
;lcd(16).c: 151: break;
	goto	l2141
	line	153
	
l4603:	
;lcd(16).c: 153: if(isprint(c)){
	movf	(lcd_putc@c),w
	fcall	_isprint
	btfss	status,0
	goto	u1611
	goto	u1610
u1611:
	goto	l2141
u1610:
	line	154
	
l4605:	
;lcd(16).c: 154: lcd_put_byte(1, c);
	movf	(lcd_putc@c),w
	movwf	(?_lcd_put_byte)
	movlw	(01h)
	fcall	_lcd_put_byte
	line	155
;lcd(16).c: 155: while(lcd_busy());
	
l4607:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1621
	goto	u1620
u1621:
	goto	l4607
u1620:
	goto	l2141
	line	144
	
l4611:	
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
	goto	l4601
	xorlw	12^10	; case 12
	skipnz
	goto	l4597
	goto	l4603
	opt asmopt_on

	line	159
	
l2141:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	_lcd_gotoxy
psect	text311,local,class=CODE,delta=2
global __ptext311
__ptext311:

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 162 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1    6[COMMON] unsigned char 
;;  address         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_main
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text311
	file	"D:\TTVXL\Library\lcd(16).c"
	line	162
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:	
	opt	stack 3
; Regs used in _lcd_gotoxy: [wreg+status,2+status,0+pclath+cstack]
;lcd_gotoxy@col stored from wreg
	line	165
	movwf	(lcd_gotoxy@col)
	
l4583:	
;lcd(16).c: 163: unsigned char address;
;lcd(16).c: 165: if(row!=0)
	movf	(lcd_gotoxy@row),w
	skipz
	goto	u1580
	goto	l4587
u1580:
	line	166
	
l4585:	
;lcd(16).c: 166: address=0x40;
	movlw	(040h)
	movwf	(lcd_gotoxy@address)
	goto	l4589
	line	168
	
l4587:	
;lcd(16).c: 167: else
;lcd(16).c: 168: address=0;
	clrf	(lcd_gotoxy@address)
	line	170
	
l4589:	
;lcd(16).c: 170: address += col;
	movf	(lcd_gotoxy@col),w
	addwf	(lcd_gotoxy@address),f
	line	171
	
l4591:	
;lcd(16).c: 171: lcd_put_byte(0,0x80|address);
	movf	(lcd_gotoxy@address),w
	iorlw	080h
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	172
;lcd(16).c: 172: while(lcd_busy());
	
l4593:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1591
	goto	u1590
u1591:
	goto	l4593
u1590:
	line	173
	
l2149:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
;; =============== function _lcd_gotoxy ends ============

	signat	_lcd_gotoxy,8312
	global	_lcd_init
psect	text312,local,class=CODE,delta=2
global __ptext312
__ptext312:

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
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text312
	file	"D:\TTVXL\Library\lcd(16).c"
	line	5
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 6
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l4545:	
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
	
l4547:	
;lcd(16).c: 18: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u1827:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1827
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1827
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1827
	nop2
opt asmopt_on

	line	21
	
l4549:	
;lcd(16).c: 21: lcd_put_byte(0,0x30);
	movlw	(030h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	22
	
l4551:	
;lcd(16).c: 22: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u1837:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1837
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1837
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1837
	nop2
opt asmopt_on

	line	23
;lcd(16).c: 23: lcd_put_byte(0,0x30);
	movlw	(030h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	24
	
l4553:	
;lcd(16).c: 24: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u1847:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1847
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1847
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1847
	nop2
opt asmopt_on

	line	25
	
l4555:	
;lcd(16).c: 25: lcd_put_byte(0,0x32);
	movlw	(032h)
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
u1857:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1857
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1857
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1857
	nop2
opt asmopt_on

	line	27
;lcd(16).c: 27: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u1867:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1867
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1867
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1867
	nop2
opt asmopt_on

	line	28
;lcd(16).c: 28: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u1877:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1877
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1877
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1877
	nop2
opt asmopt_on

	line	30
;lcd(16).c: 30: while(lcd_busy());
	
l4557:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1511
	goto	u1510
u1511:
	goto	l4557
u1510:
	line	31
	
l4559:	
;lcd(16).c: 31: lcd_put_byte(0,0b00101100 & 0b00111000);
	movlw	(028h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	32
;lcd(16).c: 32: while(lcd_busy());
	
l4561:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1521
	goto	u1520
u1521:
	goto	l4561
u1520:
	line	34
	
l4563:	
;lcd(16).c: 34: lcd_put_byte(0,0b00001011&0b00001101&0b00001110);
	movlw	(08h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	35
;lcd(16).c: 35: while(lcd_busy());
	
l4565:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1531
	goto	u1530
u1531:
	goto	l4565
u1530:
	line	36
	
l4567:	
;lcd(16).c: 36: lcd_put_byte(0,0b00001111&0b00001101&0b00001110);
	movlw	(0Ch)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	37
;lcd(16).c: 37: while(lcd_busy());
	
l4569:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1541
	goto	u1540
u1541:
	goto	l4569
u1540:
	line	39
	
l4571:	
;lcd(16).c: 39: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	40
;lcd(16).c: 40: while(lcd_busy());
	
l4573:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1551
	goto	u1550
u1551:
	goto	l4573
u1550:
	line	41
	
l4575:	
;lcd(16).c: 41: lcd_put_byte(0,0b00000100);
	movlw	(04h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	42
;lcd(16).c: 42: while(lcd_busy());
	
l4577:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1561
	goto	u1560
u1561:
	goto	l4577
u1560:
	line	43
	
l4579:	
;lcd(16).c: 43: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	44
;lcd(16).c: 44: while(lcd_busy());
	
l4581:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1571
	goto	u1570
u1571:
	goto	l4581
u1570:
	line	45
	
l2115:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_read_adc_AN0
psect	text313,local,class=CODE,delta=2
global __ptext313
__ptext313:

;; *************** function _read_adc_AN0 *****************
;; Defined at:
;;		line 18 in file "D:\TTVXL\Project TTVXL\BT03week11ttvxl\BT03week11ttvxl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text313
	file	"D:\TTVXL\Project TTVXL\BT03week11ttvxl\BT03week11ttvxl.c"
	line	18
	global	__size_of_read_adc_AN0
	__size_of_read_adc_AN0	equ	__end_of_read_adc_AN0-_read_adc_AN0
	
_read_adc_AN0:	
	opt	stack 5
; Regs used in _read_adc_AN0: [wreg+status,2+status,0+pclath+cstack]
	line	19
	
l4535:	
;BT03week11ttvxl.c: 19: CHS3 = 0; CHS2 = 0;CHS1 =0;CHS0 =0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	bcf	(252/8),(252)&7
	bcf	(251/8),(251)&7
	bcf	(250/8),(250)&7
	line	20
	
l4537:	
;BT03week11ttvxl.c: 20: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_read_adc_AN0+0)+0+1),f
	movlw	251
movwf	((??_read_adc_AN0+0)+0),f
u1887:
	decfsz	((??_read_adc_AN0+0)+0),f
	goto	u1887
	decfsz	((??_read_adc_AN0+0)+0+1),f
	goto	u1887
	nop2
opt asmopt_on

	line	21
	
l4539:	
;BT03week11ttvxl.c: 21: GO_nDONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	22
;BT03week11ttvxl.c: 22: while(GO_nDONE == 1){}
	
l1047:	
	btfsc	(249/8),(249)&7
	goto	u1501
	goto	u1500
u1501:
	goto	l1047
u1500:
	line	23
	
l4541:	
;BT03week11ttvxl.c: 23: adc1 = ADRESH * 256 + ADRESL;
	movf	(30),w	;volatile
	movwf	(_adc1+1)
	clrf	(_adc1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	addwf	(_adc1),f
	skipnc
	incf	(_adc1+1),f
	line	24
	
l4543:	
;BT03week11ttvxl.c: 24: res1 = (adc1/1023.0)*500.0;
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0xfa
	movwf	(?___ftmul+1)
	movlw	0x43
	movwf	(?___ftmul+2)
	movlw	0xc0
	movwf	(?___ftdiv)
	movlw	0x7f
	movwf	(?___ftdiv+1)
	movlw	0x44
	movwf	(?___ftdiv+2)
	movf	(_adc1+1),w
	movwf	(?___awtoft+1)
	movf	(_adc1),w
	movwf	(?___awtoft)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?___awtoft)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?___awtoft)),w
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_res1)
	movf	(1+(?___ftmul)),w
	movwf	(_res1+1)
	movf	(2+(?___ftmul)),w
	movwf	(_res1+2)
	line	25
	
l1050:	
	return
	opt stack 0
GLOBAL	__end_of_read_adc_AN0
	__end_of_read_adc_AN0:
;; =============== function _read_adc_AN0 ends ============

	signat	_read_adc_AN0,88
	global	___awtoft
psect	text314,local,class=CODE,delta=2
global __ptext314
__ptext314:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_read_adc_AN0
;; This function uses a non-reentrant model
;;
psect	text314
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l4523:	
	clrf	(___awtoft@sign)
	line	37
	
l4525:	
	btfss	(___awtoft@c+1),7
	goto	u1491
	goto	u1490
u1491:
	goto	l4531
u1490:
	line	38
	
l4527:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l4529:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l4531:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	line	42
	
l3344:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text315,local,class=CODE,delta=2
global __ptext315
__ptext315:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   15[BANK0 ] float 
;;  f2              3   18[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   25[BANK0 ] unsigned um
;;  sign            1   29[BANK0 ] unsigned char 
;;  cntr            1   28[BANK0 ] unsigned char 
;;  exp             1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   15[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_read_adc_AN0
;; This function uses a non-reentrant model
;;
psect	text315
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l4467:	
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u1411
	goto	u1410
u1411:
	goto	l4473
u1410:
	line	57
	
l4469:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l3306
	line	58
	
l4473:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u1421
	goto	u1420
u1421:
	goto	l4479
u1420:
	line	59
	
l4475:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l3306
	line	60
	
l4479:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l4481:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l4483:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l4485:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l4487:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l4489:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l4491:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l4493:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l4495:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l4497:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1431
	goto	u1430
u1431:
	goto	l4501
u1430:
	line	72
	
l4499:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1441
	addwf	(___ftmul@f3_as_product+1),f
u1441:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1442
	addwf	(___ftmul@f3_as_product+2),f
u1442:

	line	73
	
l4501:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l4503:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l4505:	
	decfsz	(___ftmul@cntr),f
	goto	u1451
	goto	u1450
u1451:
	goto	l4497
u1450:
	line	76
	
l4507:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l4509:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1461
	goto	u1460
u1461:
	goto	l4513
u1460:
	line	79
	
l4511:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1471
	addwf	(___ftmul@f3_as_product+1),f
u1471:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1472
	addwf	(___ftmul@f3_as_product+2),f
u1472:

	line	80
	
l4513:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l4515:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l4517:	
	decfsz	(___ftmul@cntr),f
	goto	u1481
	goto	u1480
u1481:
	goto	l4509
u1480:
	line	83
	
l4519:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	line	84
	
l3306:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text316,local,class=CODE,delta=2
global __ptext316
__ptext316:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    0[BANK0 ] float 
;;  f1              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   10[BANK0 ] float 
;;  sign            1   14[BANK0 ] unsigned char 
;;  exp             1   13[BANK0 ] unsigned char 
;;  cntr            1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_read_adc_AN0
;; This function uses a non-reentrant model
;;
psect	text316
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l4423:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u1371
	goto	u1370
u1371:
	goto	l4429
u1370:
	line	56
	
l4425:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l3296
	line	57
	
l4429:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u1381
	goto	u1380
u1381:
	goto	l3297
u1380:
	line	58
	
l4431:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l3296
	
l3297:	
	line	59
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	60
	
l4435:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l4437:	
	movf	0+(((___ftdiv@f1))+2),w
	movwf	(___ftdiv@sign)
	line	62
	
l4439:	
	movf	0+(((___ftdiv@f2))+2),w
	xorwf	(___ftdiv@sign),f
	line	63
	
l4441:	
	movlw	(080h)
	andwf	(___ftdiv@sign),f
	line	64
	
l4443:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	
l4445:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l4447:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	
l4449:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	
l4451:	
	movlw	(018h)
	movwf	(___ftdiv@cntr)
	line	70
	
l4453:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	71
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u1395
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u1395
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u1395:
	skipc
	goto	u1391
	goto	u1390
u1391:
	goto	l4459
u1390:
	line	72
	
l4455:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l4457:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	75
	
l4459:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	76
	
l4461:	
	decfsz	(___ftdiv@cntr),f
	goto	u1401
	goto	u1400
u1401:
	goto	l4453
u1400:
	line	77
	
l4463:	
	movf	(___ftdiv@f3),w
	movwf	(?___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	0+(?___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	line	78
	
l3296:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	_lcd_busy
psect	text317,local,class=CODE,delta=2
global __ptext317
__ptext317:

;; *************** function _lcd_busy *****************
;; Defined at:
;;		line 47 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  busy            1    1[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;;		_lcd_putc
;;		_lcd_gotoxy
;; This function uses a non-reentrant model
;;
psect	text317
	file	"D:\TTVXL\Library\lcd(16).c"
	line	47
	global	__size_of_lcd_busy
	__size_of_lcd_busy	equ	__end_of_lcd_busy-_lcd_busy
	
_lcd_busy:	
	opt	stack 3
; Regs used in _lcd_busy: [wreg]
	line	50
	
l4409:	
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
	
l4411:	
;lcd(16).c: 57: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u1897:
decfsz	(??_lcd_busy+0)+0,f
	goto	u1897
opt asmopt_on

	line	58
	
l4413:	
;lcd(16).c: 58: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	59
;lcd(16).c: 59: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u1907:
decfsz	(??_lcd_busy+0)+0,f
	goto	u1907
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
	
l4415:	
;lcd(16).c: 63: RD3 = 0;
	bcf	(67/8),(67)&7
	line	64
;lcd(16).c: 64: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u1917:
decfsz	(??_lcd_busy+0)+0,f
	goto	u1917
opt asmopt_on

	line	65
	
l4417:	
;lcd(16).c: 65: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	66
;lcd(16).c: 66: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u1927:
decfsz	(??_lcd_busy+0)+0,f
	goto	u1927
opt asmopt_on

	line	67
	
l4419:	
;lcd(16).c: 67: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	70
;lcd(16).c: 70: return busy;
	movf	(lcd_busy@busy),w
	line	71
	
l2118:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_busy
	__end_of_lcd_busy:
;; =============== function _lcd_busy ends ============

	signat	_lcd_busy,89
	global	_lcd_put_byte
psect	text318,local,class=CODE,delta=2
global __ptext318
__ptext318:

;; *************** function _lcd_put_byte *****************
;; Defined at:
;;		line 106 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  rs              1    wreg     unsigned char 
;;  b               1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rs              1    3[COMMON] unsigned char 
;;  temp            1    4[COMMON] struct _BYTE_VAL
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;;		_lcd_putc
;;		_lcd_gotoxy
;; This function uses a non-reentrant model
;;
psect	text318
	file	"D:\TTVXL\Library\lcd(16).c"
	line	106
	global	__size_of_lcd_put_byte
	__size_of_lcd_put_byte	equ	__end_of_lcd_put_byte-_lcd_put_byte
	
_lcd_put_byte:	
	opt	stack 3
; Regs used in _lcd_put_byte: [wreg+status,2+status,0]
;lcd_put_byte@rs stored from wreg
	line	109
	movwf	(lcd_put_byte@rs)
	
l4373:	
;lcd(16).c: 107: BYTE_VAL temp;
;lcd(16).c: 109: TRISD4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
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
	
l4375:	
;lcd(16).c: 115: if(rs) RD1 = 1;
	movf	(lcd_put_byte@rs),w
	skipz
	goto	u1200
	goto	l4379
u1200:
	
l4377:	
	bsf	(65/8),(65)&7
	line	117
	
l4379:	
;lcd(16).c: 117: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1937:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1937
opt asmopt_on

	line	118
	
l4381:	
;lcd(16).c: 118: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	119
;lcd(16).c: 119: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1947:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1947
opt asmopt_on

	line	120
	
l4383:	
;lcd(16).c: 120: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	122
;lcd(16).c: 122: temp.Val = b;
	movf	(lcd_put_byte@b),w
	movwf	(lcd_put_byte@temp)
	line	125
	
l4385:	
;lcd(16).c: 125: RD4 = temp.bits.b4;
	swapf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u1211
	goto	u1210
	
u1211:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u1224
u1210:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u1224:
	line	126
	
l4387:	
;lcd(16).c: 126: RD5 = temp.bits.b5;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u1231
	goto	u1230
	
u1231:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u1244
u1230:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u1244:
	line	127
	
l4389:	
;lcd(16).c: 127: RD6 = temp.bits.b6;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u1251
	goto	u1250
	
u1251:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u1264
u1250:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u1264:
	line	128
	
l4391:	
;lcd(16).c: 128: RD7 = temp.bits.b7;
	rlf	(lcd_put_byte@temp),w
	rlf	(lcd_put_byte@temp),w
	andlw	1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u1271
	goto	u1270
	
u1271:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u1284
u1270:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u1284:
	line	129
;lcd(16).c: 129: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1957:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1957
opt asmopt_on

	line	130
	
l4393:	
;lcd(16).c: 130: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	131
;lcd(16).c: 131: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1967:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1967
opt asmopt_on

	line	132
	
l4395:	
;lcd(16).c: 132: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	134
	
l4397:	
;lcd(16).c: 134: RD4 = temp.bits.b0;
	movf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u1291
	goto	u1290
	
u1291:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u1304
u1290:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u1304:
	line	135
	
l4399:	
;lcd(16).c: 135: RD5 = temp.bits.b1;
	rrf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u1311
	goto	u1310
	
u1311:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u1324
u1310:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u1324:
	line	136
	
l4401:	
;lcd(16).c: 136: RD6 = temp.bits.b2;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u1331
	goto	u1330
	
u1331:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u1344
u1330:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u1344:
	line	137
	
l4403:	
;lcd(16).c: 137: RD7 = temp.bits.b3;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u1351
	goto	u1350
	
u1351:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u1364
u1350:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u1364:
	line	138
;lcd(16).c: 138: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1977:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1977
opt asmopt_on

	line	139
	
l4405:	
;lcd(16).c: 139: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	140
;lcd(16).c: 140: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1987:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1987
opt asmopt_on

	line	141
	
l4407:	
;lcd(16).c: 141: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	142
	
l2126:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_put_byte
	__end_of_lcd_put_byte:
;; =============== function _lcd_put_byte ends ============

	signat	_lcd_put_byte,8312
	global	___fttol
psect	text319,local,class=CODE,delta=2
global __ptext319
__ptext319:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    8[COMMON] unsigned long 
;;  exp1            1   12[COMMON] unsigned char 
;;  sign1           1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         6       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:        13       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text319
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 7
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l4335:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u1121
	goto	u1120
u1121:
	goto	l4339
u1120:
	line	50
	
l4337:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l3317
	line	51
	
l4339:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u1135:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u1130:
	addlw	-1
	skipz
	goto	u1135
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l4341:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l4343:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l4345:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l4347:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l4349:	
	btfss	(___fttol@exp1),7
	goto	u1141
	goto	u1140
u1141:
	goto	l4359
u1140:
	line	57
	
l4351:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u1151
	goto	u1150
u1151:
	goto	l4355
u1150:
	goto	l4337
	line	60
	
l4355:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l4357:	
	incfsz	(___fttol@exp1),f
	goto	u1161
	goto	u1160
u1161:
	goto	l4355
u1160:
	goto	l4365
	line	63
	
l4359:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u1171
	goto	u1170
u1171:
	goto	l3324
u1170:
	goto	l4337
	line	66
	
l4363:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l3324:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u1181
	goto	u1180
u1181:
	goto	l4363
u1180:
	line	70
	
l4365:	
	movf	(___fttol@sign1),w
	skipz
	goto	u1190
	goto	l4369
u1190:
	line	71
	
l4367:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	line	72
	
l4369:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l3317:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text320,local,class=CODE,delta=2
global __ptext320
__ptext320:

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
;;		___ftdiv
;;		___ftmul
;;		___awtoft
;; This function uses a non-reentrant model
;;
psect	text320
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l4307:	
	movf	(___ftpack@exp),w
	skipz
	goto	u1050
	goto	l4311
u1050:
	
l4309:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1061
	goto	u1060
u1061:
	goto	l4317
u1060:
	line	65
	
l4311:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l3542
	line	67
	
l4315:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l4317:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1071
	goto	u1070
u1071:
	goto	l4315
u1070:
	goto	l4321
	line	71
	
l4319:	
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
	
l4321:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1081
	goto	u1080
u1081:
	goto	l4319
u1080:
	goto	l4325
	line	76
	
l4323:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l4325:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u1091
	goto	u1090
u1091:
	goto	l4323
u1090:
	
l3551:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1101
	goto	u1100
u1101:
	goto	l3552
u1100:
	line	80
	
l4327:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l3552:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l4329:	
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
	
l4331:	
	movf	(___ftpack@sign),w
	skipz
	goto	u1110
	goto	l3553
u1110:
	line	84
	
l4333:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l3553:	
	line	85
	line	86
	
l3542:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lwmod
psect	text321,local,class=CODE,delta=2
global __ptext321
__ptext321:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[COMMON] unsigned int 
;;  dividend        2    9[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text321
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l4287:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u1011
	goto	u1010
u1011:
	goto	l4303
u1010:
	line	9
	
l4289:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l4293
	line	11
	
l4291:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l4293:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u1021
	goto	u1020
u1021:
	goto	l4291
u1020:
	line	15
	
l4295:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u1035
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u1035:
	skipc
	goto	u1031
	goto	u1030
u1031:
	goto	l4299
u1030:
	line	16
	
l4297:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l4299:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l4301:	
	decfsz	(___lwmod@counter),f
	goto	u1041
	goto	u1040
u1041:
	goto	l4295
u1040:
	line	20
	
l4303:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l3230:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text322,local,class=CODE,delta=2
global __ptext322
__ptext322:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[COMMON] unsigned int 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text322
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l4261:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l4263:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u971
	goto	u970
u971:
	goto	l4283
u970:
	line	11
	
l4265:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l4269
	line	13
	
l4267:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l4269:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u981
	goto	u980
u981:
	goto	l4267
u980:
	line	17
	
l4271:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l4273:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u995
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u995:
	skipc
	goto	u991
	goto	u990
u991:
	goto	l4279
u990:
	line	19
	
l4275:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l4277:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l4279:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l4281:	
	decfsz	(___lwdiv@counter),f
	goto	u1001
	goto	u1000
u1001:
	goto	l4271
u1000:
	line	25
	
l4283:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l3220:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text323,local,class=CODE,delta=2
global __ptext323
__ptext323:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text323
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l4245:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l4247:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u951
	goto	u950
u951:
	goto	l4251
u950:
	line	8
	
l4249:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l4251:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l4253:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l4255:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u961
	goto	u960
u961:
	goto	l4247
u960:
	line	12
	
l4257:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l3210:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_isdigit
psect	text324,local,class=CODE,delta=2
global __ptext324
__ptext324:

;; *************** function _isdigit *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[COMMON] unsigned char 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text324
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 6
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l4233:	
	clrf	(_isdigit$3645)
	
l4235:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u931
	goto	u930
u931:
	goto	l4241
u930:
	
l4237:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u941
	goto	u940
u941:
	goto	l4241
u940:
	
l4239:	
	clrf	(_isdigit$3645)
	incf	(_isdigit$3645),f
	
l4241:	
	rrf	(_isdigit$3645),w
	
	line	15
	
l3193:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_isprint
psect	text325,local,class=CODE,delta=2
global __ptext325
__ptext325:

;; *************** function _isprint *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isprint.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[COMMON] unsigned char 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text325
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isprint.c"
	line	13
	global	__size_of_isprint
	__size_of_isprint	equ	__end_of_isprint-_isprint
	
_isprint:	
	opt	stack 4
; Regs used in _isprint: [wreg+status,2+status,0]
;isprint@c stored from wreg
	movwf	(isprint@c)
	line	14
	
l4221:	
	clrf	(_isprint$3648)
	
l4223:	
	movlw	(07Fh)
	subwf	(isprint@c),w
	skipnc
	goto	u911
	goto	u910
u911:
	goto	l4229
u910:
	
l4225:	
	movlw	(020h)
	subwf	(isprint@c),w
	skipc
	goto	u921
	goto	u920
u921:
	goto	l4229
u920:
	
l4227:	
	clrf	(_isprint$3648)
	incf	(_isprint$3648),f
	
l4229:	
	rrf	(_isprint$3648),w
	
	line	15
	
l3198:	
	return
	opt stack 0
GLOBAL	__end_of_isprint
	__end_of_isprint:
;; =============== function _isprint ends ============

	signat	_isprint,4216
psect	text326,local,class=CODE,delta=2
global __ptext326
__ptext326:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
