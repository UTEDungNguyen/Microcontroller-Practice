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
# 7 "D:\TTVXL\Project TTVXL\BT05week12ttvxl\BT05week12ttvxl.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "D:\TTVXL\Project TTVXL\BT05week12ttvxl\BT05week12ttvxl.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_abs
	FNCALL	_main,___altoft
	FNCALL	_main,___ftmul
	FNCALL	_main,___ftadd
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
	FNCALL	___altoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
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
	global	_xung
	global	_d
	global	_count1
	global	_count2
	global	_t
	global	_CCPR1
_CCPR1	set	21
	global	_CCPR2
_CCPR2	set	27
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCP2CON
_CCP2CON	set	29
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_CCP1IF
_CCP1IF	set	98
	global	_CCP2IF
_CCP2IF	set	104
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
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
	global	_RE1
_RE1	set	73
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
	global	_TMR1ON
_TMR1ON	set	128
	global	_TRISD
_TRISD	set	136
	global	_CCP1IE
_CCP1IE	set	1122
	global	_CCP2IE
_CCP2IE	set	1128
	global	_TRISA4
_TRISA4	set	1068
	global	_TRISC1
_TRISC1	set	1081
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
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	
STR_1:	
	retlw	120	;'x'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	56	;'8'
	retlw	117	;'u'
	retlw	0
psect	strings
	
STR_2:	
	retlw	102	;'f'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	53	;'5'
	retlw	46	;'.'
	retlw	50	;'2'
	retlw	102	;'f'
	retlw	0
psect	strings
	file	"BT05week12ttvxl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_xung:
       ds      4

_d:
       ds      3

_count1:
       ds      2

_count2:
       ds      2

_t:
       ds      3

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
	clrf	((__pbssBANK0)+12)&07Fh
	clrf	((__pbssBANK0)+13)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	_printf$3175
_printf$3175:	; 4 bytes @ 0x0
	ds	4
	global	printf@ap
printf@ap:	; 1 bytes @ 0x4
	ds	1
	global	printf@integ
printf@integ:	; 3 bytes @ 0x5
	ds	3
	global	printf@_val
printf@_val:	; 4 bytes @ 0x8
	ds	4
	global	printf@f
printf@f:	; 1 bytes @ 0xC
	ds	1
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
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_putc
?_lcd_putc:	; 0 bytes @ 0x0
	global	?_isprint
?_isprint:	; 1 bit 
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	?_ngat
?_ngat:	; 0 bytes @ 0x0
	global	??_ngat
??_ngat:	; 0 bytes @ 0x0
	global	?_lcd_busy
?_lcd_busy:	; 1 bytes @ 0x0
	ds	2
	global	?_lcd_put_byte
?_lcd_put_byte:	; 0 bytes @ 0x2
	global	??_lcd_busy
??_lcd_busy:	; 0 bytes @ 0x2
	global	??_isprint
??_isprint:	; 0 bytes @ 0x2
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x2
	global	?___ftge
?___ftge:	; 1 bit 
	global	?___lbmod
?___lbmod:	; 1 bytes @ 0x2
	global	?_abs
?_abs:	; 2 bytes @ 0x2
	global	?___wmul
?___wmul:	; 2 bytes @ 0x2
	global	?___awmod
?___awmod:	; 2 bytes @ 0x2
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x2
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x2
	global	?__tdiv_to_l_
?__tdiv_to_l_:	; 4 bytes @ 0x2
	global	?__div_to_l_
?__div_to_l_:	; 4 bytes @ 0x2
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x2
	global	lcd_put_byte@b
lcd_put_byte@b:	; 1 bytes @ 0x2
	global	_isdigit$3685
_isdigit$3685:	; 1 bytes @ 0x2
	global	_isprint$3688
_isprint$3688:	; 1 bytes @ 0x2
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x2
	global	abs@a
abs@a:	; 2 bytes @ 0x2
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x2
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x2
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x2
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x2
	global	__tdiv_to_l_@f1
__tdiv_to_l_@f1:	; 3 bytes @ 0x2
	global	__div_to_l_@f1
__div_to_l_@f1:	; 3 bytes @ 0x2
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x2
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x2
	ds	1
	global	??_lcd_put_byte
??_lcd_put_byte:	; 0 bytes @ 0x3
	global	??___lbmod
??___lbmod:	; 0 bytes @ 0x3
	global	lcd_busy@busy
lcd_busy@busy:	; 1 bytes @ 0x3
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x3
	global	isprint@c
isprint@c:	; 1 bytes @ 0x3
	ds	1
	global	??_abs
??_abs:	; 0 bytes @ 0x4
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x4
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x4
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x4
	ds	1
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0x5
	global	lcd_put_byte@rs
lcd_put_byte@rs:	; 1 bytes @ 0x5
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x5
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x5
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x5
	global	__tdiv_to_l_@f2
__tdiv_to_l_@f2:	; 3 bytes @ 0x5
	global	__div_to_l_@f2
__div_to_l_@f2:	; 3 bytes @ 0x5
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x6
	global	??___awmod
??___awmod:	; 0 bytes @ 0x6
	global	lcd_put_byte@temp
lcd_put_byte@temp:	; 1 bytes @ 0x6
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x6
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x6
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x6
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x6
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x6
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x7
	global	?_lcd_gotoxy
?_lcd_gotoxy:	; 0 bytes @ 0x7
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x7
	global	?___lbdiv
?___lbdiv:	; 1 bytes @ 0x7
	global	lcd_gotoxy@row
lcd_gotoxy@row:	; 1 bytes @ 0x7
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x7
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x7
	ds	1
	global	??_lcd_gotoxy
??_lcd_gotoxy:	; 0 bytes @ 0x8
	global	??__tdiv_to_l_
??__tdiv_to_l_:	; 0 bytes @ 0x8
	global	??___lbdiv
??___lbdiv:	; 0 bytes @ 0x8
	global	??___ftge
??___ftge:	; 0 bytes @ 0x8
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x8
	global	lcd_gotoxy@col
lcd_gotoxy@col:	; 1 bytes @ 0x8
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x8
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x8
	ds	1
	global	lcd_gotoxy@address
lcd_gotoxy@address:	; 1 bytes @ 0x9
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x9
	ds	1
	global	??_lcd_putc
??_lcd_putc:	; 0 bytes @ 0xA
	global	??___llmod
??___llmod:	; 0 bytes @ 0xA
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0xA
	global	??___altoft
??___altoft:	; 0 bytes @ 0xA
	global	??___lltoft
??___lltoft:	; 0 bytes @ 0xA
	global	lcd_putc@c
lcd_putc@c:	; 1 bytes @ 0xA
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0xA
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0xA
	global	___altoft@exp
___altoft@exp:	; 1 bytes @ 0xA
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0xA
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0xA
	ds	1
	global	??_putch
??_putch:	; 0 bytes @ 0xB
	global	?___bmul
?___bmul:	; 1 bytes @ 0xB
	global	putch@c
putch@c:	; 1 bytes @ 0xB
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0xB
	global	___altoft@sign
___altoft@sign:	; 1 bytes @ 0xB
	ds	1
	global	??_fround
??_fround:	; 0 bytes @ 0xC
	global	??___bmul
??___bmul:	; 0 bytes @ 0xC
	global	??___ftsub
??___ftsub:	; 0 bytes @ 0xC
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0xC
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??__div_to_l_
??__div_to_l_:	; 0 bytes @ 0x0
	global	?___altoft
?___altoft:	; 3 bytes @ 0x0
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x0
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x0
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x0
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x0
	global	___altoft@c
___altoft@c:	; 4 bytes @ 0x0
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x0
	global	__tdiv_to_l_@quot
__tdiv_to_l_@quot:	; 4 bytes @ 0x0
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x2
	ds	2
	global	?___fttol
?___fttol:	; 4 bytes @ 0x4
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x4
	global	__tdiv_to_l_@cntr
__tdiv_to_l_@cntr:	; 1 bytes @ 0x4
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x4
	ds	1
	global	?___llmod
?___llmod:	; 4 bytes @ 0x5
	global	__tdiv_to_l_@exp1
__tdiv_to_l_@exp1:	; 1 bytes @ 0x5
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x5
	ds	3
	global	??___fttol
??___fttol:	; 0 bytes @ 0x8
	global	__div_to_l_@quot
__div_to_l_@quot:	; 4 bytes @ 0x8
	ds	1
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x9
	ds	2
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0xB
	ds	1
	global	__div_to_l_@cntr
__div_to_l_@cntr:	; 1 bytes @ 0xC
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0xC
	ds	1
	global	__div_to_l_@exp1
__div_to_l_@exp1:	; 1 bytes @ 0xD
	ds	3
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x10
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x11
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x11
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x14
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x17
	ds	3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1A
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1B
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1E
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1F
	ds	1
	global	?_scale
?_scale:	; 3 bytes @ 0x20
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x20
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x20
	ds	3
	global	??_scale
??_scale:	; 0 bytes @ 0x23
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x23
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x26
	ds	1
	global	_scale$4124
_scale$4124:	; 3 bytes @ 0x27
	ds	2
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x29
	ds	1
	global	scale@scl
scale@scl:	; 1 bytes @ 0x2A
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x2A
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x2B
	ds	1
	global	?_fround
?_fround:	; 3 bytes @ 0x2C
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x2C
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x2C
	ds	3
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x2F
	global	_fround$4123
_fround$4123:	; 3 bytes @ 0x2F
	ds	3
	global	_fround$4122
_fround$4122:	; 3 bytes @ 0x32
	ds	3
	global	fround@prec
fround@prec:	; 1 bytes @ 0x35
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0x36
	ds	4
	global	??_printf
??_printf:	; 0 bytes @ 0x3A
	ds	5
	global	??_main
??_main:	; 0 bytes @ 0x3F
	ds	3
