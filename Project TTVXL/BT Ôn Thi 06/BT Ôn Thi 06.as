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
# 6 "D:\TTVXL\Project TTVXL\BT Ôn Thi 06\BT Ôn Thi 06.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "D:\TTVXL\Project TTVXL\BT Ôn Thi 06\BT Ôn Thi 06.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_tx
	FNCALL	_main,_rx
	FNCALL	_main,___altoft
	FNCALL	_main,___ftmul
	FNCALL	_main,___ftsub
	FNCALL	_main,_lcd_gotoxy
	FNCALL	_main,_printf
	FNCALL	_main,_sprintf
	FNCALL	_main,_send_string
	FNCALL	_sprintf,__doprnt
	FNCALL	_printf,__doprnt
	FNCALL	__doprnt,Fake
	FNCALL	__doprnt,_putch
	FNCALL	__doprnt,_isdigit
	FNCALL	__doprnt,___wmul
	FNCALL	__doprnt,___ftge
	FNCALL	__doprnt,___ftneg
	FNCALL	__doprnt,___awdiv
	FNCALL	__doprnt,_scale
	FNCALL	__doprnt,___ftmul
	FNCALL	__doprnt,_fround
	FNCALL	__doprnt,___ftadd
	FNCALL	__doprnt,___fttol
	FNCALL	__doprnt,__div_to_l_
	FNCALL	__doprnt,__tdiv_to_l_
	FNCALL	__doprnt,___lltoft
	FNCALL	__doprnt,___ftsub
	FNCALL	__doprnt,___lldiv
	FNCALL	__doprnt,___llmod
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
	FNCALL	_send_string,_send_char
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
	global	_data_rx
	global	_TMR1
_TMR1	set	14
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_TMR0
_TMR0	set	1
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_TMR2
_TMR2	set	17
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
	global	_TXIF
_TXIF	set	100
	global	_PR2
_PR2	set	146
	global	_SPBRG
_SPBRG	set	153
	global	_SPBRGH
_SPBRGH	set	154
	global	_TRISD
_TRISD	set	136
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
	global	_TRISA4
_TRISA4	set	1068
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
	
STR_3:	
	retlw	102	;'f'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	51	;'3'
	retlw	46	;'.'
	retlw	50	;'2'
	retlw	102	;'f'
	retlw	32	;' '
	retlw	32	;' '
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
	file	"BT Ôn Thi 06.as"
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

_data_rx:
       ds      10

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+011h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	_fround$4201
_fround$4201:	; 3 bytes @ 0x0
	ds	3
	global	_fround$4200
_fround$4200:	; 3 bytes @ 0x3
	ds	3
	global	fround@prec
fround@prec:	; 1 bytes @ 0x6
	ds	1
	global	?__doprnt
?__doprnt:	; 2 bytes @ 0x7
	global	__doprnt@f
__doprnt@f:	; 1 bytes @ 0x7
	ds	1
	global	__doprnt@ap
__doprnt@ap:	; 1 bytes @ 0x8
	ds	1
	global	??__doprnt
??__doprnt:	; 0 bytes @ 0x9
	ds	5
	global	__doprnt$3205
__doprnt$3205:	; 4 bytes @ 0xE
	ds	4
	global	__doprnt@integ
__doprnt@integ:	; 3 bytes @ 0x12
	ds	3
	global	__doprnt@_val
__doprnt@_val:	; 4 bytes @ 0x15
	ds	4
	global	__doprnt@flag
__doprnt@flag:	; 2 bytes @ 0x19
	ds	2
	global	__doprnt@exp
__doprnt@exp:	; 2 bytes @ 0x1B
	ds	2
	global	__doprnt@width
__doprnt@width:	; 2 bytes @ 0x1D
	ds	2
	global	__doprnt@fval
__doprnt@fval:	; 3 bytes @ 0x1F
	ds	3
	global	__doprnt@prec
__doprnt@prec:	; 2 bytes @ 0x22
	ds	2
	global	__doprnt@c
__doprnt@c:	; 1 bytes @ 0x24
	ds	1
	global	__doprnt@pb
__doprnt@pb:	; 1 bytes @ 0x25
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0x26
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x26
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x26
	ds	4
	global	printf@f
printf@f:	; 1 bytes @ 0x2A
	global	sprintf@wh
sprintf@wh:	; 1 bytes @ 0x2A
	ds	1
	global	printf@ap
printf@ap:	; 1 bytes @ 0x2B
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x2B
	ds	1
	global	printf@pb
printf@pb:	; 2 bytes @ 0x2C
	global	sprintf@pb
sprintf@pb:	; 2 bytes @ 0x2C
	ds	2
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_tx
?_tx:	; 0 bytes @ 0x0
	global	?_rx
?_rx:	; 0 bytes @ 0x0
	global	?_send_string
?_send_string:	; 0 bytes @ 0x0
	global	?_lcd_putc
?_lcd_putc:	; 0 bytes @ 0x0
	global	?_isprint
?_isprint:	; 1 bit 
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ngat
?_ngat:	; 0 bytes @ 0x0
	global	?_send_char
?_send_char:	; 0 bytes @ 0x0
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
	global	??_tx
??_tx:	; 0 bytes @ 0x8
	global	??_rx
??_rx:	; 0 bytes @ 0x8
	global	?_lcd_put_byte
?_lcd_put_byte:	; 0 bytes @ 0x8
	global	??_lcd_busy
??_lcd_busy:	; 0 bytes @ 0x8
	global	??_isprint
??_isprint:	; 0 bytes @ 0x8
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x8
	global	??_send_char
??_send_char:	; 0 bytes @ 0x8
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
	global	send_char@data
send_char@data:	; 1 bytes @ 0x8
	global	lcd_put_byte@b
lcd_put_byte@b:	; 1 bytes @ 0x8
	global	_isdigit$3713
_isdigit$3713:	; 1 bytes @ 0x8
	global	_isprint$3716
_isprint$3716:	; 1 bytes @ 0x8
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
	global	??_send_string
??_send_string:	; 0 bytes @ 0x9
	global	??_lcd_put_byte
??_lcd_put_byte:	; 0 bytes @ 0x9
	global	??___lbmod
??___lbmod:	; 0 bytes @ 0x9
	global	send_string@s
send_string@s:	; 1 bytes @ 0x9
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
	global	?___bmul
?___bmul:	; 1 bytes @ 0x11
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
	global	?_putch
?_putch:	; 0 bytes @ 0x1E
	global	putch@c
putch@c:	; 1 bytes @ 0x1E
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x1E
	ds	1
	global	??_putch
??_putch:	; 0 bytes @ 0x1F
	ds	3
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
	global	_scale$4202
_scale$4202:	; 3 bytes @ 0x39
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
	global	??_printf
??_printf:	; 0 bytes @ 0x44
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0x44
	global	??_main
??_main:	; 0 bytes @ 0x44
	global	??___ftsub
??___ftsub:	; 0 bytes @ 0x44
;;Data sizes: Strings 30, constant 118, data 0, bss 20, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     68      71
;; BANK1           80     46      63
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?i1___ftpack	float  size(1) Largest target is 0
;;
;; ?i1___ftadd	float  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK1[2]), ?_printf(BANK1[2]), 
;;
;; ?___ftpack	float  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK1[2]), ?_printf(BANK1[2]), 
;;
;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?___llmod	unsigned long  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK1[2]), ?_printf(BANK1[2]), 
;;
;; ?___lltoft	float  size(1) Largest target is 0
;;
;; ?__tdiv_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?__div_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK1[2]), ?_printf(BANK1[2]), 
;;
;; ?___ftneg	float  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK1[2]), ?_printf(BANK1[2]), 
;;
;; ?___awmod	int  size(2) Largest target is 40
;;		 -> ?_sprintf(BANK1[2]), ?_printf(BANK1[2]), dpowers(CODE[40]), 
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?_scale	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_fround	unsigned int  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK1[2]), ?_printf(BANK1[2]), 
;;
;; ?___ftsub	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___altoft	float  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 10
;;		 -> STR_3(CODE[10]), 
;;
;; ?_sprintf	int  size(1) Largest target is 10
;;		 -> NULL(NULL[0]), data_rx(BANK1[10]), 
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK1[2]), ?_printf(BANK1[2]), 
;;
;; sprintf@wh	PTR unsigned char  size(1) Largest target is 10
;;		 -> data_rx(BANK1[10]), 
;;
;; pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; pb.ptr	PTR unsigned char  size(1) Largest target is 10
;;		 -> NULL(NULL[0]), data_rx(BANK1[10]), 
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 11
;;		 -> STR_2(CODE[9]), STR_1(CODE[11]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK1[2]), ?_printf(BANK1[2]), 
;;
;; pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; pb.ptr	PTR unsigned char  size(1) Largest target is 10
;;		 -> NULL(NULL[0]), data_rx(BANK1[10]), 
;;
;; _doprnt@ap	PTR PTR void  size(1) Largest target is 2
;;		 -> sprintf@ap(BANK1[1]), printf@ap(BANK1[1]), 
;;
;; _doprnt@f	PTR const unsigned char  size(1) Largest target is 11
;;		 -> STR_3(CODE[10]), STR_2(CODE[9]), STR_1(CODE[11]), 
;;
;; S3141__prbuf$func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; _doprnt@pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; S3141__prbuf$ptr	PTR unsigned char  size(1) Largest target is 10
;;		 -> NULL(NULL[0]), data_rx(BANK1[10]), 
;;
;; _doprnt@pb.ptr	PTR unsigned char  size(1) Largest target is 10
;;		 -> NULL(NULL[0]), data_rx(BANK1[10]), 
;;
;; _doprnt@pb	PTR struct __prbuf size(1) Largest target is 3
;;		 -> sprintf@pb(BANK1[2]), printf@pb(BANK1[2]), 
;;
;; S3187$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; send_string@s	PTR const unsigned char  size(1) Largest target is 10
;;		 -> data_rx(BANK1[10]), 
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
;;   __doprnt->___ftsub
;;   _putch->___llmod
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
;;   _send_string->_send_char
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
;;   _main->_sprintf
;;   _sprintf->__doprnt
;;   _printf->__doprnt
;;   __doprnt->_fround
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
;; (0) _main                                                10    10      0   37230
;;                           _lcd_init
;;                                 _tx
;;                                 _rx
;;                           ___altoft
;;                            ___ftmul
;;                            ___ftsub
;;                         _lcd_gotoxy
;;                             _printf
;;                            _sprintf
;;                        _send_string
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                              8     4      4   16882
;;                                             38 BANK1      8     4      4
;;                            __doprnt
;; ---------------------------------------------------------------------------------
;; (1) _printf                                               8     4      4   16806
;;                                             38 BANK1      8     4      4
;;                            __doprnt
;; ---------------------------------------------------------------------------------
;; (2) __doprnt                                             35    33      2   16448
;;                                              7 BANK1     31    29      2
;;                   Absolute function
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
;; (3) _putch                                                1     0      1     713
;;                                             30 BANK0      1     0      1
;;                           _lcd_putc
;;                            ___llmod (ARG)
;;                            ___lldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (4) _lcd_putc                                             1     1      0     691
;;                                             16 BANK0      1     1      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;;                         _lcd_gotoxy
;;                            _isprint
;; ---------------------------------------------------------------------------------
;; (3) ___ftsub                                              6     0      6    1602
;;                                             62 BANK0      6     0      6
;;                            ___ftadd
;;                            ___ftmul (ARG)
;;                           ___altoft (ARG)
;;                           ___lltoft (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _scale                                               14    11      3    2161
;;                                             50 BANK0     11     8      3
;;                            ___awmod
;;                            ___awdiv
;;                            ___ftmul
;;                             ___bmul
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _fround                                              13    10      3    1759
;;                                             62 BANK0      3     0      3
;;                                              0 BANK1      7     7      0
;;                            ___lbmod
;;                             ___bmul
;;                            ___lbdiv
;;                            ___ftmul
;;                            ___ftadd (ARG)
;; ---------------------------------------------------------------------------------
;; (5) _lcd_gotoxy                                           3     2      1     313
;;                                             13 BANK0      3     2      1
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             4     4      0     244
;;                                             13 BANK0      3     3      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (3) ___lltoft                                             5     1      4     414
;;                                             16 BANK0      5     1      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (1) ___altoft                                             6     2      4     516
;;                                             16 BANK0      6     2      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (4) ___ftmul                                             15     9      6     800
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
;; (4) ___ftadd                                             12     6      6    1537
;;                                             50 BANK0     12     6      6
;;                           ___ftpack
;;                            ___lbmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___ftmul (ARG)
;; ---------------------------------------------------------------------------------
;; (6) _lcd_busy                                             2     2      0      23
;;                                              8 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (6) _lcd_put_byte                                         5     4      1     221
;;                                              8 BANK0      5     4      1
;; ---------------------------------------------------------------------------------
;; (1) _send_string                                          1     1      0      67
;;                                              9 BANK0      1     1      0
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (4) ___awmod                                              6     2      4     296
;;                                              8 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (3) ___lldiv                                             13     5      8     162
;;                                              8 BANK0     13     5      8
;; ---------------------------------------------------------------------------------
;; (3) ___ftge                                               6     0      6     136
;;                                              8 BANK0      6     0      6
;; ---------------------------------------------------------------------------------
;; (3) ___ftneg                                              3     0      3      45
;;                                              8 BANK0      3     0      3
;; ---------------------------------------------------------------------------------
;; (3) ___llmod                                              9     1      8     159
;;                                             21 BANK0      9     1      8
;;                            ___lldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___awdiv                                              8     4      4     300
;;                                             14 BANK0      8     4      4
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___fttol                                             13     9      4     252
;;                                             22 BANK0     13     9      4
;;                           ___ftpack (ARG)
;;                            ___awmod (ARG)
;;                            ___awdiv (ARG)
;;                             ___bmul (ARG)
;; ---------------------------------------------------------------------------------
;; (5) ___ftpack                                             8     3      5     312
;;                                              8 BANK0      8     3      5
;; ---------------------------------------------------------------------------------
;; (4) ___lbmod                                              5     4      1     232
;;                                              8 BANK0      5     4      1
;; ---------------------------------------------------------------------------------
;; (4) ___lbdiv                                              4     3      1     241
;;                                             13 BANK0      4     3      1
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___wmul                                               6     2      4     136
;;                                              8 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (4) ___bmul                                               3     2      1      68
;;                                             17 BANK0      3     2      1
;;                            ___lbmod (ARG)
;;                            ___lbdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) __div_to_l_                                          20    14      6     446
;;                                              8 BANK0     20    14      6
;; ---------------------------------------------------------------------------------
;; (3) __tdiv_to_l_                                         15     9      6     303
;;                                              8 BANK0     15     9      6
;; ---------------------------------------------------------------------------------
;; (3) _isdigit                                              2     2      0      68
;;                                              8 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (3) Absolute function(Fake)                               1     0      1       0
;;                                              8 BANK0      1     0      1
;; ---------------------------------------------------------------------------------
;; (5) _isprint                                              2     2      0      68
;;                                              8 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _send_char                                            1     1      0      22
;;                                              8 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _rx                                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _tx                                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (7) _ngat                                                 2     2      0    3432
;;                                              6 BANK0      2     2      0
;;                          i1___ftadd
;; ---------------------------------------------------------------------------------
;; (8) i1___ftadd                                           12     6      6    3432
;;                                              8 COMMON     6     0      6
;;                                              0 BANK0      6     6      0
;;                         i1___ftpack
;; ---------------------------------------------------------------------------------
;; (9) i1___ftpack                                           8     3      5     679
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 9
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_put_byte
;;     _lcd_busy
;;   _tx
;;   _rx
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
;;     __doprnt
;;       Absolute function(Fake)
;;       _putch
;;         _lcd_putc
;;           _lcd_put_byte
;;           _lcd_busy
;;           _lcd_gotoxy
;;             _lcd_put_byte
;;             _lcd_busy
;;           _isprint
;;         ___llmod (ARG)
;;           ___lldiv (ARG)
;;         ___lldiv (ARG)
;;       _isdigit
;;       ___wmul
;;       ___ftge
;;       ___ftneg
;;       ___awdiv
;;         ___awmod (ARG)
;;       _scale
;;         ___awmod
;;         ___awdiv
;;           ___awmod (ARG)
;;         ___ftmul
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
;;         ___bmul
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
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
;;       _fround
;;         ___lbmod
;;         ___bmul
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv
;;           ___lbmod (ARG)
;;         ___ftmul
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
;;         ___ftadd (ARG)
;;           ___ftpack
;;           ___lbmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___altoft (ARG)
;;               ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___lbmod (ARG)
;;                 ___lbdiv (ARG)
;;                   ___lbmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;             ___lbmod (ARG)
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
;;       ___fttol
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;       __div_to_l_
;;       __tdiv_to_l_
;;       ___lltoft
;;         ___ftpack
;;       ___ftsub
;;         ___ftadd
;;           ___ftpack
;;           ___lbmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___altoft (ARG)
;;               ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___lbmod (ARG)
;;                 ___lbdiv (ARG)
;;                   ___lbmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;             ___lbmod (ARG)
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
;;         ___altoft (ARG)
;;           ___ftpack
;;         ___lltoft (ARG)
;;           ___ftpack
;;       ___lldiv
;;       ___llmod
;;         ___lldiv (ARG)
;;   _sprintf
;;     __doprnt
;;       Absolute function(Fake)
;;       _putch
;;         _lcd_putc
;;           _lcd_put_byte
;;           _lcd_busy
;;           _lcd_gotoxy
;;             _lcd_put_byte
;;             _lcd_busy
;;           _isprint
;;         ___llmod (ARG)
;;           ___lldiv (ARG)
;;         ___lldiv (ARG)
;;       _isdigit
;;       ___wmul
;;       ___ftge
;;       ___ftneg
;;       ___awdiv
;;         ___awmod (ARG)
;;       _scale
;;         ___awmod
;;         ___awdiv
;;           ___awmod (ARG)
;;         ___ftmul
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
;;         ___bmul
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
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
;;       _fround
;;         ___lbmod
;;         ___bmul
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv
;;           ___lbmod (ARG)
;;         ___ftmul
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
;;         ___ftadd (ARG)
;;           ___ftpack
;;           ___lbmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___altoft (ARG)
;;               ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___lbmod (ARG)
;;                 ___lbdiv (ARG)
;;                   ___lbmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;             ___lbmod (ARG)
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
;;       ___fttol
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;       __div_to_l_
;;       __tdiv_to_l_
;;       ___lltoft
;;         ___ftpack
;;       ___ftsub
;;         ___ftadd
;;           ___ftpack
;;           ___lbmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___altoft (ARG)
;;               ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___lbmod (ARG)
;;                 ___lbdiv (ARG)
;;                   ___lbmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;             ___lbmod (ARG)
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
;;         ___altoft (ARG)
;;           ___ftpack
;;         ___lltoft (ARG)
;;           ___ftpack
;;       ___lldiv
;;       ___llmod
;;         ___lldiv (ARG)
;;   _send_string
;;     _send_char
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
;;STACK                0      0       C       2        0.0%
;;ABS                  0      0      94       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     44      47       5       88.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     2E      3F       7       78.8%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      A0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 24 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 06\BT Ôn Thi 06.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data_tx        10    0        unsigned char [10]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 160/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_lcd_init
;;		_tx
;;		_rx
;;		___altoft
;;		___ftmul
;;		___ftsub
;;		_lcd_gotoxy
;;		_printf
;;		_sprintf
;;		_send_string
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 06\BT Ôn Thi 06.c"
	line	24
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	25
	
