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
# 6 "D:\TTVXL\Project TTVXL\BT03week12ttvxl\BT03week12ttvxl.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "D:\TTVXL\Project TTVXL\BT03week12ttvxl\BT03week12ttvxl.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,___altoft
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
	FNCALL	_fround,___lbdiv
	FNCALL	_fround,___bmul
	FNCALL	_fround,___ftmul
	FNCALL	_lcd_gotoxy,_lcd_put_byte
	FNCALL	_lcd_gotoxy,_lcd_busy
	FNCALL	_lcd_init,_lcd_put_byte
	FNCALL	_lcd_init,_lcd_busy
	FNCALL	___lltoft,___ftpack
	FNCALL	___altoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
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
	global	_v
	global	_xung
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
	file	"BT03week12ttvxl.as"
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
_v:
       ds      3

_xung:
       ds      4

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
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x0
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x0
	global	_fround$4111
_fround$4111:	; 3 bytes @ 0x0
	ds	3
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x3
	global	_fround$4110
_fround$4110:	; 3 bytes @ 0x3
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
	global	_printf$3165
_printf$3165:	; 4 bytes @ 0x10
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
	global	_isdigit$3673
_isdigit$3673:	; 1 bytes @ 0x8
	global	_isprint$3676
_isprint$3676:	; 1 bytes @ 0x8
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
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x16
	global	?___fttol
?___fttol:	; 4 bytes @ 0x16
	global	__tdiv_to_l_@exp1
__tdiv_to_l_@exp1:	; 1 bytes @ 0x16
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x16
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x16
	global	__div_to_l_@quot
__div_to_l_@quot:	; 4 bytes @ 0x16
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x19
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
	ds	1
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x1C
	ds	1
	global	??___llmod
??___llmod:	; 0 bytes @ 0x1D
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x1D
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x1D
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x1E
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x1F
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x20
	ds	2
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x22
	ds	1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x23
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x24
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x25
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x25
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x28
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x2B
	ds	3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x2E
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x2F
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x32
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x33
	ds	1
	global	?_scale
?_scale:	; 3 bytes @ 0x34
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x34
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x34
	ds	3
	global	??_scale
??_scale:	; 0 bytes @ 0x37
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x37
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x3A
	ds	1
	global	_scale$4112
_scale$4112:	; 3 bytes @ 0x3B
	ds	2
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x3D
	ds	1
	global	scale@scl
scale@scl:	; 1 bytes @ 0x3E
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x3E
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x3F
	ds	1
	global	??___ftsub
??___ftsub:	; 0 bytes @ 0x40
	global	?_fround
?_fround:	; 3 bytes @ 0x40
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0x43
	global	??_fround