;;Data sizes: Strings 20, constant 118, data 0, bss 14, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      12
;; BANK0           80     66      80
;; BANK1           80     25      25
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 3
;;		 -> t(BANK0[3]), 
;;
;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?___llmod	unsigned long  size(1) Largest target is 3
;;		 -> t(BANK0[3]), 
;;
;; ?___ftsub	float  size(1) Largest target is 0
;;
;; ?___lltoft	float  size(1) Largest target is 0
;;
;; ?__tdiv_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?__div_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 3
;;		 -> t(BANK0[3]), 
;;
;; ?___ftneg	float  size(1) Largest target is 3
;;		 -> t(BANK0[3]), 
;;
;; ?___awmod	int  size(2) Largest target is 40
;;		 -> dpowers(CODE[40]), t(BANK0[3]), 
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?_scale	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_fround	unsigned int  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 3
;;		 -> t(BANK0[3]), 
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___altoft	float  size(1) Largest target is 0
;;
;; ?_abs	int  size(1) Largest target is 0
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 11
;;		 -> STR_2(CODE[9]), STR_1(CODE[11]), 
;;
;; ?_printf	int  size(1) Largest target is 3
;;		 -> t(BANK0[3]), 
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(BANK0[2]), 
;;
;; S3164$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___altoft
;;   _printf->_putch
;;   _printf->___awdiv
;;   _putch->_lcd_putc
;;   _lcd_putc->_lcd_gotoxy
;;   _scale->___awdiv
;;   _scale->___bmul
;;   _fround->___bmul
;;   _lcd_gotoxy->_lcd_put_byte
;;   _lcd_init->_lcd_put_byte
;;   ___lltoft->___ftpack
;;   ___altoft->___ftpack
;;   ___ftmul->___altoft
;;   ___ftmul->___awdiv
;;   ___ftmul->___bmul
;;   ___ftadd->___bmul
;;   ___llmod->___lldiv
;;   ___awdiv->___awmod
;;   ___fttol->___awdiv
;;   ___fttol->___bmul
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
;;   ___ftsub->___ftadd
;;   _scale->___ftmul
;;   _fround->___ftadd
;;   ___ftmul->___fttol
;;   ___ftadd->___ftmul
;;   ___llmod->___lldiv
;;   ___fttol->___awdiv
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0   13518
;;                                             63 BANK0      3     3      0
;;                           _lcd_init
;;                                _abs
;;                           ___altoft
;;                            ___ftmul
;;                            ___ftadd
;;                         _lcd_gotoxy
;;                             _printf
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              38    34      4   10964
;;                                             54 BANK0      9     5      4
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
;; (2) _putch                                                1     1      0     713
;;                                             11 COMMON     1     1      0
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (3) _lcd_putc                                             1     1      0     691
;;                                             10 COMMON     1     1      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;;                         _lcd_gotoxy
;;                            _isprint
;; ---------------------------------------------------------------------------------
;; (2) ___ftsub                                              6     0      6    1094
;;                                             44 BANK0      6     0      6
;;                            ___ftadd
;;                           ___lltoft (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _scale                                               14    11      3    1688
;;                                             32 BANK0     11     8      3
;;                            ___awmod
;;                            ___awdiv
;;                            ___ftmul
;;                             ___bmul
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _fround                                              13    10      3    1215
;;                                             44 BANK0     10     7      3
;;                            ___lbmod
;;                             ___bmul
;;                            ___lbdiv
;;                            ___ftmul
;;                            ___ftadd (ARG)
;; ---------------------------------------------------------------------------------
;; (4) _lcd_gotoxy                                           3     2      1     313
;;                                              7 COMMON     3     2      1
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             4     4      0     244
;;                                              7 COMMON     3     3      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (2) ___lltoft                                             5     1      4     278
;;                                             10 COMMON     1     1      0
;;                                              0 BANK0      4     0      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (1) ___altoft                                             6     2      4     347
;;                                             10 COMMON     2     2      0
;;                                              0 BANK0      4     0      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (3) ___ftmul                                             15     9      6     535
;;                                             17 BANK0     15     9      6
;;                           ___ftpack
;;                           ___altoft (ARG)
;;                            ___fttol (ARG)
;;                            ___awdiv (ARG)
;;                            ___awmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftadd                                             12     6      6    1049
;;                                             32 BANK0     12     6      6
;;                           ___ftpack
;;                            ___ftmul (ARG)
;;                            ___lbmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (5) _lcd_busy                                             2     2      0      23
;;                                              2 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (5) _lcd_put_byte                                         5     4      1     221
;;                                              2 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              6     2      4     296
;;                                              2 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lldiv                                             13     5      8     162
;;                                              2 COMMON     8     0      8
;;                                              0 BANK0      5     5      0
;; ---------------------------------------------------------------------------------
;; (2) ___ftge                                               6     0      6     136
;;                                              2 COMMON     6     0      6
;; ---------------------------------------------------------------------------------
;; (2) ___ftneg                                              3     0      3      45
;;                                              2 COMMON     3     0      3
;; ---------------------------------------------------------------------------------
;; (2) ___llmod                                              9     1      8     159
;;                                             10 COMMON     1     1      0
;;                                              5 BANK0      8     0      8
;;                            ___lldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              8     4      4     300
;;                                              8 COMMON     4     0      4
;;                                              0 BANK0      4     4      0
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___fttol                                             13     9      4     252
;;                                              4 BANK0     13     9      4
;;                           ___ftpack (ARG)
;;                            ___awmod (ARG)
;;                            ___awdiv (ARG)
;;                             ___bmul (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftpack                                             8     3      5     209
;;                                              2 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (3) ___lbmod                                              5     4      1     159
;;                                              2 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (3) ___lbdiv                                              4     3      1     162
;;                                              7 COMMON     4     3      1
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              2 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (3) ___bmul                                               3     2      1      68
;;                                             11 COMMON     1     0      1
;;                                              0 BANK0      2     2      0
;;                            ___lbmod (ARG)
;;                            ___lbdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) __div_to_l_                                          20    14      6     446
;;                                              2 COMMON     6     0      6
;;                                              0 BANK0     14    14      0
;; ---------------------------------------------------------------------------------
;; (2) __tdiv_to_l_                                         15     9      6     303
;;                                              2 COMMON     9     3      6
;;                                              0 BANK0      6     6      0
;; ---------------------------------------------------------------------------------
;; (2) _isdigit                                              2     2      0      68
;;                                              2 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (4) _isprint                                              2     2      0      68
;;                                              2 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _abs                                                  4     2      2      66
;;                                              2 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (6) _ngat                                                 2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_put_byte
;;     _lcd_busy
;;   _abs
;;   ___altoft
;;     ___ftpack
;;   ___ftmul
;;     ___ftpack
;;     ___altoft (ARG)
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
;;   ___ftadd
;;     ___ftpack
;;     ___ftmul (ARG)
;;       ___ftpack
;;       ___altoft (ARG)
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
;;     ___lbmod (ARG)
;;     ___bmul (ARG)
;;       ___lbmod (ARG)
;;       ___lbdiv (ARG)
;;         ___lbmod (ARG)
;;     ___lbdiv (ARG)
;;       ___lbmod (ARG)
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
;;         ___altoft (ARG)
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
;;       ___altoft (ARG)
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
;;         ___altoft (ARG)
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
;;         ___ftmul (ARG)
;;           ___ftpack
;;           ___altoft (ARG)
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
;;         ___lbmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;     ___ftadd
;;       ___ftpack
;;       ___ftmul (ARG)
;;         ___ftpack
;;         ___altoft (ARG)
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
;;       ___lbmod (ARG)
;;       ___bmul (ARG)
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;       ___lbdiv (ARG)
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
;;         ___ftmul (ARG)
;;           ___ftpack
;;           ___altoft (ARG)
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
;;         ___lbmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv (ARG)
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
;;COMMON               E      C       C       1       85.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0      75       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     42      50       5      100.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     19      19       7       31.3%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      7A      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 19 in file "D:\TTVXL\Project TTVXL\BT05week12ttvxl\BT05week12ttvxl.c"
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
;;		On exit  : 60/20
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_lcd_init
;;		_abs
;;		___altoft
;;		___ftmul
;;		___ftadd
;;		_lcd_gotoxy
;;		_printf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT05week12ttvxl\BT05week12ttvxl.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	20
	
l7179:	
;BT05week12ttvxl.c: 20: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	21
	
l7181:	
;BT05week12ttvxl.c: 21: lcd_init();
	fcall	_lcd_init
	line	22
	
l7183:	
;BT05week12ttvxl.c: 22: TRISA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1068/8)^080h,(1068)&7
	line	23
	
l7185:	
;BT05week12ttvxl.c: 23: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	24
	
l7187:	
;BT05week12ttvxl.c: 24: TRISE0 = 0;
	bcf	(1096/8)^080h,(1096)&7
	line	25
	
l7189:	
;BT05week12ttvxl.c: 25: TRISE1 = 0;
	bcf	(1097/8)^080h,(1097)&7
	line	26
	
l7191:	
;BT05week12ttvxl.c: 26: RE1 =0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(73/8),(73)&7
	line	29
	
l7193:	
;BT05week12ttvxl.c: 29: TMR1GE=0;
	bcf	(134/8),(134)&7
	line	30
	
l7195:	
;BT05week12ttvxl.c: 30: TMR1CS=0;
	bcf	(129/8),(129)&7
	line	31
	
l7197:	
;BT05week12ttvxl.c: 31: T1SYNC=1;
	bsf	(130/8),(130)&7
	line	32
	
l7199:	
;BT05week12ttvxl.c: 32: T1CKPS1=0;T1CKPS0=0;
	bcf	(133/8),(133)&7
	
l7201:	
	bcf	(132/8),(132)&7
	line	34
	
l7203:	
;BT05week12ttvxl.c: 34: TMR1H=0;
	clrf	(15)	;volatile
	line	35
	
l7205:	
;BT05week12ttvxl.c: 35: TMR1L=0;
	clrf	(14)	;volatile
	line	36
	
l7207:	
;BT05week12ttvxl.c: 36: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	39
	
l7209:	
;BT05week12ttvxl.c: 39: TRISC2 =1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1082/8)^080h,(1082)&7
	line	40
	
l7211:	
;BT05week12ttvxl.c: 40: TRISC1 =1;
	bsf	(1081/8)^080h,(1081)&7
	line	41
	
l7213:	
;BT05week12ttvxl.c: 41: CCP1CON = 0b00000101;
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(23)	;volatile
	line	42
	
l7215:	
;BT05week12ttvxl.c: 42: CCP2CON = 0b00000100;
	movlw	(04h)
	movwf	(29)	;volatile
	line	43
	
l7217:	
;BT05week12ttvxl.c: 43: CCP1IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1122/8)^080h,(1122)&7
	line	44
	
l7219:	
;BT05week12ttvxl.c: 44: CCP1IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(98/8),(98)&7
	line	45
	
l7221:	
;BT05week12ttvxl.c: 45: CCP2IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1128/8)^080h,(1128)&7
	line	46
	
l7223:	
;BT05week12ttvxl.c: 46: CCP2IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(104/8),(104)&7
	line	47
	
l7225:	
;BT05week12ttvxl.c: 47: PEIE=1;
	bsf	(94/8),(94)&7
	line	48
	
l7227:	
;BT05week12ttvxl.c: 48: GIE=1;
	bsf	(95/8),(95)&7
	line	53
	