l8881:	
;BT Ôn Thi 06.c: 25: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	26
	
l8883:	
;BT Ôn Thi 06.c: 26: lcd_init();
	fcall	_lcd_init
	line	27
	
l8885:	
;BT Ôn Thi 06.c: 27: TRISA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1068/8)^080h,(1068)&7
	line	28
	
l8887:	
;BT Ôn Thi 06.c: 28: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	29
	
l8889:	
;BT Ôn Thi 06.c: 29: TRISE0 = 0;
	bcf	(1096/8)^080h,(1096)&7
	line	32
	
l8891:	
;BT Ôn Thi 06.c: 32: TRISC2 = 0;
	bcf	(1082/8)^080h,(1082)&7
	line	34
	
l8893:	
;BT Ôn Thi 06.c: 34: T2CKPS1 = 0; T2CKPS0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(145/8),(145)&7
	
l8895:	
	bcf	(144/8),(144)&7
	line	35
	
l8897:	
;BT Ôn Thi 06.c: 35: TMR2 = 0; PR2 = 249;
	clrf	(17)	;volatile
	
l8899:	
	movlw	(0F9h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	36
	
l8901:	
;BT Ôn Thi 06.c: 36: TMR2ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(146/8),(146)&7
	line	38
	
l8903:	
;BT Ôn Thi 06.c: 38: CCP1CON = 0b00001100;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	39
	
l8905:	
;BT Ôn Thi 06.c: 39: CCPR1L = 125;
	movlw	(07Dh)
	movwf	(21)	;volatile
	line	42
	
l8907:	
;BT Ôn Thi 06.c: 42: T0CS = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1037/8)^080h,(1037)&7
	line	43
	
l8909:	
;BT Ôn Thi 06.c: 43: PSA = 0;
	bcf	(1035/8)^080h,(1035)&7
	line	44
	
l8911:	
;BT Ôn Thi 06.c: 44: PS2= 0; PS1 = 1; PS0= 0;
	bcf	(1034/8)^080h,(1034)&7
	
l8913:	
	bsf	(1033/8)^080h,(1033)&7
	
l8915:	
	bcf	(1032/8)^080h,(1032)&7
	line	45
	
l8917:	
;BT Ôn Thi 06.c: 45: TMR0 = 7;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	48
	
l8919:	
;BT Ôn Thi 06.c: 48: T0IE = 1;
	bsf	(93/8),(93)&7
	line	49
	
l8921:	
;BT Ôn Thi 06.c: 49: T0IF = 0;
	bcf	(90/8),(90)&7
	line	50
	
l8923:	
;BT Ôn Thi 06.c: 50: GIE = 1;
	bsf	(95/8),(95)&7
	line	53
	
l8925:	
;BT Ôn Thi 06.c: 53: TMR1GE=0;
	bcf	(134/8),(134)&7
	line	54
	
l8927:	
;BT Ôn Thi 06.c: 54: TMR1CS=1;
	bsf	(129/8),(129)&7
	line	55
	
l8929:	
;BT Ôn Thi 06.c: 55: T1SYNC=1;
	bsf	(130/8),(130)&7
	line	56
	
l8931:	
;BT Ôn Thi 06.c: 56: T1CKPS1=0;T1CKPS0=0;
	bcf	(133/8),(133)&7
	
l8933:	
	bcf	(132/8),(132)&7
	line	58
	
l8935:	
;BT Ôn Thi 06.c: 58: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	59
	
l8937:	
;BT Ôn Thi 06.c: 59: TMR1H=0;
	clrf	(15)	;volatile
	line	60
	
l8939:	
;BT Ôn Thi 06.c: 60: TMR1L=0;
	clrf	(14)	;volatile
	line	68
	
l8941:	
;BT Ôn Thi 06.c: 68: tx();
	fcall	_tx
	line	69
	
l8943:	
;BT Ôn Thi 06.c: 69: rx();
	fcall	_rx
	line	74
	
l8945:	
;BT Ôn Thi 06.c: 73: {
;BT Ôn Thi 06.c: 74: f = xung-xung*0.0038;
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
	line	75
	
l8947:	
;BT Ôn Thi 06.c: 75: lcd_gotoxy(0,0);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(?_lcd_gotoxy)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	76
	
l8949:	
;BT Ôn Thi 06.c: 76: printf("xung: %08u",xung);
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
	line	77
	
l8951:	
;BT Ôn Thi 06.c: 77: lcd_gotoxy(0,1);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	78
	
l8953:	
;BT Ôn Thi 06.c: 78: printf("f: %3.2f",f);
	bsf	status, 5	;RP0=1, select bank1
	movf	(_f)^080h,w
	movwf	(?_printf)^080h
	movf	(_f+1)^080h,w
	movwf	(?_printf+1)^080h
	movf	(_f+2)^080h,w
	movwf	(?_printf+2)^080h
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	line	79
	
l8955:	
;BT Ôn Thi 06.c: 79: sprintf(data_rx,"f:%3.2f  ",f);
	movlw	((STR_3-__stringbase))&0ffh
	movwf	(?_sprintf)^080h
	movf	(_f)^080h,w
	movwf	0+(?_sprintf)^080h+01h
	movf	(_f+1)^080h,w
	movwf	1+(?_sprintf)^080h+01h
	movf	(_f+2)^080h,w
	movwf	2+(?_sprintf)^080h+01h
	movlw	(_data_rx)&0ffh
	fcall	_sprintf
	line	80
	
l8957:	
;BT Ôn Thi 06.c: 80: send_string(data_rx);
	movlw	(_data_rx)&0ffh
	fcall	_send_string
	goto	l8945
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	82
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_sprintf
psect	text938,local,class=CODE,delta=2
global __ptext938
__ptext938:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\sprintf.c"
;; Parameters:    Size  Location     Type
;;  wh              1    wreg     PTR unsigned char 
;;		 -> data_rx(10), 
;;  f               1   38[BANK1 ] PTR const unsigned char 
;;		 -> STR_3(10), 
;; Auto vars:     Size  Location     Type
;;  wh              1   42[BANK1 ] PTR unsigned char 
;;		 -> data_rx(10), 
;;  pb              2   44[BANK1 ] struct __prbuf
;;  ap              1   43[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   38[BANK1 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 160/20
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       4       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text938
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\sprintf.c"
	line	14
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@wh stored from wreg
	line	31
	movwf	(sprintf@wh)^080h
	
l8869:	
	movf	(sprintf@wh)^080h,w
	movwf	(sprintf@pb)^080h
	line	32
	
l8871:	
	clrf	(0+sprintf@pb+01h)^080h
	line	33
	
l8873:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)^080h
	line	34
	
l8875:	
	movf	(sprintf@f)^080h,w
	movwf	(?__doprnt)^080h
	movlw	(sprintf@ap)&0ffh
	movwf	(0+?__doprnt+01h)^080h
	movlw	(sprintf@pb)&0ffh
	fcall	__doprnt
	line	35
	
l8877:	
	movf	(sprintf@pb)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	38
	
l3360:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_printf
psect	text939,local,class=CODE,delta=2
global __ptext939
__ptext939:

;; *************** function _printf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\printf.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_2(9), STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  f               1   42[BANK1 ] PTR const unsigned char 
;;		 -> STR_2(9), STR_1(11), 
;;  pb              2   44[BANK1 ] struct __prbuf
;;  ap              1   43[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   38[BANK1 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       4       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text939
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\printf.c"
	line	14
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	23
	movwf	(printf@f)^080h
	
l8859:	
	clrf	(printf@pb)^080h
	line	24
	
l8861:	
	movlw	((fp__putch-fpbase))&0ffh
	movwf	(0+printf@pb+01h)^080h
	line	25
	
l8863:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)^080h
	line	26
	
l8865:	
;	Return value of _printf is never used
	movf	(printf@f)^080h,w
	movwf	(?__doprnt)^080h
	movlw	(printf@ap)&0ffh
	movwf	(0+?__doprnt+01h)^080h
	movlw	(printf@pb)&0ffh
	fcall	__doprnt
	line	28
	
l3353:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	__doprnt
psect	text940,local,class=CODE,delta=2
global __ptext940
__ptext940:

;; *************** function __doprnt *****************
;; Defined at:
;;		line 455 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  pb              1    wreg     PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  f               1    7[BANK1 ] PTR const unsigned char 
;;		 -> STR_3(10), STR_2(9), STR_1(11), 
;;  ap              1    8[BANK1 ] PTR PTR void 
;;		 -> sprintf@ap(1), printf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  pb              1   37[BANK1 ] PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  _val            4   21[BANK1 ] struct .
;;  fval            3   31[BANK1 ] struct .
;;  integ           3   18[BANK1 ] struct .
;;  ival            3    0        struct .
;;  prec            2   34[BANK1 ] int 
;;  width           2   29[BANK1 ] int 
;;  exp             2   27[BANK1 ] int 
;;  flag            2   25[BANK1 ] unsigned short 
;;  c               1   36[BANK1 ] char 
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
;;      Params:         0       0       2       0       0
;;      Locals:         0       0      24       0       0
;;      Temps:          0       0       5       0       0
;;      Totals:         0       0      31       0       0
;;Total ram usage:       31 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		Absolute function
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
;;		_printf
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text940
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	455
	global	__size_of__doprnt
	__size_of__doprnt	equ	__end_of__doprnt-__doprnt
	
__doprnt:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in __doprnt: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;__doprnt@pb stored from wreg
	movwf	(__doprnt@pb)^080h
	line	540
	
l8489:	
	goto	l8853
	line	542
	
l8491:	
	movf	(__doprnt@c)^080h,w
	xorlw	025h
	skipnz
	goto	u5601
	goto	u5600
u5601:
	goto	l8501
u5600:
	line	545
	
l8493:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u5611
	goto	u5610
u5611:
	goto	l8497
u5610:
	
l8495:	
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l8853
	
l8497:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(__doprnt@c)^080h,w
	movwf	indf
	
l8499:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	goto	l8853
	line	550
	
l8501:	
	clrf	(__doprnt@width)^080h
	clrf	(__doprnt@width+1)^080h
	line	552
	clrf	(__doprnt@flag)^080h
	clrf	(__doprnt@flag+1)^080h
	goto	l8507
	line	583
	
l2230:	
	line	584
	bsf	(__doprnt@flag)^080h+(2/8),(2)&7
	line	585
	
l8503:	
	incf	(__doprnt@f)^080h,f
	line	555
	
l8507:	
	movf	(__doprnt@f)^080h,w
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
	goto	l2230
	goto	l8509
	opt asmopt_on

	line	601
	
l8509:	
	movf	(__doprnt@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u5621
	goto	u5620
u5621:
	goto	l8519
u5620:
	line	602
	
l8511:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(__doprnt@width)^080h
	clrf	(__doprnt@width+1)^080h
	line	604
	
l8513:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@width+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___wmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@width)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	addwf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??__doprnt+0)^080h+0
	movlw	0
	skipnc
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	addwf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(??__doprnt+0)^080h+0
	movf	0+(??__doprnt+0)^080h+0,w
	addlw	low(0FFD0h)
	movwf	(__doprnt@width)^080h
	movf	1+(??__doprnt+0)^080h+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(__doprnt@width)^080h
	
l8515:	
	incf	(__doprnt@f)^080h,f
	line	605
	
l8517:	
	movf	(__doprnt@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u5631
	goto	u5630
u5631:
	goto	l8513
u5630:
	line	614
	
l8519:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u5641
	goto	u5640
u5641:
	goto	l8533
u5640:
	line	615
	
l8521:	
	bsf	(__doprnt@flag)^080h+(14/8),(14)&7
	line	616
	
l8523:	
	incf	(__doprnt@f)^080h,f
	line	624
	
l8525:	
	clrf	(__doprnt@prec)^080h
	clrf	(__doprnt@prec+1)^080h
	line	625
	goto	l8531
	line	626
	
l8527:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@prec+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___wmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	addwf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??__doprnt+0)^080h+0
	movlw	0
	skipnc
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	addwf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(??__doprnt+0)^080h+0
	movf	0+(??__doprnt+0)^080h+0,w
	addlw	low(0FFD0h)
	movwf	(__doprnt@prec)^080h
	movf	1+(??__doprnt+0)^080h+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(__doprnt@prec)^080h
	
l8529:	
	incf	(__doprnt@f)^080h,f
	line	625
	
l8531:	
	movf	(__doprnt@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u5651
	goto	u5650
u5651:
	goto	l8527
u5650:
	goto	l8541
	line	629
	
l8533:	
	clrf	(__doprnt@prec)^080h
	clrf	(__doprnt@prec+1)^080h
	line	631
	
l8535:	
	bsf	(__doprnt@flag)^080h+(12/8),(12)&7
	goto	l8541
	line	665
	
l2245:	
	line	666
	bsf	(__doprnt@flag)^080h+(10/8),(10)&7
	line	667
	goto	l8543
	line	821
	
l8537:	
	movlw	0C0h
	iorwf	(__doprnt@flag)^080h,f
	line	822
	goto	l8543
	line	638
	
l8541:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@f)^080h,w
	incf	(__doprnt@f)^080h,f
	movwf	fsr0
	fcall	stringdir
	movwf	(__doprnt@c)^080h
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
	goto	l8855
	xorlw	102^0	; case 102
	skipnz
	goto	l2245
	xorlw	117^102	; case 117
	skipnz
	goto	l8537
	goto	l8853
	opt asmopt_on

	line	828
	
l8543:	
	movlw	low(0700h)
	andwf	(__doprnt@flag)^080h,w
	movwf	(??__doprnt+0)^080h+0
	movlw	high(0700h)
	andwf	(__doprnt@flag+1)^080h,w
	movwf	1+(??__doprnt+0)^080h+0
	movf	1+(??__doprnt+0)^080h+0,w
	iorwf	0+(??__doprnt+0)^080h+0,w
	skipnz
	goto	u5661
	goto	u5660
u5661:
	goto	l8745
u5660:
	line	830
	
l8545:	
	btfss	(__doprnt@flag+1)^080h,(12)&7
	goto	u5671
	goto	u5670
u5671:
	goto	l8549
u5670:
	line	832
	
l8547:	
	movlw	06h
	movwf	(__doprnt@prec)^080h
	clrf	(__doprnt@prec+1)^080h
	line	833
	
l8549:	
	movf	(__doprnt@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	((??__doprnt+0)^080h+0)
	movlw	03h
	addwf	indf,f
	movf	((??__doprnt+0)^080h+0),w
	movwf	fsr0
	movf	indf,w
	movwf	(__doprnt@fval)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(__doprnt@fval+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(__doprnt@fval+2)^080h
	line	834
	
l8551:	
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+2)
	clrf	0+(?___ftge)+03h
	clrf	1+(?___ftge)+03h
	clrf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5681
	goto	u5680
u5681:
	goto	l8557
u5680:
	line	835
	
l8553:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftneg)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftneg+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval+2)^080h
	line	836
	
l8555:	
	movlw	03h
	iorwf	(__doprnt@flag)^080h,f
	line	838
	
l8557:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(__doprnt@exp)^080h
	clrf	(__doprnt@exp+1)^080h
	line	839
	
l8559:	
	movf	(__doprnt@fval+2)^080h,w
	iorwf	(__doprnt@fval+1)^080h,w
	iorwf	(__doprnt@fval)^080h,w
	skipnz
	goto	u5691
	goto	u5690
u5691:
	goto	l8589
u5690:
	line	840
	
l8561:	
	movlw	low(__doprnt@fval)
	movwf	fsr0
	movf	indf,w
	movwf	(??__doprnt+0)^080h+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__doprnt+0)^080h+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__doprnt+0)^080h+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__doprnt+0)^080h+0+3
	movlw	0Fh
