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
# 6 "D:\TTVXL\Project TTVXL\BT02week12ttvxl\BT02week12ttvxl.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "D:\TTVXL\Project TTVXL\BT02week12ttvxl\BT02week12ttvxl.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,___altoft
	FNCALL	_main,___ftmul
	FNCALL	_main,___ftsub
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
	FNCALL	_ngat,i1___ftadd
	FNCALL	i1___ftadd,i1___ftpack
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
	global	_xung
	global	_f
	global	_TMR1
_TMR1	set	14
	global	_TMR0
_TMR0	set	1
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_GIE
_GIE	set	95
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
	global	_TMR1CS
_TMR1CS	set	129
	global	_TMR1GE
_TMR1GE	set	134
	global	_TMR1ON
_TMR1ON	set	128
	global	_TRISD
_TRISD	set	136
	global	_PS0
_PS0	set	1032
	global	_PS1
_PS1	set	1033
	global	_PS2
_PS2	set	1034
	global	_PSA
_PSA	set	1035
	global	_T0CS
_T0CS	set	1037
	global	_TRISA4
_TRISA4	set	1068
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
	retlw	51	;'3'
	retlw	46	;'.'
	retlw	50	;'2'
	retlw	102	;'f'
	retlw	0
psect	strings
	file	"BT02week12ttvxl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_dem:
       ds      3

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_xung:
       ds      4

_f:
       ds      3

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
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
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	_fround$4113
_fround$4113:	; 3 bytes @ 0x0
	ds	3
	global	_fround$4112
_fround$4112:	; 3 bytes @ 0x3
	ds	3
	global	fround@prec
fround@prec:	; 1 bytes @ 0x6
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0x7
	ds	4
	global	??_printf
??_printf:	; 0 bytes @ 0xB
	ds	5
	global	_printf$3166
_printf$3166:	; 4 bytes @ 0x10
	ds	4
	global	printf@ap
printf@ap:	; 1 bytes @ 0x14
	ds	1
	global	printf@integ
printf@integ:	; 3 bytes @ 0x15
	ds	3
	global	printf@_val
printf@_val:	; 4 bytes @ 0x18
	ds	4
	global	printf@f
printf@f:	; 1 bytes @ 0x1C
	ds	1
	global	printf@flag
printf@flag:	; 2 bytes @ 0x1D
	ds	2
	global	printf@exp
printf@exp:	; 2 bytes @ 0x1F
	ds	2
	global	printf@width
printf@width:	; 2 bytes @ 0x21
	ds	2
	global	printf@fval
printf@fval:	; 3 bytes @ 0x23
	ds	3
	global	printf@prec
printf@prec:	; 2 bytes @ 0x26
	ds	2
	global	printf@c
printf@c:	; 1 bytes @ 0x28
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
	global	?_lcd_busy
?_lcd_busy:	; 1 bytes @ 0x0
	global	?i1___ftpack
?i1___ftpack:	; 3 bytes @ 0x0
	global	i1___ftpack@arg
i1___ftpack@arg:	; 3 bytes @ 0x0
	ds	3
	global	i1___ftpack@exp
i1___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	i1___ftpack@sign
i1___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
	global	??i1___ftpack
??i1___ftpack:	; 0 bytes @ 0x5
	ds	3
	global	?i1___ftadd
?i1___ftadd:	; 3 bytes @ 0x8
	global	i1___ftadd@f1
i1___ftadd@f1:	; 3 bytes @ 0x8
	ds	3
	global	i1___ftadd@f2
i1___ftadd@f2:	; 3 bytes @ 0xB
	ds	3
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??i1___ftadd
??i1___ftadd:	; 0 bytes @ 0x0
	ds	3
	global	i1___ftadd@sign
i1___ftadd@sign:	; 1 bytes @ 0x3
	ds	1
	global	i1___ftadd@exp2
i1___ftadd@exp2:	; 1 bytes @ 0x4
	ds	1
	global	i1___ftadd@exp1
i1___ftadd@exp1:	; 1 bytes @ 0x5
	ds	1
	global	??_ngat
??_ngat:	; 0 bytes @ 0x6
	ds	2
	global	?_lcd_put_byte
?_lcd_put_byte:	; 0 bytes @ 0x8
	global	??_lcd_busy
??_lcd_busy:	; 0 bytes @ 0x8
	global	??_isprint
??_isprint:	; 0 bytes @ 0x8
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x8
	global	?___ftge
?___ftge:	; 1 bit 
	global	?___lbmod
?___lbmod:	; 1 bytes @ 0x8
	global	?___wmul
?___wmul:	; 2 bytes @ 0x8
	global	?___awmod
?___awmod:	; 2 bytes @ 0x8
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x8
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x8
	global	?__tdiv_to_l_
?__tdiv_to_l_:	; 4 bytes @ 0x8
	global	?__div_to_l_
?__div_to_l_:	; 4 bytes @ 0x8
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x8
	global	lcd_put_byte@b
lcd_put_byte@b:	; 1 bytes @ 0x8
	global	_isdigit$3674
_isdigit$3674:	; 1 bytes @ 0x8
	global	_isprint$3677
_isprint$3677:	; 1 bytes @ 0x8
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x8
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x8
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x8
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x8
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x8
	global	__tdiv_to_l_@f1
__tdiv_to_l_@f1:	; 3 bytes @ 0x8
	global	__div_to_l_@f1
__div_to_l_@f1:	; 3 bytes @ 0x8
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x8
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x8
	ds	1
	global	??_lcd_put_byte
??_lcd_put_byte:	; 0 bytes @ 0x9
	global	??___lbmod
??___lbmod:	; 0 bytes @ 0x9
	global	lcd_busy@busy
lcd_busy@busy:	; 1 bytes @ 0x9
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x9
	global	isprint@c
isprint@c:	; 1 bytes @ 0x9
	ds	1
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0xA
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0xA
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0xA
	ds	1
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0xB
	global	lcd_put_byte@rs
lcd_put_byte@rs:	; 1 bytes @ 0xB
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0xB
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0xB
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0xB
	global	__tdiv_to_l_@f2
__tdiv_to_l_@f2:	; 3 bytes @ 0xB
	global	__div_to_l_@f2
__div_to_l_@f2:	; 3 bytes @ 0xB
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0xC
	global	??___awmod
??___awmod:	; 0 bytes @ 0xC
	global	lcd_put_byte@temp
lcd_put_byte@temp:	; 1 bytes @ 0xC
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0xC
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0xC
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0xC
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0xC
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0xC
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0xD
	global	?_lcd_gotoxy
?_lcd_gotoxy:	; 0 bytes @ 0xD
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0xD
	global	?___lbdiv
?___lbdiv:	; 1 bytes @ 0xD
	global	lcd_gotoxy@row
lcd_gotoxy@row:	; 1 bytes @ 0xD
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0xD
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0xD
	ds	1
	global	??_lcd_gotoxy
??_lcd_gotoxy:	; 0 bytes @ 0xE
	global	??__tdiv_to_l_
??__tdiv_to_l_:	; 0 bytes @ 0xE
	global	??__div_to_l_
??__div_to_l_:	; 0 bytes @ 0xE
	global	??___lbdiv
??___lbdiv:	; 0 bytes @ 0xE
	global	??___ftge
??___ftge:	; 0 bytes @ 0xE
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0xE
	global	lcd_gotoxy@col
lcd_gotoxy@col:	; 1 bytes @ 0xE
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0xE
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0xE
	ds	1
	global	lcd_gotoxy@address
lcd_gotoxy@address:	; 1 bytes @ 0xF
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0xF
	ds	1
	global	??_lcd_putc
??_lcd_putc:	; 0 bytes @ 0x10
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0x10
	global	?___altoft
?___altoft:	; 3 bytes @ 0x10
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x10
	global	lcd_putc@c
lcd_putc@c:	; 1 bytes @ 0x10
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x10
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x10
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x10
	global	___altoft@c
___altoft@c:	; 4 bytes @ 0x10
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x10
	ds	1
	global	??_putch
??_putch:	; 0 bytes @ 0x11
	global	?___bmul
?___bmul:	; 1 bytes @ 0x11
	global	putch@c
putch@c:	; 1 bytes @ 0x11
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x11
	global	__tdiv_to_l_@quot
__tdiv_to_l_@quot:	; 4 bytes @ 0x11
	ds	1
	global	??___bmul
??___bmul:	; 0 bytes @ 0x12
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x12
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x12
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x12
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x13
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x13
	ds	1
	global	??___altoft
??___altoft:	; 0 bytes @ 0x14
	global	??___lltoft
??___lltoft:	; 0 bytes @ 0x14
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x14
	global	___altoft@exp
___altoft@exp:	; 1 bytes @ 0x14
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0x14
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x14
	ds	1
	global	?___llmod
?___llmod:	; 4 bytes @ 0x15
	global	___altoft@sign
___altoft@sign:	; 1 bytes @ 0x15
	global	__tdiv_to_l_@cntr
__tdiv_to_l_@cntr:	; 1 bytes @ 0x15
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x15
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x16
	global	__tdiv_to_l_@exp1
__tdiv_to_l_@exp1:	; 1 bytes @ 0x16
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x16
	global	__div_to_l_@quot
__div_to_l_@quot:	; 4 bytes @ 0x16
	ds	3
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x19
	ds	1
	global	??___fttol
??___fttol:	; 0 bytes @ 0x1A
	global	__div_to_l_@cntr
__div_to_l_@cntr:	; 1 bytes @ 0x1A
	ds	1
	global	__div_to_l_@exp1
__div_to_l_@exp1:	; 1 bytes @ 0x1B
	ds	2
	global	??___llmod
??___llmod:	; 0 bytes @ 0x1D
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x1D
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x1D
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x1E
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x22
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x23
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x23
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x26
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x29
	ds	3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x2C
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x2D
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x30
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x31
	ds	1
	global	?_scale
?_scale:	; 3 bytes @ 0x32
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x32
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x32
	ds	3
	global	??_scale
??_scale:	; 0 bytes @ 0x35
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x35
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x38
	ds	1
	global	_scale$4114
_scale$4114:	; 3 bytes @ 0x39
	ds	2
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x3B
	ds	1
	global	scale@scl
scale@scl:	; 1 bytes @ 0x3C
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x3C
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x3D
	ds	1
	global	?_fround
?_fround:	; 3 bytes @ 0x3E
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x3E
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x3E
	ds	3
	global	??_fround
??_fround:	; 0 bytes @ 0x41
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x41
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0x44
	global	??___ftsub
