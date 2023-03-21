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
# 8 "D:\TTVXL\Project TTVXL\BT01week16ttvxlbuoi1\BT01week16ttvxlbuoi1.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "D:\TTVXL\Project TTVXL\BT01week16ttvxlbuoi1\BT01week16ttvxlbuoi1.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_pwm_10bit
	FNCALL	_main,_tx
	FNCALL	_main,_rx
	FNCALL	_main,_atoi
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftmul
	FNCALL	_main,_lcd_gotoxy
	FNCALL	_main,_printf
	FNCALL	_printf,_putch
	FNCALL	_printf,_isdigit
	FNCALL	_printf,___wmul
	FNCALL	_printf,___ftge
	FNCALL	_printf,___ftneg
	FNCALL	_printf,___awdiv
	FNCALL	_printf,_scale
	FNCALL	_printf,___ftmul
	FNCALL	_printf,_fround
	FNCALL	_printf,___ftadd
	FNCALL	_printf,___fttol
	FNCALL	_printf,__div_to_l_
	FNCALL	_printf,__tdiv_to_l_
	FNCALL	_printf,___lltoft
	FNCALL	_printf,___ftsub
	FNCALL	_printf,___lldiv
	FNCALL	_printf,___llmod
	FNCALL	_putch,_lcd_putc
	FNCALL	_lcd_putc,_lcd_put_byte
	FNCALL	_lcd_putc,_lcd_busy
	FNCALL	_lcd_putc,_lcd_gotoxy
	FNCALL	_lcd_putc,_isprint
	FNCALL	___ftsub,___ftadd
	FNCALL	_scale,___awmod
	FNCALL	_scale,___awdiv
	FNCALL	_scale,___ftmul
	FNCALL	_scale,___bmul
	FNCALL	_fround,___lbmod
	FNCALL	_fround,___bmul
	FNCALL	_fround,___lbdiv
	FNCALL	_fround,___ftmul
	FNCALL	_lcd_gotoxy,_lcd_put_byte
	FNCALL	_lcd_gotoxy,_lcd_busy
	FNCALL	_lcd_init,_lcd_put_byte
	FNCALL	_lcd_init,_lcd_busy
	FNCALL	___lltoft,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_atoi,___wmul
	FNCALL	_atoi,_isdigit
	FNCALL	_pwm_10bit,___awdiv
	FNROOT	_main
	FNCALL	intlevel1,_ngat
	global	intlevel1
	FNROOT	intlevel1
	global	__npowers_
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
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\powers.c"
	line	39
__npowers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0xcd
	retlw	0xcc
	retlw	0x3d

	retlw	0xd7
	retlw	0x23
	retlw	0x3c

	retlw	0x12
	retlw	0x83
	retlw	0x3a

	retlw	0xb7
	retlw	0xd1
	retlw	0x38

	retlw	0xc6
	retlw	0x27
	retlw	0x37

	retlw	0x38
	retlw	0x86
	retlw	0x35

	retlw	0xc0
	retlw	0xd6
	retlw	0x33

	retlw	0xcc
	retlw	0x2b
	retlw	0x32

	retlw	0x70
	retlw	0x89
	retlw	0x30

	retlw	0xe7
	retlw	0xdb
	retlw	0x2e

	retlw	0xe5
	retlw	0x3c
	retlw	0x1e

	retlw	0x42
	retlw	0xa2
	retlw	0xd

	global	__powers_
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\powers.c"
	line	7
__powers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0x0
	retlw	0x20
	retlw	0x41

	retlw	0x0
	retlw	0xc8
	retlw	0x42

	retlw	0x0
	retlw	0x7a
	retlw	0x44

	retlw	0x40
	retlw	0x1c
	retlw	0x46

	retlw	0x50
	retlw	0xc3
	retlw	0x47

	retlw	0x24
	retlw	0x74
	retlw	0x49

	retlw	0x97
	retlw	0x18
	retlw	0x4b

	retlw	0xbc
	retlw	0xbe
	retlw	0x4c

	retlw	0x6b
	retlw	0x6e
	retlw	0x4e

	retlw	0x3
	retlw	0x15
	retlw	0x50

	retlw	0x79
	retlw	0xad
	retlw	0x60

	retlw	0xf3
	retlw	0x49
	retlw	0x71

	global	_dpowers
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0
	retlw	0
	retlw	0

	retlw	0Ah
	retlw	0
	retlw	0
	retlw	0

	retlw	064h
	retlw	0
	retlw	0
	retlw	0

	retlw	0E8h
	retlw	03h
	retlw	0
	retlw	0

	retlw	010h
	retlw	027h
	retlw	0
	retlw	0

	retlw	0A0h
	retlw	086h
	retlw	01h
	retlw	0

	retlw	040h
	retlw	042h
	retlw	0Fh
	retlw	0

	retlw	080h
	retlw	096h
	retlw	098h
	retlw	0

	retlw	0
	retlw	0E1h
	retlw	0F5h
	retlw	05h

	retlw	0
	retlw	0CAh
	retlw	09Ah
	retlw	03Bh

	global	__npowers_
	global	__powers_
	global	_dpowers
	global	_dem
	global	_pwm_t
	global	_a
	global	_data_rx
	global	_v
	global	_xung
	global	_TMR1
_TMR1	set	14
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_RCREG
_RCREG	set	26
	global	_TMR0
_TMR0	set	1
	global	_TMR2
_TMR2	set	17
	global	_CREN
_CREN	set	196
	global	_DC1B0
_DC1B0	set	188
	global	_DC1B1
_DC1B1	set	189
	global	_GIE
_GIE	set	95
	global	_INTE
_INTE	set	92
	global	_INTF
_INTF	set	89
	global	_PEIE
_PEIE	set	94
	global	_RCIF
_RCIF	set	101
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
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_RX9
_RX9	set	198
	global	_SPEN
_SPEN	set	199
	global	_T0IE
_T0IE	set	93
	global	_T0IF
_T0IF	set	90
	global	_T1CKPS0
_T1CKPS0	set	132
	global	_T1CKPS1
_T1CKPS1	set	133
	global	_T1SYNC
_T1SYNC	set	130
	global	_T2CKPS0
_T2CKPS0	set	144
	global	_T2CKPS1
_T2CKPS1	set	145
	global	_TMR1CS
_TMR1CS	set	129
	global	_TMR1GE
_TMR1GE	set	134
	global	_TMR1ON
_TMR1ON	set	128
	global	_TMR2ON
_TMR2ON	set	146
	global	_PR2
_PR2	set	146
	global	_SPBRG
_SPBRG	set	153
	global	_SPBRGH
_SPBRGH	set	154
	global	_WPUB
_WPUB	set	149
	global	_BRGH
_BRGH	set	1218
	global	_PS0
_PS0	set	1032
	global	_PS1
_PS1	set	1033
	global	_PS2
_PS2	set	1034
	global	_PSA
_PSA	set	1035
	global	_RCIE
_RCIE	set	1125
	global	_SYNC
_SYNC	set	1220
	global	_T0CS
_T0CS	set	1037
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISC2
_TRISC2	set	1082
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
	global	_TRISE1
_TRISE1	set	1097
	global	_TRISE2
_TRISE2	set	1098
	global	_TX9
_TX9	set	1222
	global	_TXEN
_TXEN	set	1221
	global	_nRBPU
_nRBPU	set	1039
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	global	_BRG16
_BRG16	set	3131
	
STR_2:	
	retlw	120	;'x'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	53	;'5'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_1:	
	retlw	118	;'v'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	51	;'3'
	retlw	46	;'.'
	retlw	50	;'2'
	retlw	102	;'f'
	retlw	0
psect	strings
	file	"BT01week16ttvxlbuoi1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_a:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_dem:
       ds      2

_pwm_t:
       ds      2

_xung:
       ds      2

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_data_rx:
       ds      10

_v:
       ds      3

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	bsf	status, 5	;RP0=1, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
	clrf	((__pbssBANK1)+2)&07Fh
	clrf	((__pbssBANK1)+3)&07Fh
	clrf	((__pbssBANK1)+4)&07Fh
	clrf	((__pbssBANK1)+5)&07Fh
	clrf	((__pbssBANK1)+6)&07Fh
	clrf	((__pbssBANK1)+7)&07Fh
	clrf	((__pbssBANK1)+8)&07Fh
	clrf	((__pbssBANK1)+9)&07Fh
	clrf	((__pbssBANK1)+10)&07Fh
	clrf	((__pbssBANK1)+11)&07Fh
	clrf	((__pbssBANK1)+12)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	_printf$3184
_printf$3184:	; 4 bytes @ 0x0
	ds	4
	global	printf@ap
printf@ap:	; 1 bytes @ 0x4
	ds	1
	global	printf@integ
printf@integ:	; 3 bytes @ 0x5
	ds	3
	global	printf@f
printf@f:	; 1 bytes @ 0x8
	ds	1
	global	printf@_val
printf@_val:	; 4 bytes @ 0x9
	ds	4
	global	printf@flag
printf@flag:	; 2 bytes @ 0xD
	ds	2
	global	printf@exp
printf@exp:	; 2 bytes @ 0xF
	ds	2
	global	printf@width
printf@width:	; 2 bytes @ 0x11
	ds	2
	global	printf@fval
printf@fval:	; 3 bytes @ 0x13
	ds	3
	global	printf@prec
printf@prec:	; 2 bytes @ 0x16
	ds	2
	global	printf@c
printf@c:	; 1 bytes @ 0x18
	ds	1
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_isprint
?_isprint:	; 1 bit 
	global	?_tx
?_tx:	; 0 bytes @ 0x0
	global	?_rx
?_rx:	; 0 bytes @ 0x0
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_putc
?_lcd_putc:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ngat
?_ngat:	; 0 bytes @ 0x0
	global	??_ngat
??_ngat:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	?_lcd_busy
?_lcd_busy:	; 1 bytes @ 0x0
	ds	3
	global	?_lcd_put_byte
?_lcd_put_byte:	; 0 bytes @ 0x3
	global	??_lcd_busy
??_lcd_busy:	; 0 bytes @ 0x3
	global	??_isprint
??_isprint:	; 0 bytes @ 0x3
	global	??_tx
??_tx:	; 0 bytes @ 0x3
	global	??_rx
??_rx:	; 0 bytes @ 0x3
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x3
	global	?___ftge
?___ftge:	; 1 bit 
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0x3
	global	?___lbmod
?___lbmod:	; 1 bytes @ 0x3
	global	?___wmul
?___wmul:	; 2 bytes @ 0x3
	global	?___awmod
?___awmod:	; 2 bytes @ 0x3
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x3
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x3
	global	?__tdiv_to_l_
?__tdiv_to_l_:	; 4 bytes @ 0x3
	global	?__div_to_l_
?__div_to_l_:	; 4 bytes @ 0x3
	global	lcd_put_byte@b
lcd_put_byte@b:	; 1 bytes @ 0x3
	global	_isdigit$3697
_isdigit$3697:	; 1 bytes @ 0x3
	global	_isprint$3700
_isprint$3700:	; 1 bytes @ 0x3
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x3
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x3
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x3
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x3
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x3
	global	__tdiv_to_l_@f1
__tdiv_to_l_@f1:	; 3 bytes @ 0x3
	global	__div_to_l_@f1
__div_to_l_@f1:	; 3 bytes @ 0x3
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x3
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x3
	ds	1
	global	??_lcd_put_byte
??_lcd_put_byte:	; 0 bytes @ 0x4
	global	??___lbmod
??___lbmod:	; 0 bytes @ 0x4
	global	lcd_busy@busy
lcd_busy@busy:	; 1 bytes @ 0x4
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x4
	global	isprint@c
isprint@c:	; 1 bytes @ 0x4
	ds	1
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x5
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x5
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x5
	ds	1
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0x6
	global	lcd_put_byte@rs
lcd_put_byte@rs:	; 1 bytes @ 0x6
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x6
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x6
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x6
	global	__tdiv_to_l_@f2
__tdiv_to_l_@f2:	; 3 bytes @ 0x6
	global	__div_to_l_@f2
__div_to_l_@f2:	; 3 bytes @ 0x6
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x7
	global	??___awmod
??___awmod:	; 0 bytes @ 0x7
	global	lcd_put_byte@temp
lcd_put_byte@temp:	; 1 bytes @ 0x7
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x7
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x7
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x7
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x7
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x7
	ds	1
	global	?_lcd_gotoxy
?_lcd_gotoxy:	; 0 bytes @ 0x8
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0x8
	global	??___llmod
??___llmod:	; 0 bytes @ 0x8
	global	??___lltoft
??___lltoft:	; 0 bytes @ 0x8
	global	?___lbdiv
?___lbdiv:	; 1 bytes @ 0x8
	global	lcd_gotoxy@row
lcd_gotoxy@row:	; 1 bytes @ 0x8
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x8
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x8
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x8
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x8
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0x8
	ds	1
	global	??_lcd_gotoxy
??_lcd_gotoxy:	; 0 bytes @ 0x9
	global	??_pwm_10bit
??_pwm_10bit:	; 0 bytes @ 0x9
	global	??_lcd_putc
??_lcd_putc:	; 0 bytes @ 0x9
	global	??_putch
??_putch:	; 0 bytes @ 0x9
	global	??_fround
??_fround:	; 0 bytes @ 0x9
	global	??___bmul
??___bmul:	; 0 bytes @ 0x9
	global	??___lbdiv
??___lbdiv:	; 0 bytes @ 0x9
	global	??___ftsub
??___ftsub:	; 0 bytes @ 0x9
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x9
	global	??___ftge
??___ftge:	; 0 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??__tdiv_to_l_
??__tdiv_to_l_:	; 0 bytes @ 0x0
	global	??__div_to_l_
??__div_to_l_:	; 0 bytes @ 0x0
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x0
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x0
	global	?_atoi
?_atoi:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	lcd_gotoxy@col
lcd_gotoxy@col:	; 1 bytes @ 0x0
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	ds	1
	global	lcd_gotoxy@address
lcd_gotoxy@address:	; 1 bytes @ 0x1
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x1
	ds	1
	global	??_atoi
??_atoi:	; 0 bytes @ 0x2
	global	lcd_putc@c
lcd_putc@c:	; 1 bytes @ 0x2
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	?___bmul
?___bmul:	; 1 bytes @ 0x3
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x3
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x3
	global	putch@c
putch@c:	; 1 bytes @ 0x3
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x3
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x3
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x3
	global	__tdiv_to_l_@quot
__tdiv_to_l_@quot:	; 4 bytes @ 0x3
	ds	1
	global	atoi@sign
atoi@sign:	; 1 bytes @ 0x4
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x5
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	atoi@a
atoi@a:	; 2 bytes @ 0x5
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x6
	ds	1
	global	atoi@s
atoi@s:	; 1 bytes @ 0x7
	global	__tdiv_to_l_@cntr
__tdiv_to_l_@cntr:	; 1 bytes @ 0x7
	ds	1
	global	?_pwm_10bit
?_pwm_10bit:	; 0 bytes @ 0x8
	global	?___fttol
?___fttol:	; 4 bytes @ 0x8
	global	?___llmod
?___llmod:	; 4 bytes @ 0x8
	global	__tdiv_to_l_@exp1
__tdiv_to_l_@exp1:	; 1 bytes @ 0x8
	global	pwm_10bit@pwm
pwm_10bit@pwm:	; 2 bytes @ 0x8
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x8
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x8
	global	__div_to_l_@quot
__div_to_l_@quot:	; 4 bytes @ 0x8
	ds	1
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x9
	ds	3
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0xC
	global	??___fttol
??___fttol:	; 0 bytes @ 0xC
	global	__div_to_l_@cntr
__div_to_l_@cntr:	; 1 bytes @ 0xC
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0xC
	ds	1
	global	__div_to_l_@exp1
__div_to_l_@exp1:	; 1 bytes @ 0xD
	ds	2
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0xF
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0xF
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x10
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x10
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x13
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x14
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x14
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x15
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x15
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x18
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x1B
	ds	3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1E
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1F
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x22
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x23
	ds	1
	global	?_scale