u5705:
	clrc
	rrf	(??__doprnt+0)^080h+3,f
	rrf	(??__doprnt+0)^080h+2,f
	rrf	(??__doprnt+0)^080h+1,f
	rrf	(??__doprnt+0)^080h+0,f
u5700:
	addlw	-1
	skipz
	goto	u5705
	movf	1+(??__doprnt+0)^080h+0,w
	movwf	(__doprnt@exp+1)^080h
	movf	0+(??__doprnt+0)^080h+0,w
	movwf	(__doprnt@exp)^080h
	
l8563:	
	movlw	0FFh
	andwf	(__doprnt@exp)^080h,f
	clrf	(__doprnt@exp+1)^080h
	
l8565:	
	movlw	-126
	addwf	(__doprnt@exp)^080h,f
	skipc
	decf	(__doprnt@exp+1)^080h,f
	line	841
	
l8567:	
	movlw	-1
	addwf	(__doprnt@exp)^080h,f
	skipc
	decf	(__doprnt@exp+1)^080h,f
	line	842
	
l8569:	
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@exp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___wmul)+02h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@exp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@exp)^080h
	line	843
	
l8571:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@exp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___awdiv)+02h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@exp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@exp)^080h
	line	844
	
l8573:	
	btfss	(__doprnt@exp+1)^080h,7
	goto	u5711
	goto	u5710
u5711:
	goto	l8577
u5710:
	line	845
	
l8575:	
	movlw	-1
	addwf	(__doprnt@exp)^080h,f
	skipc
	decf	(__doprnt@exp+1)^080h,f
	line	849
	
l8577:	
	decf	(__doprnt@exp)^080h,w
	xorlw	0ffh
	fcall	_scale
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ+2)^080h
	line	850
	
l8579:	
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ+2)^080h
	line	851
	
l8581:	
	movf	(__doprnt@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+2)^080h,w
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
	goto	u5721
	goto	u5720
u5721:
	goto	l8585
u5720:
	line	852
	
l8583:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(__doprnt@exp)^080h,f
	skipc
	decf	(__doprnt@exp+1)^080h,f
	goto	l8589
	line	853
	
l8585:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+2)^080h,w
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
	goto	u5731
	goto	u5730
u5731:
	goto	l8589
u5730:
	line	854
	
l8587:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(__doprnt@exp)^080h,f
	skipnz
	incf	(__doprnt@exp+1)^080h,f
	line	1115
	
l8589:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u5745
	movlw	low(0Dh)
	subwf	(__doprnt@prec)^080h,w
u5745:

	skipnc
	goto	u5741
	goto	u5740
u5741:
	goto	l8593
u5740:
	line	1116
	
l8591:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec)^080h,w
	fcall	_fround
	movf	(0+(?_fround)),w
	movwf	(?___ftadd)
	movf	(1+(?_fround)),w
	movwf	(?___ftadd+1)
	movf	(2+(?_fround)),w
	movwf	(?___ftadd+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval+2)^080h
	line	1119
	
l8593:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u5755
	movlw	low(0Ah)
	subwf	(__doprnt@exp)^080h,w
u5755:

	skipnc
	goto	u5751
	goto	u5750
u5751:
	goto	l8601
u5750:
	
l8595:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval+2)^080h,w
	iorwf	(__doprnt@fval+1)^080h,w
	iorwf	(__doprnt@fval)^080h,w
	skipnz
	goto	u5761
	goto	u5760
u5761:
	goto	l8617
u5760:
	
l8597:	
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	iorwf	(2+(?___fttol)),w
	iorwf	(1+(?___fttol)),w
	iorwf	(0+(?___fttol)),w
	skipz
	goto	u5771
	goto	u5770
u5771:
	goto	l8617
u5770:
	
l8599:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5785
	movlw	low(02h)
	subwf	(__doprnt@exp)^080h,w
u5785:

	skipc
	goto	u5781
	goto	u5780
u5781:
	goto	l8617
u5780:
	line	1123
	
l8601:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+2)^080h,w
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
	goto	u5791
	goto	u5790
u5791:
	goto	l8605
u5790:
	line	1124
	
l8603:	
	movlw	-9
	bsf	status, 5	;RP0=1, select bank1
	addwf	(__doprnt@exp)^080h,f
	skipc
	decf	(__doprnt@exp+1)^080h,f
	line	1125
	goto	l8607
	line	1126
	
l8605:	
	movlw	-8
	bsf	status, 5	;RP0=1, select bank1
	addwf	(__doprnt@exp)^080h,f
	skipc
	decf	(__doprnt@exp+1)^080h,f
	line	1128
	
l8607:	
	movf	(__doprnt@exp)^080h,w
	fcall	_scale
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ+2)^080h
	line	1129
	
l8611:	
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?__tdiv_to_l_)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?__tdiv_to_l_+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?__tdiv_to_l_+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?__tdiv_to_l_)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?__tdiv_to_l_)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?__tdiv_to_l_)+03h
	fcall	__tdiv_to_l_
	movf	(3+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt$3205+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt$3205+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt$3205+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt$3205)^080h

	
l8613:	
	movf	(__doprnt$3205+3)^080h,w
	movwf	(__doprnt@_val+3)^080h
	movf	(__doprnt$3205+2)^080h,w
	movwf	(__doprnt@_val+2)^080h
	movf	(__doprnt$3205+1)^080h,w
	movwf	(__doprnt@_val+1)^080h
	movf	(__doprnt$3205)^080h,w
	movwf	(__doprnt@_val)^080h

	line	1132
	
l8615:	
	clrf	(__doprnt@fval)^080h
	clrf	(__doprnt@fval+1)^080h
	clrf	(__doprnt@fval+2)^080h
	line	1133
	goto	l8621
	line	1134
	
l8617:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val)^080h

	line	1135
	movf	(__doprnt@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lltoft+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lltoft+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lltoft+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val)^080h,w
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
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftsub)+03h
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval+2)^080h
	line	1136
	
l8619:	
	clrf	(__doprnt@exp)^080h
	clrf	(__doprnt@exp+1)^080h
	line	1139
	
l8621:	
	clrf	(__doprnt@c)^080h
	incf	(__doprnt@c)^080h,f
	line	1140
	
l8627:	
	movf	(__doprnt@c)^080h,w
	movwf	(??__doprnt+0)^080h+0
	clrc
	rlf	(??__doprnt+0)^080h+0,f
	clrc
	rlf	(??__doprnt+0)^080h+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??__doprnt+1)^080h+0)
	fcall	stringdir
	movwf	((??__doprnt+1)^080h+0+1)
	fcall	stringdir
	movwf	((??__doprnt+1)^080h+0+2)
	fcall	stringdir
	movwf	((??__doprnt+1)^080h+0+3)
	movf	3+(??__doprnt+1)^080h+0,w
	subwf	(__doprnt@_val+3)^080h,w
	skipz
	goto	u5805
	movf	2+(??__doprnt+1)^080h+0,w
	subwf	(__doprnt@_val+2)^080h,w
	skipz
	goto	u5805
	movf	1+(??__doprnt+1)^080h+0,w
	subwf	(__doprnt@_val+1)^080h,w
	skipz
	goto	u5805
	movf	0+(??__doprnt+1)^080h+0,w
	subwf	(__doprnt@_val)^080h,w
u5805:
	skipnc
	goto	u5801
	goto	u5800
u5801:
	goto	l8631
u5800:
	goto	l8635
	line	1139
	
l8631:	
	incf	(__doprnt@c)^080h,f
	
l8633:	
	movf	(__doprnt@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u5811
	goto	u5810
u5811:
	goto	l8627
u5810:
	line	1145
	
l8635:	
	movf	(__doprnt@prec)^080h,w
	addwf	(__doprnt@c)^080h,w
	movwf	(??__doprnt+0)^080h+0
	movf	(__doprnt@prec+1)^080h,w
	skipnc
	incf	(__doprnt@prec+1)^080h,w
	addlw	0
	btfsc	(__doprnt@c)^080h,7
	addlw	0ffh
	movwf	(??__doprnt+0)^080h+0+1
	movf	(__doprnt@exp)^080h,w
	addwf	0+(??__doprnt+0)^080h+0,w
	movwf	(??__doprnt+2)^080h+0
	movf	(__doprnt@exp+1)^080h,w
	skipnc
	incf	(__doprnt@exp+1)^080h,w
	addwf	1+(??__doprnt+0)^080h+0,w
	movwf	1+(??__doprnt+2)^080h+0
	movf	0+(??__doprnt+2)^080h+0,w
	subwf	(__doprnt@width)^080h,f
	movf	1+(??__doprnt+2)^080h+0,w
	skipc
	decf	(__doprnt@width+1)^080h,f
	subwf	(__doprnt@width+1)^080h,f
	line	1150
	
l8637:	
	movf	(__doprnt@prec+1)^080h,w
	iorwf	(__doprnt@prec)^080h,w
	skipnz
	goto	u5821
	goto	u5820
u5821:
	goto	l8641
u5820:
	line	1151
	
l8639:	
	movlw	-1
	addwf	(__doprnt@width)^080h,f
	skipc
	decf	(__doprnt@width+1)^080h,f
	line	1152
	
l8641:	
	movf	(__doprnt@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u5831
	goto	u5830
u5831:
	goto	l8645
u5830:
	line	1153
	
l8643:	
	movlw	-1
	addwf	(__doprnt@width)^080h,f
	skipc
	decf	(__doprnt@width+1)^080h,f
	line	1156
	
l8645:	
	btfss	(__doprnt@flag)^080h,(2)&7
	goto	u5841
	goto	u5840
u5841:
	goto	l8671
u5840:
	goto	l8659
	line	1170
	
l8649:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u5851
	goto	u5850
u5851:
	goto	l8653
u5850:
	
l8651:	
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l8657
	
l8653:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(030h)
	movwf	indf
	
l8655:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1171
	
l8657:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@width)^080h,f
	skipc
	decf	(__doprnt@width+1)^080h,f
	line	1169
	
l8659:	
	movf	(__doprnt@width+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5865
	movlw	low(01h)
	subwf	(__doprnt@width)^080h,w
u5865:

	skipnc
	goto	u5861
	goto	u5860
u5861:
	goto	l8649
u5860:
	goto	l8691
	line	1182
	
l8661:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u5871
	goto	u5870
u5871:
	goto	l8665
u5870:
	
l8663:	
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l8669
	
l8665:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(020h)
	movwf	indf
	
l8667:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1183
	
l8669:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@width)^080h,f
	skipc
	decf	(__doprnt@width+1)^080h,f
	line	1181
	
l8671:	
	movf	(__doprnt@width+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5885
	movlw	low(01h)
	subwf	(__doprnt@width)^080h,w
u5885:

	skipnc
	goto	u5881
	goto	u5880
u5881:
	goto	l8661
u5880:
	line	1189
	
l8673:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u5891
	goto	u5890
u5891:
	goto	l8691
u5890:
	line	1191
	
l8675:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u5901
	goto	u5900
u5901:
	goto	l8679
u5900:
	
l8677:	
	movlw	(02Dh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l8691
	
l8679:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Dh)
	movwf	indf
	
l8681:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	goto	l8691
	line	1201
	
l8683:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u5911
	goto	u5910
u5911:
	goto	l8687
u5910:
	
l8685:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@c)^080h,w
	movwf	(??__doprnt+0)^080h+0
	clrc
	rlf	(??__doprnt+0)^080h+0,f
	clrc
	rlf	(??__doprnt+0)^080h+0,w
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
	movf	(__doprnt@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val)^080h,w
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
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l8691
	
l8687:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@c)^080h,w
	movwf	(??__doprnt+0)^080h+0
	clrc
	rlf	(??__doprnt+0)^080h+0,f
	clrc
	rlf	(??__doprnt+0)^080h+0,w
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
	movf	(__doprnt@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val)^080h,w
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
	movwf	(??__doprnt+1)^080h+0
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(??__doprnt+1)^080h+0,w
	movwf	indf
	goto	l8681
	line	1197
	
