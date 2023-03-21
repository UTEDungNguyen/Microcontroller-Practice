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
# 8 "D:\TTVXL\Project TTVXL\BT02week11ttvxl\BT02week11ttvxl.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "D:\TTVXL\Project TTVXL\BT02week11ttvxl\BT02week11ttvxl.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_gotoxy
	FNCALL	_main,_printf
	FNCALL	_main,_read_adc_AN0
	FNCALL	_main,_read_adc_AN1
	FNCALL	_main,_read_adc_AN2
	FNCALL	_main,_read_adc_AN3
	FNCALL	_main,_read_adc_AN5
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
	FNCALL	_read_adc_AN5,___awtoft
	FNCALL	_read_adc_AN5,___ftdiv
	FNCALL	_read_adc_AN5,___ftmul
	FNCALL	_read_adc_AN3,___awtoft
	FNCALL	_read_adc_AN3,___ftdiv
	FNCALL	_read_adc_AN3,___ftmul
	FNCALL	_read_adc_AN2,___awtoft
	FNCALL	_read_adc_AN2,___ftdiv
	FNCALL	_read_adc_AN2,___ftmul
	FNCALL	_read_adc_AN1,___awtoft
	FNCALL	_read_adc_AN1,___ftdiv
	FNCALL	_read_adc_AN1,___ftmul
	FNCALL	_read_adc_AN0,___awtoft
	FNCALL	_read_adc_AN0,___ftdiv
	FNCALL	_read_adc_AN0,___ftmul
	FNCALL	___lltoft,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNROOT	_main
	FNCALL	_button,i1_lcd_put_byte
	FNCALL	_button,i1_lcd_busy
	FNCALL	intlevel1,_button
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
	global	_adc1
	global	_adc2
	global	_S1_state
	global	_adc3
	global	_adc4
	global	_res1
	global	_res2
	global	_res3
	global	_res4
	global	_res5
	global	_adc5
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
	global	_GIE
_GIE	set	95
	global	_GO_nDONE
_GO_nDONE	set	249
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
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
	global	_IOCB
_IOCB	set	150
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	global	_ADFM
_ADFM	set	1279
	global	_TRISA0
_TRISA0	set	1064
	global	_TRISA1
_TRISA1	set	1065
	global	_TRISA2
_TRISA2	set	1066
	global	_TRISA3
_TRISA3	set	1067
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
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	global	_ANS0
_ANS0	set	3136
	global	_ANS1
_ANS1	set	3137
	global	_ANS2
_ANS2	set	3138
	global	_ANS3
_ANS3	set	3139
	global	_ANS5
_ANS5	set	3141
	
STR_2:	
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
	
STR_3:	
	retlw	78	;'N'
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	111	;'o'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_5:	
	retlw	78	;'N'
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	111	;'o'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	0
psect	strings
	
STR_7:	
	retlw	78	;'N'
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	111	;'o'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	51	;'3'
	retlw	0
psect	strings
	
STR_9:	
	retlw	78	;'N'
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	111	;'o'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	52	;'4'
	retlw	0
psect	strings
	
STR_11:	
	retlw	78	;'N'
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	111	;'o'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	53	;'5'
	retlw	0
psect	strings
	
STR_4:	
	retlw	71	;'G'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	51	;'3'
	retlw	46	;'.'
	retlw	49	;'1'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_1:	
	retlw	87	;'W'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	0
psect	strings
STR_6	equ	STR_4+0
STR_8	equ	STR_4+0
STR_10	equ	STR_4+0
STR_12	equ	STR_4+0
	file	"BT02week11ttvxl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_adc3:
       ds      2

_adc4:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_adc1:
       ds      2

_adc2:
       ds      2

_S1_state:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_res1:
       ds      3

_res2:
       ds      3

_res3:
       ds      3

_res4:
       ds      3

_res5:
       ds      3

_adc5:
       ds      2

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

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
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
	global	_printf$3186
_printf$3186:	; 4 bytes @ 0x0
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
	global	printf@flag
printf@flag:	; 2 bytes @ 0xC
	ds	2
	global	printf@f
printf@f:	; 1 bytes @ 0xE
	ds	1
	global	printf@width
printf@width:	; 2 bytes @ 0xF
	ds	2
	global	printf@exp
printf@exp:	; 2 bytes @ 0x11
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
	global	?_read_adc_AN0
?_read_adc_AN0:	; 0 bytes @ 0x0
	global	?_read_adc_AN1
?_read_adc_AN1:	; 0 bytes @ 0x0
	global	?_read_adc_AN2
?_read_adc_AN2:	; 0 bytes @ 0x0
	global	?_read_adc_AN3
?_read_adc_AN3:	; 0 bytes @ 0x0
	global	?_read_adc_AN5
?_read_adc_AN5:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	?_button
?_button:	; 0 bytes @ 0x0
	global	??i1_lcd_busy
??i1_lcd_busy:	; 0 bytes @ 0x0
	global	?i1_lcd_put_byte
?i1_lcd_put_byte:	; 0 bytes @ 0x0
	global	?_lcd_busy
?_lcd_busy:	; 1 bytes @ 0x0
	global	?i1_lcd_busy
?i1_lcd_busy:	; 1 bytes @ 0x0
	global	i1lcd_put_byte@b
i1lcd_put_byte@b:	; 1 bytes @ 0x0
	ds	1
	global	??i1_lcd_put_byte
??i1_lcd_put_byte:	; 0 bytes @ 0x1
	global	i1lcd_busy@busy
i1lcd_busy@busy:	; 1 bytes @ 0x1
	ds	2
	global	i1lcd_put_byte@rs
i1lcd_put_byte@rs:	; 1 bytes @ 0x3
	ds	1
	global	i1lcd_put_byte@temp
i1lcd_put_byte@temp:	; 1 bytes @ 0x4
	ds	1
	global	??_button
??_button:	; 0 bytes @ 0x5
	ds	5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_lcd_put_byte
?_lcd_put_byte:	; 0 bytes @ 0x0
	global	??_lcd_busy
??_lcd_busy:	; 0 bytes @ 0x0
	global	??_isprint
??_isprint:	; 0 bytes @ 0x0
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x0
	global	?___ftge
?___ftge:	; 1 bit 
	global	?___lbmod
?___lbmod:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	?__tdiv_to_l_
?__tdiv_to_l_:	; 4 bytes @ 0x0
	global	?__div_to_l_
?__div_to_l_:	; 4 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	lcd_put_byte@b
lcd_put_byte@b:	; 1 bytes @ 0x0
	global	_isdigit$3694
_isdigit$3694:	; 1 bytes @ 0x0
	global	_isprint$3697
_isprint$3697:	; 1 bytes @ 0x0
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	__tdiv_to_l_@f1
__tdiv_to_l_@f1:	; 3 bytes @ 0x0
	global	__div_to_l_@f1
__div_to_l_@f1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	ds	1
	global	??_lcd_put_byte
??_lcd_put_byte:	; 0 bytes @ 0x1
	global	??___lbmod
??___lbmod:	; 0 bytes @ 0x1
	global	lcd_busy@busy
lcd_busy@busy:	; 1 bytes @ 0x1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	global	isprint@c
isprint@c:	; 1 bytes @ 0x1
	ds	1
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0x3
	global	lcd_put_byte@rs
lcd_put_byte@rs:	; 1 bytes @ 0x3
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	global	__tdiv_to_l_@f2
__tdiv_to_l_@f2:	; 3 bytes @ 0x3
	global	__div_to_l_@f2
__div_to_l_@f2:	; 3 bytes @ 0x3
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	lcd_put_byte@temp
lcd_put_byte@temp:	; 1 bytes @ 0x4
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
	global	?_lcd_gotoxy
?_lcd_gotoxy:	; 0 bytes @ 0x5
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	?___lbdiv
?___lbdiv:	; 1 bytes @ 0x5
	global	lcd_gotoxy@row
lcd_gotoxy@row:	; 1 bytes @ 0x5
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	ds	1
	global	??_lcd_gotoxy
??_lcd_gotoxy:	; 0 bytes @ 0x6
	global	??__tdiv_to_l_
??__tdiv_to_l_:	; 0 bytes @ 0x6
	global	??__div_to_l_
??__div_to_l_:	; 0 bytes @ 0x6
	global	??___lbdiv
??___lbdiv:	; 0 bytes @ 0x6
	global	??___ftge
??___ftge:	; 0 bytes @ 0x6
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x6
	global	lcd_gotoxy@col
lcd_gotoxy@col:	; 1 bytes @ 0x6
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x6
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x6
	ds	1
	global	lcd_gotoxy@address
lcd_gotoxy@address:	; 1 bytes @ 0x7
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	??_lcd_putc
??_lcd_putc:	; 0 bytes @ 0x8
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x8
	global	lcd_putc@c
lcd_putc@c:	; 1 bytes @ 0x8
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x8
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x8
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x8
	ds	1
	global	??_putch
??_putch:	; 0 bytes @ 0x9
	global	?___bmul
?___bmul:	; 1 bytes @ 0x9
	global	putch@c
putch@c:	; 1 bytes @ 0x9
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x9
	global	__tdiv_to_l_@quot
__tdiv_to_l_@quot:	; 4 bytes @ 0x9
	ds	1
	global	??___bmul
??___bmul:	; 0 bytes @ 0xA
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0xA
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0xA
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0xA
	ds	1
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xB
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0xB
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xB
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0xB
	ds	1
	global	??___lltoft
??___lltoft:	; 0 bytes @ 0xC
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0xC
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xC
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0xC
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0xC
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0xC
	ds	1
	global	?___llmod
?___llmod:	; 4 bytes @ 0xD
	global	__tdiv_to_l_@cntr
__tdiv_to_l_@cntr:	; 1 bytes @ 0xD
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0xD
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0xE
	global	__tdiv_to_l_@exp1
__tdiv_to_l_@exp1:	; 1 bytes @ 0xE
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0xE
	global	__div_to_l_@quot
__div_to_l_@quot:	; 4 bytes @ 0xE
	ds	1
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0xF
	ds	2
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x11
	ds	1
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x12
	global	??___fttol
??___fttol:	; 0 bytes @ 0x12
	global	__div_to_l_@cntr
__div_to_l_@cntr:	; 1 bytes @ 0x12
	ds	1
	global	__div_to_l_@exp1
__div_to_l_@exp1:	; 1 bytes @ 0x13
	ds	2
	global	??___llmod
??___llmod:	; 0 bytes @ 0x15
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x15
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x15
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x15
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x16
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x16
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x19
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x1A
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x1A
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x1B
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x1B
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x1E
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x21
	ds	3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x24
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x25
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x28
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x29
	ds	1
	global	??_read_adc_AN0
??_read_adc_AN0:	; 0 bytes @ 0x2A
	global	??_read_adc_AN1
??_read_adc_AN1:	; 0 bytes @ 0x2A
	global	??_read_adc_AN2
??_read_adc_AN2:	; 0 bytes @ 0x2A
	global	??_read_adc_AN3
??_read_adc_AN3:	; 0 bytes @ 0x2A
	global	??_read_adc_AN5
??_read_adc_AN5:	; 0 bytes @ 0x2A
	global	?_scale
?_scale:	; 3 bytes @ 0x2A
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x2A
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x2A
	ds	3
	global	??_scale
??_scale:	; 0 bytes @ 0x2D
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x2D
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x30
	ds	1
	global	_scale$4157
_scale$4157:	; 3 bytes @ 0x31
	ds	2
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x33
	ds	1
	global	scale@scl
scale@scl:	; 1 bytes @ 0x34
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x34
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x35
	ds	1
	global	?_fround
?_fround:	; 3 bytes @ 0x36
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x36
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x36
	ds	3
	global	??_fround
??_fround:	; 0 bytes @ 0x39
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x39
	global	_fround$4156
_fround$4156:	; 3 bytes @ 0x39
	ds	3
	global	??___ftsub
??___ftsub:	; 0 bytes @ 0x3C
	global	_fround$4155
_fround$4155:	; 3 bytes @ 0x3C
	ds	3
	global	fround@prec
fround@prec:	; 1 bytes @ 0x3F
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0x40
	ds	3
	global	??_printf
??_printf:	; 0 bytes @ 0x43
	ds	5
	global	??_main
??_main:	; 0 bytes @ 0x48
	ds	2