??___ftsub:	; 0 bytes @ 0x44
;;Data sizes: Strings 20, constant 118, data 0, bss 10, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     68      71
;; BANK1           80     41      48
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?i1___ftpack	float  size(1) Largest target is 0
;;
;; ?i1___ftadd	float  size(1) Largest target is 0
;;
;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?___llmod	unsigned long  size(1) Largest target is 0
;;
;; ?___lltoft	float  size(1) Largest target is 0
;;
;; ?__tdiv_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?__div_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftneg	float  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 40
;;		 -> dpowers(CODE[40]), 
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?_scale	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_fround	unsigned int  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?___ftsub	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___altoft	float  size(1) Largest target is 0
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 11
;;		 -> STR_2(CODE[9]), STR_1(CODE[11]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(BANK1[2]), 
;;
;; S3155$_cp	PTR const unsigned char  size(1) Largest target is 0
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
;;   _ngat->i1___ftadd
;;   i1___ftadd->i1___ftpack
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->___ftsub
;;   _printf->___ftsub
;;   _putch->_lcd_putc
;;   _lcd_putc->_lcd_gotoxy
;;   ___ftsub->___ftadd
;;   _scale->___ftmul
;;   _fround->___ftadd
;;   _lcd_gotoxy->_lcd_put_byte
;;   _lcd_init->_lcd_put_byte
;;   ___lltoft->___ftpack
;;   ___altoft->___ftpack
;;   ___ftmul->___fttol
;;   ___ftadd->___ftmul
;;   ___llmod->___lldiv
;;   ___awdiv->___awmod
;;   ___fttol->___awdiv
;;   ___lbdiv->___lbmod
;;   ___bmul->___lbdiv
;;
;; Critical Paths under _ngat in BANK0
;;
;;   _ngat->i1___ftadd
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_printf
;;   _printf->_fround
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0   18010
;;                           _lcd_init
;;                           ___altoft
;;                            ___ftmul
;;                            ___ftsub
;;                         _lcd_gotoxy
;;                             _printf
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              38    34      4   14535
;;                                              7 BANK1     34    30      4
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
;;                                             17 BANK0      1     1      0
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (3) _lcd_putc                                             1     1      0     691
;;                                             16 BANK0      1     1      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;;                         _lcd_gotoxy
;;                            _isprint
;; ---------------------------------------------------------------------------------
;; (2) ___ftsub                                              6     0      6    1602
;;                                             62 BANK0      6     0      6
;;                            ___ftadd
;;                            ___ftmul (ARG)
;;                           ___altoft (ARG)
;;                           ___lltoft (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _scale                                               14    11      3    2161
;;                                             50 BANK0     11     8      3
;;                            ___awmod
;;                            ___awdiv
;;                            ___ftmul
;;                             ___bmul
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _fround                                              13    10      3    1759
;;                                             62 BANK0      3     0      3
;;                                              0 BANK1      7     7      0
;;                            ___lbmod
;;                             ___bmul
;;                            ___lbdiv
;;                            ___ftmul
;;                            ___ftadd (ARG)
;; ---------------------------------------------------------------------------------
;; (4) _lcd_gotoxy                                           3     2      1     313
;;                                             13 BANK0      3     2      1
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             4     4      0     244
;;                                             13 BANK0      3     3      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (2) ___lltoft                                             5     1      4     414
;;                                             16 BANK0      5     1      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (1) ___altoft                                             6     2      4     516
;;                                             16 BANK0      6     2      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (3) ___ftmul                                             15     9      6     800
;;                                             35 BANK0     15     9      6
;;                           ___ftpack
;;                           ___altoft (ARG)
;;                            ___fttol (ARG)
;;                            ___awdiv (ARG)
;;                            ___awmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftadd                                             12     6      6    1537
;;                                             50 BANK0     12     6      6
;;                           ___ftpack
;;                            ___lbmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___ftmul (ARG)
;; ---------------------------------------------------------------------------------
;; (5) _lcd_busy                                             2     2      0      23
;;                                              8 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (5) _lcd_put_byte                                         5     4      1     221
;;                                              8 BANK0      5     4      1
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              6     2      4     296
;;                                              8 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lldiv                                             13     5      8     162
;;                                              8 BANK0     13     5      8
;; ---------------------------------------------------------------------------------
;; (2) ___ftge                                               6     0      6     136
;;                                              8 BANK0      6     0      6
;; ---------------------------------------------------------------------------------
;; (2) ___ftneg                                              3     0      3      45
;;                                              8 BANK0      3     0      3
;; ---------------------------------------------------------------------------------
;; (2) ___llmod                                              9     1      8     159
;;                                             21 BANK0      9     1      8
;;                            ___lldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              8     4      4     300
;;                                             14 BANK0      8     4      4
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___fttol                                             13     9      4     252
;;                                             22 BANK0     13     9      4
;;                           ___ftpack (ARG)
;;                            ___awmod (ARG)
;;                            ___awdiv (ARG)
;;                             ___bmul (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftpack                                             8     3      5     312
;;                                              8 BANK0      8     3      5
;; ---------------------------------------------------------------------------------
;; (3) ___lbmod                                              5     4      1     232
;;                                              8 BANK0      5     4      1
;; ---------------------------------------------------------------------------------
;; (3) ___lbdiv                                              4     3      1     241
;;                                             13 BANK0      4     3      1
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4     136
;;                                              8 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (3) ___bmul                                               3     2      1      68
;;                                             17 BANK0      3     2      1
;;                            ___lbmod (ARG)
;;                            ___lbdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) __div_to_l_                                          20    14      6     446
;;                                              8 BANK0     20    14      6
;; ---------------------------------------------------------------------------------
;; (2) __tdiv_to_l_                                         15     9      6     303
;;                                              8 BANK0     15     9      6
;; ---------------------------------------------------------------------------------
;; (2) _isdigit                                              2     2      0      68
;;                                              8 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (4) _isprint                                              2     2      0      68
;;                                              8 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (6) _ngat                                                 2     2      0    3432
;;                                              6 BANK0      2     2      0
;;                          i1___ftadd
;; ---------------------------------------------------------------------------------
;; (7) i1___ftadd                                           12     6      6    3432
;;                                              8 COMMON     6     0      6
;;                                              0 BANK0      6     6      0
;;                         i1___ftpack
;; ---------------------------------------------------------------------------------
;; (8) i1___ftpack                                           8     3      5     679
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 8
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_put_byte
;;     _lcd_busy
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
;;   ___ftsub
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
;;     ___altoft (ARG)
;;       ___ftpack
;;     ___lltoft (ARG)
;;       ___ftpack
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
;;         ___lbmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
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
;;       ___altoft (ARG)
;;         ___ftpack
;;       ___lltoft (ARG)
;;         ___ftpack
;;     ___lldiv
;;     ___llmod
;;       ___lldiv (ARG)
;;
;; _ngat (ROOT)
;;   i1___ftadd
;;     i1___ftpack
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
;;STACK                0      0       B       2        0.0%
;;ABS                  0      0      85       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     44      47       5       88.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     29      30       7       60.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      90      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 18 in file "D:\TTVXL\Project TTVXL\BT02week12ttvxl\BT02week12ttvxl.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_lcd_init
;;		___altoft
;;		___ftmul
;;		___ftsub
;;		_lcd_gotoxy
;;		_printf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT02week12ttvxl\BT02week12ttvxl.c"
	line	18
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	19
	
l8269:	
;BT02week12ttvxl.c: 19: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	20
	
l8271:	
;BT02week12ttvxl.c: 20: lcd_init();
	fcall	_lcd_init
	line	21
	
l8273:	
;BT02week12ttvxl.c: 21: TRISA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1068/8)^080h,(1068)&7
	line	22
	
l8275:	
;BT02week12ttvxl.c: 22: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	23
	
l8277:	
;BT02week12ttvxl.c: 23: TRISE0 = 0;
	bcf	(1096/8)^080h,(1096)&7
	line	26
	
l8279:	
;BT02week12ttvxl.c: 26: T0CS = 0;
	bcf	(1037/8)^080h,(1037)&7
	line	27
	
l8281:	
;BT02week12ttvxl.c: 27: PSA = 0;
	bcf	(1035/8)^080h,(1035)&7
	line	28
	
l8283:	
;BT02week12ttvxl.c: 28: PS2= 0; PS1 = 1; PS0= 0;
	bcf	(1034/8)^080h,(1034)&7
	
l8285:	
	bsf	(1033/8)^080h,(1033)&7
	
l8287:	
	bcf	(1032/8)^080h,(1032)&7
	line	29
	
l8289:	
;BT02week12ttvxl.c: 29: TMR0 = 7;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	32
	
l8291:	
;BT02week12ttvxl.c: 32: T0IE = 1;
	bsf	(93/8),(93)&7
	line	33
	
l8293:	
;BT02week12ttvxl.c: 33: T0IF = 0;
	bcf	(90/8),(90)&7
	line	34
	
l8295:	
;BT02week12ttvxl.c: 34: GIE = 1;
	bsf	(95/8),(95)&7
	line	37
	
l8297:	
;BT02week12ttvxl.c: 37: TMR1GE=0;
	bcf	(134/8),(134)&7
	line	38
	
l8299:	
;BT02week12ttvxl.c: 38: TMR1CS=1;
	bsf	(129/8),(129)&7
	line	39
	
l8301:	
;BT02week12ttvxl.c: 39: T1SYNC=1;
	bsf	(130/8),(130)&7
	line	40
	
l8303:	
;BT02week12ttvxl.c: 40: T1CKPS1=0;T1CKPS0=0;
	bcf	(133/8),(133)&7
	
l8305:	
	bcf	(132/8),(132)&7
	line	42
	
l8307:	
;BT02week12ttvxl.c: 42: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	43
	
l8309:	
;BT02week12ttvxl.c: 43: TMR1H=0;
	clrf	(15)	;volatile
	line	44
	
l8311:	
;BT02week12ttvxl.c: 44: TMR1L=0;
	clrf	(14)	;volatile
	line	53
	
l8313:	
;BT02week12ttvxl.c: 52: {
;BT02week12ttvxl.c: 53: f = xung-xung*0.0038;
	bsf	status, 5	;RP0=1, select bank1
	movf	(_xung+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___altoft+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_xung+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___altoft+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_xung+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___altoft+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_xung)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___altoft)

	fcall	___altoft
	movf	(0+(?___altoft)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___altoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___altoft)),w
	movwf	2+(?___ftmul)+03h
	movlw	0x9
	movwf	(?___ftmul)
	movlw	0x79
	movwf	(?___ftmul+1)
	movlw	0x3b
	movwf	(?___ftmul+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?___ftsub)
	movf	(1+(?___ftmul)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___ftsub+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_xung+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___altoft+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_xung+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___altoft+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_xung+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___altoft+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_xung)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___altoft)

	fcall	___altoft
	movf	(0+(?___altoft)),w
	movwf	0+(?___ftsub)+03h
	movf	(1+(?___altoft)),w
	movwf	1+(?___ftsub)+03h
	movf	(2+(?___altoft)),w
	movwf	2+(?___ftsub)+03h
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_f)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_f+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_f+2)^080h
	line	54
	
l8315:	
;BT02week12ttvxl.c: 54: lcd_gotoxy(0,0);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(?_lcd_gotoxy)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	55
	
l8317:	
;BT02week12ttvxl.c: 55: printf("xung: %08u",xung);
	bsf	status, 5	;RP0=1, select bank1
	movf	(_xung+3)^080h,w
	movwf	(?_printf+3)^080h
	movf	(_xung+2)^080h,w
	movwf	(?_printf+2)^080h
	movf	(_xung+1)^080h,w
	movwf	(?_printf+1)^080h
	movf	(_xung)^080h,w
	movwf	(?_printf)^080h

	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	56
	
l8319:	
;BT02week12ttvxl.c: 56: lcd_gotoxy(0,1);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	57
	
l8321:	
;BT02week12ttvxl.c: 57: printf("f: %3.2f",f);
	bsf	status, 5	;RP0=1, select bank1
	movf	(_f)^080h,w
	movwf	(?_printf)^080h
	movf	(_f+1)^080h,w
	movwf	(?_printf+1)^080h
	movf	(_f+2)^080h,w
	movwf	(?_printf+2)^080h
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	goto	l8313
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	59
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_printf
psect	text754,local,class=CODE,delta=2
global __ptext754
__ptext754:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_2(9), STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  f               1   28[BANK1 ] PTR const unsigned char 
;;		 -> STR_2(9), STR_1(11), 
;;  _val            4   24[BANK1 ] struct .
;;  fval            3   35[BANK1 ] struct .
;;  integ           3   21[BANK1 ] struct .
;;  ival            3    0        struct .
;;  prec            2   38[BANK1 ] int 
;;  width           2   33[BANK1 ] int 
;;  exp             2   31[BANK1 ] int 
;;  flag            2   29[BANK1 ] unsigned short 
;;  c               1   40[BANK1 ] char 
;;  ap              1   20[BANK1 ] PTR void [1]
;;		 -> ?_printf(2), 
;;  d               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[BANK1 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0      25       0       0
;;      Temps:          0       0       5       0       0
;;      Totals:         0       0      34       0       0
;;Total ram usage:       34 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
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
psect	text754
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
;; using string table level
	opt	stack 1
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	537
	movwf	(printf@f)^080h
	
l7989:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)^080h
	line	540
	goto	l8267
	line	542
	
l7991:	
	movf	(printf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u5281
	goto	u5280
u5281:
	goto	l7995
u5280:
	line	545
	
l7993:	
	movf	(printf@c)^080h,w
	fcall	_putch
	line	546
	goto	l8267
	line	550
	
l7995:	
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	552
	clrf	(printf@flag)^080h
	clrf	(printf@flag+1)^080h
	goto	l8001
	line	583
	
l2204:	
	line	584
	bsf	(printf@flag)^080h+(2/8),(2)&7
	line	585
	
l7997:	
	incf	(printf@f)^080h,f
	line	555
	
l8001:	
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
	goto	l2204
	goto	l8003
	opt asmopt_on

	line	601
	
l8003:	
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u5291
	goto	u5290
u5291:
	goto	l8013
u5290:
	line	602
	
l8005:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	604
	
l8007:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@width+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___wmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@width)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	addwf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_printf+0)^080h+0
	movlw	0
	skipnc
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	addwf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(??_printf+0)^080h+0
	movf	0+(??_printf+0)^080h+0,w
	addlw	low(0FFD0h)
	movwf	(printf@width)^080h
	movf	1+(??_printf+0)^080h+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(printf@width)^080h
	
l8009:	
	incf	(printf@f)^080h,f
	line	605
	
l8011:	
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u5301
	goto	u5300
u5301:
	goto	l8007
u5300:
	line	614
	
l8013:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u5311
	goto	u5310
u5311:
	goto	l8027
u5310:
	line	615
	
l8015:	
	bsf	(printf@flag)^080h+(14/8),(14)&7
	line	616
	
l8017:	
	incf	(printf@f)^080h,f
	line	624
	
l8019:	
	clrf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	line	625
	goto	l8025
	line	626
	
l8021:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@prec+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___wmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	addwf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_printf+0)^080h+0
	movlw	0
	skipnc
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	addwf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(??_printf+0)^080h+0
	movf	0+(??_printf+0)^080h+0,w
	addlw	low(0FFD0h)
	movwf	(printf@prec)^080h
	movf	1+(??_printf+0)^080h+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(printf@prec)^080h
	
l8023:	
	incf	(printf@f)^080h,f
	line	625
	
l8025:	
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u5321
	goto	u5320
u5321:
	goto	l8021
u5320:
	goto	l8035
	line	629
	
l8027:	
	clrf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	line	631
	
l8029:	
	bsf	(printf@flag)^080h+(12/8),(12)&7
	goto	l8035
	line	665
	
l2219:	
	line	666
	bsf	(printf@flag)^080h+(10/8),(10)&7
	line	667
	goto	l8037
	line	821
	
l8031:	
	movlw	0C0h
	iorwf	(printf@flag)^080h,f
	line	822
	goto	l8037
	line	638
	
l8035:	
	bsf	status, 5	;RP0=1, select bank1
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
	goto	l2298
	xorlw	102^0	; case 102
	skipnz
	goto	l2219
	xorlw	117^102	; case 117
	skipnz
	goto	l8031
	goto	l8267
	opt asmopt_on

	line	828
	
l8037:	
	movlw	low(0700h)
	andwf	(printf@flag)^080h,w
	movwf	(??_printf+0)^080h+0
	movlw	high(0700h)
	andwf	(printf@flag+1)^080h,w
	movwf	1+(??_printf+0)^080h+0
	movf	1+(??_printf+0)^080h+0,w
	iorwf	0+(??_printf+0)^080h+0,w
	skipnz
	goto	u5331
	goto	u5330
u5331:
	goto	l8189
u5330:
	line	830
	
l8039:	
	btfss	(printf@flag+1)^080h,(12)&7
	goto	u5341
	goto	u5340
u5341:
	goto	l8043
u5340:
	line	832
	
l8041:	
	movlw	06h
	movwf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	line	833
	
l8043:	
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
	
l8045:	
	movlw	(03h)
	addwf	(printf@ap)^080h,f
	line	834
	
l8047:	
	movf	(printf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+2)
	clrf	0+(?___ftge)+03h
	clrf	1+(?___ftge)+03h
	clrf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5351
	goto	u5350