l8691:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	decf	(__doprnt@c)^080h,f
	incf	((__doprnt@c)^080h),w
	skipz
	goto	u5921
	goto	u5920
u5921:
	goto	l8683
u5920:
	goto	l8703
	line	1205
	
l8693:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u5931
	goto	u5930
u5931:
	goto	l8697
u5930:
	
l8695:	
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l8701
	
l8697:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(030h)
	movwf	indf
	
l8699:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1206
	
l8701:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@exp)^080h,f
	skipc
	decf	(__doprnt@exp+1)^080h,f
	line	1204
	
l8703:	
	movf	(__doprnt@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5945
	movlw	low(01h)
	subwf	(__doprnt@exp)^080h,w
u5945:

	skipnc
	goto	u5941
	goto	u5940
u5941:
	goto	l8693
u5940:
	line	1208
	
l8705:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5955
	movlw	low(09h)
	subwf	(__doprnt@prec)^080h,w
u5955:

	skipc
	goto	u5951
	goto	u5950
u5951:
	goto	l8709
u5950:
	line	1209
	
l8707:	
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@c)^080h
	goto	l2299
	line	1211
	
l8709:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec)^080h,w
	movwf	(__doprnt@c)^080h
	
l2299:	
	line	1212
	movf	(__doprnt@c)^080h,w
	movwf	(??__doprnt+0)^080h+0
	clrf	(??__doprnt+0)^080h+0+1
	btfsc	(??__doprnt+0)^080h+0,7
	decf	(??__doprnt+0)^080h+0+1,f
	movf	0+(??__doprnt+0)^080h+0,w
	subwf	(__doprnt@prec)^080h,f
	movf	1+(??__doprnt+0)^080h+0,w
	skipc
	decf	(__doprnt@prec+1)^080h,f
	subwf	(__doprnt@prec+1)^080h,f
	line	1216
	movf	(__doprnt@c)^080h,w
	skipz
	goto	u5960
	goto	l8719
u5960:
	line	1218
	
l8711:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u5971
	goto	u5970
u5971:
	goto	l8715
u5970:
	
l8713:	
	movlw	(02Eh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l8719
	
l8715:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Eh)
	movwf	indf
	
l8717:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1224
	
l8719:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	fcall	_scale
	movf	(0+(?_scale)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?_scale)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?_scale)),w
	movwf	2+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
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
	movwf	(__doprnt@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val)^080h

	line	1225
	goto	l8731
	line	1226
	
l8721:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u5981
	goto	u5980
u5981:
	goto	l8725
u5980:
	
l8723:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@c)^080h,w
	movwf	(??__doprnt+0)^080h+0
	clrc
	rlf	(??__doprnt+0)^080h+0,f
	clrc
	rlf	(??__doprnt+0)^080h+0,w
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
	movf	(__doprnt@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val)^080h,w
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
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l8729
	
l8725:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@c)^080h,w
	movwf	(??__doprnt+0)^080h+0
	clrc
	rlf	(??__doprnt+0)^080h+0,f
	clrc
	rlf	(??__doprnt+0)^080h+0,w
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
	movf	(__doprnt@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val)^080h,w
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
	movwf	(??__doprnt+1)^080h+0
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(??__doprnt+1)^080h+0,w
	movwf	indf
	
l8727:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1227
	
l8729:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	movwf	(??__doprnt+0)^080h+0
	clrc
	rlf	(??__doprnt+0)^080h+0,f
	clrc
	rlf	(??__doprnt+0)^080h+0,w
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
	movf	(__doprnt@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val)^080h

	line	1225
	
l8731:	
	decf	(__doprnt@c)^080h,f
	incf	((__doprnt@c)^080h),w
	skipz
	goto	u5991
	goto	u5990
u5991:
	goto	l8721
u5990:
	goto	l8743
	line	1231
	
l8733:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u6001
	goto	u6000
u6001:
	goto	l8737
u6000:
	
l8735:	
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l8741
	
l8737:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(030h)
	movwf	indf
	
l8739:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1232
	
l8741:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@prec)^080h,f
	skipc
	decf	(__doprnt@prec+1)^080h,f
	line	1230
	
l8743:	
	movf	((__doprnt@prec+1)^080h),w
	iorwf	((__doprnt@prec)^080h),w
	skipz
	goto	u6011
	goto	u6010
u6011:
	goto	l8733
u6010:
	goto	l8853
	line	1281
	
l8745:	
	movf	(__doprnt@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	((??__doprnt+0)^080h+0)
	movlw	02h
	addwf	indf,f
	movf	((??__doprnt+0)^080h+0),w
	movwf	fsr0
	movf	indf,w
	movwf	(??__doprnt+1)^080h+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__doprnt+1)^080h+0+1
	movf	0+(??__doprnt+1)^080h+0,w
	movwf	(__doprnt@_val)^080h
	movf	1+(??__doprnt+1)^080h+0,w
	movwf	((__doprnt@_val)^080h)+1
	clrf	2+((__doprnt@_val)^080h)
	clrf	3+((__doprnt@_val)^080h)
	line	1285
	
l8747:	
	movf	((__doprnt@prec+1)^080h),w
	iorwf	((__doprnt@prec)^080h),w
	skipz
	goto	u6021
	goto	u6020
u6021:
	goto	l8753
u6020:
	
l8749:	
	movf	(__doprnt@_val+3)^080h,w
	iorwf	(__doprnt@_val+2)^080h,w
	iorwf	(__doprnt@_val+1)^080h,w
	iorwf	(__doprnt@_val)^080h,w
	skipz
	goto	u6031
	goto	u6030
u6031:
	goto	l8753
u6030:
	line	1286
	
l8751:	
	incf	(__doprnt@prec)^080h,f
	skipnz
	incf	(__doprnt@prec+1)^080h,f
	line	1300
	
l8753:	
	clrf	(__doprnt@c)^080h
	incf	(__doprnt@c)^080h,f
	line	1301
	
l8759:	
	movf	(__doprnt@c)^080h,w
	movwf	(??__doprnt+0)^080h+0
	clrc
	rlf	(??__doprnt+0)^080h+0,f
	clrc
	rlf	(??__doprnt+0)^080h+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??__doprnt+1)^080h+0)
	fcall	stringdir
	movwf	((??__doprnt+1)^080h+0+1)
	fcall	stringdir
	movwf	((??__doprnt+1)^080h+0+2)
	fcall	stringdir
	movwf	((??__doprnt+1)^080h+0+3)
	movf	3+(??__doprnt+1)^080h+0,w
	subwf	(__doprnt@_val+3)^080h,w
	skipz
	goto	u6045
	movf	2+(??__doprnt+1)^080h+0,w
	subwf	(__doprnt@_val+2)^080h,w
	skipz
	goto	u6045
	movf	1+(??__doprnt+1)^080h+0,w
	subwf	(__doprnt@_val+1)^080h,w
	skipz
	goto	u6045
	movf	0+(??__doprnt+1)^080h+0,w
	subwf	(__doprnt@_val)^080h,w
u6045:
	skipnc
	goto	u6041
	goto	u6040
u6041:
	goto	l8763
u6040:
	goto	l8767
	line	1300
	
l8763:	
	incf	(__doprnt@c)^080h,f
	
l8765:	
	movf	(__doprnt@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u6051
	goto	u6050
u6051:
	goto	l8759
u6050:
	line	1334
	
l8767:	
	movf	(__doprnt@c)^080h,w
	movwf	(??__doprnt+0)^080h+0
	clrf	(??__doprnt+0)^080h+0+1
	btfsc	(??__doprnt+0)^080h+0,7
	decf	(??__doprnt+0)^080h+0+1,f
	movf	1+(??__doprnt+0)^080h+0,w
	xorlw	80h
	movwf	(??__doprnt+2)^080h+0
	movf	(__doprnt@prec+1)^080h,w
	xorlw	80h
	subwf	(??__doprnt+2)^080h+0,w
	skipz
	goto	u6065
	movf	(__doprnt@prec)^080h,w
	subwf	0+(??__doprnt+0)^080h+0,w
u6065:

	skipnc
	goto	u6061
	goto	u6060
u6061:
	goto	l8771
u6060:
	line	1335
	
l8769:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec)^080h,w
	movwf	(__doprnt@c)^080h
	goto	l8775
	line	1336
	
l8771:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	movwf	(??__doprnt+0)^080h+0
	clrf	(??__doprnt+0)^080h+0+1
	btfsc	(??__doprnt+0)^080h+0,7
	decf	(??__doprnt+0)^080h+0+1,f
	movf	(__doprnt@prec+1)^080h,w
	xorlw	80h
	movwf	(??__doprnt+2)^080h+0
	movf	1+(??__doprnt+0)^080h+0,w
	xorlw	80h
	subwf	(??__doprnt+2)^080h+0,w
	skipz
	goto	u6075
	movf	0+(??__doprnt+0)^080h+0,w
	subwf	(__doprnt@prec)^080h,w
u6075:

	skipnc
	goto	u6071
	goto	u6070
u6071:
	goto	l8775
u6070:
	line	1337
	
l8773:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	movwf	(__doprnt@prec)^080h
	clrf	(__doprnt@prec+1)^080h
	btfsc	(__doprnt@prec)^080h,7
	decf	(__doprnt@prec+1)^080h,f
	line	1340
	
l8775:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@width+1)^080h,w
	iorwf	(__doprnt@width)^080h,w
	skipnz
	goto	u6081
	goto	u6080
u6081:
	goto	l8781
u6080:
	
l8777:	
	movf	(__doprnt@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u6091
	goto	u6090
u6091:
	goto	l8781
u6090:
	line	1341
	
l8779:	
	movlw	-1
	addwf	(__doprnt@width)^080h,f
	skipc
	decf	(__doprnt@width+1)^080h,f
	line	1343
	
l8781:	
	btfss	(__doprnt@flag+1)^080h,(14)&7
	goto	u6101
	goto	u6100
u6101:
	goto	l8789
u6100:
	line	1344
	
l8783:	
	movf	(__doprnt@prec+1)^080h,w
	xorlw	80h
	movwf	(??__doprnt+0)^080h+0
	movf	(__doprnt@width+1)^080h,w
	xorlw	80h
	subwf	(??__doprnt+0)^080h+0,w
	skipz
	goto	u6115
	movf	(__doprnt@width)^080h,w
	subwf	(__doprnt@prec)^080h,w
u6115:

	skipnc
	goto	u6111
	goto	u6110
u6111:
	goto	l8787
u6110:
	line	1345
	
l8785:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec)^080h,w
	subwf	(__doprnt@width)^080h,f
	movf	(__doprnt@prec+1)^080h,w
	skipc
	decf	(__doprnt@width+1)^080h,f
	subwf	(__doprnt@width+1)^080h,f
	goto	l8789
	line	1347
	
l8787:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(__doprnt@width)^080h
	clrf	(__doprnt@width+1)^080h
	line	1376
	
l8789:	
	movf	(__doprnt@c)^080h,w
	movwf	(??__doprnt+0)^080h+0
	clrf	(??__doprnt+0)^080h+0+1
	btfsc	(??__doprnt+0)^080h+0,7
	decf	(??__doprnt+0)^080h+0+1,f
	movf	1+(??__doprnt+0)^080h+0,w
	xorlw	80h
	movwf	(??__doprnt+2)^080h+0
	movf	(__doprnt@width+1)^080h,w
	xorlw	80h
	subwf	(??__doprnt+2)^080h+0,w
	skipz
	goto	u6125
	movf	(__doprnt@width)^080h,w
	subwf	0+(??__doprnt+0)^080h+0,w
u6125:

	skipnc
	goto	u6121
	goto	u6120
u6121:
	goto	l8793
u6120:
	line	1377
	
l8791:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	movwf	(??__doprnt+0)^080h+0
	clrf	(??__doprnt+0)^080h+0+1
	btfsc	(??__doprnt+0)^080h+0,7
	decf	(??__doprnt+0)^080h+0+1,f
	movf	0+(??__doprnt+0)^080h+0,w
	subwf	(__doprnt@width)^080h,f
	movf	1+(??__doprnt+0)^080h+0,w
	skipc
	decf	(__doprnt@width+1)^080h,f
	subwf	(__doprnt@width+1)^080h,f
	goto	l8795
	line	1379
	
l8793:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(__doprnt@width)^080h
	clrf	(__doprnt@width+1)^080h
	line	1382
	
l8795:	
	btfss	(__doprnt@flag)^080h,(2)&7
	goto	u6131
	goto	u6130
u6131:
	goto	l8819
u6130:
	line	1387
	
l8797:	
	movf	(__doprnt@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u6141
	goto	u6140
u6141:
	goto	l8807
u6140:
	line	1388
	
l8799:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u6151
	goto	u6150
u6151:
	goto	l8803
u6150:
	
l8801:	
	movlw	(02Dh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l8807
	
l8803:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Dh)
	movwf	indf
	
l8805:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1410
	
l8807:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@width+1)^080h,w
	iorwf	(__doprnt@width)^080h,w
	skipnz
	goto	u6161
	goto	u6160