;;Data sizes: Strings 120, constant 118, data 0, bss 26, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      14
;; BANK0           80     74      79
;; BANK1           80     25      42
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
;; printf@f	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_12(CODE[15]), STR_11(CODE[16]), STR_10(CODE[15]), STR_9(CODE[16]), 
;;		 -> STR_8(CODE[15]), STR_7(CODE[16]), STR_6(CODE[15]), STR_5(CODE[16]), 
;;		 -> STR_4(CODE[15]), STR_3(CODE[16]), STR_2(CODE[17]), STR_1(CODE[8]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(BANK0[2]), 
;;
;; S3175$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _button in COMMON
;;
;;   _button->i1_lcd_put_byte
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
;;   _lcd_gotoxy->_lcd_put_byte
;;   _lcd_init->_lcd_put_byte
;;   _read_adc_AN5->___ftmul
;;   _read_adc_AN3->___ftmul
;;   _read_adc_AN2->___ftmul
;;   _read_adc_AN1->___ftmul
;;   _read_adc_AN0->___ftmul
;;   ___lltoft->___ftpack
;;   ___awtoft->___ftpack
;;   ___ftmul->___fttol
;;   ___ftmul->___ftdiv
;;   ___ftdiv->___awtoft
;;   ___ftadd->___ftmul
;;   ___llmod->___lldiv
;;   ___awdiv->___awmod
;;   ___fttol->___awdiv
;;   ___lbdiv->___lbmod
;;   ___bmul->___lbdiv
;;
;; Critical Paths under _button in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_printf
;;
;; Critical Paths under _button in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _button in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _button in BANK2
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
;; (0) _main                                                 2     2      0   17780
;;                                             72 BANK0      2     2      0
;;                           _lcd_init
;;                         _lcd_gotoxy
;;                             _printf
;;                       _read_adc_AN0
;;                       _read_adc_AN1
;;                       _read_adc_AN2
;;                       _read_adc_AN3
;;                       _read_adc_AN5
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              37    34      3   10603
;;                                             64 BANK0      8     5      3
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
;;                                              9 BANK0      1     1      0
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (3) _lcd_putc                                             1     1      0     691
;;                                              8 BANK0      1     1      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;;                         _lcd_gotoxy
;;                            _isprint
;; ---------------------------------------------------------------------------------
;; (2) ___ftsub                                              6     0      6    1094
;;                                             54 BANK0      6     0      6
;;                            ___ftadd
;;                           ___lltoft (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _scale                                               14    11      3    1688
;;                                             42 BANK0     11     8      3
;;                            ___awmod
;;                            ___awdiv
;;                            ___ftmul
;;                             ___bmul
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _fround                                              13    10      3    1215
;;                                             54 BANK0     10     7      3
;;                            ___lbmod
;;                             ___bmul
;;                            ___lbdiv
;;                            ___ftmul
;;                            ___ftadd (ARG)
;; ---------------------------------------------------------------------------------
;; (4) _lcd_gotoxy                                           3     2      1     313
;;                                              5 BANK0      3     2      1
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             4     4      0     244
;;                                              5 BANK0      3     3      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (1) _read_adc_AN5                                         3     3      0    1324
;;                                             42 BANK0      3     3      0
;;                           ___awtoft
;;                            ___ftdiv
;;                            ___ftmul
;; ---------------------------------------------------------------------------------
;; (1) _read_adc_AN3                                         3     3      0    1324
;;                                             42 BANK0      3     3      0
;;                           ___awtoft
;;                            ___ftdiv
;;                            ___ftmul
;; ---------------------------------------------------------------------------------
;; (1) _read_adc_AN2                                         3     3      0    1324
;;                                             42 BANK0      3     3      0
;;                           ___awtoft
;;                            ___ftdiv
;;                            ___ftmul
;; ---------------------------------------------------------------------------------
;; (1) _read_adc_AN1                                         3     3      0    1324
;;                                             42 BANK0      3     3      0
;;                           ___awtoft
;;                            ___ftdiv
;;                            ___ftmul
;; ---------------------------------------------------------------------------------
;; (1) _read_adc_AN0                                         3     3      0    1324
;;                                             42 BANK0      3     3      0
;;                           ___awtoft
;;                            ___ftdiv
;;                            ___ftmul
;; ---------------------------------------------------------------------------------
;; (2) ___lltoft                                             5     1      4     278
;;                                              8 BANK0      5     1      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (2) ___awtoft                                             4     1      3     300
;;                                              8 BANK0      4     1      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             15     9      6     535
;;                                             27 BANK0     15     9      6
;;                           ___ftpack
;;                            ___fttol (ARG)
;;                            ___awdiv (ARG)
;;                            ___awmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___lbmod (ARG)
;;                            ___ftdiv (ARG)
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftdiv                                             15     9      6     489
;;                                             12 BANK0     15     9      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftadd                                             12     6      6    1049
;;                                             42 BANK0     12     6      6
;;                           ___ftpack
;;                            ___lbmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___ftmul (ARG)
;; ---------------------------------------------------------------------------------
;; (5) _lcd_busy                                             2     2      0      23
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (5) _lcd_put_byte                                         5     4      1     221
;;                                              0 BANK0      5     4      1
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              6     2      4     296
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lldiv                                             13     5      8     162
;;                                              0 BANK0     13     5      8
;; ---------------------------------------------------------------------------------
;; (2) ___ftge                                               6     0      6     136
;;                                              0 BANK0      6     0      6
;; ---------------------------------------------------------------------------------
;; (2) ___ftneg                                              3     0      3      45
;;                                              0 BANK0      3     0      3
;; ---------------------------------------------------------------------------------
;; (2) ___llmod                                              9     1      8     159
;;                                             13 BANK0      9     1      8
;;                            ___lldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              8     4      4     300
;;                                              6 BANK0      8     4      4
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___fttol                                             13     9      4     252
;;                                             14 BANK0     13     9      4
;;                           ___ftpack (ARG)
;;                            ___awmod (ARG)
;;                            ___awdiv (ARG)
;;                             ___bmul (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     209
;;                                              0 BANK0      8     3      5
;; ---------------------------------------------------------------------------------
;; (3) ___lbmod                                              5     4      1     159
;;                                              0 BANK0      5     4      1
;; ---------------------------------------------------------------------------------
;; (3) ___lbdiv                                              4     3      1     162
;;                                              5 BANK0      4     3      1
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (3) ___bmul                                               3     2      1      68
;;                                              9 BANK0      3     2      1
;;                            ___lbmod (ARG)
;;                            ___lbdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) __div_to_l_                                          20    14      6     446
;;                                              0 BANK0     20    14      6
;; ---------------------------------------------------------------------------------
;; (2) __tdiv_to_l_                                         15     9      6     303
;;                                              0 BANK0     15     9      6
;; ---------------------------------------------------------------------------------
;; (2) _isdigit                                              2     2      0      68
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (4) _isprint                                              2     2      0      68
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (6) _button                                               5     5      0     807
;;                                              5 COMMON     5     5      0
;;                     i1_lcd_put_byte
;;                         i1_lcd_busy
;; ---------------------------------------------------------------------------------
;; (7) i1_lcd_put_byte                                       5     4      1     732
;;                                              0 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (7) i1_lcd_busy                                           2     2      0      75
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 7
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
;;         ___ftdiv (ARG)
;;           ___ftpack
;;           ___awtoft (ARG)
;;             ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
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
;;       ___ftdiv (ARG)
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
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
;;         ___ftdiv (ARG)
;;           ___ftpack
;;           ___awtoft (ARG)
;;             ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
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
;;           ___ftdiv (ARG)
;;             ___ftpack
;;             ___awtoft (ARG)
;;               ___ftpack
;;           ___awtoft (ARG)
;;             ___ftpack
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
;;         ___ftdiv (ARG)
;;           ___ftpack
;;           ___awtoft (ARG)
;;             ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
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
;;           ___ftdiv (ARG)
;;             ___ftpack
;;             ___awtoft (ARG)
;;               ___ftpack
;;           ___awtoft (ARG)
;;             ___ftpack
;;       ___lltoft (ARG)
;;         ___ftpack
;;     ___lldiv
;;     ___llmod
;;       ___lldiv (ARG)
;;   _read_adc_AN0
;;     ___awtoft
;;       ___ftpack
;;     ___ftdiv
;;       ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;     ___ftmul
;;       ___ftpack
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
;;       ___ftdiv (ARG)
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;   _read_adc_AN1
;;     ___awtoft
;;       ___ftpack
;;     ___ftdiv
;;       ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;     ___ftmul
;;       ___ftpack
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
;;       ___ftdiv (ARG)
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;   _read_adc_AN2
;;     ___awtoft
;;       ___ftpack
;;     ___ftdiv
;;       ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;     ___ftmul
;;       ___ftpack
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
;;       ___ftdiv (ARG)
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;   _read_adc_AN3
;;     ___awtoft
;;       ___ftpack
;;     ___ftdiv
;;       ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;     ___ftmul
;;       ___ftpack
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
;;       ___ftdiv (ARG)
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;   _read_adc_AN5
;;     ___awtoft
;;       ___ftpack
;;     ___ftdiv
;;       ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;     ___ftmul
;;       ___ftpack
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
;;       ___ftdiv (ARG)
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;
;; _button (ROOT)
;;   i1_lcd_put_byte
;;   i1_lcd_busy
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      A       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       9       2        0.0%
;;ABS                  0      0      87       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     4A      4F       5       98.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     19      2A       7       52.5%
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
;;		line 69 in file "D:\TTVXL\Project TTVXL\BT02week11ttvxl\BT02week11ttvxl.c"
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_lcd_init
;;		_lcd_gotoxy
;;		_printf
;;		_read_adc_AN0
;;		_read_adc_AN1
;;		_read_adc_AN2
;;		_read_adc_AN3
;;		_read_adc_AN5
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT02week11ttvxl\BT02week11ttvxl.c"
	line	69
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	70
	
l7748:	
;BT02week11ttvxl.c: 70: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	71
	
l7750:	
;BT02week11ttvxl.c: 71: lcd_init();
	fcall	_lcd_init
	line	73
	
l7752:	
;BT02week11ttvxl.c: 73: GIE = 1;
	bsf	(95/8),(95)&7
	line	74
	
l7754:	
;BT02week11ttvxl.c: 74: RBIE = 1;
	bsf	(91/8),(91)&7
	line	75
	
l7756:	
;BT02week11ttvxl.c: 75: RBIF = 0;
	bcf	(88/8),(88)&7
	line	76
	
l7758:	
;BT02week11ttvxl.c: 76: IOCB = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(150)^080h	;volatile
	line	78
	
l7760:	
;BT02week11ttvxl.c: 78: TRISD= 0x00;
	clrf	(136)^080h	;volatile
	line	79
	
l7762:	
;BT02week11ttvxl.c: 79: TRISB = 0xFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	81
;BT02week11ttvxl.c: 81: lcd_gotoxy(4,0);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(?_lcd_gotoxy)
	movlw	(04h)
	fcall	_lcd_gotoxy
	line	82
	
l7764:	
;BT02week11ttvxl.c: 82: printf("WELCOME");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	83
	
l7766:	
;BT02week11ttvxl.c: 83: lcd_gotoxy(0,1);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	84
;BT02week11ttvxl.c: 84: printf("Nguyen Phuc Dung");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	line	86
	
l7768:	
;BT02week11ttvxl.c: 86: TRISE0 = 1;
	bsf	(1096/8)^080h,(1096)&7
	line	87
	
l7770:	
;BT02week11ttvxl.c: 87: ANS5 = 1;
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3141/8)^0180h,(3141)&7
	line	88
	
l7772:	
;BT02week11ttvxl.c: 88: TRISA0 = 1;
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1064/8)^080h,(1064)&7
	line	89
	
l7774:	
;BT02week11ttvxl.c: 89: ANS0 = 1;
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3136/8)^0180h,(3136)&7
	line	90
	
l7776:	
;BT02week11ttvxl.c: 90: TRISA1 = 1;
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1065/8)^080h,(1065)&7
	line	91
	
l7778:	
;BT02week11ttvxl.c: 91: ANS1 = 1;
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3137/8)^0180h,(3137)&7
	line	92
	
l7780:	
;BT02week11ttvxl.c: 92: TRISA2 = 1;
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1066/8)^080h,(1066)&7
	line	93
	
l7782:	
;BT02week11ttvxl.c: 93: ANS2 = 1;
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3138/8)^0180h,(3138)&7
	line	94
	
l7784:	
;BT02week11ttvxl.c: 94: TRISA3 = 1;
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1067/8)^080h,(1067)&7
	line	95
	
l7786:	
;BT02week11ttvxl.c: 95: ANS3 = 1;
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3139/8)^0180h,(3139)&7
	line	96
	
l7788:	
;BT02week11ttvxl.c: 96: VCFG1 = 0;VCFG0 = 0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1277/8)^080h,(1277)&7
	
l7790:	
	bcf	(1276/8)^080h,(1276)&7
	line	97
	
l7792:	
;BT02week11ttvxl.c: 97: ADCS1 = 1; ADCS0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(255/8),(255)&7
	
l7794:	
	bcf	(254/8),(254)&7
	line	98
	
l7796:	
;BT02week11ttvxl.c: 98: ADFM = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1279/8)^080h,(1279)&7
	line	99
	
l7798:	
;BT02week11ttvxl.c: 99: ADON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(248/8),(248)&7
	line	100
	
l7800:	
;BT02week11ttvxl.c: 100: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u4887:
	decfsz	((??_main+0)+0),f
	goto	u4887
	decfsz	((??_main+0)+0+1),f
	goto	u4887
	clrwdt
opt asmopt_on

	line	104
	
l7802:	
;BT02week11ttvxl.c: 103: {
;BT02week11ttvxl.c: 104: if (S1_state == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(_S1_state),w
	skipz
	goto	u4831
	goto	u4830
u4831:
	goto	l7810
u4830:
	line	105
	
l7804:	
;BT02week11ttvxl.c: 105: read_adc_AN0();
	fcall	_read_adc_AN0
	line	106
;BT02week11ttvxl.c: 106: lcd_gotoxy(0,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_lcd_gotoxy)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	107
	
l7806:	
;BT02week11ttvxl.c: 107: printf("Nhiet Do Room 1");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_printf
	line	108
	
l7808:	
;BT02week11ttvxl.c: 108: lcd_gotoxy(0,1);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	109
;BT02week11ttvxl.c: 109: printf("Gia tri: %3.1f",res1);
	bsf	status, 5	;RP0=1, select bank1
	movf	(_res1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_res1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_res1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf+2)
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_printf
	line	111
	
l7810:	
;BT02week11ttvxl.c: 110: }
;BT02week11ttvxl.c: 111: if (S1_state == 2){
	bcf	status, 5	;RP0=0, select bank0
	movf	(_S1_state),w
	xorlw	02h
	skipz
	goto	u4841
	goto	u4840
u4841:
	goto	l7818
u4840:
	line	112
	
l7812:	
;BT02week11ttvxl.c: 112: read_adc_AN1();
	fcall	_read_adc_AN1
	line	113
;BT02week11ttvxl.c: 113: lcd_gotoxy(0,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_lcd_gotoxy)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	114
	
l7814:	
;BT02week11ttvxl.c: 114: printf("Nhiet Do Room 2");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_printf
	line	115
	
l7816:	
;BT02week11ttvxl.c: 115: lcd_gotoxy(0,1);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	116
;BT02week11ttvxl.c: 116: printf("Gia tri: %3.1f",res2);
	bsf	status, 5	;RP0=1, select bank1
	movf	(_res2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_res2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_res2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf+2)
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_printf
	line	118
	
l7818:	
;BT02week11ttvxl.c: 117: }
;BT02week11ttvxl.c: 118: if (S1_state == 3){
	bcf	status, 5	;RP0=0, select bank0
	movf	(_S1_state),w
	xorlw	03h
	skipz
	goto	u4851
	goto	u4850
u4851:
	goto	l7826
u4850:
	line	119
	
l7820:	
;BT02week11ttvxl.c: 119: read_adc_AN2();
	fcall	_read_adc_AN2
	line	120
;BT02week11ttvxl.c: 120: lcd_gotoxy(0,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_lcd_gotoxy)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	121
	
l7822:	
;BT02week11ttvxl.c: 121: printf("Nhiet Do Room 3");
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_printf
	line	122
	
l7824:	
;BT02week11ttvxl.c: 122: lcd_gotoxy(0,1);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	123
;BT02week11ttvxl.c: 123: printf("Gia tri: %3.1f",res3);
	bsf	status, 5	;RP0=1, select bank1
	movf	(_res3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_res3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_res3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf+2)
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_printf
	line	125
	
l7826:	
;BT02week11ttvxl.c: 124: }
;BT02week11ttvxl.c: 125: if (S1_state == 4){
	bcf	status, 5	;RP0=0, select bank0
	movf	(_S1_state),w
	xorlw	04h
	skipz
	goto	u4861
	goto	u4860
u4861:
	goto	l7834
u4860:
	line	126
	
l7828:	
;BT02week11ttvxl.c: 126: read_adc_AN3();
	fcall	_read_adc_AN3
	line	127
;BT02week11ttvxl.c: 127: lcd_gotoxy(0,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_lcd_gotoxy)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	128
	
l7830:	
;BT02week11ttvxl.c: 128: printf("Nhiet Do Room 4");
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_printf
	line	129
	
l7832:	
;BT02week11ttvxl.c: 129: lcd_gotoxy(0,1);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	130
;BT02week11ttvxl.c: 130: printf("Gia tri: %3.1f",res4);
	bsf	status, 5	;RP0=1, select bank1
	movf	(_res4)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_res4+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_res4+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf+2)
	movlw	((STR_10-__stringbase))&0ffh
	fcall	_printf
	line	132
	
l7834:	
;BT02week11ttvxl.c: 131: }
;BT02week11ttvxl.c: 132: if (S1_state == 5){
	bcf	status, 5	;RP0=0, select bank0
	movf	(_S1_state),w
	xorlw	05h
	skipz
	goto	u4871
	goto	u4870
u4871:
	goto	l7802
u4870:
	line	133
	
l7836:	
;BT02week11ttvxl.c: 133: read_adc_AN5();
	fcall	_read_adc_AN5
	line	134
;BT02week11ttvxl.c: 134: lcd_gotoxy(0,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_lcd_gotoxy)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	135
	
l7838:	
;BT02week11ttvxl.c: 135: printf("Nhiet Do Room 5");
	movlw	((STR_11-__stringbase))&0ffh
	fcall	_printf
	line	136
	
l7840:	
;BT02week11ttvxl.c: 136: lcd_gotoxy(0,1);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	137
;BT02week11ttvxl.c: 137: printf("Gia tri: %3.1f",res5);
	bsf	status, 5	;RP0=1, select bank1
	movf	(_res5)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_res5+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_res5+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf+2)
	movlw	((STR_12-__stringbase))&0ffh
	fcall	_printf
	goto	l7802
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	140
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_printf
psect	text690,local,class=CODE,delta=2
global __ptext690
__ptext690:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_12(15), STR_11(16), STR_10(15), STR_9(16), 
;;		 -> STR_8(15), STR_7(16), STR_6(15), STR_5(16), 
;;		 -> STR_4(15), STR_3(16), STR_2(17), STR_1(8), 
;; Auto vars:     Size  Location     Type
;;  f               1   14[BANK1 ] PTR const unsigned char 
;;		 -> STR_12(15), STR_11(16), STR_10(15), STR_9(16), 
;;		 -> STR_8(15), STR_7(16), STR_6(15), STR_5(16), 
;;		 -> STR_4(15), STR_3(16), STR_2(17), STR_1(8), 
;;  _val            4    8[BANK1 ] struct .
;;  fval            3   19[BANK1 ] struct .
;;  integ           3    5[BANK1 ] struct .
;;  ival            3    0        struct .
;;  prec            2   22[BANK1 ] int 
;;  exp             2   17[BANK1 ] int 
;;  width           2   15[BANK1 ] int 
;;  flag            2   12[BANK1 ] unsigned short 
;;  c               1   24[BANK1 ] char 
;;  ap              1    4[BANK1 ] PTR void [1]
;;		 -> ?_printf(2), 
;;  d               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   64[BANK0 ] int 
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
;; Hardware stack levels required when called:    6
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
psect	text690
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 1
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	537
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@f)^080h
	
