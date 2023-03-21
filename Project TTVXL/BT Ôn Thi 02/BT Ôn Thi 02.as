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
# 7 "D:\TTVXL\Project TTVXL\BT Ôn Thi 02\BT Ôn Thi 02.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "D:\TTVXL\Project TTVXL\BT Ôn Thi 02\BT Ôn Thi 02.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_tx
	FNCALL	_main,_rx
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftmul
	FNCALL	_main,_sprintf
	FNCALL	_main,_send_string
	FNCALL	_sprintf,_isdigit
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,___ftge
	FNCALL	_sprintf,___ftneg
	FNCALL	_sprintf,___awdiv
	FNCALL	_sprintf,_scale
	FNCALL	_sprintf,___ftmul
	FNCALL	_sprintf,_fround
	FNCALL	_sprintf,___ftadd
	FNCALL	_sprintf,___fttol
	FNCALL	_sprintf,__div_to_l_
	FNCALL	_sprintf,__tdiv_to_l_
	FNCALL	_sprintf,___lltoft
	FNCALL	_sprintf,___ftsub
	FNCALL	_sprintf,___lldiv
	FNCALL	_sprintf,___llmod
	FNCALL	___ftsub,___ftadd
	FNCALL	_scale,___awmod
	FNCALL	_scale,___awdiv
	FNCALL	_scale,___ftmul
	FNCALL	_scale,___bmul
	FNCALL	_fround,___lbmod
	FNCALL	_fround,___bmul
	FNCALL	_fround,___lbdiv
	FNCALL	_fround,___ftmul
	FNCALL	___lltoft,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_send_string,_send_char
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
	global	_xung
	global	_v
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_v:
       ds      3

	global	_TMR1
_TMR1	set	14
	global	_TMR0
_TMR0	set	1
	global	_TXREG
_TXREG	set	25
	global	_CREN
_CREN	set	196
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RCIF
_RCIF	set	101
	global	_RE0
_RE0	set	72
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
	global	_TMR1CS
_TMR1CS	set	129
	global	_TMR1GE
_TMR1GE	set	134
	global	_TMR1ON
_TMR1ON	set	128
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_SPBRGH
_SPBRGH	set	154
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
	global	_TRISE0
_TRISE0	set	1096
	global	_TX9
_TX9	set	1222
	global	_TXEN
_TXEN	set	1221
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	global	_BRG16
_BRG16	set	3131
psect	strings
	
STR_1:	
	retlw	118	;'v'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	51	;'3'
	retlw	46	;'.'
	retlw	50	;'2'
	retlw	102	;'f'
	retlw	0
psect	strings
	file	"BT Ôn Thi 02.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_dem:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_xung:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	_sprintf$1873
_sprintf$1873:	; 4 bytes @ 0x0
	ds	4
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x4
	ds	1
	global	sprintf@integ
sprintf@integ:	; 3 bytes @ 0x5
	ds	3
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x8
	ds	4
	global	sprintf@flag
sprintf@flag:	; 2 bytes @ 0xC
	ds	2
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0xE
	ds	2
	global	sprintf@exp
sprintf@exp:	; 2 bytes @ 0x10
	ds	2
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x12
	ds	1
	global	sprintf@fval
sprintf@fval:	; 3 bytes @ 0x13
	ds	3
	global	sprintf@prec
sprintf@prec:	; 2 bytes @ 0x16
	ds	2
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x18
	ds	1
	global	main@data_tx
main@data_tx:	; 10 bytes @ 0x19
	ds	10
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_tx
?_tx:	; 0 bytes @ 0x0
	global	?_rx
?_rx:	; 0 bytes @ 0x0
	global	?_send_string
?_send_string:	; 0 bytes @ 0x0
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ngat
?_ngat:	; 0 bytes @ 0x0
	global	??_ngat
??_ngat:	; 0 bytes @ 0x0
	global	?_send_char
?_send_char:	; 0 bytes @ 0x0
	ds	2
	global	??_tx
??_tx:	; 0 bytes @ 0x2
	global	??_rx
??_rx:	; 0 bytes @ 0x2
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x2
	global	??_send_char
??_send_char:	; 0 bytes @ 0x2
	global	?___ftge
?___ftge:	; 1 bit 
	global	?___lbmod
?___lbmod:	; 1 bytes @ 0x2
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
	global	send_char@data
send_char@data:	; 1 bytes @ 0x2
	global	_isdigit$2381
_isdigit$2381:	; 1 bytes @ 0x2
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x2
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
	global	??_send_string
??_send_string:	; 0 bytes @ 0x3
	global	??___lbmod
??___lbmod:	; 0 bytes @ 0x3
	global	send_string@s
send_string@s:	; 1 bytes @ 0x3
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x3
	ds	1
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x4
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x4
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x4
	ds	1
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0x5
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
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x7
	global	?___lbdiv
?___lbdiv:	; 1 bytes @ 0x7
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x7
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x7
	ds	1
	global	??___lbdiv
??___lbdiv:	; 0 bytes @ 0x8
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x8
	global	??___ftge
??___ftge:	; 0 bytes @ 0x8
	global	?___bmul
?___bmul:	; 1 bytes @ 0x8
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x8
	ds	1
	global	??___bmul
??___bmul:	; 0 bytes @ 0x9
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xA
	global	??_fround
??_fround:	; 0 bytes @ 0xA
	global	??___ftsub
??___ftsub:	; 0 bytes @ 0xA
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xA
	global	??___llmod
??___llmod:	; 0 bytes @ 0xA
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0xA
	global	??___lltoft
??___lltoft:	; 0 bytes @ 0xA
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??__tdiv_to_l_
??__tdiv_to_l_:	; 0 bytes @ 0x0
	global	??__div_to_l_
??__div_to_l_:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x0
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x0
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x0
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x0
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x0
	ds	1
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x1
	ds	1
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x3
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x3
	global	__tdiv_to_l_@quot
__tdiv_to_l_@quot:	; 4 bytes @ 0x3
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x4
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x4
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0x4
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x4
	ds	1
	global	?___llmod
?___llmod:	; 4 bytes @ 0x5
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x5
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	1
	global	__tdiv_to_l_@cntr
__tdiv_to_l_@cntr:	; 1 bytes @ 0x7
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x7
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x8
	global	__tdiv_to_l_@exp1
__tdiv_to_l_@exp1:	; 1 bytes @ 0x8
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x8
	global	__div_to_l_@quot
__div_to_l_@quot:	; 4 bytes @ 0x8
	ds	1
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x9
	ds	1
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0xA
	ds	2
	global	??___fttol
??___fttol:	; 0 bytes @ 0xC
	global	__div_to_l_@cntr
__div_to_l_@cntr:	; 1 bytes @ 0xC
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0xD
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0xD
	global	__div_to_l_@exp1
__div_to_l_@exp1:	; 1 bytes @ 0xD
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0xE
	ds	1
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0xF
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x10
	ds	1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x11
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x12
	ds	2
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
	global	_scale$2808
_scale$2808:	; 3 bytes @ 0x2B
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
	global	_fround$2807
_fround$2807:	; 3 bytes @ 0x33
	ds	3
	global	_fround$2806
_fround$2806:	; 3 bytes @ 0x36
	ds	3
	global	fround@prec
fround@prec:	; 1 bytes @ 0x39
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x3A
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x3A
	ds	4
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0x3E
	ds	5