?_scale:	; 3 bytes @ 0x24
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x24
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x24
	ds	3
	global	??_scale
??_scale:	; 0 bytes @ 0x27
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x27
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x2A
	ds	1
	global	_scale$4149
_scale$4149:	; 3 bytes @ 0x2B
	ds	2
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x2D
	ds	1
	global	scale@scl
scale@scl:	; 1 bytes @ 0x2E
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x2E
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x2F
	ds	1
	global	?_fround
?_fround:	; 3 bytes @ 0x30
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x30
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x30
	ds	3
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x33
	global	_fround$4148
_fround$4148:	; 3 bytes @ 0x33
	ds	3
	global	_fround$4147
_fround$4147:	; 3 bytes @ 0x36
	ds	3
	global	fround@prec
fround@prec:	; 1 bytes @ 0x39
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0x3A
	ds	3
	global	??_printf
??_printf:	; 0 bytes @ 0x3D
	ds	5
	global	??_main
??_main:	; 0 bytes @ 0x42
	ds	2
	global	main@data_pwm
main@data_pwm:	; 3 bytes @ 0x44
	ds	3
	global	main@b
main@b:	; 2 bytes @ 0x47
	ds	2
;;Data sizes: Strings 20, constant 118, data 0, bss 21, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      11
;; BANK0           80     73      79
;; BANK1           80     25      38
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?___llmod	unsigned long  size(1) Largest target is 0
;;
;; ?___ftsub	float  size(1) Largest target is 0
;;
;; ?___lltoft	float  size(1) Largest target is 0
;;
;; ?__tdiv_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?__div_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?___ftneg	float  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 40
;;		 -> dpowers(CODE[40]), 
;;
;; ?_scale	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_fround	unsigned int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?_atoi	int  size(1) Largest target is 0
;;
;; atoi@s	PTR const unsigned char  size(1) Largest target is 3
;;		 -> main@data_pwm(BANK0[3]), 
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 11
;;		 -> STR_2(CODE[11]), STR_1(CODE[9]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(BANK0[2]), 
;;
;; S3173$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awtoft
;;   _main->_lcd_gotoxy
;;   _printf->___wmul
;;   _printf->___ftge
;;   _printf->__div_to_l_
;;   _printf->__tdiv_to_l_
;;   _printf->___lltoft
;;   _printf->___llmod
;;   _lcd_putc->_lcd_gotoxy
;;   ___ftsub->___lltoft
;;   _scale->___awmod
;;   _fround->___lbdiv
;;   _lcd_gotoxy->_lcd_put_byte
;;   _lcd_init->_lcd_put_byte
;;   ___lltoft->___ftpack
;;   ___awtoft->___ftpack
;;   ___ftmul->___awtoft
;;   ___ftmul->___awmod
;;   ___ftmul->___lbdiv
;;   ___ftdiv->___awtoft
;;   ___ftadd->___lbdiv
;;   _atoi->___wmul
;;   ___llmod->___lldiv
;;   ___awdiv->___awmod
;;   ___fttol->___awmod
;;   ___lbdiv->___lbmod
;;   ___bmul->___lbdiv
;;
;; Critical Paths under _ngat in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_printf
;;   _printf->_fround
;;   _putch->_lcd_putc
;;   _lcd_putc->_lcd_gotoxy
;;   ___ftsub->___ftadd
;;   _scale->___ftmul
;;   _fround->___ftadd
;;   ___lltoft->___ftpack
;;   ___awtoft->___ftpack
;;   ___ftmul->___ftdiv
;;   ___ftmul->___fttol
;;   ___ftdiv->___awtoft
;;   ___ftadd->___ftmul
;;   _pwm_10bit->___awdiv
;;   ___llmod->___lldiv
;;   ___fttol->___awdiv
;;   ___bmul->___lbdiv
;;
;; Critical Paths under _ngat in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_printf
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
;; (0) _main                                                17    17      0   18760
;;                                             66 BANK0      7     7      0
;;                           _lcd_init
;;                          _pwm_10bit
;;                                 _tx
;;                                 _rx
;;                               _atoi
;;                           ___awtoft
;;                            ___ftdiv
;;                            ___ftmul
;;                         _lcd_gotoxy
;;                             _printf
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              37    34      3   14911
;;                                             58 BANK0      8     5      3
;;                                              0 BANK1     25    25      0
;;                              _putch
;;                            _isdigit
;;                             ___wmul
;;                             ___ftge
;;                            ___ftneg
;;                            ___awdiv
;;                              _scale
;;                            ___ftmul
;;                             _fround
;;                            ___ftadd
;;                            ___fttol
;;                         __div_to_l_
;;                        __tdiv_to_l_
;;                           ___lltoft
;;                            ___ftsub
;;                            ___lldiv
;;                            ___llmod
;; ---------------------------------------------------------------------------------
;; (2) _putch                                                1     1      0     988
;;                                              3 BANK0      1     1      0
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (3) _lcd_putc                                             1     1      0     957
;;                                              2 BANK0      1     1      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;;                         _lcd_gotoxy
;;                            _isprint
;; ---------------------------------------------------------------------------------
;; (2) ___ftsub                                              6     0      6    1602
;;                                             48 BANK0      6     0      6
;;                            ___ftadd
;;                           ___lltoft (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _scale                                               14    11      3    2201
;;                                             36 BANK0     11     8      3
;;                            ___awmod
;;                            ___awdiv
;;                            ___ftmul
;;                             ___bmul
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _fround                                              13    10      3    1647
;;                                             48 BANK0     10     7      3
;;                            ___lbmod
;;                             ___bmul
;;                            ___lbdiv
;;                            ___ftmul
;;                            ___ftadd (ARG)
;; ---------------------------------------------------------------------------------
;; (4) _lcd_gotoxy                                           3     2      1     449
;;                                              8 COMMON     1     0      1
;;                                              0 BANK0      2     2      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             4     4      0     347
;;                                              0 BANK0      3     3      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (2) ___lltoft                                             5     1      4     414
;;                                              8 COMMON     1     1      0
;;                                              3 BANK0      4     0      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (1) ___awtoft                                             4     1      3     445
;;                                              8 COMMON     1     1      0
;;                                              3 BANK0      3     0      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (3) ___ftmul                                             15     9      6     800
;;                                             21 BANK0     15     9      6
;;                           ___ftpack
;;                            ___ftdiv (ARG)
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;;                            ___awdiv (ARG)
;;                            ___awmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftdiv                                             15     9      6     732
;;                                              6 BANK0     15     9      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftadd                                             12     6      6    1537
;;                                             36 BANK0     12     6      6
;;                           ___ftpack
;;                            ___lbmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___ftmul (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _atoi                                                 8     6      2     494
;;                                              0 BANK0      8     6      2
;;                             ___wmul
;;                            _isdigit
;; ---------------------------------------------------------------------------------
;; (1) _pwm_10bit                                            2     0      2     366
;;                                              8 BANK0      2     0      2
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (5) _lcd_busy                                             2     2      0      34
;;                                              3 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (5) _lcd_put_byte                                         5     4      1     313
;;                                              3 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              6     2      4     296
;;                                              3 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lldiv                                             13     5      8     241
;;                                              3 COMMON     5     5      0
;;                                              0 BANK0      8     0      8
;; ---------------------------------------------------------------------------------
;; (2) ___ftge                                               6     0      6     136
;;                                              3 COMMON     6     0      6
;; ---------------------------------------------------------------------------------
;; (2) ___ftneg                                              3     0      3      45
;;                                              3 COMMON     3     0      3
;; ---------------------------------------------------------------------------------
;; (2) ___llmod                                              9     1      8     232
;;                                              8 COMMON     1     1      0
;;                                              8 BANK0      8     0      8
;;                            ___lldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              8     4      4     300
;;                                              0 BANK0      8     4      4
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___fttol                                             13     9      4     252
;;                                              8 BANK0     13     9      4
;;                           ___ftpack (ARG)
;;                            ___awmod (ARG)
;;                            ___awdiv (ARG)
;;                             ___bmul (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftpack                                             8     3      5     312
;;                                              3 COMMON     5     0      5
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (3) ___lbmod                                              5     4      1     159
;;                                              3 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (3) ___lbdiv                                              4     3      1     162
;;                                              8 COMMON     1     0      1
;;                                              0 BANK0      3     3      0
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              3 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (3) ___bmul                                               3     2      1     108
;;                                              3 BANK0      3     2      1
;;                            ___lbmod (ARG)
;;                            ___lbdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) __div_to_l_                                          20    14      6     446
;;                                              3 COMMON     6     0      6
;;                                              0 BANK0     14    14      0
;; ---------------------------------------------------------------------------------
;; (2) __tdiv_to_l_                                         15     9      6     303
;;                                              3 COMMON     6     0      6
;;                                              0 BANK0      9     9      0
;; ---------------------------------------------------------------------------------
;; (2) _isdigit                                              2     2      0      68
;;                                              3 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _rx                                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _tx                                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _isprint                                              2     2      0      68
;;                                              3 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (6) _ngat                                                 3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_put_byte
;;     _lcd_busy
;;   _pwm_10bit
;;     ___awdiv
;;       ___awmod (ARG)
;;   _tx
;;   _rx
;;   _atoi
;;     ___wmul
;;     _isdigit
;;   ___awtoft
;;     ___ftpack
;;   ___ftdiv
;;     ___ftpack
;;     ___awtoft (ARG)
;;       ___ftpack
;;   ___ftmul
;;     ___ftpack
;;     ___ftdiv (ARG)
;;       ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;     ___awtoft (ARG)
;;       ___ftpack
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;       ___awmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;     ___awdiv (ARG)
;;       ___awmod (ARG)
;;     ___awmod (ARG)
;;     ___bmul (ARG)
;;       ___lbmod (ARG)
;;       ___lbdiv (ARG)
;;         ___lbmod (ARG)
;;     ___lbdiv (ARG)
;;       ___lbmod (ARG)
;;     ___lbmod (ARG)
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
;;     ___ftge
;;     ___ftneg
;;     ___awdiv
;;       ___awmod (ARG)
;;     _scale
;;       ___awmod
;;       ___awdiv
;;         ___awmod (ARG)
;;       ___ftmul
;;         ___ftpack
;;         ___ftdiv (ARG)
;;           ___ftpack
;;           ___awtoft (ARG)
;;             ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___lbmod (ARG)
;;       ___bmul
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___ftdiv (ARG)
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;       ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;       ___lbdiv (ARG)
;;         ___lbmod (ARG)
;;       ___lbmod (ARG)
;;     _fround
;;       ___lbmod
;;       ___bmul
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;       ___lbdiv
;;         ___lbmod (ARG)
;;       ___ftmul
;;         ___ftpack
;;         ___ftdiv (ARG)
;;           ___ftpack
;;           ___awtoft (ARG)
;;             ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___lbmod (ARG)
;;       ___ftadd (ARG)
;;         ___ftpack
;;         ___lbmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___ftmul (ARG)
;;           ___ftpack
;;           ___ftdiv (ARG)
;;             ___ftpack
;;             ___awtoft (ARG)
;;               ___ftpack
;;           ___awtoft (ARG)
;;             ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___lbmod (ARG)
;;     ___ftadd
;;       ___ftpack
;;       ___lbmod (ARG)
;;       ___bmul (ARG)
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;       ___lbdiv (ARG)
;;         ___lbmod (ARG)
;;       ___ftmul (ARG)
;;         ___ftpack
;;         ___ftdiv (ARG)
;;           ___ftpack
;;           ___awtoft (ARG)
;;             ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___lbmod (ARG)
;;     ___fttol
;;       ___ftpack (ARG)
;;       ___awmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;     __div_to_l_
;;     __tdiv_to_l_
;;     ___lltoft
;;       ___ftpack
;;     ___ftsub
;;       ___ftadd
;;         ___ftpack
;;         ___lbmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___ftmul (ARG)
;;           ___ftpack
;;           ___ftdiv (ARG)
;;             ___ftpack
;;             ___awtoft (ARG)
;;               ___ftpack
;;           ___awtoft (ARG)
;;             ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___lbmod (ARG)
;;       ___lltoft (ARG)
;;         ___ftpack
;;     ___lldiv
;;     ___llmod
;;       ___lldiv (ARG)
;;
;; _ngat (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      9       B       1       78.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0      80       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     49      4F       5       98.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     19      26       7       47.5%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      85      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 22 in file "D:\TTVXL\Project TTVXL\BT01week16ttvxlbuoi1\BT01week16ttvxlbuoi1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  b               2   71[BANK0 ] int 
;;  data_tx        10    0        unsigned char [10]
;;  data_pwm        3   68[BANK0 ] unsigned char [3]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/20
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_lcd_init
;;		_pwm_10bit
;;		_tx
;;		_rx
;;		_atoi
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;;		_lcd_gotoxy
;;		_printf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT01week16ttvxlbuoi1\BT01week16ttvxlbuoi1.c"
	line	22
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	23
	
l8590:	
;BT01week16ttvxlbuoi1.c: 23: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	24
	
l8592:	
;BT01week16ttvxlbuoi1.c: 24: lcd_init();
	fcall	_lcd_init
	line	25
	
l8594:	
;BT01week16ttvxlbuoi1.c: 25: TRISE0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1096/8)^080h,(1096)&7
	line	26
	
l8596:	
;BT01week16ttvxlbuoi1.c: 26: TRISE1 = 0; RE1=0;
	bcf	(1097/8)^080h,(1097)&7
	
l8598:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(73/8),(73)&7
	line	27
	
l8600:	
;BT01week16ttvxlbuoi1.c: 27: TRISE2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1098/8)^080h,(1098)&7
	line	28
	
l8602:	
;BT01week16ttvxlbuoi1.c: 28: TRISB0 = 1;
	bsf	(1072/8)^080h,(1072)&7
	line	30
	
l8604:	
;BT01week16ttvxlbuoi1.c: 30: TRISC2 = 0;
	bcf	(1082/8)^080h,(1082)&7
	line	32
	
l8606:	
;BT01week16ttvxlbuoi1.c: 32: T2CKPS1 = 0; T2CKPS0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(145/8),(145)&7
	
l8608:	
	bsf	(144/8),(144)&7
	line	33
	
l8610:	
;BT01week16ttvxlbuoi1.c: 33: PR2 = 124; TMR2 = 0;
	movlw	(07Ch)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	
l8612:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(17)	;volatile
	line	34
	
l8614:	
;BT01week16ttvxlbuoi1.c: 34: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	36
	
l8616:	
;BT01week16ttvxlbuoi1.c: 36: CCP1CON = 0b00001100;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	38
	
l8618:	
;BT01week16ttvxlbuoi1.c: 38: TMR1CS = 1;
	bsf	(129/8),(129)&7
	line	39
	
l8620:	
;BT01week16ttvxlbuoi1.c: 39: T1CKPS1 = 0;T1CKPS0 = 0;
	bcf	(133/8),(133)&7
	
l8622:	
	bcf	(132/8),(132)&7
	line	40
	
l8624:	
;BT01week16ttvxlbuoi1.c: 40: T1SYNC = 1;
	bsf	(130/8),(130)&7
	line	41
	
l8626:	
;BT01week16ttvxlbuoi1.c: 41: TMR1 = 0;
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	42
	
l8628:	
;BT01week16ttvxlbuoi1.c: 42: TMR1GE = 0; TMR1ON = 1;
	bcf	(134/8),(134)&7
	
l8630:	
	bsf	(128/8),(128)&7
	line	45
	
l8632:	
;BT01week16ttvxlbuoi1.c: 45: T0CS = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1037/8)^080h,(1037)&7
	line	46
	
l8634:	
;BT01week16ttvxlbuoi1.c: 46: PSA = 0;
	bcf	(1035/8)^080h,(1035)&7
	line	47
	
l8636:	
;BT01week16ttvxlbuoi1.c: 47: PS2 = 0; PS1 = 1;PS0 = 0;
	bcf	(1034/8)^080h,(1034)&7
	
l8638:	
	bsf	(1033/8)^080h,(1033)&7
	
l8640:	
	bcf	(1032/8)^080h,(1032)&7
	line	48
	
l8642:	
;BT01week16ttvxlbuoi1.c: 48: TMR0 = 6;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	49
	
l8644:	
;BT01week16ttvxlbuoi1.c: 49: T0IE = 1; T0IF = 0; GIE = 1; PEIE =1;
	bsf	(93/8),(93)&7
	
l8646:	
	bcf	(90/8),(90)&7
	
l8648:	
	bsf	(95/8),(95)&7
	
l8650:	
	bsf	(94/8),(94)&7
	line	51
	
l8652:	
;BT01week16ttvxlbuoi1.c: 51: WPUB = 0b00000001;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	52
	
l8654:	
;BT01week16ttvxlbuoi1.c: 52: nRBPU =0;
	bcf	(1039/8)^080h,(1039)&7
	line	53
	
l8656:	
;BT01week16ttvxlbuoi1.c: 53: GIE = 1;
	bsf	(95/8),(95)&7
	line	54
	
l8658:	
;BT01week16ttvxlbuoi1.c: 54: INTE = 1;
	bsf	(92/8),(92)&7
	line	55
	
l8660:	
;BT01week16ttvxlbuoi1.c: 55: INTF = 0;
	bcf	(89/8),(89)&7
	line	56
	
l8662:	
;BT01week16ttvxlbuoi1.c: 56: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u5777:
	decfsz	((??_main+0)+0),f
	goto	u5777
	decfsz	((??_main+0)+0+1),f
	goto	u5777
	clrwdt
opt asmopt_on

	line	58
	
l8664:	
;BT01week16ttvxlbuoi1.c: 58: pwm_t = 300;
	movlw	low(012Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_pwm_t)
	movlw	high(012Ch)
	movwf	((_pwm_t))+1
	line	59
	
l8666:	
;BT01week16ttvxlbuoi1.c: 59: pwm_10bit(pwm_t);
	movlw	low(012Ch)
	movwf	(?_pwm_10bit)
	movlw	high(012Ch)
	movwf	((?_pwm_10bit))+1
	fcall	_pwm_10bit
	line	60
	
l8668:	
;BT01week16ttvxlbuoi1.c: 60: tx();
	fcall	_tx
	line	61
	
l8670:	
;BT01week16ttvxlbuoi1.c: 61: rx();
	fcall	_rx
	line	67
	
l8672:	
;BT01week16ttvxlbuoi1.c: 65: {
;BT01week16ttvxlbuoi1.c: 67: for (int b=2;b<=4;b++){
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(main@b)
	clrf	(main@b+1)
	line	68
	
l8678:	
;BT01week16ttvxlbuoi1.c: 68: data_pwm[b-2]=data_rx[b];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@b),w
	addlw	_data_rx&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(main@b),w
	addlw	0FEh
	addlw	main@data_pwm&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	line	67
	
l8680:	
	incf	(main@b),f
	skipnz
	incf	(main@b+1),f
	
l8682:	
	movf	(main@b+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5765
	movlw	low(05h)
	subwf	(main@b),w
u5765:

	skipc
	goto	u5761
	goto	u5760
u5761:
	goto	l8678
u5760:
	line	70
	
l8684:	
;BT01week16ttvxlbuoi1.c: 69: }
;BT01week16ttvxlbuoi1.c: 70: pwm_t=atoi(data_pwm);
	movlw	(main@data_pwm)&0ffh
	fcall	_atoi
	movf	(1+(?_atoi)),w
	movwf	(_pwm_t+1)
	movf	(0+(?_atoi)),w
	movwf	(_pwm_t)
	line	72
	
l8686:	
;BT01week16ttvxlbuoi1.c: 72: v = (xung/360.0)*10.0*60.0;
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x16
	movwf	(?___ftmul+1)
	movlw	0x44
	movwf	(?___ftmul+2)
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0xb4
	movwf	(?___ftdiv+1)
	movlw	0x43
	movwf	(?___ftdiv+2)
	movf	(_xung+1),w
	movwf	(?___awtoft+1)
	movf	(_xung),w
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
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_v)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_v+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_v+2)^080h
	line	79
	