u5351:
	goto	l8053
u5350:
	line	835
	
l8049:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftneg)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftneg+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@fval+2)^080h
	line	836
	
l8051:	
	movlw	03h
	iorwf	(printf@flag)^080h,f
	line	838
	
l8053:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(printf@exp)^080h
	clrf	(printf@exp+1)^080h
	line	839
	
l8055:	
	movf	(printf@fval+2)^080h,w
	iorwf	(printf@fval+1)^080h,w
	iorwf	(printf@fval)^080h,w
	skipnz
	goto	u5361
	goto	u5360
u5361:
	goto	l8085
u5360:
	line	840
	
l8057:	
	movlw	low(printf@fval)
	movwf	fsr0
	movf	indf,w
	movwf	(??_printf+0)^080h+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_printf+0)^080h+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??_printf+0)^080h+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??_printf+0)^080h+0+3
	movlw	0Fh
u5375:
	clrc
	rrf	(??_printf+0)^080h+3,f
	rrf	(??_printf+0)^080h+2,f
	rrf	(??_printf+0)^080h+1,f
	rrf	(??_printf+0)^080h+0,f
u5370:
	addlw	-1
	skipz
	goto	u5375
	movf	1+(??_printf+0)^080h+0,w
	movwf	(printf@exp+1)^080h
	movf	0+(??_printf+0)^080h+0,w
	movwf	(printf@exp)^080h
	
l8059:	
	movlw	0FFh
	andwf	(printf@exp)^080h,f
	clrf	(printf@exp+1)^080h
	
l8061:	
	movlw	-126
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	841
	
l8063:	
	movlw	-1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	842
	
l8065:	
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@exp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___wmul)+02h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@exp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@exp)^080h
	line	843
	
l8067:	
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
	
l8069:	
	btfss	(printf@exp+1)^080h,7
	goto	u5381
	goto	u5380
u5381:
	goto	l8073
u5380:
	line	845
	
l8071:	
	movlw	-1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	849
	
l8073:	
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
	
l8075:	
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
	
l8077:	
	movf	(printf@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x80
	movwf	1+(?___ftge)+03h
	movlw	0x3f
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5391
	goto	u5390
u5391:
	goto	l8081
u5390:
	line	852
	
l8079:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	goto	l8085
	line	853
	
l8081:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x20
	movwf	1+(?___ftge)+03h
	movlw	0x41
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u5401
	goto	u5400
u5401:
	goto	l8085
u5400:
	line	854
	
l8083:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(printf@exp)^080h,f
	skipnz
	incf	(printf@exp+1)^080h,f
	line	1115
	
l8085:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u5415
	movlw	low(0Dh)
	subwf	(printf@prec)^080h,w
u5415:

	skipnc
	goto	u5411
	goto	u5410
u5411:
	goto	l8089
u5410:
	line	1116
	
l8087:	
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
	
l8089:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u5425
	movlw	low(0Ah)
	subwf	(printf@exp)^080h,w
u5425:

	skipnc
	goto	u5421
	goto	u5420
u5421:
	goto	l8097
u5420:
	
l8091:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@fval+2)^080h,w
	iorwf	(printf@fval+1)^080h,w
	iorwf	(printf@fval)^080h,w
	skipnz
	goto	u5431
	goto	u5430
u5431:
	goto	l8113
u5430:
	
l8093:	
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
	goto	u5441
	goto	u5440
u5441:
	goto	l8113
u5440:
	
l8095:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5455
	movlw	low(02h)
	subwf	(printf@exp)^080h,w
u5455:

	skipc
	goto	u5451
	goto	u5450
u5451:
	goto	l8113
u5450:
	line	1123
	
l8097:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+2)
	movlw	0x70
	movwf	0+(?___ftge)+03h
	movlw	0x89
	movwf	1+(?___ftge)+03h
	movlw	0x40
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5461
	goto	u5460
u5461:
	goto	l8101
u5460:
	line	1124
	
l8099:	
	movlw	-9
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	1125
	goto	l8103
	line	1126
	
l8101:	
	movlw	-8
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	1128
	
l8103:	
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
	
l8107:	
	movf	(printf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?__tdiv_to_l_)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?__tdiv_to_l_+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?__tdiv_to_l_+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?__tdiv_to_l_)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?__tdiv_to_l_)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?__tdiv_to_l_)+03h
	fcall	__tdiv_to_l_
	movf	(3+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_printf$3166+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_printf$3166+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_printf$3166+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_printf$3166)^080h

	
l8109:	
	movf	(_printf$3166+3)^080h,w
	movwf	(printf@_val+3)^080h
	movf	(_printf$3166+2)^080h,w
	movwf	(printf@_val+2)^080h
	movf	(_printf$3166+1)^080h,w
	movwf	(printf@_val+1)^080h
	movf	(_printf$3166)^080h,w
	movwf	(printf@_val)^080h

	line	1132
	
l8111:	
	clrf	(printf@fval)^080h
	clrf	(printf@fval+1)^080h
	clrf	(printf@fval+2)^080h
	line	1133
	goto	l8117
	line	1134
	
l8113:	
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
	
l8115:	
	clrf	(printf@exp)^080h
	clrf	(printf@exp+1)^080h
	line	1139
	
l8117:	
	clrf	(printf@c)^080h
	incf	(printf@c)^080h,f
	line	1140
	
l8123:	
	movf	(printf@c)^080h,w
	movwf	(??_printf+0)^080h+0
	clrc
	rlf	(??_printf+0)^080h+0,f
	clrc
	rlf	(??_printf+0)^080h+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_printf+1)^080h+0)
	fcall	stringdir
	movwf	((??_printf+1)^080h+0+1)
	fcall	stringdir
	movwf	((??_printf+1)^080h+0+2)
	fcall	stringdir
	movwf	((??_printf+1)^080h+0+3)
	movf	3+(??_printf+1)^080h+0,w
	subwf	(printf@_val+3)^080h,w
	skipz
	goto	u5475
	movf	2+(??_printf+1)^080h+0,w
	subwf	(printf@_val+2)^080h,w
	skipz
	goto	u5475
	movf	1+(??_printf+1)^080h+0,w
	subwf	(printf@_val+1)^080h,w
	skipz
	goto	u5475
	movf	0+(??_printf+1)^080h+0,w
	subwf	(printf@_val)^080h,w
u5475:
	skipnc
	goto	u5471
	goto	u5470
u5471:
	goto	l8127
u5470:
	goto	l8131
	line	1139
	
l8127:	
	incf	(printf@c)^080h,f
	
l8129:	
	movf	(printf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u5481
	goto	u5480
u5481:
	goto	l8123
u5480:
	line	1145
	
l8131:	
	movf	(printf@prec)^080h,w
	addwf	(printf@c)^080h,w
	movwf	(??_printf+0)^080h+0
	movf	(printf@prec+1)^080h,w
	skipnc
	incf	(printf@prec+1)^080h,w
	addlw	0
	btfsc	(printf@c)^080h,7
	addlw	0ffh
	movwf	(??_printf+0)^080h+0+1
	movf	(printf@exp)^080h,w
	addwf	0+(??_printf+0)^080h+0,w
	movwf	(??_printf+2)^080h+0
	movf	(printf@exp+1)^080h,w
	skipnc
	incf	(printf@exp+1)^080h,w
	addwf	1+(??_printf+0)^080h+0,w
	movwf	1+(??_printf+2)^080h+0
	movf	0+(??_printf+2)^080h+0,w
	subwf	(printf@width)^080h,f
	movf	1+(??_printf+2)^080h+0,w
	skipc
	decf	(printf@width+1)^080h,f
	subwf	(printf@width+1)^080h,f
	line	1150
	
l8133:	
	movf	(printf@prec+1)^080h,w
	iorwf	(printf@prec)^080h,w
	skipnz
	goto	u5491
	goto	u5490
u5491:
	goto	l8137
u5490:
	line	1151
	
l8135:	
	movlw	-1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1152
	
l8137:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u5501
	goto	u5500
u5501:
	goto	l8141
u5500:
	line	1153
	
l8139:	
	movlw	-1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1156
	
l8141:	
	btfss	(printf@flag)^080h,(2)&7
	goto	u5511
	goto	u5510
u5511:
	goto	l8155
u5510:
	goto	l8149
	line	1170
	
l8145:	
	movlw	(030h)
	fcall	_putch
	line	1171
	
l8147:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1169
	
l8149:	
	movf	(printf@width+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5525
	movlw	low(01h)
	subwf	(printf@width)^080h,w
u5525:

	skipnc
	goto	u5521
	goto	u5520
u5521:
	goto	l8145
u5520:
	goto	l8163
	line	1182
	
l8151:	
	movlw	(020h)
	fcall	_putch
	line	1183
	
l8153:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1181
	
l8155:	
	movf	(printf@width+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5535
	movlw	low(01h)
	subwf	(printf@width)^080h,w
u5535:

	skipnc
	goto	u5531
	goto	u5530
u5531:
	goto	l8151
u5530:
	line	1189
	
l8157:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u5541
	goto	u5540
u5541:
	goto	l8163
u5540:
	line	1191
	
l8159:	
	movlw	(02Dh)
	fcall	_putch
	goto	l8163
	line	1201
	
l8161:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@c)^080h,w
	movwf	(??_printf+0)^080h+0
	clrc
	rlf	(??_printf+0)^080h+0,f
	clrc
	rlf	(??_printf+0)^080h+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
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
	
l8163:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	decf	(printf@c)^080h,f
	incf	((printf@c)^080h),w
	skipz
	goto	u5551
	goto	u5550
u5551:
	goto	l8161
u5550:
	goto	l8169
	line	1205
	
l8165:	
	movlw	(030h)
	fcall	_putch
	line	1206
	
l8167:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	1204
	
l8169:	
	movf	(printf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5565
	movlw	low(01h)
	subwf	(printf@exp)^080h,w
u5565:

	skipnc
	goto	u5561
	goto	u5560
u5561:
	goto	l8165
u5560:
	line	1208
	
l8171:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5575
	movlw	low(09h)
	subwf	(printf@prec)^080h,w
u5575:

	skipc
	goto	u5571
	goto	u5570
u5571:
	goto	l8175
u5570:
	line	1209
	
l8173:	
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(printf@c)^080h
	goto	l2263
	line	1211
	
l8175:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec)^080h,w
	movwf	(printf@c)^080h
	
l2263:	
	line	1212
	movf	(printf@c)^080h,w
	movwf	(??_printf+0)^080h+0
	clrf	(??_printf+0)^080h+0+1
	btfsc	(??_printf+0)^080h+0,7
	decf	(??_printf+0)^080h+0+1,f
	movf	0+(??_printf+0)^080h+0,w
	subwf	(printf@prec)^080h,f
	movf	1+(??_printf+0)^080h+0,w
	skipc
	decf	(printf@prec+1)^080h,f
	subwf	(printf@prec+1)^080h,f
	line	1216
	movf	(printf@c)^080h,w
	skipz
	goto	u5580
	goto	l2264
u5580:
	line	1218
	
l8177:	
	movlw	(02Eh)
	fcall	_putch
	
l2264:	
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
	goto	l8181
	line	1226
	
l8179:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@c)^080h,w
	movwf	(??_printf+0)^080h+0
	clrc
	rlf	(??_printf+0)^080h+0,f
	clrc
	rlf	(??_printf+0)^080h+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
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
	movwf	(??_printf+0)^080h+0
	clrc
	rlf	(??_printf+0)^080h+0,f
	clrc
	rlf	(??_printf+0)^080h+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
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
	
l8181:	
	decf	(printf@c)^080h,f
	incf	((printf@c)^080h),w
	skipz
	goto	u5591
	goto	u5590
u5591:
	goto	l8179
u5590:
	goto	l8187
	line	1231
	
l8183:	
	movlw	(030h)
	fcall	_putch
	line	1232
	
l8185:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@prec)^080h,f
	skipc
	decf	(printf@prec+1)^080h,f
	line	1230
	
l8187:	
	movf	((printf@prec+1)^080h),w
	iorwf	((printf@prec)^080h),w
	skipz
	goto	u5601
	goto	u5600
u5601:
	goto	l8183
u5600:
	goto	l8267
	line	1281
	
l8189:	
	movf	(printf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_printf+0)^080h+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_printf+0)^080h+0+1
	movf	0+(??_printf+0)^080h+0,w
	movwf	(printf@_val)^080h
	movf	1+(??_printf+0)^080h+0,w
	movwf	((printf@_val)^080h)+1
	clrf	2+((printf@_val)^080h)
	clrf	3+((printf@_val)^080h)
	
l8191:	
	incf	(printf@ap)^080h,f
	incf	(printf@ap)^080h,f
	line	1285
	
l8193:	
	movf	((printf@prec+1)^080h),w
	iorwf	((printf@prec)^080h),w
	skipz
	goto	u5611
	goto	u5610
u5611:
	goto	l8199
u5610:
	
l8195:	
	movf	(printf@_val+3)^080h,w
	iorwf	(printf@_val+2)^080h,w
	iorwf	(printf@_val+1)^080h,w
	iorwf	(printf@_val)^080h,w
	skipz
	goto	u5621
	goto	u5620
u5621:
	goto	l8199
u5620:
	line	1286
	
l8197:	
	incf	(printf@prec)^080h,f
	skipnz
	incf	(printf@prec+1)^080h,f
	line	1300
	
l8199:	
	clrf	(printf@c)^080h
	incf	(printf@c)^080h,f
	line	1301
	