;;Data sizes: Strings 8, constant 118, data 0, bss 4, persistent 3 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      12
;; BANK0           80     67      72
;; BANK1           80     35      35
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
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?_scale	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_fround	unsigned int  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 8
;;		 -> STR_1(CODE[8]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 10
;;		 -> main@data_tx(BANK1[10]), 
;;
;; ?_sprintf	int  size(1) Largest target is 0
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), 
;;
;; S1862$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; send_string@s	PTR const unsigned char  size(1) Largest target is 10
;;		 -> main@data_tx(BANK1[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _sprintf->___lldiv
;;   ___lltoft->___ftpack
;;   ___awtoft->___ftpack
;;   ___ftmul->___ftpack
;;   ___ftdiv->___ftpack
;;   ___ftadd->___ftpack
;;   _send_string->_send_char
;;   ___llmod->___lldiv
;;   ___awdiv->___awmod
;;   ___fttol->___ftpack
;;   ___lbdiv->___lbmod
;;   ___bmul->___lbdiv
;;
;; Critical Paths under _ngat in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_sprintf
;;   _sprintf->_fround
;;   ___ftsub->___ftadd
;;   _scale->___ftmul
;;   _fround->___ftadd
;;   ___ftmul->___fttol
;;   ___ftdiv->___awtoft
;;   ___ftadd->___ftmul
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
;;   _main->_sprintf
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
;; (0) _main                                                13    13      0   17146
;;                                             25 BANK1     10    10      0
;;                                 _tx
;;                                 _rx
;;                           ___awtoft
;;                            ___ftdiv
;;                            ___ftmul
;;                            _sprintf
;;                        _send_string
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                             38    34      4   14939
;;                                             58 BANK0      9     5      4
;;                                              0 BANK1     25    25      0
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
;; (2) ___ftsub                                              6     0      6    1602
;;                                             48 BANK0      6     0      6
;;                            ___ftadd
;;                           ___lltoft (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _scale                                               14    11      3    2483
;;                                             36 BANK0     11     8      3
;;                            ___awmod
;;                            ___awdiv
;;                            ___ftmul
;;                             ___bmul
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _fround                                              13    10      3    1799
;;                                             48 BANK0     10     7      3
;;                            ___lbmod
;;                             ___bmul
;;                            ___lbdiv
;;                            ___ftmul
;;                            ___ftadd (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lltoft                                             5     1      4     414
;;                                              0 BANK0      5     1      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (1) ___awtoft                                             4     1      3     445
;;                                              0 BANK0      4     1      3
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
;;                                              4 BANK0     15     9      6
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
;; (1) _send_string                                          1     1      0      96
;;                                              3 COMMON     1     1      0
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              6     2      4     433
;;                                              2 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lldiv                                             13     5      8     241
;;                                              2 COMMON     8     0      8
;;                                              0 BANK0      5     5      0
;; ---------------------------------------------------------------------------------
;; (2) ___ftge                                               6     0      6     198
;;                                              2 COMMON     6     0      6
;; ---------------------------------------------------------------------------------
;; (2) ___ftneg                                              3     0      3      65
;;                                              2 COMMON     3     0      3
;; ---------------------------------------------------------------------------------
;; (2) ___llmod                                              9     1      8     232
;;                                              5 BANK0      9     1      8
;;                            ___lldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              8     4      4     445
;;                                              0 BANK0      8     4      4
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___fttol                                             13     9      4     371
;;                                              8 BANK0     13     9      4
;;                           ___ftpack (ARG)
;;                            ___awmod (ARG)
;;                            ___awdiv (ARG)
;;                             ___bmul (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftpack                                             8     3      5     312
;;                                              2 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (3) ___lbmod                                              5     4      1     232
;;                                              2 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (3) ___lbdiv                                              4     3      1     241
;;                                              7 COMMON     1     0      1
;;                                              0 BANK0      3     3      0
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4     136
;;                                              2 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (3) ___bmul                                               3     2      1     108
;;                                              8 COMMON     1     0      1
;;                                              3 BANK0      2     2      0
;;                            ___lbmod (ARG)
;;                            ___lbdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) __div_to_l_                                          20    14      6     673
;;                                              2 COMMON     6     0      6
;;                                              0 BANK0     14    14      0
;; ---------------------------------------------------------------------------------
;; (2) __tdiv_to_l_                                         15     9      6     454
;;                                              2 COMMON     6     0      6
;;                                              0 BANK0      9     9      0
;; ---------------------------------------------------------------------------------
;; (2) _isdigit                                              2     2      0      99
;;                                              2 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _send_char                                            1     1      0      31
;;                                              2 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _rx                                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _tx                                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (5) _ngat                                                 2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _tx
;;   _rx
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
;;   _sprintf
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
;;   _send_string
;;     _send_char
;;
;; _ngat (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      A       C       1       85.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0      77       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     43      48       5       90.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     23      23       7       43.8%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      7B      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 20 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 02\BT Ôn Thi 02.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data_tx        10   25[BANK1 ] unsigned char [10]
;;  gocquay_star    3    0        unsigned char [3]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 140/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      10       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0      10       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_tx
;;		_rx
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;;		_sprintf
;;		_send_string
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 02\BT Ôn Thi 02.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	21
	
l6817:	
;BT Ôn Thi 02.c: 21: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	22
	
l6819:	
;BT Ôn Thi 02.c: 22: TRISE0 = 0; RE0 = 1;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1096/8)^080h,(1096)&7
	
l6821:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(72/8),(72)&7
	line	25
	
l6823:	
;BT Ôn Thi 02.c: 25: T0CS = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1037/8)^080h,(1037)&7
	line	26
	
l6825:	
;BT Ôn Thi 02.c: 26: PSA = 0;
	bcf	(1035/8)^080h,(1035)&7
	line	27
	
l6827:	
;BT Ôn Thi 02.c: 27: PS2 = 0; PS1 = 1;PS0 = 0;
	bcf	(1034/8)^080h,(1034)&7
	
l6829:	
	bsf	(1033/8)^080h,(1033)&7
	
l6831:	
	bcf	(1032/8)^080h,(1032)&7
	line	28
	
l6833:	
;BT Ôn Thi 02.c: 28: TMR0 = 6;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	29
	
l6835:	
;BT Ôn Thi 02.c: 29: T0IE = 1; T0IF = 0; GIE = 1; PEIE =1;
	bsf	(93/8),(93)&7
	
l6837:	
	bcf	(90/8),(90)&7
	
l6839:	
	bsf	(95/8),(95)&7
	
l6841:	
	bsf	(94/8),(94)&7
	line	32
	
l6843:	
;BT Ôn Thi 02.c: 32: TMR1CS = 1;
	bsf	(129/8),(129)&7
	line	33
	
l6845:	
;BT Ôn Thi 02.c: 33: T1CKPS1 = 0;T1CKPS0 = 0;
	bcf	(133/8),(133)&7
	
l6847:	
	bcf	(132/8),(132)&7
	line	34
	
l6849:	
;BT Ôn Thi 02.c: 34: T1SYNC = 1;
	bsf	(130/8),(130)&7
	line	35
	
l6851:	
;BT Ôn Thi 02.c: 35: TMR1 = 0;
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	36
	
l6853:	
;BT Ôn Thi 02.c: 36: TMR1GE = 0; TMR1ON = 1;
	bcf	(134/8),(134)&7
	
l6855:	
	bsf	(128/8),(128)&7
	line	40
	
l6857:	
;BT Ôn Thi 02.c: 40: tx();
	fcall	_tx
	line	41
	
l6859:	
;BT Ôn Thi 02.c: 41: rx();
	fcall	_rx
	line	47
	
l6861:	
;BT Ôn Thi 02.c: 46: {
;BT Ôn Thi 02.c: 47: v = (xung/374.0)*10.0*60.0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	movlw	0x16
	movwf	(?___ftmul+1)
	movlw	0x44
	movwf	(?___ftmul+2)
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0xbb
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
	movwf	(_v)
	movf	(1+(?___ftmul)),w
	movwf	(_v+1)
	movf	(2+(?___ftmul)),w
	movwf	(_v+2)
	line	48
	
l6863:	
;BT Ôn Thi 02.c: 48: sprintf(data_tx,"v:%3.2f",v);
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(_v),w
	movwf	0+(?_sprintf)+01h
	movf	(_v+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_v+2),w
	movwf	2+(?_sprintf)+01h
	movlw	(main@data_tx)&0ffh
	fcall	_sprintf
	line	49
	
l6865:	
;BT Ôn Thi 02.c: 49: send_string(data_tx);
	movlw	(main@data_tx)&0ffh
	fcall	_send_string
	goto	l6861
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	51
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_sprintf
psect	text775,local,class=CODE,delta=2
global __ptext775
__ptext775:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> main@data_tx(10), 
;;  f               1   58[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(8), 
;; Auto vars:     Size  Location     Type
;;  sp              1   18[BANK1 ] PTR unsigned char 
;;		 -> main@data_tx(10), 
;;  _val            4    8[BANK1 ] struct .
;;  fval            3   19[BANK1 ] struct .
;;  integ           3    5[BANK1 ] struct .
;;  ival            3    0        struct .
;;  prec            2   22[BANK1 ] int 
;;  exp             2   16[BANK1 ] int 
;;  width           2   14[BANK1 ] int 
;;  flag            2   12[BANK1 ] unsigned short 
;;  c               1   24[BANK1 ] char 
;;  ap              1    4[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  d               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   58[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0      25       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0       9      25       0       0
;;Total ram usage:       34 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
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
psect	text775
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	488
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 3
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	line	537
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@sp)^080h
	
l6561:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)^080h
	line	540
	goto	l6811
	line	542
	
l6563:	
	movf	(sprintf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u4381
	goto	u4380
u4381:
	goto	l6569
u4380:
	line	545
	
l6565:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(sprintf@c)^080h,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6567:	
	incf	(sprintf@sp)^080h,f
	line	546
	goto	l6811
	line	550
	
l6569:	
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	552
	clrf	(sprintf@flag)^080h
	clrf	(sprintf@flag+1)^080h
	line	601
	
l6571:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u4391
	goto	u4390
u4391:
	goto	l6581
u4390:
	line	602
	
l6573:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	604
	
l6575:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@width+1)^080h,w
	movwf	(?___wmul+1)
	movf	(sprintf@width)^080h,w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	movwf	(??_sprintf+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_sprintf+0)+0
	movf	0+(??_sprintf+0)+0,w
	addlw	low(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@width)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(sprintf@width)^080h
	
l6577:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(sprintf@f),f
	line	605
	
l6579:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u4401
	goto	u4400
u4401:
	goto	l6575
u4400:
	line	614
	
l6581:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u4411
	goto	u4410
u4411:
	goto	l6595
u4410:
	line	615
	
l6583:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(sprintf@flag)^080h+(14/8),(14)&7
	line	616
	
l6585:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(sprintf@f),f
	line	624
	
l6587:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	625
	goto	l6593
	line	626
	
l6589:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@prec+1)^080h,w
	movwf	(?___wmul+1)
	movf	(sprintf@prec)^080h,w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	movwf	(??_sprintf+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_sprintf+0)+0
	movf	0+(??_sprintf+0)+0,w
	addlw	low(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@prec)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(sprintf@prec)^080h
	
l6591:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(sprintf@f),f
	line	625
	
l6593:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u4421
	goto	u4420
u4421:
	goto	l6589
u4420:
	goto	l6601
	line	629
	
l6595:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	631
	
l6597:	
	bsf	(sprintf@flag)^080h+(12/8),(12)&7
	goto	l6601
	line	665
	
l1122:	
	line	666
	bsf	(sprintf@flag)^080h+(10/8),(10)&7
	line	667
	goto	l6603
	line	638
	
l6601:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	incf	(sprintf@f),f
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@c)^080h
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 102
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; jumptable            260     6 (fixed)
; rangetable           107     6 (fixed)
; spacedrange          212     9 (fixed)
; locatedrange         103     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l6813
	xorlw	102^0	; case 102
	skipnz
	goto	l1122
	goto	l6811
	opt asmopt_on

	line	828
	
l6603:	
	movlw	low(0700h)
	andwf	(sprintf@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	high(0700h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(sprintf@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(??_sprintf+0)+0
	movf	1+(??_sprintf+0)+0,w
	iorwf	0+(??_sprintf+0)+0,w
	skipnz
	goto	u4431
	goto	u4430
u4431:
	goto	l6763
u4430:
	line	830
	
l6605:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(sprintf@flag+1)^080h,(12)&7
	goto	u4441
	goto	u4440
u4441:
	goto	l6609
u4440:
	line	832
	
l6607:	
	movlw	06h
	movwf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	833
	
l6609:	
	movf	(sprintf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@fval)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@fval+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@fval+2)^080h
	
l6611:	
	movlw	(03h)
	addwf	(sprintf@ap)^080h,f
	line	834
	
l6613:	
	movf	(sprintf@fval)^080h,w
	movwf	(?___ftge)
	movf	(sprintf@fval+1)^080h,w
	movwf	(?___ftge+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(?___ftge+2)
	clrf	0+(?___ftge)+03h
	clrf	1+(?___ftge)+03h
	clrf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u4451
	goto	u4450
u4451:
	goto	l6619
u4450:
	line	835
	
l6615:	
	movf	(sprintf@fval)^080h,w
	movwf	(?___ftneg)
	movf	(sprintf@fval+1)^080h,w
	movwf	(?___ftneg+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	(sprintf@fval)^080h
	movf	(1+(?___ftneg)),w
	movwf	(sprintf@fval+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(sprintf@fval+2)^080h
	line	836
	
l6617:	
	movlw	03h
	iorwf	(sprintf@flag)^080h,f
	line	838
	
l6619:	
	clrf	(sprintf@exp)^080h
	clrf	(sprintf@exp+1)^080h
	line	839
	
l6621:	
	movf	(sprintf@fval+2)^080h,w
	iorwf	(sprintf@fval+1)^080h,w
	iorwf	(sprintf@fval)^080h,w
	skipnz
	goto	u4461
	goto	u4460
u4461:
	goto	l6651
u4460:
	line	840
	
l6623:	
	movlw	low(sprintf@fval)
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+3
	movlw	0Fh
u4475:
	clrc
	rrf	(??_sprintf+0)+3,f
	rrf	(??_sprintf+0)+2,f
	rrf	(??_sprintf+0)+1,f
	rrf	(??_sprintf+0)+0,f
u4470:
	addlw	-1
	skipz
	goto	u4475
	movf	1+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@exp)^080h
	
l6625:	
	movlw	0FFh
	andwf	(sprintf@exp)^080h,f
	clrf	(sprintf@exp+1)^080h
	
l6627:	
	movlw	-126
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	841
	
l6629:	
	movlw	-1
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	842
	
l6631:	
	movlw	03h
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movf	(sprintf@exp+1)^080h,w
	movwf	1+(?___wmul)+02h
	movf	(sprintf@exp)^080h,w
	movwf	0+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(sprintf@exp+1)^080h
	movf	(0+(?___wmul)),w
	movwf	(sprintf@exp)^080h
	line	843
	
l6633:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@exp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___awdiv)+02h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@exp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@exp)^080h
	line	844
	
l6635:	
	btfss	(sprintf@exp+1)^080h,7
	goto	u4481
	goto	u4480
u4481:
	goto	l6639
u4480:
	line	845
	
l6637:	
	movlw	-1
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	849
	
l6639:	
	decf	(sprintf@exp)^080h,w
	xorlw	0ffh
	fcall	_scale
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ+2)^080h
	line	850
	
l6641:	
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ+2)^080h
	line	851
	
l6643:	
	movf	(sprintf@integ)^080h,w
	movwf	(?___ftge)
	movf	(sprintf@integ+1)^080h,w
	movwf	(?___ftge+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x80
	movwf	1+(?___ftge)+03h
	movlw	0x3f
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u4491
	goto	u4490
u4491:
	goto	l6647
u4490:
	line	852
	
l6645:	
	movlw	-1
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	goto	l6651
	line	853
	
l6647:	
	movf	(sprintf@integ)^080h,w
	movwf	(?___ftge)
	movf	(sprintf@integ+1)^080h,w
	movwf	(?___ftge+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x20
	movwf	1+(?___ftge)+03h
	movlw	0x41
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u4501
	goto	u4500
u4501:
	goto	l6651
u4500:
	line	854
	
l6649:	
	incf	(sprintf@exp)^080h,f
	skipnz
	incf	(sprintf@exp+1)^080h,f
	line	1115
	
l6651:	
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u4515
	movlw	low(0Dh)
	subwf	(sprintf@prec)^080h,w
u4515:

	skipnc
	goto	u4511
	goto	u4510
u4511:
	goto	l6655
u4510:
	line	1116
	
l6653:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	fcall	_fround
	movf	(0+(?_fround)),w
	movwf	(?___ftadd)
	movf	(1+(?_fround)),w
	movwf	(?___ftadd+1)
	movf	(2+(?_fround)),w
	movwf	(?___ftadd+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@fval+2)^080h
	line	1119
	
l6655:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4525
	movlw	low(0Ah)
	subwf	(sprintf@exp)^080h,w
u4525:

	skipnc
	goto	u4521
	goto	u4520
u4521:
	goto	l6663
u4520:
	
l6657:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	iorwf	(sprintf@fval+1)^080h,w
	iorwf	(sprintf@fval)^080h,w
	skipnz
	goto	u4531
	goto	u4530
u4531:
	goto	l6679
u4530:
	
l6659:	
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	iorwf	(2+(?___fttol)),w
	iorwf	(1+(?___fttol)),w
	iorwf	(0+(?___fttol)),w
	skipz
	goto	u4541
	goto	u4540
u4541:
	goto	l6679
u4540:
	
l6661:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4555
	movlw	low(02h)
	subwf	(sprintf@exp)^080h,w
u4555:

	skipc
	goto	u4551
	goto	u4550
u4551:
	goto	l6679
u4550:
	line	1123
	
l6663:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ)^080h,w
	movwf	(?___ftge)
	movf	(sprintf@integ+1)^080h,w
	movwf	(?___ftge+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x70
	movwf	0+(?___ftge)+03h
	movlw	0x89
	movwf	1+(?___ftge)+03h
	movlw	0x40
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u4561
	goto	u4560
u4561:
	goto	l6667
u4560:
	line	1124
	
l6665:	
	movlw	-9
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	1125
	goto	l6669
	line	1126
	
l6667:	
	movlw	-8
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	1128
	
l6669:	
	movf	(sprintf@exp)^080h,w
	fcall	_scale
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ+2)^080h
	line	1129
	
l6673:	
	movf	(sprintf@fval)^080h,w
	movwf	(?__tdiv_to_l_)
	movf	(sprintf@fval+1)^080h,w
	movwf	(?__tdiv_to_l_+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(?__tdiv_to_l_+2)
	movf	(sprintf@integ)^080h,w
	movwf	0+(?__tdiv_to_l_)+03h
	movf	(sprintf@integ+1)^080h,w
	movwf	1+(?__tdiv_to_l_)+03h
	movf	(sprintf@integ+2)^080h,w
	movwf	2+(?__tdiv_to_l_)+03h
	fcall	__tdiv_to_l_
	movf	(3+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_sprintf$1873+3)^080h
	movf	(2+(?__tdiv_to_l_)),w
	movwf	(_sprintf$1873+2)^080h
	movf	(1+(?__tdiv_to_l_)),w
	movwf	(_sprintf$1873+1)^080h
	movf	(0+(?__tdiv_to_l_)),w
	movwf	(_sprintf$1873)^080h

	
l6675:	
	movf	(_sprintf$1873+3)^080h,w
	movwf	(sprintf@_val+3)^080h
	movf	(_sprintf$1873+2)^080h,w
	movwf	(sprintf@_val+2)^080h
	movf	(_sprintf$1873+1)^080h,w
	movwf	(sprintf@_val+1)^080h
	movf	(_sprintf$1873)^080h,w
	movwf	(sprintf@_val)^080h

	line	1132
	
l6677:	
	clrf	(sprintf@fval)^080h
	clrf	(sprintf@fval+1)^080h
	clrf	(sprintf@fval+2)^080h
	line	1133
	goto	l6683
	line	1134
	
l6679:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val)^080h

	line	1135
	movf	(sprintf@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lltoft+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lltoft+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lltoft+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@_val)^080h,w
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
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftsub)+03h
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@fval+2)^080h
	line	1136
	
l6681:	
	clrf	(sprintf@exp)^080h
	clrf	(sprintf@exp+1)^080h
	line	1139
	
l6683:	
	clrf	(sprintf@c)^080h
	incf	(sprintf@c)^080h,f
	line	1140
	
l6689:	
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrc
	rlf	(??_sprintf+0)+0,f
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_sprintf+1)+0)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+1)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+2)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+3)
	movf	3+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val+3)^080h,w
	skipz
	goto	u4575
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val+2)^080h,w
	skipz
	goto	u4575
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val+1)^080h,w
	skipz
	goto	u4575
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val)^080h,w
u4575:
	skipnc
	goto	u4571
	goto	u4570