l8688:	
;BT01week16ttvxlbuoi1.c: 79: pwm_10bit(pwm_t);
	bcf	status, 5	;RP0=0, select bank0
	movf	(_pwm_t+1),w
	movwf	(?_pwm_10bit+1)
	movf	(_pwm_t),w
	movwf	(?_pwm_10bit)
	fcall	_pwm_10bit
	line	80
	
l8690:	
;BT01week16ttvxlbuoi1.c: 80: lcd_gotoxy(0,0);
	clrf	(?_lcd_gotoxy)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	81
	
l8692:	
;BT01week16ttvxlbuoi1.c: 81: printf("v: %3.2f",v);
	bsf	status, 5	;RP0=1, select bank1
	movf	(_v)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_v+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_v+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf+2)
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	82
	
l8694:	
;BT01week16ttvxlbuoi1.c: 82: lcd_gotoxy(0,1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	83
	
l8696:	
;BT01week16ttvxlbuoi1.c: 83: printf("xung: %05d",xung);
	movf	(_xung+1),w
	movwf	(?_printf+1)
	movf	(_xung),w
	movwf	(?_printf)
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	goto	l8672
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	85
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_printf
psect	text903,local,class=CODE,delta=2
global __ptext903
__ptext903:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_2(11), STR_1(9), 
;; Auto vars:     Size  Location     Type
;;  f               1    8[BANK1 ] PTR const unsigned char 
;;		 -> STR_2(11), STR_1(9), 
;;  _val            4    9[BANK1 ] struct .
;;  fval            3   19[BANK1 ] struct .
;;  integ           3    5[BANK1 ] struct .
;;  ival            3    0        struct .
;;  prec            2   22[BANK1 ] int 
;;  width           2   17[BANK1 ] int 
;;  exp             2   15[BANK1 ] int 
;;  flag            2   13[BANK1 ] unsigned short 
;;  c               1   24[BANK1 ] char 
;;  ap              1    4[BANK1 ] PTR void [1]
;;		 -> ?_printf(2), 
;;  d               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   58[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/20
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0      25       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0       8      25       0       0
;;Total ram usage:       33 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_putch
;;		_isdigit
;;		___wmul
;;		___ftge
;;		___ftneg
;;		___awdiv
;;		_scale
;;		___ftmul
;;		_fround
;;		___ftadd
;;		___fttol
;;		__div_to_l_
;;		__tdiv_to_l_
;;		___lltoft
;;		___ftsub
;;		___lldiv
;;		___llmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text903
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 2
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	537
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@f)^080h
	
l8306:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)^080h
	line	540
	goto	l8588
	line	542
	
l8308:	
	movf	(printf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u5221
	goto	u5220
u5221:
	goto	l8312
u5220:
	line	545
	
l8310:	
	movf	(printf@c)^080h,w
	fcall	_putch
	line	546
	goto	l8588
	line	550
	
l8312:	
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	552
	clrf	(printf@flag)^080h
	clrf	(printf@flag+1)^080h
	goto	l8318
	line	583
	
l2236:	
	line	584
	bsf	(printf@flag)^080h+(2/8),(2)&7
	line	585
	
l8314:	
	incf	(printf@f)^080h,f
	line	555
	
l8318:	
	movf	(printf@f)^080h,w
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
	goto	l2236
	goto	l8320
	opt asmopt_on

	line	601
	
l8320:	
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u5231
	goto	u5230
u5231:
	goto	l8330
u5230:
	line	602
	
l8322:	
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	604
	
l8324:	
	movf	(printf@width+1)^080h,w
	movwf	(?___wmul+1)
	movf	(printf@width)^080h,w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_printf+0)+0
	movf	0+(??_printf+0)+0,w
	addlw	low(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@width)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_printf+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(printf@width)^080h
	
l8326:	
	incf	(printf@f)^080h,f
	line	605
	
l8328:	
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u5241
	goto	u5240
u5241:
	goto	l8324
u5240:
	line	614
	
l8330:	
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u5251
	goto	u5250
u5251:
	goto	l8344
u5250:
	line	615
	
l8332:	
	bsf	(printf@flag)^080h+(14/8),(14)&7
	line	616
	
l8334:	
	incf	(printf@f)^080h,f
	line	624
	
l8336:	
	clrf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	line	625
	goto	l8342
	line	626
	
l8338:	
	movf	(printf@prec+1)^080h,w
	movwf	(?___wmul+1)
	movf	(printf@prec)^080h,w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_printf+0)+0
	movf	0+(??_printf+0)+0,w
	addlw	low(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@prec)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_printf+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(printf@prec)^080h
	
l8340:	
	incf	(printf@f)^080h,f
	line	625
	
l8342:	
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u5261
	goto	u5260
u5261:
	goto	l8338
u5260:
	goto	l8350
	line	629
	
l8344:	
	clrf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	line	631
	
l8346:	
	bsf	(printf@flag)^080h+(12/8),(12)&7
	goto	l8350
	line	665
	
l2251:	
	line	666
	bsf	(printf@flag)^080h+(10/8),(10)&7
	line	667
	goto	l8352
	line	638
	
l8350:	
	movf	(printf@f)^080h,w
	incf	(printf@f)^080h,f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)^080h
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; jumptable            260     6 (fixed)
; rangetable           110     6 (fixed)
; spacedrange          218     9 (fixed)
; locatedrange         106     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2332
	xorlw	100^0	; case 100
	skipnz
	goto	l8352
	xorlw	102^100	; case 102
	skipnz
	goto	l2251
	xorlw	105^102	; case 105
	skipnz
	goto	l8352
	goto	l8588
	opt asmopt_on

	line	828
	
l8352:	
	movlw	low(0700h)
	andwf	(printf@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	movlw	high(0700h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(printf@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(??_printf+0)+0
	movf	1+(??_printf+0)+0,w
	iorwf	0+(??_printf+0)+0,w
	skipnz
	goto	u5271
	goto	u5270
u5271:
	goto	l8504
u5270:
	line	830
	
l8354:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(printf@flag+1)^080h,(12)&7
	goto	u5281
	goto	u5280
u5281:
	goto	l8358
u5280:
	line	832
	
l8356:	
	movlw	06h
	movwf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	line	833
	
l8358:	
	movf	(printf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@fval)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@fval+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@fval+2)^080h
	
l8360:	
	movlw	(03h)
	addwf	(printf@ap)^080h,f
	line	834
	
l8362:	
	movf	(printf@fval)^080h,w
	movwf	(?___ftge)
	movf	(printf@fval+1)^080h,w
	movwf	(?___ftge+1)
	movf	(printf@fval+2)^080h,w
	movwf	(?___ftge+2)
	clrf	0+(?___ftge)+03h
	clrf	1+(?___ftge)+03h
	clrf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5291
	goto	u5290
u5291:
	goto	l8368
u5290:
	line	835
	
l8364:	
	movf	(printf@fval)^080h,w
	movwf	(?___ftneg)
	movf	(printf@fval+1)^080h,w
	movwf	(?___ftneg+1)
	movf	(printf@fval+2)^080h,w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	(printf@fval)^080h
	movf	(1+(?___ftneg)),w
	movwf	(printf@fval+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(printf@fval+2)^080h
	line	836
	
l8366:	
	movlw	03h
	iorwf	(printf@flag)^080h,f
	line	838
	
l8368:	
	clrf	(printf@exp)^080h
	clrf	(printf@exp+1)^080h
	line	839
	
l8370:	
	movf	(printf@fval+2)^080h,w
	iorwf	(printf@fval+1)^080h,w
	iorwf	(printf@fval)^080h,w
	skipnz
	goto	u5301
	goto	u5300
u5301:
	goto	l8400
u5300:
	line	840
	
l8372:	
	movlw	low(printf@fval)
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_printf+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??_printf+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??_printf+0)+0+3
	movlw	0Fh
u5315:
	clrc
	rrf	(??_printf+0)+3,f
	rrf	(??_printf+0)+2,f
	rrf	(??_printf+0)+1,f
	rrf	(??_printf+0)+0,f
u5310:
	addlw	-1
	skipz
	goto	u5315
	movf	1+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@exp)^080h
	
l8374:	
	movlw	0FFh
	andwf	(printf@exp)^080h,f
	clrf	(printf@exp+1)^080h
	
l8376:	
	movlw	-126
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	841
	
l8378:	
	movlw	-1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	842
	
l8380:	
	movlw	03h
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movf	(printf@exp+1)^080h,w
	movwf	1+(?___wmul)+02h
	movf	(printf@exp)^080h,w
	movwf	0+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(printf@exp+1)^080h
	movf	(0+(?___wmul)),w
	movwf	(printf@exp)^080h
	line	843
	
l8382:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@exp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___awdiv)+02h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@exp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@exp)^080h
	line	844
	
l8384:	
	btfss	(printf@exp+1)^080h,7
	goto	u5321
	goto	u5320
u5321:
	goto	l8388
u5320:
	line	845
	
l8386:	
	movlw	-1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	849
	
l8388:	
	decf	(printf@exp)^080h,w
	xorlw	0ffh
	fcall	_scale
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@integ+2)^080h
	line	850
	
l8390:	
	movf	(printf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@integ+2)^080h
	line	851
	
l8392:	
	movf	(printf@integ)^080h,w
	movwf	(?___ftge)
	movf	(printf@integ+1)^080h,w
	movwf	(?___ftge+1)
	movf	(printf@integ+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x80
	movwf	1+(?___ftge)+03h
	movlw	0x3f
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5331
	goto	u5330
u5331:
	goto	l8396
u5330:
	line	852
	
l8394:	
	movlw	-1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	goto	l8400
	line	853
	
l8396:	
	movf	(printf@integ)^080h,w
	movwf	(?___ftge)
	movf	(printf@integ+1)^080h,w
	movwf	(?___ftge+1)
	movf	(printf@integ+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x20
	movwf	1+(?___ftge)+03h
	movlw	0x41
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u5341
	goto	u5340
u5341:
	goto	l8400
u5340:
	line	854
	
l8398:	
	incf	(printf@exp)^080h,f
	skipnz
	incf	(printf@exp+1)^080h,f
	line	1115
	
l8400:	
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u5355
	movlw	low(0Dh)
	subwf	(printf@prec)^080h,w
u5355:

	skipnc
	goto	u5351
	goto	u5350
u5351:
	goto	l8404
u5350:
	line	1116
	
l8402:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec)^080h,w
	fcall	_fround
	movf	(0+(?_fround)),w
	movwf	(?___ftadd)
	movf	(1+(?_fround)),w
	movwf	(?___ftadd+1)
	movf	(2+(?_fround)),w
	movwf	(?___ftadd+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@fval+2)^080h
	line	1119
	
l8404:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u5365
	movlw	low(0Ah)
	subwf	(printf@exp)^080h,w
u5365:

	skipnc
	goto	u5361
	goto	u5360
u5361:
	goto	l8412
u5360:
	
l8406:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@fval+2)^080h,w
	iorwf	(printf@fval+1)^080h,w
	iorwf	(printf@fval)^080h,w
	skipnz
	goto	u5371
	goto	u5370
u5371:
	goto	l8428
u5370:
	
l8408:	
	movf	(printf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	iorwf	(2+(?___fttol)),w
	iorwf	(1+(?___fttol)),w
	iorwf	(0+(?___fttol)),w
	skipz
	goto	u5381
	goto	u5380
u5381:
	goto	l8428
u5380:
	
l8410:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5395
	movlw	low(02h)
	subwf	(printf@exp)^080h,w
u5395:

	skipc
	goto	u5391
	goto	u5390
u5391:
	goto	l8428
u5390:
	line	1123
	
l8412:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@integ)^080h,w
	movwf	(?___ftge)
	movf	(printf@integ+1)^080h,w
	movwf	(?___ftge+1)
	movf	(printf@integ+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x70
	movwf	0+(?___ftge)+03h
	movlw	0x89
	movwf	1+(?___ftge)+03h
	movlw	0x40
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5401
	goto	u5400
u5401:
	goto	l8416
u5400:
	line	1124
	
l8414:	
	movlw	-9
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	1125
	goto	l8418
	line	1126
	
l8416:	
	movlw	-8
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	1128
	
l8418:	
	movf	(printf@exp)^080h,w
	fcall	_scale
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@integ+2)^080h
	line	1129
	