??_fround:	; 0 bytes @ 0x43
;;Data sizes: Strings 20, constant 118, data 0, bss 10, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     67      70
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
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___altoft	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 11
;;		 -> STR_2(CODE[9]), STR_1(CODE[11]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(BANK1[2]), 
;;
;; S3154$_cp	PTR const unsigned char  size(1) Largest target is 0
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
;;   _printf->_fround
;;   _putch->_lcd_putc
;;   _lcd_putc->_lcd_gotoxy
;;   ___ftsub->___ftadd
;;   _scale->___ftmul
;;   _fround->___ftadd
;;   _lcd_gotoxy->_lcd_put_byte
;;   _lcd_init->_lcd_put_byte
;;   ___lltoft->___ftpack
;;   ___altoft->___ftpack
;;   ___ftmul->___ftdiv
;;   ___ftdiv->___altoft
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
;; (0) _main                                                 0     0      0   14025
;;                           _lcd_init
;;                           ___altoft
;;                            ___ftdiv
;;                            ___ftmul
;;                         _lcd_gotoxy
;;                             _printf
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              38    34      4   12097
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
;; (2) ___ftsub                                              6     0      6    1114
;;                                              0 BANK1      6     0      6
;;                            ___ftadd
;;                           ___lltoft (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _scale                                               14    11      3    1688
;;                                             52 BANK0     11     8      3
;;                            ___awmod
;;                            ___awdiv
;;                            ___ftmul
;;                             ___bmul
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _fround                                              13    10      3    1215
;;                                             64 BANK0      3     0      3
;;                                              0 BANK1      7     7      0
;;                            ___lbmod
;;                            ___lbdiv
;;                             ___bmul
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
;; (2) ___lltoft                                             5     1      4     278
;;                                             16 BANK0      5     1      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (1) ___altoft                                             6     2      4     347
;;                                             16 BANK0      6     2      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (3) ___ftmul                                             15     9      6     535
;;                                             37 BANK0     15     9      6
;;                           ___ftpack
;;                            ___ftdiv (ARG)
;;                           ___altoft (ARG)
;;                            ___fttol (ARG)
;;                            ___awdiv (ARG)
;;                            ___awmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftdiv                                             15     9      6     489
;;                                             22 BANK0     15     9      6
;;                           ___ftpack
;;                           ___altoft (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftadd                                             12     6      6    1049
;;                                             52 BANK0     12     6      6
;;                           ___ftpack
;;                            ___lbmod (ARG)
;;                            ___lbdiv (ARG)
;;                             ___bmul (ARG)
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
;; (4) ___ftpack                                             8     3      5     209
;;                                              8 BANK0      8     3      5
;; ---------------------------------------------------------------------------------
;; (3) ___lbmod                                              5     4      1     159
;;                                              8 BANK0      5     4      1
;; ---------------------------------------------------------------------------------
;; (3) ___lbdiv                                              4     3      1     162
;;                                             13 BANK0      4     3      1
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              8 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (3) ___bmul                                               3     2      1      68
;;                                             17 BANK0      3     2      1
;;                            ___lbdiv (ARG)
;;                            ___lbmod (ARG)
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
;;   ___ftdiv
;;     ___ftpack
;;     ___altoft (ARG)
;;       ___ftpack
;;   ___ftmul
;;     ___ftpack
;;     ___ftdiv (ARG)
;;       ___ftpack
;;       ___altoft (ARG)
;;         ___ftpack
;;     ___altoft (ARG)
;;       ___ftpack
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;       ___awmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___lbmod (ARG)
;;     ___awdiv (ARG)
;;       ___awmod (ARG)
;;     ___awmod (ARG)
;;     ___bmul (ARG)
;;       ___lbdiv (ARG)
;;         ___lbmod (ARG)
;;       ___lbmod (ARG)
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
;;           ___altoft (ARG)
;;             ___ftpack
;;         ___altoft (ARG)
;;           ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;             ___lbmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___lbmod (ARG)
;;       ___bmul
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___lbmod (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___lbmod (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___ftdiv (ARG)
;;         ___ftpack
;;         ___altoft (ARG)
;;           ___ftpack
;;       ___altoft (ARG)
;;         ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___lbmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;       ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___lbmod (ARG)
;;       ___lbdiv (ARG)
;;         ___lbmod (ARG)
;;       ___lbmod (ARG)
;;     _fround
;;       ___lbmod
;;       ___lbdiv
;;         ___lbmod (ARG)
;;       ___bmul
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___lbmod (ARG)
;;       ___ftmul
;;         ___ftpack
;;         ___ftdiv (ARG)
;;           ___ftpack
;;           ___altoft (ARG)
;;             ___ftpack
;;         ___altoft (ARG)
;;           ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;             ___lbmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___lbmod (ARG)
;;       ___ftadd (ARG)
;;         ___ftpack
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___bmul (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___lbmod (ARG)
;;         ___ftmul (ARG)
;;           ___ftpack
;;           ___ftdiv (ARG)
;;             ___ftpack
;;             ___altoft (ARG)
;;               ___ftpack
;;           ___altoft (ARG)
;;             ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;               ___lbmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;             ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___lbmod (ARG)
;;     ___ftadd
;;       ___ftpack
;;       ___lbmod (ARG)
;;       ___lbdiv (ARG)
;;         ___lbmod (ARG)
;;       ___bmul (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___lbmod (ARG)
;;       ___ftmul (ARG)
;;         ___ftpack
;;         ___ftdiv (ARG)
;;           ___ftpack
;;           ___altoft (ARG)
;;             ___ftpack
;;         ___altoft (ARG)
;;           ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;             ___lbmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___lbmod (ARG)
;;     ___fttol
;;       ___ftpack (ARG)
;;       ___awmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___lbmod (ARG)
;;     __div_to_l_
;;     __tdiv_to_l_
;;     ___lltoft
;;       ___ftpack
;;     ___ftsub
;;       ___ftadd
;;         ___ftpack
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___bmul (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___lbmod (ARG)
;;         ___ftmul (ARG)
;;           ___ftpack
;;           ___ftdiv (ARG)
;;             ___ftpack
;;             ___altoft (ARG)
;;               ___ftpack
;;           ___altoft (ARG)
;;             ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;               ___lbmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;             ___lbmod (ARG)
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
;;ABS                  0      0      84       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     43      46       5       87.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     29      30       7       60.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      8F      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 18 in file "D:\TTVXL\Project TTVXL\BT03week12ttvxl\BT03week12ttvxl.c"
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
;;		___ftdiv
;;		___ftmul
;;		_lcd_gotoxy
;;		_printf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT03week12ttvxl\BT03week12ttvxl.c"
	line	18
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	19
	
l7951:	
;BT03week12ttvxl.c: 19: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	20
	
l7953:	
;BT03week12ttvxl.c: 20: lcd_init();
	fcall	_lcd_init
	line	21
	
l7955:	
;BT03week12ttvxl.c: 21: TRISA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1068/8)^080h,(1068)&7
	line	22
	
l7957:	
;BT03week12ttvxl.c: 22: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	23
	
l7959:	
;BT03week12ttvxl.c: 23: TRISE0 = 0;
	bcf	(1096/8)^080h,(1096)&7
	line	25
	
l7961:	
;BT03week12ttvxl.c: 25: T0CS = 0;
	bcf	(1037/8)^080h,(1037)&7
	line	26
	
l7963:	
;BT03week12ttvxl.c: 26: PSA = 0;
	bcf	(1035/8)^080h,(1035)&7
	line	27
	
l7965:	
;BT03week12ttvxl.c: 27: PS2= 0; PS1 = 1; PS0= 0;
	bcf	(1034/8)^080h,(1034)&7
	
l7967:	
	bsf	(1033/8)^080h,(1033)&7
	
l7969:	
	bcf	(1032/8)^080h,(1032)&7
	line	28
	
l7971:	
;BT03week12ttvxl.c: 28: TMR0 = 7;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	31
	
l7973:	
;BT03week12ttvxl.c: 31: T0IE = 1;
	bsf	(93/8),(93)&7
	line	32
	
l7975:	
;BT03week12ttvxl.c: 32: T0IF = 0;
	bcf	(90/8),(90)&7
	line	33
	
l7977:	
;BT03week12ttvxl.c: 33: GIE = 1;
	bsf	(95/8),(95)&7
	line	35
	
l7979:	
;BT03week12ttvxl.c: 35: TMR1GE=0;
	bcf	(134/8),(134)&7
	line	36
	
l7981:	
;BT03week12ttvxl.c: 36: TMR1CS=1;
	bsf	(129/8),(129)&7
	line	37
	
l7983:	
;BT03week12ttvxl.c: 37: T1SYNC=1;
	bsf	(130/8),(130)&7
	line	38
	
l7985:	
;BT03week12ttvxl.c: 38: T1CKPS1=0;T1CKPS0=0;
	bcf	(133/8),(133)&7
	
l7987:	
	bcf	(132/8),(132)&7
	line	40
	
l7989:	
;BT03week12ttvxl.c: 40: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	41
	
l7991:	
;BT03week12ttvxl.c: 41: TMR1H=0;
	clrf	(15)	;volatile
	line	42
	
l7993:	
;BT03week12ttvxl.c: 42: TMR1L=0;
	clrf	(14)	;volatile
	line	51
	
l7995:	
;BT03week12ttvxl.c: 50: {
;BT03week12ttvxl.c: 51: v = (xung/360.0)*5.0*60.0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	movlw	0x96
	movwf	(?___ftmul+1)
	movlw	0x43
	movwf	(?___ftmul+2)
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0xb4
	movwf	(?___ftdiv+1)
	movlw	0x43
	movwf	(?___ftdiv+2)
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
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?___altoft)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?___altoft)),w
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
	line	52
	
l7997:	
;BT03week12ttvxl.c: 52: lcd_gotoxy(0,0);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(?_lcd_gotoxy)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	53
	
l7999:	
;BT03week12ttvxl.c: 53: printf("xung: %08u",xung);
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
	line	54
	
l8001:	
;BT03week12ttvxl.c: 54: lcd_gotoxy(0,1);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	55
	
l8003:	
;BT03week12ttvxl.c: 55: printf("v: %3.2f",v);
	bsf	status, 5	;RP0=1, select bank1
	movf	(_v)^080h,w
	movwf	(?_printf)^080h
	movf	(_v+1)^080h,w
	movwf	(?_printf+1)^080h
	movf	(_v+2)^080h,w
	movwf	(?_printf+2)^080h
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	goto	l7995
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	57
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_printf
psect	text768,local,class=CODE,delta=2
global __ptext768
__ptext768:

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
psect	text768
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
	
l7671:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)^080h
	line	540
	goto	l7949
	line	542
	
l7673:	
	movf	(printf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u4821
	goto	u4820
u4821:
	goto	l7677
u4820:
	line	545
	
l7675:	
	movf	(printf@c)^080h,w
	fcall	_putch
	line	546
	goto	l7949
	line	550
	
l7677:	
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	552
	clrf	(printf@flag)^080h
	clrf	(printf@flag+1)^080h
	goto	l7683
	line	583
	
l2202:	
	line	584
	bsf	(printf@flag)^080h+(2/8),(2)&7
	line	585
	
l7679:	
	incf	(printf@f)^080h,f
	line	555
	
l7683:	
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
	goto	l2202
	goto	l7685
	opt asmopt_on

	line	601
	
l7685:	
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u4831
	goto	u4830
u4831:
	goto	l7695
u4830:
	line	602
	
l7687:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	604
	
l7689:	
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
	
l7691:	
	incf	(printf@f)^080h,f
	line	605
	
l7693:	
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u4841
	goto	u4840
u4841:
	goto	l7689
u4840:
	line	614
	
l7695:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u4851
	goto	u4850
u4851:
	goto	l7709
u4850:
	line	615
	
l7697:	
	bsf	(printf@flag)^080h+(14/8),(14)&7
	line	616
	
l7699:	
	incf	(printf@f)^080h,f
	line	624
	
l7701:	
	clrf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	line	625
	goto	l7707
	line	626
	
l7703:	
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
	
l7705:	
	incf	(printf@f)^080h,f
	line	625
	
l7707:	
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u4861
	goto	u4860
u4861:
	goto	l7703
u4860:
	goto	l7717
	line	629
	
l7709:	
	clrf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	line	631
	
l7711:	
	bsf	(printf@flag)^080h+(12/8),(12)&7
	goto	l7717
	line	665
	
l2217:	
	line	666
	bsf	(printf@flag)^080h+(10/8),(10)&7
	line	667
	goto	l7719
	line	821
	
l7713:	
	movlw	0C0h
	iorwf	(printf@flag)^080h,f
	line	822
	goto	l7719
	line	638
	
l7717:	
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
	goto	l2296
	xorlw	102^0	; case 102
	skipnz
	goto	l2217
	xorlw	117^102	; case 117
	skipnz
	goto	l7713
	goto	l7949
	opt asmopt_on

	line	828
	
l7719:	
	movlw	low(0700h)
	andwf	(printf@flag)^080h,w
	movwf	(??_printf+0)^080h+0
	movlw	high(0700h)
	andwf	(printf@flag+1)^080h,w
	movwf	1+(??_printf+0)^080h+0
	movf	1+(??_printf+0)^080h+0,w
	iorwf	0+(??_printf+0)^080h+0,w
	skipnz
	goto	u4871
	goto	u4870
u4871:
	goto	l7871
u4870:
	line	830
	
l7721:	
	btfss	(printf@flag+1)^080h,(12)&7
	goto	u4881
	goto	u4880
u4881:
	goto	l7725
u4880:
	line	832
	
l7723:	
	movlw	06h
	movwf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	line	833
	
l7725:	
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
	
l7727:	
	movlw	(03h)
	addwf	(printf@ap)^080h,f
	line	834
	
l7729:	
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
	goto	u4891
	goto	u4890
u4891:
	goto	l7735
u4890:
	line	835
	
l7731:	
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
	
l7733:	
	movlw	03h
	iorwf	(printf@flag)^080h,f
	line	838
	
l7735:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(printf@exp)^080h
	clrf	(printf@exp+1)^080h
	line	839
	
l7737:	
	movf	(printf@fval+2)^080h,w
	iorwf	(printf@fval+1)^080h,w
	iorwf	(printf@fval)^080h,w
	skipnz
	goto	u4901
	goto	u4900
u4901:
	goto	l7767
u4900:
	line	840
	
l7739:	
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
u4915:
	clrc
	rrf	(??_printf+0)^080h+3,f
	rrf	(??_printf+0)^080h+2,f
	rrf	(??_printf+0)^080h+1,f
	rrf	(??_printf+0)^080h+0,f
u4910:
	addlw	-1
	skipz
	goto	u4915
	movf	1+(??_printf+0)^080h+0,w
	movwf	(printf@exp+1)^080h
	movf	0+(??_printf+0)^080h+0,w
	movwf	(printf@exp)^080h
	
l7741:	
	movlw	0FFh
	andwf	(printf@exp)^080h,f
	clrf	(printf@exp+1)^080h
	
l7743:	
	movlw	-126
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	841
	
l7745:	
	movlw	-1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	842
	
l7747:	
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
	
l7749:	
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
	
l7751:	
	btfss	(printf@exp+1)^080h,7
	goto	u4921
	goto	u4920
u4921:
	goto	l7755
u4920:
	line	845
	
l7753:	
	movlw	-1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	849
	
l7755:	
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
	
l7757:	
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
	
l7759:	
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
	goto	u4931
	goto	u4930
u4931:
	goto	l7763
u4930:
	line	852
	
l7761:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	goto	l7767
	line	853
	
l7763:	
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
	goto	u4941
	goto	u4940
u4941:
	goto	l7767
u4940:
	line	854
	
l7765:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(printf@exp)^080h,f
	skipnz
	incf	(printf@exp+1)^080h,f
	line	1115
	
l7767:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u4955
	movlw	low(0Dh)
	subwf	(printf@prec)^080h,w
u4955:

	skipnc
	goto	u4951
	goto	u4950
u4951:
	goto	l7771
u4950:
	line	1116
	
l7769:	
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
	
l7771:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4965
	movlw	low(0Ah)
	subwf	(printf@exp)^080h,w
u4965:

	skipnc
	goto	u4961
	goto	u4960
u4961:
	goto	l7779
u4960:
	
l7773:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@fval+2)^080h,w
	iorwf	(printf@fval+1)^080h,w
	iorwf	(printf@fval)^080h,w
	skipnz
	goto	u4971
	goto	u4970
u4971:
	goto	l7795
u4970:
	
l7775:	
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
	goto	u4981
	goto	u4980
u4981:
	goto	l7795
u4980:
	
l7777:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4995
	movlw	low(02h)
	subwf	(printf@exp)^080h,w
u4995:

	skipc
	goto	u4991
	goto	u4990
u4991:
	goto	l7795
u4990:
	line	1123
	
l7779:	
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
	goto	u5001
	goto	u5000
u5001:
	goto	l7783
u5000:
	line	1124
	
l7781:	
	movlw	-9
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	1125
	goto	l7785
	line	1126
	
l7783:	
	movlw	-8
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	1128
	
l7785:	
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
	
l7789:	
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
	movwf	(_printf$3165+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_printf$3165+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_printf$3165+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_printf$3165)^080h

	
l7791:	
	movf	(_printf$3165+3)^080h,w
	movwf	(printf@_val+3)^080h
	movf	(_printf$3165+2)^080h,w
	movwf	(printf@_val+2)^080h
	movf	(_printf$3165+1)^080h,w
	movwf	(printf@_val+1)^080h
	movf	(_printf$3165)^080h,w
	movwf	(printf@_val)^080h

	line	1132
	
l7793:	
	clrf	(printf@fval)^080h
	clrf	(printf@fval+1)^080h
	clrf	(printf@fval+2)^080h
	line	1133
	goto	l7799
	line	1134
	
l7795:	
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
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?___ftsub)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?___ftsub+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lltoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?___ftsub+2)^080h
	movf	(printf@fval)^080h,w
	movwf	0+(?___ftsub)^080h+03h
	movf	(printf@fval+1)^080h,w
	movwf	1+(?___ftsub)^080h+03h
	movf	(printf@fval+2)^080h,w
	movwf	2+(?___ftsub)^080h+03h
	fcall	___ftsub
	movf	(0+(?___ftsub))^080h,w
	movwf	(printf@fval)^080h
	movf	(1+(?___ftsub))^080h,w
	movwf	(printf@fval+1)^080h
	movf	(2+(?___ftsub))^080h,w
	movwf	(printf@fval+2)^080h
	line	1136
	
l7797:	
	clrf	(printf@exp)^080h
	clrf	(printf@exp+1)^080h
	line	1139
	
l7799:	
	clrf	(printf@c)^080h
	incf	(printf@c)^080h,f
	line	1140
	
l7805:	
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
	goto	u5015
	movf	2+(??_printf+1)^080h+0,w
	subwf	(printf@_val+2)^080h,w
	skipz
	goto	u5015
	movf	1+(??_printf+1)^080h+0,w
	subwf	(printf@_val+1)^080h,w
	skipz
	goto	u5015
	movf	0+(??_printf+1)^080h+0,w
	subwf	(printf@_val)^080h,w
u5015:
	skipnc
	goto	u5011
	goto	u5010
u5011:
	goto	l7809
u5010:
	goto	l7813
	line	1139
	
l7809:	
	incf	(printf@c)^080h,f
	
l7811:	
	movf	(printf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u5021
	goto	u5020
u5021:
	goto	l7805
u5020:
	line	1145
	
l7813:	
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
	
l7815:	
	movf	(printf@prec+1)^080h,w
	iorwf	(printf@prec)^080h,w
	skipnz
	goto	u5031
	goto	u5030
u5031:
	goto	l7819
u5030:
	line	1151
	
l7817:	
	movlw	-1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1152
	
l7819:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u5041
	goto	u5040
u5041:
	goto	l7823
u5040:
	line	1153
	
l7821:	
	movlw	-1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1156
	
l7823:	
	btfss	(printf@flag)^080h,(2)&7
	goto	u5051
	goto	u5050
u5051:
	goto	l7837
u5050:
	goto	l7831
	line	1170
	
l7827:	
	movlw	(030h)
	fcall	_putch
	line	1171
	
l7829:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1169
	
l7831:	
	movf	(printf@width+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5065
	movlw	low(01h)
	subwf	(printf@width)^080h,w
u5065:

	skipnc
	goto	u5061
	goto	u5060
u5061:
	goto	l7827
u5060:
	goto	l7845
	line	1182
	
l7833:	
	movlw	(020h)
	fcall	_putch
	line	1183
	
l7835:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1181
	
l7837:	
	movf	(printf@width+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5075
	movlw	low(01h)
	subwf	(printf@width)^080h,w
u5075:

	skipnc
	goto	u5071
	goto	u5070
u5071:
	goto	l7833
u5070:
	line	1189
	
l7839:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u5081
	goto	u5080
u5081:
	goto	l7845
u5080:
	line	1191
	
l7841:	
	movlw	(02Dh)
	fcall	_putch
	goto	l7845
	line	1201
	
l7843:	
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
	
l7845:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	decf	(printf@c)^080h,f
	incf	((printf@c)^080h),w
	skipz
	goto	u5091
	goto	u5090
u5091:
	goto	l7843
u5090:
	goto	l7851
	line	1205
	
l7847:	
	movlw	(030h)
	fcall	_putch
	line	1206
	
l7849:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	1204
	
l7851:	
	movf	(printf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5105
	movlw	low(01h)
	subwf	(printf@exp)^080h,w
u5105:

	skipnc
	goto	u5101
	goto	u5100
u5101:
	goto	l7847
u5100:
	line	1208
	
l7853:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5115
	movlw	low(09h)
	subwf	(printf@prec)^080h,w
u5115:

	skipc
	goto	u5111
	goto	u5110
u5111:
	goto	l7857
u5110:
	line	1209
	
l7855:	
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(printf@c)^080h
	goto	l2261
	line	1211
	
l7857:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec)^080h,w
	movwf	(printf@c)^080h
	
l2261:	
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
	goto	u5120
	goto	l2262
u5120:
	line	1218
	
l7859:	
	movlw	(02Eh)
	fcall	_putch
	
l2262:	
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
	goto	l7863
	line	1226
	
l7861:	
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
	
l7863:	
	decf	(printf@c)^080h,f
	incf	((printf@c)^080h),w
	skipz
	goto	u5131
	goto	u5130
u5131:
	goto	l7861
u5130:
	goto	l7869
	line	1231
	
l7865:	
	movlw	(030h)
	fcall	_putch
	line	1232
	
l7867:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@prec)^080h,f
	skipc
	decf	(printf@prec+1)^080h,f
	line	1230
	
l7869:	
	movf	((printf@prec+1)^080h),w
	iorwf	((printf@prec)^080h),w
	skipz
	goto	u5141
	goto	u5140
u5141:
	goto	l7865
u5140:
	goto	l7949
	line	1281
	
l7871:	
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
	
l7873:	
	incf	(printf@ap)^080h,f
	incf	(printf@ap)^080h,f
	line	1285
	
l7875:	
	movf	((printf@prec+1)^080h),w
	iorwf	((printf@prec)^080h),w
	skipz
	goto	u5151
	goto	u5150
u5151:
	goto	l7881
u5150:
	
l7877:	
	movf	(printf@_val+3)^080h,w
	iorwf	(printf@_val+2)^080h,w
	iorwf	(printf@_val+1)^080h,w
	iorwf	(printf@_val)^080h,w
	skipz
	goto	u5161
	goto	u5160
u5161:
	goto	l7881
u5160:
	line	1286
	
l7879:	
	incf	(printf@prec)^080h,f
	skipnz
	incf	(printf@prec+1)^080h,f
	line	1300
	
l7881:	
	clrf	(printf@c)^080h
	incf	(printf@c)^080h,f
	line	1301
	
l7887:	
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
	goto	u5175
	movf	2+(??_printf+1)^080h+0,w
	subwf	(printf@_val+2)^080h,w
	skipz
	goto	u5175
	movf	1+(??_printf+1)^080h+0,w
	subwf	(printf@_val+1)^080h,w
	skipz
	goto	u5175
	movf	0+(??_printf+1)^080h+0,w
	subwf	(printf@_val)^080h,w
u5175:
	skipnc
	goto	u5171
	goto	u5170
u5171:
	goto	l7891
u5170:
	goto	l7895
	line	1300
	
l7891:	
	incf	(printf@c)^080h,f
	
l7893:	
	movf	(printf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u5181
	goto	u5180
u5181:
	goto	l7887
u5180:
	line	1334
	
l7895:	
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
	goto	u5195
	movf	(printf@prec)^080h,w
	subwf	0+(??_printf+0)^080h+0,w
u5195:

	skipnc
	goto	u5191
	goto	u5190
u5191:
	goto	l7899
u5190:
	line	1335
	
l7897:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec)^080h,w
	movwf	(printf@c)^080h
	goto	l7903
	line	1336
	
l7899:	
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
	goto	u5205
	movf	0+(??_printf+0)^080h+0,w
	subwf	(printf@prec)^080h,w
u5205:

	skipnc
	goto	u5201
	goto	u5200
u5201:
	goto	l7903
u5200:
	line	1337
	
l7901:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@c)^080h,w
	movwf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	btfsc	(printf@prec)^080h,7
	decf	(printf@prec+1)^080h,f
	line	1340
	
l7903:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@width+1)^080h,w
	iorwf	(printf@width)^080h,w
	skipnz
	goto	u5211
	goto	u5210
u5211:
	goto	l7909
u5210:
	
l7905:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u5221
	goto	u5220
u5221:
	goto	l7909
u5220:
	line	1341
	
l7907:	
	movlw	-1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1343
	
l7909:	
	btfss	(printf@flag+1)^080h,(14)&7
	goto	u5231
	goto	u5230
u5231:
	goto	l7917
u5230:
	line	1344
	
l7911:	
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	movwf	(??_printf+0)^080h+0
	movf	(printf@width+1)^080h,w
	xorlw	80h
	subwf	(??_printf+0)^080h+0,w
	skipz
	goto	u5245
	movf	(printf@width)^080h,w
	subwf	(printf@prec)^080h,w
u5245:

	skipnc
	goto	u5241
	goto	u5240
u5241:
	goto	l7915
u5240:
	line	1345
	
l7913:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec)^080h,w
	subwf	(printf@width)^080h,f
	movf	(printf@prec+1)^080h,w
	skipc
	decf	(printf@width+1)^080h,f
	subwf	(printf@width+1)^080h,f
	goto	l7917
	line	1347
	
l7915:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	1376
	
l7917:	
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
	goto	u5255
	movf	(printf@width)^080h,w
	subwf	0+(??_printf+0)^080h+0,w
u5255:

	skipnc
	goto	u5251
	goto	u5250
u5251:
	goto	l7921
u5250:
	line	1377
	
l7919:	
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
	goto	l7923
	line	1379
	
l7921:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	1382
	
l7923:	
	btfss	(printf@flag)^080h,(2)&7
	goto	u5261
	goto	u5260
u5261:
	goto	l7935
u5260:
	line	1387
	
l7925:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u5271
	goto	u5270
u5271:
	goto	l7929
u5270:
	line	1388
	
l7927:	
	movlw	(02Dh)
	fcall	_putch
	line	1410
	
l7929:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@width+1)^080h,w
	iorwf	(printf@width)^080h,w
	skipnz
	goto	u5281
	goto	u5280