u4571:
	goto	l6693
u4570:
	goto	l6697
	line	1139
	
l6693:	
	incf	(sprintf@c)^080h,f
	
l6695:	
	movf	(sprintf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u4581
	goto	u4580
u4581:
	goto	l6689
u4580:
	line	1145
	
l6697:	
	movf	(sprintf@prec)^080h,w
	addwf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@prec+1)^080h,w
	skipnc
	incf	(sprintf@prec+1)^080h,w
	addlw	0
	btfsc	(sprintf@c)^080h,7
	addlw	0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@exp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	0+(??_sprintf+0)+0,w
	movwf	(??_sprintf+2)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@exp+1)^080h,w
	skipnc
	incf	(sprintf@exp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	1+(??_sprintf+0)+0,w
	movwf	1+(??_sprintf+2)+0
	movf	0+(??_sprintf+2)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@width)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+2)+0,w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(sprintf@width+1)^080h,f
	subwf	(sprintf@width+1)^080h,f
	line	1150
	
l6699:	
	movf	(sprintf@prec+1)^080h,w
	iorwf	(sprintf@prec)^080h,w
	skipnz
	goto	u4591
	goto	u4590
u4591:
	goto	l6703
u4590:
	line	1151
	
l6701:	
	movlw	-1
	addwf	(sprintf@width)^080h,f
	skipc
	decf	(sprintf@width+1)^080h,f
	line	1152
	