l8205:	
	movf	(printf@c)^080h,w
	movwf	(??_printf+0)^080h+0
	clrc
	rlf	(??_printf+0)^080h+0,f
	clrc
	rlf	(??_printf+0)^080h+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_printf+1)^080h+0)
	fcall	stringdir
	movwf	((??_printf+1)^080h+0+1)
	fcall	stringdir
	movwf	((??_printf+1)^080h+0+2)
	fcall	stringdir
	movwf	((??_printf+1)^080h+0+3)
	movf	3+(??_printf+1)^080h+0,w
	subwf	(printf@_val+3)^080h,w
	skipz
	goto	u5635
	movf	2+(??_printf+1)^080h+0,w
	subwf	(printf@_val+2)^080h,w
	skipz
	goto	u5635
	movf	1+(??_printf+1)^080h+0,w
	subwf	(printf@_val+1)^080h,w
	skipz
	goto	u5635
	movf	0+(??_printf+1)^080h+0,w
	subwf	(printf@_val)^080h,w
u5635:
	skipnc
	goto	u5631
	goto	u5630
u5631:
	goto	l8209
u5630:
	goto	l8213
	line	1300
	
l8209:	
	incf	(printf@c)^080h,f
	
l8211:	
	movf	(printf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u5641
	goto	u5640
u5641:
	goto	l8205
u5640:
	line	1334
	
l8213:	
	movf	(printf@c)^080h,w
	movwf	(??_printf+0)^080h+0
	clrf	(??_printf+0)^080h+0+1
	btfsc	(??_printf+0)^080h+0,7
	decf	(??_printf+0)^080h+0+1,f
	movf	1+(??_printf+0)^080h+0,w
	xorlw	80h
	movwf	(??_printf+2)^080h+0
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	subwf	(??_printf+2)^080h+0,w
	skipz
	goto	u5655
	movf	(printf@prec)^080h,w
	subwf	0+(??_printf+0)^080h+0,w
u5655:

	skipnc
	goto	u5651
	goto	u5650
u5651:
	goto	l8217
u5650:
	line	1335
	
l8215:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec)^080h,w
	movwf	(printf@c)^080h
	goto	l8221
	line	1336
	
l8217:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@c)^080h,w
	movwf	(??_printf+0)^080h+0
	clrf	(??_printf+0)^080h+0+1
	btfsc	(??_printf+0)^080h+0,7
	decf	(??_printf+0)^080h+0+1,f
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	movwf	(??_printf+2)^080h+0
	movf	1+(??_printf+0)^080h+0,w
	xorlw	80h
	subwf	(??_printf+2)^080h+0,w
	skipz
	goto	u5665
	movf	0+(??_printf+0)^080h+0,w
	subwf	(printf@prec)^080h,w
u5665:

	skipnc
	goto	u5661
	goto	u5660
u5661:
	goto	l8221
u5660:
	line	1337
	
l8219:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@c)^080h,w
	movwf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	btfsc	(printf@prec)^080h,7
	decf	(printf@prec+1)^080h,f
	line	1340
	
l8221:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@width+1)^080h,w
	iorwf	(printf@width)^080h,w
	skipnz
	goto	u5671
	goto	u5670
u5671:
	goto	l8227
u5670:
	
l8223:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u5681
	goto	u5680
u5681:
	goto	l8227
u5680:
	line	1341
	
l8225:	
	movlw	-1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1343
	
l8227:	
	btfss	(printf@flag+1)^080h,(14)&7
	goto	u5691
	goto	u5690
u5691:
	goto	l8235
u5690:
	line	1344
	
l8229:	
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	movwf	(??_printf+0)^080h+0
	movf	(printf@width+1)^080h,w
	xorlw	80h
	subwf	(??_printf+0)^080h+0,w
	skipz
	goto	u5705
	movf	(printf@width)^080h,w
	subwf	(printf@prec)^080h,w
u5705:

	skipnc
	goto	u5701
	goto	u5700
u5701:
	goto	l8233
u5700:
	line	1345
	
l8231:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec)^080h,w
	subwf	(printf@width)^080h,f
	movf	(printf@prec+1)^080h,w
	skipc
	decf	(printf@width+1)^080h,f
	subwf	(printf@width+1)^080h,f
	goto	l8235
	line	1347
	
l8233:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	1376
	
l8235:	
	movf	(printf@c)^080h,w
	movwf	(??_printf+0)^080h+0
	clrf	(??_printf+0)^080h+0+1
	btfsc	(??_printf+0)^080h+0,7
	decf	(??_printf+0)^080h+0+1,f
	movf	1+(??_printf+0)^080h+0,w
	xorlw	80h
	movwf	(??_printf+2)^080h+0
	movf	(printf@width+1)^080h,w
	xorlw	80h
	subwf	(??_printf+2)^080h+0,w
	skipz
	goto	u5715
	movf	(printf@width)^080h,w
	subwf	0+(??_printf+0)^080h+0,w
u5715:

	skipnc
	goto	u5711
	goto	u5710
u5711:
	goto	l8239
u5710:
	line	1377
	
l8237:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@c)^080h,w
	movwf	(??_printf+0)^080h+0
	clrf	(??_printf+0)^080h+0+1
	btfsc	(??_printf+0)^080h+0,7
	decf	(??_printf+0)^080h+0+1,f
	movf	0+(??_printf+0)^080h+0,w
	subwf	(printf@width)^080h,f
	movf	1+(??_printf+0)^080h+0,w
	skipc
	decf	(printf@width+1)^080h,f
	subwf	(printf@width+1)^080h,f
	goto	l8241
	line	1379
	
l8239:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	1382
	
l8241:	
	btfss	(printf@flag)^080h,(2)&7
	goto	u5721
	goto	u5720
u5721:
	goto	l8253
u5720:
	line	1387
	
l8243:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u5731
	goto	u5730
u5731:
	goto	l8247
u5730:
	line	1388
	
l8245:	
	movlw	(02Dh)
	fcall	_putch
	line	1410
	
l8247:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@width+1)^080h,w
	iorwf	(printf@width)^080h,w
	skipnz
	goto	u5741
	goto	u5740
u5741:
	goto	l8265
u5740:
	line	1412
	
l8249:	
	movlw	(030h)
	fcall	_putch
	line	1413
	
l8251:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	movf	(((printf@width+1)^080h)),w
	iorwf	(((printf@width)^080h)),w
	skipz
	goto	u5751
	goto	u5750
u5751:
	goto	l8249
u5750:
	goto	l8265
	line	1423
	
l8253:	
	movf	(printf@width+1)^080h,w
	iorwf	(printf@width)^080h,w
	skipnz
	goto	u5761
	goto	u5760
u5761:
	goto	l8259
u5760:
	line	1425
	
l8255:	
	movlw	(020h)
	fcall	_putch
	line	1426
	
l8257:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	movf	(((printf@width+1)^080h)),w
	iorwf	(((printf@width)^080h)),w
	skipz
	goto	u5771
	goto	u5770
u5771:
	goto	l8255
u5770:
	line	1433
	
l8259:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u5781
	goto	u5780
u5781:
	goto	l8265
u5780:
	line	1434
	
l8261:	
	movlw	(02Dh)
	fcall	_putch
	goto	l8265
	line	1484
	
l8263:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@prec)^080h,w
	movwf	(??_printf+0)^080h+0
	clrc
	rlf	(??_printf+0)^080h+0,f
	clrc
	rlf	(??_printf+0)^080h+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
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
	
l8265:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@prec)^080h,f
	skipc
	decf	(printf@prec+1)^080h,f
	incf	((printf@prec)^080h),w
	skipnz
	incf	((printf@prec+1)^080h),w

	skipz
	goto	u5791
	goto	u5790
u5791:
	goto	l8263
u5790:
	line	540
	
l8267:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@f)^080h,w
	incf	(printf@f)^080h,f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)^080h
	movf	((printf@c)^080h),f
	skipz
	goto	u5801
	goto	u5800
u5801:
	goto	l7991
u5800:
	line	1533
	
l2298:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_putch
psect	text755,local,class=CODE,delta=2
global __ptext755
__ptext755:

;; *************** function _putch *****************
;; Defined at:
;;		line 62 in file "D:\TTVXL\Project TTVXL\BT02week12ttvxl\BT02week12ttvxl.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   17[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_lcd_putc
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text755
	file	"D:\TTVXL\Project TTVXL\BT02week12ttvxl\BT02week12ttvxl.c"
	line	62
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 0
; Regs used in _putch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;putch@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(putch@c)
	line	63
	
l7207:	
;BT02week12ttvxl.c: 63: lcd_putc(c);
	movf	(putch@c),w
	fcall	_lcd_putc
	line	64
	
l1061:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_putc
psect	text756,local,class=CODE,delta=2
global __ptext756
__ptext756:

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 143 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   16[BANK0 ] unsigned char 
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
psect	text756
	file	"D:\TTVXL\Library\lcd(16).c"
	line	143
	global	__size_of_lcd_putc
	__size_of_lcd_putc	equ	__end_of_lcd_putc-_lcd_putc
	
_lcd_putc:	
	opt	stack 0
; Regs used in _lcd_putc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_putc@c stored from wreg
	movwf	(lcd_putc@c)
	line	144
	
l7189:	
;lcd(16).c: 144: switch(c){
	goto	l7205
	line	146
	
l7191:	
;lcd(16).c: 146: lcd_put_byte(0, 1);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	147
;lcd(16).c: 147: while(lcd_busy());
	
l7193:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4181
	goto	u4180
u4181:
	goto	l7193
u4180:
	goto	l2148
	line	150
	
l7195:	
;lcd(16).c: 150: lcd_gotoxy(0, 1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	151
;lcd(16).c: 151: break;
	goto	l2148
	line	153
	
l7197:	
;lcd(16).c: 153: if(isprint(c)){
	movf	(lcd_putc@c),w
	fcall	_isprint
	btfss	status,0
	goto	u4191
	goto	u4190
u4191:
	goto	l2148
u4190:
	line	154
	
l7199:	
;lcd(16).c: 154: lcd_put_byte(1, c);
	movf	(lcd_putc@c),w
	movwf	(?_lcd_put_byte)
	movlw	(01h)
	fcall	_lcd_put_byte
	line	155
;lcd(16).c: 155: while(lcd_busy());
	
l7201:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4201
	goto	u4200
u4201:
	goto	l7201
u4200:
	goto	l2148
	line	144
	
l7205:	
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
	goto	l7195
	xorlw	12^10	; case 12
	skipnz
	goto	l7191
	goto	l7197
	opt asmopt_on

	line	159
	
l2148:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	___ftsub
psect	text757,local,class=CODE,delta=2
global __ptext757
__ptext757:

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 17 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   62[BANK0 ] float 
;;  f1              3   65[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   62[BANK0 ] float 
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_main
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text757
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 1
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l7983:	
	movlw	080h
	xorwf	(___ftsub@f2+2),f
	line	19
	
l7985:	
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
	
l3384:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_scale
psect	text758,local,class=CODE,delta=2
global __ptext758
__ptext758:

;; *************** function _scale *****************
;; Defined at:
;;		line 422 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  scl             1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  scl             1   60[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  3   50[BANK0 ] char 
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awmod
;;		___awdiv
;;		___ftmul
;;		___bmul
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text758
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	422
	global	__size_of_scale
	__size_of_scale	equ	__end_of_scale-_scale
	
_scale:	
	opt	stack 1
; Regs used in _scale: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;scale@scl stored from wreg
	line	424
	bcf	status, 5	;RP0=0, select bank0
	movwf	(scale@scl)
	
l7943:	
	btfss	(scale@scl),7
	goto	u5231
	goto	u5230
u5231:
	goto	l7965
u5230:
	line	425
	
l7945:	
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	426
	
l7947:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u5241
	goto	u5240
u5241:
	goto	l7955
u5240:
	line	427
	
l7949:	
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
	movwf	(_scale$4114)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$4114+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$4114+2)
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
	movf	(_scale$4114),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$4114+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$4114+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l2191
	line	428
	
l7955:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u5251
	goto	u5250
u5251:
	goto	l7961
u5250:
	line	429
	
l7957:	
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
	goto	l2191
	line	430
	
l7961:	
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
	goto	l2191
	line	432
	
l7965:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u5261
	goto	u5260
u5261:
	goto	l7973
u5260:
	line	433
	
l7967:	
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
	movwf	(_scale$4114)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$4114+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$4114+2)
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
	movf	(_scale$4114),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$4114+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$4114+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l2191
	line	434
	
l7973:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u5271
	goto	u5270
u5271:
	goto	l7979
u5270:
	line	435
	
l7975:	
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
	goto	l2191
	line	436
	
l7979:	
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
	
l2191:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
;; =============== function _scale ends ============

	signat	_scale,4219
	global	_fround
psect	text759,local,class=CODE,delta=2
global __ptext759
__ptext759:

;; *************** function _fround *****************
;; Defined at:
;;		line 406 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  prec            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prec            1    6[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   62[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       7       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       7       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___lbmod
;;		___bmul
;;		___lbdiv
;;		___ftmul
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text759
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	406
	global	__size_of_fround
	__size_of_fround	equ	__end_of_fround-_fround
	
_fround:	
	opt	stack 1
; Regs used in _fround: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;fround@prec stored from wreg
	line	409
	movwf	(fround@prec)^080h
	
l7921:	
	movlw	(06Eh)
	subwf	(fround@prec)^080h,w
	skipc
	goto	u5211
	goto	u5210
u5211:
	goto	l7931
u5210:
	line	410
	
l7923:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___bmul)
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movlw	(064h)
	movwf	(?___lbmod)
	bsf	status, 5	;RP0=1, select bank1
	movf	(fround@prec)^080h,w
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
	bsf	status, 5	;RP0=1, select bank1
	movf	(fround@prec)^080h,w
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
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4112)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4112+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4112+2)^080h
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___bmul)
	movlw	(0Ah)
	movwf	(?___lbmod)
	bsf	status, 5	;RP0=1, select bank1
	movf	(fround@prec)^080h,w
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
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4112)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4112+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4112+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4113)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4113+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4113+2)^080h
	
l7925:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4113)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4113+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4113+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l2184
	line	411
	
l7931:	
	movlw	(0Bh)
	subwf	(fround@prec)^080h,w
	skipc
	goto	u5221
	goto	u5220
u5221:
	goto	l7939
u5220:
	line	412
	