u5281:
	goto	l7947
u5280:
	line	1412
	
l7931:	
	movlw	(030h)
	fcall	_putch
	line	1413
	
l7933:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	movf	(((printf@width+1)^080h)),w
	iorwf	(((printf@width)^080h)),w
	skipz
	goto	u5291
	goto	u5290
u5291:
	goto	l7931
u5290:
	goto	l7947
	line	1423
	
l7935:	
	movf	(printf@width+1)^080h,w
	iorwf	(printf@width)^080h,w
	skipnz
	goto	u5301
	goto	u5300
u5301:
	goto	l7941
u5300:
	line	1425
	
l7937:	
	movlw	(020h)
	fcall	_putch
	line	1426
	
l7939:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	movf	(((printf@width+1)^080h)),w
	iorwf	(((printf@width)^080h)),w
	skipz
	goto	u5311
	goto	u5310
u5311:
	goto	l7937
u5310:
	line	1433
	
l7941:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u5321
	goto	u5320
u5321:
	goto	l7947
u5320:
	line	1434
	
l7943:	
	movlw	(02Dh)
	fcall	_putch
	goto	l7947
	line	1484
	
l7945:	
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
	
l7947:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@prec)^080h,f
	skipc
	decf	(printf@prec+1)^080h,f
	incf	((printf@prec)^080h),w
	skipnz
	incf	((printf@prec+1)^080h),w

	skipz
	goto	u5331
	goto	u5330
u5331:
	goto	l7945
u5330:
	line	540
	
l7949:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@f)^080h,w
	incf	(printf@f)^080h,f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)^080h
	movf	((printf@c)^080h),f
	skipz
	goto	u5341
	goto	u5340