u6161:
	goto	l8851
u6160:
	line	1412
	
l8809:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u6171
	goto	u6170
u6171:
	goto	l8813
u6170:
	
l8811:	
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l8817
	
l8813:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(030h)
	movwf	indf
	
l8815:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1413
	
l8817:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@width)^080h,f
	skipc
	decf	(__doprnt@width+1)^080h,f
	movf	(((__doprnt@width+1)^080h)),w
	iorwf	(((__doprnt@width)^080h)),w
	skipz
	goto	u6181
	goto	u6180
u6181:
	goto	l8809
u6180:
	goto	l8851
	line	1423
	
l8819:	
	movf	(__doprnt@width+1)^080h,w
	iorwf	(__doprnt@width)^080h,w
	skipnz
	goto	u6191
	goto	u6190
u6191:
	goto	l8831
u6190:
	line	1425
	
l8821:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u6201
	goto	u6200
u6201:
	goto	l8825
u6200:
	
l8823:	
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l8829
	
l8825:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(020h)
	movwf	indf
	
l8827:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1426
	
l8829:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@width)^080h,f
	skipc
	decf	(__doprnt@width+1)^080h,f
	movf	(((__doprnt@width+1)^080h)),w
	iorwf	(((__doprnt@width)^080h)),w
	skipz
	goto	u6211
	goto	u6210
u6211:
	goto	l8821
u6210:
	line	1433
	
l8831:	
	movf	(__doprnt@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u6221
	goto	u6220
u6221:
	goto	l8851
u6220:
	line	1434
	
l8833:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u6231
	goto	u6230
u6231:
	goto	l8837
u6230:
	
l8835:	
	movlw	(02Dh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l8851
	
l8837:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Dh)
	movwf	indf
	
l8839:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	goto	l8851
	line	1484
	
l8841:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@prec)^080h,w
	movwf	(??__doprnt+0)^080h+0
	clrc
	rlf	(??__doprnt+0)^080h+0,f
	clrc
	rlf	(??__doprnt+0)^080h+0,w
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
	movf	(__doprnt@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val)^080h,w
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
	movwf	(__doprnt@c)^080h
	line	1516
	
l8843:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u6241
	goto	u6240
u6241:
	goto	l8847
u6240:
	
l8845:	
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l8851
	
l8847:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(__doprnt@c)^080h,w
	movwf	indf
	goto	l8839
	line	1469
	
l8851:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@prec)^080h,f
	skipc
	decf	(__doprnt@prec+1)^080h,f
	incf	((__doprnt@prec)^080h),w
	skipnz
	incf	((__doprnt@prec+1)^080h),w

	skipz
	goto	u6251
	goto	u6250
u6251:
	goto	l8841
u6250:
	line	540
	
l8853:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@f)^080h,w
	incf	(__doprnt@f)^080h,f
	movwf	fsr0
	fcall	stringdir
	movwf	(__doprnt@c)^080h
	movf	((__doprnt@c)^080h),f
	skipz
	goto	u6261
	goto	u6260
u6261:
	goto	l8491
u6260:
	line	1532
	
l8855:	
	clrf	(?__doprnt)^080h
	clrf	(?__doprnt+1)^080h
	line	1533
	
l2350:	
	return
	opt stack 0
GLOBAL	__end_of__doprnt
	__end_of__doprnt:
;; =============== function __doprnt ends ============

	signat	__doprnt,12410
	global	_putch
psect	text941,local,class=CODE,delta=2
global __ptext941
__ptext941:

;; *************** function _putch *****************
;; Defined at:
;;		line 85 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 06\BT Ôn Thi 06.c"
;; Parameters:    Size  Location     Type
;;  c               1   30[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/20
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_lcd_putc
;; This function is called by:
;;		_printf
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text941
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 06\BT Ôn Thi 06.c"
	line	85
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _putch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	86
	
l7563:	
;BT Ôn Thi 06.c: 86: lcd_putc(c);
	bcf	status, 5	;RP0=0, select bank0
	movf	(putch@c),w
	fcall	_lcd_putc
	line	87
	
l1071:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_putc
psect	text942,local,class=CODE,delta=2
global __ptext942
__ptext942:

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
;;		On entry : 160/0
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
psect	text942
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
	
l7545:	
;lcd(16).c: 144: switch(c){
	goto	l7561
	line	146
	
l7547:	
;lcd(16).c: 146: lcd_put_byte(0, 1);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	147
;lcd(16).c: 147: while(lcd_busy());
	
l7549:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4361
	goto	u4360
u4361:
	goto	l7549
u4360:
	goto	l2176
	line	150
	
l7551:	
;lcd(16).c: 150: lcd_gotoxy(0, 1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	151
;lcd(16).c: 151: break;
	goto	l2176
	line	153
	
l7553:	
;lcd(16).c: 153: if(isprint(c)){
	movf	(lcd_putc@c),w
	fcall	_isprint
	btfss	status,0
	goto	u4371
	goto	u4370
u4371:
	goto	l2176
u4370:
	line	154
	
l7555:	
;lcd(16).c: 154: lcd_put_byte(1, c);
	movf	(lcd_putc@c),w
	movwf	(?_lcd_put_byte)
	movlw	(01h)
	fcall	_lcd_put_byte
	line	155
;lcd(16).c: 155: while(lcd_busy());
	
l7557:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4381
	goto	u4380
u4381:
	goto	l7557
u4380:
	goto	l2176
	line	144
	
l7561:	
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
	goto	l7551
	xorlw	12^10	; case 12
	skipnz
	goto	l7547
	goto	l7553
	opt asmopt_on

	line	159
	
l2176:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	___ftsub
psect	text943,local,class=CODE,delta=2
global __ptext943
__ptext943:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text943
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 0
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l8483:	
	movlw	080h
	xorwf	(___ftsub@f2+2),f
	line	19
	
l8485:	
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
	
l3452:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_scale
psect	text944,local,class=CODE,delta=2
global __ptext944
__ptext944:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text944
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	422
	global	__size_of_scale
	__size_of_scale	equ	__end_of_scale-_scale
	
_scale:	
;; using string table level
	opt	stack 1
; Regs used in _scale: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;scale@scl stored from wreg
	line	424
	bcf	status, 5	;RP0=0, select bank0
	movwf	(scale@scl)
	
l8443:	
	btfss	(scale@scl),7
	goto	u5551
	goto	u5550
u5551:
	goto	l8465
u5550:
	line	425
	
l8445:	
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	426
	
l8447:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u5561
	goto	u5560
u5561:
	goto	l8455
u5560:
	line	427
	
l8449:	
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
	movwf	(_scale$4202)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$4202+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$4202+2)
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
	movf	(_scale$4202),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$4202+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$4202+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l2215
	line	428
	
l8455:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u5571
	goto	u5570
u5571:
	goto	l8461
u5570:
	line	429
	
l8457:	
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
	goto	l2215
	line	430
	
l8461:	
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
	goto	l2215
	line	432
	
l8465:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u5581
	goto	u5580
u5581:
	goto	l8473
u5580:
	line	433
	
l8467:	
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
	movwf	(_scale$4202)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$4202+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$4202+2)
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
	movf	(_scale$4202),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$4202+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$4202+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l2215
	line	434
	
l8473:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u5591
	goto	u5590
u5591:
	goto	l8479
u5590:
	line	435
	
l8475:	
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
	goto	l2215
	line	436
	
l8479:	
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
	
l2215:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
;; =============== function _scale ends ============

	signat	_scale,4219
	global	_fround
psect	text945,local,class=CODE,delta=2
global __ptext945
__ptext945:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text945
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	406
	global	__size_of_fround
	__size_of_fround	equ	__end_of_fround-_fround
	
_fround:	
;; using string table level
	opt	stack 1
; Regs used in _fround: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;fround@prec stored from wreg
	line	409
	movwf	(fround@prec)^080h
	
l8421:	
	movlw	(06Eh)
	subwf	(fround@prec)^080h,w
	skipc
	goto	u5531
	goto	u5530
u5531:
	goto	l8431
u5530:
	line	410
	
l8423:	
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
	movwf	(_fround$4200)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4200+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4200+2)^080h
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
	movf	(_fround$4200)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4200+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4200+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4201)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4201+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4201+2)^080h
	
l8425:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4201)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4201+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4201+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l2208
	line	411
	
l8431:	
	movlw	(0Bh)
	subwf	(fround@prec)^080h,w
	skipc
	goto	u5541
	goto	u5540
u5541:
	goto	l8439
u5540:
	line	412
	
l8433:	
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
	movwf	(_fround$4200)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4200+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_fround$4200+2)^080h
	
l8435:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4200)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4200+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_fround$4200+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l2208
	line	413
	
l8439:	
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
	
l2208:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
;; =============== function _fround ends ============

	signat	_fround,4219
	global	_lcd_gotoxy
psect	text946,local,class=CODE,delta=2
global __ptext946
__ptext946:

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
psect	text946
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
	
l7465:	
;lcd(16).c: 163: unsigned char address;
;lcd(16).c: 165: if(row!=0)
	movf	(lcd_gotoxy@row),w
	skipz
	goto	u4270
	goto	l7469
u4270:
	line	166
	
l7467:	
;lcd(16).c: 166: address=0x40;
	movlw	(040h)
	movwf	(lcd_gotoxy@address)
	goto	l7471
	line	168
	
l7469:	
;lcd(16).c: 167: else
;lcd(16).c: 168: address=0;
	clrf	(lcd_gotoxy@address)
	line	170
	
l7471:	
;lcd(16).c: 170: address += col;
	movf	(lcd_gotoxy@col),w
	addwf	(lcd_gotoxy@address),f
	line	171
	
l7473:	
;lcd(16).c: 171: lcd_put_byte(0,0x80|address);
	movf	(lcd_gotoxy@address),w
	iorlw	080h
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	172
;lcd(16).c: 172: while(lcd_busy());
	
l7475:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4281
	goto	u4280
u4281:
	goto	l7475
u4280:
	line	173
	
l2184:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
;; =============== function _lcd_gotoxy ends ============

	signat	_lcd_gotoxy,8312
	global	_lcd_init
psect	text947,local,class=CODE,delta=2
global __ptext947
__ptext947:

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
psect	text947
	file	"D:\TTVXL\Library\lcd(16).c"
	line	5
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l7427:	
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
	
l7429:	
;lcd(16).c: 18: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u6277:
	decfsz	((??_lcd_init+0)+0),f
	goto	u6277
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u6277
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u6277
	nop2
opt asmopt_on

	line	21
	
l7431:	
;lcd(16).c: 21: lcd_put_byte(0,0x30);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	22
	
l7433:	
;lcd(16).c: 22: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u6287:
	decfsz	((??_lcd_init+0)+0),f
	goto	u6287
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u6287
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u6287
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
	
l7435:	
;lcd(16).c: 24: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u6297:
	decfsz	((??_lcd_init+0)+0),f
	goto	u6297
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u6297
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u6297
	nop2
opt asmopt_on

	line	25
	
l7437:	
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
u6307:
	decfsz	((??_lcd_init+0)+0),f
	goto	u6307
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u6307
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u6307
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
u6317:
	decfsz	((??_lcd_init+0)+0),f
	goto	u6317
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u6317
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u6317
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
u6327:
	decfsz	((??_lcd_init+0)+0),f
	goto	u6327
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u6327
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u6327
	nop2
opt asmopt_on

	line	30
;lcd(16).c: 30: while(lcd_busy());
	
l7439:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4201
	goto	u4200
u4201:
	goto	l7439
u4200:
	line	31
	