l7229:	
;BT05week12ttvxl.c: 51: {
;BT05week12ttvxl.c: 53: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	138
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u3957:
	decfsz	((??_main+0)+0),f
	goto	u3957
	decfsz	((??_main+0)+0+1),f
	goto	u3957
	decfsz	((??_main+0)+0+2),f
	goto	u3957
	nop2
opt asmopt_on

	line	54
	
l7231:	
;BT05week12ttvxl.c: 54: RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	line	55
	
l7233:	
;BT05week12ttvxl.c: 55: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u3967:
	decfsz	((??_main+0)+0),f
	goto	u3967
	decfsz	((??_main+0)+0+1),f
	goto	u3967
opt asmopt_on

	line	56
	
l7235:	
;BT05week12ttvxl.c: 56: RE1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
	line	58
;BT05week12ttvxl.c: 58: xung = abs(count2-count1);
	movf	(_count2+1),w
	movwf	(?_abs+1)
	movf	(_count2),w
	movwf	(?_abs)
	movf	(_count1),w
	subwf	(?_abs),f
	movf	(_count1+1),w
	skipc
	decf	(?_abs+1),f
	subwf	(?_abs+1),f
	fcall	_abs
	movf	(0+(?_abs)),w
	movwf	(_xung)
	movf	(1+(?_abs)),w
	movwf	(_xung+1)
	movlw	0
	btfsc	(_xung+1),7
	movlw	255
	movwf	(_xung+2)
	movwf	(_xung+3)
	line	59
;BT05week12ttvxl.c: 59: t = xung*(1.0/5000000.0);
	movlw	0xc0
	movwf	(?___ftmul)
	movlw	0x56
	movwf	(?___ftmul+1)
	movlw	0x34
	movwf	(?___ftmul+2)
	movf	(_xung+3),w
	movwf	(?___altoft+3)
	movf	(_xung+2),w
	movwf	(?___altoft+2)
	movf	(_xung+1),w
	movwf	(?___altoft+1)
	movf	(_xung),w
	movwf	(?___altoft)

	fcall	___altoft
	movf	(0+(?___altoft)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___altoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___altoft)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_t)
	movf	(1+(?___ftmul)),w
	movwf	(_t+1)
	movf	(2+(?___ftmul)),w
	movwf	(_t+2)
	line	60
;BT05week12ttvxl.c: 60: d = 17000.0*t+1.0;
	movlw	0x0
	movwf	(?___ftadd)
	movlw	0x80
	movwf	(?___ftadd+1)
	movlw	0x3f
	movwf	(?___ftadd+2)
	movlw	0xd0
	movwf	(?___ftmul)
	movlw	0x84
	movwf	(?___ftmul+1)
	movlw	0x46
	movwf	(?___ftmul+2)
	movf	(_t),w
	movwf	0+(?___ftmul)+03h
	movf	(_t+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_t+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftmul)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftmul)),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_d)
	movf	(1+(?___ftadd)),w
	movwf	(_d+1)
	movf	(2+(?___ftadd)),w
	movwf	(_d+2)
	line	61
;BT05week12ttvxl.c: 61: lcd_gotoxy(0,0);
	clrf	(?_lcd_gotoxy)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	62
	
l7237:	
;BT05week12ttvxl.c: 62: printf("xung: %08u",xung);
	movf	(_xung+3),w
	movwf	(?_printf+3)
	movf	(_xung+2),w
	movwf	(?_printf+2)
	movf	(_xung+1),w
	movwf	(?_printf+1)
	movf	(_xung),w
	movwf	(?_printf)

	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	63
	
l7239:	
;BT05week12ttvxl.c: 63: lcd_gotoxy(0,1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	64
;BT05week12ttvxl.c: 64: printf("f: %5.2f",d);
	movf	(_d),w
	movwf	(?_printf)
	movf	(_d+1),w
	movwf	(?_printf+1)
	movf	(_d+2),w
	movwf	(?_printf+2)
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	goto	l7229
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	66
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_printf
psect	text531,local,class=CODE,delta=2
global __ptext531
__ptext531:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_2(9), STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  f               1   12[BANK1 ] PTR const unsigned char 
;;		 -> STR_2(9), STR_1(11), 
;;  _val            4    8[BANK1 ] struct .
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
;;                  2   54[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/20
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0      25       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0       9      25       0       0
;;Total ram usage:       34 bytes
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
psect	text531
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
	
l6899:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)^080h
	line	540
	goto	l7177
	line	542
	
l6901:	
	movf	(printf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u3421
	goto	u3420
u3421:
	goto	l6905
u3420:
	line	545
	
l6903:	
	movf	(printf@c)^080h,w
	fcall	_putch
	line	546
	goto	l7177
	line	550
	
l6905:	
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	552
	clrf	(printf@flag)^080h
	clrf	(printf@flag+1)^080h
	goto	l6911
	line	583
	
l2214:	
	line	584
	bsf	(printf@flag)^080h+(2/8),(2)&7
	line	585
	
l6907:	
	incf	(printf@f)^080h,f
	line	555
	
l6911:	
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
	goto	l2214
	goto	l6913
	opt asmopt_on

	line	601
	
l6913:	
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u3431
	goto	u3430
u3431:
	goto	l6923
u3430:
	line	602
	
l6915:	
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	604
	
l6917:	
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
	
l6919:	
	incf	(printf@f)^080h,f
	line	605
	
l6921:	
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u3441
	goto	u3440
u3441:
	goto	l6917
u3440:
	line	614
	
l6923:	
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u3451
	goto	u3450
u3451:
	goto	l6937
u3450:
	line	615
	
l6925:	
	bsf	(printf@flag)^080h+(14/8),(14)&7
	line	616
	
l6927:	
	incf	(printf@f)^080h,f
	line	624
	
l6929:	
	clrf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	line	625
	goto	l6935
	line	626
	
l6931:	
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
	
l6933:	
	incf	(printf@f)^080h,f
	line	625
	
l6935:	
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u3461
	goto	u3460
u3461:
	goto	l6931
u3460:
	goto	l6945
	line	629
	
l6937:	
	clrf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	line	631
	
l6939:	
	bsf	(printf@flag)^080h+(12/8),(12)&7
	goto	l6945
	line	665
	
l2229:	
	line	666
	bsf	(printf@flag)^080h+(10/8),(10)&7
	line	667
	goto	l6947
	line	821
	
l6941:	
	movlw	0C0h
	iorwf	(printf@flag)^080h,f
	line	822
	goto	l6947
	line	638
	
l6945:	
	movf	(printf@f)^080h,w
	incf	(printf@f)^080h,f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)^080h
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 117
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
; rangetable           122     6 (fixed)
; spacedrange          242     9 (fixed)
; locatedrange         118     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2308
	xorlw	102^0	; case 102
	skipnz
	goto	l2229
	xorlw	117^102	; case 117
	skipnz
	goto	l6941
	goto	l7177
	opt asmopt_on

	line	828
	
l6947:	
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
	goto	u3471
	goto	u3470
u3471:
	goto	l7099
u3470:
	line	830
	
l6949:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(printf@flag+1)^080h,(12)&7
	goto	u3481
	goto	u3480
u3481:
	goto	l6953
u3480:
	line	832
	
l6951:	
	movlw	06h
	movwf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	line	833
	
l6953:	
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
	
l6955:	
	movlw	(03h)
	addwf	(printf@ap)^080h,f
	line	834
	
l6957:	
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
	goto	u3491
	goto	u3490
u3491:
	goto	l6963
u3490:
	line	835
	
l6959:	
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
	
l6961:	
	movlw	03h
	iorwf	(printf@flag)^080h,f
	line	838
	
l6963:	
	clrf	(printf@exp)^080h
	clrf	(printf@exp+1)^080h
	line	839
	
l6965:	
	movf	(printf@fval+2)^080h,w
	iorwf	(printf@fval+1)^080h,w
	iorwf	(printf@fval)^080h,w
	skipnz
	goto	u3501
	goto	u3500
u3501:
	goto	l6995
u3500:
	line	840
	
l6967:	
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
u3515:
	clrc
	rrf	(??_printf+0)+3,f
	rrf	(??_printf+0)+2,f
	rrf	(??_printf+0)+1,f
	rrf	(??_printf+0)+0,f
u3510:
	addlw	-1
	skipz
	goto	u3515
	movf	1+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@exp)^080h
	
l6969:	
	movlw	0FFh
	andwf	(printf@exp)^080h,f
	clrf	(printf@exp+1)^080h
	
l6971:	
	movlw	-126
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	841
	
l6973:	
	movlw	-1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	842
	
l6975:	
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
	
l6977:	
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(printf@exp+1)^080h,w
	movwf	1+(?___awdiv)+02h
	movf	(printf@exp)^080h,w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@exp+1)^080h
	movf	(0+(?___awdiv)),w
	movwf	(printf@exp)^080h
	line	844
	
l6979:	
	btfss	(printf@exp+1)^080h,7
	goto	u3521
	goto	u3520
u3521:
	goto	l6983
u3520:
	line	845
	
l6981:	
	movlw	-1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	849
	
l6983:	
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
	
l6985:	
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
	
l6987:	
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
	goto	u3531
	goto	u3530
u3531:
	goto	l6991
u3530:
	line	852
	
l6989:	
	movlw	-1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	goto	l6995
	line	853
	
l6991:	
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
	goto	u3541
	goto	u3540
u3541:
	goto	l6995
u3540:
	line	854
	
l6993:	
	incf	(printf@exp)^080h,f
	skipnz
	incf	(printf@exp+1)^080h,f
	line	1115
	
l6995:	
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3555
	movlw	low(0Dh)
	subwf	(printf@prec)^080h,w
u3555:

	skipnc
	goto	u3551
	goto	u3550
u3551:
	goto	l6999
u3550:
	line	1116
	
l6997:	
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
	
l6999:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3565
	movlw	low(0Ah)
	subwf	(printf@exp)^080h,w
u3565:

	skipnc
	goto	u3561
	goto	u3560
u3561:
	goto	l7007
u3560:
	
l7001:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@fval+2)^080h,w
	iorwf	(printf@fval+1)^080h,w
	iorwf	(printf@fval)^080h,w
	skipnz
	goto	u3571
	goto	u3570
u3571:
	goto	l7023
u3570:
	
l7003:	
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
	goto	u3581
	goto	u3580
u3581:
	goto	l7023
u3580:
	
l7005:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3595
	movlw	low(02h)
	subwf	(printf@exp)^080h,w
u3595:

	skipc
	goto	u3591
	goto	u3590
u3591:
	goto	l7023
u3590:
	line	1123
	
l7007:	
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
	goto	u3601
	goto	u3600
u3601:
	goto	l7011
u3600:
	line	1124
	
l7009:	
	movlw	-9
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	1125
	goto	l7013
	line	1126
	
l7011:	
	movlw	-8
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	1128
	
l7013:	
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
	
l7017:	
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
	movwf	(_printf$3175+3)^080h
	movf	(2+(?__tdiv_to_l_)),w
	movwf	(_printf$3175+2)^080h
	movf	(1+(?__tdiv_to_l_)),w
	movwf	(_printf$3175+1)^080h
	movf	(0+(?__tdiv_to_l_)),w
	movwf	(_printf$3175)^080h

	
l7019:	
	movf	(_printf$3175+3)^080h,w
	movwf	(printf@_val+3)^080h
	movf	(_printf$3175+2)^080h,w
	movwf	(printf@_val+2)^080h
	movf	(_printf$3175+1)^080h,w
	movwf	(printf@_val+1)^080h
	movf	(_printf$3175)^080h,w
	movwf	(printf@_val)^080h

	line	1132
	