u5341:
	goto	l7673
u5340:
	line	1533
	
l2296:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_putch
psect	text769,local,class=CODE,delta=2
global __ptext769
__ptext769:

;; *************** function _putch *****************
;; Defined at:
;;		line 60 in file "D:\TTVXL\Project TTVXL\BT03week12ttvxl\BT03week12ttvxl.c"
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
psect	text769
	file	"D:\TTVXL\Project TTVXL\BT03week12ttvxl\BT03week12ttvxl.c"
	line	60
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 0
; Regs used in _putch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;putch@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(putch@c)
	line	61
	
l7275:	
;BT03week12ttvxl.c: 61: lcd_putc(c);
	movf	(putch@c),w
	fcall	_lcd_putc
	line	62
	
l1059:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_putc
psect	text770,local,class=CODE,delta=2
global __ptext770
__ptext770:

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
psect	text770
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
	
l7257:	
;lcd(16).c: 144: switch(c){
	goto	l7273
	line	146
	
l7259:	
;lcd(16).c: 146: lcd_put_byte(0, 1);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	147
;lcd(16).c: 147: while(lcd_busy());
	
l7261:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4261
	goto	u4260
u4261:
	goto	l7261
u4260:
	goto	l2146
	line	150
	
l7263:	
;lcd(16).c: 150: lcd_gotoxy(0, 1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	151
;lcd(16).c: 151: break;
	goto	l2146
	line	153
	
l7265:	
;lcd(16).c: 153: if(isprint(c)){
	movf	(lcd_putc@c),w
	fcall	_isprint
	btfss	status,0
	goto	u4271
	goto	u4270
u4271:
	goto	l2146
u4270:
	line	154
	
l7267:	
;lcd(16).c: 154: lcd_put_byte(1, c);
	movf	(lcd_putc@c),w
	movwf	(?_lcd_put_byte)
	movlw	(01h)
	fcall	_lcd_put_byte
	line	155
;lcd(16).c: 155: while(lcd_busy());
	
l7269:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4281
	goto	u4280
u4281:
	goto	l7269
u4280:
	goto	l2146
	line	144
	
l7273:	
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
	goto	l7263
	xorlw	12^10	; case 12
	skipnz
	goto	l7259
	goto	l7265
	opt asmopt_on

	line	159
	
l2146:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	___ftsub
psect	text771,local,class=CODE,delta=2
global __ptext771
__ptext771:

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 17 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3    0[BANK1 ] float 
;;  f1              3    3[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text771
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 1
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l7665:	
	movlw	080h
	xorwf	(___ftsub@f2+2)^080h,f
	line	19
	
l7667:	
	movf	(___ftsub@f1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftadd)
	bsf	status, 5	;RP0=1, select bank1
	movf	(___ftsub@f1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftadd+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(___ftsub@f1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftadd+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(___ftsub@f2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(___ftsub@f2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(___ftsub@f2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?___ftsub)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?___ftsub+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?___ftsub+2)^080h
	line	20
	
l3382:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_scale
psect	text772,local,class=CODE,delta=2
global __ptext772
__ptext772:

;; *************** function _scale *****************
;; Defined at:
;;		line 422 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  scl             1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  scl             1   62[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  3   52[BANK0 ] char 
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
psect	text772
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
	
l7211:	
	btfss	(scale@scl),7
	goto	u4211
	goto	u4210
u4211:
	goto	l7233
u4210:
	line	425
	
l7213:	
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	426
	
l7215:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u4221
	goto	u4220
u4221:
	goto	l7223
u4220:
	line	427
	
l7217:	
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
	movwf	(_scale$4112)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$4112+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$4112+2)
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
	movf	(_scale$4112),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$4112+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$4112+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l2189
	line	428
	
l7223:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u4231
	goto	u4230
u4231:
	goto	l7229
u4230:
	line	429
	
l7225:	
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
	goto	l2189
	line	430
	
l7229:	
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
	goto	l2189
	line	432
	
l7233:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u4241
	goto	u4240
u4241:
	goto	l7241
u4240:
	line	433
	
l7235:	
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
	movwf	(_scale$4112)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$4112+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$4112+2)
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
	movf	(_scale$4112),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$4112+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$4112+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l2189
	line	434
	
l7241:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u4251
	goto	u4250
u4251:
	goto	l7247
u4250:
	line	435
	
l7243:	
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
	goto	l2189
	line	436
	
l7247:	
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
	
l2189:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
;; =============== function _scale ends ============

	signat	_scale,4219
	global	_fround
psect	text773,local,class=CODE,delta=2
global __ptext773
__ptext773:

;; *************** function _fround *****************
;; Defined at:
;;		line 406 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  prec            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prec            1    6[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   64[BANK0 ] unsigned char 
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
;;		___lbdiv
;;		___bmul
;;		___ftmul
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text773
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
	
l7189:	
	movlw	(06Eh)
	subwf	(fround@prec)^080h,w
	skipc
	goto	u4191
	goto	u4190
u4191:
	goto	l7199
u4190:
	line	410
	
l7191:	
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
	movwf	(_fround$4110)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4110+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4110+2)^080h
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
	movf	(_fround$4110)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4110+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4110+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4111)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4111+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4111+2)^080h
	
l7193:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4111)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4111+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4111+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l2182
	line	411
	
l7199:	
	movlw	(0Bh)
	subwf	(fround@prec)^080h,w
	skipc
	goto	u4201
	goto	u4200
u4201:
	goto	l7207
u4200:
	line	412
	
l7201:	
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
	movwf	(_fround$4110)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4110+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4110+2)^080h
	
l7203:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4110)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4110+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4110+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l2182
	line	413
	
l7207:	
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
	
l2182:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
;; =============== function _fround ends ============

	signat	_fround,4219
	global	_lcd_gotoxy
psect	text774,local,class=CODE,delta=2
global __ptext774
__ptext774:

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
psect	text774
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
	
l7177:	
;lcd(16).c: 163: unsigned char address;
;lcd(16).c: 165: if(row!=0)
	movf	(lcd_gotoxy@row),w
	skipz
	goto	u4170
	goto	l7181
u4170:
	line	166
	
l7179:	
;lcd(16).c: 166: address=0x40;
	movlw	(040h)
	movwf	(lcd_gotoxy@address)
	goto	l7183
	line	168
	
l7181:	
;lcd(16).c: 167: else
;lcd(16).c: 168: address=0;
	clrf	(lcd_gotoxy@address)
	line	170
	
l7183:	
;lcd(16).c: 170: address += col;
	movf	(lcd_gotoxy@col),w
	addwf	(lcd_gotoxy@address),f
	line	171
	
l7185:	
;lcd(16).c: 171: lcd_put_byte(0,0x80|address);
	movf	(lcd_gotoxy@address),w
	iorlw	080h
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	172
;lcd(16).c: 172: while(lcd_busy());
	
l7187:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4181
	goto	u4180
u4181:
	goto	l7187
u4180:
	line	173
	
l2154:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
;; =============== function _lcd_gotoxy ends ============

	signat	_lcd_gotoxy,8312
	global	_lcd_init
psect	text775,local,class=CODE,delta=2
global __ptext775
__ptext775:

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
psect	text775
	file	"D:\TTVXL\Library\lcd(16).c"
	line	5
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l7139:	
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
	
l7141:	
;lcd(16).c: 18: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u5357:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5357
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5357
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u5357
	nop2
opt asmopt_on

	line	21
	
l7143:	
;lcd(16).c: 21: lcd_put_byte(0,0x30);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	22
	
l7145:	
;lcd(16).c: 22: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u5367:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5367
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5367
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u5367
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
	
l7147:	
;lcd(16).c: 24: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u5377:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5377
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5377
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u5377
	nop2
opt asmopt_on

	line	25
	
l7149:	
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
u5387:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5387
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5387
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u5387
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
u5397:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5397
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5397
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u5397
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
u5407:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5407
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5407
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u5407
	nop2
opt asmopt_on

	line	30
;lcd(16).c: 30: while(lcd_busy());
	
l7151:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l7151
u4100:
	line	31
	
l7153:	
;lcd(16).c: 31: lcd_put_byte(0,0b00101100 & 0b00111000);
	movlw	(028h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	32
;lcd(16).c: 32: while(lcd_busy());
	
l7155:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4111
	goto	u4110
u4111:
	goto	l7155
u4110:
	line	34
	
l7157:	
;lcd(16).c: 34: lcd_put_byte(0,0b00001011&0b00001101&0b00001110);
	movlw	(08h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	35
;lcd(16).c: 35: while(lcd_busy());
	
l7159:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4121
	goto	u4120
u4121:
	goto	l7159
u4120:
	line	36
	
l7161:	
;lcd(16).c: 36: lcd_put_byte(0,0b00001111&0b00001101&0b00001110);
	movlw	(0Ch)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	37
;lcd(16).c: 37: while(lcd_busy());
	
l7163:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4131
	goto	u4130
u4131:
	goto	l7163
u4130:
	line	39
	
l7165:	
;lcd(16).c: 39: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	40
;lcd(16).c: 40: while(lcd_busy());
	
l7167:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4141
	goto	u4140
u4141:
	goto	l7167
u4140:
	line	41
	
l7169:	
;lcd(16).c: 41: lcd_put_byte(0,0b00000100);
	movlw	(04h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	42
;lcd(16).c: 42: while(lcd_busy());
	
l7171:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4151
	goto	u4150
u4151:
	goto	l7171
u4150:
	line	43
	
l7173:	
;lcd(16).c: 43: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	44
;lcd(16).c: 44: while(lcd_busy());
	
l7175:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4161
	goto	u4160
u4161:
	goto	l7175
u4160:
	line	45
	
l2120:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	___lltoft
psect	text776,local,class=CODE,delta=2
global __ptext776
__ptext776:

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
psect	text776
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 2
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l7129:	
	movlw	(08Eh)
	movwf	(___lltoft@exp)
	line	41
	goto	l7133
	line	42
	
l7131:	
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	line	43
	incf	(___lltoft@exp),f
	line	41
	
l7133:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u4091
	goto	u4090
u4091:
	goto	l7131
u4090:
	line	45
	
l7135:	
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
	
l3539:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___altoft
psect	text777,local,class=CODE,delta=2
global __ptext777
__ptext777:

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
psect	text777
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\altoft.c"
	line	43
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:	
	opt	stack 3
; Regs used in ___altoft: [wreg+status,2+status,0+pclath+cstack]
	line	45
	
l7113:	
	clrf	(___altoft@sign)
	line	46
	
l7115:	
	movlw	(08Eh)
	movwf	(___altoft@exp)
	line	47
	
l7117:	
	btfss	(___altoft@c+3),7
	goto	u4071
	goto	u4070
u4071:
	goto	l7123
u4070:
	line	48
	
l7119:	
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
	goto	l7123
	line	53
	
l7121:	
	clrc
	rrf	(___altoft@c+3),f
	rrf	(___altoft@c+2),f
	rrf	(___altoft@c+1),f
	rrf	(___altoft@c),f
	line	54
	incf	(___altoft@exp),f
	line	52
	
l7123:	
	movlw	high highword(-16777216)
	andwf	(___altoft@c+3),w
	btfss	status,2
	goto	u4081
	goto	u4080
u4081:
	goto	l7121
u4080:
	line	56
	
l7125:	
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
	
l3531:	
	return
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
;; =============== function ___altoft ends ============

	signat	___altoft,4219
	global	___ftmul
psect	text778,local,class=CODE,delta=2
global __ptext778
__ptext778:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   37[BANK0 ] float 
;;  f2              3   40[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   47[BANK0 ] unsigned um
;;  sign            1   51[BANK0 ] unsigned char 
;;  cntr            1   50[BANK0 ] unsigned char 
;;  exp             1   46[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   37[BANK0 ] float 
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
psect	text778
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 1
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l7057:	
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
	goto	u3991
	goto	u3990
u3991:
	goto	l7063
u3990:
	line	57
	
l7059:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l3398
	line	58
	
l7063:	
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
	goto	u4001
	goto	u4000
u4001:
	goto	l7069
u4000:
	line	59
	
l7065:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l3398
	line	60
	
l7069:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l7071:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l7073:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l7075:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l7077:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l7079:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l7081:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l7083:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l7085:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l7087:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4011
	goto	u4010
u4011:
	goto	l7091
u4010:
	line	72
	
l7089:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u4021
	addwf	(___ftmul@f3_as_product+1),f
u4021:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u4022
	addwf	(___ftmul@f3_as_product+2),f
u4022:

	line	73
	
l7091:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l7093:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l7095:	
	decfsz	(___ftmul@cntr),f
	goto	u4031
	goto	u4030
u4031:
	goto	l7087
u4030:
	line	76
	
l7097:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l7099:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4041
	goto	u4040
u4041:
	goto	l7103
u4040:
	line	79
	
l7101:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u4051
	addwf	(___ftmul@f3_as_product+1),f
u4051:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u4052
	addwf	(___ftmul@f3_as_product+2),f
u4052:

	line	80
	
l7103:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l7105:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l7107:	
	decfsz	(___ftmul@cntr),f
	goto	u4061
	goto	u4060
u4061:
	goto	l7099
u4060:
	line	83
	
l7109:	
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
	
l3398:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text779,local,class=CODE,delta=2
global __ptext779
__ptext779:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   22[BANK0 ] float 
;;  f1              3   25[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   32[BANK0 ] float 
;;  sign            1   36[BANK0 ] unsigned char 
;;  exp             1   35[BANK0 ] unsigned char 
;;  cntr            1   31[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   22[BANK0 ] float 
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
;; This function uses a non-reentrant model
;;
psect	text779
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 3
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l7013:	
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
	goto	u3951
	goto	u3950
u3951:
	goto	l7019
u3950:
	line	56
	
l7015:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l3388
	line	57
	
l7019:	
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
	goto	u3961
	goto	u3960
u3961:
	goto	l3389
u3960:
	line	58
	
l7021:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l3388
	
l3389:	
	line	59
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	60
	
l7025:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l7027:	
	movf	0+(((___ftdiv@f1))+2),w
	movwf	(___ftdiv@sign)
	line	62
	
l7029:	
	movf	0+(((___ftdiv@f2))+2),w
	xorwf	(___ftdiv@sign),f
	line	63
	
l7031:	
	movlw	(080h)
	andwf	(___ftdiv@sign),f
	line	64
	
l7033:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	
l7035:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l7037:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	
l7039:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	
l7041:	
	movlw	(018h)
	movwf	(___ftdiv@cntr)
	line	70
	
l7043:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	71
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u3975
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u3975
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u3975:
	skipc
	goto	u3971
	goto	u3970
u3971:
	goto	l7049
u3970:
	line	72
	
l7045:	
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
	
l7047:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	75
	
l7049:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	76
	
l7051:	
	decfsz	(___ftdiv@cntr),f
	goto	u3981
	goto	u3980
u3981:
	goto	l7043
u3980:
	line	77
	
l7053:	
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
	
l3388:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text780,local,class=CODE,delta=2
global __ptext780
__ptext780:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   52[BANK0 ] float 
;;  f2              3   55[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   63[BANK0 ] unsigned char 
;;  exp2            1   62[BANK0 ] unsigned char 
;;  sign            1   61[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   52[BANK0 ] float 
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
psect	text780
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 1
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l6935:	
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
	
l6937:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u3750
	goto	l6943
u3750:
	
l6939:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3761
	goto	u3760
u3761:
	goto	l6947
u3760:
	
l6941:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3771
	goto	u3770
u3771:
	goto	l6947
u3770:
	line	93
	
l6943:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l3346
	line	94
	
l6947:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u3780
	goto	l3349
u3780:
	
l6949:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3791
	goto	u3790
u3791:
	goto	l6953
u3790:
	
l6951:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3801
	goto	u3800
u3801:
	goto	l6953
u3800:
	
l3349:	
	line	95
	goto	l3346
	line	96
	
l6953:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
l6955:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u3811
	goto	u3810
u3811:
	goto	l3350
u3810:
	line	98
	
l6957:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l3350:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3821
	goto	u3820
u3821:
	goto	l3351
u3820:
	line	100
	
l6959:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l3351:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l6961:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l6963:	
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
	goto	u3831
	goto	u3830
u3831:
	goto	l6975
u3830:
	line	110
	
l6965:	
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
l6967:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3841
	goto	u3840
u3841:
	goto	l6973
u3840:
	
l6969:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3851
	goto	u3850
u3851:
	goto	l6965
u3850:
	goto	l6973
	line	114
	
l6971:	
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
l6973:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3861
	goto	u3860
u3861:
	goto	l6971
u3860:
	goto	l3360
	line	117
	
l6975:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3871
	goto	u3870
u3871:
	goto	l3360
u3870:
	line	121
	
l6977:	
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
l6979:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3881
	goto	u3880
u3881:
	goto	l6985
u3880:
	
l6981:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3891
	goto	u3890
u3891:
	goto	l6977
u3890:
	goto	l6985
	line	125
	
l6983:	
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
l6985:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3901
	goto	u3900
u3901:
	goto	l6983
u3900:
	line	129
	
l3360:	
	btfss	(___ftadd@sign),(7)&7
	goto	u3911
	goto	u3910
u3911:
	goto	l6991
u3910:
	line	131
	
l6987:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
l6989:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
l6991:	
	btfss	(___ftadd@sign),(6)&7
	goto	u3921
	goto	u3920
u3921:
	goto	l6997
u3920:
	line	136
	
l6993:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
l6995:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
l6997:	
	clrf	(___ftadd@sign)
	line	140
	
l6999:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u3931
	addwf	(___ftadd@f2+1),f
u3931:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u3932
	addwf	(___ftadd@f2+2),f
u3932:

	line	141
	
l7001:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3941
	goto	u3940
u3941:
	goto	l7009
u3940:
	line	142
	
l7003:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
l7005:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
l7007:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l7009:	
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
	
l3346:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_lcd_busy
psect	text781,local,class=CODE,delta=2
global __ptext781
__ptext781:

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
psect	text781
	file	"D:\TTVXL\Library\lcd(16).c"
	line	47
	global	__size_of_lcd_busy
	__size_of_lcd_busy	equ	__end_of_lcd_busy-_lcd_busy
	
_lcd_busy:	
	opt	stack 0
; Regs used in _lcd_busy: [wreg]
	line	50
	
l6921:	
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
	
l6923:	
;lcd(16).c: 57: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u5417:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5417
opt asmopt_on

	line	58
	
l6925:	
;lcd(16).c: 58: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	59
;lcd(16).c: 59: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u5427:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5427
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
	
l6927:	
;lcd(16).c: 63: RD3 = 0;
	bcf	(67/8),(67)&7
	line	64
;lcd(16).c: 64: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u5437:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5437
opt asmopt_on

	line	65
	
l6929:	
;lcd(16).c: 65: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	66
;lcd(16).c: 66: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u5447:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5447
opt asmopt_on

	line	67
	
l6931:	
;lcd(16).c: 67: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	70
;lcd(16).c: 70: return busy;
	movf	(lcd_busy@busy),w
	line	71
	
l2123:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_busy
	__end_of_lcd_busy:
;; =============== function _lcd_busy ends ============

	signat	_lcd_busy,89
	global	_lcd_put_byte
psect	text782,local,class=CODE,delta=2
global __ptext782
__ptext782:

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
psect	text782
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
	
l6885:	
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
	
l6887:	
;lcd(16).c: 115: if(rs) RD1 = 1;
	movf	(lcd_put_byte@rs),w
	skipz
	goto	u3580
	goto	l6891
u3580:
	
l6889:	
	bsf	(65/8),(65)&7
	line	117
	
l6891:	
;lcd(16).c: 117: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5457:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5457
opt asmopt_on

	line	118
	
l6893:	
;lcd(16).c: 118: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	119
;lcd(16).c: 119: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5467:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5467
opt asmopt_on

	line	120
	
l6895:	
;lcd(16).c: 120: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	122
;lcd(16).c: 122: temp.Val = b;
	movf	(lcd_put_byte@b),w
	movwf	(lcd_put_byte@temp)
	line	125
	
l6897:	
;lcd(16).c: 125: RD4 = temp.bits.b4;
	swapf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u3591
	goto	u3590
	
u3591:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u3604
u3590:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u3604:
	line	126
	
l6899:	
;lcd(16).c: 126: RD5 = temp.bits.b5;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u3611
	goto	u3610
	
u3611:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u3624
u3610:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u3624:
	line	127
	
l6901:	
;lcd(16).c: 127: RD6 = temp.bits.b6;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u3631
	goto	u3630
	
u3631:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u3644
u3630:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u3644:
	line	128
	
l6903:	
;lcd(16).c: 128: RD7 = temp.bits.b7;
	rlf	(lcd_put_byte@temp),w
	rlf	(lcd_put_byte@temp),w
	andlw	1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u3651
	goto	u3650
	
u3651:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u3664
u3650:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u3664:
	line	129
;lcd(16).c: 129: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5477:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5477
opt asmopt_on

	line	130
	
l6905:	
;lcd(16).c: 130: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	131
;lcd(16).c: 131: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5487:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5487
opt asmopt_on

	line	132
	
l6907:	
;lcd(16).c: 132: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	134
	
l6909:	
;lcd(16).c: 134: RD4 = temp.bits.b0;
	movf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u3671
	goto	u3670
	
u3671:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u3684
u3670:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u3684:
	line	135
	
l6911:	
;lcd(16).c: 135: RD5 = temp.bits.b1;
	rrf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u3691
	goto	u3690
	
u3691:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u3704
u3690:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u3704:
	line	136
	
l6913:	
;lcd(16).c: 136: RD6 = temp.bits.b2;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u3711
	goto	u3710
	
u3711:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u3724
u3710:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u3724:
	line	137
	
l6915:	
;lcd(16).c: 137: RD7 = temp.bits.b3;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u3731
	goto	u3730
	
u3731:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u3744
u3730:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u3744:
	line	138
;lcd(16).c: 138: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5497:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5497
opt asmopt_on

	line	139
	
l6917:	
;lcd(16).c: 139: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	140
;lcd(16).c: 140: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5507:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5507
opt asmopt_on

	line	141
	
l6919:	
;lcd(16).c: 141: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	142
	
l2131:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_put_byte
	__end_of_lcd_put_byte:
;; =============== function _lcd_put_byte ends ============

	signat	_lcd_put_byte,8312
	global	___awmod
psect	text783,local,class=CODE,delta=2
global __ptext783
__ptext783:

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
psect	text783
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 2
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l6743:	
	clrf	(___awmod@sign)
	line	9
	
l6745:	
	btfss	(___awmod@dividend+1),7
	goto	u3241
	goto	u3240
u3241:
	goto	l6751
u3240:
	line	10
	
l6747:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l6749:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l6751:	
	btfss	(___awmod@divisor+1),7
	goto	u3251
	goto	u3250
u3251:
	goto	l6755
u3250:
	line	14
	
l6753:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l6755:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3261
	goto	u3260
u3261:
	goto	l6771
u3260:
	line	16
	
l6757:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l6761
	line	18
	
l6759:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l6761:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3271
	goto	u3270
u3271:
	goto	l6759
u3270:
	line	22
	
l6763:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3285
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3285:
	skipc
	goto	u3281
	goto	u3280
u3281:
	goto	l6767
u3280:
	line	23
	
l6765:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l6767:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l6769:	
	decfsz	(___awmod@counter),f
	goto	u3291
	goto	u3290
u3291:
	goto	l6763
u3290:
	line	27
	
l6771:	
	movf	(___awmod@sign),w
	skipz
	goto	u3300
	goto	l6775
u3300:
	line	28
	
l6773:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l6775:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l3517:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___lldiv
psect	text784,local,class=CODE,delta=2
global __ptext784
__ptext784:

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
psect	text784
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 3
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l6717:	
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	10
	
l6719:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u3201
	goto	u3200
u3201:
	goto	l6739
u3200:
	line	11
	
l6721:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	12
	goto	l6725
	line	13
	
l6723:	
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	14
	incf	(___lldiv@counter),f
	line	12
	
l6725:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u3211
	goto	u3210
u3211:
	goto	l6723
u3210:
	line	17
	
l6727:	
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	18
	
l6729:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u3225
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u3225
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u3225
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u3225:
	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l6735
u3220:
	line	19
	
l6731:	
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
	
l6733:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	22
	
l6735:	
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	23
	
l6737:	
	decfsz	(___lldiv@counter),f
	goto	u3231
	goto	u3230
u3231:
	goto	l6727
u3230:
	line	25
	
l6739:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	26
	
l3478:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___ftge
psect	text785,local,class=CODE,delta=2
global __ptext785
__ptext785:

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
psect	text785
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 3
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l6697:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l6701
u3170:
	line	7
	
l6699:	
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
	
l6701:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u3181
	goto	u3180
u3181:
	goto	l6705
u3180:
	line	9
	
l6703:	
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
	
l6705:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l6707:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l6709:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u3195
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u3195
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u3195:
	skipnc
	goto	u3191
	goto	u3190
u3191:
	goto	l6713
u3190:
	
l6711:	
	clrc
	
	goto	l3468
	
l6713:	
	setc
	
	line	13
	
l3468:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text786,local,class=CODE,delta=2
global __ptext786
__ptext786:

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
psect	text786
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 3
; Regs used in ___ftneg: [wreg]
	line	17
	
l6689:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u3161
	goto	u3160
u3161:
	goto	l6693
u3160:
	line	18
	
l6691:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	line	19
	
l6693:	
	line	20
	
l3463:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___llmod
psect	text787,local,class=CODE,delta=2
global __ptext787
__ptext787:

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
psect	text787
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 3
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l6669:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u3121
	goto	u3120
u3121:
	goto	l6685
u3120:
	line	9
	
l6671:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	10
	goto	l6675
	line	11
	
l6673:	
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	line	12
	incf	(___llmod@counter),f
	line	10
	
l6675:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u3131
	goto	u3130
u3131:
	goto	l6673
u3130:
	line	15
	
l6677:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u3145
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u3145
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u3145
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u3145:
	skipc
	goto	u3141
	goto	u3140
u3141:
	goto	l6681
u3140:
	line	16
	
l6679:	
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
	
l6681:	
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	line	18
	
l6683:	
	decfsz	(___llmod@counter),f
	goto	u3151
	goto	u3150
u3151:
	goto	l6677
u3150:
	line	20
	
l6685:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	line	21
	
l3459:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	___awdiv
psect	text788,local,class=CODE,delta=2
global __ptext788
__ptext788:

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
psect	text788
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l6625:	
	clrf	(___awdiv@sign)
	line	10
	
l6627:	
	btfss	(___awdiv@divisor+1),7
	goto	u3051
	goto	u3050
u3051:
	goto	l6633
u3050:
	line	11
	
l6629:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l6631:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l6633:	
	btfss	(___awdiv@dividend+1),7
	goto	u3061
	goto	u3060
u3061:
	goto	l6639
u3060:
	line	15
	
l6635:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l6637:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l6639:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l6641:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3071
	goto	u3070
u3071:
	goto	l6661
u3070:
	line	20
	
l6643:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l6647
	line	22
	
l6645:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l6647:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3081
	goto	u3080
u3081:
	goto	l6645
u3080:
	line	26
	
l6649:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l6651:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3095
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3095:
	skipc
	goto	u3091
	goto	u3090
u3091:
	goto	l6657
u3090:
	line	28
	
l6653:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l6655:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l6657:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l6659:	
	decfsz	(___awdiv@counter),f
	goto	u3101
	goto	u3100
u3101:
	goto	l6649
u3100:
	line	34
	
l6661:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3110
	goto	l6665
u3110:
	line	35
	
l6663:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l6665:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l3449:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text789,local,class=CODE,delta=2
global __ptext789
__ptext789:

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
psect	text789
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 3
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l6587:	
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
	goto	u2971
	goto	u2970
u2971:
	goto	l6591
u2970:
	line	50
	
l6589:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l3409
	line	51
	
l6591:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2985:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2980:
	addlw	-1
	skipz
	goto	u2985
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l6593:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l6595:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l6597:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l6599:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l6601:	
	btfss	(___fttol@exp1),7
	goto	u2991
	goto	u2990
u2991:
	goto	l6611
u2990:
	line	57
	
l6603:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u3001
	goto	u3000
u3001:
	goto	l6607
u3000:
	goto	l6589
	line	60
	
l6607:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l6609:	
	incfsz	(___fttol@exp1),f
	goto	u3011
	goto	u3010
u3011:
	goto	l6607
u3010:
	goto	l6617
	line	63
	
l6611:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3021
	goto	u3020
u3021:
	goto	l3416
u3020:
	goto	l6589
	line	66
	
l6615:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l3416:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l6615
u3030:
	line	70
	
l6617:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3040
	goto	l6621
u3040:
	line	71
	
l6619:	
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
	
l6621:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l3409:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text790,local,class=CODE,delta=2
global __ptext790
__ptext790:

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
;;		___ftdiv
;;		___ftmul
;;		___altoft
;;		___lltoft
;; This function uses a non-reentrant model
;;
psect	text790
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 1
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l6559:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2900
	goto	l6563
u2900:
	
l6561:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2911
	goto	u2910
u2911:
	goto	l6569
u2910:
	line	65
	
l6563:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l3668
	line	67
	
l6567:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l6569:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l6567
u2920:
	goto	l6573
	line	71
	
l6571:	
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
	
l6573:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l6571
u2930:
	goto	l6577
	line	76
	
l6575:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l6577:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2941
	goto	u2940
u2941:
	goto	l6575
u2940:
	
l3677:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2951
	goto	u2950
u2951:
	goto	l3678
u2950:
	line	80
	
l6579:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l3678:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l6581:	
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
	
l6583:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2960
	goto	l3679
u2960:
	line	84
	
l6585:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l3679:	
	line	85
	line	86
	
l3668:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lbmod
psect	text791,local,class=CODE,delta=2
global __ptext791
__ptext791:

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
psect	text791
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
	
l6541:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l6543:	
	clrf	(___lbmod@rem)
	line	12
	
l6545:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u2875:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u2875
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l6547:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l6549:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u2881
	goto	u2880
u2881:
	goto	l6553
u2880:
	line	15
	
l6551:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l6553:	
	decfsz	(___lbmod@counter),f
	goto	u2891
	goto	u2890
u2891:
	goto	l6545
u2890:
	line	17
	
l6555:	
	movf	(___lbmod@rem),w
	line	18
	
l3338:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text792,local,class=CODE,delta=2
global __ptext792
__ptext792:

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
psect	text792
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
	
l6517:	
	clrf	(___lbdiv@quotient)
	line	10
	
l6519:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u2830
	goto	l6537
u2830:
	line	11
	
l6521:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l6525
	
l3327:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l6523:	
	incf	(___lbdiv@counter),f
	line	12
	
l6525:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l3327
u2840:
	line	16
	
l3329:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l6527:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u2851
	goto	u2850
u2851:
	goto	l6533
u2850:
	line	19
	
l6529:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l6531:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l6533:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l6535:	
	decfsz	(___lbdiv@counter),f
	goto	u2861
	goto	u2860
u2861:
	goto	l3329
u2860:
	line	25
	
l6537:	
	movf	(___lbdiv@quotient),w
	line	26
	
l3332:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___wmul
psect	text793,local,class=CODE,delta=2
global __ptext793
__ptext793:

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
psect	text793
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 3
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l6501:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l6503:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l6507
u2810:
	line	8
	
l6505:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l6507:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l6509:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l6511:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2821
	goto	u2820
u2821:
	goto	l6503
u2820:
	line	12
	
l6513:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l3302:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text794,local,class=CODE,delta=2
global __ptext794
__ptext794:

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
psect	text794
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
	
l6485:	
	clrf	(___bmul@product)
	line	7
	
l6487:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u2791
	goto	u2790
u2791:
	goto	l6491
u2790:
	line	8
	
l6489:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l6491:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l6493:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l6495:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2801
	goto	u2800
u2801:
	goto	l6487
u2800:
	line	12
	
l6497:	
	movf	(___bmul@product),w
	line	13
	
l3296:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	__div_to_l_
psect	text795,local,class=CODE,delta=2
global __ptext795
__ptext795:

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
psect	text795
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fldivl.c"
	line	61
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
	opt	stack 3
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l6439:	
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
	goto	u2701
	goto	u2700
u2701:
	goto	l6443
u2700:
	line	67
	
l6441:	
	clrf	(?__div_to_l_)
	clrf	(?__div_to_l_+1)
	clrf	(?__div_to_l_+2)
	clrf	(?__div_to_l_+3)
	goto	l3586
	line	68
	
l6443:	
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
	goto	u2711
	goto	u2710
u2711:
	goto	l6447
u2710:
	goto	l6441
	line	70
	
l6447:	
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
	
l6449:	
	clrf	(__div_to_l_@quot)
	clrf	(__div_to_l_@quot+1)
	clrf	(__div_to_l_@quot+2)
	clrf	(__div_to_l_@quot+3)
	line	75
	
l6451:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l6453:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l6455:	
	movlw	(020h)
	movwf	(__div_to_l_@cntr)
	line	79
	
l6457:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	80
	
l6459:	
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
	goto	u2725
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u2725
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u2725
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u2725:
	skipc
	goto	u2721
	goto	u2720
u2721:
	goto	l3589
u2720:
	line	81
	
l6461:	
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
	
l6463:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	83
	
l3589:	
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
	
l6465:	
	decfsz	(__div_to_l_@cntr),f
	goto	u2731
	goto	u2730
u2731:
	goto	l6457
u2730:
	
l3590:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u2741
	goto	u2740
u2741:
	goto	l6475
u2740:
	line	87
	
l6467:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u2751
	goto	u2750
u2751:
	goto	l6471
u2750:
	goto	l6441
	line	90
	
l6471:	
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	line	91
	
l6473:	
	incfsz	(__div_to_l_@exp1),f
	goto	u2761
	goto	u2760
u2761:
	goto	l6471
u2760:
	goto	l6481
	line	93
	
l6475:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u2771
	goto	u2770
u2771:
	goto	l3597
u2770:
	goto	l6441
	line	96
	
l6479:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	97
	decf	(__div_to_l_@exp1),f
	line	98
	
l3597:	
	line	95
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u2781
	goto	u2780
u2781:
	goto	l6479
u2780:
	line	100
	
l6481:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	line	101
	
l3586:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
;; =============== function __div_to_l_ ends ============

	signat	__div_to_l_,8316
	global	__tdiv_to_l_
psect	text796,local,class=CODE,delta=2
global __ptext796
__ptext796:

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
psect	text796
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdivl.c"
	line	61
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
	opt	stack 3
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l6391:	
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
	goto	u2611
	goto	u2610
u2611:
	goto	l6395
u2610:
	line	67
	
l6393:	
	clrf	(?__tdiv_to_l_)
	clrf	(?__tdiv_to_l_+1)
	clrf	(?__tdiv_to_l_+2)
	clrf	(?__tdiv_to_l_+3)
	goto	l3543
	line	68
	
l6395:	
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
	goto	u2621
	goto	u2620
u2621:
	goto	l3544
u2620:
	goto	l6393
	line	69
	
l3544:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l6399:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l6401:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	
l6403:	
	clrf	(__tdiv_to_l_@quot)
	clrf	(__tdiv_to_l_@quot+1)
	clrf	(__tdiv_to_l_@quot+2)
	clrf	(__tdiv_to_l_@quot+3)
	line	75
	
l6405:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l6407:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	(018h)
	movwf	(__tdiv_to_l_@cntr)
	line	79
	
l6409:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	80
	
l6411:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u2635
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u2635
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u2635:
	skipc
	goto	u2631
	goto	u2630
u2631:
	goto	l6417
u2630:
	line	81
	
l6413:	
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
	
l6415:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	line	84
	
l6417:	
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	line	85
	
l6419:	
	decfsz	(__tdiv_to_l_@cntr),f
	goto	u2641
	goto	u2640
u2641:
	goto	l6409
u2640:
	
l3547:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u2651
	goto	u2650
u2651:
	goto	l6429
u2650:
	line	87
	
l6421:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u2661
	goto	u2660
u2661:
	goto	l6425
u2660:
	goto	l6393
	line	90
	
l6425:	
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	line	91
	
l6427:	
	incfsz	(__tdiv_to_l_@exp1),f
	goto	u2671
	goto	u2670
u2671:
	goto	l6425
u2670:
	goto	l6435
	line	93
	
l6429:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u2681
	goto	u2680
u2681:
	goto	l3554
u2680:
	goto	l6393
	line	96
	
l6433:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	97
	decf	(__tdiv_to_l_@exp1),f
	line	98
	
l3554:	
	line	95
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u2691
	goto	u2690
u2691:
	goto	l6433
u2690:
	line	100
	
l6435:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	line	101
	
l3543:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
;; =============== function __tdiv_to_l_ ends ============

	signat	__tdiv_to_l_,8316
	global	_isdigit
psect	text797,local,class=CODE,delta=2
global __ptext797
__ptext797:

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
psect	text797
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
	
l6379:	
	clrf	(_isdigit$3673)
	
l6381:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u2591
	goto	u2590
u2591:
	goto	l6387
u2590:
	
l6383:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u2601
	goto	u2600
u2601:
	goto	l6387
u2600:
	
l6385:	
	clrf	(_isdigit$3673)
	incf	(_isdigit$3673),f
	
l6387:	
	rrf	(_isdigit$3673),w
	
	line	15
	
l3281:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_isprint
psect	text798,local,class=CODE,delta=2
global __ptext798
__ptext798:

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
psect	text798
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
	
l6367:	
	clrf	(_isprint$3676)
	
l6369:	
	movlw	(07Fh)
	subwf	(isprint@c),w
	skipnc
	goto	u2571
	goto	u2570
u2571:
	goto	l6375
u2570:
	
l6371:	
	movlw	(020h)
	subwf	(isprint@c),w
	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l6375
u2580:
	
l6373:	
	clrf	(_isprint$3676)
	incf	(_isprint$3676),f
	
l6375:	
	rrf	(_isprint$3676),w
	
	line	15
	
l3286:	
	return
	opt stack 0
GLOBAL	__end_of_isprint
	__end_of_isprint:
;; =============== function _isprint ends ============

	signat	_isprint,4216
	global	_ngat
psect	text799,local,class=CODE,delta=2
global __ptext799
__ptext799:

;; *************** function _ngat *****************
;; Defined at:
;;		line 64 in file "D:\TTVXL\Project TTVXL\BT03week12ttvxl\BT03week12ttvxl.c"
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
psect	text799
	file	"D:\TTVXL\Project TTVXL\BT03week12ttvxl\BT03week12ttvxl.c"
	line	64
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
psect	text799
	line	65
	
i1l6351:	
;BT03week12ttvxl.c: 65: TMR0 = 7;
	movlw	(07h)
	movwf	(1)	;volatile
	line	67
	
i1l6353:	
;BT03week12ttvxl.c: 67: if(T0IF)
	btfss	(90/8),(90)&7
	goto	u255_21
	goto	u255_20
u255_21:
	goto	i1l6365
u255_20:
	line	69
	
i1l6355:	
;BT03week12ttvxl.c: 68: {
;BT03week12ttvxl.c: 69: dem++;
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
	line	70
	
i1l6357:	
;BT03week12ttvxl.c: 70: if(dem == 500){
	movlw	0x43
	xorwf	(_dem+2),w
	skipz
	goto	u256_25
	movlw	0xfa
	xorwf	(_dem+1),w
	skipz
	goto	u256_25
	movlw	0x0
	xorwf	(_dem),w
u256_25:
	skipz
	goto	u256_21
	goto	u256_20
u256_21:
	goto	i1l6365
u256_20:
	line	71
	
i1l6359:	
;BT03week12ttvxl.c: 71: dem= 0;
	clrf	(_dem)
	clrf	(_dem+1)
	clrf	(_dem+2)
	line	72
;BT03week12ttvxl.c: 72: xung = TMR1;
	movf	(14),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_xung)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(14+1),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	((_xung)^080h)+1
	clrf	2+((_xung)^080h)
	clrf	3+((_xung)^080h)
	line	73
	
i1l6361:	
;BT03week12ttvxl.c: 73: TMR1H=0; TMR1L=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(15)	;volatile
	
i1l6363:	
	clrf	(14)	;volatile
	line	76
	
i1l6365:	
;BT03week12ttvxl.c: 74: }
;BT03week12ttvxl.c: 75: }
;BT03week12ttvxl.c: 76: T0IF = 0;
	bcf	(90/8),(90)&7
	line	86
	
i1l1064:	
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
psect	text800,local,class=CODE,delta=2
global __ptext800
__ptext800:

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
psect	text800
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_ofi1___ftadd
	__size_ofi1___ftadd	equ	__end_ofi1___ftadd-i1___ftadd
	
i1___ftadd:	
	opt	stack 0
; Regs used in i1___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
i1l6779:	
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
	
i1l6781:	
	movf	(i1___ftadd@exp1),w
	skipz
	goto	u331_20
	goto	i1l6787
u331_20:
	
i1l6783:	
	movf	(i1___ftadd@exp2),w
	subwf	(i1___ftadd@exp1),w
	skipnc
	goto	u332_21
	goto	u332_20
u332_21:
	goto	i1l6791
u332_20:
	
i1l6785:	
	movf	(i1___ftadd@exp2),w
	movwf	(??i1___ftadd+0)+0
	movf	(i1___ftadd@exp1),w
	subwf	(??i1___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??i1___ftadd+0)+0,w
	skipc
	goto	u333_21
	goto	u333_20
u333_21:
	goto	i1l6791
u333_20:
	line	93
	
i1l6787:	
	movf	(i1___ftadd@f2),w
	movwf	(?i1___ftadd)
	movf	(i1___ftadd@f2+1),w
	movwf	(?i1___ftadd+1)
	movf	(i1___ftadd@f2+2),w
	movwf	(?i1___ftadd+2)
	goto	i1l3346
	line	94
	
i1l6791:	
	movf	(i1___ftadd@exp2),w
	skipz
	goto	u334_20
	goto	i1l3349
u334_20:
	
i1l6793:	
	movf	(i1___ftadd@exp1),w
	subwf	(i1___ftadd@exp2),w
	skipnc
	goto	u335_21
	goto	u335_20
u335_21:
	goto	i1l6797
u335_20:
	
i1l6795:	
	movf	(i1___ftadd@exp1),w
	movwf	(??i1___ftadd+0)+0
	movf	(i1___ftadd@exp2),w
	subwf	(??i1___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??i1___ftadd+0)+0,w
	skipc
	goto	u336_21
	goto	u336_20
u336_21:
	goto	i1l6797
u336_20:
	
i1l3349:	
	line	95
	goto	i1l3346
	line	96
	
i1l6797:	
	movlw	(06h)
	movwf	(i1___ftadd@sign)
	line	97
	
i1l6799:	
	btfss	(i1___ftadd@f1+2),(23)&7
	goto	u337_21
	goto	u337_20
u337_21:
	goto	i1l3350
u337_20:
	line	98
	
i1l6801:	
	bsf	(i1___ftadd@sign)+(7/8),(7)&7
	
i1l3350:	
	line	99
	btfss	(i1___ftadd@f2+2),(23)&7
	goto	u338_21
	goto	u338_20
u338_21:
	goto	i1l3351
u338_20:
	line	100
	
i1l6803:	
	bsf	(i1___ftadd@sign)+(6/8),(6)&7
	
i1l3351:	
	line	101
	bsf	(i1___ftadd@f1)+(15/8),(15)&7
	line	102
	
i1l6805:	
	movlw	0FFh
	andwf	(i1___ftadd@f1),f
	movlw	0FFh
	andwf	(i1___ftadd@f1+1),f
	movlw	0
	andwf	(i1___ftadd@f1+2),f
	line	103
	
i1l6807:	
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
	goto	u339_21
	goto	u339_20
u339_21:
	goto	i1l6819
u339_20:
	line	110
	
i1l6809:	
	clrc
	rlf	(i1___ftadd@f2),f
	rlf	(i1___ftadd@f2+1),f
	rlf	(i1___ftadd@f2+2),f
	line	111
	decf	(i1___ftadd@exp2),f
	line	112
	
i1l6811:	
	movf	(i1___ftadd@exp2),w
	xorwf	(i1___ftadd@exp1),w
	skipnz
	goto	u340_21
	goto	u340_20
u340_21:
	goto	i1l6817
u340_20:
	
i1l6813:	
	decf	(i1___ftadd@sign),f
	movf	((i1___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u341_21
	goto	u341_20
u341_21:
	goto	i1l6809
u341_20:
	goto	i1l6817
	line	114
	
i1l6815:	
	clrc
	rrf	(i1___ftadd@f1+2),f
	rrf	(i1___ftadd@f1+1),f
	rrf	(i1___ftadd@f1),f
	line	115
	incf	(i1___ftadd@exp1),f
	line	113
	
i1l6817:	
	movf	(i1___ftadd@exp1),w
	xorwf	(i1___ftadd@exp2),w
	skipz
	goto	u342_21
	goto	u342_20
u342_21:
	goto	i1l6815
u342_20:
	goto	i1l3360
	line	117
	
i1l6819:	
	movf	(i1___ftadd@exp1),w
	subwf	(i1___ftadd@exp2),w
	skipnc
	goto	u343_21
	goto	u343_20
u343_21:
	goto	i1l3360
u343_20:
	line	121
	
i1l6821:	
	clrc
	rlf	(i1___ftadd@f1),f
	rlf	(i1___ftadd@f1+1),f
	rlf	(i1___ftadd@f1+2),f
	line	122
	decf	(i1___ftadd@exp1),f
	line	123
	
i1l6823:	
	movf	(i1___ftadd@exp2),w
	xorwf	(i1___ftadd@exp1),w
	skipnz
	goto	u344_21
	goto	u344_20
u344_21:
	goto	i1l6829
u344_20:
	
i1l6825:	
	decf	(i1___ftadd@sign),f
	movf	((i1___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u345_21
	goto	u345_20
u345_21:
	goto	i1l6821
u345_20:
	goto	i1l6829
	line	125
	
i1l6827:	
	clrc
	rrf	(i1___ftadd@f2+2),f
	rrf	(i1___ftadd@f2+1),f
	rrf	(i1___ftadd@f2),f
	line	126
	incf	(i1___ftadd@exp2),f
	line	124
	
i1l6829:	
	movf	(i1___ftadd@exp1),w
	xorwf	(i1___ftadd@exp2),w
	skipz
	goto	u346_21
	goto	u346_20
u346_21:
	goto	i1l6827
u346_20:
	line	129
	
i1l3360:	
	btfss	(i1___ftadd@sign),(7)&7
	goto	u347_21
	goto	u347_20
u347_21:
	goto	i1l6835
u347_20:
	line	131
	
i1l6831:	
	movlw	0FFh
	xorwf	(i1___ftadd@f1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f1+2),f
	line	132
	
i1l6833:	
	incf	(i1___ftadd@f1),f
	skipnz
	incf	(i1___ftadd@f1+1),f
	skipnz
	incf	(i1___ftadd@f1+2),f
	line	134
	
i1l6835:	
	btfss	(i1___ftadd@sign),(6)&7
	goto	u348_21
	goto	u348_20
u348_21:
	goto	i1l6841
u348_20:
	line	136
	
i1l6837:	
	movlw	0FFh
	xorwf	(i1___ftadd@f2),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+2),f
	line	137
	
i1l6839:	
	incf	(i1___ftadd@f2),f
	skipnz
	incf	(i1___ftadd@f2+1),f
	skipnz
	incf	(i1___ftadd@f2+2),f
	line	139
	
i1l6841:	
	clrf	(i1___ftadd@sign)
	line	140
	
i1l6843:	
	movf	(i1___ftadd@f1),w
	addwf	(i1___ftadd@f2),f
	movf	(i1___ftadd@f1+1),w
	clrz
	skipnc
	incf	(i1___ftadd@f1+1),w
	skipnz
	goto	u349_21
	addwf	(i1___ftadd@f2+1),f
u349_21:
	movf	(i1___ftadd@f1+2),w
	clrz
	skipnc
	incf	(i1___ftadd@f1+2),w
	skipnz
	goto	u349_22
	addwf	(i1___ftadd@f2+2),f
u349_22:

	line	141
	
i1l6845:	
	btfss	(i1___ftadd@f2+2),(23)&7
	goto	u350_21
	goto	u350_20
u350_21:
	goto	i1l6853
u350_20:
	line	142
	
i1l6847:	
	movlw	0FFh
	xorwf	(i1___ftadd@f2),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+2),f
	line	143
	
i1l6849:	
	incf	(i1___ftadd@f2),f
	skipnz
	incf	(i1___ftadd@f2+1),f
	skipnz
	incf	(i1___ftadd@f2+2),f
	line	144
	
i1l6851:	
	clrf	(i1___ftadd@sign)
	incf	(i1___ftadd@sign),f
	line	146
	
i1l6853:	
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
	
i1l3346:	
	return
	opt stack 0
GLOBAL	__end_ofi1___ftadd
	__end_ofi1___ftadd:
;; =============== function i1___ftadd ends ============

	signat	i1___ftadd,91
	global	i1___ftpack
psect	text801,local,class=CODE,delta=2
global __ptext801
__ptext801:

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
psect	text801
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_ofi1___ftpack
	__size_ofi1___ftpack	equ	__end_ofi1___ftpack-i1___ftpack
	
i1___ftpack:	
	opt	stack 0
; Regs used in i1___ftpack: [wreg+status,2+status,0]
	line	64
	
i1l6857:	
	movf	(i1___ftpack@exp),w
	skipz
	goto	u351_20
	goto	i1l6861
u351_20:
	
i1l6859:	
	movf	(i1___ftpack@arg+2),w
	iorwf	(i1___ftpack@arg+1),w
	iorwf	(i1___ftpack@arg),w
	skipz
	goto	u352_21
	goto	u352_20
u352_21:
	goto	i1l6867
u352_20:
	line	65
	
i1l6861:	
	clrf	(?i1___ftpack)
	clrf	(?i1___ftpack+1)
	clrf	(?i1___ftpack+2)
	goto	i1l3668
	line	67
	
i1l6865:	
	incf	(i1___ftpack@exp),f
	line	68
	clrc
	rrf	(i1___ftpack@arg+2),f
	rrf	(i1___ftpack@arg+1),f
	rrf	(i1___ftpack@arg),f
	line	66
	
i1l6867:	
	movlw	low highword(0FE0000h)
	andwf	(i1___ftpack@arg+2),w
	btfss	status,2
	goto	u353_21
	goto	u353_20
u353_21:
	goto	i1l6865
u353_20:
	goto	i1l6871
	line	71
	
i1l6869:	
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
	
i1l6871:	
	movlw	low highword(0FF0000h)
	andwf	(i1___ftpack@arg+2),w
	btfss	status,2
	goto	u354_21
	goto	u354_20
u354_21:
	goto	i1l6869
u354_20:
	goto	i1l6875
	line	76
	
i1l6873:	
	decf	(i1___ftpack@exp),f
	line	77
	clrc
	rlf	(i1___ftpack@arg),f
	rlf	(i1___ftpack@arg+1),f
	rlf	(i1___ftpack@arg+2),f
	line	75
	
i1l6875:	
	btfss	(i1___ftpack@arg+1),(15)&7
	goto	u355_21
	goto	u355_20
u355_21:
	goto	i1l6873
u355_20:
	
i1l3677:	
	line	79
	btfsc	(i1___ftpack@exp),(0)&7
	goto	u356_21
	goto	u356_20
u356_21:
	goto	i1l3678
u356_20:
	line	80
	
i1l6877:	
	bcf	(i1___ftpack@arg)+(15/8),(15)&7
	
i1l3678:	
	line	81
	clrc
	rrf	(i1___ftpack@exp),f
	line	82
	
i1l6879:	
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
	
i1l6881:	
	movf	(i1___ftpack@sign),w
	skipz
	goto	u357_20
	goto	i1l3679
u357_20:
	line	84
	
i1l6883:	
	bsf	(i1___ftpack@arg)+(23/8),(23)&7
	
i1l3679:	
	line	85
	line	86
	
i1l3668:	
	return
	opt stack 0
GLOBAL	__end_ofi1___ftpack
	__end_ofi1___ftpack:
;; =============== function i1___ftpack ends ============

	signat	i1___ftpack,91
psect	text802,local,class=CODE,delta=2
global __ptext802
__ptext802:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