l6703:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u4601
	goto	u4600
u4601:
	goto	l6713
u4600:
	line	1153
	
l6705:	
	movlw	-1
	addwf	(sprintf@width)^080h,f
	skipc
	decf	(sprintf@width+1)^080h,f
	goto	l6713
	line	1182
	
l6707:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(020h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6709:	
	incf	(sprintf@sp)^080h,f
	goto	l6705
	line	1181
	
l6713:	
	movf	(sprintf@width+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4615
	movlw	low(01h)
	subwf	(sprintf@width)^080h,w
u4615:

	skipnc
	goto	u4611
	goto	u4610
u4611:
	goto	l6707
u4610:
	line	1189
	
l6715:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u4621
	goto	u4620
u4621:
	goto	l6725
u4620:
	line	1191
	
l6717:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(02Dh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6719:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(sprintf@sp)^080h,f
	goto	l6725
	line	1201
	
l6721:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrc
	rlf	(??_sprintf+0)+0,f
	clrc
	rlf	(??_sprintf+0)+0,w
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
	movf	(sprintf@_val+3)^080h,w
	movwf	3+(?___lldiv)+04h
	movf	(sprintf@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(sprintf@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(sprintf@_val)^080h,w
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
	movwf	(??_sprintf+1)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	movf	(??_sprintf+1)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l6719
	line	1197
	
l6725:	
	decf	(sprintf@c)^080h,f
	incf	((sprintf@c)^080h),w
	skipz
	goto	u4631
	goto	u4630
u4631:
	goto	l6721
u4630:
	goto	l6733
	line	1205
	
l6727:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(030h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6729:	
	incf	(sprintf@sp)^080h,f
	line	1206
	
l6731:	
	movlw	-1
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	1204
	
l6733:	
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4645
	movlw	low(01h)
	subwf	(sprintf@exp)^080h,w
u4645:

	skipnc
	goto	u4641
	goto	u4640
u4641:
	goto	l6727
u4640:
	line	1208
	
l6735:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4655
	movlw	low(09h)
	subwf	(sprintf@prec)^080h,w
u4655:

	skipc
	goto	u4651
	goto	u4650
u4651:
	goto	l6739
u4650:
	line	1209
	
l6737:	
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	goto	l1160
	line	1211
	
l6739:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	movwf	(sprintf@c)^080h
	
l1160:	
	line	1212
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@prec)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(sprintf@prec+1)^080h,f
	subwf	(sprintf@prec+1)^080h,f
	line	1216
	movf	(sprintf@c)^080h,w
	skipz
	goto	u4660
	goto	l6745
u4660:
	line	1218
	
l6741:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(02Eh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6743:	
	incf	(sprintf@sp)^080h,f
	line	1224
	
l6745:	
	movf	(sprintf@c)^080h,w
	fcall	_scale
	movf	(0+(?_scale)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?_scale)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?_scale)),w
	movwf	2+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+2)^080h,w
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
	movwf	(sprintf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val)^080h

	line	1225
	goto	l6753
	line	1226
	
l6747:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrc
	rlf	(??_sprintf+0)+0,f
	clrc
	rlf	(??_sprintf+0)+0,w
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
	movf	(sprintf@_val+3)^080h,w
	movwf	3+(?___lldiv)+04h
	movf	(sprintf@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(sprintf@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(sprintf@_val)^080h,w
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
	movwf	(??_sprintf+1)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	movf	(??_sprintf+1)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6749:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(sprintf@sp)^080h,f
	line	1227
	
l6751:	
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrc
	rlf	(??_sprintf+0)+0,f
	clrc
	rlf	(??_sprintf+0)+0,w
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
	movf	(sprintf@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val)^080h

	line	1225
	
l6753:	
	decf	(sprintf@c)^080h,f
	incf	((sprintf@c)^080h),w
	skipz
	goto	u4671
	goto	u4670
u4671:
	goto	l6747
u4670:
	goto	l6761
	line	1231
	
l6755:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(030h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6757:	
	incf	(sprintf@sp)^080h,f
	line	1232
	
l6759:	
	movlw	-1
	addwf	(sprintf@prec)^080h,f
	skipc
	decf	(sprintf@prec+1)^080h,f
	line	1230
	
l6761:	
	movf	((sprintf@prec+1)^080h),w
	iorwf	((sprintf@prec)^080h),w
	skipz
	goto	u4681
	goto	u4680
u4681:
	goto	l6755
u4680:
	goto	l6811
	line	1285
	
l6763:	
	bsf	status, 5	;RP0=1, select bank1
	movf	((sprintf@prec+1)^080h),w
	iorwf	((sprintf@prec)^080h),w
	skipz
	goto	u4691
	goto	u4690
u4691:
	goto	l6769
u4690:
	
l6765:	
	movf	(sprintf@_val+3)^080h,w
	iorwf	(sprintf@_val+2)^080h,w
	iorwf	(sprintf@_val+1)^080h,w
	iorwf	(sprintf@_val)^080h,w
	skipz
	goto	u4701
	goto	u4700
u4701:
	goto	l6769
u4700:
	line	1286
	
l6767:	
	incf	(sprintf@prec)^080h,f
	skipnz
	incf	(sprintf@prec+1)^080h,f
	line	1334
	
l6769:	
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	movwf	(??_sprintf+2)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u4715
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_sprintf+0)+0,w
u4715:

	skipnc
	goto	u4711
	goto	u4710
u4711:
	goto	l6773
u4710:
	line	1335
	
l6771:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	movwf	(sprintf@c)^080h
	goto	l6777
	line	1336
	
l6773:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+2)+0
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u4725
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@prec)^080h,w
u4725:

	skipnc
	goto	u4721
	goto	u4720
u4721:
	goto	l6777
u4720:
	line	1337
	
l6775:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	movwf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	btfsc	(sprintf@prec)^080h,7
	decf	(sprintf@prec+1)^080h,f
	line	1340
	
l6777:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@width+1)^080h,w
	iorwf	(sprintf@width)^080h,w
	skipnz
	goto	u4731
	goto	u4730
u4731:
	goto	l6783
u4730:
	
l6779:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u4741
	goto	u4740
u4741:
	goto	l6783
u4740:
	line	1341
	
l6781:	
	movlw	-1
	addwf	(sprintf@width)^080h,f
	skipc
	decf	(sprintf@width+1)^080h,f
	line	1343
	
l6783:	
	btfss	(sprintf@flag+1)^080h,(14)&7
	goto	u4751
	goto	u4750
u4751:
	goto	l6791
u4750:
	line	1344
	
l6785:	
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@width+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(??_sprintf+0)+0,w
	skipz
	goto	u4765
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@width)^080h,w
	subwf	(sprintf@prec)^080h,w
u4765:

	skipnc
	goto	u4761
	goto	u4760
u4761:
	goto	l6789
u4760:
	line	1345
	
l6787:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	subwf	(sprintf@width)^080h,f
	movf	(sprintf@prec+1)^080h,w
	skipc
	decf	(sprintf@width+1)^080h,f
	subwf	(sprintf@width+1)^080h,f
	goto	l6791
	line	1347
	
l6789:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	1376
	
l6791:	
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	movwf	(??_sprintf+2)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@width+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u4775
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@width)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_sprintf+0)+0,w
u4775:

	skipnc
	goto	u4771
	goto	u4770