l7021:	
	clrf	(printf@fval)^080h
	clrf	(printf@fval+1)^080h
	clrf	(printf@fval+2)^080h
	line	1133
	goto	l7027
	line	1134
	
l7023:	
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
	
l7025:	
	clrf	(printf@exp)^080h
	clrf	(printf@exp+1)^080h
	line	1139
	
l7027:	
	clrf	(printf@c)^080h
	incf	(printf@c)^080h,f
	line	1140
	
l7033:	
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
	goto	u3615
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val+2)^080h,w
	skipz
	goto	u3615
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val+1)^080h,w
	skipz
	goto	u3615
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val)^080h,w
u3615:
	skipnc
	goto	u3611
	goto	u3610
u3611:
	goto	l7037
u3610:
	goto	l7041
	line	1139
	
l7037:	
	incf	(printf@c)^080h,f
	
l7039:	
	movf	(printf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u3621
	goto	u3620
u3621:
	goto	l7033
u3620:
	line	1145
	
l7041:	
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
	
l7043:	
	movf	(printf@prec+1)^080h,w
	iorwf	(printf@prec)^080h,w
	skipnz
	goto	u3631
	goto	u3630
u3631:
	goto	l7047
u3630:
	line	1151
	
l7045:	
	movlw	-1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1152
	
l7047:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3641
	goto	u3640
u3641:
	goto	l7051
u3640:
	line	1153
	
l7049:	
	movlw	-1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1156
	
l7051:	
	btfss	(printf@flag)^080h,(2)&7
	goto	u3651
	goto	u3650
u3651:
	goto	l7065
u3650:
	goto	l7059
	line	1170
	
l7055:	
	movlw	(030h)
	fcall	_putch
	line	1171
	
l7057:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1169
	
l7059:	
	movf	(printf@width+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3665
	movlw	low(01h)
	subwf	(printf@width)^080h,w
u3665:

	skipnc
	goto	u3661
	goto	u3660
u3661:
	goto	l7055
u3660:
	goto	l7073
	line	1182
	
l7061:	
	movlw	(020h)
	fcall	_putch
	line	1183
	
l7063:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1181
	
l7065:	
	movf	(printf@width+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3675
	movlw	low(01h)
	subwf	(printf@width)^080h,w
u3675:

	skipnc
	goto	u3671
	goto	u3670
u3671:
	goto	l7061
u3670:
	line	1189
	
l7067:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3681
	goto	u3680
u3681:
	goto	l7073
u3680:
	line	1191
	
l7069:	
	movlw	(02Dh)
	fcall	_putch
	goto	l7073
	line	1201
	
l7071:	
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
	movwf	3+(?___lldiv)+04h
	movf	(printf@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(printf@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(printf@_val)^080h,w
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
	
l7073:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	decf	(printf@c)^080h,f
	incf	((printf@c)^080h),w
	skipz
	goto	u3691
	goto	u3690
u3691:
	goto	l7071
u3690:
	goto	l7079
	line	1205
	
l7075:	
	movlw	(030h)
	fcall	_putch
	line	1206
	
l7077:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	1204
	
l7079:	
	movf	(printf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3705
	movlw	low(01h)
	subwf	(printf@exp)^080h,w
u3705:

	skipnc
	goto	u3701
	goto	u3700
u3701:
	goto	l7075
u3700:
	line	1208
	
l7081:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3715
	movlw	low(09h)
	subwf	(printf@prec)^080h,w
u3715:

	skipc
	goto	u3711
	goto	u3710
u3711:
	goto	l7085
u3710:
	line	1209
	
l7083:	
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(printf@c)^080h
	goto	l2273
	line	1211
	
l7085:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec)^080h,w
	movwf	(printf@c)^080h
	
l2273:	
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
	goto	u3720
	goto	l2274
u3720:
	line	1218
	
l7087:	
	movlw	(02Eh)
	fcall	_putch
	
l2274:	
	line	1224
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
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
	goto	l7091
	line	1226
	
l7089:	
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
	movwf	3+(?___lldiv)+04h
	movf	(printf@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(printf@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(printf@_val)^080h,w
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
	bcf	status, 6	;RP1=0, select bank1
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
	
l7091:	
	decf	(printf@c)^080h,f
	incf	((printf@c)^080h),w
	skipz
	goto	u3731
	goto	u3730
u3731:
	goto	l7089
u3730:
	goto	l7097
	line	1231
	
l7093:	
	movlw	(030h)
	fcall	_putch
	line	1232
	
l7095:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(printf@prec)^080h,f
	skipc
	decf	(printf@prec+1)^080h,f
	line	1230
	
l7097:	
	movf	((printf@prec+1)^080h),w
	iorwf	((printf@prec)^080h),w
	skipz
	goto	u3741
	goto	u3740
u3741:
	goto	l7093
u3740:
	goto	l7177
	line	1281
	
l7099:	
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
	movwf	((printf@_val)^080h)+1
	clrf	2+((printf@_val)^080h)
	clrf	3+((printf@_val)^080h)
	
l7101:	
	incf	(printf@ap)^080h,f
	incf	(printf@ap)^080h,f
	line	1285
	
l7103:	
	movf	((printf@prec+1)^080h),w
	iorwf	((printf@prec)^080h),w
	skipz
	goto	u3751
	goto	u3750
u3751:
	goto	l7109
u3750:
	
l7105:	
	movf	(printf@_val+3)^080h,w
	iorwf	(printf@_val+2)^080h,w
	iorwf	(printf@_val+1)^080h,w
	iorwf	(printf@_val)^080h,w
	skipz
	goto	u3761
	goto	u3760
u3761:
	goto	l7109
u3760:
	line	1286
	
l7107:	
	incf	(printf@prec)^080h,f
	skipnz
	incf	(printf@prec+1)^080h,f
	line	1300
	
l7109:	
	clrf	(printf@c)^080h
	incf	(printf@c)^080h,f
	line	1301
	
l7115:	
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
	goto	u3775
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val+2)^080h,w
	skipz
	goto	u3775
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val+1)^080h,w
	skipz
	goto	u3775
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val)^080h,w
u3775:
	skipnc
	goto	u3771
	goto	u3770
u3771:
	goto	l7119
u3770:
	goto	l7123
	line	1300
	
l7119:	
	incf	(printf@c)^080h,f
	
l7121:	
	movf	(printf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u3781
	goto	u3780
u3781:
	goto	l7115
u3780:
	line	1334
	
l7123:	
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
	goto	u3795
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_printf+0)+0,w
u3795:

	skipnc
	goto	u3791
	goto	u3790
u3791:
	goto	l7127
u3790:
	line	1335
	
l7125:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec)^080h,w
	movwf	(printf@c)^080h
	goto	l7131
	line	1336
	
l7127:	
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
	goto	u3805
	movf	0+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@prec)^080h,w
u3805:

	skipnc
	goto	u3801
	goto	u3800
u3801:
	goto	l7131
u3800:
	line	1337
	
l7129:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@c)^080h,w
	movwf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	btfsc	(printf@prec)^080h,7
	decf	(printf@prec+1)^080h,f
	line	1340
	
l7131:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@width+1)^080h,w
	iorwf	(printf@width)^080h,w
	skipnz
	goto	u3811
	goto	u3810
u3811:
	goto	l7137
u3810:
	
l7133:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3821
	goto	u3820
u3821:
	goto	l7137
u3820:
	line	1341
	
l7135:	
	movlw	-1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1343
	
l7137:	
	btfss	(printf@flag+1)^080h,(14)&7
	goto	u3831
	goto	u3830
u3831:
	goto	l7145
u3830:
	line	1344
	
l7139:	
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
	goto	u3845
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@width)^080h,w
	subwf	(printf@prec)^080h,w
u3845:

	skipnc
	goto	u3841
	goto	u3840
u3841:
	goto	l7143
u3840:
	line	1345
	
l7141:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec)^080h,w
	subwf	(printf@width)^080h,f
	movf	(printf@prec+1)^080h,w
	skipc
	decf	(printf@width+1)^080h,f
	subwf	(printf@width+1)^080h,f
	goto	l7145
	line	1347
	
l7143:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	1376
	
l7145:	
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
	goto	u3855
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@width)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_printf+0)+0,w
u3855:

	skipnc
	goto	u3851
	goto	u3850
u3851:
	goto	l7149
u3850:
	line	1377
	
l7147:	
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
	goto	l7151
	line	1379
	
l7149:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	1382
	
l7151:	
	btfss	(printf@flag)^080h,(2)&7
	goto	u3861
	goto	u3860
u3861:
	goto	l7163
u3860:
	line	1387
	
l7153:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3871
	goto	u3870
u3871:
	goto	l7157
u3870:
	line	1388
	
l7155:	
	movlw	(02Dh)
	fcall	_putch
	line	1410
	
l7157:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@width+1)^080h,w
	iorwf	(printf@width)^080h,w
	skipnz
	goto	u3881
	goto	u3880
u3881:
	goto	l7175
u3880:
	line	1412
	
l7159:	
	movlw	(030h)
	fcall	_putch
	line	1413
	
l7161:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	movf	(((printf@width+1)^080h)),w
	iorwf	(((printf@width)^080h)),w
	skipz
	goto	u3891
	goto	u3890
u3891:
	goto	l7159
u3890:
	goto	l7175
	line	1423
	
l7163:	
	movf	(printf@width+1)^080h,w
	iorwf	(printf@width)^080h,w
	skipnz
	goto	u3901
	goto	u3900
u3901:
	goto	l7169
u3900:
	line	1425
	
l7165:	
	movlw	(020h)
	fcall	_putch
	line	1426
	
l7167:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	movf	(((printf@width+1)^080h)),w
	iorwf	(((printf@width)^080h)),w
	skipz
	goto	u3911
	goto	u3910
u3911:
	goto	l7165
u3910:
	line	1433
	
l7169:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3921
	goto	u3920
u3921:
	goto	l7175
u3920:
	line	1434
	
l7171:	
	movlw	(02Dh)
	fcall	_putch
	goto	l7175
	line	1484
	
l7173:	
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
	movwf	3+(?___lldiv)+04h
	movf	(printf@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(printf@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(printf@_val)^080h,w
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
	
l7175:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(printf@prec)^080h,f
	skipc
	decf	(printf@prec+1)^080h,f
	incf	((printf@prec)^080h),w
	skipnz
	incf	((printf@prec+1)^080h),w

	skipz
	goto	u3931
	goto	u3930
u3931:
	goto	l7173
u3930:
	line	540
	
l7177:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@f)^080h,w
	incf	(printf@f)^080h,f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)^080h
	movf	((printf@c)^080h),f
	skipz
	goto	u3941
	goto	u3940
u3941:
	goto	l6901
u3940:
	line	1533
	
l2308:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_putch
psect	text532,local,class=CODE,delta=2
global __ptext532
__ptext532:

;; *************** function _putch *****************
;; Defined at:
;;		line 69 in file "D:\TTVXL\Project TTVXL\BT05week12ttvxl\BT05week12ttvxl.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_putc
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text532
	file	"D:\TTVXL\Project TTVXL\BT05week12ttvxl\BT05week12ttvxl.c"
	line	69
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 2
; Regs used in _putch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;putch@c stored from wreg
	movwf	(putch@c)
	line	70
	
l6897:	
;BT05week12ttvxl.c: 70: lcd_putc(c);
	movf	(putch@c),w
	fcall	_lcd_putc
	line	71
	
l1071:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_putc
psect	text533,local,class=CODE,delta=2
global __ptext533
__ptext533:

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 143 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
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
;;		_lcd_put_byte
;;		_lcd_busy
;;		_lcd_gotoxy
;;		_isprint
;; This function is called by:
;;		_putch
;; This function uses a non-reentrant model
;;
psect	text533
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
	
l6879:	
;lcd(16).c: 144: switch(c){
	goto	l6895
	line	146
	
l6881:	
;lcd(16).c: 146: lcd_put_byte(0, 1);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	147
;lcd(16).c: 147: while(lcd_busy());
	
l6883:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3391
	goto	u3390
u3391:
	goto	l6883
u3390:
	goto	l2158
	line	150
	
l6885:	
;lcd(16).c: 150: lcd_gotoxy(0, 1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	151
;lcd(16).c: 151: break;
	goto	l2158
	line	153
	
l6887:	
;lcd(16).c: 153: if(isprint(c)){
	movf	(lcd_putc@c),w
	fcall	_isprint
	btfss	status,0
	goto	u3401
	goto	u3400
u3401:
	goto	l2158
u3400:
	line	154
	
l6889:	
;lcd(16).c: 154: lcd_put_byte(1, c);
	movf	(lcd_putc@c),w
	movwf	(?_lcd_put_byte)
	movlw	(01h)
	fcall	_lcd_put_byte
	line	155
;lcd(16).c: 155: while(lcd_busy());
	
l6891:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3411
	goto	u3410
u3411:
	goto	l6891
u3410:
	goto	l2158
	line	144
	
l6895:	
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
	goto	l6885
	xorlw	12^10	; case 12
	skipnz
	goto	l6881
	goto	l6887
	opt asmopt_on

	line	159
	
l2158:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	___ftsub
psect	text534,local,class=CODE,delta=2
global __ptext534
__ptext534:

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 17 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   44[BANK0 ] float 
;;  f1              3   47[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   44[BANK0 ] float 
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
psect	text534
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 3
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l6873:	
	movlw	080h
	xorwf	(___ftsub@f2+2),f
	line	19
	
l6875:	
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
	
l3398:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_scale
psect	text535,local,class=CODE,delta=2
global __ptext535
__ptext535:

;; *************** function _scale *****************
;; Defined at:
;;		line 422 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  scl             1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  scl             1   42[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] char 
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
psect	text535
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
	
l6833:	
	btfss	(scale@scl),7
	goto	u3341
	goto	u3340
u3341:
	goto	l6855
u3340:
	line	425
	
l6835:	
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	426
	
l6837:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u3351
	goto	u3350
u3351:
	goto	l6845
u3350:
	line	427
	
l6839:	
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
	movwf	(_scale$4124)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$4124+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$4124+2)
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
	movf	(_scale$4124),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$4124+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$4124+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l2201
	line	428
	
l6845:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u3361
	goto	u3360
u3361:
	goto	l6851
u3360:
	line	429
	
l6847:	
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
	goto	l2201
	line	430
	
l6851:	
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
	goto	l2201
	line	432
	
l6855:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u3371
	goto	u3370
u3371:
	goto	l6863
u3370:
	line	433
	
l6857:	
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
	movwf	(_scale$4124)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$4124+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$4124+2)
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
	movf	(_scale$4124),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$4124+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$4124+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l2201
	line	434
	
l6863:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l6869
u3380:
	line	435
	
l6865:	
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
	goto	l2201
	line	436
	
l6869:	
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
	
l2201:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
;; =============== function _scale ends ============

	signat	_scale,4219
	global	_fround
psect	text536,local,class=CODE,delta=2
global __ptext536
__ptext536:

;; *************** function _fround *****************
;; Defined at:
;;		line 406 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  prec            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prec            1   53[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   44[BANK0 ] unsigned char 
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
psect	text536
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
	
l6811:	
	movlw	(06Eh)
	subwf	(fround@prec),w
	skipc
	goto	u3321
	goto	u3320
u3321:
	goto	l6821
u3320:
	line	410
	
l6813:	
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
	movwf	(_fround$4122)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$4122+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$4122+2)
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
	movf	(_fround$4122),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$4122+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$4122+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$4123)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$4123+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$4123+2)
	
l6815:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$4123),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$4123+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$4123+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l2194
	line	411
	
l6821:	
	movlw	(0Bh)
	subwf	(fround@prec),w
	skipc
	goto	u3331
	goto	u3330
u3331:
	goto	l6829
u3330:
	line	412
	
l6823:	
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
	movwf	(_fround$4122)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$4122+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$4122+2)
	
l6825:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$4122),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$4122+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$4122+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l2194
	line	413
	
l6829:	
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
	
l2194:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
;; =============== function _fround ends ============

	signat	_fround,4219
	global	_lcd_gotoxy
psect	text537,local,class=CODE,delta=2
global __ptext537
__ptext537:

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 162 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1    8[COMMON] unsigned char 
;;  address         1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_main
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text537
	file	"D:\TTVXL\Library\lcd(16).c"
	line	162
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:	
	opt	stack 2
; Regs used in _lcd_gotoxy: [wreg+status,2+status,0+pclath+cstack]
;lcd_gotoxy@col stored from wreg
	line	165
	movwf	(lcd_gotoxy@col)
	
l6799:	
;lcd(16).c: 163: unsigned char address;
;lcd(16).c: 165: if(row!=0)
	movf	(lcd_gotoxy@row),w
	skipz
	goto	u3300
	goto	l6803
u3300:
	line	166
	
l6801:	
;lcd(16).c: 166: address=0x40;
	movlw	(040h)
	movwf	(lcd_gotoxy@address)
	goto	l6805
	line	168
	
l6803:	
;lcd(16).c: 167: else
;lcd(16).c: 168: address=0;
	clrf	(lcd_gotoxy@address)
	line	170
	
l6805:	
;lcd(16).c: 170: address += col;
	movf	(lcd_gotoxy@col),w
	addwf	(lcd_gotoxy@address),f
	line	171
	
l6807:	
;lcd(16).c: 171: lcd_put_byte(0,0x80|address);
	movf	(lcd_gotoxy@address),w
	iorlw	080h
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	172
;lcd(16).c: 172: while(lcd_busy());
	
l6809:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3311
	goto	u3310
u3311:
	goto	l6809
u3310:
	line	173
	
l2166:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
;; =============== function _lcd_gotoxy ends ============

	signat	_lcd_gotoxy,8312
	global	_lcd_init
psect	text538,local,class=CODE,delta=2
global __ptext538
__ptext538:

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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text538
	file	"D:\TTVXL\Library\lcd(16).c"
	line	5
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 5
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l6761:	
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
	
l6763:	
;lcd(16).c: 18: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u3977:
	decfsz	((??_lcd_init+0)+0),f
	goto	u3977
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u3977
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u3977
	nop2
opt asmopt_on

	line	21
	