l7441:	
;lcd(16).c: 31: lcd_put_byte(0,0b00101100 & 0b00111000);
	movlw	(028h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	32
;lcd(16).c: 32: while(lcd_busy());
	
l7443:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4211
	goto	u4210
u4211:
	goto	l7443
u4210:
	line	34
	
l7445:	
;lcd(16).c: 34: lcd_put_byte(0,0b00001011&0b00001101&0b00001110);
	movlw	(08h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	35
;lcd(16).c: 35: while(lcd_busy());
	
l7447:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4221
	goto	u4220
u4221:
	goto	l7447
u4220:
	line	36
	
l7449:	
;lcd(16).c: 36: lcd_put_byte(0,0b00001111&0b00001101&0b00001110);
	movlw	(0Ch)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	37
;lcd(16).c: 37: while(lcd_busy());
	
l7451:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4231
	goto	u4230
u4231:
	goto	l7451
u4230:
	line	39
	
l7453:	
;lcd(16).c: 39: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	40
;lcd(16).c: 40: while(lcd_busy());
	
l7455:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4241
	goto	u4240
u4241:
	goto	l7455
u4240:
	line	41
	
l7457:	
;lcd(16).c: 41: lcd_put_byte(0,0b00000100);
	movlw	(04h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	42
;lcd(16).c: 42: while(lcd_busy());
	
l7459:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4251
	goto	u4250
u4251:
	goto	l7459
u4250:
	line	43
	
l7461:	
;lcd(16).c: 43: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	44
;lcd(16).c: 44: while(lcd_busy());
	
l7463:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4261
	goto	u4260
u4261:
	goto	l7463
u4260:
	line	45
	
l2150:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	___lltoft
psect	text948,local,class=CODE,delta=2
global __ptext948
__ptext948:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text948
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 1
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l8411:	
	movlw	(08Eh)
	movwf	(___lltoft@exp)
	line	41
	goto	l8415
	line	42
	
l8413:	
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	line	43
	incf	(___lltoft@exp),f
	line	41
	
l8415:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u5521
	goto	u5520
u5521:
	goto	l8413
u5520:
	line	45
	
l8417:	
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
	
l3609:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___altoft
psect	text949,local,class=CODE,delta=2
global __ptext949
__ptext949:

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
psect	text949
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\altoft.c"
	line	43
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:	
	opt	stack 3
; Regs used in ___altoft: [wreg+status,2+status,0+pclath+cstack]
	line	45
	
l8395:	
	clrf	(___altoft@sign)
	line	46
	
l8397:	
	movlw	(08Eh)
	movwf	(___altoft@exp)
	line	47
	
l8399:	
	btfss	(___altoft@c+3),7
	goto	u5501
	goto	u5500
u5501:
	goto	l8405
u5500:
	line	48
	
l8401:	
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
	goto	l8405
	line	53
	
l8403:	
	clrc
	rrf	(___altoft@c+3),f
	rrf	(___altoft@c+2),f
	rrf	(___altoft@c+1),f
	rrf	(___altoft@c),f
	line	54
	incf	(___altoft@exp),f
	line	52
	
l8405:	
	movlw	high highword(-16777216)
	andwf	(___altoft@c+3),w
	btfss	status,2
	goto	u5511
	goto	u5510
u5511:
	goto	l8403
u5510:
	line	56
	
l8407:	
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
	
l3601:	
	return
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
;; =============== function ___altoft ends ============

	signat	___altoft,4219
	global	___ftmul
psect	text950,local,class=CODE,delta=2
global __ptext950
__ptext950:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text950
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 0
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l8339:	
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
	goto	u5421
	goto	u5420
u5421:
	goto	l8345
u5420:
	line	57
	
l8341:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l3468
	line	58
	
l8345:	
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
	goto	u5431
	goto	u5430
u5431:
	goto	l8351
u5430:
	line	59
	
l8347:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l3468
	line	60
	
l8351:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l8353:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l8355:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l8357:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l8359:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l8361:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l8363:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l8365:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l8367:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l8369:	
	btfss	(___ftmul@f1),(0)&7
	goto	u5441
	goto	u5440
u5441:
	goto	l8373
u5440:
	line	72
	
l8371:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u5451
	addwf	(___ftmul@f3_as_product+1),f
u5451:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u5452
	addwf	(___ftmul@f3_as_product+2),f
u5452:

	line	73
	
l8373:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l8375:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l8377:	
	decfsz	(___ftmul@cntr),f
	goto	u5461
	goto	u5460
u5461:
	goto	l8369
u5460:
	line	76
	
l8379:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l8381:	
	btfss	(___ftmul@f1),(0)&7
	goto	u5471
	goto	u5470
u5471:
	goto	l8385
u5470:
	line	79
	
l8383:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u5481
	addwf	(___ftmul@f3_as_product+1),f
u5481:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u5482
	addwf	(___ftmul@f3_as_product+2),f
u5482:

	line	80
	
l8385:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l8387:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l8389:	
	decfsz	(___ftmul@cntr),f
	goto	u5491
	goto	u5490
u5491:
	goto	l8381
u5490:
	line	83
	
l8391:	
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
	
l3468:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftadd
psect	text951,local,class=CODE,delta=2
global __ptext951
__ptext951:

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
;;		__doprnt
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text951
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 0
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l8261:	
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
	
l8263:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u5220
	goto	l8269
u5220:
	
l8265:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u5231
	goto	u5230
u5231:
	goto	l8273
u5230:
	
l8267:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u5241
	goto	u5240
u5241:
	goto	l8273
u5240:
	line	93
	
l8269:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l3416
	line	94
	
l8273:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u5250
	goto	l3419
u5250:
	
l8275:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u5261
	goto	u5260
u5261:
	goto	l8279
u5260:
	
l8277:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u5271
	goto	u5270
u5271:
	goto	l8279
u5270:
	
l3419:	
	line	95
	goto	l3416
	line	96
	
l8279:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
l8281:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u5281
	goto	u5280
u5281:
	goto	l3420
u5280:
	line	98
	
l8283:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l3420:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u5291
	goto	u5290
u5291:
	goto	l3421
u5290:
	line	100
	
l8285:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l3421:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l8287:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l8289:	
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
	goto	u5301
	goto	u5300
u5301:
	goto	l8301
u5300:
	line	110
	
l8291:	
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
l8293:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u5311
	goto	u5310
u5311:
	goto	l8299
u5310:
	
l8295:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u5321
	goto	u5320
u5321:
	goto	l8291
u5320:
	goto	l8299
	line	114
	
l8297:	
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
l8299:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u5331
	goto	u5330
u5331:
	goto	l8297
u5330:
	goto	l3430
	line	117
	
l8301:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u5341
	goto	u5340
u5341:
	goto	l3430
u5340:
	line	121
	
l8303:	
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
l8305:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u5351
	goto	u5350
u5351:
	goto	l8311
u5350:
	
l8307:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u5361
	goto	u5360
u5361:
	goto	l8303
u5360:
	goto	l8311
	line	125
	
l8309:	
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
l8311:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u5371
	goto	u5370
u5371:
	goto	l8309
u5370:
	line	129
	
l3430:	
	btfss	(___ftadd@sign),(7)&7
	goto	u5381
	goto	u5380
u5381:
	goto	l8317
u5380:
	line	131
	
l8313:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
l8315:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
l8317:	
	btfss	(___ftadd@sign),(6)&7
	goto	u5391
	goto	u5390
u5391:
	goto	l8323
u5390:
	line	136
	
l8319:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
l8321:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
l8323:	
	clrf	(___ftadd@sign)
	line	140
	
l8325:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u5401
	addwf	(___ftadd@f2+1),f
u5401:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u5402
	addwf	(___ftadd@f2+2),f
u5402:

	line	141
	
l8327:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u5411
	goto	u5410
u5411:
	goto	l8335
u5410:
	line	142
	
l8329:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
l8331:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
l8333:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l8335:	
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
	
l3416:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_lcd_busy
psect	text952,local,class=CODE,delta=2
global __ptext952
__ptext952:

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
psect	text952
	file	"D:\TTVXL\Library\lcd(16).c"
	line	47
	global	__size_of_lcd_busy
	__size_of_lcd_busy	equ	__end_of_lcd_busy-_lcd_busy
	
_lcd_busy:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _lcd_busy: [wreg]
	line	50
	
l7253:	
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
	
l7255:	
;lcd(16).c: 57: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u6337:
decfsz	(??_lcd_busy+0)+0,f
	goto	u6337
opt asmopt_on

	line	58
	
l7257:	
;lcd(16).c: 58: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	59
;lcd(16).c: 59: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u6347:
decfsz	(??_lcd_busy+0)+0,f
	goto	u6347
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
	
l7259:	
;lcd(16).c: 63: RD3 = 0;
	bcf	(67/8),(67)&7
	line	64
;lcd(16).c: 64: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u6357:
decfsz	(??_lcd_busy+0)+0,f
	goto	u6357
opt asmopt_on

	line	65
	
l7261:	
;lcd(16).c: 65: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	66
;lcd(16).c: 66: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u6367:
decfsz	(??_lcd_busy+0)+0,f
	goto	u6367
opt asmopt_on

	line	67
	
l7263:	
;lcd(16).c: 67: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	70
;lcd(16).c: 70: return busy;
	movf	(lcd_busy@busy),w
	line	71
	
l2153:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_busy
	__end_of_lcd_busy:
;; =============== function _lcd_busy ends ============

	signat	_lcd_busy,89
	global	_lcd_put_byte
psect	text953,local,class=CODE,delta=2
global __ptext953
__ptext953:

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
psect	text953
	file	"D:\TTVXL\Library\lcd(16).c"
	line	106
	global	__size_of_lcd_put_byte
	__size_of_lcd_put_byte	equ	__end_of_lcd_put_byte-_lcd_put_byte
	
_lcd_put_byte:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _lcd_put_byte: [wreg+status,2+status,0]
;lcd_put_byte@rs stored from wreg
	line	109
	movwf	(lcd_put_byte@rs)
	
l7217:	
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
	
l7219:	
;lcd(16).c: 115: if(rs) RD1 = 1;
	movf	(lcd_put_byte@rs),w
	skipz
	goto	u3720
	goto	l7223
u3720:
	
l7221:	
	bsf	(65/8),(65)&7
	line	117
	
l7223:	
;lcd(16).c: 117: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u6377:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u6377
opt asmopt_on

	line	118
	
l7225:	
;lcd(16).c: 118: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	119
;lcd(16).c: 119: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u6387:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u6387
opt asmopt_on

	line	120
	
l7227:	
;lcd(16).c: 120: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	122
;lcd(16).c: 122: temp.Val = b;
	movf	(lcd_put_byte@b),w
	movwf	(lcd_put_byte@temp)
	line	125
	
l7229:	
;lcd(16).c: 125: RD4 = temp.bits.b4;
	swapf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u3731
	goto	u3730
	
u3731:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u3744
u3730:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u3744:
	line	126
	
l7231:	
;lcd(16).c: 126: RD5 = temp.bits.b5;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u3751
	goto	u3750
	
u3751:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u3764
u3750:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u3764:
	line	127
	
l7233:	
;lcd(16).c: 127: RD6 = temp.bits.b6;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u3771
	goto	u3770
	
u3771:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u3784
u3770:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u3784:
	line	128
	
l7235:	
;lcd(16).c: 128: RD7 = temp.bits.b7;
	rlf	(lcd_put_byte@temp),w
	rlf	(lcd_put_byte@temp),w
	andlw	1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u3791
	goto	u3790
	
u3791:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u3804
u3790:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u3804:
	line	129
;lcd(16).c: 129: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u6397:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u6397
opt asmopt_on

	line	130
	
l7237:	
;lcd(16).c: 130: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	131
;lcd(16).c: 131: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u6407:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u6407
opt asmopt_on

	line	132
	
l7239:	
;lcd(16).c: 132: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	134
	
l7241:	
;lcd(16).c: 134: RD4 = temp.bits.b0;
	movf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u3811
	goto	u3810
	
u3811:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u3824
u3810:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u3824:
	line	135
	
l7243:	
;lcd(16).c: 135: RD5 = temp.bits.b1;
	rrf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u3831
	goto	u3830
	
u3831:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u3844
u3830:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u3844:
	line	136
	
l7245:	
;lcd(16).c: 136: RD6 = temp.bits.b2;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u3851
	goto	u3850
	
u3851:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u3864
u3850:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u3864:
	line	137
	
l7247:	
;lcd(16).c: 137: RD7 = temp.bits.b3;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u3871
	goto	u3870
	
u3871:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u3884
u3870:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u3884:
	line	138
;lcd(16).c: 138: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u6417:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u6417
opt asmopt_on

	line	139
	
l7249:	
;lcd(16).c: 139: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	140
;lcd(16).c: 140: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u6427:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u6427
opt asmopt_on

	line	141
	
l7251:	
;lcd(16).c: 141: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	142
	
l2161:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_put_byte
	__end_of_lcd_put_byte:
;; =============== function _lcd_put_byte ends ============

	signat	_lcd_put_byte,8312
	global	_send_string
psect	text954,local,class=CODE,delta=2
global __ptext954
__ptext954:

;; *************** function _send_string *****************
;; Defined at:
;;		line 125 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 06\BT Ôn Thi 06.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> data_rx(10), 
;; Auto vars:     Size  Location     Type
;;  s               1    9[BANK0 ] PTR const unsigned char 
;;		 -> data_rx(10), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/20
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_send_char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text954
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 06\BT Ôn Thi 06.c"
	line	125
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 3
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(send_string@s)
	line	126
	
l7209:	
;BT Ôn Thi 06.c: 126: while(*s) {send_char(*s++);}
	goto	l7215
	
l7211:	
	movf	(send_string@s),w
	movwf	fsr0
	movf	indf,w
	fcall	_send_char
	
l7213:	
	incf	(send_string@s),f
	
l7215:	
	movf	(send_string@s),w
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u3711
	goto	u3710
u3711:
	goto	l7211
u3710:
	line	127
	
l1088:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	___awmod
psect	text955,local,class=CODE,delta=2
global __ptext955
__ptext955:

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
psect	text955
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 1
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l7067:	
	clrf	(___awmod@sign)
	line	9
	
l7069:	
	btfss	(___awmod@dividend+1),7
	goto	u3371
	goto	u3370
u3371:
	goto	l7075
u3370:
	line	10
	
l7071:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l7073:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l7075:	
	btfss	(___awmod@divisor+1),7
	goto	u3381
	goto	u3380
u3381:
	goto	l7079
u3380:
	line	14
	
l7077:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l7079:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3391
	goto	u3390
u3391:
	goto	l7095
u3390:
	line	16
	
l7081:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l7085
	line	18
	
l7083:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l7085:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3401
	goto	u3400
u3401:
	goto	l7083
u3400:
	line	22
	
l7087:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3415
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3415:
	skipc
	goto	u3411
	goto	u3410
u3411:
	goto	l7091
u3410:
	line	23
	
l7089:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l7091:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l7093:	
	decfsz	(___awmod@counter),f
	goto	u3421
	goto	u3420
u3421:
	goto	l7087
u3420:
	line	27
	
l7095:	
	movf	(___awmod@sign),w
	skipz
	goto	u3430
	goto	l7099
u3430:
	line	28
	
l7097:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l7099:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l3587:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___lldiv
psect	text956,local,class=CODE,delta=2
global __ptext956
__ptext956:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text956
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 2
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l7041:	
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	10
	
l7043:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u3331
	goto	u3330
u3331:
	goto	l7063
u3330:
	line	11
	
l7045:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	12
	goto	l7049
	line	13
	
l7047:	
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	14
	incf	(___lldiv@counter),f
	line	12
	
l7049:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u3341
	goto	u3340
u3341:
	goto	l7047
u3340:
	line	17
	
l7051:	
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	18
	
l7053:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u3355
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u3355
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u3355
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u3355:
	skipc
	goto	u3351
	goto	u3350
u3351:
	goto	l7059
u3350:
	line	19
	
l7055:	
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
	
l7057:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	22
	
l7059:	
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	23
	
l7061:	
	decfsz	(___lldiv@counter),f
	goto	u3361
	goto	u3360
u3361:
	goto	l7051
u3360:
	line	25
	
l7063:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	26
	
l3548:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___ftge
psect	text957,local,class=CODE,delta=2
global __ptext957
__ptext957:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text957
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 2
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l7021:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l7025
u3300:
	line	7
	
l7023:	
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
	
l7025:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u3311
	goto	u3310
u3311:
	goto	l7029
u3310:
	line	9
	
l7027:	
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
	
l7029:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l7031:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l7033:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u3325
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u3325
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u3325:
	skipnc
	goto	u3321
	goto	u3320
u3321:
	goto	l7037
u3320:
	
l7035:	
	clrc
	
	goto	l3538
	
l7037:	
	setc
	
	line	13
	
l3538:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text958,local,class=CODE,delta=2
global __ptext958
__ptext958:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text958
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 2
; Regs used in ___ftneg: [wreg]
	line	17
	
l7013:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u3291
	goto	u3290
u3291:
	goto	l7017
u3290:
	line	18
	
l7015:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	line	19
	
l7017:	
	line	20
	
l3533:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___llmod
psect	text959,local,class=CODE,delta=2
global __ptext959
__ptext959:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text959
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 2
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l6993:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u3251
	goto	u3250
u3251:
	goto	l7009
u3250:
	line	9
	
l6995:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	10
	goto	l6999
	line	11
	
l6997:	
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	line	12
	incf	(___llmod@counter),f
	line	10
	
l6999:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l6997
u3260:
	line	15
	
l7001:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u3275
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u3275
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u3275
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u3275:
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l7005
u3270:
	line	16
	
l7003:	
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
	
l7005:	
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	line	18
	
l7007:	
	decfsz	(___llmod@counter),f
	goto	u3281
	goto	u3280
u3281:
	goto	l7001
u3280:
	line	20
	
l7009:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	line	21
	
l3529:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	___awdiv
psect	text960,local,class=CODE,delta=2
global __ptext960
__ptext960:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text960
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 1
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l6949:	
	clrf	(___awdiv@sign)
	line	10
	
l6951:	
	btfss	(___awdiv@divisor+1),7
	goto	u3181
	goto	u3180
u3181:
	goto	l6957
u3180:
	line	11
	
l6953:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l6955:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l6957:	
	btfss	(___awdiv@dividend+1),7
	goto	u3191
	goto	u3190
u3191:
	goto	l6963
u3190:
	line	15
	
l6959:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l6961:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l6963:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l6965:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3201
	goto	u3200
u3201:
	goto	l6985
u3200:
	line	20
	
l6967:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l6971
	line	22
	
l6969:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l6971:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3211
	goto	u3210
u3211:
	goto	l6969
u3210:
	line	26
	
l6973:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l6975:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3225
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3225:
	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l6981
u3220:
	line	28
	
l6977:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l6979:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l6981:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l6983:	
	decfsz	(___awdiv@counter),f
	goto	u3231
	goto	u3230
u3231:
	goto	l6973
u3230:
	line	34
	
l6985:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3240
	goto	l6989
u3240:
	line	35
	
l6987:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l6989:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l3519:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text961,local,class=CODE,delta=2
global __ptext961
__ptext961:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text961
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 2
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l6911:	
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
	goto	u3101
	goto	u3100
u3101:
	goto	l6915
u3100:
	line	50
	
l6913:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l3479
	line	51
	
l6915:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u3115:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u3110:
	addlw	-1
	skipz
	goto	u3115
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l6917:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l6919:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l6921:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l6923:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l6925:	
	btfss	(___fttol@exp1),7
	goto	u3121
	goto	u3120
u3121:
	goto	l6935
u3120:
	line	57
	
l6927:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u3131
	goto	u3130
u3131:
	goto	l6931
u3130:
	goto	l6913
	line	60
	
l6931:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l6933:	
	incfsz	(___fttol@exp1),f
	goto	u3141
	goto	u3140
u3141:
	goto	l6931
u3140:
	goto	l6941
	line	63
	
l6935:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3151
	goto	u3150
u3151:
	goto	l3486
u3150:
	goto	l6913
	line	66
	
l6939:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l3486:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u3161
	goto	u3160
u3161:
	goto	l6939
u3160:
	line	70
	
l6941:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3170
	goto	l6945
u3170:
	line	71
	
l6943:	
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
	
l6945:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l3479:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text962,local,class=CODE,delta=2
global __ptext962
__ptext962:

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
psect	text962
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 0
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l8233:	
	movf	(___ftpack@exp),w
	skipz
	goto	u5150
	goto	l8237
u5150:
	
l8235:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u5161
	goto	u5160
u5161:
	goto	l8243
u5160:
	line	65
	
l8237:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l3738
	line	67
	
l8241:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l8243:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u5171
	goto	u5170
u5171:
	goto	l8241
u5170:
	goto	l8247
	line	71
	
l8245:	
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
	
l8247:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u5181
	goto	u5180
u5181:
	goto	l8245
u5180:
	goto	l8251
	line	76
	
l8249:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l8251:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u5191
	goto	u5190
u5191:
	goto	l8249
u5190:
	
l3747:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u5201
	goto	u5200
u5201:
	goto	l3748
u5200:
	line	80
	
l8253:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l3748:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l8255:	
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
	
l8257:	
	movf	(___ftpack@sign),w
	skipz
	goto	u5210
	goto	l3749
u5210:
	line	84
	
l8259:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l3749:	
	line	85
	line	86
	
l3738:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lbmod
psect	text963,local,class=CODE,delta=2
global __ptext963
__ptext963:

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
psect	text963
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbmod.c"
	line	5
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
	opt	stack 1
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	line	9
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lbmod@dividend)
	
l8215:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l8217:	
	clrf	(___lbmod@rem)
	line	12
	
l8219:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u5125:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u5125
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l8221:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l8223:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u5131
	goto	u5130
u5131:
	goto	l8227
u5130:
	line	15
	
l8225:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l8227:	
	decfsz	(___lbmod@counter),f
	goto	u5141
	goto	u5140
u5141:
	goto	l8219
u5140:
	line	17
	
l8229:	
	movf	(___lbmod@rem),w
	line	18
	
l3408:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text964,local,class=CODE,delta=2
global __ptext964
__ptext964:

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
psect	text964
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbdiv.c"
	line	5
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
	opt	stack 1
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	line	9
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lbdiv@dividend)
	
l8191:	
	clrf	(___lbdiv@quotient)
	line	10
	
l8193:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u5080
	goto	l8211
u5080:
	line	11
	
l8195:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l8199
	
l3397:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l8197:	
	incf	(___lbdiv@counter),f
	line	12
	
l8199:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u5091
	goto	u5090
u5091:
	goto	l3397
u5090:
	line	16
	
l3399:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l8201:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u5101
	goto	u5100
u5101:
	goto	l8207
u5100:
	line	19
	
l8203:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l8205:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l8207:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l8209:	
	decfsz	(___lbdiv@counter),f
	goto	u5111
	goto	u5110
u5111:
	goto	l3399
u5110:
	line	25
	
l8211:	
	movf	(___lbdiv@quotient),w
	line	26
	
l3402:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___wmul
psect	text965,local,class=CODE,delta=2
global __ptext965
__ptext965:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text965
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 2
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l8175:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l8177:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u5061
	goto	u5060
u5061:
	goto	l8181
u5060:
	line	8
	
l8179:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l8181:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l8183:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l8185:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u5071
	goto	u5070
u5071:
	goto	l8177
u5070:
	line	12
	
l8187:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l3372:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text966,local,class=CODE,delta=2
global __ptext966
__ptext966:

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
psect	text966
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 1
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___bmul@multiplier)
	line	4
	