l7520:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)^080h
	line	540
	goto	l7746
	line	542
	
l7522:	
	movf	(printf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u4391
	goto	u4390
u4391:
	goto	l7526
u4390:
	line	545
	
l7524:	
	movf	(printf@c)^080h,w
	fcall	_putch
	line	546
	goto	l7746
	line	550
	
l7526:	
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	552
	clrf	(printf@flag)^080h
	clrf	(printf@flag+1)^080h
	line	601
	
l7528:	
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u4401
	goto	u4400
u4401:
	goto	l7538
u4400:
	line	602
	
l7530:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	604
	
l7532:	
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
	
l7534:	
	incf	(printf@f)^080h,f
	line	605
	
l7536:	
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u4411
	goto	u4410
u4411:
	goto	l7532
u4410:
	line	614
	
l7538:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u4421
	goto	u4420
u4421:
	goto	l7552
u4420:
	line	615
	
l7540:	
	bsf	(printf@flag)^080h+(14/8),(14)&7
	line	616
	
l7542:	
	incf	(printf@f)^080h,f
	line	624
	
l7544:	
	clrf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	line	625
	goto	l7550
	line	626
	
l7546:	
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
	
l7548:	
	incf	(printf@f)^080h,f
	line	625
	
l7550:	
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u4431
	goto	u4430
u4431:
	goto	l7546
u4430:
	goto	l7558
	line	629
	
l7552:	
	clrf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	line	631
	
l7554:	
	bsf	(printf@flag)^080h+(12/8),(12)&7
	goto	l7558
	line	665
	
l2296:	
	line	666
	bsf	(printf@flag)^080h+(10/8),(10)&7
	line	667
	goto	l7560
	line	638
	
l7558:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@f)^080h,w
	incf	(printf@f)^080h,f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)^080h
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
	goto	l2357
	xorlw	102^0	; case 102
	skipnz
	goto	l2296
	goto	l7746
	opt asmopt_on

	line	828
	
l7560:	
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
	goto	u4441
	goto	u4440
u4441:
	goto	l7702
u4440:
	line	830
	
l7562:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(printf@flag+1)^080h,(12)&7
	goto	u4451
	goto	u4450
u4451:
	goto	l7566
u4450:
	line	832
	
l7564:	
	movlw	06h
	movwf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	line	833
	
l7566:	
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
	
l7568:	
	movlw	(03h)
	addwf	(printf@ap)^080h,f
	line	834
	
l7570:	
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
	goto	u4461
	goto	u4460
u4461:
	goto	l7576
u4460:
	line	835
	
l7572:	
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
	
l7574:	
	movlw	03h
	iorwf	(printf@flag)^080h,f
	line	838
	
l7576:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(printf@exp)^080h
	clrf	(printf@exp+1)^080h
	line	839
	
l7578:	
	movf	(printf@fval+2)^080h,w
	iorwf	(printf@fval+1)^080h,w
	iorwf	(printf@fval)^080h,w
	skipnz
	goto	u4471
	goto	u4470
u4471:
	goto	l7608
u4470:
	line	840
	
l7580:	
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
u4485:
	clrc
	rrf	(??_printf+0)+3,f
	rrf	(??_printf+0)+2,f
	rrf	(??_printf+0)+1,f
	rrf	(??_printf+0)+0,f
u4480:
	addlw	-1
	skipz
	goto	u4485
	movf	1+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@exp)^080h
	
l7582:	
	movlw	0FFh
	andwf	(printf@exp)^080h,f
	clrf	(printf@exp+1)^080h
	
l7584:	
	movlw	-126
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	841
	
l7586:	
	movlw	-1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	842
	
l7588:	
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
	
l7590:	
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
	
l7592:	
	btfss	(printf@exp+1)^080h,7
	goto	u4491
	goto	u4490
u4491:
	goto	l7596
u4490:
	line	845
	
l7594:	
	movlw	-1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	849
	
l7596:	
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
	
l7598:	
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
	
l7600:	
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
	goto	u4501
	goto	u4500
u4501:
	goto	l7604
u4500:
	line	852
	
l7602:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	goto	l7608
	line	853
	
l7604:	
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
	goto	u4511
	goto	u4510
u4511:
	goto	l7608
u4510:
	line	854
	
l7606:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(printf@exp)^080h,f
	skipnz
	incf	(printf@exp+1)^080h,f
	line	1115
	
l7608:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u4525
	movlw	low(0Dh)
	subwf	(printf@prec)^080h,w
u4525:

	skipnc
	goto	u4521
	goto	u4520
u4521:
	goto	l7612
u4520:
	line	1116
	
l7610:	
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
	
l7612:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4535
	movlw	low(0Ah)
	subwf	(printf@exp)^080h,w
u4535:

	skipnc
	goto	u4531
	goto	u4530
u4531:
	goto	l7620
u4530:
	
l7614:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@fval+2)^080h,w
	iorwf	(printf@fval+1)^080h,w
	iorwf	(printf@fval)^080h,w
	skipnz
	goto	u4541
	goto	u4540
u4541:
	goto	l7636
u4540:
	
l7616:	
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
	goto	u4551
	goto	u4550
u4551:
	goto	l7636
u4550:
	
l7618:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4565
	movlw	low(02h)
	subwf	(printf@exp)^080h,w
u4565:

	skipc
	goto	u4561
	goto	u4560
u4561:
	goto	l7636
u4560:
	line	1123
	
l7620:	
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
	goto	u4571
	goto	u4570
u4571:
	goto	l7624
u4570:
	line	1124
	
l7622:	
	movlw	-9
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	1125
	goto	l7626
	line	1126
	
l7624:	
	movlw	-8
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	1128
	
l7626:	
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
	
l7630:	
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
	movwf	(_printf$3186+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_printf$3186+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_printf$3186+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_printf$3186)^080h

	
l7632:	
	movf	(_printf$3186+3)^080h,w
	movwf	(printf@_val+3)^080h
	movf	(_printf$3186+2)^080h,w
	movwf	(printf@_val+2)^080h
	movf	(_printf$3186+1)^080h,w
	movwf	(printf@_val+1)^080h
	movf	(_printf$3186)^080h,w
	movwf	(printf@_val)^080h

	line	1132
	
l7634:	
	clrf	(printf@fval)^080h
	clrf	(printf@fval+1)^080h
	clrf	(printf@fval+2)^080h
	line	1133
	goto	l7640
	line	1134
	
l7636:	
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
	
l7638:	
	clrf	(printf@exp)^080h
	clrf	(printf@exp+1)^080h
	line	1139
	
l7640:	
	clrf	(printf@c)^080h
	incf	(printf@c)^080h,f
	line	1140
	
l7646:	
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
	goto	u4585
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val+2)^080h,w
	skipz
	goto	u4585
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val+1)^080h,w
	skipz
	goto	u4585
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val)^080h,w
u4585:
	skipnc
	goto	u4581
	goto	u4580
u4581:
	goto	l7650
u4580:
	goto	l7654
	line	1139
	
l7650:	
	incf	(printf@c)^080h,f
	
l7652:	
	movf	(printf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u4591
	goto	u4590
u4591:
	goto	l7646
u4590:
	line	1145
	
l7654:	
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
	
l7656:	
	movf	(printf@prec+1)^080h,w
	iorwf	(printf@prec)^080h,w
	skipnz
	goto	u4601
	goto	u4600
u4601:
	goto	l7660
u4600:
	line	1151
	
l7658:	
	movlw	-1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1152
	
l7660:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u4611
	goto	u4610
u4611:
	goto	l7668
u4610:
	line	1153
	
l7662:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	goto	l7668
	line	1182
	
l7664:	
	movlw	(020h)
	fcall	_putch
	goto	l7662
	line	1181
	
l7668:	
	movf	(printf@width+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4625
	movlw	low(01h)
	subwf	(printf@width)^080h,w
u4625:

	skipnc
	goto	u4621
	goto	u4620
u4621:
	goto	l7664
u4620:
	line	1189
	
l7670:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u4631
	goto	u4630
u4631:
	goto	l7676
u4630:
	line	1191
	
l7672:	
	movlw	(02Dh)
	fcall	_putch
	goto	l7676
	line	1201
	
l7674:	
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
	
l7676:	
	bsf	status, 5	;RP0=1, select bank1
	decf	(printf@c)^080h,f
	incf	((printf@c)^080h),w
	skipz
	goto	u4641
	goto	u4640
u4641:
	goto	l7674
u4640:
	goto	l7682
	line	1205
	
l7678:	
	movlw	(030h)
	fcall	_putch
	line	1206
	
l7680:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	1204
	
l7682:	
	movf	(printf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4655
	movlw	low(01h)
	subwf	(printf@exp)^080h,w
u4655:

	skipnc
	goto	u4651
	goto	u4650
u4651:
	goto	l7678
u4650:
	line	1208
	
l7684:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4665
	movlw	low(09h)
	subwf	(printf@prec)^080h,w
u4665:

	skipc
	goto	u4661
	goto	u4660
u4661:
	goto	l7688
u4660:
	line	1209
	
l7686:	
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(printf@c)^080h
	goto	l2334
	line	1211
	
l7688:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec)^080h,w
	movwf	(printf@c)^080h
	
l2334:	
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
	goto	u4670
	goto	l2335
u4670:
	line	1218
	
l7690:	
	movlw	(02Eh)
	fcall	_putch
	
l2335:	
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
	goto	l7694
	line	1226
	
l7692:	
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
	
l7694:	
	decf	(printf@c)^080h,f
	incf	((printf@c)^080h),w
	skipz
	goto	u4681
	goto	u4680
u4681:
	goto	l7692
u4680:
	goto	l7700
	line	1231
	
l7696:	
	movlw	(030h)
	fcall	_putch
	line	1232
	
l7698:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@prec)^080h,f
	skipc
	decf	(printf@prec+1)^080h,f
	line	1230
	
l7700:	
	movf	((printf@prec+1)^080h),w
	iorwf	((printf@prec)^080h),w
	skipz
	goto	u4691
	goto	u4690
u4691:
	goto	l7696
u4690:
	goto	l7746
	line	1285
	
l7702:	
	bsf	status, 5	;RP0=1, select bank1
	movf	((printf@prec+1)^080h),w
	iorwf	((printf@prec)^080h),w
	skipz
	goto	u4701
	goto	u4700
u4701:
	goto	l7708
u4700:
	
l7704:	
	movf	(printf@_val+3)^080h,w
	iorwf	(printf@_val+2)^080h,w
	iorwf	(printf@_val+1)^080h,w
	iorwf	(printf@_val)^080h,w
	skipz
	goto	u4711
	goto	u4710
u4711:
	goto	l7708
u4710:
	line	1286
	
l7706:	
	incf	(printf@prec)^080h,f
	skipnz
	incf	(printf@prec+1)^080h,f
	line	1334
	
l7708:	
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
	goto	u4725
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_printf+0)+0,w
u4725:

	skipnc
	goto	u4721
	goto	u4720
u4721:
	goto	l7712
u4720:
	line	1335
	
l7710:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec)^080h,w
	movwf	(printf@c)^080h
	goto	l7716
	line	1336
	
l7712:	
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
	goto	u4735
	movf	0+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@prec)^080h,w
u4735:

	skipnc
	goto	u4731
	goto	u4730
u4731:
	goto	l7716
u4730:
	line	1337
	
l7714:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@c)^080h,w
	movwf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	btfsc	(printf@prec)^080h,7
	decf	(printf@prec+1)^080h,f
	line	1340
	
l7716:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@width+1)^080h,w
	iorwf	(printf@width)^080h,w
	skipnz
	goto	u4741
	goto	u4740
u4741:
	goto	l7722
u4740:
	
l7718:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u4751
	goto	u4750
u4751:
	goto	l7722
u4750:
	line	1341
	
l7720:	
	movlw	-1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1343
	
l7722:	
	btfss	(printf@flag+1)^080h,(14)&7
	goto	u4761
	goto	u4760
u4761:
	goto	l7730
u4760:
	line	1344
	
l7724:	
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
	goto	u4775
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@width)^080h,w
	subwf	(printf@prec)^080h,w
u4775:

	skipnc
	goto	u4771
	goto	u4770
u4771:
	goto	l7728
u4770:
	line	1345
	
l7726:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec)^080h,w
	subwf	(printf@width)^080h,f
	movf	(printf@prec+1)^080h,w
	skipc
	decf	(printf@width+1)^080h,f
	subwf	(printf@width+1)^080h,f
	goto	l7730
	line	1347
	
l7728:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	1376
	
l7730:	
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
	goto	u4785
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@width)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_printf+0)+0,w
u4785:

	skipnc
	goto	u4781
	goto	u4780
u4781:
	goto	l7734
u4780:
	line	1377
	
l7732:	
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
	goto	l7736
	line	1379
	
l7734:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	1423
	
l7736:	
	movf	(printf@width+1)^080h,w
	iorwf	(printf@width)^080h,w
	skipnz
	goto	u4791
	goto	u4790
u4791:
	goto	l7742
u4790:
	line	1425
	
l7738:	
	movlw	(020h)
	fcall	_putch
	line	1426
	
l7740:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	movf	(((printf@width+1)^080h)),w
	iorwf	(((printf@width)^080h)),w
	skipz
	goto	u4801
	goto	u4800
u4801:
	goto	l7738
u4800:
	line	1433
	
l7742:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u4811
	goto	u4810
u4811:
	goto	l7746
u4810:
	line	1434
	
l7744:	
	movlw	(02Dh)
	fcall	_putch
	line	540
	
l7746:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@f)^080h,w
	incf	(printf@f)^080h,f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)^080h
	movf	((printf@c)^080h),f
	skipz
	goto	u4821
	goto	u4820
u4821:
	goto	l7522
u4820:
	line	1533
	
l2357:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_putch
psect	text691,local,class=CODE,delta=2
global __ptext691
__ptext691:

;; *************** function _putch *****************
;; Defined at:
;;		line 142 in file "D:\TTVXL\Project TTVXL\BT02week11ttvxl\BT02week11ttvxl.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    9[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_putc
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text691
	file	"D:\TTVXL\Project TTVXL\BT02week11ttvxl\BT02week11ttvxl.c"
	line	142
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 1
; Regs used in _putch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;putch@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(putch@c)
	line	143
	
l7518:	
;BT02week11ttvxl.c: 143: lcd_putc(c);
	movf	(putch@c),w
	fcall	_lcd_putc
	line	144
	