l7933:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___bmul)
	movlw	(0Ah)
	movwf	(?___lbmod)
	bsf	status, 5	;RP0=1, select bank1
	movf	(fround@prec)^080h,w
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
	bsf	status, 5	;RP0=1, select bank1
	movf	(fround@prec)^080h,w
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
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4112)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4112+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4112+2)^080h
	
l7935:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4112)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4112+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4112+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l2184
	line	413
	
l7939:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(?___bmul)
	bsf	status, 5	;RP0=1, select bank1
	movf	(fround@prec)^080h,w
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
	
l2184:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
;; =============== function _fround ends ============

	signat	_fround,4219
	global	_lcd_gotoxy
psect	text760,local,class=CODE,delta=2
global __ptext760
__ptext760:

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 162 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1   13[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1   14[BANK0 ] unsigned char 
;;  address         1   15[BANK0 ] unsigned char 
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
;;		_main
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text760
	file	"D:\TTVXL\Library\lcd(16).c"
	line	162
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:	
	opt	stack 0
; Regs used in _lcd_gotoxy: [wreg+status,2+status,0+pclath+cstack]
;lcd_gotoxy@col stored from wreg
	line	165
	movwf	(lcd_gotoxy@col)
	
l7109:	
;lcd(16).c: 163: unsigned char address;
;lcd(16).c: 165: if(row!=0)
	movf	(lcd_gotoxy@row),w
	skipz
	goto	u4090
	goto	l7113
u4090:
	line	166
	
l7111:	
;lcd(16).c: 166: address=0x40;
	movlw	(040h)
	movwf	(lcd_gotoxy@address)
	goto	l7115
	line	168
	
l7113:	
;lcd(16).c: 167: else
;lcd(16).c: 168: address=0;
	clrf	(lcd_gotoxy@address)
	line	170
	
l7115:	
;lcd(16).c: 170: address += col;
	movf	(lcd_gotoxy@col),w
	addwf	(lcd_gotoxy@address),f
	line	171
	
l7117:	
;lcd(16).c: 171: lcd_put_byte(0,0x80|address);
	movf	(lcd_gotoxy@address),w
	iorlw	080h
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	172
;lcd(16).c: 172: while(lcd_busy());
	
l7119:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l7119
u4100:
	line	173
	
l2156:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
;; =============== function _lcd_gotoxy ends ============

	signat	_lcd_gotoxy,8312
	global	_lcd_init
psect	text761,local,class=CODE,delta=2
global __ptext761
__ptext761:

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
psect	text761
	file	"D:\TTVXL\Library\lcd(16).c"
	line	5
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l7071:	
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
	
l7073:	
;lcd(16).c: 18: _delay((unsigned long)((100)*(20000000/4000.0)));
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

	line	21
	
l7075:	
;lcd(16).c: 21: lcd_put_byte(0,0x30);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	22
	
l7077:	
;lcd(16).c: 22: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
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

	line	23
;lcd(16).c: 23: lcd_put_byte(0,0x30);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	24
	
l7079:	
;lcd(16).c: 24: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
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

	line	25
	
l7081:	
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
u5847:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5847
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5847
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u5847
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
u5857:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5857
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5857
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u5857
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
u5867:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5867
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5867
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u5867
	nop2
opt asmopt_on

	line	30
;lcd(16).c: 30: while(lcd_busy());
	
l7083:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4021
	goto	u4020
u4021:
	goto	l7083
u4020:
	line	31
	
l7085:	
;lcd(16).c: 31: lcd_put_byte(0,0b00101100 & 0b00111000);
	movlw	(028h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	32
;lcd(16).c: 32: while(lcd_busy());
	
l7087:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4031
	goto	u4030
u4031:
	goto	l7087
u4030:
	line	34
	
l7089:	
;lcd(16).c: 34: lcd_put_byte(0,0b00001011&0b00001101&0b00001110);
	movlw	(08h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	35
;lcd(16).c: 35: while(lcd_busy());
	
l7091:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4041
	goto	u4040
u4041:
	goto	l7091
u4040:
	line	36
	
l7093:	
;lcd(16).c: 36: lcd_put_byte(0,0b00001111&0b00001101&0b00001110);
	movlw	(0Ch)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	37
;lcd(16).c: 37: while(lcd_busy());
	
l7095:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4051
	goto	u4050
u4051:
	goto	l7095
u4050:
	line	39
	
l7097:	
;lcd(16).c: 39: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	40
;lcd(16).c: 40: while(lcd_busy());
	
l7099:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4061
	goto	u4060
u4061:
	goto	l7099
u4060:
	line	41
	
l7101:	
;lcd(16).c: 41: lcd_put_byte(0,0b00000100);
	movlw	(04h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	42
;lcd(16).c: 42: while(lcd_busy());
	
l7103:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4071
	goto	u4070
u4071:
	goto	l7103
u4070:
	line	43
	
l7105:	
;lcd(16).c: 43: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	44
;lcd(16).c: 44: while(lcd_busy());
	
l7107:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4081
	goto	u4080
u4081:
	goto	l7107
u4080:
	line	45
	
l2122:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	___lltoft
psect	text762,local,class=CODE,delta=2
global __ptext762
__ptext762:

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 36 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   16[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   16[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text762
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 2
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l7911:	
	movlw	(08Eh)
	movwf	(___lltoft@exp)
	line	41
	goto	l7915
	line	42
	
l7913:	
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	line	43
	incf	(___lltoft@exp),f
	line	41
	
l7915:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u5201
	goto	u5200
u5201:
	goto	l7913
u5200:
	line	45
	
l7917:	
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
	
l3541:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___altoft
psect	text763,local,class=CODE,delta=2
global __ptext763
__ptext763:

;; *************** function ___altoft *****************
;; Defined at:
;;		line 43 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\altoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   16[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   21[BANK0 ] unsigned char 
;;  exp             1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   16[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text763
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\altoft.c"
	line	43
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:	
	opt	stack 3
; Regs used in ___altoft: [wreg+status,2+status,0+pclath+cstack]
	line	45
	
l7895:	
	clrf	(___altoft@sign)
	line	46
	
l7897:	
	movlw	(08Eh)
	movwf	(___altoft@exp)
	line	47
	
l7899:	
	btfss	(___altoft@c+3),7
	goto	u5181
	goto	u5180
u5181:
	goto	l7905
u5180:
	line	48
	
l7901:	
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
	goto	l7905
	line	53
	
l7903:	
	clrc
	rrf	(___altoft@c+3),f
	rrf	(___altoft@c+2),f
	rrf	(___altoft@c+1),f
	rrf	(___altoft@c),f
	line	54
	incf	(___altoft@exp),f
	line	52
	
l7905:	
	movlw	high highword(-16777216)
	andwf	(___altoft@c+3),w
	btfss	status,2
	goto	u5191
	goto	u5190
u5191:
	goto	l7903
u5190:
	line	56
	
l7907:	
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
	
l3533:	
	return
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
;; =============== function ___altoft ends ============

	signat	___altoft,4219
	global	___ftmul
psect	text764,local,class=CODE,delta=2
global __ptext764
__ptext764:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   35[BANK0 ] float 
;;  f2              3   38[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   45[BANK0 ] unsigned um
;;  sign            1   49[BANK0 ] unsigned char 
;;  cntr            1   48[BANK0 ] unsigned char 
;;  exp             1   44[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   35[BANK0 ] float 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_fround
;;		_scale
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text764
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 1
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l7839:	
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
	goto	u5101
	goto	u5100
u5101:
	goto	l7845
u5100:
	line	57
	
l7841:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l3400
	line	58
	
l7845:	
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
	goto	u5111
	goto	u5110
u5111:
	goto	l7851
u5110:
	line	59
	
l7847:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l3400
	line	60
	
l7851:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l7853:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l7855:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l7857:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l7859:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l7861:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l7863:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l7865:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l7867:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l7869:	
	btfss	(___ftmul@f1),(0)&7
	goto	u5121
	goto	u5120
u5121:
	goto	l7873
u5120:
	line	72
	
l7871:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u5131
	addwf	(___ftmul@f3_as_product+1),f
u5131:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u5132
	addwf	(___ftmul@f3_as_product+2),f
u5132:

	line	73
	
l7873:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l7875:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l7877:	
	decfsz	(___ftmul@cntr),f
	goto	u5141
	goto	u5140
u5141:
	goto	l7869
u5140:
	line	76
	
l7879:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l7881:	
	btfss	(___ftmul@f1),(0)&7
	goto	u5151
	goto	u5150
u5151:
	goto	l7885
u5150:
	line	79
	
l7883:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u5161
	addwf	(___ftmul@f3_as_product+1),f
u5161:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u5162
	addwf	(___ftmul@f3_as_product+2),f
u5162:

	line	80
	
l7885:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l7887:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l7889:	
	decfsz	(___ftmul@cntr),f
	goto	u5171
	goto	u5170
u5171:
	goto	l7881
u5170:
	line	83
	
l7891:	
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
	
l3400:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftadd
psect	text765,local,class=CODE,delta=2
global __ptext765
__ptext765:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   50[BANK0 ] float 
;;  f2              3   53[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   61[BANK0 ] unsigned char 
;;  exp2            1   60[BANK0 ] unsigned char 
;;  sign            1   59[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   50[BANK0 ] float 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_printf
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text765
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 1
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l7761:	
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
	
l7763:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u4900
	goto	l7769
u4900:
	
l7765:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u4911
	goto	u4910
u4911:
	goto	l7773
u4910:
	
l7767:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u4921
	goto	u4920
u4921:
	goto	l7773
u4920:
	line	93
	
l7769:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l3348
	line	94
	
l7773:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u4930
	goto	l3351
u4930:
	
l7775:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4941
	goto	u4940
u4941:
	goto	l7779
u4940:
	
l7777:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u4951
	goto	u4950
u4951:
	goto	l7779
u4950:
	
l3351:	
	line	95
	goto	l3348
	line	96
	
l7779:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
l7781:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u4961
	goto	u4960
u4961:
	goto	l3352
u4960:
	line	98
	
l7783:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l3352:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4971
	goto	u4970
u4971:
	goto	l3353
u4970:
	line	100
	
l7785:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l3353:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l7787:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l7789:	
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
	goto	u4981
	goto	u4980
u4981:
	goto	l7801
u4980:
	line	110
	
l7791:	
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
l7793:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4991
	goto	u4990
u4991:
	goto	l7799
u4990:
	
l7795:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u5001
	goto	u5000
u5001:
	goto	l7791
u5000:
	goto	l7799
	line	114
	
l7797:	
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
l7799:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u5011
	goto	u5010
u5011:
	goto	l7797
u5010:
	goto	l3362
	line	117
	
l7801:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u5021
	goto	u5020
u5021:
	goto	l3362
u5020:
	line	121
	
l7803:	
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
l7805:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u5031
	goto	u5030
u5031:
	goto	l7811
u5030:
	
l7807:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u5041
	goto	u5040
u5041:
	goto	l7803
u5040:
	goto	l7811
	line	125
	
l7809:	
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
l7811:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u5051
	goto	u5050
u5051:
	goto	l7809
u5050:
	line	129
	
l3362:	
	btfss	(___ftadd@sign),(7)&7
	goto	u5061
	goto	u5060
u5061:
	goto	l7817
u5060:
	line	131
	
l7813:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
l7815:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
l7817:	
	btfss	(___ftadd@sign),(6)&7
	goto	u5071
	goto	u5070
u5071:
	goto	l7823
u5070:
	line	136
	
l7819:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
l7821:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
l7823:	
	clrf	(___ftadd@sign)
	line	140
	
l7825:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u5081
	addwf	(___ftadd@f2+1),f
u5081:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u5082
	addwf	(___ftadd@f2+2),f
u5082:

	line	141
	
l7827:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u5091
	goto	u5090
u5091:
	goto	l7835
u5090:
	line	142
	
l7829:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
l7831:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
l7833:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l7835:	
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
	
l3348:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_lcd_busy
psect	text766,local,class=CODE,delta=2
global __ptext766
__ptext766:

;; *************** function _lcd_busy *****************
;; Defined at:
;;		line 47 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  busy            1    9[BANK0 ] unsigned char 
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
psect	text766
	file	"D:\TTVXL\Library\lcd(16).c"
	line	47
	global	__size_of_lcd_busy
	__size_of_lcd_busy	equ	__end_of_lcd_busy-_lcd_busy
	
_lcd_busy:	
	opt	stack 0
; Regs used in _lcd_busy: [wreg]
	line	50
	
l6897:	
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
	
l6899:	
;lcd(16).c: 57: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u5877:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5877
opt asmopt_on

	line	58
	
l6901:	
;lcd(16).c: 58: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	59
;lcd(16).c: 59: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u5887:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5887
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
	
l6903:	
;lcd(16).c: 63: RD3 = 0;
	bcf	(67/8),(67)&7
	line	64
;lcd(16).c: 64: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u5897:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5897
opt asmopt_on

	line	65
	
l6905:	
;lcd(16).c: 65: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	66
;lcd(16).c: 66: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u5907:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5907
opt asmopt_on

	line	67
	
l6907:	
;lcd(16).c: 67: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	70
;lcd(16).c: 70: return busy;
	movf	(lcd_busy@busy),w
	line	71
	
l2125:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_busy
	__end_of_lcd_busy:
;; =============== function _lcd_busy ends ============

	signat	_lcd_busy,89
	global	_lcd_put_byte
psect	text767,local,class=CODE,delta=2
global __ptext767
__ptext767:

;; *************** function _lcd_put_byte *****************
;; Defined at:
;;		line 106 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  rs              1    wreg     unsigned char 
;;  b               1    8[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rs              1   11[BANK0 ] unsigned char 
;;  temp            1   12[BANK0 ] struct _BYTE_VAL
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
;;		_lcd_init
;;		_lcd_putc
;;		_lcd_gotoxy
;; This function uses a non-reentrant model
;;
psect	text767
	file	"D:\TTVXL\Library\lcd(16).c"
	line	106
	global	__size_of_lcd_put_byte
	__size_of_lcd_put_byte	equ	__end_of_lcd_put_byte-_lcd_put_byte
	
_lcd_put_byte:	
	opt	stack 0
; Regs used in _lcd_put_byte: [wreg+status,2+status,0]
;lcd_put_byte@rs stored from wreg
	line	109
	movwf	(lcd_put_byte@rs)
	
l6861:	
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
	
l6863:	
;lcd(16).c: 115: if(rs) RD1 = 1;
	movf	(lcd_put_byte@rs),w
	skipz
	goto	u3540
	goto	l6867
u3540:
	
l6865:	
	bsf	(65/8),(65)&7
	line	117
	
l6867:	
;lcd(16).c: 117: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5917:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5917
opt asmopt_on

	line	118
	
l6869:	
;lcd(16).c: 118: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	119
;lcd(16).c: 119: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5927:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5927
opt asmopt_on

	line	120
	
l6871:	
;lcd(16).c: 120: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	122
;lcd(16).c: 122: temp.Val = b;
	movf	(lcd_put_byte@b),w
	movwf	(lcd_put_byte@temp)
	line	125
	
l6873:	
;lcd(16).c: 125: RD4 = temp.bits.b4;
	swapf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u3551
	goto	u3550
	
u3551:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u3564
u3550:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u3564:
	line	126
	
l6875:	
;lcd(16).c: 126: RD5 = temp.bits.b5;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u3571
	goto	u3570
	
u3571:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u3584
u3570:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u3584:
	line	127
	
l6877:	
;lcd(16).c: 127: RD6 = temp.bits.b6;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u3591
	goto	u3590
	
u3591:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u3604
u3590:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u3604:
	line	128
	
l6879:	
;lcd(16).c: 128: RD7 = temp.bits.b7;
	rlf	(lcd_put_byte@temp),w
	rlf	(lcd_put_byte@temp),w
	andlw	1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u3611
	goto	u3610
	
u3611:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u3624
u3610:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u3624:
	line	129
;lcd(16).c: 129: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5937:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5937
opt asmopt_on

	line	130
	
l6881:	
;lcd(16).c: 130: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	131
;lcd(16).c: 131: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5947:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5947
opt asmopt_on

	line	132
	
l6883:	
;lcd(16).c: 132: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	134
	
l6885:	
;lcd(16).c: 134: RD4 = temp.bits.b0;
	movf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u3631
	goto	u3630
	
u3631:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u3644
u3630:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u3644:
	line	135
	
l6887:	
;lcd(16).c: 135: RD5 = temp.bits.b1;
	rrf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u3651
	goto	u3650
	
u3651:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u3664
u3650:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u3664:
	line	136
	
l6889:	
;lcd(16).c: 136: RD6 = temp.bits.b2;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u3671
	goto	u3670
	
u3671:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u3684
u3670:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u3684:
	line	137
	
l6891:	
;lcd(16).c: 137: RD7 = temp.bits.b3;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u3691
	goto	u3690
	
u3691:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u3704
u3690:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u3704:
	line	138
;lcd(16).c: 138: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5957:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5957
opt asmopt_on

	line	139
	
l6893:	
;lcd(16).c: 139: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	140
;lcd(16).c: 140: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5967:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5967
opt asmopt_on

	line	141
	
l6895:	
;lcd(16).c: 141: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	142
	
l2133:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_put_byte
	__end_of_lcd_put_byte:
;; =============== function _lcd_put_byte ends ============

	signat	_lcd_put_byte,8312
	global	___awmod
psect	text768,local,class=CODE,delta=2
global __ptext768
__ptext768:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[BANK0 ] int 
;;  dividend        2   10[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[BANK0 ] unsigned char 
;;  counter         1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[BANK0 ] int 
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
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text768
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 2
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l6719:	
	clrf	(___awmod@sign)
	line	9
	
l6721:	
	btfss	(___awmod@dividend+1),7
	goto	u3201
	goto	u3200
u3201:
	goto	l6727
u3200:
	line	10
	
l6723:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l6725:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l6727:	
	btfss	(___awmod@divisor+1),7
	goto	u3211
	goto	u3210
u3211:
	goto	l6731
u3210:
	line	14
	
l6729:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l6731:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3221
	goto	u3220
u3221:
	goto	l6747
u3220:
	line	16
	
l6733:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l6737
	line	18
	
l6735:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l6737:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3231
	goto	u3230
u3231:
	goto	l6735
u3230:
	line	22
	
l6739:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3245
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3245:
	skipc
	goto	u3241
	goto	u3240
u3241:
	goto	l6743
u3240:
	line	23
	
l6741:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l6743:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l6745:	
	decfsz	(___awmod@counter),f
	goto	u3251
	goto	u3250
u3251:
	goto	l6739
u3250:
	line	27
	
l6747:	
	movf	(___awmod@sign),w
	skipz
	goto	u3260
	goto	l6751
u3260:
	line	28
	
l6749:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l6751:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l3519:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___lldiv
psect	text769,local,class=CODE,delta=2
global __ptext769
__ptext769:

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    8[BANK0 ] unsigned long 
;;  dividend        4   12[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   16[BANK0 ] unsigned long 
;;  counter         1   20[BANK0 ] unsigned char 
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
;;      Locals:         0       5       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text769
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 3
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l6693:	
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	10
	
l6695:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u3161
	goto	u3160
u3161:
	goto	l6715
u3160:
	line	11
	
l6697:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	12
	goto	l6701
	line	13
	
l6699:	
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	14
	incf	(___lldiv@counter),f
	line	12
	
l6701:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l6699
u3170:
	line	17
	
l6703:	
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	18
	
l6705:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u3185
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u3185
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u3185
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u3185:
	skipc
	goto	u3181
	goto	u3180
u3181:
	goto	l6711
u3180:
	line	19
	
l6707:	
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
	
l6709:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	22
	
l6711:	
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	23
	
l6713:	
	decfsz	(___lldiv@counter),f
	goto	u3191
	goto	u3190
u3191:
	goto	l6703
u3190:
	line	25
	
l6715:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	26
	
l3480:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___ftge
psect	text770,local,class=CODE,delta=2
global __ptext770
__ptext770:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    8[BANK0 ] float 
;;  ff2             3   11[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text770
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 3
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l6673:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u3131
	goto	u3130
u3131:
	goto	l6677
u3130:
	line	7
	
l6675:	
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
	
l6677:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u3141
	goto	u3140
u3141:
	goto	l6681
u3140:
	line	9
	
l6679:	
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
	
l6681:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l6683:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l6685:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u3155
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u3155
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u3155:
	skipnc
	goto	u3151
	goto	u3150
u3151:
	goto	l6689
u3150:
	
l6687:	
	clrc
	
	goto	l3470
	
l6689:	
	setc
	
	line	13
	
l3470:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text771,local,class=CODE,delta=2
global __ptext771
__ptext771:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text771
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 3
; Regs used in ___ftneg: [wreg]
	line	17
	
l6665:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u3121
	goto	u3120
u3121:
	goto	l6669
u3120:
	line	18
	
l6667:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	line	19
	
l6669:	
	line	20
	
l3465:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___llmod
psect	text772,local,class=CODE,delta=2
global __ptext772
__ptext772:

;; *************** function ___llmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4   21[BANK0 ] unsigned long 
;;  dividend        4   25[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1   29[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   21[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text772
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 3
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l6645:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u3081
	goto	u3080
u3081:
	goto	l6661
u3080:
	line	9
	
l6647:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	10
	goto	l6651
	line	11
	
l6649:	
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	line	12
	incf	(___llmod@counter),f
	line	10
	
l6651:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l6649
u3090:
	line	15
	
l6653:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u3105
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u3105
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u3105
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u3105:
	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l6657
u3100:
	line	16
	
l6655:	
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
	
l6657:	
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	line	18
	
l6659:	
	decfsz	(___llmod@counter),f
	goto	u3111
	goto	u3110
u3111:
	goto	l6653
u3110:
	line	20
	
l6661:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	line	21
	
l3461:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	___awdiv
psect	text773,local,class=CODE,delta=2
global __ptext773
__ptext773:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   14[BANK0 ] int 
;;  dividend        2   16[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   20[BANK0 ] int 
;;  sign            1   19[BANK0 ] unsigned char 
;;  counter         1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[BANK0 ] int 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_scale
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text773
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l6601:	
	clrf	(___awdiv@sign)
	line	10
	
l6603:	
	btfss	(___awdiv@divisor+1),7
	goto	u3011
	goto	u3010
u3011:
	goto	l6609
u3010:
	line	11
	
l6605:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l6607:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l6609:	
	btfss	(___awdiv@dividend+1),7
	goto	u3021
	goto	u3020
u3021:
	goto	l6615
u3020:
	line	15
	
l6611:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l6613:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l6615:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l6617:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3031
	goto	u3030
u3031:
	goto	l6637
u3030:
	line	20
	
l6619:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l6623
	line	22
	
l6621:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l6623:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3041
	goto	u3040
u3041:
	goto	l6621
u3040:
	line	26
	
l6625:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l6627:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3055
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3055:
	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l6633
u3050:
	line	28
	
l6629:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l6631:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l6633:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l6635:	
	decfsz	(___awdiv@counter),f
	goto	u3061
	goto	u3060
u3061:
	goto	l6625
u3060:
	line	34
	
l6637:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3070
	goto	l6641
u3070:
	line	35
	
l6639:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l6641:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l3451:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text774,local,class=CODE,delta=2
global __ptext774
__ptext774:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   22[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   30[BANK0 ] unsigned long 
;;  exp1            1   34[BANK0 ] unsigned char 
;;  sign1           1   29[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   22[BANK0 ] long 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text774
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 3
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l6563:	
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
	goto	u2931
	goto	u2930
u2931:
	goto	l6567
u2930:
	line	50
	
l6565:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l3411
	line	51
	
l6567:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2945:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2940:
	addlw	-1
	skipz
	goto	u2945
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l6569:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l6571:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l6573:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l6575:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l6577:	
	btfss	(___fttol@exp1),7
	goto	u2951
	goto	u2950
u2951:
	goto	l6587
u2950:
	line	57
	
l6579:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2961
	goto	u2960
u2961:
	goto	l6583
u2960:
	goto	l6565
	line	60
	
l6583:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l6585:	
	incfsz	(___fttol@exp1),f
	goto	u2971
	goto	u2970
u2971:
	goto	l6583
u2970:
	goto	l6593
	line	63
	
l6587:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2981
	goto	u2980
u2981:
	goto	l3418
u2980:
	goto	l6565
	line	66
	
l6591:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l3418:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u2991
	goto	u2990
u2991:
	goto	l6591
u2990:
	line	70
	
l6593:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3000
	goto	l6597
u3000:
	line	71
	
l6595:	
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
	
l6597:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l3411:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text775,local,class=CODE,delta=2
global __ptext775
__ptext775:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    8[BANK0 ] unsigned um
;;  exp             1   11[BANK0 ] unsigned char 
;;  sign            1   12[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftmul
;;		___altoft
;;		___lltoft
;; This function uses a non-reentrant model
;;
psect	text775
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 1
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l7733:	
	movf	(___ftpack@exp),w
	skipz
	goto	u4830
	goto	l7737
u4830:
	
l7735:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u4841
	goto	u4840
u4841:
	goto	l7743
u4840:
	line	65
	
l7737:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l3670
	line	67
	
l7741:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l7743:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4851
	goto	u4850
u4851:
	goto	l7741
u4850:
	goto	l7747
	line	71
	
l7745:	
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
	
l7747:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4861
	goto	u4860
u4861:
	goto	l7745
u4860:
	goto	l7751
	line	76
	
l7749:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l7751:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u4871
	goto	u4870
u4871:
	goto	l7749
u4870:
	
l3679:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u4881
	goto	u4880
u4881:
	goto	l3680
u4880:
	line	80
	
l7753:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l3680:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l7755:	
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
	
l7757:	
	movf	(___ftpack@sign),w
	skipz
	goto	u4890
	goto	l3681
u4890:
	line	84
	
l7759:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l3681:	
	line	85
	line	86
	
l3670:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lbmod
psect	text776,local,class=CODE,delta=2
global __ptext776
__ptext776:

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    8[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1   10[BANK0 ] unsigned char 
;;  rem             1   12[BANK0 ] unsigned char 
;;  counter         1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;; This function uses a non-reentrant model
;;
psect	text776
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbmod.c"
	line	5
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
	opt	stack 2
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	line	9
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lbmod@dividend)
	
l7715:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l7717:	
	clrf	(___lbmod@rem)
	line	12
	
l7719:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u4805:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u4805
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l7721:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l7723:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u4811
	goto	u4810
u4811:
	goto	l7727
u4810:
	line	15
	
l7725:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l7727:	
	decfsz	(___lbmod@counter),f
	goto	u4821
	goto	u4820
u4821:
	goto	l7719
u4820:
	line	17
	
l7729:	
	movf	(___lbmod@rem),w
	line	18
	
l3340:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text777,local,class=CODE,delta=2
global __ptext777
__ptext777:

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1   13[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1   14[BANK0 ] unsigned char 
;;  quotient        1   16[BANK0 ] unsigned char 
;;  counter         1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;; This function uses a non-reentrant model
;;
psect	text777
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbdiv.c"
	line	5
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
	opt	stack 2
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	line	9
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lbdiv@dividend)
	
l7691:	
	clrf	(___lbdiv@quotient)
	line	10
	
l7693:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u4760
	goto	l7711
u4760:
	line	11
	
l7695:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l7699
	
l3329:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l7697:	
	incf	(___lbdiv@counter),f
	line	12
	
l7699:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u4771
	goto	u4770
u4771:
	goto	l3329
u4770:
	line	16
	
l3331:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l7701:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u4781
	goto	u4780
u4781:
	goto	l7707
u4780:
	line	19
	
l7703:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l7705:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l7707:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l7709:	
	decfsz	(___lbdiv@counter),f
	goto	u4791
	goto	u4790
u4791:
	goto	l3331
u4790:
	line	25
	
l7711:	
	movf	(___lbdiv@quotient),w
	line	26
	
l3334:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___wmul
psect	text778,local,class=CODE,delta=2
global __ptext778
__ptext778:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    8[BANK0 ] unsigned int 
;;  multiplicand    2   10[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   12[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    8[BANK0 ] unsigned int 
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
;;		_fround
;;		_scale
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text778
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 3
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l7675:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l7677:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u4741
	goto	u4740
u4741:
	goto	l7681
u4740:
	line	8
	
l7679:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l7681:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l7683:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l7685:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u4751
	goto	u4750
u4751:
	goto	l7677
u4750:
	line	12
	
l7687:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l3304:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text779,local,class=CODE,delta=2
global __ptext779
__ptext779:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1   17[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1   19[BANK0 ] unsigned char 
;;  product         1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text779
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 2
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___bmul@multiplier)
	line	4
	
l6461:	
	clrf	(___bmul@product)
	line	7
	
l6463:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l6467
u2750:
	line	8
	
l6465:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l6467:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l6469:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l6471:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2761
	goto	u2760
u2761:
	goto	l6463
u2760:
	line	12
	
l6473:	
	movf	(___bmul@product),w
	line	13
	
l3298:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	__div_to_l_
psect	text780,local,class=CODE,delta=2
global __ptext780
__ptext780:

;; *************** function __div_to_l_ *****************
;; Defined at:
;;		line 61 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fldivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[BANK0 ] unsigned char 
;;  f2              3   11[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  quot            4   22[BANK0 ] unsigned long 
;;  exp1            1   27[BANK0 ] unsigned char 
;;  cntr            1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       8       0       0       0
;;      Totals:         0      20       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text780
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fldivl.c"
	line	61
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
	opt	stack 3
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l6415:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
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
	goto	u2661
	goto	u2660
u2661:
	goto	l6419
u2660:
	line	67
	
l6417:	
	clrf	(?__div_to_l_)
	clrf	(?__div_to_l_+1)
	clrf	(?__div_to_l_+2)
	clrf	(?__div_to_l_+3)
	goto	l3588
	line	68
	
l6419:	
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
	goto	u2671
	goto	u2670
u2671:
	goto	l6423
u2670:
	goto	l6417
	line	70
	
l6423:	
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
	
l6425:	
	clrf	(__div_to_l_@quot)
	clrf	(__div_to_l_@quot+1)
	clrf	(__div_to_l_@quot+2)
	clrf	(__div_to_l_@quot+3)
	line	75
	
l6427:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l6429:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l6431:	
	movlw	(020h)
	movwf	(__div_to_l_@cntr)
	line	79
	
l6433:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	80
	
l6435:	
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
	goto	u2685
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u2685
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u2685
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u2685:
	skipc
	goto	u2681
	goto	u2680
u2681:
	goto	l3591
u2680:
	line	81
	
l6437:	
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
	
l6439:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	83
	
l3591:	
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
	
l6441:	
	decfsz	(__div_to_l_@cntr),f
	goto	u2691
	goto	u2690
u2691:
	goto	l6433
u2690:
	
l3592:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u2701
	goto	u2700
u2701:
	goto	l6451
u2700:
	line	87
	
l6443:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u2711
	goto	u2710
u2711:
	goto	l6447
u2710:
	goto	l6417
	line	90
	
l6447:	
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	line	91
	
l6449:	
	incfsz	(__div_to_l_@exp1),f
	goto	u2721
	goto	u2720
u2721:
	goto	l6447
u2720:
	goto	l6457
	line	93
	
l6451:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u2731
	goto	u2730
u2731:
	goto	l3599
u2730:
	goto	l6417
	line	96
	
l6455:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	97
	decf	(__div_to_l_@exp1),f
	line	98
	
l3599:	
	line	95
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u2741
	goto	u2740
u2741:
	goto	l6455
u2740:
	line	100
	
l6457:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	line	101
	
l3588:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
;; =============== function __div_to_l_ ends ============

	signat	__div_to_l_,8316
	global	__tdiv_to_l_
psect	text781,local,class=CODE,delta=2
global __ptext781
__ptext781:

;; *************** function __tdiv_to_l_ *****************
;; Defined at:
;;		line 61 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[BANK0 ] float 
;;  f2              3   11[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  quot            4   17[BANK0 ] unsigned long 
;;  exp1            1   22[BANK0 ] unsigned char 
;;  cntr            1   21[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text781
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdivl.c"
	line	61
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
	opt	stack 3
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l6367:	
	movf	(__tdiv_to_l_@f1),w
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
	goto	u2571
	goto	u2570
u2571:
	goto	l6371
u2570:
	line	67
	
l6369:	
	clrf	(?__tdiv_to_l_)
	clrf	(?__tdiv_to_l_+1)
	clrf	(?__tdiv_to_l_+2)
	clrf	(?__tdiv_to_l_+3)
	goto	l3545
	line	68
	
l6371:	
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
	goto	u2581
	goto	u2580
u2581:
	goto	l3546
u2580:
	goto	l6369
	line	69
	
l3546:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l6375:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l6377:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	
l6379:	
	clrf	(__tdiv_to_l_@quot)
	clrf	(__tdiv_to_l_@quot+1)
	clrf	(__tdiv_to_l_@quot+2)
	clrf	(__tdiv_to_l_@quot+3)
	line	75
	
l6381:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l6383:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	(018h)
	movwf	(__tdiv_to_l_@cntr)
	line	79
	
l6385:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	80
	
l6387:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u2595
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u2595
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u2595:
	skipc
	goto	u2591
	goto	u2590
u2591:
	goto	l6393
u2590:
	line	81
	
l6389:	
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
	
l6391:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	line	84
	
l6393:	
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	line	85
	
l6395:	
	decfsz	(__tdiv_to_l_@cntr),f
	goto	u2601
	goto	u2600
u2601:
	goto	l6385
u2600:
	
l3549:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u2611
	goto	u2610
u2611:
	goto	l6405
u2610:
	line	87
	
l6397:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u2621
	goto	u2620
u2621:
	goto	l6401
u2620:
	goto	l6369
	line	90
	
l6401:	
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	line	91
	
l6403:	
	incfsz	(__tdiv_to_l_@exp1),f
	goto	u2631
	goto	u2630
u2631:
	goto	l6401
u2630:
	goto	l6411
	line	93
	
l6405:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l3556
u2640:
	goto	l6369
	line	96
	
l6409:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	97
	decf	(__tdiv_to_l_@exp1),f
	line	98
	
l3556:	
	line	95
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u2651
	goto	u2650
u2651:
	goto	l6409
u2650:
	line	100
	
l6411:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	line	101
	
l3545:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
;; =============== function __tdiv_to_l_ ends ============

	signat	__tdiv_to_l_,8316
	global	_isdigit
psect	text782,local,class=CODE,delta=2
global __ptext782
__ptext782:

;; *************** function _isdigit *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/20
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
psect	text782
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
	line	13
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 3
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(isdigit@c)
	line	14
	
l6355:	
	clrf	(_isdigit$3674)
	
l6357:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u2551
	goto	u2550
u2551:
	goto	l6363
u2550:
	
l6359:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l6363
u2560:
	
l6361:	
	clrf	(_isdigit$3674)
	incf	(_isdigit$3674),f
	
l6363:	
	rrf	(_isdigit$3674),w
	
	line	15
	
l3283:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_isprint
psect	text783,local,class=CODE,delta=2
global __ptext783
__ptext783:

;; *************** function _isprint *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isprint.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    9[BANK0 ] unsigned char 
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
psect	text783
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isprint.c"
	line	13
	global	__size_of_isprint
	__size_of_isprint	equ	__end_of_isprint-_isprint
	
_isprint:	
	opt	stack 1
; Regs used in _isprint: [wreg+status,2+status,0]
;isprint@c stored from wreg
	movwf	(isprint@c)
	line	14
	
l6343:	
	clrf	(_isprint$3677)
	
l6345:	
	movlw	(07Fh)
	subwf	(isprint@c),w
	skipnc
	goto	u2531
	goto	u2530
u2531:
	goto	l6351
u2530:
	
l6347:	
	movlw	(020h)
	subwf	(isprint@c),w
	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l6351
u2540:
	
l6349:	
	clrf	(_isprint$3677)
	incf	(_isprint$3677),f
	
l6351:	
	rrf	(_isprint$3677),w
	
	line	15
	
l3288:	
	return
	opt stack 0
GLOBAL	__end_of_isprint
	__end_of_isprint:
;; =============== function _isprint ends ============

	signat	_isprint,4216
	global	_ngat
psect	text784,local,class=CODE,delta=2
global __ptext784
__ptext784:

;; *************** function _ngat *****************
;; Defined at:
;;		line 66 in file "D:\TTVXL\Project TTVXL\BT02week12ttvxl\BT02week12ttvxl.c"
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
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1___ftadd
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text784
	file	"D:\TTVXL\Project TTVXL\BT02week12ttvxl\BT02week12ttvxl.c"
	line	66
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
	opt	stack 0
; Regs used in _ngat: [wreg+status,2+status,0+pclath+cstack]
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
	movf	pclath,w
	movwf	(??_ngat+1)
	ljmp	_ngat
psect	text784
	line	67
	
i1l6327:	
;BT02week12ttvxl.c: 67: TMR0 = 7;
	movlw	(07h)
	movwf	(1)	;volatile
	line	68
	
i1l6329:	
;BT02week12ttvxl.c: 68: if(T0IF)
	btfss	(90/8),(90)&7
	goto	u251_21
	goto	u251_20
u251_21:
	goto	i1l6341
u251_20:
	line	70
	
i1l6331:	
;BT02week12ttvxl.c: 69: {
;BT02week12ttvxl.c: 70: dem++;
	movlw	0x0
	movwf	(?i1___ftadd)
	movlw	0x80
	movwf	(?i1___ftadd+1)
	movlw	0x3f
	movwf	(?i1___ftadd+2)
	movf	(_dem),w
	movwf	0+(?i1___ftadd)+03h
	movf	(_dem+1),w
	movwf	1+(?i1___ftadd)+03h
	movf	(_dem+2),w
	movwf	2+(?i1___ftadd)+03h
	fcall	i1___ftadd
	movf	(0+(?i1___ftadd)),w
	movwf	(_dem)
	movf	(1+(?i1___ftadd)),w
	movwf	(_dem+1)
	movf	(2+(?i1___ftadd)),w
	movwf	(_dem+2)
	line	71
	
i1l6333:	
;BT02week12ttvxl.c: 71: if(dem == 2500){
	movlw	0x45
	xorwf	(_dem+2),w
	skipz
	goto	u252_25
	movlw	0x1c
	xorwf	(_dem+1),w
	skipz
	goto	u252_25
	movlw	0x40
	xorwf	(_dem),w
u252_25:
	skipz
	goto	u252_21
	goto	u252_20
u252_21:
	goto	i1l6341
u252_20:
	line	72
	
i1l6335:	
;BT02week12ttvxl.c: 72: dem= 0;
	clrf	(_dem)
	clrf	(_dem+1)
	clrf	(_dem+2)
	line	73
;BT02week12ttvxl.c: 73: xung = TMR1;
	movf	(14),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_xung)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(14+1),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	((_xung)^080h)+1
	clrf	2+((_xung)^080h)
	clrf	3+((_xung)^080h)
	line	74
	
i1l6337:	
;BT02week12ttvxl.c: 74: TMR1H=0; TMR1L=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(15)	;volatile
	
i1l6339:	
	clrf	(14)	;volatile
	line	77
	
i1l6341:	
;BT02week12ttvxl.c: 75: }
;BT02week12ttvxl.c: 76: }
;BT02week12ttvxl.c: 77: T0IF = 0;
	bcf	(90/8),(90)&7
	line	87
	
i1l1066:	
	movf	(??_ngat+1),w
	movwf	pclath
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
	global	i1___ftadd
psect	text785,local,class=CODE,delta=2
global __ptext785
__ptext785:

;; *************** function i1___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  __ftadd         3    8[COMMON] float 
;;  __ftadd         3   11[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  __ftadd         1    5[BANK0 ] unsigned char 
;;  __ftadd         1    4[BANK0 ] unsigned char 
;;  __ftadd         1    3[BANK0 ] unsigned char 
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
;;		i1___ftpack
;; This function is called by:
;;		_ngat
;; This function uses a non-reentrant model
;;
psect	text785
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	global	__size_ofi1___ftadd
	__size_ofi1___ftadd	equ	__end_ofi1___ftadd-i1___ftadd
	
i1___ftadd:	
	opt	stack 0
; Regs used in i1___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
i1l6755:	
	movf	(i1___ftadd@f1),w
	movwf	((??i1___ftadd+0)+0)
	movf	(i1___ftadd@f1+1),w
	movwf	((??i1___ftadd+0)+0+1)
	movf	(i1___ftadd@f1+2),w
	movwf	((??i1___ftadd+0)+0+2)
	clrc
	rlf	(??i1___ftadd+0)+1,w
	rlf	(??i1___ftadd+0)+2,w
	movwf	(i1___ftadd@exp1)
	line	91
	movf	(i1___ftadd@f2),w
	movwf	((??i1___ftadd+0)+0)
	movf	(i1___ftadd@f2+1),w
	movwf	((??i1___ftadd+0)+0+1)
	movf	(i1___ftadd@f2+2),w
	movwf	((??i1___ftadd+0)+0+2)
	clrc
	rlf	(??i1___ftadd+0)+1,w
	rlf	(??i1___ftadd+0)+2,w
	movwf	(i1___ftadd@exp2)
	line	92
	
i1l6757:	
	movf	(i1___ftadd@exp1),w
	skipz
	goto	u327_20
	goto	i1l6763
u327_20:
	
i1l6759:	
	movf	(i1___ftadd@exp2),w
	subwf	(i1___ftadd@exp1),w
	skipnc
	goto	u328_21
	goto	u328_20
u328_21:
	goto	i1l6767
u328_20:
	
i1l6761:	
	movf	(i1___ftadd@exp2),w
	movwf	(??i1___ftadd+0)+0
	movf	(i1___ftadd@exp1),w
	subwf	(??i1___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??i1___ftadd+0)+0,w
	skipc
	goto	u329_21
	goto	u329_20
u329_21:
	goto	i1l6767
u329_20:
	line	93
	
i1l6763:	
	movf	(i1___ftadd@f2),w
	movwf	(?i1___ftadd)
	movf	(i1___ftadd@f2+1),w
	movwf	(?i1___ftadd+1)
	movf	(i1___ftadd@f2+2),w
	movwf	(?i1___ftadd+2)
	goto	i1l3348
	line	94
	
i1l6767:	
	movf	(i1___ftadd@exp2),w
	skipz
	goto	u330_20
	goto	i1l3351
u330_20:
	
i1l6769:	
	movf	(i1___ftadd@exp1),w
	subwf	(i1___ftadd@exp2),w
	skipnc
	goto	u331_21
	goto	u331_20
u331_21:
	goto	i1l6773
u331_20:
	
i1l6771:	
	movf	(i1___ftadd@exp1),w
	movwf	(??i1___ftadd+0)+0
	movf	(i1___ftadd@exp2),w
	subwf	(??i1___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??i1___ftadd+0)+0,w
	skipc
	goto	u332_21
	goto	u332_20
u332_21:
	goto	i1l6773
u332_20:
	
i1l3351:	
	line	95
	goto	i1l3348
	line	96
	
i1l6773:	
	movlw	(06h)
	movwf	(i1___ftadd@sign)
	line	97
	
i1l6775:	
	btfss	(i1___ftadd@f1+2),(23)&7
	goto	u333_21
	goto	u333_20
u333_21:
	goto	i1l3352
u333_20:
	line	98
	
i1l6777:	
	bsf	(i1___ftadd@sign)+(7/8),(7)&7
	
i1l3352:	
	line	99
	btfss	(i1___ftadd@f2+2),(23)&7
	goto	u334_21
	goto	u334_20
u334_21:
	goto	i1l3353
u334_20:
	line	100
	
i1l6779:	
	bsf	(i1___ftadd@sign)+(6/8),(6)&7
	
i1l3353:	
	line	101
	bsf	(i1___ftadd@f1)+(15/8),(15)&7
	line	102
	
i1l6781:	
	movlw	0FFh
	andwf	(i1___ftadd@f1),f
	movlw	0FFh
	andwf	(i1___ftadd@f1+1),f
	movlw	0
	andwf	(i1___ftadd@f1+2),f
	line	103
	
i1l6783:	
	bsf	(i1___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(i1___ftadd@f2),f
	movlw	0FFh
	andwf	(i1___ftadd@f2+1),f
	movlw	0
	andwf	(i1___ftadd@f2+2),f
	line	106
	movf	(i1___ftadd@exp2),w
	subwf	(i1___ftadd@exp1),w
	skipnc
	goto	u335_21
	goto	u335_20
u335_21:
	goto	i1l6795
u335_20:
	line	110
	
i1l6785:	
	clrc
	rlf	(i1___ftadd@f2),f
	rlf	(i1___ftadd@f2+1),f
	rlf	(i1___ftadd@f2+2),f
	line	111
	decf	(i1___ftadd@exp2),f
	line	112
	
i1l6787:	
	movf	(i1___ftadd@exp2),w
	xorwf	(i1___ftadd@exp1),w
	skipnz
	goto	u336_21
	goto	u336_20
u336_21:
	goto	i1l6793
u336_20:
	
i1l6789:	
	decf	(i1___ftadd@sign),f
	movf	((i1___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u337_21
	goto	u337_20
u337_21:
	goto	i1l6785
u337_20:
	goto	i1l6793
	line	114
	
i1l6791:	
	clrc
	rrf	(i1___ftadd@f1+2),f
	rrf	(i1___ftadd@f1+1),f
	rrf	(i1___ftadd@f1),f
	line	115
	incf	(i1___ftadd@exp1),f
	line	113
	
i1l6793:	
	movf	(i1___ftadd@exp1),w
	xorwf	(i1___ftadd@exp2),w
	skipz
	goto	u338_21
	goto	u338_20
u338_21:
	goto	i1l6791
u338_20:
	goto	i1l3362
	line	117
	
i1l6795:	
	movf	(i1___ftadd@exp1),w
	subwf	(i1___ftadd@exp2),w
	skipnc
	goto	u339_21
	goto	u339_20
u339_21:
	goto	i1l3362
u339_20:
	line	121
	
i1l6797:	
	clrc
	rlf	(i1___ftadd@f1),f
	rlf	(i1___ftadd@f1+1),f
	rlf	(i1___ftadd@f1+2),f
	line	122
	decf	(i1___ftadd@exp1),f
	line	123
	
i1l6799:	
	movf	(i1___ftadd@exp2),w
	xorwf	(i1___ftadd@exp1),w
	skipnz
	goto	u340_21
	goto	u340_20
u340_21:
	goto	i1l6805
u340_20:
	
i1l6801:	
	decf	(i1___ftadd@sign),f
	movf	((i1___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u341_21
	goto	u341_20
u341_21:
	goto	i1l6797
u341_20:
	goto	i1l6805
	line	125
	
i1l6803:	
	clrc
	rrf	(i1___ftadd@f2+2),f
	rrf	(i1___ftadd@f2+1),f
	rrf	(i1___ftadd@f2),f
	line	126
	incf	(i1___ftadd@exp2),f
	line	124
	
i1l6805:	
	movf	(i1___ftadd@exp1),w
	xorwf	(i1___ftadd@exp2),w
	skipz
	goto	u342_21
	goto	u342_20
u342_21:
	goto	i1l6803
u342_20:
	line	129
	
i1l3362:	
	btfss	(i1___ftadd@sign),(7)&7
	goto	u343_21
	goto	u343_20
u343_21:
	goto	i1l6811
u343_20:
	line	131
	
i1l6807:	
	movlw	0FFh
	xorwf	(i1___ftadd@f1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f1+2),f
	line	132
	
i1l6809:	
	incf	(i1___ftadd@f1),f
	skipnz
	incf	(i1___ftadd@f1+1),f
	skipnz
	incf	(i1___ftadd@f1+2),f
	line	134
	
i1l6811:	
	btfss	(i1___ftadd@sign),(6)&7
	goto	u344_21
	goto	u344_20
u344_21:
	goto	i1l6817
u344_20:
	line	136
	
i1l6813:	
	movlw	0FFh
	xorwf	(i1___ftadd@f2),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+2),f
	line	137
	
i1l6815:	
	incf	(i1___ftadd@f2),f
	skipnz
	incf	(i1___ftadd@f2+1),f
	skipnz
	incf	(i1___ftadd@f2+2),f
	line	139
	
i1l6817:	
	clrf	(i1___ftadd@sign)
	line	140
	
i1l6819:	
	movf	(i1___ftadd@f1),w
	addwf	(i1___ftadd@f2),f
	movf	(i1___ftadd@f1+1),w
	clrz
	skipnc
	incf	(i1___ftadd@f1+1),w
	skipnz
	goto	u345_21
	addwf	(i1___ftadd@f2+1),f
u345_21:
	movf	(i1___ftadd@f1+2),w
	clrz
	skipnc
	incf	(i1___ftadd@f1+2),w
	skipnz
	goto	u345_22
	addwf	(i1___ftadd@f2+2),f
u345_22:

	line	141
	
i1l6821:	
	btfss	(i1___ftadd@f2+2),(23)&7
	goto	u346_21
	goto	u346_20
u346_21:
	goto	i1l6829
u346_20:
	line	142
	
i1l6823:	
	movlw	0FFh
	xorwf	(i1___ftadd@f2),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+2),f
	line	143
	
i1l6825:	
	incf	(i1___ftadd@f2),f
	skipnz
	incf	(i1___ftadd@f2+1),f
	skipnz
	incf	(i1___ftadd@f2+2),f
	line	144
	
i1l6827:	
	clrf	(i1___ftadd@sign)
	incf	(i1___ftadd@sign),f
	line	146
	
i1l6829:	
	movf	(i1___ftadd@f2),w
	movwf	(?i1___ftpack)
	movf	(i1___ftadd@f2+1),w
	movwf	(?i1___ftpack+1)
	movf	(i1___ftadd@f2+2),w
	movwf	(?i1___ftpack+2)
	movf	(i1___ftadd@exp1),w
	movwf	0+(?i1___ftpack)+03h
	movf	(i1___ftadd@sign),w
	movwf	0+(?i1___ftpack)+04h
	fcall	i1___ftpack
	movf	(0+(?i1___ftpack)),w
	movwf	(?i1___ftadd)
	movf	(1+(?i1___ftpack)),w
	movwf	(?i1___ftadd+1)
	movf	(2+(?i1___ftpack)),w
	movwf	(?i1___ftadd+2)
	line	148
	
i1l3348:	
	return
	opt stack 0
GLOBAL	__end_ofi1___ftadd
	__end_ofi1___ftadd:
;; =============== function i1___ftadd ends ============

	signat	i1___ftadd,91
	global	i1___ftpack
psect	text786,local,class=CODE,delta=2
global __ptext786
__ptext786:

;; *************** function i1___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
;; Parameters:    Size  Location     Type
;;  __ftpack        3    0[COMMON] unsigned um
;;  __ftpack        1    3[COMMON] unsigned char 
;;  __ftpack        1    4[COMMON] unsigned char 
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
;;		i1___ftadd
;; This function uses a non-reentrant model
;;
psect	text786
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_ofi1___ftpack
	__size_ofi1___ftpack	equ	__end_ofi1___ftpack-i1___ftpack
	
i1___ftpack:	
	opt	stack 0
; Regs used in i1___ftpack: [wreg+status,2+status,0]
	line	64
	
i1l6833:	
	movf	(i1___ftpack@exp),w
	skipz
	goto	u347_20
	goto	i1l6837
u347_20:
	
i1l6835:	
	movf	(i1___ftpack@arg+2),w
	iorwf	(i1___ftpack@arg+1),w
	iorwf	(i1___ftpack@arg),w
	skipz
	goto	u348_21
	goto	u348_20
u348_21:
	goto	i1l6843
u348_20:
	line	65
	
i1l6837:	
	clrf	(?i1___ftpack)
	clrf	(?i1___ftpack+1)
	clrf	(?i1___ftpack+2)
	goto	i1l3670
	line	67
	
i1l6841:	
	incf	(i1___ftpack@exp),f
	line	68
	clrc
	rrf	(i1___ftpack@arg+2),f
	rrf	(i1___ftpack@arg+1),f
	rrf	(i1___ftpack@arg),f
	line	66
	
i1l6843:	
	movlw	low highword(0FE0000h)
	andwf	(i1___ftpack@arg+2),w
	btfss	status,2
	goto	u349_21
	goto	u349_20
u349_21:
	goto	i1l6841
u349_20:
	goto	i1l6847
	line	71
	
i1l6845:	
	incf	(i1___ftpack@exp),f
	line	72
	incf	(i1___ftpack@arg),f
	skipnz
	incf	(i1___ftpack@arg+1),f
	skipnz
	incf	(i1___ftpack@arg+2),f
	line	73
	clrc
	rrf	(i1___ftpack@arg+2),f
	rrf	(i1___ftpack@arg+1),f
	rrf	(i1___ftpack@arg),f
	line	70
	
i1l6847:	
	movlw	low highword(0FF0000h)
	andwf	(i1___ftpack@arg+2),w
	btfss	status,2
	goto	u350_21
	goto	u350_20
u350_21:
	goto	i1l6845
u350_20:
	goto	i1l6851
	line	76
	
i1l6849:	
	decf	(i1___ftpack@exp),f
	line	77
	clrc
	rlf	(i1___ftpack@arg),f
	rlf	(i1___ftpack@arg+1),f
	rlf	(i1___ftpack@arg+2),f
	line	75
	
i1l6851:	
	btfss	(i1___ftpack@arg+1),(15)&7
	goto	u351_21
	goto	u351_20
u351_21:
	goto	i1l6849
u351_20:
	
i1l3679:	
	line	79
	btfsc	(i1___ftpack@exp),(0)&7
	goto	u352_21
	goto	u352_20
u352_21:
	goto	i1l3680
u352_20:
	line	80
	
i1l6853:	
	bcf	(i1___ftpack@arg)+(15/8),(15)&7
	
i1l3680:	
	line	81
	clrc
	rrf	(i1___ftpack@exp),f
	line	82
	
i1l6855:	
	movf	(i1___ftpack@exp),w
	movwf	((??i1___ftpack+0)+0+2)
	clrf	((??i1___ftpack+0)+0+1)
	clrf	((??i1___ftpack+0)+0+0)
	movf	0+(??i1___ftpack+0)+0,w
	iorwf	(i1___ftpack@arg),f
	movf	1+(??i1___ftpack+0)+0,w
	iorwf	(i1___ftpack@arg+1),f
	movf	2+(??i1___ftpack+0)+0,w
	iorwf	(i1___ftpack@arg+2),f
	line	83
	
i1l6857:	
	movf	(i1___ftpack@sign),w
	skipz
	goto	u353_20
	goto	i1l3681
u353_20:
	line	84
	
i1l6859:	
	bsf	(i1___ftpack@arg)+(23/8),(23)&7
	
i1l3681:	
	line	85
	line	86
	
i1l3670:	
	return
	opt stack 0
GLOBAL	__end_ofi1___ftpack
	__end_ofi1___ftpack:
;; =============== function i1___ftpack ends ============

	signat	i1___ftpack,91
psect	text787,local,class=CODE,delta=2
global __ptext787
__ptext787:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