u4771:
	goto	l6795
u4770:
	line	1377
	
l6793:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@width)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(sprintf@width+1)^080h,f
	subwf	(sprintf@width+1)^080h,f
	goto	l6797
	line	1379
	
l6795:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	1423
	
l6797:	
	movf	(sprintf@width+1)^080h,w
	iorwf	(sprintf@width)^080h,w
	skipnz
	goto	u4781
	goto	u4780
u4781:
	goto	l6805
u4780:
	line	1425
	
l6799:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(020h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6801:	
	incf	(sprintf@sp)^080h,f
	line	1426
	
l6803:	
	movlw	-1
	addwf	(sprintf@width)^080h,f
	skipc
	decf	(sprintf@width+1)^080h,f
	movf	(((sprintf@width+1)^080h)),w
	iorwf	(((sprintf@width)^080h)),w
	skipz
	goto	u4791
	goto	u4790
u4791:
	goto	l6799
u4790:
	line	1433
	
l6805:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u4801
	goto	u4800
u4801:
	goto	l6811
u4800:
	line	1434
	
l6807:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(02Dh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l6567
	line	540
	
l6811:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	incf	(sprintf@f),f
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@c)^080h
	movf	((sprintf@c)^080h),f
	skipz
	goto	u4811
	goto	u4810
u4811:
	goto	l6563
u4810:
	line	1530
	
l6813:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	1533
	
l1183:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	___ftsub
psect	text776,local,class=CODE,delta=2
global __ptext776
__ptext776:

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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text776
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 3
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l6555:	
	movlw	080h
	xorwf	(___ftsub@f2+2),f
	line	19
	
l6557:	
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
	
l2264:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_scale
psect	text777,local,class=CODE,delta=2
global __ptext777
__ptext777:

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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text777
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
	
l6515:	
	btfss	(scale@scl),7
	goto	u4331
	goto	u4330
u4331:
	goto	l6537
u4330:
	line	425
	
l6517:	
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	426
	
l6519:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u4341
	goto	u4340
u4341:
	goto	l6527
u4340:
	line	427
	
l6521:	
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
	movwf	(_scale$2808)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$2808+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$2808+2)
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
	movf	(_scale$2808),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$2808+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$2808+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l1100
	line	428
	
l6527:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u4351
	goto	u4350
u4351:
	goto	l6533
u4350:
	line	429
	
l6529:	
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
	goto	l1100
	line	430
	
l6533:	
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
	goto	l1100
	line	432
	
l6537:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u4361
	goto	u4360
u4361:
	goto	l6545
u4360:
	line	433
	
l6539:	
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
	movwf	(_scale$2808)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$2808+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$2808+2)
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
	movf	(_scale$2808),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$2808+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$2808+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l1100
	line	434
	
l6545:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u4371
	goto	u4370
u4371:
	goto	l6551
u4370:
	line	435
	
l6547:	
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
	goto	l1100
	line	436
	
l6551:	
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
	
l1100:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
;; =============== function _scale ends ============

	signat	_scale,4219
	global	_fround
psect	text778,local,class=CODE,delta=2
global __ptext778
__ptext778:

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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text778
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
	
l6493:	
	movlw	(06Eh)
	subwf	(fround@prec),w
	skipc
	goto	u4311
	goto	u4310
u4311:
	goto	l6503
u4310:
	line	410
	
l6495:	
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
	movwf	(_fround$2806)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$2806+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$2806+2)
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
	movf	(_fround$2806),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$2806+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$2806+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$2807)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$2807+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$2807+2)
	
l6497:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$2807),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$2807+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$2807+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l1093
	line	411
	
l6503:	
	movlw	(0Bh)
	subwf	(fround@prec),w
	skipc
	goto	u4321
	goto	u4320
u4321:
	goto	l6511
u4320:
	line	412
	
l6505:	
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
	movwf	(_fround$2806)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$2806+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$2806+2)
	
l6507:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$2806),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$2806+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$2806+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l1093
	line	413
	
l6511:	
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
	
l1093:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
;; =============== function _fround ends ============

	signat	_fround,4219
	global	___lltoft