l1106:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_putc
psect	text692,local,class=CODE,delta=2
global __ptext692
__ptext692:

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 143 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    8[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;;		_lcd_gotoxy
;;		_isprint
;; This function is called by:
;;		_putch
;; This function uses a non-reentrant model
;;
psect	text692
	file	"D:\TTVXL\Library\lcd(16).c"
	line	143
	global	__size_of_lcd_putc
	__size_of_lcd_putc	equ	__end_of_lcd_putc-_lcd_putc
	
_lcd_putc:	
	opt	stack 1
; Regs used in _lcd_putc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_putc@c stored from wreg
	movwf	(lcd_putc@c)
	line	144
	
l7500:	
;lcd(16).c: 144: switch(c){
	goto	l7516
	line	146
	
l7502:	
;lcd(16).c: 146: lcd_put_byte(0, 1);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	147
;lcd(16).c: 147: while(lcd_busy());
	
l7504:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4361
	goto	u4360
u4361:
	goto	l7504
u4360:
	goto	l2231
	line	150
	
l7506:	
;lcd(16).c: 150: lcd_gotoxy(0, 1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	151
;lcd(16).c: 151: break;
	goto	l2231
	line	153
	
l7508:	
;lcd(16).c: 153: if(isprint(c)){
	movf	(lcd_putc@c),w
	fcall	_isprint
	btfss	status,0
	goto	u4371
	goto	u4370
u4371:
	goto	l2231
u4370:
	line	154
	
l7510:	
;lcd(16).c: 154: lcd_put_byte(1, c);
	movf	(lcd_putc@c),w
	movwf	(?_lcd_put_byte)
	movlw	(01h)
	fcall	_lcd_put_byte
	line	155
;lcd(16).c: 155: while(lcd_busy());
	
l7512:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4381
	goto	u4380
u4381:
	goto	l7512
u4380:
	goto	l2231
	line	144
	
l7516:	
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
	goto	l7506
	xorlw	12^10	; case 12
	skipnz
	goto	l7502
	goto	l7508
	opt asmopt_on

	line	159
	
l2231:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	___ftsub
psect	text693,local,class=CODE,delta=2
global __ptext693
__ptext693:

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 17 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   54[BANK0 ] float 
;;  f1              3   57[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   54[BANK0 ] float 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text693
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 2
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l7494:	
	movlw	080h
	xorwf	(___ftsub@f2+2),f
	line	19
	
l7496:	
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
	
l3443:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_scale
psect	text694,local,class=CODE,delta=2
global __ptext694
__ptext694:

;; *************** function _scale *****************
;; Defined at:
;;		line 422 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  scl             1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  scl             1   52[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  3   42[BANK0 ] char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awmod
;;		___awdiv
;;		___ftmul
;;		___bmul
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text694
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	422
	global	__size_of_scale
	__size_of_scale	equ	__end_of_scale-_scale
	
_scale:	
	opt	stack 2
; Regs used in _scale: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;scale@scl stored from wreg
	line	424
	bcf	status, 5	;RP0=0, select bank0
	movwf	(scale@scl)
	
l7454:	
	btfss	(scale@scl),7
	goto	u4311
	goto	u4310
u4311:
	goto	l7476
u4310:
	line	425
	
l7456:	
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	426
	
l7458:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u4321
	goto	u4320
u4321:
	goto	l7466
u4320:
	line	427
	
l7460:	
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
	movwf	(_scale$4157)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$4157+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$4157+2)
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
	movf	(_scale$4157),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$4157+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$4157+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l2274
	line	428
	
l7466:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u4331
	goto	u4330
u4331:
	goto	l7472
u4330:
	line	429
	
l7468:	
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
	goto	l2274
	line	430
	
l7472:	
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
	goto	l2274
	line	432
	
l7476:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u4341
	goto	u4340
u4341:
	goto	l7484
u4340:
	line	433
	
l7478:	
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
	movwf	(_scale$4157)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$4157+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$4157+2)
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
	movf	(_scale$4157),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$4157+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$4157+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l2274
	line	434
	
l7484:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u4351
	goto	u4350
u4351:
	goto	l7490
u4350:
	line	435
	
l7486:	
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
	goto	l2274
	line	436
	
l7490:	
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
	
l2274:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
;; =============== function _scale ends ============

	signat	_scale,4219
	global	_fround
psect	text695,local,class=CODE,delta=2
global __ptext695
__ptext695:

;; *************** function _fround *****************
;; Defined at:
;;		line 406 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  prec            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prec            1   63[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   54[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___lbmod
;;		___bmul
;;		___lbdiv
;;		___ftmul
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text695
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	406
	global	__size_of_fround
	__size_of_fround	equ	__end_of_fround-_fround
	
_fround:	
	opt	stack 2
; Regs used in _fround: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;fround@prec stored from wreg
	line	409
	bcf	status, 5	;RP0=0, select bank0
	movwf	(fround@prec)
	
l7432:	
	movlw	(06Eh)
	subwf	(fround@prec),w
	skipc
	goto	u4291
	goto	u4290
u4291:
	goto	l7442
u4290:
	line	410
	
l7434:	
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
	movwf	(_fround$4155)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$4155+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$4155+2)
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
	movf	(_fround$4155),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$4155+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$4155+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$4156)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$4156+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$4156+2)
	
l7436:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$4156),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$4156+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$4156+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l2267
	line	411
	
l7442:	
	movlw	(0Bh)
	subwf	(fround@prec),w
	skipc
	goto	u4301
	goto	u4300
u4301:
	goto	l7450
u4300:
	line	412
	
l7444:	
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
	movwf	(_fround$4155)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$4155+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$4155+2)
	
l7446:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$4155),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$4155+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$4155+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l2267
	line	413
	
l7450:	
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
	
l2267:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
;; =============== function _fround ends ============

	signat	_fround,4219
	global	_lcd_gotoxy
psect	text696,local,class=CODE,delta=2
global __ptext696
__ptext696:

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 162 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1    6[BANK0 ] unsigned char 
;;  address         1    7[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_main
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text696
	file	"D:\TTVXL\Library\lcd(16).c"
	line	162
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:	
	opt	stack 1
; Regs used in _lcd_gotoxy: [wreg+status,2+status,0+pclath+cstack]
;lcd_gotoxy@col stored from wreg
	line	165
	movwf	(lcd_gotoxy@col)
	
l7420:	
;lcd(16).c: 163: unsigned char address;
;lcd(16).c: 165: if(row!=0)
	movf	(lcd_gotoxy@row),w
	skipz
	goto	u4270
	goto	l7424
u4270:
	line	166
	
l7422:	
;lcd(16).c: 166: address=0x40;
	movlw	(040h)
	movwf	(lcd_gotoxy@address)
	goto	l7426
	line	168
	
l7424:	
;lcd(16).c: 167: else
;lcd(16).c: 168: address=0;
	clrf	(lcd_gotoxy@address)
	line	170
	
l7426:	
;lcd(16).c: 170: address += col;
	movf	(lcd_gotoxy@col),w
	addwf	(lcd_gotoxy@address),f
	line	171
	
l7428:	
;lcd(16).c: 171: lcd_put_byte(0,0x80|address);
	movf	(lcd_gotoxy@address),w
	iorlw	080h
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	172
;lcd(16).c: 172: while(lcd_busy());
	
l7430:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4281
	goto	u4280
u4281:
	goto	l7430
u4280:
	line	173
	
l2239:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
;; =============== function _lcd_gotoxy ends ============

	signat	_lcd_gotoxy,8312
	global	_lcd_init
psect	text697,local,class=CODE,delta=2
global __ptext697
__ptext697:

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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text697
	file	"D:\TTVXL\Library\lcd(16).c"
	line	5
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 4
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l7382:	
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
	
l7384:	
;lcd(16).c: 18: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u4897:
	decfsz	((??_lcd_init+0)+0),f
	goto	u4897
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u4897
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u4897
	nop2
opt asmopt_on

	line	21
	
l7386:	
;lcd(16).c: 21: lcd_put_byte(0,0x30);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	22
	
l7388:	
;lcd(16).c: 22: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u4907:
	decfsz	((??_lcd_init+0)+0),f
	goto	u4907
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u4907
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u4907
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
	
l7390:	
;lcd(16).c: 24: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u4917:
	decfsz	((??_lcd_init+0)+0),f
	goto	u4917
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u4917
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u4917
	nop2
opt asmopt_on

	line	25
	
l7392:	
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
u4927:
	decfsz	((??_lcd_init+0)+0),f
	goto	u4927
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u4927
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u4927
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
u4937:
	decfsz	((??_lcd_init+0)+0),f
	goto	u4937
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u4937
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u4937
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
u4947:
	decfsz	((??_lcd_init+0)+0),f
	goto	u4947
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u4947
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u4947
	nop2
opt asmopt_on

	line	30
;lcd(16).c: 30: while(lcd_busy());
	
l7394:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4201
	goto	u4200
u4201:
	goto	l7394
u4200:
	line	31
	
l7396:	
;lcd(16).c: 31: lcd_put_byte(0,0b00101100 & 0b00111000);
	movlw	(028h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	32
;lcd(16).c: 32: while(lcd_busy());
	
l7398:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4211
	goto	u4210
u4211:
	goto	l7398
u4210:
	line	34
	
l7400:	
;lcd(16).c: 34: lcd_put_byte(0,0b00001011&0b00001101&0b00001110);
	movlw	(08h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	35
;lcd(16).c: 35: while(lcd_busy());
	
l7402:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4221
	goto	u4220
u4221:
	goto	l7402
u4220:
	line	36
	
l7404:	
;lcd(16).c: 36: lcd_put_byte(0,0b00001111&0b00001101&0b00001110);
	movlw	(0Ch)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	37
;lcd(16).c: 37: while(lcd_busy());
	
l7406:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4231
	goto	u4230
u4231:
	goto	l7406
u4230:
	line	39
	
l7408:	
;lcd(16).c: 39: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	40
;lcd(16).c: 40: while(lcd_busy());
	
l7410:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4241
	goto	u4240
u4241:
	goto	l7410
u4240:
	line	41
	
l7412:	
;lcd(16).c: 41: lcd_put_byte(0,0b00000100);
	movlw	(04h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	42
;lcd(16).c: 42: while(lcd_busy());
	
l7414:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4251
	goto	u4250
u4251:
	goto	l7414
u4250:
	line	43
	
l7416:	
;lcd(16).c: 43: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	44
;lcd(16).c: 44: while(lcd_busy());
	
l7418:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4261
	goto	u4260
u4261:
	goto	l7418
u4260:
	line	45
	
l2205:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_read_adc_AN5
psect	text698,local,class=CODE,delta=2
global __ptext698
__ptext698:

;; *************** function _read_adc_AN5 *****************
;; Defined at:
;;		line 58 in file "D:\TTVXL\Project TTVXL\BT02week11ttvxl\BT02week11ttvxl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
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
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text698
	file	"D:\TTVXL\Project TTVXL\BT02week11ttvxl\BT02week11ttvxl.c"
	line	58
	global	__size_of_read_adc_AN5
	__size_of_read_adc_AN5	equ	__end_of_read_adc_AN5-_read_adc_AN5
	
_read_adc_AN5:	
	opt	stack 3
; Regs used in _read_adc_AN5: [wreg+status,2+status,0+pclath+cstack]
	line	59
	
l7370:	
;BT02week11ttvxl.c: 59: CHS3 = 0; CHS2 = 1;CHS1 =0;CHS0 =1;
	bcf	(253/8),(253)&7
	bsf	(252/8),(252)&7
	bcf	(251/8),(251)&7
	bsf	(250/8),(250)&7
	line	60
	
l7372:	
;BT02week11ttvxl.c: 60: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_read_adc_AN5+0)+0+1),f
	movlw	238
movwf	((??_read_adc_AN5+0)+0),f
u4957:
	decfsz	((??_read_adc_AN5+0)+0),f
	goto	u4957
	decfsz	((??_read_adc_AN5+0)+0+1),f
	goto	u4957
	clrwdt
opt asmopt_on

	line	61
	
l7374:	
;BT02week11ttvxl.c: 61: GO_nDONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	62
;BT02week11ttvxl.c: 62: while(GO_nDONE == 1){}
	
l1089:	
	btfsc	(249/8),(249)&7
	goto	u4191
	goto	u4190
u4191:
	goto	l1089
u4190:
	line	63
	
l7376:	
;BT02week11ttvxl.c: 63: adc5 = ADRESH ;
	movf	(30),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_adc5)^080h
	clrf	(_adc5+1)^080h
	line	64
	
l7378:	
;BT02week11ttvxl.c: 64: res5 = (adc5/256.0)*500.0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	movlw	0xfa
	movwf	(?___ftmul+1)
	movlw	0x43
	movwf	(?___ftmul+2)
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x80
	movwf	(?___ftdiv+1)
	movlw	0x43
	movwf	(?___ftdiv+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_adc5+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___awtoft+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_adc5)^080h,w
	bcf	status, 5	;RP0=0, select bank0
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
	movwf	(_res5)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_res5+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_res5+2)^080h
	line	65
	
l7380:	
;BT02week11ttvxl.c: 65: _delay((unsigned long)((150)*(20000000/4000.0)));
	opt asmopt_off
movlw  4
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_read_adc_AN5+0)+0+2),f
movlw	207
movwf	((??_read_adc_AN5+0)+0+1),f
	movlw	3
movwf	((??_read_adc_AN5+0)+0),f
u4967:
	decfsz	((??_read_adc_AN5+0)+0),f
	goto	u4967
	decfsz	((??_read_adc_AN5+0)+0+1),f
	goto	u4967
	decfsz	((??_read_adc_AN5+0)+0+2),f
	goto	u4967
	nop2
opt asmopt_on

	line	66
	
l1092:	
	return
	opt stack 0
GLOBAL	__end_of_read_adc_AN5
	__end_of_read_adc_AN5:
;; =============== function _read_adc_AN5 ends ============

	signat	_read_adc_AN5,88
	global	_read_adc_AN3
psect	text699,local,class=CODE,delta=2
global __ptext699
__ptext699:

;; *************** function _read_adc_AN3 *****************
;; Defined at:
;;		line 48 in file "D:\TTVXL\Project TTVXL\BT02week11ttvxl\BT02week11ttvxl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
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
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text699
	file	"D:\TTVXL\Project TTVXL\BT02week11ttvxl\BT02week11ttvxl.c"
	line	48
	global	__size_of_read_adc_AN3
	__size_of_read_adc_AN3	equ	__end_of_read_adc_AN3-_read_adc_AN3
	
_read_adc_AN3:	
	opt	stack 3
; Regs used in _read_adc_AN3: [wreg+status,2+status,0+pclath+cstack]
	line	49
	
l7358:	
;BT02week11ttvxl.c: 49: CHS3 = 0; CHS2 = 0;CHS1 =1;CHS0 =1;
	bcf	(253/8),(253)&7
	bcf	(252/8),(252)&7
	bsf	(251/8),(251)&7
	bsf	(250/8),(250)&7
	line	50
	
l7360:	
;BT02week11ttvxl.c: 50: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_read_adc_AN3+0)+0+1),f
	movlw	238
movwf	((??_read_adc_AN3+0)+0),f
u4977:
	decfsz	((??_read_adc_AN3+0)+0),f
	goto	u4977
	decfsz	((??_read_adc_AN3+0)+0+1),f
	goto	u4977
	clrwdt
opt asmopt_on

	line	51
	
l7362:	
;BT02week11ttvxl.c: 51: GO_nDONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	52
;BT02week11ttvxl.c: 52: while(GO_nDONE == 1){}
	
l1083:	
	btfsc	(249/8),(249)&7
	goto	u4181
	goto	u4180
u4181:
	goto	l1083
u4180:
	line	53
	
l7364:	
;BT02week11ttvxl.c: 53: adc4 = ADRESH ;
	movf	(30),w	;volatile
	movwf	(_adc4)
	clrf	(_adc4+1)
	line	54
	