l6765:	
;lcd(16).c: 21: lcd_put_byte(0,0x30);
	movlw	(030h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	22
	
l6767:	
;lcd(16).c: 22: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u3987:
	decfsz	((??_lcd_init+0)+0),f
	goto	u3987
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u3987
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u3987
	nop2
opt asmopt_on

	line	23
;lcd(16).c: 23: lcd_put_byte(0,0x30);
	movlw	(030h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	24
	
l6769:	
;lcd(16).c: 24: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u3997:
	decfsz	((??_lcd_init+0)+0),f
	goto	u3997
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u3997
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u3997
	nop2
opt asmopt_on

	line	25
	
l6771:	
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
u4007:
	decfsz	((??_lcd_init+0)+0),f
	goto	u4007
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u4007
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u4007
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
u4017:
	decfsz	((??_lcd_init+0)+0),f
	goto	u4017
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u4017
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u4017
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
u4027:
	decfsz	((??_lcd_init+0)+0),f
	goto	u4027
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u4027
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u4027
	nop2
opt asmopt_on

	line	30
;lcd(16).c: 30: while(lcd_busy());
	
l6773:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3231
	goto	u3230
u3231:
	goto	l6773
u3230:
	line	31
	
l6775:	
;lcd(16).c: 31: lcd_put_byte(0,0b00101100 & 0b00111000);
	movlw	(028h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	32
;lcd(16).c: 32: while(lcd_busy());
	
l6777:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3241
	goto	u3240
u3241:
	goto	l6777
u3240:
	line	34
	
l6779:	
;lcd(16).c: 34: lcd_put_byte(0,0b00001011&0b00001101&0b00001110);
	movlw	(08h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	35
;lcd(16).c: 35: while(lcd_busy());
	
l6781:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3251
	goto	u3250
u3251:
	goto	l6781
u3250:
	line	36
	
l6783:	
;lcd(16).c: 36: lcd_put_byte(0,0b00001111&0b00001101&0b00001110);
	movlw	(0Ch)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	37
;lcd(16).c: 37: while(lcd_busy());
	
l6785:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3261
	goto	u3260
u3261:
	goto	l6785
u3260:
	line	39
	
l6787:	
;lcd(16).c: 39: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	40
;lcd(16).c: 40: while(lcd_busy());
	
l6789:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3271
	goto	u3270
u3271:
	goto	l6789
u3270:
	line	41
	
l6791:	
;lcd(16).c: 41: lcd_put_byte(0,0b00000100);
	movlw	(04h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	42
;lcd(16).c: 42: while(lcd_busy());
	
l6793:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3281
	goto	u3280
u3281:
	goto	l6793
u3280:
	line	43
	
l6795:	
;lcd(16).c: 43: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	44
;lcd(16).c: 44: while(lcd_busy());
	
l6797:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3291
	goto	u3290
u3291:
	goto	l6797
u3290:
	line	45
	
l2132:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	___lltoft
psect	text539,local,class=CODE,delta=2
global __ptext539
__ptext539:

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 36 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    0[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
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
psect	text539
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 4
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l6751:	
	movlw	(08Eh)
	movwf	(___lltoft@exp)
	line	41
	goto	l6755
	line	42
	
l6753:	
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	line	43
	incf	(___lltoft@exp),f
	line	41
	
l6755:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l6753
u3220:
	line	45
	
l6757:	
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
	
l3555:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___altoft
psect	text540,local,class=CODE,delta=2
global __ptext540
__ptext540:

;; *************** function ___altoft *****************
;; Defined at:
;;		line 43 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\altoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    0[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   11[COMMON] unsigned char 
;;  exp             1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text540
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\altoft.c"
	line	43
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:	
	opt	stack 5
; Regs used in ___altoft: [wreg+status,2+status,0+pclath+cstack]
	line	45
	
l6735:	
	clrf	(___altoft@sign)
	line	46
	
l6737:	
	movlw	(08Eh)
	movwf	(___altoft@exp)
	line	47
	
l6739:	
	btfss	(___altoft@c+3),7
	goto	u3201
	goto	u3200
u3201:
	goto	l6745
u3200:
	line	48
	
l6741:	
	comf	(___altoft@c),f
	comf	(___altoft@c+1),f
	comf	(___altoft@c+2),f
	comf	(___altoft@c+3),f
	incf	(___altoft@c),f
	skipnz
	incf	(___altoft@c+1),f
	skipnz
	incf	(___altoft@c+2),f
	skipnz
	incf	(___altoft@c+3),f
	line	49
	clrf	(___altoft@sign)
	incf	(___altoft@sign),f
	goto	l6745
	line	53
	
l6743:	
	clrc
	rrf	(___altoft@c+3),f
	rrf	(___altoft@c+2),f
	rrf	(___altoft@c+1),f
	rrf	(___altoft@c),f
	line	54
	incf	(___altoft@exp),f
	line	52
	
l6745:	
	movlw	high highword(-16777216)
	andwf	(___altoft@c+3),w
	btfss	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l6743
u3210:
	line	56
	
l6747:	
	movf	(___altoft@c),w
	movwf	(?___ftpack)
	movf	(___altoft@c+1),w
	movwf	(?___ftpack+1)
	movf	(___altoft@c+2),w
	movwf	(?___ftpack+2)
	movf	(___altoft@exp),w
	movwf	0+(?___ftpack)+03h
	movf	(___altoft@sign),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___altoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___altoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___altoft+2)
	line	57
	
l3547:	
	return
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
;; =============== function ___altoft ends ============

	signat	___altoft,4219
	global	___ftmul
psect	text541,local,class=CODE,delta=2
global __ptext541
__ptext541:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   17[BANK0 ] float 
;;  f2              3   20[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   27[BANK0 ] unsigned um
;;  sign            1   31[BANK0 ] unsigned char 
;;  cntr            1   30[BANK0 ] unsigned char 
;;  exp             1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   17[BANK0 ] float 
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
psect	text541
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 3
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l6679:	
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
	goto	u3121
	goto	u3120
u3121:
	goto	l6685
u3120:
	line	57
	
l6681:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l3414
	line	58
	
l6685:	
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
	goto	u3131
	goto	u3130
u3131:
	goto	l6691
u3130:
	line	59
	
l6687:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l3414
	line	60
	
l6691:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l6693:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l6695:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l6697:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l6699:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l6701:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l6703:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l6705:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l6707:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l6709:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3141
	goto	u3140
u3141:
	goto	l6713
u3140:
	line	72
	
l6711:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3151
	addwf	(___ftmul@f3_as_product+1),f
u3151:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3152
	addwf	(___ftmul@f3_as_product+2),f
u3152:

	line	73
	
l6713:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l6715:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l6717:	
	decfsz	(___ftmul@cntr),f
	goto	u3161
	goto	u3160
u3161:
	goto	l6709
u3160:
	line	76
	
l6719:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l6721:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l6725
u3170:
	line	79
	
l6723:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3181
	addwf	(___ftmul@f3_as_product+1),f
u3181:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3182
	addwf	(___ftmul@f3_as_product+2),f
u3182:

	line	80
	
l6725:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l6727:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l6729:	
	decfsz	(___ftmul@cntr),f
	goto	u3191
	goto	u3190
u3191:
	goto	l6721
u3190:
	line	83
	
l6731:	
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
	
l3414:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftadd
psect	text542,local,class=CODE,delta=2
global __ptext542
__ptext542:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   32[BANK0 ] float 
;;  f2              3   35[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   43[BANK0 ] unsigned char 
;;  exp2            1   42[BANK0 ] unsigned char 
;;  sign            1   41[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] float 
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
;;		_main
;;		_printf
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text542
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 3
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l6601:	
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
	
l6603:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2920
	goto	l6609
u2920:
	
l6605:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2931
	goto	u2930
u2931:
	goto	l6613
u2930:
	
l6607:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2941
	goto	u2940
u2941:
	goto	l6613
u2940:
	line	93
	
l6609:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l3362
	line	94
	
l6613:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2950
	goto	l3365
u2950:
	
l6615:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2961
	goto	u2960
u2961:
	goto	l6619
u2960:
	
l6617:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2971
	goto	u2970
u2971:
	goto	l6619
u2970:
	
l3365:	
	line	95
	goto	l3362
	line	96
	
l6619:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
l6621:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l3366
u2980:
	line	98
	
l6623:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l3366:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l3367
u2990:
	line	100
	
l6625:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l3367:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l6627:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l6629:	
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
	goto	u3001
	goto	u3000
u3001:
	goto	l6641
u3000:
	line	110
	
l6631:	
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
l6633:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3011
	goto	u3010
u3011:
	goto	l6639
u3010:
	
l6635:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l6631
u3020:
	goto	l6639
	line	114
	
l6637:	
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
l6639:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l6637
u3030:
	goto	l3376
	line	117
	
l6641:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3041
	goto	u3040
u3041:
	goto	l3376
u3040:
	line	121
	
l6643:	
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
l6645:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3051
	goto	u3050
u3051:
	goto	l6651
u3050:
	
l6647:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l6643
u3060:
	goto	l6651
	line	125
	
l6649:	
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
l6651:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3071
	goto	u3070
u3071:
	goto	l6649
u3070:
	line	129
	
l3376:	
	btfss	(___ftadd@sign),(7)&7
	goto	u3081
	goto	u3080
u3081:
	goto	l6657
u3080:
	line	131
	
l6653:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
l6655:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
l6657:	
	btfss	(___ftadd@sign),(6)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l6663
u3090:
	line	136
	
l6659:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
l6661:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
l6663:	
	clrf	(___ftadd@sign)
	line	140
	
l6665:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u3101
	addwf	(___ftadd@f2+1),f
u3101:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u3102
	addwf	(___ftadd@f2+2),f
u3102:

	line	141
	
l6667:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l6675
u3110:
	line	142
	
l6669:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
l6671:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
l6673:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l6675:	
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
	
l3362:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_lcd_busy
psect	text543,local,class=CODE,delta=2
global __ptext543
__ptext543:

;; *************** function _lcd_busy *****************
;; Defined at:
;;		line 47 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  busy            1    3[COMMON] unsigned char 
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
psect	text543
	file	"D:\TTVXL\Library\lcd(16).c"
	line	47
	global	__size_of_lcd_busy
	__size_of_lcd_busy	equ	__end_of_lcd_busy-_lcd_busy
	
_lcd_busy:	
	opt	stack 2
; Regs used in _lcd_busy: [wreg]
	line	50
	
l6587:	
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
	
l6589:	
;lcd(16).c: 57: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u4037:
decfsz	(??_lcd_busy+0)+0,f
	goto	u4037
opt asmopt_on

	line	58
	
l6591:	
;lcd(16).c: 58: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	59
;lcd(16).c: 59: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u4047:
decfsz	(??_lcd_busy+0)+0,f
	goto	u4047
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
	
l6593:	
;lcd(16).c: 63: RD3 = 0;
	bcf	(67/8),(67)&7
	line	64
;lcd(16).c: 64: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u4057:
decfsz	(??_lcd_busy+0)+0,f
	goto	u4057
opt asmopt_on

	line	65
	
l6595:	
;lcd(16).c: 65: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	66
;lcd(16).c: 66: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u4067:
decfsz	(??_lcd_busy+0)+0,f
	goto	u4067
opt asmopt_on

	line	67
	
l6597:	
;lcd(16).c: 67: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	70
;lcd(16).c: 70: return busy;
	movf	(lcd_busy@busy),w
	line	71
	
l2135:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_busy
	__end_of_lcd_busy:
;; =============== function _lcd_busy ends ============

	signat	_lcd_busy,89
	global	_lcd_put_byte
psect	text544,local,class=CODE,delta=2
global __ptext544
__ptext544:

;; *************** function _lcd_put_byte *****************
;; Defined at:
;;		line 106 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  rs              1    wreg     unsigned char 
;;  b               1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rs              1    5[COMMON] unsigned char 
;;  temp            1    6[COMMON] struct _BYTE_VAL
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/20
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
psect	text544
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
	
l6551:	
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
	
l6553:	
;lcd(16).c: 115: if(rs) RD1 = 1;
	movf	(lcd_put_byte@rs),w
	skipz
	goto	u2750
	goto	l6557
u2750:
	
l6555:	
	bsf	(65/8),(65)&7
	line	117
	
l6557:	
;lcd(16).c: 117: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u4077:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u4077
opt asmopt_on

	line	118
	
l6559:	
;lcd(16).c: 118: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	119
;lcd(16).c: 119: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u4087:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u4087
opt asmopt_on

	line	120
	
l6561:	
;lcd(16).c: 120: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	122
;lcd(16).c: 122: temp.Val = b;
	movf	(lcd_put_byte@b),w
	movwf	(lcd_put_byte@temp)
	line	125
	
l6563:	
;lcd(16).c: 125: RD4 = temp.bits.b4;
	swapf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u2761
	goto	u2760
	
u2761:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u2774
u2760:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u2774:
	line	126
	
l6565:	
;lcd(16).c: 126: RD5 = temp.bits.b5;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u2781
	goto	u2780
	
u2781:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u2794
u2780:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u2794:
	line	127
	
l6567:	
;lcd(16).c: 127: RD6 = temp.bits.b6;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u2801
	goto	u2800
	
u2801:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u2814
u2800:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u2814:
	line	128
	
l6569:	
;lcd(16).c: 128: RD7 = temp.bits.b7;
	rlf	(lcd_put_byte@temp),w
	rlf	(lcd_put_byte@temp),w
	andlw	1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u2821
	goto	u2820
	
u2821:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u2834
u2820:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u2834:
	line	129
;lcd(16).c: 129: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u4097:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u4097
opt asmopt_on

	line	130
	
l6571:	
;lcd(16).c: 130: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	131
;lcd(16).c: 131: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u4107:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u4107
opt asmopt_on

	line	132
	
l6573:	
;lcd(16).c: 132: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	134
	
l6575:	
;lcd(16).c: 134: RD4 = temp.bits.b0;
	movf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u2841
	goto	u2840
	
u2841:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u2854
u2840:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u2854:
	line	135
	
l6577:	
;lcd(16).c: 135: RD5 = temp.bits.b1;
	rrf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u2861
	goto	u2860
	
u2861:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u2874
u2860:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u2874:
	line	136
	
l6579:	
;lcd(16).c: 136: RD6 = temp.bits.b2;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u2881
	goto	u2880
	
u2881:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u2894
u2880:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u2894:
	line	137
	
l6581:	
;lcd(16).c: 137: RD7 = temp.bits.b3;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u2901
	goto	u2900
	
u2901:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u2914
u2900:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u2914:
	line	138
;lcd(16).c: 138: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u4117:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u4117
opt asmopt_on

	line	139
	
l6583:	
;lcd(16).c: 139: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	140
;lcd(16).c: 140: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u4127:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u4127
opt asmopt_on

	line	141
	
l6585:	
;lcd(16).c: 141: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	142
	
l2143:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_put_byte
	__end_of_lcd_put_byte:
;; =============== function _lcd_put_byte ends ============

	signat	_lcd_put_byte,8312
	global	___awmod
psect	text545,local,class=CODE,delta=2
global __ptext545
__ptext545:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] int 
;;  dividend        2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    7[COMMON] unsigned char 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] int 
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
psect	text545
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l6515:	
	clrf	(___awmod@sign)
	line	9
	
l6517:	
	btfss	(___awmod@dividend+1),7
	goto	u2681
	goto	u2680
u2681:
	goto	l6523
u2680:
	line	10
	
l6519:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l6521:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l6523:	
	btfss	(___awmod@divisor+1),7
	goto	u2691
	goto	u2690
u2691:
	goto	l6527
u2690:
	line	14
	
l6525:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l6527:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2701
	goto	u2700
u2701:
	goto	l6543
u2700:
	line	16
	
l6529:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l6533
	line	18
	
l6531:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l6533:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l6531
u2710:
	line	22
	
l6535:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2725
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2725:
	skipc
	goto	u2721
	goto	u2720
u2721:
	goto	l6539
u2720:
	line	23
	
l6537:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l6539:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l6541:	
	decfsz	(___awmod@counter),f
	goto	u2731
	goto	u2730
u2731:
	goto	l6535
u2730:
	line	27
	
l6543:	
	movf	(___awmod@sign),w
	skipz
	goto	u2740
	goto	l6547
u2740:
	line	28
	
l6545:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l6547:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l3533:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___lldiv
psect	text546,local,class=CODE,delta=2
global __ptext546
__ptext546:

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    2[COMMON] unsigned long 
;;  dividend        4    6[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    0[BANK0 ] unsigned long 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    2[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         8       5       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text546
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 5
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l6489:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	10
	
l6491:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u2641
	goto	u2640
u2641:
	goto	l6511
u2640:
	line	11
	
l6493:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	12
	goto	l6497
	line	13
	
l6495:	
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	14
	incf	(___lldiv@counter),f
	line	12
	
l6497:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u2651
	goto	u2650
u2651:
	goto	l6495
u2650:
	line	17
	
l6499:	
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	18
	
l6501:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u2665
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u2665
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u2665
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u2665:
	skipc
	goto	u2661
	goto	u2660
u2661:
	goto	l6507
u2660:
	line	19
	
l6503:	
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
	
l6505:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	22
	
l6507:	
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	23
	
l6509:	
	decfsz	(___lldiv@counter),f
	goto	u2671
	goto	u2670
u2671:
	goto	l6499
u2670:
	line	25
	
l6511:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	26
	
l3494:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___ftge
psect	text547,local,class=CODE,delta=2
global __ptext547
__ptext547:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    2[COMMON] float 
;;  ff2             3    5[COMMON] float 
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
psect	text547
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 5
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l6469:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l6473
u2610:
	line	7
	
l6471:	
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
	
l6473:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2621
	goto	u2620
u2621:
	goto	l6477
u2620:
	line	9
	
l6475:	
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
	
l6477:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l6479:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l6481:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u2635
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u2635
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u2635:
	skipnc
	goto	u2631
	goto	u2630
u2631:
	goto	l6485
u2630:
	
l6483:	
	clrc
	
	goto	l3484
	
l6485:	
	setc
	
	line	13
	
l3484:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text548,local,class=CODE,delta=2
global __ptext548
__ptext548:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    2[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    2[COMMON] float 
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
psect	text548
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 5
; Regs used in ___ftneg: [wreg]
	line	17
	
l6461:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u2601
	goto	u2600
u2601:
	goto	l6465
u2600:
	line	18
	
l6463:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	line	19
	
l6465:	
	line	20
	
l3479:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___llmod
psect	text549,local,class=CODE,delta=2
global __ptext549
__ptext549:

;; *************** function ___llmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    5[BANK0 ] unsigned long 
;;  dividend        4    9[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    5[BANK0 ] unsigned long 
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
psect	text549
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 5
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l6441:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u2561
	goto	u2560
u2561:
	goto	l6457
u2560:
	line	9
	
l6443:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	10
	goto	l6447
	line	11
	
l6445:	
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	line	12
	incf	(___llmod@counter),f
	line	10
	
l6447:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l6445
u2570:
	line	15
	
l6449:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u2585
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u2585
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u2585
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u2585:
	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l6453
u2580:
	line	16
	
l6451:	
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
	
l6453:	
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	line	18
	
l6455:	
	decfsz	(___llmod@counter),f
	goto	u2591
	goto	u2590
u2591:
	goto	l6449
u2590:
	line	20
	
l6457:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	line	21
	
l3475:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	___awdiv
psect	text550,local,class=CODE,delta=2
global __ptext550
__ptext550:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[COMMON] int 
;;  dividend        2   10[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    2[BANK0 ] int 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 40/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       4       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_scale
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text550
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l6397:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(___awdiv@sign)
	line	10
	
l6399:	
	btfss	(___awdiv@divisor+1),7
	goto	u2491
	goto	u2490
u2491:
	goto	l6405
u2490:
	line	11
	
l6401:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l6403:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l6405:	
	btfss	(___awdiv@dividend+1),7
	goto	u2501
	goto	u2500
u2501:
	goto	l6411
u2500:
	line	15
	
l6407:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l6409:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l6411:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l6413:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2511
	goto	u2510
u2511:
	goto	l6433
u2510:
	line	20
	
l6415:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l6419
	line	22
	
l6417:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l6419:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l6417
u2520:
	line	26
	
l6421:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l6423:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2535
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2535:
	skipc
	goto	u2531
	goto	u2530
u2531:
	goto	l6429
u2530:
	line	28
	
l6425:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l6427:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l6429:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l6431:	
	decfsz	(___awdiv@counter),f
	goto	u2541
	goto	u2540
u2541:
	goto	l6421
u2540:
	line	34
	
l6433:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2550
	goto	l6437
u2550:
	line	35
	
l6435:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l6437:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l3465:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text551,local,class=CODE,delta=2
global __ptext551
__ptext551:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    4[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   12[BANK0 ] unsigned long 
;;  exp1            1   16[BANK0 ] unsigned char 
;;  sign1           1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    4[BANK0 ] long 
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
psect	text551
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l6359:	
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
	goto	u2411
	goto	u2410
u2411:
	goto	l6363
u2410:
	line	50
	
l6361:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l3425
	line	51
	
l6363:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2425:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2420:
	addlw	-1
	skipz
	goto	u2425
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l6365:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l6367:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l6369:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l6371:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l6373:	
	btfss	(___fttol@exp1),7
	goto	u2431
	goto	u2430
u2431:
	goto	l6383
u2430:
	line	57
	
l6375:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2441
	goto	u2440
u2441:
	goto	l6379
u2440:
	goto	l6361
	line	60
	
l6379:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l6381:	
	incfsz	(___fttol@exp1),f
	goto	u2451
	goto	u2450
u2451:
	goto	l6379
u2450:
	goto	l6389
	line	63
	
l6383:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2461
	goto	u2460
u2461:
	goto	l3432
u2460:
	goto	l6361
	line	66
	
l6387:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l3432:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l6387
u2470:
	line	70
	
l6389:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2480
	goto	l6393
u2480:
	line	71
	
l6391:	
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
	
l6393:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l3425:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text552,local,class=CODE,delta=2
global __ptext552
__ptext552:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    2[COMMON] unsigned um
;;  exp             1    5[COMMON] unsigned char 
;;  sign            1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    2[COMMON] float 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftmul
;;		___altoft
;;		___lltoft
;; This function uses a non-reentrant model
;;
psect	text552
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 3
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l6331:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2340
	goto	l6335
u2340:
	
l6333:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2351
	goto	u2350
u2351:
	goto	l6341
u2350:
	line	65
	
l6335:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l3684
	line	67
	
l6339:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l6341:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l6339
u2360:
	goto	l6345
	line	71
	
l6343:	
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
	
l6345:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2371
	goto	u2370
u2371:
	goto	l6343
u2370:
	goto	l6349
	line	76
	
l6347:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l6349:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l6347
u2380:
	
l3693:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l3694
u2390:
	line	80
	
l6351:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l3694:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l6353:	
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
	
l6355:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2400
	goto	l3695
u2400:
	line	84
	
l6357:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l3695:	
	line	85
	line	86
	
l3684:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lbmod
psect	text553,local,class=CODE,delta=2
global __ptext553
__ptext553:

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    4[COMMON] unsigned char 
;;  rem             1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
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
psect	text553
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
	
l6313:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l6315:	
	clrf	(___lbmod@rem)
	line	12
	
l6317:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u2315:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u2315
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l6319:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l6321:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u2321
	goto	u2320
u2321:
	goto	l6325
u2320:
	line	15
	
l6323:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l6325:	
	decfsz	(___lbmod@counter),f
	goto	u2331
	goto	u2330
u2331:
	goto	l6317
u2330:
	line	17
	
l6327:	
	movf	(___lbmod@rem),w
	line	18
	
l3354:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text554,local,class=CODE,delta=2
global __ptext554
__ptext554:

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    8[COMMON] unsigned char 
;;  quotient        1   10[COMMON] unsigned char 
;;  counter         1    9[COMMON] unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;; This function uses a non-reentrant model
;;
psect	text554
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
	
l6289:	
	clrf	(___lbdiv@quotient)
	line	10
	
l6291:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u2270
	goto	l6309
u2270:
	line	11
	
l6293:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l6297
	
l3343:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l6295:	
	incf	(___lbdiv@counter),f
	line	12
	
l6297:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l3343
u2280:
	line	16
	
l3345:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l6299:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l6305
u2290:
	line	19
	
l6301:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l6303:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l6305:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l6307:	
	decfsz	(___lbdiv@counter),f
	goto	u2301
	goto	u2300
u2301:
	goto	l3345
u2300:
	line	25
	
l6309:	
	movf	(___lbdiv@quotient),w
	line	26
	
l3348:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___wmul
psect	text555,local,class=CODE,delta=2
global __ptext555
__ptext555:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    2[COMMON] unsigned int 
;;  multiplicand    2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    6[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
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
;;		_fround
;;		_scale
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text555
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l6273:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l6275:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l6279
u2250:
	line	8
	
l6277:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l6279:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l6281:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l6283:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2261
	goto	u2260
u2261:
	goto	l6275
u2260:
	line	12
	
l6285:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l3318:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text556,local,class=CODE,delta=2
global __ptext556
__ptext556:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1   11[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    1[BANK0 ] unsigned char 
;;  product         1    0[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       2       0       0       0
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
psect	text556
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
	
l6257:	
	clrf	(___bmul@product)
	line	7
	
l6259:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l6263
u2230:
	line	8
	
l6261:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l6263:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l6265:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l6267:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l6259
u2240:
	line	12
	
l6269:	
	movf	(___bmul@product),w
	line	13
	
l3312:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	__div_to_l_
psect	text557,local,class=CODE,delta=2
global __ptext557
__ptext557:

;; *************** function __div_to_l_ *****************
;; Defined at:
;;		line 61 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fldivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    2[COMMON] unsigned char 
;;  f2              3    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  quot            4    8[BANK0 ] unsigned long 
;;  exp1            1   13[BANK0 ] unsigned char 
;;  cntr            1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    2[COMMON] unsigned long 
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
psect	text557
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fldivl.c"
	line	61
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
	opt	stack 5
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l6211:	
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
	goto	u2141
	goto	u2140
u2141:
	goto	l6215
u2140:
	line	67
	
l6213:	
	clrf	(?__div_to_l_)
	clrf	(?__div_to_l_+1)
	clrf	(?__div_to_l_+2)
	clrf	(?__div_to_l_+3)
	goto	l3602
	line	68
	
l6215:	
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
	goto	u2151
	goto	u2150
u2151:
	goto	l6219
u2150:
	goto	l6213
	line	70
	
l6219:	
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
	
l6221:	
	clrf	(__div_to_l_@quot)
	clrf	(__div_to_l_@quot+1)
	clrf	(__div_to_l_@quot+2)
	clrf	(__div_to_l_@quot+3)
	line	75
	
l6223:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l6225:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l6227:	
	movlw	(020h)
	movwf	(__div_to_l_@cntr)
	line	79
	
l6229:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	80
	
l6231:	
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
	goto	u2165
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u2165
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u2165
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u2165:
	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l3605
u2160:
	line	81
	
l6233:	
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
	
l6235:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	83
	
l3605:	
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
	
l6237:	
	decfsz	(__div_to_l_@cntr),f
	goto	u2171
	goto	u2170
u2171:
	goto	l6229
u2170:
	
l3606:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u2181
	goto	u2180
u2181:
	goto	l6247
u2180:
	line	87
	
l6239:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u2191
	goto	u2190
u2191:
	goto	l6243
u2190:
	goto	l6213
	line	90
	
l6243:	
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	line	91
	
l6245:	
	incfsz	(__div_to_l_@exp1),f
	goto	u2201
	goto	u2200
u2201:
	goto	l6243
u2200:
	goto	l6253
	line	93
	
l6247:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l3613
u2210:
	goto	l6213
	line	96
	
l6251:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	97
	decf	(__div_to_l_@exp1),f
	line	98
	
l3613:	
	line	95
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u2221
	goto	u2220
u2221:
	goto	l6251
u2220:
	line	100
	
l6253:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	line	101
	
l3602:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
;; =============== function __div_to_l_ ends ============

	signat	__div_to_l_,8316
	global	__tdiv_to_l_
psect	text558,local,class=CODE,delta=2
global __ptext558
__ptext558:

;; *************** function __tdiv_to_l_ *****************
;; Defined at:
;;		line 61 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    2[COMMON] float 
;;  f2              3    5[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  quot            4    0[BANK0 ] unsigned long 
;;  exp1            1    5[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    2[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         9       6       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text558
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdivl.c"
	line	61
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
	opt	stack 5
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l6163:	
	movf	(__tdiv_to_l_@f1),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f1+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f1+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(__tdiv_to_l_@exp1)
	movf	((__tdiv_to_l_@exp1)),f
	skipz
	goto	u2051
	goto	u2050
u2051:
	goto	l6167
u2050:
	line	67
	
l6165:	
	clrf	(?__tdiv_to_l_)
	clrf	(?__tdiv_to_l_+1)
	clrf	(?__tdiv_to_l_+2)
	clrf	(?__tdiv_to_l_+3)
	goto	l3559
	line	68
	
l6167:	
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
	goto	u2061
	goto	u2060
u2061:
	goto	l3560
u2060:
	goto	l6165
	line	69
	
l3560:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l6171:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l6173:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	
l6175:	
	clrf	(__tdiv_to_l_@quot)
	clrf	(__tdiv_to_l_@quot+1)
	clrf	(__tdiv_to_l_@quot+2)
	clrf	(__tdiv_to_l_@quot+3)
	line	75
	
l6177:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l6179:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	(018h)
	movwf	(__tdiv_to_l_@cntr)
	line	79
	
l6181:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	80
	
l6183:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u2075
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u2075
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u2075:
	skipc
	goto	u2071
	goto	u2070
u2071:
	goto	l6189
u2070:
	line	81
	
l6185:	
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
	
l6187:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	line	84
	
l6189:	
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	line	85
	
l6191:	
	decfsz	(__tdiv_to_l_@cntr),f
	goto	u2081
	goto	u2080
u2081:
	goto	l6181
u2080:
	
l3563:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u2091
	goto	u2090
u2091:
	goto	l6201
u2090:
	line	87
	
l6193:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u2101
	goto	u2100
u2101:
	goto	l6197
u2100:
	goto	l6165
	line	90
	
l6197:	
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	line	91
	
l6199:	
	incfsz	(__tdiv_to_l_@exp1),f
	goto	u2111
	goto	u2110
u2111:
	goto	l6197
u2110:
	goto	l6207
	line	93
	
l6201:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u2121
	goto	u2120
u2121:
	goto	l3570
u2120:
	goto	l6165
	line	96
	
l6205:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	97
	decf	(__tdiv_to_l_@exp1),f
	line	98
	
l3570:	
	line	95
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u2131
	goto	u2130
u2131:
	goto	l6205
u2130:
	line	100
	
l6207:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	line	101
	
l3559:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
;; =============== function __tdiv_to_l_ ends ============

	signat	__tdiv_to_l_,8316
	global	_isdigit
psect	text559,local,class=CODE,delta=2
global __ptext559
__ptext559:

;; *************** function _isdigit *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
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
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text559
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
	
l6151:	
	clrf	(_isdigit$3685)
	
l6153:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u2031
	goto	u2030
u2031:
	goto	l6159
u2030:
	
l6155:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u2041
	goto	u2040
u2041:
	goto	l6159
u2040:
	
l6157:	
	clrf	(_isdigit$3685)
	incf	(_isdigit$3685),f
	
l6159:	
	rrf	(_isdigit$3685),w
	
	line	15
	
l3297:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_isprint
psect	text560,local,class=CODE,delta=2
global __ptext560
__ptext560:

;; *************** function _isprint *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isprint.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/20
;;		Unchanged: FFFFF/0
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
psect	text560
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
	
l6139:	
	clrf	(_isprint$3688)
	
l6141:	
	movlw	(07Fh)
	subwf	(isprint@c),w
	skipnc
	goto	u2011
	goto	u2010
u2011:
	goto	l6147
u2010:
	
l6143:	
	movlw	(020h)
	subwf	(isprint@c),w
	skipc
	goto	u2021
	goto	u2020
u2021:
	goto	l6147
u2020:
	
l6145:	
	clrf	(_isprint$3688)
	incf	(_isprint$3688),f
	
l6147:	
	rrf	(_isprint$3688),w
	
	line	15
	
l3302:	
	return
	opt stack 0
GLOBAL	__end_of_isprint
	__end_of_isprint:
;; =============== function _isprint ends ============

	signat	_isprint,4216
	global	_abs
psect	text561,local,class=CODE,delta=2
global __ptext561
__ptext561:

;; *************** function _abs *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\abs.c"
;; Parameters:    Size  Location     Type
;;  a               2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text561
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\abs.c"
	line	5
	global	__size_of_abs
	__size_of_abs	equ	__end_of_abs-_abs
	
_abs:	
	opt	stack 6
; Regs used in _abs: [wreg+status,2+status,0]
	line	6
	
l6121:	
	btfss	(abs@a+1),7
	goto	u1981
	goto	u1980
u1981:
	goto	l3291
u1980:
	line	7
	
l6123:	
	comf	(abs@a),w
	movwf	(??_abs+0)+0
	comf	(abs@a+1),w
	movwf	((??_abs+0)+0+1)
	incf	(??_abs+0)+0,f
	skipnz
	incf	((??_abs+0)+0+1),f
	movf	0+(??_abs+0)+0,w
	movwf	(?_abs)
	movf	1+(??_abs+0)+0,w
	movwf	(?_abs+1)
	goto	l3292
	
l3291:	
	line	8
	line	9
	
l3292:	
	return
	opt stack 0
GLOBAL	__end_of_abs
	__end_of_abs:
;; =============== function _abs ends ============

	signat	_abs,4218
	global	_ngat
psect	text562,local,class=CODE,delta=2
global __ptext562
__ptext562:

;; *************** function _ngat *****************
;; Defined at:
;;		line 73 in file "D:\TTVXL\Project TTVXL\BT05week12ttvxl\BT05week12ttvxl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text562
	file	"D:\TTVXL\Project TTVXL\BT05week12ttvxl\BT05week12ttvxl.c"
	line	73
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
	opt	stack 2
; Regs used in _ngat: [wreg]
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
	movf	pclath,w
	movwf	(??_ngat+1)
	ljmp	_ngat
psect	text562
	line	74
	
i1l6127:	
;BT05week12ttvxl.c: 74: if(CCP1IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(98/8),(98)&7
	goto	u199_21
	goto	u199_20
u199_21:
	goto	i1l6131
u199_20:
	line	76
	
i1l6129:	
;BT05week12ttvxl.c: 75: {
;BT05week12ttvxl.c: 76: count1=CCPR1;
	movf	(21+1),w	;volatile
	movwf	(_count1+1)	;volatile
	movf	(21),w	;volatile
	movwf	(_count1)	;volatile
	line	78
	
i1l6131:	
;BT05week12ttvxl.c: 77: }
;BT05week12ttvxl.c: 78: if(CCP2IF)
	btfss	(104/8),(104)&7
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l6135
u200_20:
	line	80
	
i1l6133:	
;BT05week12ttvxl.c: 79: {
;BT05week12ttvxl.c: 80: count2=CCPR2;
	movf	(27+1),w	;volatile
	movwf	(_count2+1)	;volatile
	movf	(27),w	;volatile
	movwf	(_count2)	;volatile
	line	82
	
i1l6135:	
;BT05week12ttvxl.c: 81: }
;BT05week12ttvxl.c: 82: CCP1IF = 0;
	bcf	(98/8),(98)&7
	line	83
	
i1l6137:	
;BT05week12ttvxl.c: 83: CCP2IF = 0;
	bcf	(104/8),(104)&7
	line	85
	
i1l1076:	
	movf	(??_ngat+1),w
	movwf	pclath
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
psect	text563,local,class=CODE,delta=2
global __ptext563
__ptext563:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