l8422:	
	movf	(printf@fval)^080h,w
	movwf	(?__tdiv_to_l_)
	movf	(printf@fval+1)^080h,w
	movwf	(?__tdiv_to_l_+1)
	movf	(printf@fval+2)^080h,w
	movwf	(?__tdiv_to_l_+2)
	movf	(printf@integ)^080h,w
	movwf	0+(?__tdiv_to_l_)+03h
	movf	(printf@integ+1)^080h,w
	movwf	1+(?__tdiv_to_l_)+03h
	movf	(printf@integ+2)^080h,w
	movwf	2+(?__tdiv_to_l_)+03h
	fcall	__tdiv_to_l_
	movf	(3+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_printf$3184+3)^080h
	movf	(2+(?__tdiv_to_l_)),w
	movwf	(_printf$3184+2)^080h
	movf	(1+(?__tdiv_to_l_)),w
	movwf	(_printf$3184+1)^080h
	movf	(0+(?__tdiv_to_l_)),w
	movwf	(_printf$3184)^080h

	
l8424:	
	movf	(_printf$3184+3)^080h,w
	movwf	(printf@_val+3)^080h
	movf	(_printf$3184+2)^080h,w
	movwf	(printf@_val+2)^080h
	movf	(_printf$3184+1)^080h,w
	movwf	(printf@_val+1)^080h
	movf	(_printf$3184)^080h,w
	movwf	(printf@_val)^080h

	line	1132
	
l8426:	
	clrf	(printf@fval)^080h
	clrf	(printf@fval+1)^080h
	clrf	(printf@fval+2)^080h
	line	1133
	goto	l8432
	line	1134
	
l8428:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val)^080h

	line	1135
	movf	(printf@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lltoft+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lltoft+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lltoft+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lltoft)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	movwf	(?___ftsub)
	movf	(1+(?___lltoft)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___lltoft)),w
	movwf	(?___ftsub+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftsub)+03h
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@fval+2)^080h
	line	1136
	
l8430:	
	clrf	(printf@exp)^080h
	clrf	(printf@exp+1)^080h
	line	1139
	
l8432:	
	clrf	(printf@c)^080h
	incf	(printf@c)^080h,f
	line	1140
	
l8438:	
	movf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrc
	rlf	(??_printf+0)+0,f
	clrc
	rlf	(??_printf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_printf+1)+0)
	fcall	stringdir
	movwf	((??_printf+1)+0+1)
	fcall	stringdir
	movwf	((??_printf+1)+0+2)
	fcall	stringdir
	movwf	((??_printf+1)+0+3)
	movf	3+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val+3)^080h,w
	skipz
	goto	u5415
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val+2)^080h,w
	skipz
	goto	u5415
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val+1)^080h,w
	skipz
	goto	u5415
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val)^080h,w
u5415:
	skipnc
	goto	u5411
	goto	u5410
u5411:
	goto	l8442
u5410:
	goto	l8446
	line	1139
	
l8442:	
	incf	(printf@c)^080h,f
	
l8444:	
	movf	(printf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u5421
	goto	u5420
u5421:
	goto	l8438
u5420:
	line	1145
	
l8446:	
	movf	(printf@prec)^080h,w
	addwf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@prec+1)^080h,w
	skipnc
	incf	(printf@prec+1)^080h,w
	addlw	0
	btfsc	(printf@c)^080h,7
	addlw	0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@exp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	0+(??_printf+0)+0,w
	movwf	(??_printf+2)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@exp+1)^080h,w
	skipnc
	incf	(printf@exp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	1+(??_printf+0)+0,w
	movwf	1+(??_printf+2)+0
	movf	0+(??_printf+2)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@width)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_printf+2)+0,w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(printf@width+1)^080h,f
	subwf	(printf@width+1)^080h,f
	line	1150
	
l8448:	
	movf	(printf@prec+1)^080h,w
	iorwf	(printf@prec)^080h,w
	skipnz
	goto	u5431
	goto	u5430
u5431:
	goto	l8452
u5430:
	line	1151
	
l8450:	
	movlw	-1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1152
	
l8452:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u5441
	goto	u5440
u5441:
	goto	l8456
u5440:
	line	1153
	
l8454:	
	movlw	-1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1156
	
l8456:	
	btfss	(printf@flag)^080h,(2)&7
	goto	u5451
	goto	u5450
u5451:
	goto	l8470
u5450:
	goto	l8464
	line	1170
	
l8460:	
	movlw	(030h)
	fcall	_putch
	line	1171
	
l8462:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1169
	
l8464:	
	movf	(printf@width+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5465
	movlw	low(01h)
	subwf	(printf@width)^080h,w
u5465:

	skipnc
	goto	u5461
	goto	u5460
u5461:
	goto	l8460
u5460:
	goto	l8478
	line	1182
	
l8466:	
	movlw	(020h)
	fcall	_putch
	line	1183
	
l8468:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1181
	
l8470:	
	movf	(printf@width+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5475
	movlw	low(01h)
	subwf	(printf@width)^080h,w
u5475:

	skipnc
	goto	u5471
	goto	u5470
u5471:
	goto	l8466
u5470:
	line	1189
	
l8472:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u5481
	goto	u5480
u5481:
	goto	l8478
u5480:
	line	1191
	
l8474:	
	movlw	(02Dh)
	fcall	_putch
	goto	l8478
	line	1201
	
l8476:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrc
	rlf	(??_printf+0)+0,f
	clrc
	rlf	(??_printf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lldiv)
	fcall	stringdir
	movwf	(?___lldiv+1)
	fcall	stringdir
	movwf	(?___lldiv+2)
	fcall	stringdir
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	movwf	3+(?___llmod)+04h
	movf	(2+(?___lldiv)),w
	movwf	2+(?___llmod)+04h
	movf	(1+(?___lldiv)),w
	movwf	1+(?___llmod)+04h
	movf	(0+(?___lldiv)),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	fcall	_putch
	line	1197
	
l8478:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	decf	(printf@c)^080h,f
	incf	((printf@c)^080h),w
	skipz
	goto	u5491
	goto	u5490
u5491:
	goto	l8476
u5490:
	goto	l8484
	line	1205
	
l8480:	
	movlw	(030h)
	fcall	_putch
	line	1206
	
l8482:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	1204
	
l8484:	
	movf	(printf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5505
	movlw	low(01h)
	subwf	(printf@exp)^080h,w
u5505:

	skipnc
	goto	u5501
	goto	u5500
u5501:
	goto	l8480
u5500:
	line	1208
	
l8486:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5515
	movlw	low(09h)
	subwf	(printf@prec)^080h,w
u5515:

	skipc
	goto	u5511
	goto	u5510
u5511:
	goto	l8490
u5510:
	line	1209
	
l8488:	
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(printf@c)^080h
	goto	l2296
	line	1211
	
l8490:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec)^080h,w
	movwf	(printf@c)^080h
	
l2296:	
	line	1212
	movf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	btfsc	(??_printf+0)+0,7
	decf	(??_printf+0)+0+1,f
	movf	0+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@prec)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(printf@prec+1)^080h,f
	subwf	(printf@prec+1)^080h,f
	line	1216
	movf	(printf@c)^080h,w
	skipz
	goto	u5520
	goto	l2297
u5520:
	line	1218
	
l8492:	
	movlw	(02Eh)
	fcall	_putch
	
l2297:	
	line	1224
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@c)^080h,w
	fcall	_scale
	movf	(0+(?_scale)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?_scale)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?_scale)),w
	movwf	2+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?___fttol)
	movf	(1+(?___ftmul)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val)^080h

	line	1225
	goto	l8496
	line	1226
	
l8494:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrc
	rlf	(??_printf+0)+0,f
	clrc
	rlf	(??_printf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lldiv)
	fcall	stringdir
	movwf	(?___lldiv+1)
	fcall	stringdir
	movwf	(?___lldiv+2)
	fcall	stringdir
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	movwf	3+(?___llmod)+04h
	movf	(2+(?___lldiv)),w
	movwf	2+(?___llmod)+04h
	movf	(1+(?___lldiv)),w
	movwf	1+(?___llmod)+04h
	movf	(0+(?___lldiv)),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	fcall	_putch
	line	1227
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrc
	rlf	(??_printf+0)+0,f
	clrc
	rlf	(??_printf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___llmod)
	fcall	stringdir
	movwf	(?___llmod+1)
	fcall	stringdir
	movwf	(?___llmod+2)
	fcall	stringdir
	movwf	(?___llmod+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val)^080h

	line	1225
	
l8496:	
	decf	(printf@c)^080h,f
	incf	((printf@c)^080h),w
	skipz
	goto	u5531
	goto	u5530
u5531:
	goto	l8494
u5530:
	goto	l8502
	line	1231
	
l8498:	
	movlw	(030h)
	fcall	_putch
	line	1232
	
l8500:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@prec)^080h,f
	skipc
	decf	(printf@prec+1)^080h,f
	line	1230
	
l8502:	
	movf	((printf@prec+1)^080h),w
	iorwf	((printf@prec)^080h),w
	skipz
	goto	u5541
	goto	u5540
u5541:
	goto	l8498
u5540:
	goto	l8588
	line	1254
	
l8504:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_printf+0)+0+1
	movf	0+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val+1)^080h
	movlw	0
	btfsc	(printf@_val+1)^080h,7
	movlw	255
	movwf	(printf@_val+2)^080h
	movwf	(printf@_val+3)^080h
	
l8506:	
	incf	(printf@ap)^080h,f
	incf	(printf@ap)^080h,f
	line	1256
	
l8508:	
	btfss	(printf@_val+3)^080h,7
	goto	u5551
	goto	u5550
u5551:
	goto	l8514
u5550:
	line	1257
	
l8510:	
	movlw	03h
	iorwf	(printf@flag)^080h,f
	line	1258
	
l8512:	
	comf	(printf@_val)^080h,f
	comf	(printf@_val+1)^080h,f
	comf	(printf@_val+2)^080h,f
	comf	(printf@_val+3)^080h,f
	incf	(printf@_val)^080h,f
	skipnz
	incf	(printf@_val+1)^080h,f
	skipnz
	incf	(printf@_val+2)^080h,f
	skipnz
	incf	(printf@_val+3)^080h,f
	line	1285
	
l8514:	
	movf	((printf@prec+1)^080h),w
	iorwf	((printf@prec)^080h),w
	skipz
	goto	u5561
	goto	u5560
u5561:
	goto	l8520
u5560:
	
l8516:	
	movf	(printf@_val+3)^080h,w
	iorwf	(printf@_val+2)^080h,w
	iorwf	(printf@_val+1)^080h,w
	iorwf	(printf@_val)^080h,w
	skipz
	goto	u5571
	goto	u5570
u5571:
	goto	l8520
u5570:
	line	1286
	
l8518:	
	incf	(printf@prec)^080h,f
	skipnz
	incf	(printf@prec+1)^080h,f
	line	1300
	
l8520:	
	clrf	(printf@c)^080h
	incf	(printf@c)^080h,f
	line	1301
	
l8526:	
	movf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrc
	rlf	(??_printf+0)+0,f
	clrc
	rlf	(??_printf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_printf+1)+0)
	fcall	stringdir
	movwf	((??_printf+1)+0+1)
	fcall	stringdir
	movwf	((??_printf+1)+0+2)
	fcall	stringdir
	movwf	((??_printf+1)+0+3)
	movf	3+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val+3)^080h,w
	skipz
	goto	u5585
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val+2)^080h,w
	skipz
	goto	u5585
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val+1)^080h,w
	skipz
	goto	u5585
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val)^080h,w
u5585:
	skipnc
	goto	u5581
	goto	u5580
u5581:
	goto	l8530
u5580:
	goto	l8534
	line	1300
	
l8530:	
	incf	(printf@c)^080h,f
	
l8532:	
	movf	(printf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u5591
	goto	u5590
u5591:
	goto	l8526
u5590:
	line	1334
	
l8534:	
	movf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	btfsc	(??_printf+0)+0,7
	decf	(??_printf+0)+0+1,f
	movf	1+(??_printf+0)+0,w
	xorlw	80h
	movwf	(??_printf+2)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(??_printf+2)+0,w
	skipz
	goto	u5605
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_printf+0)+0,w
u5605:

	skipnc
	goto	u5601
	goto	u5600
u5601:
	goto	l8538
u5600:
	line	1335
	
l8536:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec)^080h,w
	movwf	(printf@c)^080h
	goto	l8542
	line	1336
	
l8538:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	btfsc	(??_printf+0)+0,7
	decf	(??_printf+0)+0+1,f
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+2)+0
	movf	1+(??_printf+0)+0,w
	xorlw	80h
	subwf	(??_printf+2)+0,w
	skipz
	goto	u5615
	movf	0+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@prec)^080h,w
u5615:

	skipnc
	goto	u5611
	goto	u5610
u5611:
	goto	l8542
u5610:
	line	1337
	
l8540:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@c)^080h,w
	movwf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	btfsc	(printf@prec)^080h,7
	decf	(printf@prec+1)^080h,f
	line	1340
	
l8542:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@width+1)^080h,w
	iorwf	(printf@width)^080h,w
	skipnz
	goto	u5621
	goto	u5620
u5621:
	goto	l8548
u5620:
	
l8544:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u5631
	goto	u5630
u5631:
	goto	l8548
u5630:
	line	1341
	
l8546:	
	movlw	-1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1343
	
l8548:	
	btfss	(printf@flag+1)^080h,(14)&7
	goto	u5641
	goto	u5640
u5641:
	goto	l8556
u5640:
	line	1344
	
l8550:	
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@width+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(??_printf+0)+0,w
	skipz
	goto	u5655
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@width)^080h,w
	subwf	(printf@prec)^080h,w
u5655:

	skipnc
	goto	u5651
	goto	u5650
u5651:
	goto	l8554
u5650:
	line	1345
	
l8552:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec)^080h,w
	subwf	(printf@width)^080h,f
	movf	(printf@prec+1)^080h,w
	skipc
	decf	(printf@width+1)^080h,f
	subwf	(printf@width+1)^080h,f
	goto	l8556
	line	1347
	
l8554:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	1376
	
l8556:	
	movf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	btfsc	(??_printf+0)+0,7
	decf	(??_printf+0)+0+1,f
	movf	1+(??_printf+0)+0,w
	xorlw	80h
	movwf	(??_printf+2)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@width+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(??_printf+2)+0,w
	skipz
	goto	u5665
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@width)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_printf+0)+0,w
u5665:

	skipnc
	goto	u5661
	goto	u5660
u5661:
	goto	l8560
u5660:
	line	1377
	
l8558:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	btfsc	(??_printf+0)+0,7
	decf	(??_printf+0)+0+1,f
	movf	0+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@width)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(printf@width+1)^080h,f
	subwf	(printf@width+1)^080h,f
	goto	l8562
	line	1379
	
l8560:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	1382
	
l8562:	
	btfss	(printf@flag)^080h,(2)&7
	goto	u5671
	goto	u5670
u5671:
	goto	l8574
u5670:
	line	1387
	
l8564:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u5681
	goto	u5680
u5681:
	goto	l8568
u5680:
	line	1388
	
l8566:	
	movlw	(02Dh)
	fcall	_putch
	line	1410
	
l8568:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@width+1)^080h,w
	iorwf	(printf@width)^080h,w
	skipnz
	goto	u5691
	goto	u5690
u5691:
	goto	l8586
u5690:
	line	1412
	
l8570:	
	movlw	(030h)
	fcall	_putch
	line	1413
	
l8572:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	movf	(((printf@width+1)^080h)),w
	iorwf	(((printf@width)^080h)),w
	skipz
	goto	u5701
	goto	u5700
u5701:
	goto	l8570
u5700:
	goto	l8586
	line	1423
	
l8574:	
	movf	(printf@width+1)^080h,w
	iorwf	(printf@width)^080h,w
	skipnz
	goto	u5711
	goto	u5710
u5711:
	goto	l8580
u5710:
	line	1425
	