l7366:	
;BT02week11ttvxl.c: 54: res4 = (adc4/256.0)*500.0;
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0xfa
	movwf	(?___ftmul+1)
	movlw	0x43
	movwf	(?___ftmul+2)
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x80
	movwf	(?___ftdiv+1)
	movlw	0x43
	movwf	(?___ftdiv+2)
	movf	(_adc4+1),w
	movwf	(?___awtoft+1)
	movf	(_adc4),w
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
	movwf	(_res4)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_res4+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_res4+2)^080h
	line	55
	
l7368:	
;BT02week11ttvxl.c: 55: _delay((unsigned long)((150)*(20000000/4000.0)));
	opt asmopt_off
movlw  4
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_read_adc_AN3+0)+0+2),f
movlw	207
movwf	((??_read_adc_AN3+0)+0+1),f
	movlw	3
movwf	((??_read_adc_AN3+0)+0),f
u4987:
	decfsz	((??_read_adc_AN3+0)+0),f
	goto	u4987
	decfsz	((??_read_adc_AN3+0)+0+1),f
	goto	u4987
	decfsz	((??_read_adc_AN3+0)+0+2),f
	goto	u4987
	nop2
opt asmopt_on

	line	56
	
l1086:	
	return
	opt stack 0
GLOBAL	__end_of_read_adc_AN3
	__end_of_read_adc_AN3:
;; =============== function _read_adc_AN3 ends ============

	signat	_read_adc_AN3,88
	global	_read_adc_AN2
psect	text700,local,class=CODE,delta=2
global __ptext700
__ptext700:

;; *************** function _read_adc_AN2 *****************
;; Defined at:
;;		line 38 in file "D:\TTVXL\Project TTVXL\BT02week11ttvxl\BT02week11ttvxl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
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
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text700
	file	"D:\TTVXL\Project TTVXL\BT02week11ttvxl\BT02week11ttvxl.c"
	line	38
	global	__size_of_read_adc_AN2
	__size_of_read_adc_AN2	equ	__end_of_read_adc_AN2-_read_adc_AN2
	
_read_adc_AN2:	
	opt	stack 3
; Regs used in _read_adc_AN2: [wreg+status,2+status,0+pclath+cstack]
	line	39
	
l7346:	
;BT02week11ttvxl.c: 39: CHS3 = 0; CHS2 = 0;CHS1 =1;CHS0 =0;
	bcf	(253/8),(253)&7
	bcf	(252/8),(252)&7
	bsf	(251/8),(251)&7
	bcf	(250/8),(250)&7
	line	40
	
l7348:	
;BT02week11ttvxl.c: 40: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_read_adc_AN2+0)+0+1),f
	movlw	238
movwf	((??_read_adc_AN2+0)+0),f
u4997:
	decfsz	((??_read_adc_AN2+0)+0),f
	goto	u4997
	decfsz	((??_read_adc_AN2+0)+0+1),f
	goto	u4997
	clrwdt
opt asmopt_on

	line	41
	
l7350:	
;BT02week11ttvxl.c: 41: GO_nDONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	42
;BT02week11ttvxl.c: 42: while(GO_nDONE == 1){}
	
l1077:	
	btfsc	(249/8),(249)&7
	goto	u4171
	goto	u4170
u4171:
	goto	l1077
u4170:
	line	43
	
l7352:	
;BT02week11ttvxl.c: 43: adc3 = ADRESH ;
	movf	(30),w	;volatile
	movwf	(_adc3)
	clrf	(_adc3+1)
	line	44
	
l7354:	
;BT02week11ttvxl.c: 44: res3 = (adc3/256.0)*500.0;
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0xfa
	movwf	(?___ftmul+1)
	movlw	0x43
	movwf	(?___ftmul+2)
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x80
	movwf	(?___ftdiv+1)
	movlw	0x43
	movwf	(?___ftdiv+2)
	movf	(_adc3+1),w
	movwf	(?___awtoft+1)
	movf	(_adc3),w
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
	movwf	(_res3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_res3+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_res3+2)^080h
	line	45
	
l7356:	
;BT02week11ttvxl.c: 45: _delay((unsigned long)((150)*(20000000/4000.0)));
	opt asmopt_off
movlw  4
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_read_adc_AN2+0)+0+2),f
movlw	207
movwf	((??_read_adc_AN2+0)+0+1),f
	movlw	3
movwf	((??_read_adc_AN2+0)+0),f
u5007:
	decfsz	((??_read_adc_AN2+0)+0),f
	goto	u5007
	decfsz	((??_read_adc_AN2+0)+0+1),f
	goto	u5007
	decfsz	((??_read_adc_AN2+0)+0+2),f
	goto	u5007
	nop2
opt asmopt_on

	line	46
	
l1080:	
	return
	opt stack 0
GLOBAL	__end_of_read_adc_AN2
	__end_of_read_adc_AN2:
;; =============== function _read_adc_AN2 ends ============

	signat	_read_adc_AN2,88
	global	_read_adc_AN1
psect	text701,local,class=CODE,delta=2
global __ptext701
__ptext701:

;; *************** function _read_adc_AN1 *****************
;; Defined at:
;;		line 28 in file "D:\TTVXL\Project TTVXL\BT02week11ttvxl\BT02week11ttvxl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
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
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text701
	file	"D:\TTVXL\Project TTVXL\BT02week11ttvxl\BT02week11ttvxl.c"
	line	28
	global	__size_of_read_adc_AN1
	__size_of_read_adc_AN1	equ	__end_of_read_adc_AN1-_read_adc_AN1
	
_read_adc_AN1:	
	opt	stack 3
; Regs used in _read_adc_AN1: [wreg+status,2+status,0+pclath+cstack]
	line	29
	
l7334:	
;BT02week11ttvxl.c: 29: CHS3 = 0; CHS2 = 0;CHS1 =0;CHS0 =1;
	bcf	(253/8),(253)&7
	bcf	(252/8),(252)&7
	bcf	(251/8),(251)&7
	bsf	(250/8),(250)&7
	line	30
	
l7336:	
;BT02week11ttvxl.c: 30: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_read_adc_AN1+0)+0+1),f
	movlw	238
movwf	((??_read_adc_AN1+0)+0),f
u5017:
	decfsz	((??_read_adc_AN1+0)+0),f
	goto	u5017
	decfsz	((??_read_adc_AN1+0)+0+1),f
	goto	u5017
	clrwdt
opt asmopt_on

	line	31
	
l7338:	
;BT02week11ttvxl.c: 31: GO_nDONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	32
;BT02week11ttvxl.c: 32: while(GO_nDONE == 1){}
	
l1071:	
	btfsc	(249/8),(249)&7
	goto	u4161
	goto	u4160
u4161:
	goto	l1071
u4160:
	line	33
	
l7340:	
;BT02week11ttvxl.c: 33: adc2 = ADRESH;
	movf	(30),w	;volatile
	movwf	(_adc2)
	clrf	(_adc2+1)
	line	34
	
l7342:	
;BT02week11ttvxl.c: 34: res2 = (adc2/256.0)*500.0;
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0xfa
	movwf	(?___ftmul+1)
	movlw	0x43
	movwf	(?___ftmul+2)
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x80
	movwf	(?___ftdiv+1)
	movlw	0x43
	movwf	(?___ftdiv+2)
	movf	(_adc2+1),w
	movwf	(?___awtoft+1)
	movf	(_adc2),w
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
	movwf	(_res2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_res2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_res2+2)^080h
	line	35
	
l7344:	
;BT02week11ttvxl.c: 35: _delay((unsigned long)((150)*(20000000/4000.0)));
	opt asmopt_off
movlw  4
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_read_adc_AN1+0)+0+2),f
movlw	207
movwf	((??_read_adc_AN1+0)+0+1),f
	movlw	3
movwf	((??_read_adc_AN1+0)+0),f
u5027:
	decfsz	((??_read_adc_AN1+0)+0),f
	goto	u5027
	decfsz	((??_read_adc_AN1+0)+0+1),f
	goto	u5027
	decfsz	((??_read_adc_AN1+0)+0+2),f
	goto	u5027
	nop2
opt asmopt_on

	line	36
	
l1074:	
	return
	opt stack 0
GLOBAL	__end_of_read_adc_AN1
	__end_of_read_adc_AN1:
;; =============== function _read_adc_AN1 ends ============

	signat	_read_adc_AN1,88
	global	_read_adc_AN0
psect	text702,local,class=CODE,delta=2
global __ptext702
__ptext702:

;; *************** function _read_adc_AN0 *****************
;; Defined at:
;;		line 18 in file "D:\TTVXL\Project TTVXL\BT02week11ttvxl\BT02week11ttvxl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
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
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text702
	file	"D:\TTVXL\Project TTVXL\BT02week11ttvxl\BT02week11ttvxl.c"
	line	18
	global	__size_of_read_adc_AN0
	__size_of_read_adc_AN0	equ	__end_of_read_adc_AN0-_read_adc_AN0
	
_read_adc_AN0:	
	opt	stack 3
; Regs used in _read_adc_AN0: [wreg+status,2+status,0+pclath+cstack]
	line	19
	
l7322:	
;BT02week11ttvxl.c: 19: CHS3 = 0; CHS2 = 0;CHS1 =0;CHS0 =0;
	bcf	(253/8),(253)&7
	bcf	(252/8),(252)&7
	bcf	(251/8),(251)&7
	bcf	(250/8),(250)&7
	line	20
	
l7324:	
;BT02week11ttvxl.c: 20: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_read_adc_AN0+0)+0+1),f
	movlw	238
movwf	((??_read_adc_AN0+0)+0),f
u5037:
	decfsz	((??_read_adc_AN0+0)+0),f
	goto	u5037
	decfsz	((??_read_adc_AN0+0)+0+1),f
	goto	u5037
	clrwdt
opt asmopt_on

	line	21
	
l7326:	
;BT02week11ttvxl.c: 21: GO_nDONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	22
;BT02week11ttvxl.c: 22: while(GO_nDONE == 1){}
	
l1065:	
	btfsc	(249/8),(249)&7
	goto	u4151
	goto	u4150
u4151:
	goto	l1065
u4150:
	line	23
	
l7328:	
;BT02week11ttvxl.c: 23: adc1 = ADRESH ;
	movf	(30),w	;volatile
	movwf	(_adc1)
	clrf	(_adc1+1)
	line	24
	
l7330:	
;BT02week11ttvxl.c: 24: res1 = (adc1/256.0)*500.0;
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0xfa
	movwf	(?___ftmul+1)
	movlw	0x43
	movwf	(?___ftmul+2)
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x80
	movwf	(?___ftdiv+1)
	movlw	0x43
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
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_res1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_res1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_res1+2)^080h
	line	25
	
l7332:	
;BT02week11ttvxl.c: 25: _delay((unsigned long)((150)*(20000000/4000.0)));
	opt asmopt_off
movlw  4
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_read_adc_AN0+0)+0+2),f
movlw	207
movwf	((??_read_adc_AN0+0)+0+1),f
	movlw	3
movwf	((??_read_adc_AN0+0)+0),f
u5047:
	decfsz	((??_read_adc_AN0+0)+0),f
	goto	u5047
	decfsz	((??_read_adc_AN0+0)+0+1),f
	goto	u5047
	decfsz	((??_read_adc_AN0+0)+0+2),f
	goto	u5047
	nop2
opt asmopt_on

	line	26
	
l1068:	
	return
	opt stack 0
GLOBAL	__end_of_read_adc_AN0
	__end_of_read_adc_AN0:
;; =============== function _read_adc_AN0 ends ============

	signat	_read_adc_AN0,88
	global	___lltoft