l6809:	
	clrf	(___bmul@product)
	line	7
	
l6811:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l6815
u2920:
	line	8
	
l6813:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l6815:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l6817:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l6819:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2931
	goto	u2930
u2931:
	goto	l6811
u2930:
	line	12
	
l6821:	
	movf	(___bmul@product),w
	line	13
	
l3366:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	__div_to_l_
psect	text967,local,class=CODE,delta=2
global __ptext967
__ptext967:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text967
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fldivl.c"
	line	61
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
	opt	stack 2
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l6763:	
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
	goto	u2831
	goto	u2830
u2831:
	goto	l6767
u2830:
	line	67
	
l6765:	
	clrf	(?__div_to_l_)
	clrf	(?__div_to_l_+1)
	clrf	(?__div_to_l_+2)
	clrf	(?__div_to_l_+3)
	goto	l3656
	line	68
	
l6767:	
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
	goto	u2841
	goto	u2840
u2841:
	goto	l6771
u2840:
	goto	l6765
	line	70
	
l6771:	
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
	
l6773:	
	clrf	(__div_to_l_@quot)
	clrf	(__div_to_l_@quot+1)
	clrf	(__div_to_l_@quot+2)
	clrf	(__div_to_l_@quot+3)
	line	75
	
l6775:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l6777:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l6779:	
	movlw	(020h)
	movwf	(__div_to_l_@cntr)
	line	79
	
l6781:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	80
	
l6783:	
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
	goto	u2855
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u2855
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u2855
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u2855:
	skipc
	goto	u2851
	goto	u2850
u2851:
	goto	l3659
u2850:
	line	81
	
l6785:	
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
	
l6787:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	83
	
l3659:	
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
	
l6789:	
	decfsz	(__div_to_l_@cntr),f
	goto	u2861
	goto	u2860
u2861:
	goto	l6781
u2860:
	
l3660:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u2871
	goto	u2870
u2871:
	goto	l6799
u2870:
	line	87
	
l6791:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u2881
	goto	u2880
u2881:
	goto	l6795
u2880:
	goto	l6765
	line	90
	
l6795:	
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	line	91
	
l6797:	
	incfsz	(__div_to_l_@exp1),f
	goto	u2891
	goto	u2890
u2891:
	goto	l6795
u2890:
	goto	l6805
	line	93
	
l6799:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u2901
	goto	u2900
u2901:
	goto	l3667
u2900:
	goto	l6765
	line	96
	
l6803:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	97
	decf	(__div_to_l_@exp1),f
	line	98
	
l3667:	
	line	95
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u2911
	goto	u2910
u2911:
	goto	l6803
u2910:
	line	100
	
l6805:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	line	101
	
l3656:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
;; =============== function __div_to_l_ ends ============

	signat	__div_to_l_,8316
	global	__tdiv_to_l_
psect	text968,local,class=CODE,delta=2
global __ptext968
__ptext968:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text968
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdivl.c"
	line	61
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
	opt	stack 2
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l6715:	
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
	goto	u2741
	goto	u2740
u2741:
	goto	l6719
u2740:
	line	67
	
l6717:	
	clrf	(?__tdiv_to_l_)
	clrf	(?__tdiv_to_l_+1)
	clrf	(?__tdiv_to_l_+2)
	clrf	(?__tdiv_to_l_+3)
	goto	l3613
	line	68
	
l6719:	
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
	goto	u2751
	goto	u2750
u2751:
	goto	l3614
u2750:
	goto	l6717
	line	69
	
l3614:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l6723:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l6725:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	
l6727:	
	clrf	(__tdiv_to_l_@quot)
	clrf	(__tdiv_to_l_@quot+1)
	clrf	(__tdiv_to_l_@quot+2)
	clrf	(__tdiv_to_l_@quot+3)
	line	75
	
l6729:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l6731:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	(018h)
	movwf	(__tdiv_to_l_@cntr)
	line	79
	
l6733:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	80
	
l6735:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u2765
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u2765
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u2765:
	skipc
	goto	u2761
	goto	u2760
u2761:
	goto	l6741
u2760:
	line	81
	
l6737:	
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
	
l6739:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	line	84
	
l6741:	
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	line	85
	
l6743:	
	decfsz	(__tdiv_to_l_@cntr),f
	goto	u2771
	goto	u2770
u2771:
	goto	l6733
u2770:
	
l3617:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u2781
	goto	u2780
u2781:
	goto	l6753
u2780:
	line	87
	
l6745:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u2791
	goto	u2790
u2791:
	goto	l6749
u2790:
	goto	l6717
	line	90
	
l6749:	
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	line	91
	
l6751:	
	incfsz	(__tdiv_to_l_@exp1),f
	goto	u2801
	goto	u2800
u2801:
	goto	l6749
u2800:
	goto	l6759
	line	93
	
l6753:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u2811
	goto	u2810
u2811:
	goto	l3624
u2810:
	goto	l6717
	line	96
	
l6757:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	97
	decf	(__tdiv_to_l_@exp1),f
	line	98
	
l3624:	
	line	95
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u2821
	goto	u2820
u2821:
	goto	l6757
u2820:
	line	100
	
l6759:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	line	101
	
l3613:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
;; =============== function __tdiv_to_l_ ends ============

	signat	__tdiv_to_l_,8316
	global	_isdigit
psect	text969,local,class=CODE,delta=2
global __ptext969
__ptext969:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text969
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
	line	13
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 2
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(isdigit@c)
	line	14
	
l6703:	
	clrf	(_isdigit$3713)
	
l6705:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u2721
	goto	u2720
u2721:
	goto	l6711
u2720:
	
l6707:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u2731
	goto	u2730
u2731:
	goto	l6711
u2730:
	
l6709:	
	clrf	(_isdigit$3713)
	incf	(_isdigit$3713),f
	
l6711:	
	rrf	(_isdigit$3713),w
	
	line	15
	
l3335:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_isprint
psect	text970,local,class=CODE,delta=2
global __ptext970
__ptext970:

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
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
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
psect	text970
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
	
l6691:	
	clrf	(_isprint$3716)
	
l6693:	
	movlw	(07Fh)
	subwf	(isprint@c),w
	skipnc
	goto	u2701
	goto	u2700
u2701:
	goto	l6699
u2700:
	
l6695:	
	movlw	(020h)
	subwf	(isprint@c),w
	skipc
	goto	u2711
	goto	u2710
u2711:
	goto	l6699
u2710:
	
l6697:	
	clrf	(_isprint$3716)
	incf	(_isprint$3716),f
	
l6699:	
	rrf	(_isprint$3716),w
	
	line	15
	
l3340:	
	return
	opt stack 0
GLOBAL	__end_of_isprint
	__end_of_isprint:
;; =============== function _isprint ends ============

	signat	_isprint,4216
	global	_send_char
psect	text971,local,class=CODE,delta=2
global __ptext971
__ptext971:

;; *************** function _send_char *****************
;; Defined at:
;;		line 121 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 06\BT Ôn Thi 06.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_string
;; This function uses a non-reentrant model
;;
psect	text971
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 06\BT Ôn Thi 06.c"
	line	121
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 3
; Regs used in _send_char: [wreg]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	122
	
l6687:	
;BT Ôn Thi 06.c: 122: while (TXIF==0){}
	
l1079:	
	btfss	(100/8),(100)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l1079
u2690:
	line	123
	
l6689:	
;BT Ôn Thi 06.c: 123: TXREG = data;
	movf	(send_char@data),w
	movwf	(25)	;volatile
	line	124
	
l1082:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_rx
psect	text972,local,class=CODE,delta=2
global __ptext972
__ptext972:

;; *************** function _rx *****************
;; Defined at:
;;		line 137 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 06\BT Ôn Thi 06.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text972
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 06\BT Ôn Thi 06.c"
	line	137
	global	__size_of_rx
	__size_of_rx	equ	__end_of_rx-_rx
	
_rx:	
	opt	stack 4
; Regs used in _rx: [wreg]
	line	138
	
l6653:	
;BT Ôn Thi 06.c: 138: SYNC = 0; BRGH = 1; BRG16 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	139
	
l6655:	
;BT Ôn Thi 06.c: 139: SPBRGH = 0x02;
	movlw	(02h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	140
;BT Ôn Thi 06.c: 140: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	141
	
l6657:	
;BT Ôn Thi 06.c: 141: CREN = 1; RX9 = 0; SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(196/8),(196)&7
	
l6659:	
	bcf	(198/8),(198)&7
	
l6661:	
	bsf	(199/8),(199)&7
	line	142
	
l6663:	
;BT Ôn Thi 06.c: 142: RCIE=1; RCIF=0; PEIE=1; GIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1125/8)^080h,(1125)&7
	
l6665:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(101/8),(101)&7
	
l6667:	
	bsf	(94/8),(94)&7
	
l6669:	
	bsf	(95/8),(95)&7
	line	143
	
l1094:	
	return
	opt stack 0
GLOBAL	__end_of_rx
	__end_of_rx:
;; =============== function _rx ends ============

	signat	_rx,88
	global	_tx
psect	text973,local,class=CODE,delta=2
global __ptext973
__ptext973:

;; *************** function _tx *****************
;; Defined at:
;;		line 129 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 06\BT Ôn Thi 06.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text973
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 06\BT Ôn Thi 06.c"
	line	129
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
	
_tx:	
	opt	stack 4
; Regs used in _tx: [wreg]
	line	130
	
l6643:	
;BT Ôn Thi 06.c: 130: SYNC = 0; BRGH = 1; BRG16 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	131
	