l8576:	
	movlw	(020h)
	fcall	_putch
	line	1426
	
l8578:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	movf	(((printf@width+1)^080h)),w
	iorwf	(((printf@width)^080h)),w
	skipz
	goto	u5721
	goto	u5720
u5721:
	goto	l8576
u5720:
	line	1433
	
l8580:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u5731
	goto	u5730
u5731:
	goto	l8586
u5730:
	line	1434
	
l8582:	
	movlw	(02Dh)
	fcall	_putch
	goto	l8586
	line	1484
	
l8584:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrc
	rlf	(??_printf+0)+0,f
	clrc
	rlf	(??_printf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lldiv)
	fcall	stringdir
	movwf	(?___lldiv+1)
	fcall	stringdir
	movwf	(?___lldiv+2)
	fcall	stringdir
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	movwf	3+(?___llmod)+04h
	movf	(2+(?___lldiv)),w
	movwf	2+(?___llmod)+04h
	movf	(1+(?___lldiv)),w
	movwf	1+(?___llmod)+04h
	movf	(0+(?___lldiv)),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@c)^080h
	line	1516
	movf	(printf@c)^080h,w
	fcall	_putch
	line	1469
	
l8586:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@prec)^080h,f
	skipc
	decf	(printf@prec+1)^080h,f
	incf	((printf@prec)^080h),w
	skipnz
	incf	((printf@prec+1)^080h),w

	skipz
	goto	u5741
	goto	u5740
u5741:
	goto	l8584
u5740:
	line	540
	
l8588:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@f)^080h,w
	incf	(printf@f)^080h,f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)^080h
	movf	((printf@c)^080h),f
	skipz
	goto	u5751
	goto	u5750
u5751:
	goto	l8308
u5750:
	line	1533
	
l2332:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_putch
psect	text904,local,class=CODE,delta=2
global __ptext904
__ptext904:

;; *************** function _putch *****************
;; Defined at:
;;		line 115 in file "D:\TTVXL\Project TTVXL\BT01week16ttvxlbuoi1\BT01week16ttvxlbuoi1.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_putc
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text904
	file	"D:\TTVXL\Project TTVXL\BT01week16ttvxlbuoi1\BT01week16ttvxlbuoi1.c"
	line	115
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 2
; Regs used in _putch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;putch@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(putch@c)
	line	116
	
l8304:	
;BT01week16ttvxlbuoi1.c: 116: lcd_putc(c);
	movf	(putch@c),w
	fcall	_lcd_putc
	line	117
	
l2171:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_putc
psect	text905,local,class=CODE,delta=2
global __ptext905
__ptext905:

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 143 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    2[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;;		_lcd_gotoxy
;;		_isprint
;; This function is called by:
;;		_putch
;; This function uses a non-reentrant model
;;
psect	text905
	file	"D:\TTVXL\Library\lcd(16).c"
	line	143
	global	__size_of_lcd_putc
	__size_of_lcd_putc	equ	__end_of_lcd_putc-_lcd_putc
	
_lcd_putc:	
	opt	stack 2
; Regs used in _lcd_putc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_putc@c stored from wreg
	movwf	(lcd_putc@c)
	line	144
	
l8286:	
;lcd(16).c: 144: switch(c){
	goto	l8302
	line	146
	
l8288:	
;lcd(16).c: 146: lcd_put_byte(0, 1);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	147
;lcd(16).c: 147: while(lcd_busy());
	
l8290:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5191
	goto	u5190
u5191:
	goto	l8290
u5190:
	goto	l1082
	line	150
	
l8292:	
;lcd(16).c: 150: lcd_gotoxy(0, 1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	151
;lcd(16).c: 151: break;
	goto	l1082
	line	153
	
l8294:	
;lcd(16).c: 153: if(isprint(c)){
	movf	(lcd_putc@c),w
	fcall	_isprint
	btfss	status,0
	goto	u5201
	goto	u5200
u5201:
	goto	l1082
u5200:
	line	154
	
l8296:	
;lcd(16).c: 154: lcd_put_byte(1, c);
	movf	(lcd_putc@c),w
	movwf	(?_lcd_put_byte)
	movlw	(01h)
	fcall	_lcd_put_byte
	line	155
;lcd(16).c: 155: while(lcd_busy());
	
l8298:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5211
	goto	u5210
u5211:
	goto	l8298
u5210:
	goto	l1082
	line	144
	
l8302:	
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
	goto	l8292
	xorlw	12^10	; case 12
	skipnz
	goto	l8288
	goto	l8294
	opt asmopt_on

	line	159
	
l1082:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	___ftsub
psect	text906,local,class=CODE,delta=2
global __ptext906
__ptext906:

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 17 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   48[BANK0 ] float 
;;  f1              3   51[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   48[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text906
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 3
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l8280:	
	movlw	080h
	xorwf	(___ftsub@f2+2),f
	line	19
	
l8282:	
	movf	(___ftsub@f1),w
	movwf	(?___ftadd)
	movf	(___ftsub@f1+1),w
	movwf	(?___ftadd+1)
	movf	(___ftsub@f1+2),w
	movwf	(?___ftadd+2)
	movf	(___ftsub@f2),w
	movwf	0+(?___ftadd)+03h
	movf	(___ftsub@f2+1),w
	movwf	1+(?___ftadd)+03h
	movf	(___ftsub@f2+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(?___ftsub)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftsub+2)
	line	20
	
l3433:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_scale
psect	text907,local,class=CODE,delta=2
global __ptext907
__ptext907:

;; *************** function _scale *****************
;; Defined at:
;;		line 422 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  scl             1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  scl             1   46[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  3   36[BANK0 ] char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awmod
;;		___awdiv
;;		___ftmul
;;		___bmul
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text907
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	422
	global	__size_of_scale
	__size_of_scale	equ	__end_of_scale-_scale
	
_scale:	
	opt	stack 3
; Regs used in _scale: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;scale@scl stored from wreg
	line	424
	bcf	status, 5	;RP0=0, select bank0
	movwf	(scale@scl)
	
l8240:	
	btfss	(scale@scl),7
	goto	u5141
	goto	u5140
u5141:
	goto	l8262
u5140:
	line	425
	
l8242:	
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	426
	
l8244:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u5151
	goto	u5150
u5151:
	goto	l8252
u5150:
	line	427
	
l8246:	
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	movlw	064h
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+0)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__npowers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	064h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+2)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+2)+0+1)
	movf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addlw	low((__npowers_-__stringbase)+036h)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_scale$4149)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$4149+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$4149+2)
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	fcall	___awmod
	movf	(0+?___awmod),w
	movwf	(??_scale+0)+0
	movf	(1+?___awmod),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movf	(_scale$4149),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$4149+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$4149+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l2223
	line	428
	
l8252:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u5161
	goto	u5160
u5161:
	goto	l8258
u5160:
	line	429
	
l8254:	
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	fcall	___awmod
	movf	(0+?___awmod),w
	movwf	(??_scale+0)+0
	movf	(1+?___awmod),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+2)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+2)+0+1)
	movf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addlw	low((__npowers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l2223
	line	430
	
l8258:	
	movlw	(03h)
	movwf	(?___bmul)
	movf	(scale@scl),w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?_scale)
	fcall	stringdir
	movwf	(?_scale+1)
	fcall	stringdir
	movwf	(?_scale+2)
	goto	l2223
	line	432
	
l8262:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u5171
	goto	u5170
u5171:
	goto	l8270
u5170:
	line	433
	
l8264:	
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	movlw	064h
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+0)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__powers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	064h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+2)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+2)+0+1)
	movf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addlw	low((__powers_-__stringbase)+036h)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_scale$4149)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$4149+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$4149+2)
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	fcall	___awmod
	movf	(0+?___awmod),w
	movwf	(??_scale+0)+0
	movf	(1+?___awmod),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movf	(_scale$4149),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$4149+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$4149+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l2223
	line	434
	
l8270:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u5181
	goto	u5180
u5181:
	goto	l8276
u5180:
	line	435
	
l8272:	
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	fcall	___awmod
	movf	(0+?___awmod),w
	movwf	(??_scale+0)+0
	movf	(1+?___awmod),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+2)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+2)+0+1)
	movf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addlw	low((__powers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l2223
	line	436
	
l8276:	
	movlw	(03h)
	movwf	(?___bmul)
	movf	(scale@scl),w
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?_scale)
	fcall	stringdir
	movwf	(?_scale+1)
	fcall	stringdir
	movwf	(?_scale+2)
	line	437
	
l2223:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
;; =============== function _scale ends ============

	signat	_scale,4219
	global	_fround
psect	text908,local,class=CODE,delta=2
global __ptext908
__ptext908:

;; *************** function _fround *****************
;; Defined at:
;;		line 406 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  prec            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prec            1   57[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   48[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lbmod
;;		___bmul
;;		___lbdiv
;;		___ftmul
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text908
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	406
	global	__size_of_fround
	__size_of_fround	equ	__end_of_fround-_fround
	
_fround:	
	opt	stack 3
; Regs used in _fround: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;fround@prec stored from wreg
	line	409
	bcf	status, 5	;RP0=0, select bank0
	movwf	(fround@prec)
	
l8218:	
	movlw	(06Eh)
	subwf	(fround@prec),w
	skipc
	goto	u5121
	goto	u5120
u5121:
	goto	l8228
u5120:
	line	410
	
l8220:	
	movlw	(03h)
	movwf	(?___bmul)
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movlw	(064h)
	movwf	(?___lbmod)
	movf	(fround@prec),w
	fcall	___lbmod
	fcall	___lbdiv
	fcall	___bmul
	addlw	low((__npowers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(?___bmul)
	movlw	(064h)
	movwf	(?___lbdiv)
	movf	(fround@prec),w
	fcall	___lbdiv
	fcall	___bmul
	addlw	low((__npowers_-__stringbase)+036h)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$4147)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$4147+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$4147+2)
	movlw	(03h)
	movwf	(?___bmul)
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(fround@prec),w
	fcall	___lbmod
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movf	(_fround$4147),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$4147+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$4147+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$4148)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$4148+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$4148+2)
	
l8222:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$4148),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$4148+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$4148+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l2216
	line	411
	
l8228:	
	movlw	(0Bh)
	subwf	(fround@prec),w
	skipc
	goto	u5131
	goto	u5130
u5131:
	goto	l8236
u5130:
	line	412
	
l8230:	
	movlw	(03h)
	movwf	(?___bmul)
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(fround@prec),w
	fcall	___lbmod
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(?___bmul)
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(fround@prec),w
	fcall	___lbdiv
	fcall	___bmul
	addlw	low((__npowers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$4147)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$4147+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$4147+2)
	
l8232:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$4147),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$4147+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$4147+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l2216
	line	413
	
l8236:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(?___bmul)
	movf	(fround@prec),w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	line	414
	
l2216:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
;; =============== function _fround ends ============

	signat	_fround,4219
	global	_lcd_gotoxy