psect	text703,local,class=CODE,delta=2
global __ptext703
__ptext703:

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 36 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    8[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text703
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 3
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l7312:	
	movlw	(08Eh)
	movwf	(___lltoft@exp)
	line	41
	goto	l7316
	line	42
	
l7314:	
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	line	43
	incf	(___lltoft@exp),f
	line	41
	
l7316:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u4141
	goto	u4140
u4141:
	goto	l7314
u4140:
	line	45
	
l7318:	
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
	
l3600:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___awtoft
psect	text704,local,class=CODE,delta=2
global __ptext704
__ptext704:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_read_adc_AN0
;;		_read_adc_AN1
;;		_read_adc_AN2
;;		_read_adc_AN3
;;		_read_adc_AN5
;; This function uses a non-reentrant model
;;
psect	text704
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 3
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l7300:	
	clrf	(___awtoft@sign)
	line	37
	
l7302:	
	btfss	(___awtoft@c+1),7
	goto	u4131
	goto	u4130
u4131:
	goto	l7308
u4130:
	line	38
	
l7304:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l7306:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l7308:	
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
	
l3497:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text705,local,class=CODE,delta=2
global __ptext705
__ptext705:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   27[BANK0 ] float 
;;  f2              3   30[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   37[BANK0 ] unsigned um
;;  sign            1   41[BANK0 ] unsigned char 
;;  cntr            1   40[BANK0 ] unsigned char 
;;  exp             1   36[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   27[BANK0 ] float 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_read_adc_AN0
;;		_read_adc_AN1
;;		_read_adc_AN2
;;		_read_adc_AN3
;;		_read_adc_AN5
;;		_fround
;;		_scale
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text705
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 3
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l7244:	
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
	goto	u4051
	goto	u4050
u4051:
	goto	l7250
u4050:
	line	57
	
l7246:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l3459
	line	58
	
l7250:	
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
	goto	u4061
	goto	u4060
u4061:
	goto	l7256
u4060:
	line	59
	
l7252:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l3459
	line	60
	
l7256:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l7258:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l7260:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l7262:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l7264:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l7266:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l7268:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l7270:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l7272:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l7274:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4071
	goto	u4070
u4071:
	goto	l7278
u4070:
	line	72
	
l7276:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u4081
	addwf	(___ftmul@f3_as_product+1),f
u4081:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u4082
	addwf	(___ftmul@f3_as_product+2),f
u4082:

	line	73
	
l7278:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l7280:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l7282:	
	decfsz	(___ftmul@cntr),f
	goto	u4091
	goto	u4090
u4091:
	goto	l7274
u4090:
	line	76
	
l7284:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l7286:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4101
	goto	u4100
u4101:
	goto	l7290
u4100:
	line	79
	
l7288:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u4111
	addwf	(___ftmul@f3_as_product+1),f
u4111:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u4112
	addwf	(___ftmul@f3_as_product+2),f
u4112:

	line	80
	
l7290:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l7292:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l7294:	
	decfsz	(___ftmul@cntr),f
	goto	u4121
	goto	u4120
u4121:
	goto	l7286
u4120:
	line	83
	
l7296:	
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
	
l3459:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text706,local,class=CODE,delta=2
global __ptext706
__ptext706:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   12[BANK0 ] float 
;;  f1              3   15[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   22[BANK0 ] float 
;;  sign            1   26[BANK0 ] unsigned char 
;;  exp             1   25[BANK0 ] unsigned char 
;;  cntr            1   21[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   12[BANK0 ] float 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_read_adc_AN0
;;		_read_adc_AN1
;;		_read_adc_AN2
;;		_read_adc_AN3
;;		_read_adc_AN5
;; This function uses a non-reentrant model
;;
psect	text706
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 3
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l7200:	
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
	goto	u4011
	goto	u4010
u4011:
	goto	l7206
u4010:
	line	56
	
l7202:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l3449
	line	57
	
l7206:	
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
	goto	u4021
	goto	u4020
u4021:
	goto	l3450
u4020:
	line	58
	
l7208:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l3449
	
l3450:	
	line	59
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	60
	
l7212:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l7214:	
	movf	0+(((___ftdiv@f1))+2),w
	movwf	(___ftdiv@sign)
	line	62
	
l7216:	
	movf	0+(((___ftdiv@f2))+2),w
	xorwf	(___ftdiv@sign),f
	line	63
	
l7218:	
	movlw	(080h)
	andwf	(___ftdiv@sign),f
	line	64
	
l7220:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	
l7222:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l7224:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	
l7226:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	
l7228:	
	movlw	(018h)
	movwf	(___ftdiv@cntr)
	line	70
	
l7230:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	71
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u4035
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u4035
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u4035:
	skipc
	goto	u4031
	goto	u4030
u4031:
	goto	l7236
u4030:
	line	72
	
l7232:	
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
	
l7234:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	75
	
l7236:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	76
	
l7238:	
	decfsz	(___ftdiv@cntr),f
	goto	u4041
	goto	u4040
u4041:
	goto	l7230
u4040:
	line	77
	
l7240:	
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
	
l3449:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text707,local,class=CODE,delta=2
global __ptext707
__ptext707:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   42[BANK0 ] float 
;;  f2              3   45[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   53[BANK0 ] unsigned char 
;;  exp2            1   52[BANK0 ] unsigned char 
;;  sign            1   51[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   42[BANK0 ] float 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_printf
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text707
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 2
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l7122:	
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
	
l7124:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u3810
	goto	l7130
u3810:
	
l7126:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3821
	goto	u3820
u3821:
	goto	l7134
u3820:
	
l7128:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3831
	goto	u3830
u3831:
	goto	l7134
u3830:
	line	93
	
l7130:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l3407
	line	94
	
l7134:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u3840
	goto	l3410
u3840:
	
l7136:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3851
	goto	u3850
u3851:
	goto	l7140
u3850:
	
l7138:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3861
	goto	u3860
u3861:
	goto	l7140
u3860:
	
l3410:	
	line	95
	goto	l3407
	line	96
	
l7140:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
l7142:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u3871
	goto	u3870
u3871:
	goto	l3411
u3870:
	line	98
	
l7144:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l3411:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3881
	goto	u3880
u3881:
	goto	l3412
u3880:
	line	100
	
l7146:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l3412:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l7148:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l7150:	
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
	goto	u3891
	goto	u3890
u3891:
	goto	l7162
u3890:
	line	110
	
l7152:	
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
l7154:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3901
	goto	u3900
u3901:
	goto	l7160
u3900:
	
l7156:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3911
	goto	u3910
u3911:
	goto	l7152
u3910:
	goto	l7160
	line	114
	
l7158:	
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
l7160:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3921
	goto	u3920
u3921:
	goto	l7158
u3920:
	goto	l3421
	line	117
	
l7162:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3931
	goto	u3930
u3931:
	goto	l3421
u3930:
	line	121
	
l7164:	
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
l7166:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3941
	goto	u3940
u3941:
	goto	l7172
u3940:
	
l7168:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3951
	goto	u3950
u3951:
	goto	l7164
u3950:
	goto	l7172
	line	125
	
l7170:	
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
l7172:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3961
	goto	u3960
u3961:
	goto	l7170
u3960:
	line	129
	
l3421:	
	btfss	(___ftadd@sign),(7)&7
	goto	u3971
	goto	u3970
u3971:
	goto	l7178
u3970:
	line	131
	
l7174:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
l7176:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
l7178:	
	btfss	(___ftadd@sign),(6)&7
	goto	u3981
	goto	u3980
u3981:
	goto	l7184
u3980:
	line	136
	
l7180:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
l7182:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
l7184:	
	clrf	(___ftadd@sign)
	line	140
	
l7186:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u3991
	addwf	(___ftadd@f2+1),f
u3991:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u3992
	addwf	(___ftadd@f2+2),f
u3992:

	line	141
	
l7188:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4001
	goto	u4000
u4001:
	goto	l7196
u4000:
	line	142
	
l7190:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
l7192:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
l7194:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l7196:	
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
	
l3407:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_lcd_busy
psect	text708,local,class=CODE,delta=2
global __ptext708
__ptext708:

;; *************** function _lcd_busy *****************
;; Defined at:
;;		line 47 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  busy            1    1[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;;		_lcd_putc
;;		_lcd_gotoxy
;; This function uses a non-reentrant model
;;
psect	text708
	file	"D:\TTVXL\Library\lcd(16).c"
	line	47
	global	__size_of_lcd_busy
	__size_of_lcd_busy	equ	__end_of_lcd_busy-_lcd_busy
	
_lcd_busy:	
	opt	stack 1
; Regs used in _lcd_busy: [wreg]
	line	50
	
l7108:	
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
	
l7110:	
;lcd(16).c: 57: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u5057:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5057
opt asmopt_on

	line	58
	
l7112:	
;lcd(16).c: 58: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	59
;lcd(16).c: 59: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u5067:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5067
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
	
l7114:	
;lcd(16).c: 63: RD3 = 0;
	bcf	(67/8),(67)&7
	line	64
;lcd(16).c: 64: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u5077:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5077
opt asmopt_on

	line	65
	
l7116:	
;lcd(16).c: 65: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	66
;lcd(16).c: 66: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u5087:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5087
opt asmopt_on

	line	67
	
l7118:	
;lcd(16).c: 67: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	70
;lcd(16).c: 70: return busy;
	movf	(lcd_busy@busy),w
	line	71
	
l2208:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_busy
	__end_of_lcd_busy:
;; =============== function _lcd_busy ends ============

	signat	_lcd_busy,89
	global	_lcd_put_byte
psect	text709,local,class=CODE,delta=2
global __ptext709
__ptext709:

;; *************** function _lcd_put_byte *****************
;; Defined at:
;;		line 106 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  rs              1    wreg     unsigned char 
;;  b               1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rs              1    3[BANK0 ] unsigned char 
;;  temp            1    4[BANK0 ] struct _BYTE_VAL
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;;		_lcd_putc
;;		_lcd_gotoxy
;; This function uses a non-reentrant model
;;
psect	text709
	file	"D:\TTVXL\Library\lcd(16).c"
	line	106
	global	__size_of_lcd_put_byte
	__size_of_lcd_put_byte	equ	__end_of_lcd_put_byte-_lcd_put_byte
	
_lcd_put_byte:	
	opt	stack 1
; Regs used in _lcd_put_byte: [wreg+status,2+status,0]
;lcd_put_byte@rs stored from wreg
	line	109
	movwf	(lcd_put_byte@rs)
	
l7072:	
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
	
l7074:	
;lcd(16).c: 115: if(rs) RD1 = 1;
	movf	(lcd_put_byte@rs),w
	skipz
	goto	u3640
	goto	l7078
u3640:
	
l7076:	
	bsf	(65/8),(65)&7
	line	117
	
l7078:	
;lcd(16).c: 117: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5097:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5097
opt asmopt_on

	line	118
	
l7080:	
;lcd(16).c: 118: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	119
;lcd(16).c: 119: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5107:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5107
opt asmopt_on

	line	120
	
l7082:	
;lcd(16).c: 120: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	122
;lcd(16).c: 122: temp.Val = b;
	movf	(lcd_put_byte@b),w
	movwf	(lcd_put_byte@temp)
	line	125
	
l7084:	
;lcd(16).c: 125: RD4 = temp.bits.b4;
	swapf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u3651
	goto	u3650
	
u3651:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u3664
u3650:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u3664:
	line	126
	
l7086:	
;lcd(16).c: 126: RD5 = temp.bits.b5;
	swapf	(lcd_put_byte@temp),w
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
	bsf	(69/8),(69)&7
	goto	u3684
u3670:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u3684:
	line	127
	
l7088:	
;lcd(16).c: 127: RD6 = temp.bits.b6;
	swapf	(lcd_put_byte@temp),w
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
	bsf	(70/8),(70)&7
	goto	u3704
u3690:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u3704:
	line	128
	
l7090:	
;lcd(16).c: 128: RD7 = temp.bits.b7;
	rlf	(lcd_put_byte@temp),w
	rlf	(lcd_put_byte@temp),w
	andlw	1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u3711
	goto	u3710
	
u3711:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u3724
u3710:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u3724:
	line	129
;lcd(16).c: 129: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5117:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5117
opt asmopt_on

	line	130
	
l7092:	
;lcd(16).c: 130: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	131
;lcd(16).c: 131: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5127:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5127
opt asmopt_on

	line	132
	
l7094:	
;lcd(16).c: 132: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	134
	
l7096:	
;lcd(16).c: 134: RD4 = temp.bits.b0;
	movf	(lcd_put_byte@temp),w
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
	line	135
	
l7098:	
;lcd(16).c: 135: RD5 = temp.bits.b1;
	rrf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
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
	line	136
	
l7100:	
;lcd(16).c: 136: RD6 = temp.bits.b2;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
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
	line	137
	
l7102:	
;lcd(16).c: 137: RD7 = temp.bits.b3;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
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
	line	138
;lcd(16).c: 138: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5137:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5137
opt asmopt_on

	line	139
	
l7104:	
;lcd(16).c: 139: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	140
;lcd(16).c: 140: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5147:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5147
opt asmopt_on

	line	141
	
l7106:	
;lcd(16).c: 141: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	142
	
l2216:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_put_byte
	__end_of_lcd_put_byte:
;; =============== function _lcd_put_byte ends ============

	signat	_lcd_put_byte,8312
	global	___awmod
psect	text710,local,class=CODE,delta=2
global __ptext710
__ptext710:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text710
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 3
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l6986:	
	clrf	(___awmod@sign)
	line	9
	
l6988:	
	btfss	(___awmod@dividend+1),7
	goto	u3401
	goto	u3400
u3401:
	goto	l6994
u3400:
	line	10
	
l6990:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l6992:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l6994:	
	btfss	(___awmod@divisor+1),7
	goto	u3411
	goto	u3410
u3411:
	goto	l6998
u3410:
	line	14
	
l6996:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l6998:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3421
	goto	u3420
u3421:
	goto	l7014
u3420:
	line	16
	
l7000:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l7004
	line	18
	
l7002:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l7004:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3431
	goto	u3430
u3431:
	goto	l7002
u3430:
	line	22
	
l7006:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3445
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3445:
	skipc
	goto	u3441
	goto	u3440
u3441:
	goto	l7010
u3440:
	line	23
	
l7008:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l7010:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l7012:	
	decfsz	(___awmod@counter),f
	goto	u3451
	goto	u3450
u3451:
	goto	l7006
u3450:
	line	27
	
l7014:	
	movf	(___awmod@sign),w
	skipz
	goto	u3460
	goto	l7018
u3460:
	line	28
	
l7016:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l7018:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l3578:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___lldiv
psect	text711,local,class=CODE,delta=2
global __ptext711
__ptext711:

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK0 ] unsigned long 
;;  dividend        4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    8[BANK0 ] unsigned long 
;;  counter         1   12[BANK0 ] unsigned char 
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
;;      Locals:         0       5       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text711
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 4
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l6960:	
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	10
	
l6962:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u3361
	goto	u3360
u3361:
	goto	l6982
u3360:
	line	11
	
l6964:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	12
	goto	l6968
	line	13
	
l6966:	
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	14
	incf	(___lldiv@counter),f
	line	12
	
l6968:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u3371
	goto	u3370
u3371:
	goto	l6966
u3370:
	line	17
	
l6970:	
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	18
	
l6972:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u3385
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u3385
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u3385
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u3385:
	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l6978
u3380:
	line	19
	
l6974:	
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
	
l6976:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	22
	
l6978:	
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	23
	
l6980:	
	decfsz	(___lldiv@counter),f
	goto	u3391
	goto	u3390
u3391:
	goto	l6970
u3390:
	line	25
	
l6982:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	26
	
l3539:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___ftge
psect	text712,local,class=CODE,delta=2
global __ptext712
__ptext712:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[BANK0 ] float 
;;  ff2             3    3[BANK0 ] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text712
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 4
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l6940:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u3331
	goto	u3330
u3331:
	goto	l6944
u3330:
	line	7
	
l6942:	
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
	
l6944:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u3341
	goto	u3340
u3341:
	goto	l6948
u3340:
	line	9
	
l6946:	
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
	
l6948:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l6950:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l6952:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u3355
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u3355
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u3355:
	skipnc
	goto	u3351
	goto	u3350
u3351:
	goto	l6956
u3350:
	
l6954:	
	clrc
	
	goto	l3529
	
l6956:	
	setc
	
	line	13
	
l3529:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text713,local,class=CODE,delta=2
global __ptext713
__ptext713:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text713
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 4
; Regs used in ___ftneg: [wreg]
	line	17
	
l6932:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u3321
	goto	u3320
u3321:
	goto	l6936
u3320:
	line	18
	
l6934:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	line	19
	
l6936:	
	line	20
	
l3524:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___llmod
psect	text714,local,class=CODE,delta=2
global __ptext714
__ptext714:

;; *************** function ___llmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4   13[BANK0 ] unsigned long 
;;  dividend        4   17[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1   21[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   13[BANK0 ] unsigned long 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text714
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 4
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l6912:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u3281
	goto	u3280
u3281:
	goto	l6928
u3280:
	line	9
	
l6914:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	10
	goto	l6918
	line	11
	
l6916:	
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	line	12
	incf	(___llmod@counter),f
	line	10
	
l6918:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u3291
	goto	u3290
u3291:
	goto	l6916
u3290:
	line	15
	
l6920:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u3305
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u3305
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u3305
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u3305:
	skipc
	goto	u3301
	goto	u3300
u3301:
	goto	l6924
u3300:
	line	16
	
l6922:	
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
	
l6924:	
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	line	18
	
l6926:	
	decfsz	(___llmod@counter),f
	goto	u3311
	goto	u3310
u3311:
	goto	l6920
u3310:
	line	20
	
l6928:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	line	21
	
l3520:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	___awdiv
psect	text715,local,class=CODE,delta=2
global __ptext715
__ptext715:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[BANK0 ] int 
;;  dividend        2    8[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   12[BANK0 ] int 
;;  sign            1   11[BANK0 ] unsigned char 
;;  counter         1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[BANK0 ] int 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_scale
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text715
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 3
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l6868:	
	clrf	(___awdiv@sign)
	line	10
	
l6870:	
	btfss	(___awdiv@divisor+1),7
	goto	u3211
	goto	u3210
u3211:
	goto	l6876
u3210:
	line	11
	
l6872:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l6874:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l6876:	
	btfss	(___awdiv@dividend+1),7
	goto	u3221
	goto	u3220
u3221:
	goto	l6882
u3220:
	line	15
	
l6878:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l6880:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l6882:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l6884:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3231
	goto	u3230
u3231:
	goto	l6904
u3230:
	line	20
	
l6886:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l6890
	line	22
	
l6888:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l6890:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l6888
u3240:
	line	26
	
l6892:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l6894:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3255
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3255:
	skipc
	goto	u3251
	goto	u3250
u3251:
	goto	l6900
u3250:
	line	28
	
l6896:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l6898:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l6900:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l6902:	
	decfsz	(___awdiv@counter),f
	goto	u3261
	goto	u3260
u3261:
	goto	l6892
u3260:
	line	34
	
l6904:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3270
	goto	l6908
u3270:
	line	35
	
l6906:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l6908:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l3510:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text716,local,class=CODE,delta=2
global __ptext716
__ptext716:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   14[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   22[BANK0 ] unsigned long 
;;  exp1            1   26[BANK0 ] unsigned char 
;;  sign1           1   21[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   14[BANK0 ] long 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text716
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 4
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l6830:	
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
	goto	u3131
	goto	u3130
u3131:
	goto	l6834
u3130:
	line	50
	
l6832:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l3470
	line	51
	
l6834:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u3145:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u3140:
	addlw	-1
	skipz
	goto	u3145
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l6836:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l6838:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l6840:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l6842:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l6844:	
	btfss	(___fttol@exp1),7
	goto	u3151
	goto	u3150
u3151:
	goto	l6854
u3150:
	line	57
	
l6846:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u3161
	goto	u3160
u3161:
	goto	l6850
u3160:
	goto	l6832
	line	60
	
l6850:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l6852:	
	incfsz	(___fttol@exp1),f
	goto	u3171
	goto	u3170
u3171:
	goto	l6850
u3170:
	goto	l6860
	line	63
	
l6854:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3181
	goto	u3180
u3181:
	goto	l3477
u3180:
	goto	l6832
	line	66
	
l6858:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l3477:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u3191
	goto	u3190
u3191:
	goto	l6858
u3190:
	line	70
	
l6860:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3200
	goto	l6864
u3200:
	line	71
	
l6862:	
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
	
l6864:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l3470:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text717,local,class=CODE,delta=2
global __ptext717
__ptext717:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[BANK0 ] unsigned um
;;  exp             1    3[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
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
;; Hardware stack levels required when called:    2
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
psect	text717
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 3
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l6802:	
	movf	(___ftpack@exp),w
	skipz
	goto	u3060
	goto	l6806
u3060:
	
l6804:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u3071
	goto	u3070
u3071:
	goto	l6812
u3070:
	line	65
	
l6806:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l3729
	line	67
	
l6810:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l6812:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l6810
u3080:
	goto	l6816
	line	71
	
l6814:	
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
	
l6816:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3091
	goto	u3090
u3091:
	goto	l6814
u3090:
	goto	l6820
	line	76
	
l6818:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l6820:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u3101
	goto	u3100
u3101:
	goto	l6818
u3100:
	
l3738:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l3739
u3110:
	line	80
	
l6822:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l3739:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l6824:	
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
	
l6826:	
	movf	(___ftpack@sign),w
	skipz
	goto	u3120
	goto	l3740
u3120:
	line	84
	
l6828:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l3740:	
	line	85
	line	86
	
l3729:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lbmod
psect	text718,local,class=CODE,delta=2
global __ptext718
__ptext718:

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    2[BANK0 ] unsigned char 
;;  rem             1    4[BANK0 ] unsigned char 
;;  counter         1    3[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;; This function uses a non-reentrant model
;;
psect	text718
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbmod.c"
	line	5
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
	opt	stack 3
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	line	9
	movwf	(___lbmod@dividend)
	
l6784:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l6786:	
	clrf	(___lbmod@rem)
	line	12
	
l6788:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u3035:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u3035
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l6790:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l6792:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u3041
	goto	u3040
u3041:
	goto	l6796
u3040:
	line	15
	
l6794:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l6796:	
	decfsz	(___lbmod@counter),f
	goto	u3051
	goto	u3050
u3051:
	goto	l6788
u3050:
	line	17
	
l6798:	
	movf	(___lbmod@rem),w
	line	18
	
l3399:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text719,local,class=CODE,delta=2
global __ptext719
__ptext719:

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    6[BANK0 ] unsigned char 
;;  quotient        1    8[BANK0 ] unsigned char 
;;  counter         1    7[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;; This function uses a non-reentrant model
;;
psect	text719
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbdiv.c"
	line	5
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
	opt	stack 3
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	line	9
	movwf	(___lbdiv@dividend)
	
l6760:	
	clrf	(___lbdiv@quotient)
	line	10
	
l6762:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u2990
	goto	l6780
u2990:
	line	11
	
l6764:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l6768
	
l3388:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l6766:	
	incf	(___lbdiv@counter),f
	line	12
	
l6768:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l3388
u3000:
	line	16
	
l3390:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l6770:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u3011
	goto	u3010
u3011:
	goto	l6776
u3010:
	line	19
	
l6772:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l6774:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l6776:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l6778:	
	decfsz	(___lbdiv@counter),f
	goto	u3021
	goto	u3020
u3021:
	goto	l3390
u3020:
	line	25
	
l6780:	
	movf	(___lbdiv@quotient),w
	line	26
	
l3393:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___wmul
psect	text720,local,class=CODE,delta=2
global __ptext720
__ptext720:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text720
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l6744:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l6746:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l6750
u2970:
	line	8
	
l6748:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l6750:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l6752:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l6754:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2981
	goto	u2980
u2981:
	goto	l6746
u2980:
	line	12
	
l6756:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l3363:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text721,local,class=CODE,delta=2
global __ptext721
__ptext721:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    9[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1   11[BANK0 ] unsigned char 
;;  product         1   10[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text721
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 3
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l6728:	
	clrf	(___bmul@product)
	line	7
	
l6730:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u2951
	goto	u2950
u2951:
	goto	l6734
u2950:
	line	8
	
l6732:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l6734:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l6736:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l6738:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2961
	goto	u2960
u2961:
	goto	l6730
u2960:
	line	12
	
l6740:	
	movf	(___bmul@product),w
	line	13
	
l3357:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	__div_to_l_
psect	text722,local,class=CODE,delta=2
global __ptext722
__ptext722:

;; *************** function __div_to_l_ *****************
;; Defined at:
;;		line 61 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fldivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] unsigned char 
;;  f2              3    3[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  quot            4   14[BANK0 ] unsigned long 
;;  exp1            1   19[BANK0 ] unsigned char 
;;  cntr            1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text722
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fldivl.c"
	line	61
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
	opt	stack 4
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l6682:	
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
	goto	u2861
	goto	u2860
u2861:
	goto	l6686
u2860:
	line	67
	
l6684:	
	clrf	(?__div_to_l_)
	clrf	(?__div_to_l_+1)
	clrf	(?__div_to_l_+2)
	clrf	(?__div_to_l_+3)
	goto	l3647
	line	68
	
l6686:	
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
	goto	u2871
	goto	u2870
u2871:
	goto	l6690
u2870:
	goto	l6684
	line	70
	
l6690:	
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
	
l6692:	
	clrf	(__div_to_l_@quot)
	clrf	(__div_to_l_@quot+1)
	clrf	(__div_to_l_@quot+2)
	clrf	(__div_to_l_@quot+3)
	line	75
	
l6694:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l6696:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l6698:	
	movlw	(020h)
	movwf	(__div_to_l_@cntr)
	line	79
	
l6700:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	80
	
l6702:	
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
	goto	u2885
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u2885
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u2885
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u2885:
	skipc
	goto	u2881
	goto	u2880
u2881:
	goto	l3650
u2880:
	line	81
	
l6704:	
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
	
l6706:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	83
	
l3650:	
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
	
l6708:	
	decfsz	(__div_to_l_@cntr),f
	goto	u2891
	goto	u2890
u2891:
	goto	l6700
u2890:
	
l3651:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u2901
	goto	u2900
u2901:
	goto	l6718
u2900:
	line	87
	
l6710:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u2911
	goto	u2910
u2911:
	goto	l6714
u2910:
	goto	l6684
	line	90
	
l6714:	
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	line	91
	
l6716:	
	incfsz	(__div_to_l_@exp1),f
	goto	u2921
	goto	u2920
u2921:
	goto	l6714
u2920:
	goto	l6724
	line	93
	
l6718:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u2931
	goto	u2930
u2931:
	goto	l3658
u2930:
	goto	l6684
	line	96
	
l6722:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	97
	decf	(__div_to_l_@exp1),f
	line	98
	
l3658:	
	line	95
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u2941
	goto	u2940
u2941:
	goto	l6722
u2940:
	line	100
	
l6724:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	line	101
	
l3647:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
;; =============== function __div_to_l_ ends ============

	signat	__div_to_l_,8316
	global	__tdiv_to_l_
psect	text723,local,class=CODE,delta=2
global __ptext723
__ptext723:

;; *************** function __tdiv_to_l_ *****************
;; Defined at:
;;		line 61 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;;  f2              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  quot            4    9[BANK0 ] unsigned long 
;;  exp1            1   14[BANK0 ] unsigned char 
;;  cntr            1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text723
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdivl.c"
	line	61
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
	opt	stack 4
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l6634:	
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
	goto	u2771
	goto	u2770
u2771:
	goto	l6638
u2770:
	line	67
	
l6636:	
	clrf	(?__tdiv_to_l_)
	clrf	(?__tdiv_to_l_+1)
	clrf	(?__tdiv_to_l_+2)
	clrf	(?__tdiv_to_l_+3)
	goto	l3604
	line	68
	
l6638:	
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
	goto	u2781
	goto	u2780
u2781:
	goto	l3605
u2780:
	goto	l6636
	line	69
	
l3605:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l6642:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l6644:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	
l6646:	
	clrf	(__tdiv_to_l_@quot)
	clrf	(__tdiv_to_l_@quot+1)
	clrf	(__tdiv_to_l_@quot+2)
	clrf	(__tdiv_to_l_@quot+3)
	line	75
	
l6648:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l6650:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	(018h)
	movwf	(__tdiv_to_l_@cntr)
	line	79
	
l6652:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	80
	
l6654:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u2795
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u2795
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u2795:
	skipc
	goto	u2791
	goto	u2790
u2791:
	goto	l6660
u2790:
	line	81
	
l6656:	
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
	
l6658:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	line	84
	
l6660:	
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	line	85
	
l6662:	
	decfsz	(__tdiv_to_l_@cntr),f
	goto	u2801
	goto	u2800
u2801:
	goto	l6652
u2800:
	
l3608:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u2811
	goto	u2810
u2811:
	goto	l6672
u2810:
	line	87
	
l6664:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u2821
	goto	u2820
u2821:
	goto	l6668
u2820:
	goto	l6636
	line	90
	
l6668:	
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	line	91
	
l6670:	
	incfsz	(__tdiv_to_l_@exp1),f
	goto	u2831
	goto	u2830
u2831:
	goto	l6668
u2830:
	goto	l6678
	line	93
	
l6672:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u2841
	goto	u2840
u2841:
	goto	l3615
u2840:
	goto	l6636
	line	96
	
l6676:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	97
	decf	(__tdiv_to_l_@exp1),f
	line	98
	
l3615:	
	line	95
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u2851
	goto	u2850
u2851:
	goto	l6676
u2850:
	line	100
	
l6678:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	line	101
	
l3604:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
;; =============== function __tdiv_to_l_ ends ============

	signat	__tdiv_to_l_,8316
	global	_isdigit
psect	text724,local,class=CODE,delta=2
global __ptext724
__ptext724:

;; *************** function _isdigit *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text724
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
	line	13
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 4
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(isdigit@c)
	line	14
	
l6622:	
	clrf	(_isdigit$3694)
	
l6624:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u2751
	goto	u2750
u2751:
	goto	l6630
u2750:
	
l6626:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u2761
	goto	u2760
u2761:
	goto	l6630
u2760:
	
l6628:	
	clrf	(_isdigit$3694)
	incf	(_isdigit$3694),f
	
l6630:	
	rrf	(_isdigit$3694),w
	
	line	15
	
l3342:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_isprint
psect	text725,local,class=CODE,delta=2
global __ptext725
__ptext725:

;; *************** function _isprint *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isprint.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text725
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isprint.c"
	line	13
	global	__size_of_isprint
	__size_of_isprint	equ	__end_of_isprint-_isprint
	
_isprint:	
	opt	stack 2
; Regs used in _isprint: [wreg+status,2+status,0]
;isprint@c stored from wreg
	movwf	(isprint@c)
	line	14
	
l6610:	
	clrf	(_isprint$3697)
	
l6612:	
	movlw	(07Fh)
	subwf	(isprint@c),w
	skipnc
	goto	u2731
	goto	u2730
u2731:
	goto	l6618
u2730:
	
l6614:	
	movlw	(020h)
	subwf	(isprint@c),w
	skipc
	goto	u2741
	goto	u2740
u2741:
	goto	l6618
u2740:
	
l6616:	
	clrf	(_isprint$3697)
	incf	(_isprint$3697),f
	
l6618:	
	rrf	(_isprint$3697),w
	
	line	15
	
l3347:	
	return
	opt stack 0
GLOBAL	__end_of_isprint
	__end_of_isprint:
;; =============== function _isprint ends ============

	signat	_isprint,4216
	global	_button
psect	text726,local,class=CODE,delta=2
global __ptext726
__ptext726:

;; *************** function _button *****************
;; Defined at:
;;		line 146 in file "D:\TTVXL\Project TTVXL\BT02week11ttvxl\BT02week11ttvxl.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_lcd_put_byte
;;		i1_lcd_busy
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text726
	file	"D:\TTVXL\Project TTVXL\BT02week11ttvxl\BT02week11ttvxl.c"
	line	146
	global	__size_of_button
	__size_of_button	equ	__end_of_button-_button
	
_button:	
	opt	stack 1
; Regs used in _button: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_button+3)
	movf	pclath,w
	movwf	(??_button+4)
	ljmp	_button
psect	text726
	line	147
	
i1l6550:	
;BT02week11ttvxl.c: 147: RBIF = 0;
	bcf	(88/8),(88)&7
	line	148
;BT02week11ttvxl.c: 148: if (RB0 == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u253_21
	goto	u253_20
u253_21:
	goto	i1l6562
u253_20:
	line	150
	
i1l1110:	
	line	149
	btfsc	(48/8),(48)&7
	goto	u254_21
	goto	u254_20
u254_21:
	goto	i1l1110
u254_20:
	
i1l1112:	
	line	151
;BT02week11ttvxl.c: 150: }
;BT02week11ttvxl.c: 151: if (RB0 == 0){
	btfsc	(48/8),(48)&7
	goto	u255_21
	goto	u255_20
u255_21:
	goto	i1l6562
u255_20:
	line	152
	
i1l6554:	
;BT02week11ttvxl.c: 152: S1_state = 1;
	clrf	(_S1_state)
	incf	(_S1_state),f
	line	153
	
i1l6556:	
;BT02week11ttvxl.c: 153: lcd_put_byte(0,0x01);
	clrf	(?i1_lcd_put_byte)
	incf	(?i1_lcd_put_byte),f
	movlw	(0)
	fcall	i1_lcd_put_byte
	line	154
;BT02week11ttvxl.c: 154: while(lcd_busy());
	
i1l6558:	
	fcall	i1_lcd_busy
	iorlw	0
	skipz
	goto	u256_21
	goto	u256_20
u256_21:
	goto	i1l6558
u256_20:
	line	155
	
i1l6560:	
;BT02week11ttvxl.c: 155: _delay((unsigned long)((60)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_button+0)+0+2),f
movlw	134
movwf	((??_button+0)+0+1),f
	movlw	153
movwf	((??_button+0)+0),f
u515_27:
	decfsz	((??_button+0)+0),f
	goto	u515_27
	decfsz	((??_button+0)+0+1),f
	goto	u515_27
	decfsz	((??_button+0)+0+2),f
	goto	u515_27
opt asmopt_on

	line	158
	
i1l6562:	
;BT02week11ttvxl.c: 156: }
;BT02week11ttvxl.c: 157: }
;BT02week11ttvxl.c: 158: if (RB1 == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u257_21
	goto	u257_20
u257_21:
	goto	i1l6574
u257_20:
	line	160
	
i1l1118:	
	line	159
	btfsc	(49/8),(49)&7
	goto	u258_21
	goto	u258_20
u258_21:
	goto	i1l1118
u258_20:
	
i1l1120:	
	line	161
;BT02week11ttvxl.c: 160: }
;BT02week11ttvxl.c: 161: if (RB1 == 0){
	btfsc	(49/8),(49)&7
	goto	u259_21
	goto	u259_20
u259_21:
	goto	i1l6574
u259_20:
	line	162
	
i1l6566:	
;BT02week11ttvxl.c: 162: S1_state = 2;
	movlw	(02h)
	movwf	(_S1_state)
	line	163
	
i1l6568:	
;BT02week11ttvxl.c: 163: lcd_put_byte(0,0x01);
	clrf	(?i1_lcd_put_byte)
	incf	(?i1_lcd_put_byte),f
	movlw	(0)
	fcall	i1_lcd_put_byte
	line	164
;BT02week11ttvxl.c: 164: while(lcd_busy());
	
i1l6570:	
	fcall	i1_lcd_busy
	iorlw	0
	skipz
	goto	u260_21
	goto	u260_20
u260_21:
	goto	i1l6570
u260_20:
	line	165
	
i1l6572:	
;BT02week11ttvxl.c: 165: _delay((unsigned long)((60)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_button+0)+0+2),f
movlw	134
movwf	((??_button+0)+0+1),f
	movlw	153
movwf	((??_button+0)+0),f
u516_27:
	decfsz	((??_button+0)+0),f
	goto	u516_27
	decfsz	((??_button+0)+0+1),f
	goto	u516_27
	decfsz	((??_button+0)+0+2),f
	goto	u516_27
opt asmopt_on

	line	168
	
i1l6574:	
;BT02week11ttvxl.c: 166: }
;BT02week11ttvxl.c: 167: }
;BT02week11ttvxl.c: 168: if (RB2 == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u261_21
	goto	u261_20
u261_21:
	goto	i1l6586
u261_20:
	line	170
	
i1l1126:	
	line	169
	btfsc	(50/8),(50)&7
	goto	u262_21
	goto	u262_20
u262_21:
	goto	i1l1126
u262_20:
	
i1l1128:	
	line	171
;BT02week11ttvxl.c: 170: }
;BT02week11ttvxl.c: 171: if (RB2 == 0){
	btfsc	(50/8),(50)&7
	goto	u263_21
	goto	u263_20
u263_21:
	goto	i1l6586
u263_20:
	line	172
	
i1l6578:	
;BT02week11ttvxl.c: 172: S1_state = 3;
	movlw	(03h)
	movwf	(_S1_state)
	line	173
	
i1l6580:	
;BT02week11ttvxl.c: 173: lcd_put_byte(0,0x01);
	clrf	(?i1_lcd_put_byte)
	incf	(?i1_lcd_put_byte),f
	movlw	(0)
	fcall	i1_lcd_put_byte
	line	174
;BT02week11ttvxl.c: 174: while(lcd_busy());
	
i1l6582:	
	fcall	i1_lcd_busy
	iorlw	0
	skipz
	goto	u264_21
	goto	u264_20
u264_21:
	goto	i1l6582
u264_20:
	line	175
	
i1l6584:	
;BT02week11ttvxl.c: 175: _delay((unsigned long)((60)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_button+0)+0+2),f
movlw	134
movwf	((??_button+0)+0+1),f
	movlw	153
movwf	((??_button+0)+0),f
u517_27:
	decfsz	((??_button+0)+0),f
	goto	u517_27
	decfsz	((??_button+0)+0+1),f
	goto	u517_27
	decfsz	((??_button+0)+0+2),f
	goto	u517_27
opt asmopt_on

	line	178
	
i1l6586:	
;BT02week11ttvxl.c: 176: }
;BT02week11ttvxl.c: 177: }
;BT02week11ttvxl.c: 178: if (RB3 == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(51/8),(51)&7
	goto	u265_21
	goto	u265_20
u265_21:
	goto	i1l6598
u265_20:
	line	180
	
i1l1134:	
	line	179
	btfsc	(51/8),(51)&7
	goto	u266_21
	goto	u266_20
u266_21:
	goto	i1l1134
u266_20:
	
i1l1136:	
	line	181
;BT02week11ttvxl.c: 180: }
;BT02week11ttvxl.c: 181: if (RB3 == 0){
	btfsc	(51/8),(51)&7
	goto	u267_21
	goto	u267_20
u267_21:
	goto	i1l6598
u267_20:
	line	182
	
i1l6590:	
;BT02week11ttvxl.c: 182: S1_state = 4;
	movlw	(04h)
	movwf	(_S1_state)
	line	183
	
i1l6592:	
;BT02week11ttvxl.c: 183: lcd_put_byte(0,0x01);
	clrf	(?i1_lcd_put_byte)
	incf	(?i1_lcd_put_byte),f
	movlw	(0)
	fcall	i1_lcd_put_byte
	line	184
;BT02week11ttvxl.c: 184: while(lcd_busy());
	
i1l6594:	
	fcall	i1_lcd_busy
	iorlw	0
	skipz
	goto	u268_21
	goto	u268_20
u268_21:
	goto	i1l6594
u268_20:
	line	185
	
i1l6596:	
;BT02week11ttvxl.c: 185: _delay((unsigned long)((60)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_button+0)+0+2),f
movlw	134
movwf	((??_button+0)+0+1),f
	movlw	153
movwf	((??_button+0)+0),f
u518_27:
	decfsz	((??_button+0)+0),f
	goto	u518_27
	decfsz	((??_button+0)+0+1),f
	goto	u518_27
	decfsz	((??_button+0)+0+2),f
	goto	u518_27
opt asmopt_on

	line	188
	
i1l6598:	
;BT02week11ttvxl.c: 186: }
;BT02week11ttvxl.c: 187: }
;BT02week11ttvxl.c: 188: if (RB4 == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u269_21
	goto	u269_20
u269_21:
	goto	i1l1149
u269_20:
	line	190
	
i1l1142:	
	line	189
	btfsc	(52/8),(52)&7
	goto	u270_21
	goto	u270_20
u270_21:
	goto	i1l1142
u270_20:
	
i1l1144:	
	line	191
;BT02week11ttvxl.c: 190: }
;BT02week11ttvxl.c: 191: if (RB4 == 0){
	btfsc	(52/8),(52)&7
	goto	u271_21
	goto	u271_20
u271_21:
	goto	i1l1149
u271_20:
	line	192
	
i1l6602:	
;BT02week11ttvxl.c: 192: S1_state = 5;
	movlw	(05h)
	movwf	(_S1_state)
	line	193
	
i1l6604:	
;BT02week11ttvxl.c: 193: lcd_put_byte(0,0x01);
	clrf	(?i1_lcd_put_byte)
	incf	(?i1_lcd_put_byte),f
	movlw	(0)
	fcall	i1_lcd_put_byte
	line	194
;BT02week11ttvxl.c: 194: while(lcd_busy());
	
i1l6606:	
	fcall	i1_lcd_busy
	iorlw	0
	skipz
	goto	u272_21
	goto	u272_20
u272_21:
	goto	i1l6606
u272_20:
	line	195
	
i1l6608:	
;BT02week11ttvxl.c: 195: _delay((unsigned long)((60)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_button+0)+0+2),f
movlw	134
movwf	((??_button+0)+0+1),f
	movlw	153
movwf	((??_button+0)+0),f
u519_27:
	decfsz	((??_button+0)+0),f
	goto	u519_27
	decfsz	((??_button+0)+0+1),f
	goto	u519_27
	decfsz	((??_button+0)+0+2),f
	goto	u519_27
opt asmopt_on

	line	198
	
i1l1149:	
	movf	(??_button+4),w
	movwf	pclath
	swapf	(??_button+3)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_button
	__end_of_button:
;; =============== function _button ends ============

	signat	_button,88
	global	i1_lcd_put_byte
psect	text727,local,class=CODE,delta=2
global __ptext727
__ptext727:

;; *************** function i1_lcd_put_byte *****************
;; Defined at:
;;		line 106 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  lcd_put_byte    1    wreg     unsigned char 
;;  lcd_put_byte    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lcd_put_byte    1    3[COMMON] unsigned char 
;;  lcd_put_byte    1    4[COMMON] struct _BYTE_VAL
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
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
;;		_button
;; This function uses a non-reentrant model
;;
psect	text727
	file	"D:\TTVXL\Library\lcd(16).c"
	line	106
	global	__size_ofi1_lcd_put_byte
	__size_ofi1_lcd_put_byte	equ	__end_ofi1_lcd_put_byte-i1_lcd_put_byte
	
i1_lcd_put_byte:	
	opt	stack 1
; Regs used in i1_lcd_put_byte: [wreg+status,2+status,0]
;i1lcd_put_byte@rs stored from wreg
	line	109
	movwf	(i1lcd_put_byte@rs)
	
i1l7036:	
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
	
i1l7038:	
;lcd(16).c: 115: if(rs) RD1 = 1;
	movf	(i1lcd_put_byte@rs),w
	skipz
	goto	u347_20
	goto	i1l7042
u347_20:
	
i1l7040:	
	bsf	(65/8),(65)&7
	line	117
	
i1l7042:	
;lcd(16).c: 117: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??i1_lcd_put_byte+0)+0,f
u520_27:
decfsz	(??i1_lcd_put_byte+0)+0,f
	goto	u520_27
opt asmopt_on

	line	118
	
i1l7044:	
;lcd(16).c: 118: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	119
;lcd(16).c: 119: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??i1_lcd_put_byte+0)+0,f
u521_27:
decfsz	(??i1_lcd_put_byte+0)+0,f
	goto	u521_27
opt asmopt_on

	line	120
	
i1l7046:	
;lcd(16).c: 120: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	122
;lcd(16).c: 122: temp.Val = b;
	movf	(i1lcd_put_byte@b),w
	movwf	(i1lcd_put_byte@temp)
	line	125
	
i1l7048:	
;lcd(16).c: 125: RD4 = temp.bits.b4;
	swapf	(i1lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??i1_lcd_put_byte+0)+0
	rrf	(??i1_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u348_21
	goto	u348_20
	
u348_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u349_24
u348_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u349_24:
	line	126
	
i1l7050:	
;lcd(16).c: 126: RD5 = temp.bits.b5;
	swapf	(i1lcd_put_byte@temp),w
	movwf	(??i1_lcd_put_byte+0)+0
	rrf	(??i1_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??i1_lcd_put_byte+1)+0
	rrf	(??i1_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u350_21
	goto	u350_20
	
u350_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u351_24
u350_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u351_24:
	line	127
	
i1l7052:	
;lcd(16).c: 127: RD6 = temp.bits.b6;
	swapf	(i1lcd_put_byte@temp),w
	movwf	(??i1_lcd_put_byte+0)+0
	rrf	(??i1_lcd_put_byte+0)+0,f
	rrf	(??i1_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??i1_lcd_put_byte+1)+0
	rrf	(??i1_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u352_21
	goto	u352_20
	
u352_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u353_24
u352_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u353_24:
	line	128
	
i1l7054:	
;lcd(16).c: 128: RD7 = temp.bits.b7;
	rlf	(i1lcd_put_byte@temp),w
	rlf	(i1lcd_put_byte@temp),w
	andlw	1
	movwf	(??i1_lcd_put_byte+0)+0
	rrf	(??i1_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u354_21
	goto	u354_20
	
u354_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u355_24
u354_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u355_24:
	line	129
;lcd(16).c: 129: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??i1_lcd_put_byte+0)+0,f
u522_27:
decfsz	(??i1_lcd_put_byte+0)+0,f
	goto	u522_27
opt asmopt_on

	line	130
	
i1l7056:	
;lcd(16).c: 130: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	131
;lcd(16).c: 131: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??i1_lcd_put_byte+0)+0,f
u523_27:
decfsz	(??i1_lcd_put_byte+0)+0,f
	goto	u523_27
opt asmopt_on

	line	132
	
i1l7058:	
;lcd(16).c: 132: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	134
	
i1l7060:	
;lcd(16).c: 134: RD4 = temp.bits.b0;
	movf	(i1lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??i1_lcd_put_byte+0)+0
	rrf	(??i1_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u356_21
	goto	u356_20
	
u356_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u357_24
u356_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u357_24:
	line	135
	
i1l7062:	
;lcd(16).c: 135: RD5 = temp.bits.b1;
	rrf	(i1lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??i1_lcd_put_byte+0)+0
	rrf	(??i1_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u358_21
	goto	u358_20
	
u358_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u359_24
u358_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u359_24:
	line	136
	
i1l7064:	
;lcd(16).c: 136: RD6 = temp.bits.b2;
	rrf	(i1lcd_put_byte@temp),w
	movwf	(??i1_lcd_put_byte+0)+0
	rrf	(??i1_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??i1_lcd_put_byte+1)+0
	rrf	(??i1_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u360_21
	goto	u360_20
	
u360_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u361_24
u360_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u361_24:
	line	137
	
i1l7066:	
;lcd(16).c: 137: RD7 = temp.bits.b3;
	rrf	(i1lcd_put_byte@temp),w
	movwf	(??i1_lcd_put_byte+0)+0
	rrf	(??i1_lcd_put_byte+0)+0,f
	rrf	(??i1_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??i1_lcd_put_byte+1)+0
	rrf	(??i1_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u362_21
	goto	u362_20
	
u362_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u363_24
u362_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u363_24:
	line	138
;lcd(16).c: 138: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??i1_lcd_put_byte+0)+0,f
u524_27:
decfsz	(??i1_lcd_put_byte+0)+0,f
	goto	u524_27
opt asmopt_on

	line	139
	
i1l7068:	
;lcd(16).c: 139: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	140
;lcd(16).c: 140: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??i1_lcd_put_byte+0)+0,f
u525_27:
decfsz	(??i1_lcd_put_byte+0)+0,f
	goto	u525_27
opt asmopt_on

	line	141
	
i1l7070:	
;lcd(16).c: 141: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	142
	
i1l2216:	
	return
	opt stack 0
GLOBAL	__end_ofi1_lcd_put_byte
	__end_ofi1_lcd_put_byte:
;; =============== function i1_lcd_put_byte ends ============

	signat	i1_lcd_put_byte,88
	global	i1_lcd_busy
psect	text728,local,class=CODE,delta=2
global __ptext728
__ptext728:

;; *************** function i1_lcd_busy *****************
;; Defined at:
;;		line 47 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  lcd_busy        1    1[COMMON] unsigned char 
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
;;		_button
;; This function uses a non-reentrant model
;;
psect	text728
	file	"D:\TTVXL\Library\lcd(16).c"
	line	47
	global	__size_ofi1_lcd_busy
	__size_ofi1_lcd_busy	equ	__end_ofi1_lcd_busy-i1_lcd_busy
	
i1_lcd_busy:	
	opt	stack 1
; Regs used in i1_lcd_busy: [wreg]
	line	50
	
i1l7022:	
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
	
i1l7024:	
;lcd(16).c: 57: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??i1_lcd_busy+0)+0,f
u526_27:
decfsz	(??i1_lcd_busy+0)+0,f
	goto	u526_27
opt asmopt_on

	line	58
	
i1l7026:	
;lcd(16).c: 58: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	59
;lcd(16).c: 59: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??i1_lcd_busy+0)+0,f
u527_27:
decfsz	(??i1_lcd_busy+0)+0,f
	goto	u527_27
opt asmopt_on

	line	61
;lcd(16).c: 61: busy = RD7;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	movlw	1
	movwf	(i1lcd_busy@busy)
	line	63
	
i1l7028:	
;lcd(16).c: 63: RD3 = 0;
	bcf	(67/8),(67)&7
	line	64
;lcd(16).c: 64: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??i1_lcd_busy+0)+0,f
u528_27:
decfsz	(??i1_lcd_busy+0)+0,f
	goto	u528_27
opt asmopt_on

	line	65
	
i1l7030:	
;lcd(16).c: 65: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	66
;lcd(16).c: 66: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??i1_lcd_busy+0)+0,f
u529_27:
decfsz	(??i1_lcd_busy+0)+0,f
	goto	u529_27
opt asmopt_on

	line	67
	
i1l7032:	
;lcd(16).c: 67: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	70
;lcd(16).c: 70: return busy;
	movf	(i1lcd_busy@busy),w
	line	71
	
i1l2208:	
	return
	opt stack 0
GLOBAL	__end_ofi1_lcd_busy
	__end_ofi1_lcd_busy:
;; =============== function i1_lcd_busy ends ============

	signat	i1_lcd_busy,89
psect	text729,local,class=CODE,delta=2
global __ptext729
__ptext729:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