l6645:	
;BT Ôn Thi 06.c: 131: SPBRGH = 0x02;
	movlw	(02h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	132
;BT Ôn Thi 06.c: 132: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	133
	
l6647:	
;BT Ôn Thi 06.c: 133: TXEN = 1; TX9 = 0; SPEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	
l6649:	
	bcf	(1222/8)^080h,(1222)&7
	
l6651:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	135
	
l1091:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
;; =============== function _tx ends ============

	signat	_tx,88
	global	_ngat
psect	text974,local,class=CODE,delta=2
global __ptext974
__ptext974:

;; *************** function _ngat *****************
;; Defined at:
;;		line 89 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 06\BT Ôn Thi 06.c"
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
psect	text974
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 06\BT Ôn Thi 06.c"
	line	89
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
;; hardware stack exceeded
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
psect	text974
	line	90
	
i1l6671:	
;BT Ôn Thi 06.c: 90: TMR0 = 7;
	movlw	(07h)
	movwf	(1)	;volatile
	line	91
	
i1l6673:	
;BT Ôn Thi 06.c: 91: if(T0IF)
	btfss	(90/8),(90)&7
	goto	u267_21
	goto	u267_20
u267_21:
	goto	i1l6685
u267_20:
	line	93
	
i1l6675:	
;BT Ôn Thi 06.c: 92: {
;BT Ôn Thi 06.c: 93: dem++;
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
	line	94
	
i1l6677:	
;BT Ôn Thi 06.c: 94: if(dem == 2500){
	movlw	0x45
	xorwf	(_dem+2),w
	skipz
	goto	u268_25
	movlw	0x1c
	xorwf	(_dem+1),w
	skipz
	goto	u268_25
	movlw	0x40
	xorwf	(_dem),w
u268_25:
	skipz
	goto	u268_21
	goto	u268_20
u268_21:
	goto	i1l6685
u268_20:
	line	95
	
i1l6679:	
;BT Ôn Thi 06.c: 95: dem= 0;
	clrf	(_dem)
	clrf	(_dem+1)
	clrf	(_dem+2)
	line	96
;BT Ôn Thi 06.c: 96: xung = TMR1;
	movf	(14),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_xung)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(14+1),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	((_xung)^080h)+1
	clrf	2+((_xung)^080h)
	clrf	3+((_xung)^080h)
	line	97
	
i1l6681:	
;BT Ôn Thi 06.c: 97: TMR1H=0; TMR1L=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(15)	;volatile
	
i1l6683:	
	clrf	(14)	;volatile
	line	100
	
i1l6685:	
;BT Ôn Thi 06.c: 98: }
;BT Ôn Thi 06.c: 99: }
;BT Ôn Thi 06.c: 100: T0IF = 0;
	bcf	(90/8),(90)&7
	line	110
	
i1l1076:	
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
psect	text975,local,class=CODE,delta=2
global __ptext975
__ptext975:

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
psect	text975
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_ofi1___ftadd
	__size_ofi1___ftadd	equ	__end_ofi1___ftadd-i1___ftadd
	
i1___ftadd:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
i1l7103:	
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
	
i1l7105:	
	movf	(i1___ftadd@exp1),w
	skipz
	goto	u344_20
	goto	i1l7111
u344_20:
	
i1l7107:	
	movf	(i1___ftadd@exp2),w
	subwf	(i1___ftadd@exp1),w
	skipnc
	goto	u345_21
	goto	u345_20
u345_21:
	goto	i1l7115
u345_20:
	
i1l7109:	
	movf	(i1___ftadd@exp2),w
	movwf	(??i1___ftadd+0)+0
	movf	(i1___ftadd@exp1),w
	subwf	(??i1___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??i1___ftadd+0)+0,w
	skipc
	goto	u346_21
	goto	u346_20
u346_21:
	goto	i1l7115
u346_20:
	line	93
	
i1l7111:	
	movf	(i1___ftadd@f2),w
	movwf	(?i1___ftadd)
	movf	(i1___ftadd@f2+1),w
	movwf	(?i1___ftadd+1)
	movf	(i1___ftadd@f2+2),w
	movwf	(?i1___ftadd+2)
	goto	i1l3416
	line	94
	
i1l7115:	
	movf	(i1___ftadd@exp2),w
	skipz
	goto	u347_20
	goto	i1l3419
u347_20:
	
i1l7117:	
	movf	(i1___ftadd@exp1),w
	subwf	(i1___ftadd@exp2),w
	skipnc
	goto	u348_21
	goto	u348_20
u348_21:
	goto	i1l7121
u348_20:
	
i1l7119:	
	movf	(i1___ftadd@exp1),w
	movwf	(??i1___ftadd+0)+0
	movf	(i1___ftadd@exp2),w
	subwf	(??i1___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??i1___ftadd+0)+0,w
	skipc
	goto	u349_21
	goto	u349_20
u349_21:
	goto	i1l7121
u349_20:
	
i1l3419:	
	line	95
	goto	i1l3416
	line	96
	
i1l7121:	
	movlw	(06h)
	movwf	(i1___ftadd@sign)
	line	97
	
i1l7123:	
	btfss	(i1___ftadd@f1+2),(23)&7
	goto	u350_21
	goto	u350_20
u350_21:
	goto	i1l3420
u350_20:
	line	98
	
i1l7125:	
	bsf	(i1___ftadd@sign)+(7/8),(7)&7
	
i1l3420:	
	line	99
	btfss	(i1___ftadd@f2+2),(23)&7
	goto	u351_21
	goto	u351_20
u351_21:
	goto	i1l3421
u351_20:
	line	100
	
i1l7127:	
	bsf	(i1___ftadd@sign)+(6/8),(6)&7
	
i1l3421:	
	line	101
	bsf	(i1___ftadd@f1)+(15/8),(15)&7
	line	102
	
i1l7129:	
	movlw	0FFh
	andwf	(i1___ftadd@f1),f
	movlw	0FFh
	andwf	(i1___ftadd@f1+1),f
	movlw	0
	andwf	(i1___ftadd@f1+2),f
	line	103
	
i1l7131:	
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
	goto	u352_21
	goto	u352_20
u352_21:
	goto	i1l7143
u352_20:
	line	110
	
i1l7133:	
	clrc
	rlf	(i1___ftadd@f2),f
	rlf	(i1___ftadd@f2+1),f
	rlf	(i1___ftadd@f2+2),f
	line	111
	decf	(i1___ftadd@exp2),f
	line	112
	
i1l7135:	
	movf	(i1___ftadd@exp2),w
	xorwf	(i1___ftadd@exp1),w
	skipnz
	goto	u353_21
	goto	u353_20
u353_21:
	goto	i1l7141
u353_20:
	
i1l7137:	
	decf	(i1___ftadd@sign),f
	movf	((i1___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u354_21
	goto	u354_20
u354_21:
	goto	i1l7133
u354_20:
	goto	i1l7141
	line	114
	
i1l7139:	
	clrc
	rrf	(i1___ftadd@f1+2),f
	rrf	(i1___ftadd@f1+1),f
	rrf	(i1___ftadd@f1),f
	line	115
	incf	(i1___ftadd@exp1),f
	line	113
	
i1l7141:	
	movf	(i1___ftadd@exp1),w
	xorwf	(i1___ftadd@exp2),w
	skipz
	goto	u355_21
	goto	u355_20
u355_21:
	goto	i1l7139
u355_20:
	goto	i1l3430
	line	117
	
i1l7143:	
	movf	(i1___ftadd@exp1),w
	subwf	(i1___ftadd@exp2),w
	skipnc
	goto	u356_21
	goto	u356_20
u356_21:
	goto	i1l3430
u356_20:
	line	121
	
i1l7145:	
	clrc
	rlf	(i1___ftadd@f1),f
	rlf	(i1___ftadd@f1+1),f
	rlf	(i1___ftadd@f1+2),f
	line	122
	decf	(i1___ftadd@exp1),f
	line	123
	
i1l7147:	
	movf	(i1___ftadd@exp2),w
	xorwf	(i1___ftadd@exp1),w
	skipnz
	goto	u357_21
	goto	u357_20
u357_21:
	goto	i1l7153
u357_20:
	
i1l7149:	
	decf	(i1___ftadd@sign),f
	movf	((i1___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u358_21
	goto	u358_20
u358_21:
	goto	i1l7145
u358_20:
	goto	i1l7153
	line	125
	
i1l7151:	
	clrc
	rrf	(i1___ftadd@f2+2),f
	rrf	(i1___ftadd@f2+1),f
	rrf	(i1___ftadd@f2),f
	line	126
	incf	(i1___ftadd@exp2),f
	line	124
	
i1l7153:	
	movf	(i1___ftadd@exp1),w
	xorwf	(i1___ftadd@exp2),w
	skipz
	goto	u359_21
	goto	u359_20
u359_21:
	goto	i1l7151
u359_20:
	line	129
	
i1l3430:	
	btfss	(i1___ftadd@sign),(7)&7
	goto	u360_21
	goto	u360_20
u360_21:
	goto	i1l7159
u360_20:
	line	131
	
i1l7155:	
	movlw	0FFh
	xorwf	(i1___ftadd@f1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f1+2),f
	line	132
	
i1l7157:	
	incf	(i1___ftadd@f1),f
	skipnz
	incf	(i1___ftadd@f1+1),f
	skipnz
	incf	(i1___ftadd@f1+2),f
	line	134
	
i1l7159:	
	btfss	(i1___ftadd@sign),(6)&7
	goto	u361_21
	goto	u361_20
u361_21:
	goto	i1l7165
u361_20:
	line	136
	
i1l7161:	
	movlw	0FFh
	xorwf	(i1___ftadd@f2),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+2),f
	line	137
	
i1l7163:	
	incf	(i1___ftadd@f2),f
	skipnz
	incf	(i1___ftadd@f2+1),f
	skipnz
	incf	(i1___ftadd@f2+2),f
	line	139
	
i1l7165:	
	clrf	(i1___ftadd@sign)
	line	140
	
i1l7167:	
	movf	(i1___ftadd@f1),w
	addwf	(i1___ftadd@f2),f
	movf	(i1___ftadd@f1+1),w
	clrz
	skipnc
	incf	(i1___ftadd@f1+1),w
	skipnz
	goto	u362_21
	addwf	(i1___ftadd@f2+1),f
u362_21:
	movf	(i1___ftadd@f1+2),w
	clrz
	skipnc
	incf	(i1___ftadd@f1+2),w
	skipnz
	goto	u362_22
	addwf	(i1___ftadd@f2+2),f
u362_22:

	line	141
	
i1l7169:	
	btfss	(i1___ftadd@f2+2),(23)&7
	goto	u363_21
	goto	u363_20
u363_21:
	goto	i1l7177
u363_20:
	line	142
	
i1l7171:	
	movlw	0FFh
	xorwf	(i1___ftadd@f2),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+2),f
	line	143
	
i1l7173:	
	incf	(i1___ftadd@f2),f
	skipnz
	incf	(i1___ftadd@f2+1),f
	skipnz
	incf	(i1___ftadd@f2+2),f
	line	144
	
i1l7175:	
	clrf	(i1___ftadd@sign)
	incf	(i1___ftadd@sign),f
	line	146
	
i1l7177:	
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
	
i1l3416:	
	return
	opt stack 0
GLOBAL	__end_ofi1___ftadd
	__end_ofi1___ftadd:
;; =============== function i1___ftadd ends ============

	signat	i1___ftadd,91
	global	i1___ftpack
psect	text976,local,class=CODE,delta=2
global __ptext976
__ptext976:

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
psect	text976
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_ofi1___ftpack
	__size_ofi1___ftpack	equ	__end_ofi1___ftpack-i1___ftpack
	
i1___ftpack:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1___ftpack: [wreg+status,2+status,0]
	line	64
	
i1l7181:	
	movf	(i1___ftpack@exp),w
	skipz
	goto	u364_20
	goto	i1l7185
u364_20:
	
i1l7183:	
	movf	(i1___ftpack@arg+2),w
	iorwf	(i1___ftpack@arg+1),w
	iorwf	(i1___ftpack@arg),w
	skipz
	goto	u365_21
	goto	u365_20
u365_21:
	goto	i1l7191
u365_20:
	line	65
	
i1l7185:	
	clrf	(?i1___ftpack)
	clrf	(?i1___ftpack+1)
	clrf	(?i1___ftpack+2)
	goto	i1l3738
	line	67
	
i1l7189:	
	incf	(i1___ftpack@exp),f
	line	68
	clrc
	rrf	(i1___ftpack@arg+2),f
	rrf	(i1___ftpack@arg+1),f
	rrf	(i1___ftpack@arg),f
	line	66
	
i1l7191:	
	movlw	low highword(0FE0000h)
	andwf	(i1___ftpack@arg+2),w
	btfss	status,2
	goto	u366_21
	goto	u366_20
u366_21:
	goto	i1l7189
u366_20:
	goto	i1l7195
	line	71
	
i1l7193:	
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
	
i1l7195:	
	movlw	low highword(0FF0000h)
	andwf	(i1___ftpack@arg+2),w
	btfss	status,2
	goto	u367_21
	goto	u367_20
u367_21:
	goto	i1l7193
u367_20:
	goto	i1l7199
	line	76
	
i1l7197:	
	decf	(i1___ftpack@exp),f
	line	77
	clrc
	rlf	(i1___ftpack@arg),f
	rlf	(i1___ftpack@arg+1),f
	rlf	(i1___ftpack@arg+2),f
	line	75
	
i1l7199:	
	btfss	(i1___ftpack@arg+1),(15)&7
	goto	u368_21
	goto	u368_20
u368_21:
	goto	i1l7197
u368_20:
	
i1l3747:	
	line	79
	btfsc	(i1___ftpack@exp),(0)&7
	goto	u369_21
	goto	u369_20
u369_21:
	goto	i1l3748
u369_20:
	line	80
	
i1l7201:	
	bcf	(i1___ftpack@arg)+(15/8),(15)&7
	
i1l3748:	
	line	81
	clrc
	rrf	(i1___ftpack@exp),f
	line	82
	
i1l7203:	
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
	
i1l7205:	
	movf	(i1___ftpack@sign),w
	skipz
	goto	u370_20
	goto	i1l3749
u370_20:
	line	84
	
i1l7207:	
	bsf	(i1___ftpack@arg)+(23/8),(23)&7
	
i1l3749:	
	line	85
	line	86
	
i1l3738:	
	return
	opt stack 0
GLOBAL	__end_ofi1___ftpack
	__end_ofi1___ftpack:
;; =============== function i1___ftpack ends ============

	signat	i1___ftpack,91
	global	fptotal
fptotal equ 2
	file ""
	line	#
psect	functab,class=CODE,delta=2,reloc=256
global __pfunctab
__pfunctab:
	global	fptable
fptable:
	movwf (btemp+1)&07Fh
	movlw high(fptable)
	movwf pclath
	movf (btemp+1)&07Fh,w
	addwf pc
	global	fpbase
fpbase:
	goto fpbase	; Call via a null pointer and you will get stuck here.
	file ""
	line	#
fp__putch:
	ljmp	_putch
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