psect	text779,local,class=CODE,delta=2
global __ptext779
__ptext779:

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 36 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    0[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1    4[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text779
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 4
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l6483:	
	movlw	(08Eh)
	movwf	(___lltoft@exp)
	line	41
	goto	l6487
	line	42
	
l6485:	
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	line	43
	incf	(___lltoft@exp),f
	line	41
	
l6487:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u4301
	goto	u4300
u4301:
	goto	l6485
u4300:
	line	45
	
l6489:	
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
	
l2421:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___awtoft
psect	text780,local,class=CODE,delta=2
global __ptext780
__ptext780:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    0[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text780
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l6471:	
	clrf	(___awtoft@sign)
	line	37
	
l6473:	
	btfss	(___awtoft@c+1),7
	goto	u4291
	goto	u4290
u4291:
	goto	l6479
u4290:
	line	38
	
l6475:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l6477:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l6479:	
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
	
l2318:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text781,local,class=CODE,delta=2
global __ptext781
__ptext781:

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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text781
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 3
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l6415:	
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
	goto	u4211
	goto	u4210
u4211:
	goto	l6421
u4210:
	line	57
	
l6417:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2280
	line	58
	
l6421:	
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
	goto	u4221
	goto	u4220
u4221:
	goto	l6427
u4220:
	line	59
	
l6423:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2280
	line	60
	
l6427:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l6429:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l6431:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l6433:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l6435:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l6437:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l6439:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l6441:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l6443:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l6445:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4231
	goto	u4230
u4231:
	goto	l6449
u4230:
	line	72
	
l6447:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u4241
	addwf	(___ftmul@f3_as_product+1),f
u4241:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u4242
	addwf	(___ftmul@f3_as_product+2),f
u4242:

	line	73
	
l6449:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l6451:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l6453:	
	decfsz	(___ftmul@cntr),f
	goto	u4251
	goto	u4250
u4251:
	goto	l6445
u4250:
	line	76
	
l6455:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l6457:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4261
	goto	u4260
u4261:
	goto	l6461
u4260:
	line	79
	
l6459:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u4271
	addwf	(___ftmul@f3_as_product+1),f
u4271:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u4272
	addwf	(___ftmul@f3_as_product+2),f
u4272:

	line	80
	
l6461:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l6463:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l6465:	
	decfsz	(___ftmul@cntr),f
	goto	u4281
	goto	u4280
u4281:
	goto	l6457
u4280:
	line	83
	
l6467:	
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
	
l2280:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text782,local,class=CODE,delta=2
global __ptext782
__ptext782:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    4[BANK0 ] float 
;;  f1              3    7[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   14[BANK0 ] float 
;;  sign            1   18[BANK0 ] unsigned char 
;;  exp             1   17[BANK0 ] unsigned char 
;;  cntr            1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    4[BANK0 ] float 
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
psect	text782
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l6371:	
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
	goto	u4171
	goto	u4170
u4171:
	goto	l6377
u4170:
	line	56
	
l6373:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l2270
	line	57
	
l6377:	
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
	goto	u4181
	goto	u4180
u4181:
	goto	l2271
u4180:
	line	58
	
l6379:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l2270
	
l2271:	
	line	59
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	60
	
l6383:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l6385:	
	movf	0+(((___ftdiv@f1))+2),w
	movwf	(___ftdiv@sign)
	line	62
	
l6387:	
	movf	0+(((___ftdiv@f2))+2),w
	xorwf	(___ftdiv@sign),f
	line	63
	
l6389:	
	movlw	(080h)
	andwf	(___ftdiv@sign),f
	line	64
	
l6391:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	
l6393:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l6395:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	
l6397:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	
l6399:	
	movlw	(018h)
	movwf	(___ftdiv@cntr)
	line	70
	
l6401:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	71
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u4195
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u4195
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u4195:
	skipc
	goto	u4191
	goto	u4190
u4191:
	goto	l6407
u4190:
	line	72
	
l6403:	
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
	
l6405:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	75
	
l6407:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	76
	
l6409:	
	decfsz	(___ftdiv@cntr),f
	goto	u4201
	goto	u4200
u4201:
	goto	l6401
u4200:
	line	77
	
l6411:	
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
	
l2270:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text783,local,class=CODE,delta=2
global __ptext783
__ptext783:

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
;;		_sprintf
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text783
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 3
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l6293:	
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
	
l6295:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u3970
	goto	l6301
u3970:
	
l6297:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3981
	goto	u3980
u3981:
	goto	l6305
u3980:
	
l6299:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3991
	goto	u3990
u3991:
	goto	l6305
u3990:
	line	93
	
l6301:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l2228
	line	94
	
l6305:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u4000
	goto	l2231
u4000:
	
l6307:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4011
	goto	u4010
u4011:
	goto	l6311
u4010:
	
l6309:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u4021
	goto	u4020
u4021:
	goto	l6311
u4020:
	
l2231:	
	line	95
	goto	l2228
	line	96
	
l6311:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
l6313:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u4031
	goto	u4030
u4031:
	goto	l2232
u4030:
	line	98
	
l6315:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l2232:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4041
	goto	u4040
u4041:
	goto	l2233
u4040:
	line	100
	
l6317:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l2233:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l6319:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l6321:	
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
	goto	u4051
	goto	u4050
u4051:
	goto	l6333
u4050:
	line	110
	
l6323:	
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
l6325:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4061
	goto	u4060
u4061:
	goto	l6331
u4060:
	
l6327:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u4071
	goto	u4070
u4071:
	goto	l6323
u4070:
	goto	l6331
	line	114
	
l6329:	
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
l6331:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4081
	goto	u4080
u4081:
	goto	l6329
u4080:
	goto	l2242
	line	117
	
l6333:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4091
	goto	u4090
u4091:
	goto	l2242
u4090:
	line	121
	
l6335:	
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
l6337:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4101
	goto	u4100
u4101:
	goto	l6343
u4100:
	
l6339:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u4111
	goto	u4110
u4111:
	goto	l6335
u4110:
	goto	l6343
	line	125
	
l6341:	
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
l6343:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4121
	goto	u4120
u4121:
	goto	l6341
u4120:
	line	129
	
l2242:	
	btfss	(___ftadd@sign),(7)&7
	goto	u4131
	goto	u4130
u4131:
	goto	l6349
u4130:
	line	131
	
l6345:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
l6347:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
l6349:	
	btfss	(___ftadd@sign),(6)&7
	goto	u4141
	goto	u4140
u4141:
	goto	l6355
u4140:
	line	136
	
l6351:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
l6353:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
l6355:	
	clrf	(___ftadd@sign)
	line	140
	
l6357:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u4151
	addwf	(___ftadd@f2+1),f
u4151:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u4152
	addwf	(___ftadd@f2+2),f
u4152:

	line	141
	
l6359:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4161
	goto	u4160
u4161:
	goto	l6367
u4160:
	line	142
	
l6361:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
l6363:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
l6365:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l6367:	
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
	
l2228:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_send_string
psect	text784,local,class=CODE,delta=2
global __ptext784
__ptext784:

;; *************** function _send_string *****************
;; Defined at:
;;		line 74 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 02\BT Ôn Thi 02.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> main@data_tx(10), 
;; Auto vars:     Size  Location     Type
;;  s               1    3[COMMON] PTR const unsigned char 
;;		 -> main@data_tx(10), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/20
;;		On exit  : 140/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text784
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 02\BT Ôn Thi 02.c"
	line	74
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 5
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	movwf	(send_string@s)
	line	75
	
l6285:	
;BT Ôn Thi 02.c: 75: while(*s) {send_char(*s++);}
	goto	l6291
	
l6287:	
	movf	(send_string@s),w
	movwf	fsr0
	movf	indf,w
	fcall	_send_char
	
l6289:	
	incf	(send_string@s),f
	
l6291:	
	movf	(send_string@s),w
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u3961
	goto	u3960
u3961:
	goto	l6287
u3960:
	line	76
	
l1067:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	___awmod
psect	text785,local,class=CODE,delta=2
global __ptext785
__ptext785:

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
psect	text785
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l6249:	
	clrf	(___awmod@sign)
	line	9
	
l6251:	
	btfss	(___awmod@dividend+1),7
	goto	u3891
	goto	u3890
u3891:
	goto	l6257
u3890:
	line	10
	
l6253:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l6255:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l6257:	
	btfss	(___awmod@divisor+1),7
	goto	u3901
	goto	u3900
u3901:
	goto	l6261
u3900:
	line	14
	
l6259:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l6261:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3911
	goto	u3910
u3911:
	goto	l6277
u3910:
	line	16
	
l6263:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l6267
	line	18
	
l6265:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l6267:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3921
	goto	u3920
u3921:
	goto	l6265
u3920:
	line	22
	
l6269:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3935
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3935:
	skipc
	goto	u3931
	goto	u3930
u3931:
	goto	l6273
u3930:
	line	23
	
l6271:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l6273:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l6275:	
	decfsz	(___awmod@counter),f
	goto	u3941
	goto	u3940
u3941:
	goto	l6269
u3940:
	line	27
	
l6277:	
	movf	(___awmod@sign),w
	skipz
	goto	u3950
	goto	l6281
u3950:
	line	28
	
l6279:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l6281:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l2399:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___lldiv
psect	text786,local,class=CODE,delta=2
global __ptext786
__ptext786:

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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text786
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 5
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l6223:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	10
	
l6225:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u3851
	goto	u3850
u3851:
	goto	l6245
u3850:
	line	11
	
l6227:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	12
	goto	l6231
	line	13
	
l6229:	
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	14
	incf	(___lldiv@counter),f
	line	12
	
l6231:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u3861
	goto	u3860
u3861:
	goto	l6229
u3860:
	line	17
	
l6233:	
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	18
	
l6235:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u3875
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u3875
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u3875
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u3875:
	skipc
	goto	u3871
	goto	u3870
u3871:
	goto	l6241
u3870:
	line	19
	
l6237:	
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
	
l6239:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	22
	
l6241:	
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	23
	
l6243:	
	decfsz	(___lldiv@counter),f
	goto	u3881
	goto	u3880
u3881:
	goto	l6233
u3880:
	line	25
	
l6245:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	26
	
l2360:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___ftge
psect	text787,local,class=CODE,delta=2
global __ptext787
__ptext787:

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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text787
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 5
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l6203:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u3821
	goto	u3820
u3821:
	goto	l6207
u3820:
	line	7
	
l6205:	
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
	
l6207:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u3831
	goto	u3830
u3831:
	goto	l6211
u3830:
	line	9
	
l6209:	
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
	
l6211:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l6213:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l6215:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u3845
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u3845
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u3845:
	skipnc
	goto	u3841
	goto	u3840
u3841:
	goto	l6219
u3840:
	
l6217:	
	clrc
	
	goto	l2350
	
l6219:	
	setc
	
	line	13
	
l2350:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text788,local,class=CODE,delta=2
global __ptext788
__ptext788:

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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text788
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 5
; Regs used in ___ftneg: [wreg]
	line	17
	
l6195:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u3811
	goto	u3810
u3811:
	goto	l6199
u3810:
	line	18
	
l6197:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	line	19
	
l6199:	
	line	20
	
l2345:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___llmod
psect	text789,local,class=CODE,delta=2
global __ptext789
__ptext789:

;; *************** function ___llmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    5[BANK0 ] unsigned long 
;;  dividend        4    9[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1   13[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text789
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 5
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l6175:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u3771
	goto	u3770
u3771:
	goto	l6191
u3770:
	line	9
	
l6177:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	10
	goto	l6181
	line	11
	
l6179:	
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	line	12
	incf	(___llmod@counter),f
	line	10
	
l6181:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u3781
	goto	u3780
u3781:
	goto	l6179
u3780:
	line	15
	
l6183:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u3795
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u3795
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u3795
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u3795:
	skipc
	goto	u3791
	goto	u3790
u3791:
	goto	l6187
u3790:
	line	16
	
l6185:	
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
	
l6187:	
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	line	18
	
l6189:	
	decfsz	(___llmod@counter),f
	goto	u3801
	goto	u3800
u3801:
	goto	l6183
u3800:
	line	20
	
l6191:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	line	21
	
l2341:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	___awdiv
psect	text790,local,class=CODE,delta=2
global __ptext790
__ptext790:

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
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text790
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l6131:	
	clrf	(___awdiv@sign)
	line	10
	
l6133:	
	btfss	(___awdiv@divisor+1),7
	goto	u3701
	goto	u3700
u3701:
	goto	l6139
u3700:
	line	11
	
l6135:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l6137:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l6139:	
	btfss	(___awdiv@dividend+1),7
	goto	u3711
	goto	u3710
u3711:
	goto	l6145
u3710:
	line	15
	
l6141:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l6143:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l6145:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l6147:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3721
	goto	u3720
u3721:
	goto	l6167
u3720:
	line	20
	
l6149:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l6153
	line	22
	
l6151:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l6153:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3731
	goto	u3730
u3731:
	goto	l6151
u3730:
	line	26
	
l6155:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l6157:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3745
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3745:
	skipc
	goto	u3741
	goto	u3740
u3741:
	goto	l6163
u3740:
	line	28
	
l6159:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l6161:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l6163:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l6165:	
	decfsz	(___awdiv@counter),f
	goto	u3751
	goto	u3750
u3751:
	goto	l6155
u3750:
	line	34
	
l6167:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3760
	goto	l6171
u3760:
	line	35
	
l6169:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l6171:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l2331:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text791,local,class=CODE,delta=2
global __ptext791
__ptext791:

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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text791
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l6093:	
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
	goto	u3621
	goto	u3620
u3621:
	goto	l6097
u3620:
	line	50
	
l6095:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l2291
	line	51
	
l6097:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u3635:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u3630:
	addlw	-1
	skipz
	goto	u3635
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l6099:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l6101:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l6103:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l6105:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l6107:	
	btfss	(___fttol@exp1),7
	goto	u3641
	goto	u3640
u3641:
	goto	l6117
u3640:
	line	57
	
l6109:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u3651
	goto	u3650
u3651:
	goto	l6113
u3650:
	goto	l6095
	line	60
	
l6113:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l6115:	
	incfsz	(___fttol@exp1),f
	goto	u3661
	goto	u3660
u3661:
	goto	l6113
u3660:
	goto	l6123
	line	63
	
l6117:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3671
	goto	u3670
u3671:
	goto	l2298
u3670:
	goto	l6095
	line	66
	
l6121:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l2298:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u3681
	goto	u3680
u3681:
	goto	l6121
u3680:
	line	70
	
l6123:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3690
	goto	l6127
u3690:
	line	71
	
l6125:	
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
	
l6127:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l2291:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text792,local,class=CODE,delta=2
global __ptext792
__ptext792:

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
;;		___ftdiv
;;		___ftmul
;;		___awtoft
;;		___lltoft
;; This function uses a non-reentrant model
;;
psect	text792
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 3
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l6065:	
	movf	(___ftpack@exp),w
	skipz
	goto	u3550
	goto	l6069
u3550:
	
l6067:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u3561
	goto	u3560
u3561:
	goto	l6075
u3560:
	line	65
	
l6069:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l2550
	line	67
	
l6073:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l6075:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3571
	goto	u3570
u3571:
	goto	l6073
u3570:
	goto	l6079
	line	71
	
l6077:	
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
	
l6079:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3581
	goto	u3580
u3581:
	goto	l6077
u3580:
	goto	l6083
	line	76
	
l6081:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l6083:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u3591
	goto	u3590
u3591:
	goto	l6081
u3590:
	
l2559:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u3601
	goto	u3600
u3601:
	goto	l2560
u3600:
	line	80
	
l6085:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l2560:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l6087:	
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
	
l6089:	
	movf	(___ftpack@sign),w
	skipz
	goto	u3610
	goto	l2561
u3610:
	line	84
	
l6091:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2561:	
	line	85
	line	86
	
l2550:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lbmod
psect	text793,local,class=CODE,delta=2
global __ptext793
__ptext793:

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
psect	text793
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
	
l6047:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l6049:	
	clrf	(___lbmod@rem)
	line	12
	
l6051:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u3525:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u3525
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l6053:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l6055:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u3531
	goto	u3530
u3531:
	goto	l6059
u3530:
	line	15
	
l6057:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l6059:	
	decfsz	(___lbmod@counter),f
	goto	u3541
	goto	u3540
u3541:
	goto	l6051
u3540:
	line	17
	
l6061:	
	movf	(___lbmod@rem),w
	line	18
	
l2220:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text794,local,class=CODE,delta=2
global __ptext794
__ptext794:

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    7[COMMON] unsigned char 
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
psect	text794
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
	
l6023:	
	clrf	(___lbdiv@quotient)
	line	10
	
l6025:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u3480
	goto	l6043
u3480:
	line	11
	
l6027:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l6031
	
l2209:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l6029:	
	incf	(___lbdiv@counter),f
	line	12
	
l6031:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u3491
	goto	u3490
u3491:
	goto	l2209
u3490:
	line	16
	
l2211:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l6033:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u3501
	goto	u3500
u3501:
	goto	l6039
u3500:
	line	19
	
l6035:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l6037:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l6039:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l6041:	
	decfsz	(___lbdiv@counter),f
	goto	u3511
	goto	u3510
u3511:
	goto	l2211
u3510:
	line	25
	
l6043:	
	movf	(___lbdiv@quotient),w
	line	26
	
l2214:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___wmul
psect	text795,local,class=CODE,delta=2
global __ptext795
__ptext795:

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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text795
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l6007:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l6009:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3461
	goto	u3460
u3461:
	goto	l6013
u3460:
	line	8
	
l6011:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l6013:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l6015:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l6017:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3471
	goto	u3470
u3471:
	goto	l6009
u3470:
	line	12
	
l6019:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l2184:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text796,local,class=CODE,delta=2
global __ptext796
__ptext796:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    8[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    4[BANK0 ] unsigned char 
;;  product         1    3[BANK0 ] unsigned char 
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
psect	text796
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
	
l5991:	
	clrf	(___bmul@product)
	line	7
	
l5993:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u3441
	goto	u3440
u3441:
	goto	l5997
u3440:
	line	8
	
l5995:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l5997:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l5999:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l6001:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u3451
	goto	u3450
u3451:
	goto	l5993
u3450:
	line	12
	
l6003:	
	movf	(___bmul@product),w
	line	13
	
l2178:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	__div_to_l_
psect	text797,local,class=CODE,delta=2
global __ptext797
__ptext797:

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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text797
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fldivl.c"
	line	61
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
	opt	stack 5
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l5945:	
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
	goto	u3351
	goto	u3350
u3351:
	goto	l5949
u3350:
	line	67
	
l5947:	
	clrf	(?__div_to_l_)
	clrf	(?__div_to_l_+1)
	clrf	(?__div_to_l_+2)
	clrf	(?__div_to_l_+3)
	goto	l2468
	line	68
	
l5949:	
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
	goto	u3361
	goto	u3360
u3361:
	goto	l5953
u3360:
	goto	l5947
	line	70
	
l5953:	
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
	
l5955:	
	clrf	(__div_to_l_@quot)
	clrf	(__div_to_l_@quot+1)
	clrf	(__div_to_l_@quot+2)
	clrf	(__div_to_l_@quot+3)
	line	75
	
l5957:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l5959:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l5961:	
	movlw	(020h)
	movwf	(__div_to_l_@cntr)
	line	79
	
l5963:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	80
	
l5965:	
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
	goto	u3375
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u3375
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u3375
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u3375:
	skipc
	goto	u3371
	goto	u3370
u3371:
	goto	l2471
u3370:
	line	81
	
l5967:	
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
	
l5969:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	83
	
l2471:	
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
	
l5971:	
	decfsz	(__div_to_l_@cntr),f
	goto	u3381
	goto	u3380
u3381:
	goto	l5963
u3380:
	
l2472:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u3391
	goto	u3390
u3391:
	goto	l5981
u3390:
	line	87
	
l5973:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u3401
	goto	u3400
u3401:
	goto	l5977
u3400:
	goto	l5947
	line	90
	
l5977:	
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	line	91
	
l5979:	
	incfsz	(__div_to_l_@exp1),f
	goto	u3411
	goto	u3410
u3411:
	goto	l5977
u3410:
	goto	l5987
	line	93
	
l5981:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u3421
	goto	u3420
u3421:
	goto	l2479
u3420:
	goto	l5947
	line	96
	
l5985:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	97
	decf	(__div_to_l_@exp1),f
	line	98
	
l2479:	
	line	95
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u3431
	goto	u3430
u3431:
	goto	l5985
u3430:
	line	100
	
l5987:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	line	101
	
l2468:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
;; =============== function __div_to_l_ ends ============

	signat	__div_to_l_,8316
	global	__tdiv_to_l_
psect	text798,local,class=CODE,delta=2
global __ptext798
__ptext798:

;; *************** function __tdiv_to_l_ *****************
;; Defined at:
;;		line 61 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    2[COMMON] float 
;;  f2              3    5[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  quot            4    3[BANK0 ] unsigned long 
;;  exp1            1    8[BANK0 ] unsigned char 
;;  cntr            1    7[BANK0 ] unsigned char 
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
;;      Temps:          0       3       0       0       0
;;      Totals:         6       9       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text798
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdivl.c"
	line	61
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
	opt	stack 5
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l5897:	
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
	goto	u3261
	goto	u3260
u3261:
	goto	l5901
u3260:
	line	67
	
l5899:	
	clrf	(?__tdiv_to_l_)
	clrf	(?__tdiv_to_l_+1)
	clrf	(?__tdiv_to_l_+2)
	clrf	(?__tdiv_to_l_+3)
	goto	l2425
	line	68
	
l5901:	
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
	goto	u3271
	goto	u3270
u3271:
	goto	l2426
u3270:
	goto	l5899
	line	69
	
l2426:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l5905:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l5907:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	
l5909:	
	clrf	(__tdiv_to_l_@quot)
	clrf	(__tdiv_to_l_@quot+1)
	clrf	(__tdiv_to_l_@quot+2)
	clrf	(__tdiv_to_l_@quot+3)
	line	75
	
l5911:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l5913:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	(018h)
	movwf	(__tdiv_to_l_@cntr)
	line	79
	
l5915:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	80
	
l5917:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u3285
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u3285
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u3285:
	skipc
	goto	u3281
	goto	u3280
u3281:
	goto	l5923
u3280:
	line	81
	
l5919:	
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
	
l5921:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	line	84
	
l5923:	
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	line	85
	
l5925:	
	decfsz	(__tdiv_to_l_@cntr),f
	goto	u3291
	goto	u3290
u3291:
	goto	l5915
u3290:
	
l2429:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u3301
	goto	u3300
u3301:
	goto	l5935
u3300:
	line	87
	
l5927:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u3311
	goto	u3310
u3311:
	goto	l5931
u3310:
	goto	l5899
	line	90
	
l5931:	
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	line	91
	
l5933:	
	incfsz	(__tdiv_to_l_@exp1),f
	goto	u3321
	goto	u3320
u3321:
	goto	l5931
u3320:
	goto	l5941
	line	93
	
l5935:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u3331
	goto	u3330
u3331:
	goto	l2436
u3330:
	goto	l5899
	line	96
	
l5939:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	97
	decf	(__tdiv_to_l_@exp1),f
	line	98
	
l2436:	
	line	95
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u3341
	goto	u3340
u3341:
	goto	l5939
u3340:
	line	100
	
l5941:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	line	101
	
l2425:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
;; =============== function __tdiv_to_l_ ends ============

	signat	__tdiv_to_l_,8316
	global	_isdigit
psect	text799,local,class=CODE,delta=2
global __ptext799
__ptext799:

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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text799
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
	
l5885:	
	clrf	(_isdigit$2381)
	
l5887:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u3241
	goto	u3240
u3241:
	goto	l5893
u3240:
	
l5889:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u3251
	goto	u3250
u3251:
	goto	l5893
u3250:
	
l5891:	
	clrf	(_isdigit$2381)
	incf	(_isdigit$2381),f
	
l5893:	
	rrf	(_isdigit$2381),w
	
	line	15
	
l2168:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_send_char
psect	text800,local,class=CODE,delta=2
global __ptext800
__ptext800:

;; *************** function _send_char *****************
;; Defined at:
;;		line 70 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 02\BT Ôn Thi 02.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 140/20
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_string
;; This function uses a non-reentrant model
;;
psect	text800
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 02\BT Ôn Thi 02.c"
	line	70
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 5
; Regs used in _send_char: [wreg]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	71
	
l5881:	
;BT Ôn Thi 02.c: 71: while (TXIF==0){}
	
l1058:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(100/8),(100)&7
	goto	u3231
	goto	u3230
u3231:
	goto	l1058
u3230:
	line	72
	
l5883:	
;BT Ôn Thi 02.c: 72: TXREG = data;
	movf	(send_char@data),w
	movwf	(25)	;volatile
	line	73
	
l1061:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_rx
psect	text801,local,class=CODE,delta=2
global __ptext801
__ptext801:

;; *************** function _rx *****************
;; Defined at:
;;		line 85 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 02\BT Ôn Thi 02.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
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
psect	text801
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 02\BT Ôn Thi 02.c"
	line	85
	global	__size_of_rx
	__size_of_rx	equ	__end_of_rx-_rx
	
_rx:	
	opt	stack 6
; Regs used in _rx: [wreg]
	line	86
	
l5863:	
;BT Ôn Thi 02.c: 86: SYNC = 0; BRGH = 1; BRG16 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	87
	
l5865:	
;BT Ôn Thi 02.c: 87: SPBRGH = 0x02;
	movlw	(02h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	88
;BT Ôn Thi 02.c: 88: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	89
	
l5867:	
;BT Ôn Thi 02.c: 89: CREN = 1; RX9 = 0; SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(196/8),(196)&7
	
l5869:	
	bcf	(198/8),(198)&7
	
l5871:	
	bsf	(199/8),(199)&7
	line	90
	
l5873:	
;BT Ôn Thi 02.c: 90: RCIE=1; RCIF=0; PEIE=1; GIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1125/8)^080h,(1125)&7
	
l5875:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(101/8),(101)&7
	
l5877:	
	bsf	(94/8),(94)&7
	
l5879:	
	bsf	(95/8),(95)&7
	line	91
	
l1073:	
	return
	opt stack 0
GLOBAL	__end_of_rx
	__end_of_rx:
;; =============== function _rx ends ============

	signat	_rx,88
	global	_tx
psect	text802,local,class=CODE,delta=2
global __ptext802
__ptext802:

;; *************** function _tx *****************
;; Defined at:
;;		line 78 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 02\BT Ôn Thi 02.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
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
psect	text802
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 02\BT Ôn Thi 02.c"
	line	78
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
	
_tx:	
	opt	stack 6
; Regs used in _tx: [wreg]
	line	79
	
l5853:	
;BT Ôn Thi 02.c: 79: SYNC = 0; BRGH = 1; BRG16 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	80
	
l5855:	
;BT Ôn Thi 02.c: 80: SPBRGH = 0x02;
	movlw	(02h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	81
;BT Ôn Thi 02.c: 81: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	82
	
l5857:	
;BT Ôn Thi 02.c: 82: TXEN = 1; TX9 = 0; SPEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	
l5859:	
	bcf	(1222/8)^080h,(1222)&7
	
l5861:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	83
	
l1070:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
;; =============== function _tx ends ============

	signat	_tx,88
	global	_ngat
psect	text803,local,class=CODE,delta=2
global __ptext803
__ptext803:

;; *************** function _ngat *****************
;; Defined at:
;;		line 54 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 02\BT Ôn Thi 02.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
psect	text803
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 02\BT Ôn Thi 02.c"
	line	54
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
	opt	stack 3
; Regs used in _ngat: [wreg+status,2+status,0]
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
psect	text803
	line	55
	
i1l4721:	
;BT Ôn Thi 02.c: 55: if(T0IF)
	btfss	(90/8),(90)&7
	goto	u162_21
	goto	u162_20
u162_21:
	goto	i1l4735
u162_20:
	line	56
	
i1l4723:	
;BT Ôn Thi 02.c: 56: { TMR0 = 6;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	57
	
i1l4725:	
;BT Ôn Thi 02.c: 57: dem++;
	incf	(_dem),f
	skipnz
	incf	(_dem+1),f
	line	58
	
i1l4727:	
;BT Ôn Thi 02.c: 58: if(dem == 250)
		movf	(_dem),w
	xorlw	250
	iorwf	(_dem+1),w

	skipz
	goto	u163_21
	goto	u163_20
u163_21:
	goto	i1l4735
u163_20:
	line	60
	
i1l4729:	
;BT Ôn Thi 02.c: 59: {
;BT Ôn Thi 02.c: 60: dem = 0;
	clrf	(_dem)
	clrf	(_dem+1)
	line	61
	
i1l4731:	
;BT Ôn Thi 02.c: 61: xung = TMR1;
	movf	(14+1),w	;volatile
	movwf	(_xung+1)	;volatile
	movf	(14),w	;volatile
	movwf	(_xung)	;volatile
	line	62
	
i1l4733:	
;BT Ôn Thi 02.c: 62: TMR1 = 0;
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	65
	
i1l4735:	
;BT Ôn Thi 02.c: 63: }
;BT Ôn Thi 02.c: 64: }
;BT Ôn Thi 02.c: 65: T0IF = 0;
	bcf	(90/8),(90)&7
	line	67
	
i1l1055:	
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
psect	text804,local,class=CODE,delta=2
global __ptext804
__ptext804:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