psect	text909,local,class=CODE,delta=2
global __ptext909
__ptext909:

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 162 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1    8[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1    0[BANK0 ] unsigned char 
;;  address         1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       2       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_lcd_putc
;;		_main
;; This function uses a non-reentrant model
;;
psect	text909
	file	"D:\TTVXL\Library\lcd(16).c"
	line	162
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:	
	opt	stack 2
; Regs used in _lcd_gotoxy: [wreg+status,2+status,0+pclath+cstack]
;lcd_gotoxy@col stored from wreg
	line	165
	bcf	status, 5	;RP0=0, select bank0
	movwf	(lcd_gotoxy@col)
	
l8206:	
;lcd(16).c: 163: unsigned char address;
;lcd(16).c: 165: if(row!=0)
	movf	(lcd_gotoxy@row),w
	skipz
	goto	u5100
	goto	l8210
u5100:
	line	166
	
l8208:	
;lcd(16).c: 166: address=0x40;
	movlw	(040h)
	movwf	(lcd_gotoxy@address)
	goto	l8212
	line	168
	
l8210:	
;lcd(16).c: 167: else
;lcd(16).c: 168: address=0;
	clrf	(lcd_gotoxy@address)
	line	170
	
l8212:	
;lcd(16).c: 170: address += col;
	movf	(lcd_gotoxy@col),w
	addwf	(lcd_gotoxy@address),f
	line	171
	
l8214:	
;lcd(16).c: 171: lcd_put_byte(0,0x80|address);
	movf	(lcd_gotoxy@address),w
	iorlw	080h
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	172
;lcd(16).c: 172: while(lcd_busy());
	
l8216:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5111
	goto	u5110
u5111:
	goto	l8216
u5110:
	line	173
	
l1090:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
;; =============== function _lcd_gotoxy ends ============

	signat	_lcd_gotoxy,8312
	global	_lcd_init
psect	text910,local,class=CODE,delta=2
global __ptext910
__ptext910:

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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text910
	file	"D:\TTVXL\Library\lcd(16).c"
	line	5
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 5
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l8168:	
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
	
l8170:	
;lcd(16).c: 18: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u5787:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5787
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5787
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u5787
	nop2
opt asmopt_on

	line	21
	
l8172:	
;lcd(16).c: 21: lcd_put_byte(0,0x30);
	movlw	(030h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	22
	
l8174:	
;lcd(16).c: 22: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u5797:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5797
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5797
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u5797
	nop2
opt asmopt_on

	line	23
;lcd(16).c: 23: lcd_put_byte(0,0x30);
	movlw	(030h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	24
	
l8176:	
;lcd(16).c: 24: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u5807:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5807
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5807
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u5807
	nop2
opt asmopt_on

	line	25
	
l8178:	
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
u5817:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5817
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5817
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u5817
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
u5827:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5827
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5827
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u5827
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
u5837:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5837
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5837
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u5837
	nop2
opt asmopt_on

	line	30
;lcd(16).c: 30: while(lcd_busy());
	
l8180:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5031
	goto	u5030
u5031:
	goto	l8180
u5030:
	line	31
	
l8182:	
;lcd(16).c: 31: lcd_put_byte(0,0b00101100 & 0b00111000);
	movlw	(028h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	32
;lcd(16).c: 32: while(lcd_busy());
	
l8184:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5041
	goto	u5040
u5041:
	goto	l8184
u5040:
	line	34
	
l8186:	
;lcd(16).c: 34: lcd_put_byte(0,0b00001011&0b00001101&0b00001110);
	movlw	(08h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	35
;lcd(16).c: 35: while(lcd_busy());
	
l8188:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5051
	goto	u5050
u5051:
	goto	l8188
u5050:
	line	36
	
l8190:	
;lcd(16).c: 36: lcd_put_byte(0,0b00001111&0b00001101&0b00001110);
	movlw	(0Ch)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	37
;lcd(16).c: 37: while(lcd_busy());
	
l8192:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5061
	goto	u5060
u5061:
	goto	l8192
u5060:
	line	39
	
l8194:	
;lcd(16).c: 39: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	40
;lcd(16).c: 40: while(lcd_busy());
	
l8196:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5071
	goto	u5070
u5071:
	goto	l8196
u5070:
	line	41
	
l8198:	
;lcd(16).c: 41: lcd_put_byte(0,0b00000100);
	movlw	(04h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	42
;lcd(16).c: 42: while(lcd_busy());
	
l8200:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5081
	goto	u5080
u5081:
	goto	l8200
u5080:
	line	43
	
l8202:	
;lcd(16).c: 43: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	44
;lcd(16).c: 44: while(lcd_busy());
	
l8204:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5091
	goto	u5090
u5091:
	goto	l8204
u5090:
	line	45
	
l1056:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	___lltoft
psect	text911,local,class=CODE,delta=2
global __ptext911
__ptext911:

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 36 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    3[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    3[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       4       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text911
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 4
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l8158:	
	movlw	(08Eh)
	movwf	(___lltoft@exp)
	line	41
	goto	l8162
	line	42
	
l8160:	
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	line	43
	incf	(___lltoft@exp),f
	line	41
	
l8162:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u5021
	goto	u5020
u5021:
	goto	l8160
u5020:
	line	45
	
l8164:	
	movf	(___lltoft@c),w
	movwf	(?___ftpack)
	movf	(___lltoft@c+1),w
	movwf	(?___ftpack+1)
	movf	(___lltoft@c+2),w
	movwf	(?___ftpack+2)
	movf	(___lltoft@exp),w
	movwf	0+(?___ftpack)+03h
	clrf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lltoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lltoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lltoft+2)
	line	46
	
l3590:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___awtoft
psect	text912,local,class=CODE,delta=2
global __ptext912
__ptext912:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    3[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    3[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text912
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l8146:	
	clrf	(___awtoft@sign)
	line	37
	
l8148:	
	btfss	(___awtoft@c+1),7
	goto	u5011
	goto	u5010
u5011:
	goto	l8154
u5010:
	line	38
	
l8150:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l8152:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l8154:	
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
	
l3487:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text913,local,class=CODE,delta=2
global __ptext913
__ptext913:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   21[BANK0 ] float 
;;  f2              3   24[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   31[BANK0 ] unsigned um
;;  sign            1   35[BANK0 ] unsigned char 
;;  cntr            1   34[BANK0 ] unsigned char 
;;  exp             1   30[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   21[BANK0 ] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_fround
;;		_scale
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text913
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 3
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l8090:	
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
	goto	u4931
	goto	u4930
u4931:
	goto	l8096
u4930:
	line	57
	
l8092:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l3449
	line	58
	
l8096:	
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
	goto	u4941
	goto	u4940
u4941:
	goto	l8102
u4940:
	line	59
	
l8098:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l3449
	line	60
	
l8102:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l8104:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l8106:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l8108:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l8110:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l8112:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l8114:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l8116:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l8118:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l8120:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4951
	goto	u4950
u4951:
	goto	l8124
u4950:
	line	72
	
l8122:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u4961
	addwf	(___ftmul@f3_as_product+1),f
u4961:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u4962
	addwf	(___ftmul@f3_as_product+2),f
u4962:

	line	73
	
l8124:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l8126:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l8128:	
	decfsz	(___ftmul@cntr),f
	goto	u4971
	goto	u4970
u4971:
	goto	l8120
u4970:
	line	76
	
l8130:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l8132:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4981
	goto	u4980
u4981:
	goto	l8136
u4980:
	line	79
	
l8134:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u4991
	addwf	(___ftmul@f3_as_product+1),f
u4991:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u4992
	addwf	(___ftmul@f3_as_product+2),f
u4992:

	line	80
	
l8136:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l8138:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l8140:	
	decfsz	(___ftmul@cntr),f
	goto	u5001
	goto	u5000
u5001:
	goto	l8132
u5000:
	line	83
	
l8142:	
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
	
l3449:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text914,local,class=CODE,delta=2
global __ptext914
__ptext914:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    6[BANK0 ] float 
;;  f1              3    9[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   16[BANK0 ] float 
;;  sign            1   20[BANK0 ] unsigned char 
;;  exp             1   19[BANK0 ] unsigned char 
;;  cntr            1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    6[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text914
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l8046:	
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
	goto	u4891
	goto	u4890
u4891:
	goto	l8052
u4890:
	line	56
	
l8048:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l3439
	line	57
	
l8052:	
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
	goto	u4901
	goto	u4900
u4901:
	goto	l3440
u4900:
	line	58
	
l8054:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l3439
	
l3440:	
	line	59
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	60
	
l8058:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l8060:	
	movf	0+(((___ftdiv@f1))+2),w
	movwf	(___ftdiv@sign)
	line	62
	
l8062:	
	movf	0+(((___ftdiv@f2))+2),w
	xorwf	(___ftdiv@sign),f
	line	63
	
l8064:	
	movlw	(080h)
	andwf	(___ftdiv@sign),f
	line	64
	
l8066:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	
l8068:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l8070:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	
l8072:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	
l8074:	
	movlw	(018h)
	movwf	(___ftdiv@cntr)
	line	70
	
l8076:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	71
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u4915
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u4915
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u4915:
	skipc
	goto	u4911
	goto	u4910
u4911:
	goto	l8082
u4910:
	line	72
	
l8078:	
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
	
l8080:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	75
	
l8082:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	76
	
l8084:	
	decfsz	(___ftdiv@cntr),f
	goto	u4921
	goto	u4920
u4921:
	goto	l8076
u4920:
	line	77
	
l8086:	
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
	
l3439:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text915,local,class=CODE,delta=2
global __ptext915
__ptext915:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   36[BANK0 ] float 
;;  f2              3   39[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   47[BANK0 ] unsigned char 
;;  exp2            1   46[BANK0 ] unsigned char 
;;  sign            1   45[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   36[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_printf
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text915
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 3
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l7968:	
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
	
l7970:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u4690
	goto	l7976
u4690:
	
l7972:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u4701
	goto	u4700
u4701:
	goto	l7980
u4700:
	
l7974:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u4711
	goto	u4710
u4711:
	goto	l7980
u4710:
	line	93
	
l7976:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l3397
	line	94
	
l7980:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u4720
	goto	l3400
u4720:
	
l7982:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4731
	goto	u4730
u4731:
	goto	l7986
u4730:
	
l7984:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u4741
	goto	u4740
u4741:
	goto	l7986
u4740:
	
l3400:	
	line	95
	goto	l3397
	line	96
	
l7986:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
l7988:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u4751
	goto	u4750
u4751:
	goto	l3401
u4750:
	line	98
	
l7990:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l3401:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4761
	goto	u4760
u4761:
	goto	l3402
u4760:
	line	100
	
l7992:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l3402:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l7994:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l7996:	
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
	goto	u4771
	goto	u4770
u4771:
	goto	l8008
u4770:
	line	110
	
l7998:	
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
l8000:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4781
	goto	u4780
u4781:
	goto	l8006
u4780:
	
l8002:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u4791
	goto	u4790
u4791:
	goto	l7998
u4790:
	goto	l8006
	line	114
	
l8004:	
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
l8006:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4801
	goto	u4800
u4801:
	goto	l8004
u4800:
	goto	l3411
	line	117
	
l8008:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4811
	goto	u4810
u4811:
	goto	l3411
u4810:
	line	121
	
l8010:	
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
l8012:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4821
	goto	u4820
u4821:
	goto	l8018
u4820:
	
l8014:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u4831
	goto	u4830
u4831:
	goto	l8010
u4830:
	goto	l8018
	line	125
	
l8016:	
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
l8018:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4841
	goto	u4840
u4841:
	goto	l8016
u4840:
	line	129
	
l3411:	
	btfss	(___ftadd@sign),(7)&7
	goto	u4851
	goto	u4850
u4851:
	goto	l8024
u4850:
	line	131
	
l8020:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
l8022:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
l8024:	
	btfss	(___ftadd@sign),(6)&7
	goto	u4861
	goto	u4860
u4861:
	goto	l8030
u4860:
	line	136
	
l8026:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
l8028:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
l8030:	
	clrf	(___ftadd@sign)
	line	140
	
l8032:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u4871
	addwf	(___ftadd@f2+1),f
u4871:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u4872
	addwf	(___ftadd@f2+2),f
u4872:

	line	141
	
l8034:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4881
	goto	u4880
u4881:
	goto	l8042
u4880:
	line	142
	
l8036:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
l8038:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
l8040:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l8042:	
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
	
l3397:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_atoi
psect	text916,local,class=CODE,delta=2
global __ptext916
__ptext916:

;; *************** function _atoi *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\atoi.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> main@data_pwm(3), 
;; Auto vars:     Size  Location     Type
;;  s               1    7[BANK0 ] PTR const unsigned char 
;;		 -> main@data_pwm(3), 
;;  a               2    5[BANK0 ] int 
;;  sign            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___wmul
;;		_isdigit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text916
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\atoi.c"
	line	6
	global	__size_of_atoi
	__size_of_atoi	equ	__end_of_atoi-_atoi
	
_atoi:	
	opt	stack 5
; Regs used in _atoi: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;atoi@s stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(atoi@s)
	line	10
	
l7934:	
	goto	l7938
	line	11
	
l7936:	
	incf	(atoi@s),f
	line	10
	
l7938:	
	movf	(atoi@s),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	020h
	skipnz
	goto	u4631
	goto	u4630
u4631:
	goto	l7936
u4630:
	
l7940:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	09h
	skipnz
	goto	u4641
	goto	u4640
u4641:
	goto	l7936
u4640:
	line	12
	
l7942:	
	clrf	(atoi@a)
	clrf	(atoi@a+1)
	line	13
	clrf	(atoi@sign)
	line	14
	
l7944:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Dh
	skipz
	goto	u4651
	goto	u4650
u4651:
	goto	l7948
u4650:
	line	15
	
l7946:	
	incf	(atoi@sign),f
	line	16
	incf	(atoi@s),f
	line	17
	goto	l7956
	
l7948:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Bh
	skipz
	goto	u4661
	goto	u4660
u4661:
	goto	l7956
u4660:
	line	18
	
l7950:	
	incf	(atoi@s),f
	goto	l7956
	line	20
	
l7952:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	(atoi@a+1),w
	movwf	(?___wmul+1)
	movf	(atoi@a),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	indf,w
	addwf	(0+(?___wmul)),w
	movwf	(??_atoi+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_atoi+0)+0
	movf	0+(??_atoi+0)+0,w
	addlw	low(0FFD0h)
	movwf	(atoi@a)
	movf	1+(??_atoi+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(atoi@a)
	goto	l7950
	line	19
	
l7956:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	fcall	_isdigit
	btfsc	status,0
	goto	u4671
	goto	u4670
u4671:
	goto	l7952
u4670:
	line	21
	
l7958:	
	movf	(atoi@sign),w
	skipz
	goto	u4680
	goto	l7964
u4680:
	line	22
	
l7960:	
	comf	(atoi@a),w
	movwf	(??_atoi+0)+0
	comf	(atoi@a+1),w
	movwf	((??_atoi+0)+0+1)
	incf	(??_atoi+0)+0,f
	skipnz
	incf	((??_atoi+0)+0+1),f
	movf	0+(??_atoi+0)+0,w
	movwf	(?_atoi)
	movf	1+(??_atoi+0)+0,w
	movwf	(?_atoi+1)
	goto	l3327
	line	23
	
l7964:	
	movf	(atoi@a+1),w
	movwf	(?_atoi+1)
	movf	(atoi@a),w
	movwf	(?_atoi)
	line	24
	
l3327:	
	return
	opt stack 0
GLOBAL	__end_of_atoi
	__end_of_atoi:
;; =============== function _atoi ends ============

	signat	_atoi,4218
	global	_pwm_10bit
psect	text917,local,class=CODE,delta=2
global __ptext917
__ptext917:

;; *************** function _pwm_10bit *****************
;; Defined at:
;;		line 120 in file "D:\TTVXL\Project TTVXL\BT01week16ttvxlbuoi1\BT01week16ttvxlbuoi1.c"
;; Parameters:    Size  Location     Type
;;  pwm             2    8[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text917
	file	"D:\TTVXL\Project TTVXL\BT01week16ttvxlbuoi1\BT01week16ttvxlbuoi1.c"
	line	120
	global	__size_of_pwm_10bit
	__size_of_pwm_10bit	equ	__end_of_pwm_10bit-_pwm_10bit
	
_pwm_10bit:	
	opt	stack 5
; Regs used in _pwm_10bit: [wreg+status,2+status,0+pclath+cstack]
	line	121
	
l6886:	
;BT01week16ttvxlbuoi1.c: 121: CCPR1L = pwm/4;
	movlw	04h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(pwm_10bit@pwm+1),w
	movwf	1+(?___awdiv)+02h
	movf	(pwm_10bit@pwm),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(21)	;volatile
	line	122
	
l6888:	
;BT01week16ttvxlbuoi1.c: 122: DC1B1 = 0; DC1B0 = 0;
	bcf	(189/8),(189)&7
	
l6890:	
	bcf	(188/8),(188)&7
	line	123
	
l6892:	
;BT01week16ttvxlbuoi1.c: 123: if((pwm & 2) == 1) DC1B1 = 1;
	movf	(pwm_10bit@pwm),w
	andlw	02h
	xorlw	01h
	skipz
	goto	u3131
	goto	u3130
u3131:
	goto	l2174
u3130:
	
l6894:	
	bsf	(189/8),(189)&7
	
l2174:	
	line	124
;BT01week16ttvxlbuoi1.c: 124: if((pwm & 1) == 1) DC1B0 = 1;
	btfss	(pwm_10bit@pwm),(0)&7
	goto	u3141
	goto	u3140
u3141:
	goto	l2176
u3140:
	
l6896:	
	bsf	(188/8),(188)&7
	line	125
	
l2176:	
	return
	opt stack 0
GLOBAL	__end_of_pwm_10bit
	__end_of_pwm_10bit:
;; =============== function _pwm_10bit ends ============

	signat	_pwm_10bit,4216
	global	_lcd_busy
psect	text918,local,class=CODE,delta=2
global __ptext918
__ptext918:

;; *************** function _lcd_busy *****************
;; Defined at:
;;		line 47 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  busy            1    4[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;;		_lcd_putc
;;		_lcd_gotoxy
;; This function uses a non-reentrant model
;;
psect	text918
	file	"D:\TTVXL\Library\lcd(16).c"
	line	47
	global	__size_of_lcd_busy
	__size_of_lcd_busy	equ	__end_of_lcd_busy-_lcd_busy
	
_lcd_busy:	
	opt	stack 2
; Regs used in _lcd_busy: [wreg]
	line	50
	
l7920:	
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
	
l7922:	
;lcd(16).c: 57: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u5847:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5847
opt asmopt_on

	line	58
	
l7924:	
;lcd(16).c: 58: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	59
;lcd(16).c: 59: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u5857:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5857
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
	
l7926:	
;lcd(16).c: 63: RD3 = 0;
	bcf	(67/8),(67)&7
	line	64
;lcd(16).c: 64: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u5867:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5867
opt asmopt_on

	line	65
	
l7928:	
;lcd(16).c: 65: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	66
;lcd(16).c: 66: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u5877:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5877
opt asmopt_on

	line	67
	
l7930:	
;lcd(16).c: 67: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	70
;lcd(16).c: 70: return busy;
	movf	(lcd_busy@busy),w
	line	71
	
l1059:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_busy
	__end_of_lcd_busy:
;; =============== function _lcd_busy ends ============

	signat	_lcd_busy,89
	global	_lcd_put_byte
psect	text919,local,class=CODE,delta=2
global __ptext919
__ptext919:

;; *************** function _lcd_put_byte *****************
;; Defined at:
;;		line 106 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  rs              1    wreg     unsigned char 
;;  b               1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rs              1    6[COMMON] unsigned char 
;;  temp            1    7[COMMON] struct _BYTE_VAL
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;;		_lcd_putc
;;		_lcd_gotoxy
;; This function uses a non-reentrant model
;;
psect	text919
	file	"D:\TTVXL\Library\lcd(16).c"
	line	106
	global	__size_of_lcd_put_byte
	__size_of_lcd_put_byte	equ	__end_of_lcd_put_byte-_lcd_put_byte
	
_lcd_put_byte:	
	opt	stack 2
; Regs used in _lcd_put_byte: [wreg+status,2+status,0]
;lcd_put_byte@rs stored from wreg
	line	109
	movwf	(lcd_put_byte@rs)
	
l7884:	
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
	
l7886:	
;lcd(16).c: 115: if(rs) RD1 = 1;
	movf	(lcd_put_byte@rs),w
	skipz
	goto	u4460
	goto	l7890
u4460:
	
l7888:	
	bsf	(65/8),(65)&7
	line	117
	
l7890:	
;lcd(16).c: 117: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5887:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5887
opt asmopt_on

	line	118
	
l7892:	
;lcd(16).c: 118: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	119
;lcd(16).c: 119: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5897:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5897
opt asmopt_on

	line	120
	
l7894:	
;lcd(16).c: 120: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	122
;lcd(16).c: 122: temp.Val = b;
	movf	(lcd_put_byte@b),w
	movwf	(lcd_put_byte@temp)
	line	125
	
l7896:	
;lcd(16).c: 125: RD4 = temp.bits.b4;
	swapf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u4471
	goto	u4470
	
u4471:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u4484
u4470:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u4484:
	line	126
	
l7898:	
;lcd(16).c: 126: RD5 = temp.bits.b5;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u4491
	goto	u4490
	
u4491:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u4504
u4490:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u4504:
	line	127
	
l7900:	
;lcd(16).c: 127: RD6 = temp.bits.b6;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u4511
	goto	u4510
	
u4511:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u4524
u4510:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u4524:
	line	128
	
l7902:	
;lcd(16).c: 128: RD7 = temp.bits.b7;
	rlf	(lcd_put_byte@temp),w
	rlf	(lcd_put_byte@temp),w
	andlw	1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u4531
	goto	u4530
	
u4531:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u4544
u4530:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u4544:
	line	129
;lcd(16).c: 129: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5907:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5907
opt asmopt_on

	line	130
	
l7904:	
;lcd(16).c: 130: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	131
;lcd(16).c: 131: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5917:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5917
opt asmopt_on

	line	132
	
l7906:	
;lcd(16).c: 132: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	134
	
l7908:	
;lcd(16).c: 134: RD4 = temp.bits.b0;
	movf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u4551
	goto	u4550
	
u4551:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u4564
u4550:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u4564:
	line	135
	
l7910:	
;lcd(16).c: 135: RD5 = temp.bits.b1;
	rrf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u4571
	goto	u4570
	
u4571:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u4584
u4570:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u4584:
	line	136
	
l7912:	
;lcd(16).c: 136: RD6 = temp.bits.b2;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u4591
	goto	u4590
	
u4591:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u4604
u4590:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u4604:
	line	137
	
l7914:	
;lcd(16).c: 137: RD7 = temp.bits.b3;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u4611
	goto	u4610
	
u4611:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u4624
u4610:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u4624:
	line	138
;lcd(16).c: 138: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5927:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5927
opt asmopt_on

	line	139
	
l7916:	
;lcd(16).c: 139: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	140
;lcd(16).c: 140: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5937:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5937
opt asmopt_on

	line	141
	
l7918:	
;lcd(16).c: 141: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	142
	
l1067:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_put_byte
	__end_of_lcd_put_byte:
;; =============== function _lcd_put_byte ends ============

	signat	_lcd_put_byte,8312
	global	___awmod
psect	text920,local,class=CODE,delta=2
global __ptext920
__ptext920:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    3[COMMON] int 
;;  dividend        2    5[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    8[COMMON] unsigned char 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] int 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text920
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l6800:	
	clrf	(___awmod@sign)
	line	9
	
l6802:	
	btfss	(___awmod@dividend+1),7
	goto	u2891
	goto	u2890
u2891:
	goto	l6808
u2890:
	line	10
	
l6804:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l6806:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l6808:	
	btfss	(___awmod@divisor+1),7
	goto	u2901
	goto	u2900
u2901:
	goto	l6812
u2900:
	line	14
	
l6810:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l6812:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2911
	goto	u2910
u2911:
	goto	l6828
u2910:
	line	16
	
l6814:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l6818
	line	18
	
l6816:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l6818:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l6816
u2920:
	line	22
	
l6820:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2935
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2935:
	skipc
	goto	u2931
	goto	u2930
u2931:
	goto	l6824
u2930:
	line	23
	
l6822:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l6824:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l6826:	
	decfsz	(___awmod@counter),f
	goto	u2941
	goto	u2940
u2941:
	goto	l6820
u2940:
	line	27
	
l6828:	
	movf	(___awmod@sign),w
	skipz
	goto	u2950
	goto	l6832
u2950:
	line	28
	
l6830:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l6832:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l3568:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___lldiv
psect	text921,local,class=CODE,delta=2
global __ptext921
__ptext921:

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK0 ] unsigned long 
;;  dividend        4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    3[COMMON] unsigned long 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       8       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text921
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 5
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l7858:	
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	10
	
l7860:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u4421
	goto	u4420
u4421:
	goto	l7880
u4420:
	line	11
	
l7862:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	12
	goto	l7866
	line	13
	
l7864:	
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	14
	incf	(___lldiv@counter),f
	line	12
	
l7866:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u4431
	goto	u4430
u4431:
	goto	l7864
u4430:
	line	17
	
l7868:	
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	18
	
l7870:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u4445
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u4445
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u4445
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u4445:
	skipc
	goto	u4441
	goto	u4440
u4441:
	goto	l7876
u4440:
	line	19
	
l7872:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	20
	
l7874:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	22
	
l7876:	
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	23
	
l7878:	
	decfsz	(___lldiv@counter),f
	goto	u4451
	goto	u4450
u4451:
	goto	l7868
u4450:
	line	25
	
l7880:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	26
	
l3529:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___ftge
psect	text922,local,class=CODE,delta=2
global __ptext922
__ptext922:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    3[COMMON] float 
;;  ff2             3    6[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text922
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 5
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l6754:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l6758
u2820:
	line	7
	
l6756:	
	movf	(___ftge@ff1),w
	sublw	0
	movwf	(___ftge@ff1)
	movf	(___ftge@ff1+1),w
	skipc
	incfsz	(___ftge@ff1+1),w
	sublw	0
	movwf	1+(___ftge@ff1)
	movf	(___ftge@ff1+2),w
	skipc
	incfsz	(___ftge@ff1+2),w
	sublw	080h
	movwf	2+(___ftge@ff1)
	line	8
	
l6758:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l6762
u2830:
	line	9
	
l6760:	
	movf	(___ftge@ff2),w
	sublw	0
	movwf	(___ftge@ff2)
	movf	(___ftge@ff2+1),w
	skipc
	incfsz	(___ftge@ff2+1),w
	sublw	0
	movwf	1+(___ftge@ff2)
	movf	(___ftge@ff2+2),w
	skipc
	incfsz	(___ftge@ff2+2),w
	sublw	080h
	movwf	2+(___ftge@ff2)
	line	10
	
l6762:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l6764:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l6766:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u2845
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u2845
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u2845:
	skipnc
	goto	u2841
	goto	u2840
u2841:
	goto	l6770
u2840:
	
l6768:	
	clrc
	
	goto	l3519
	
l6770:	
	setc
	
	line	13
	
l3519:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text923,local,class=CODE,delta=2
global __ptext923
__ptext923:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    3[COMMON] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 160/20
;;		On exit  : 160/20
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text923
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 5
; Regs used in ___ftneg: [wreg]
	line	17
	
l6746:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u2811
	goto	u2810
u2811:
	goto	l6750
u2810:
	line	18
	
l6748:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	line	19
	
l6750:	
	line	20
	
l3514:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___llmod
psect	text924,local,class=CODE,delta=2
global __ptext924
__ptext924:

;; *************** function ___llmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    8[BANK0 ] unsigned long 
;;  dividend        4   12[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       8       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text924
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 5
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l7838:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u4381
	goto	u4380
u4381:
	goto	l7854
u4380:
	line	9
	
l7840:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	10
	goto	l7844
	line	11
	
l7842:	
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	line	12
	incf	(___llmod@counter),f
	line	10
	
l7844:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u4391
	goto	u4390
u4391:
	goto	l7842
u4390:
	line	15
	
l7846:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u4405
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u4405
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u4405
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u4405:
	skipc
	goto	u4401
	goto	u4400
u4401:
	goto	l7850
u4400:
	line	16
	
l7848:	
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),f
	movf	(___llmod@divisor+1),w
	skipc
	incfsz	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),f
	movf	(___llmod@divisor+2),w
	skipc
	incfsz	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),f
	movf	(___llmod@divisor+3),w
	skipc
	incfsz	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),f
	line	17
	
l7850:	
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	line	18
	
l7852:	
	decfsz	(___llmod@counter),f
	goto	u4411
	goto	u4410
u4411:
	goto	l7846
u4410:
	line	20
	
l7854:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	line	21
	
l3510:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	___awdiv
psect	text925,local,class=CODE,delta=2
global __ptext925
__ptext925:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] int 
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pwm_10bit
;;		_scale
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text925
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l6682:	
	clrf	(___awdiv@sign)
	line	10
	
l6684:	
	btfss	(___awdiv@divisor+1),7
	goto	u2701
	goto	u2700
u2701:
	goto	l6690
u2700:
	line	11
	
l6686:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l6688:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l6690:	
	btfss	(___awdiv@dividend+1),7
	goto	u2711
	goto	u2710
u2711:
	goto	l6696
u2710:
	line	15
	
l6692:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l6694:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l6696:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l6698:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2721
	goto	u2720
u2721:
	goto	l6718
u2720:
	line	20
	
l6700:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l6704
	line	22
	
l6702:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l6704:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l6702
u2730:
	line	26
	
l6706:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l6708:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2745
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2745:
	skipc
	goto	u2741
	goto	u2740
u2741:
	goto	l6714
u2740:
	line	28
	
l6710:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l6712:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l6714:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l6716:	
	decfsz	(___awdiv@counter),f
	goto	u2751
	goto	u2750
u2751:
	goto	l6706
u2750:
	line	34
	
l6718:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2760
	goto	l6722
u2760:
	line	35
	
l6720:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l6722:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l3500:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text926,local,class=CODE,delta=2
global __ptext926
__ptext926:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   16[BANK0 ] unsigned long 
;;  exp1            1   20[BANK0 ] unsigned char 
;;  sign1           1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text926
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l6644:	
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
	goto	u2621
	goto	u2620
u2621:
	goto	l6648
u2620:
	line	50
	
l6646:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l3460
	line	51
	
l6648:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2635:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2630:
	addlw	-1
	skipz
	goto	u2635
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l6650:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l6652:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l6654:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l6656:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l6658:	
	btfss	(___fttol@exp1),7
	goto	u2641
	goto	u2640
u2641:
	goto	l6668
u2640:
	line	57
	
l6660:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2651
	goto	u2650
u2651:
	goto	l6664
u2650:
	goto	l6646
	line	60
	
l6664:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l6666:	
	incfsz	(___fttol@exp1),f
	goto	u2661
	goto	u2660
u2661:
	goto	l6664
u2660:
	goto	l6674
	line	63
	
l6668:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2671
	goto	u2670
u2671:
	goto	l3467
u2670:
	goto	l6646
	line	66
	
l6672:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l3467:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u2681
	goto	u2680
u2681:
	goto	l6672
u2680:
	line	70
	
l6674:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2690
	goto	l6678
u2690:
	line	71
	
l6676:	
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
	
l6678:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l3460:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text927,local,class=CODE,delta=2
global __ptext927
__ptext927:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    3[COMMON] unsigned um
;;  exp             1    6[COMMON] unsigned char 
;;  sign            1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    3[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         5       3       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___awtoft
;;		___lltoft
;; This function uses a non-reentrant model
;;
psect	text927
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 3
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l7810:	
	movf	(___ftpack@exp),w
	skipz
	goto	u4310
	goto	l7814
u4310:
	
l7812:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u4321
	goto	u4320
u4321:
	goto	l7820
u4320:
	line	65
	
l7814:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l3719
	line	67
	
l7818:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l7820:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4331
	goto	u4330
u4331:
	goto	l7818
u4330:
	goto	l7824
	line	71
	
l7822:	
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
	
l7824:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4341
	goto	u4340
u4341:
	goto	l7822
u4340:
	goto	l7828
	line	76
	
l7826:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l7828:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u4351
	goto	u4350
u4351:
	goto	l7826
u4350:
	
l3728:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u4361
	goto	u4360
u4361:
	goto	l3729
u4360:
	line	80
	
l7830:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l3729:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l7832:	
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
	
l7834:	
	movf	(___ftpack@sign),w
	skipz
	goto	u4370
	goto	l3730
u4370:
	line	84
	
l7836:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l3730:	
	line	85
	line	86
	
l3719:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lbmod
psect	text928,local,class=CODE,delta=2
global __ptext928
__ptext928:

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    5[COMMON] unsigned char 
;;  rem             1    7[COMMON] unsigned char 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;; This function uses a non-reentrant model
;;
psect	text928
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbmod.c"
	line	5
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
	opt	stack 4
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	line	9
	movwf	(___lbmod@dividend)
	
l6598:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l6600:	
	clrf	(___lbmod@rem)
	line	12
	
l6602:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u2525:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u2525
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l6604:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l6606:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u2531
	goto	u2530
u2531:
	goto	l6610
u2530:
	line	15
	
l6608:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l6610:	
	decfsz	(___lbmod@counter),f
	goto	u2541
	goto	u2540
u2541:
	goto	l6602
u2540:
	line	17
	
l6612:	
	movf	(___lbmod@rem),w
	line	18
	
l3389:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text929,local,class=CODE,delta=2
global __ptext929
__ptext929:

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    8[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    0[BANK0 ] unsigned char 
;;  quotient        1    2[BANK0 ] unsigned char 
;;  counter         1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;; This function uses a non-reentrant model
;;
psect	text929
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbdiv.c"
	line	5
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
	opt	stack 4
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	line	9
	movwf	(___lbdiv@dividend)
	
l6574:	
	clrf	(___lbdiv@quotient)
	line	10
	
l6576:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u2480
	goto	l6594
u2480:
	line	11
	
l6578:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l6582
	
l3378:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l6580:	
	incf	(___lbdiv@counter),f
	line	12
	
l6582:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u2491
	goto	u2490
u2491:
	goto	l3378
u2490:
	line	16
	
l3380:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l6584:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l6590
u2500:
	line	19
	
l6586:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l6588:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l6590:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l6592:	
	decfsz	(___lbdiv@counter),f
	goto	u2511
	goto	u2510
u2511:
	goto	l3380
u2510:
	line	25
	
l6594:	
	movf	(___lbdiv@quotient),w
	line	26
	
l3383:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___wmul
psect	text930,local,class=CODE,delta=2
global __ptext930
__ptext930:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    3[COMMON] unsigned int 
;;  multiplicand    2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    7[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 40/20
;;		On exit  : 40/20
;;		Unchanged: FFFBF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;;		_printf
;;		_atoi
;; This function uses a non-reentrant model
;;
psect	text930
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l6558:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l6560:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l6564
u2460:
	line	8
	
l6562:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l6564:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l6566:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l6568:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l6560
u2470:
	line	12
	
l6570:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l3353:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text931,local,class=CODE,delta=2
global __ptext931
__ptext931:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    3[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    5[BANK0 ] unsigned char 
;;  product         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text931
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 4
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l7794:	
	clrf	(___bmul@product)
	line	7
	
l7796:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u4291
	goto	u4290
u4291:
	goto	l7800
u4290:
	line	8
	
l7798:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l7800:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l7802:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l7804:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u4301
	goto	u4300
u4301:
	goto	l7796
u4300:
	line	12
	
l7806:	
	movf	(___bmul@product),w
	line	13
	
l3347:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	__div_to_l_
psect	text932,local,class=CODE,delta=2
global __ptext932
__ptext932:

;; *************** function __div_to_l_ *****************
;; Defined at:
;;		line 61 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fldivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    3[COMMON] unsigned char 
;;  f2              3    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  quot            4    8[BANK0 ] unsigned long 
;;  exp1            1   13[BANK0 ] unsigned char 
;;  cntr            1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    3[COMMON] unsigned long 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       8       0       0       0
;;      Totals:         6      14       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text932
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fldivl.c"
	line	61
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
	opt	stack 5
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l6496:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	clrc
	rlf	(??__div_to_l_+0)+2,w
	rlf	(??__div_to_l_+0)+3,w
	movwf	(__div_to_l_@exp1)
	movf	((__div_to_l_@exp1)),f
	skipz
	goto	u2351
	goto	u2350
u2351:
	goto	l6500
u2350:
	line	67
	
l6498:	
	clrf	(?__div_to_l_)
	clrf	(?__div_to_l_+1)
	clrf	(?__div_to_l_+2)
	clrf	(?__div_to_l_+3)
	goto	l3637
	line	68
	
l6500:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	clrc
	rlf	(??__div_to_l_+0)+2,w
	rlf	(??__div_to_l_+0)+3,w
	movwf	(__div_to_l_@cntr)
	movf	((__div_to_l_@cntr)),f
	skipz
	goto	u2361
	goto	u2360
u2361:
	goto	l6504
u2360:
	goto	l6498
	line	70
	
l6504:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	080h
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	line	71
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0
	andwf	indf,f
	line	72
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	080h
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	line	73
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0
	andwf	indf,f
	line	74
	
l6506:	
	clrf	(__div_to_l_@quot)
	clrf	(__div_to_l_@quot+1)
	clrf	(__div_to_l_@quot+2)
	clrf	(__div_to_l_@quot+3)
	line	75
	
l6508:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l6510:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l6512:	
	movlw	(020h)
	movwf	(__div_to_l_@cntr)
	line	79
	
l6514:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	80
	
l6516:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+3
	movf	3+(??__div_to_l_+0)+0,w
	subwf	3+(??__div_to_l_+4)+0,w
	skipz
	goto	u2375
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u2375
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u2375
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u2375:
	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l3640
u2370:
	line	81
	
l6518:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	1+(??__div_to_l_+0)+0,w
	skipc
	incfsz	1+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	2+(??__div_to_l_+0)+0,w
	skipc
	incfsz	2+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	3+(??__div_to_l_+0)+0,w
	skipc
	incf	3+(??__div_to_l_+0)+0,w
	subwf	indf,f
	movlw	3
	subwf	fsr0
	line	82
	
l6520:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	83
	
l3640:	
	line	84
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	clrc
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	line	85
	
l6522:	
	decfsz	(__div_to_l_@cntr),f
	goto	u2381
	goto	u2380
u2381:
	goto	l6514
u2380:
	
l3641:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u2391
	goto	u2390
u2391:
	goto	l6532
u2390:
	line	87
	
l6524:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u2401
	goto	u2400
u2401:
	goto	l6528
u2400:
	goto	l6498
	line	90
	
l6528:	
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	line	91
	
l6530:	
	incfsz	(__div_to_l_@exp1),f
	goto	u2411
	goto	u2410
u2411:
	goto	l6528
u2410:
	goto	l6538
	line	93
	
l6532:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u2421
	goto	u2420
u2421:
	goto	l3648
u2420:
	goto	l6498
	line	96
	
l6536:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	97
	decf	(__div_to_l_@exp1),f
	line	98
	
l3648:	
	line	95
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u2431
	goto	u2430
u2431:
	goto	l6536
u2430:
	line	100
	
l6538:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	line	101
	
l3637:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
;; =============== function __div_to_l_ ends ============

	signat	__div_to_l_,8316
	global	__tdiv_to_l_
psect	text933,local,class=CODE,delta=2
global __ptext933
__ptext933:

;; *************** function __tdiv_to_l_ *****************
;; Defined at:
;;		line 61 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    3[COMMON] float 
;;  f2              3    6[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  quot            4    3[BANK0 ] unsigned long 
;;  exp1            1    8[BANK0 ] unsigned char 
;;  cntr            1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    3[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         6       9       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text933
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdivl.c"
	line	61
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
	opt	stack 5
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l6448:	
	movf	(__tdiv_to_l_@f1),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f1+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f1+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	movwf	(__tdiv_to_l_@exp1)
	movf	((__tdiv_to_l_@exp1)),f
	skipz
	goto	u2261
	goto	u2260
u2261:
	goto	l6452
u2260:
	line	67
	
l6450:	
	clrf	(?__tdiv_to_l_)
	clrf	(?__tdiv_to_l_+1)
	clrf	(?__tdiv_to_l_+2)
	clrf	(?__tdiv_to_l_+3)
	goto	l3594
	line	68
	
l6452:	
	movf	(__tdiv_to_l_@f2),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f2+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f2+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	movwf	(__tdiv_to_l_@cntr)
	movf	((__tdiv_to_l_@cntr)),f
	skipz
	goto	u2271
	goto	u2270
u2271:
	goto	l3595
u2270:
	goto	l6450
	line	69
	
l3595:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l6456:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l6458:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	
l6460:	
	clrf	(__tdiv_to_l_@quot)
	clrf	(__tdiv_to_l_@quot+1)
	clrf	(__tdiv_to_l_@quot+2)
	clrf	(__tdiv_to_l_@quot+3)
	line	75
	
l6462:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l6464:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	(018h)
	movwf	(__tdiv_to_l_@cntr)
	line	79
	
l6466:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	80
	
l6468:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u2285
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u2285
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u2285:
	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l6474
u2280:
	line	81
	
l6470:	
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),f
	movf	(__tdiv_to_l_@f2+1),w
	skipc
	incfsz	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),f
	movf	(__tdiv_to_l_@f2+2),w
	skipc
	incf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),f
	line	82
	
l6472:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	line	84
	
l6474:	
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	line	85
	
l6476:	
	decfsz	(__tdiv_to_l_@cntr),f
	goto	u2291
	goto	u2290
u2291:
	goto	l6466
u2290:
	
l3598:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u2301
	goto	u2300
u2301:
	goto	l6486
u2300:
	line	87
	
l6478:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u2311
	goto	u2310
u2311:
	goto	l6482
u2310:
	goto	l6450
	line	90
	
l6482:	
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	line	91
	
l6484:	
	incfsz	(__tdiv_to_l_@exp1),f
	goto	u2321
	goto	u2320
u2321:
	goto	l6482
u2320:
	goto	l6492
	line	93
	
l6486:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l3605
u2330:
	goto	l6450
	line	96
	
l6490:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	97
	decf	(__tdiv_to_l_@exp1),f
	line	98
	
l3605:	
	line	95
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u2341
	goto	u2340
u2341:
	goto	l6490
u2340:
	line	100
	
l6492:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	line	101
	
l3594:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
;; =============== function __tdiv_to_l_ ends ============

	signat	__tdiv_to_l_,8316
	global	_isdigit
psect	text934,local,class=CODE,delta=2
global __ptext934
__ptext934:

;; *************** function _isdigit *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 40/20
;;		On exit  : 40/20
;;		Unchanged: FFFBF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;;		_atoi
;; This function uses a non-reentrant model
;;
psect	text934
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
	line	13
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 5
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l6436:	
	clrf	(_isdigit$3697)
	
l6438:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u2241
	goto	u2240
u2241:
	goto	l6444
u2240:
	
l6440:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l6444
u2250:
	
l6442:	
	clrf	(_isdigit$3697)
	incf	(_isdigit$3697),f
	
l6444:	
	rrf	(_isdigit$3697),w
	
	line	15
	
l3332:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_rx
psect	text935,local,class=CODE,delta=2
global __ptext935
__ptext935:

;; *************** function _rx *****************
;; Defined at:
;;		line 141 in file "D:\TTVXL\Project TTVXL\BT01week16ttvxlbuoi1\BT01week16ttvxlbuoi1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text935
	file	"D:\TTVXL\Project TTVXL\BT01week16ttvxlbuoi1\BT01week16ttvxlbuoi1.c"
	line	141
	global	__size_of_rx
	__size_of_rx	equ	__end_of_rx-_rx
	
_rx:	
	opt	stack 6
; Regs used in _rx: [wreg]
	line	142
	
l6380:	
;BT01week16ttvxlbuoi1.c: 142: SYNC = 0; BRGH = 1; BRG16 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	143
	
l6382:	
;BT01week16ttvxlbuoi1.c: 143: SPBRGH = 0x02;
	movlw	(02h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	144
;BT01week16ttvxlbuoi1.c: 144: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	145
	
l6384:	
;BT01week16ttvxlbuoi1.c: 145: CREN = 1; RX9 = 0; SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(196/8),(196)&7
	
l6386:	
	bcf	(198/8),(198)&7
	
l6388:	
	bsf	(199/8),(199)&7
	line	147
	
l6390:	
;BT01week16ttvxlbuoi1.c: 147: RCIE=1; RCIF=0; PEIE=1; GIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1125/8)^080h,(1125)&7
	
l6392:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(101/8),(101)&7
	
l6394:	
	bsf	(94/8),(94)&7
	
l6396:	
	bsf	(95/8),(95)&7
	line	148
	
l2194:	
	return
	opt stack 0
GLOBAL	__end_of_rx
	__end_of_rx:
;; =============== function _rx ends ============

	signat	_rx,88
	global	_tx
psect	text936,local,class=CODE,delta=2
global __ptext936
__ptext936:

;; *************** function _tx *****************
;; Defined at:
;;		line 134 in file "D:\TTVXL\Project TTVXL\BT01week16ttvxlbuoi1\BT01week16ttvxlbuoi1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text936
	file	"D:\TTVXL\Project TTVXL\BT01week16ttvxlbuoi1\BT01week16ttvxlbuoi1.c"
	line	134
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
	
_tx:	
	opt	stack 6
; Regs used in _tx: [wreg]
	line	135
	
l6370:	
;BT01week16ttvxlbuoi1.c: 135: SYNC = 0; BRGH = 1; BRG16 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	136
	
l6372:	
;BT01week16ttvxlbuoi1.c: 136: SPBRGH = 0x02;
	movlw	(02h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	137
;BT01week16ttvxlbuoi1.c: 137: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	138
	
l6374:	
;BT01week16ttvxlbuoi1.c: 138: TXEN = 1; TX9 = 0; SPEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	
l6376:	
	bcf	(1222/8)^080h,(1222)&7
	
l6378:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	139
	
l2191:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
;; =============== function _tx ends ============

	signat	_tx,88
	global	_isprint
psect	text937,local,class=CODE,delta=2
global __ptext937
__ptext937:

;; *************** function _isprint *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isprint.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    4[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text937
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isprint.c"
	line	13
	global	__size_of_isprint
	__size_of_isprint	equ	__end_of_isprint-_isprint
	
_isprint:	
	opt	stack 3
; Regs used in _isprint: [wreg+status,2+status,0]
;isprint@c stored from wreg
	movwf	(isprint@c)
	line	14
	
l6358:	
	clrf	(_isprint$3700)
	
l6360:	
	movlw	(07Fh)
	subwf	(isprint@c),w
	skipnc
	goto	u2151
	goto	u2150
u2151:
	goto	l6366
u2150:
	
l6362:	
	movlw	(020h)
	subwf	(isprint@c),w
	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l6366
u2160:
	
l6364:	
	clrf	(_isprint$3700)
	incf	(_isprint$3700),f
	
l6366:	
	rrf	(_isprint$3700),w
	
	line	15
	
l3337:	
	return
	opt stack 0
GLOBAL	__end_of_isprint
	__end_of_isprint:
;; =============== function _isprint ends ============

	signat	_isprint,4216
	global	_ngat
psect	text938,local,class=CODE,delta=2
global __ptext938
__ptext938:

;; *************** function _ngat *****************
;; Defined at:
;;		line 87 in file "D:\TTVXL\Project TTVXL\BT01week16ttvxlbuoi1\BT01week16ttvxlbuoi1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text938
	file	"D:\TTVXL\Project TTVXL\BT01week16ttvxlbuoi1\BT01week16ttvxlbuoi1.c"
	line	87
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
	opt	stack 2
; Regs used in _ngat: [wreg-fsr0h+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ngat+0)
	movf	fsr0,w
	movwf	(??_ngat+1)
	movf	pclath,w
	movwf	(??_ngat+2)
	ljmp	_ngat
psect	text938
	line	88
	
i1l6398:	
;BT01week16ttvxlbuoi1.c: 88: if(T0IF)
	btfss	(90/8),(90)&7
	goto	u217_21
	goto	u217_20
u217_21:
	goto	i1l6412
u217_20:
	line	89
	
i1l6400:	
;BT01week16ttvxlbuoi1.c: 89: { TMR0 = 6;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	90
	
i1l6402:	
;BT01week16ttvxlbuoi1.c: 90: dem++;
	incf	(_dem),f
	skipnz
	incf	(_dem+1),f
	line	91
	
i1l6404:	
;BT01week16ttvxlbuoi1.c: 91: if(dem == 250)
		movf	(_dem),w
	xorlw	250
	iorwf	(_dem+1),w

	skipz
	goto	u218_21
	goto	u218_20
u218_21:
	goto	i1l6412
u218_20:
	line	93
	
i1l6406:	
;BT01week16ttvxlbuoi1.c: 92: {
;BT01week16ttvxlbuoi1.c: 93: dem = 0;
	clrf	(_dem)
	clrf	(_dem+1)
	line	94
	
i1l6408:	
;BT01week16ttvxlbuoi1.c: 94: xung = TMR1;
	movf	(14+1),w	;volatile
	movwf	(_xung+1)	;volatile
	movf	(14),w	;volatile
	movwf	(_xung)	;volatile
	line	95
	
i1l6410:	
;BT01week16ttvxlbuoi1.c: 95: TMR1 = 0;
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	98
	
i1l6412:	
;BT01week16ttvxlbuoi1.c: 96: }
;BT01week16ttvxlbuoi1.c: 97: }
;BT01week16ttvxlbuoi1.c: 98: T0IF = 0;
	bcf	(90/8),(90)&7
	line	100
	
i1l6414:	
;BT01week16ttvxlbuoi1.c: 100: if (RCIF){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u219_21
	goto	u219_20
u219_21:
	goto	i1l2161
u219_20:
	line	102
	
i1l6416:	
;BT01week16ttvxlbuoi1.c: 102: data_rx[a]=RCREG;
	movf	(_a),w
	addlw	_data_rx&0ffh
	movwf	fsr0
	movf	(26),w	;volatile
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	103
	
i1l6418:	
;BT01week16ttvxlbuoi1.c: 103: a++;
	incf	(_a),f
	skipnz
	incf	(_a+1),f
	line	104
	
i1l6420:	
;BT01week16ttvxlbuoi1.c: 104: if (a==5) {a=0;}
		movf	(_a),w
	xorlw	5
	iorwf	(_a+1),w

	skipz
	goto	u220_21
	goto	u220_20
u220_21:
	goto	i1l6424
u220_20:
	
i1l6422:	
	clrf	(_a)
	clrf	(_a+1)
	line	105
	
i1l6424:	
;BT01week16ttvxlbuoi1.c: 105: if (RCREG == 'S') {RE0=1;RE1=0;RE2 = 0; TMR2ON=0;}
	movf	(26),w
	xorlw	053h
	skipz
	goto	u221_21
	goto	u221_20
u221_21:
	goto	i1l6428
u221_20:
	
i1l6426:	
	bsf	(72/8),(72)&7
	bcf	(73/8),(73)&7
	bcf	(74/8),(74)&7
	bcf	(146/8),(146)&7
	goto	i1l2161
	line	106
	
i1l6428:	
;BT01week16ttvxlbuoi1.c: 106: else if (RCREG == 'L') {RE0=1;RE1=0;RE2 = 1; TMR2ON=1;}
	movf	(26),w
	xorlw	04Ch
	skipz
	goto	u222_21
	goto	u222_20
u222_21:
	goto	i1l6432
u222_20:
	
i1l6430:	
	bsf	(72/8),(72)&7
	bcf	(73/8),(73)&7
	bsf	(74/8),(74)&7
	bsf	(146/8),(146)&7
	goto	i1l2161
	line	107
	
i1l6432:	
;BT01week16ttvxlbuoi1.c: 107: else if (RCREG == 'R') {RE0=0;RE1=1;RE2 = 0; TMR2ON=1;}
	movf	(26),w
	xorlw	052h
	skipz
	goto	u223_21
	goto	u223_20
u223_21:
	goto	i1l2161
u223_20:
	
i1l6434:	
	bcf	(72/8),(72)&7
	bsf	(73/8),(73)&7
	bcf	(74/8),(74)&7
	bsf	(146/8),(146)&7
	line	110
	
i1l2161:	
	line	111
;BT01week16ttvxlbuoi1.c: 110: }
;BT01week16ttvxlbuoi1.c: 111: RCIF=0;
	bcf	(101/8),(101)&7
	line	112
	
i1l2168:	
	movf	(??_ngat+2),w
	movwf	pclath
	movf	(??_ngat+1),w
	movwf	fsr0
	swapf	(??_ngat+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ngat
	__end_of_ngat:
;; =============== function _ngat ends ============

	signat	_ngat,88
psect	text939,local,class=CODE,delta=2
global __ptext939
__ptext939:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
