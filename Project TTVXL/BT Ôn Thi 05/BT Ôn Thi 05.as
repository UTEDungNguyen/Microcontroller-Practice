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
# 6 "D:\TTVXL\Project TTVXL\BT Ôn Thi 05\BT Ôn Thi 05.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "D:\TTVXL\Project TTVXL\BT Ôn Thi 05\BT Ôn Thi 05.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_tx
	FNCALL	_main,_rx
	FNCALL	_main,_lcd_gotoxy
	FNCALL	_main,_printf
	FNCALL	_main,_lcd_counter
	FNCALL	_main,_sprintf
	FNCALL	_main,_send_string
	FNCALL	_main,_lcd_put_byte
	FNCALL	_lcd_counter,_lcd_gotoxy
	FNCALL	_lcd_counter,_printf
	FNCALL	_lcd_counter,_lcd_put_byte
	FNCALL	_sprintf,__doprnt
	FNCALL	_printf,__doprnt
	FNCALL	__doprnt,Fake
	FNCALL	__doprnt,_putch
	FNCALL	__doprnt,_isdigit
	FNCALL	__doprnt,___wmul
	FNCALL	__doprnt,___lwdiv
	FNCALL	__doprnt,___lwmod
	FNCALL	_putch,_lcd_putc
	FNCALL	_lcd_putc,_lcd_put_byte
	FNCALL	_lcd_putc,_lcd_busy
	FNCALL	_lcd_putc,_lcd_gotoxy
	FNCALL	_lcd_putc,_isprint
	FNCALL	_lcd_init,_lcd_put_byte
	FNCALL	_lcd_init,_lcd_busy
	FNCALL	_lcd_gotoxy,_lcd_put_byte
	FNCALL	_lcd_gotoxy,_lcd_busy
	FNCALL	_send_string,_send_char
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
	global	_data_rx
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_TXREG
_TXREG	set	25
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
	global	_CREN
_CREN	set	196
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RBIE
_RBIE	set	91
	global	_RBIF
_RBIF	set	88
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
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_SPBRGH
_SPBRGH	set	154
	global	_TRISD
_TRISD	set	136
	global	_WPUB
_WPUB	set	149
	global	_ADFM
_ADFM	set	1279
	global	_BRGH
_BRGH	set	1218
	global	_RCIE
_RCIE	set	1125
	global	_SYNC
_SYNC	set	1220
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
	global	_TX9
_TX9	set	1222
	global	_TXEN
_TXEN	set	1221
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
	global	_BRG16
_BRG16	set	3131
	
STR_4:	
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
	
STR_6:	
	retlw	112	;'p'
	retlw	104	;'h'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_5:	
	retlw	103	;'g'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	100	;'d'
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
	file	"BT Ôn Thi 05.as"
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
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+015h)
	fcall	clear_ram
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
	global	?_lcd_counter
?_lcd_counter:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ngat
?_ngat:	; 0 bytes @ 0x0
	global	?_send_char
?_send_char:	; 0 bytes @ 0x0
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
	global	??_tx
??_tx:	; 0 bytes @ 0xA
	global	??_rx
??_rx:	; 0 bytes @ 0xA
	global	??_lcd_busy
??_lcd_busy:	; 0 bytes @ 0xA
	global	??_isprint
??_isprint:	; 0 bytes @ 0xA
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0xA
	global	??_send_char
??_send_char:	; 0 bytes @ 0xA
	global	?___wmul
?___wmul:	; 2 bytes @ 0xA
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0xA
	global	send_char@data
send_char@data:	; 1 bytes @ 0xA
	global	lcd_put_byte@b
lcd_put_byte@b:	; 1 bytes @ 0xA
	global	_isdigit$3700
_isdigit$3700:	; 1 bytes @ 0xA
	global	_isprint$3703
_isprint$3703:	; 1 bytes @ 0xA
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0xA
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0xA
	ds	1
	global	??_lcd_put_byte
??_lcd_put_byte:	; 0 bytes @ 0xB
	global	??_send_string
??_send_string:	; 0 bytes @ 0xB
	global	send_string@s
send_string@s:	; 1 bytes @ 0xB
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
	global	?_putch
?_putch:	; 0 bytes @ 0x13
	global	putch@c
putch@c:	; 1 bytes @ 0x13
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x13
	ds	1
	global	??_putch
??_putch:	; 0 bytes @ 0x14
	ds	1
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x15
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x15
	ds	1
	global	?__doprnt
?__doprnt:	; 2 bytes @ 0x16
	global	__doprnt@f
__doprnt@f:	; 1 bytes @ 0x16
	ds	1
	global	__doprnt@ap
__doprnt@ap:	; 1 bytes @ 0x17
	ds	1
	global	??__doprnt
??__doprnt:	; 0 bytes @ 0x18
	ds	3
	global	__doprnt@prec
__doprnt@prec:	; 1 bytes @ 0x1B
	ds	1
	global	__doprnt@_val
__doprnt@_val:	; 4 bytes @ 0x1C
	ds	4
	global	__doprnt@flag
__doprnt@flag:	; 1 bytes @ 0x20
	ds	1
	global	__doprnt@width
__doprnt@width:	; 2 bytes @ 0x21
	ds	2
	global	__doprnt@c
__doprnt@c:	; 1 bytes @ 0x23
	ds	1
	global	__doprnt@pb
__doprnt@pb:	; 1 bytes @ 0x24
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0x25
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x25
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x25
	ds	2
	global	??_printf
??_printf:	; 0 bytes @ 0x27
	global	printf@f
printf@f:	; 1 bytes @ 0x27
	ds	1
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0x28
	global	printf@ap
printf@ap:	; 1 bytes @ 0x28
	global	sprintf@wh
sprintf@wh:	; 1 bytes @ 0x28
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x29
	global	printf@pb
printf@pb:	; 2 bytes @ 0x29
	ds	1
	global	sprintf@pb
sprintf@pb:	; 2 bytes @ 0x2A
	ds	1
	global	??_lcd_counter
??_lcd_counter:	; 0 bytes @ 0x2B
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x2C
	ds	2
;;Data sizes: Strings 56, constant 10, data 0, bss 21, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     46      67
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 10
;;		 -> STR_6(CODE[10]), STR_5(CODE[9]), 
;;
;; ?_sprintf	int  size(1) Largest target is 10
;;		 -> NULL(NULL[0]), data_rx(BANK0[10]), 
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; sprintf@wh	PTR unsigned char  size(1) Largest target is 10
;;		 -> data_rx(BANK0[10]), 
;;
;; pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; pb.ptr	PTR unsigned char  size(1) Largest target is 10
;;		 -> NULL(NULL[0]), data_rx(BANK0[10]), 
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_4(CODE[17]), STR_3(CODE[7]), STR_2(CODE[7]), STR_1(CODE[6]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; pb.ptr	PTR unsigned char  size(1) Largest target is 10
;;		 -> NULL(NULL[0]), data_rx(BANK0[10]), 
;;
;; _doprnt@ap	PTR PTR void  size(1) Largest target is 2
;;		 -> sprintf@ap(BANK0[1]), printf@ap(BANK0[1]), 
;;
;; _doprnt@f	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_6(CODE[10]), STR_5(CODE[9]), STR_4(CODE[17]), STR_3(CODE[7]), 
;;		 -> STR_2(CODE[7]), STR_1(CODE[6]), 
;;
;; S3150__prbuf$func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; _doprnt@pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; S3150__prbuf$ptr	PTR unsigned char  size(1) Largest target is 10
;;		 -> NULL(NULL[0]), data_rx(BANK0[10]), 
;;
;; _doprnt@pb.ptr	PTR unsigned char  size(1) Largest target is 10
;;		 -> NULL(NULL[0]), data_rx(BANK0[10]), 
;;
;; _doprnt@pb	PTR struct __prbuf size(1) Largest target is 3
;;		 -> sprintf@pb(BANK0[2]), printf@pb(BANK0[2]), 
;;
;; S3175$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; send_string@s	PTR const unsigned char  size(1) Largest target is 10
;;		 -> data_rx(BANK0[10]), 
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
;;   _main->_sprintf
;;   _lcd_counter->_printf
;;   _sprintf->__doprnt
;;   _printf->__doprnt
;;   __doprnt->___lwmod
;;   _putch->_lcd_putc
;;   _lcd_putc->_lcd_gotoxy
;;   _lcd_init->_lcd_put_byte
;;   _lcd_gotoxy->_lcd_put_byte
;;   _send_string->_send_char
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
;; (0) _main                                                12    12      0    9340
;;                                             44 BANK0      2     2      0
;;                           _lcd_init
;;                                 _tx
;;                                 _rx
;;                         _lcd_gotoxy
;;                             _printf
;;                        _lcd_counter
;;                            _sprintf
;;                        _send_string
;;                       _lcd_put_byte
;; ---------------------------------------------------------------------------------
;; (1) _lcd_counter                                          0     0      0    3169
;;                         _lcd_gotoxy
;;                             _printf
;;                       _lcd_put_byte
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                              7     4      3    2691
;;                                             37 BANK0      7     4      3
;;                            __doprnt
;; ---------------------------------------------------------------------------------
;; (2) _printf                                               6     4      2    2635
;;                                             37 BANK0      6     4      2
;;                            __doprnt
;; ---------------------------------------------------------------------------------
;; (2) __doprnt                                             15    13      2    2511
;;                                             22 BANK0     15    13      2
;;                   Absolute function
;;                              _putch
;;                            _isdigit
;;                             ___wmul
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (3) _putch                                                1     0      1     713
;;                                             19 BANK0      1     0      1
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
;; (1) _send_string                                          1     1      0      67
;;                                             11 BANK0      1     1      0
;;                          _send_char
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
;; (3) Absolute function(Fake)                               1     0      1       0
;;                                             10 BANK0      1     0      1
;; ---------------------------------------------------------------------------------
;; (5) _isprint                                              2     2      0      68
;;                                             10 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _send_char                                            1     1      0      22
;;                                             10 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _rx                                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _tx                                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (8) _ngat                                                 4     4      0    1049
;;                                              6 BANK0      4     4      0
;;                            ___ftadd
;; ---------------------------------------------------------------------------------
;; (9) ___ftadd                                             12     6      6    1049
;;                                              8 COMMON     6     0      6
;;                                              0 BANK0      6     6      0
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (10) ___ftpack                                            8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 10
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_put_byte
;;     _lcd_busy
;;   _tx
;;   _rx
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
;;       _isdigit
;;       ___wmul
;;       ___lwdiv
;;       ___lwmod
;;         ___lwdiv (ARG)
;;   _lcd_counter
;;     _lcd_gotoxy
;;       _lcd_put_byte
;;       _lcd_busy
;;     _printf
;;       __doprnt
;;         Absolute function(Fake)
;;         _putch
;;           _lcd_putc
;;             _lcd_put_byte
;;             _lcd_busy
;;             _lcd_gotoxy
;;               _lcd_put_byte
;;               _lcd_busy
;;             _isprint
;;         _isdigit
;;         ___wmul
;;         ___lwdiv
;;         ___lwmod
;;           ___lwdiv (ARG)
;;     _lcd_put_byte
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
;;       _isdigit
;;       ___wmul
;;       ___lwdiv
;;       ___lwmod
;;         ___lwdiv (ARG)
;;   _send_string
;;     _send_char
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
;;STACK                0      0       D       2        0.0%
;;ABS                  0      0      51       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     2E      43       5       83.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      5E      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 36 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 05\BT Ôn Thi 05.c"
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
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_lcd_init
;;		_tx
;;		_rx
;;		_lcd_gotoxy
;;		_printf
;;		_lcd_counter
;;		_sprintf
;;		_send_string
;;		_lcd_put_byte
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 05\BT Ôn Thi 05.c"
	line	36
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	37
	
l4916:	
;BT Ôn Thi 05.c: 37: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	38
	
l4918:	
;BT Ôn Thi 05.c: 38: lcd_init();
	fcall	_lcd_init
	line	39
	
l4920:	
;BT Ôn Thi 05.c: 39: TRISA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1068/8)^080h,(1068)&7
	line	40
	
l4922:	
;BT Ôn Thi 05.c: 40: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	41
	
l4924:	
;BT Ôn Thi 05.c: 41: TRISE0 = 0;
	bcf	(1096/8)^080h,(1096)&7
	line	43
	
l4926:	
;BT Ôn Thi 05.c: 43: TRISB0 = 1;
	bsf	(1072/8)^080h,(1072)&7
	line	44
	
l4928:	
;BT Ôn Thi 05.c: 44: TRISA0 = 1; ANS0 = 1;
	bsf	(1064/8)^080h,(1064)&7
	
l4930:	
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3136/8)^0180h,(3136)&7
	line	45
	
l4932:	
;BT Ôn Thi 05.c: 45: ADCS1 = 1; ADCS0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(255/8),(255)&7
	
l4934:	
	bcf	(254/8),(254)&7
	line	46
	
l4936:	
;BT Ôn Thi 05.c: 46: VCFG1 = 0; VCFG0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1277/8)^080h,(1277)&7
	
l4938:	
	bcf	(1276/8)^080h,(1276)&7
	line	47
	
l4940:	
;BT Ôn Thi 05.c: 47: CHS3 = 0;CHS2 = 0; CHS1 = 0;CHS0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(253/8),(253)&7
	
l4942:	
	bcf	(252/8),(252)&7
	
l4944:	
	bcf	(251/8),(251)&7
	
l4946:	
	bcf	(250/8),(250)&7
	line	48
	
l4948:	
;BT Ôn Thi 05.c: 48: ADFM = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1279/8)^080h,(1279)&7
	line	49
	
l4950:	
;BT Ôn Thi 05.c: 49: ADON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(248/8),(248)&7
	line	50
	
l4952:	
;BT Ôn Thi 05.c: 50: WPUB = 0b00000011;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	51
	
l4954:	
;BT Ôn Thi 05.c: 51: nRBPU =0;
	bcf	(1039/8)^080h,(1039)&7
	line	52
	
l4956:	
;BT Ôn Thi 05.c: 52: GIE = 1;
	bsf	(95/8),(95)&7
	line	53
	
l4958:	
;BT Ôn Thi 05.c: 53: RBIE = 1;
	bsf	(91/8),(91)&7
	line	54
	
l4960:	
;BT Ôn Thi 05.c: 54: RBIF = 0;
	bcf	(88/8),(88)&7
	line	55
	
l4962:	
;BT Ôn Thi 05.c: 55: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u2177:
	decfsz	((??_main+0)+0),f
	goto	u2177
	decfsz	((??_main+0)+0+1),f
	goto	u2177
	clrwdt
opt asmopt_on

	line	57
	
l4964:	
;BT Ôn Thi 05.c: 57: TMR1GE=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(134/8),(134)&7
	line	58
	
l4966:	
;BT Ôn Thi 05.c: 58: TMR1CS=0;
	bcf	(129/8),(129)&7
	line	59
	
l4968:	
;BT Ôn Thi 05.c: 59: T1SYNC=1;
	bsf	(130/8),(130)&7
	line	60
	
l4970:	
;BT Ôn Thi 05.c: 60: T1CKPS1=0;T1CKPS0=0;
	bcf	(133/8),(133)&7
	
l4972:	
	bcf	(132/8),(132)&7
	line	61
	
l4974:	
;BT Ôn Thi 05.c: 61: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	62
	
l4976:	
;BT Ôn Thi 05.c: 62: TMR1H=246;
	movlw	(0F6h)
	movwf	(15)	;volatile
	line	63
	
l4978:	
;BT Ôn Thi 05.c: 63: TMR1L=60;
	movlw	(03Ch)
	movwf	(14)	;volatile
	line	65
	
l4980:	
;BT Ôn Thi 05.c: 65: TMR1IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	66
	
l4982:	
;BT Ôn Thi 05.c: 66: TMR1IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(96/8),(96)&7
	line	67
	
l4984:	
;BT Ôn Thi 05.c: 67: PEIE=1;
	bsf	(94/8),(94)&7
	line	68
	
l4986:	
;BT Ôn Thi 05.c: 68: GIE=1;
	bsf	(95/8),(95)&7
	line	71
;BT Ôn Thi 05.c: 71: tx();
	fcall	_tx
	line	72
;BT Ôn Thi 05.c: 72: rx();
	fcall	_rx
	line	75
;BT Ôn Thi 05.c: 73: char data_tx[10];
;BT Ôn Thi 05.c: 75: lcd_gotoxy(0,0);
	clrf	(?_lcd_gotoxy)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	76
	
l4988:	
;BT Ôn Thi 05.c: 76: printf("Nguyen Phuc Dung");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_printf
	line	80
	
l4990:	
;BT Ôn Thi 05.c: 79: {
;BT Ôn Thi 05.c: 80: lcd_counter();
	fcall	_lcd_counter
	line	81
	
l4992:	
;BT Ôn Thi 05.c: 81: if (ms>=1000){
	movf	(_ms+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2075
	movlw	low(03E8h)
	subwf	(_ms),w
u2075:

	skipc
	goto	u2071
	goto	u2070
u2071:
	goto	l5040
u2070:
	line	82
	
l4994:	
;BT Ôn Thi 05.c: 82: ms=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ms)
	clrf	(_ms+1)
	line	83
	
l4996:	
;BT Ôn Thi 05.c: 83: s=s+1;
	incf	(_s),f
	skipnz
	incf	(_s+1),f
	line	84
	
l4998:	
;BT Ôn Thi 05.c: 84: lcd_counter();
	fcall	_lcd_counter
	line	85
	
l5000:	
;BT Ôn Thi 05.c: 85: if (s==10||s==20||s==30||s==40||s==50||s==60){
		movf	(_s),w
	xorlw	10
	iorwf	(_s+1),w

	skipnz
	goto	u2081
	goto	u2080
u2081:
	goto	l5012
u2080:
	
l5002:	
		movf	(_s),w
	xorlw	20
	iorwf	(_s+1),w

	skipnz
	goto	u2091
	goto	u2090
u2091:
	goto	l5012
u2090:
	
l5004:	
		movf	(_s),w
	xorlw	30
	iorwf	(_s+1),w

	skipnz
	goto	u2101
	goto	u2100
u2101:
	goto	l5012
u2100:
	
l5006:	
		movf	(_s),w
	xorlw	40
	iorwf	(_s+1),w

	skipnz
	goto	u2111
	goto	u2110
u2111:
	goto	l5012
u2110:
	
l5008:	
		movf	(_s),w
	xorlw	50
	iorwf	(_s+1),w

	skipnz
	goto	u2121
	goto	u2120
u2121:
	goto	l5012
u2120:
	
l5010:	
		movf	(_s),w
	xorlw	60
	iorwf	(_s+1),w

	skipz
	goto	u2131
	goto	u2130
u2131:
	goto	l5018
u2130:
	line	86
	
l5012:	
;BT Ôn Thi 05.c: 86: sprintf(data_rx,"gio:%02d",h);
	movlw	((STR_5-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(_h+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_h),w
	movwf	0+(?_sprintf)+01h
	movlw	(_data_rx)&0ffh
	fcall	_sprintf
	line	87
	
l5014:	
;BT Ôn Thi 05.c: 87: send_string(data_rx);
	movlw	(_data_rx)&0ffh
	fcall	_send_string
	line	88
	
l5016:	
;BT Ôn Thi 05.c: 88: sprintf(data_rx,"phut:%02d",m);
	movlw	((STR_6-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(_m+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_m),w
	movwf	0+(?_sprintf)+01h
	movlw	(_data_rx)&0ffh
	fcall	_sprintf
	line	89
;BT Ôn Thi 05.c: 89: send_string(data_rx);
	movlw	(_data_rx)&0ffh
	fcall	_send_string
	line	91
	
l5018:	
;BT Ôn Thi 05.c: 90: }
;BT Ôn Thi 05.c: 91: if (s>=60){
	movf	(_s+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2145
	movlw	low(03Ch)
	subwf	(_s),w
u2145:

	skipc
	goto	u2141
	goto	u2140
u2141:
	goto	l5040
u2140:
	line	92
	
l5020:	
;BT Ôn Thi 05.c: 92: s=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_s)
	clrf	(_s+1)
	line	93
	
l5022:	
;BT Ôn Thi 05.c: 93: m=m+1;
	incf	(_m),f
	skipnz
	incf	(_m+1),f
	line	94
	
l5024:	
;BT Ôn Thi 05.c: 94: lcd_counter();
	fcall	_lcd_counter
	line	95
	
l5026:	
;BT Ôn Thi 05.c: 95: if (m>=60){
	movf	(_m+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2155
	movlw	low(03Ch)
	subwf	(_m),w
u2155:

	skipc
	goto	u2151
	goto	u2150
u2151:
	goto	l5040
u2150:
	line	96
	
l5028:	
;BT Ôn Thi 05.c: 96: m=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_m)
	clrf	(_m+1)
	line	97
	
l5030:	
;BT Ôn Thi 05.c: 97: h=h+1;
	incf	(_h),f
	skipnz
	incf	(_h+1),f
	line	98
	
l5032:	
;BT Ôn Thi 05.c: 98: lcd_counter();
	fcall	_lcd_counter
	line	99
	
l5034:	
;BT Ôn Thi 05.c: 99: if (h>=60){
	movf	(_h+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2165
	movlw	low(03Ch)
	subwf	(_h),w
u2165:

	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l1087
u2160:
	line	100
	
l5036:	
;BT Ôn Thi 05.c: 100: ms=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ms)
	clrf	(_ms+1)
	line	101
;BT Ôn Thi 05.c: 101: s=0;
	clrf	(_s)
	clrf	(_s+1)
	line	102
;BT Ôn Thi 05.c: 102: m=0;
	clrf	(_m)
	clrf	(_m+1)
	line	103
;BT Ôn Thi 05.c: 103: h=0;
	clrf	(_h)
	clrf	(_h+1)
	line	104
	
l5038:	
;BT Ôn Thi 05.c: 104: lcd_counter();
	fcall	_lcd_counter
	goto	l5040
	line	107
	
l1087:	
	line	109
	
l5040:	
;BT Ôn Thi 05.c: 105: }
;BT Ôn Thi 05.c: 106: }
;BT Ôn Thi 05.c: 107: }
;BT Ôn Thi 05.c: 108: }
;BT Ôn Thi 05.c: 109: lcd_put_byte(1,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(01h)
	fcall	_lcd_put_byte
	goto	l4990
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	111
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_counter
psect	text404,local,class=CODE,delta=2
global __ptext404
__ptext404:

;; *************** function _lcd_counter *****************
;; Defined at:
;;		line 25 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 05\BT Ôn Thi 05.c"
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
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_lcd_gotoxy
;;		_printf
;;		_lcd_put_byte
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text404
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 05\BT Ôn Thi 05.c"
	line	25
	global	__size_of_lcd_counter
	__size_of_lcd_counter	equ	__end_of_lcd_counter-_lcd_counter
	
_lcd_counter:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _lcd_counter: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	26
	
l4906:	
;BT Ôn Thi 05.c: 26: lcd_gotoxy(3,1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(03h)
	fcall	_lcd_gotoxy
	line	27
	
l4908:	
;BT Ôn Thi 05.c: 27: printf("%02dh",h);
	movf	(_h+1),w
	movwf	(?_printf+1)
	movf	(_h),w
	movwf	(?_printf)
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	28
	
l4910:	
;BT Ôn Thi 05.c: 28: lcd_gotoxy(6,1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(06h)
	fcall	_lcd_gotoxy
	line	29
;BT Ôn Thi 05.c: 29: printf(":%02dm",m);
	movf	(_m+1),w
	movwf	(?_printf+1)
	movf	(_m),w
	movwf	(?_printf)
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	line	30
	
l4912:	
;BT Ôn Thi 05.c: 30: lcd_gotoxy(10,1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0Ah)
	fcall	_lcd_gotoxy
	line	31
	
l4914:	
;BT Ôn Thi 05.c: 31: printf(":%02ds",s);
	movf	(_s+1),w
	movwf	(?_printf+1)
	movf	(_s),w
	movwf	(?_printf)
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_printf
	line	32
;BT Ôn Thi 05.c: 32: lcd_put_byte(1,1);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(01h)
	fcall	_lcd_put_byte
	line	33
	
l1079:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_counter
	__end_of_lcd_counter:
;; =============== function _lcd_counter ends ============

	signat	_lcd_counter,88
	global	_sprintf
psect	text405,local,class=CODE,delta=2
global __ptext405
__ptext405:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\sprintf.c"
;; Parameters:    Size  Location     Type
;;  wh              1    wreg     PTR unsigned char 
;;		 -> data_rx(10), 
;;  f               1   37[BANK0 ] PTR const unsigned char 
;;		 -> STR_6(10), STR_5(9), 
;; Auto vars:     Size  Location     Type
;;  wh              1   40[BANK0 ] PTR unsigned char 
;;		 -> data_rx(10), 
;;  pb              2   42[BANK0 ] struct __prbuf
;;  ap              1   41[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   37[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text405
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
	movwf	(sprintf@wh)
	
l4894:	
	movf	(sprintf@wh),w
	movwf	(sprintf@pb)
	line	32
	
l4896:	
	clrf	(0+sprintf@pb+01h)
	line	33
	
l4898:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)
	line	34
	
l4900:	
	movf	(sprintf@f),w
	movwf	(?__doprnt)
	movlw	(sprintf@ap)&0ffh
	movwf	(0+?__doprnt+01h)
	movlw	(sprintf@pb)&0ffh
	fcall	__doprnt
	line	35
	
l4902:	
	movf	(sprintf@pb),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	38
	
l3281:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_printf
psect	text406,local,class=CODE,delta=2
global __ptext406
__ptext406:

;; *************** function _printf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\printf.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_4(17), STR_3(7), STR_2(7), STR_1(6), 
;; Auto vars:     Size  Location     Type
;;  f               1   39[BANK0 ] PTR const unsigned char 
;;		 -> STR_4(17), STR_3(7), STR_2(7), STR_1(6), 
;;  pb              2   41[BANK0 ] struct __prbuf
;;  ap              1   40[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   37[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_lcd_counter
;;		_main
;; This function uses a non-reentrant model
;;
psect	text406
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
	movwf	(printf@f)
	
l4884:	
	clrf	(printf@pb)
	line	24
	
l4886:	
	movlw	((fp__putch-fpbase))&0ffh
	movwf	(0+printf@pb+01h)
	line	25
	
l4888:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)
	line	26
	
l4890:	
;	Return value of _printf is never used
	movf	(printf@f),w
	movwf	(?__doprnt)
	movlw	(printf@ap)&0ffh
	movwf	(0+?__doprnt+01h)
	movlw	(printf@pb)&0ffh
	fcall	__doprnt
	line	28
	
l3274:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	__doprnt
psect	text407,local,class=CODE,delta=2
global __ptext407
__ptext407:

;; *************** function __doprnt *****************
;; Defined at:
;;		line 455 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  pb              1    wreg     PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  f               1   22[BANK0 ] PTR const unsigned char 
;;		 -> STR_6(10), STR_5(9), STR_4(17), STR_3(7), 
;;		 -> STR_2(7), STR_1(6), 
;;  ap              1   23[BANK0 ] PTR PTR void 
;;		 -> sprintf@ap(1), printf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  pb              1   36[BANK0 ] PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  _val            4   28[BANK0 ] struct .
;;  width           2   33[BANK0 ] int 
;;  c               1   35[BANK0 ] char 
;;  flag            1   32[BANK0 ] unsigned char 
;;  prec            1   27[BANK0 ] char 
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
;;      Locals:         0      10       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		Absolute function
;;		_putch
;;		_isdigit
;;		___wmul
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_printf
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text407
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	455
	global	__size_of__doprnt
	__size_of__doprnt	equ	__end_of__doprnt-__doprnt
	
__doprnt:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in __doprnt: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;__doprnt@pb stored from wreg
	movwf	(__doprnt@pb)
	line	540
	
l4752:	
	goto	l4878
	line	542
	
l4754:	
	movf	(__doprnt@c),w
	xorlw	025h
	skipnz
	goto	u1831
	goto	u1830
u1831:
	goto	l4764
u1830:
	line	545
	
l4756:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u1841
	goto	u1840
u1841:
	goto	l4760
u1840:
	
l4758:	
	movf	(__doprnt@c),w
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l4878
	
l4760:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(__doprnt@c),w
	movwf	indf
	
l4762:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	goto	l4878
	line	550
	
l4764:	
	clrf	(__doprnt@width)
	clrf	(__doprnt@width+1)
	line	552
	clrf	(__doprnt@flag)
	goto	l4770
	line	583
	
l2230:	
	line	584
	bsf	(__doprnt@flag)+(2/8),(2)&7
	line	585
	
l4766:	
	incf	(__doprnt@f),f
	line	555
	
l4770:	
	movf	(__doprnt@f),w
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
	goto	l4772
	opt asmopt_on

	line	601
	
l4772:	
	movf	(__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u1851
	goto	u1850
u1851:
	goto	l4784
u1850:
	line	602
	
l4774:	
	clrf	(__doprnt@width)
	clrf	(__doprnt@width+1)
	line	604
	
l4776:	
	movf	(__doprnt@width+1),w
	movwf	(?___wmul+1)
	movf	(__doprnt@width),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	movwf	(??__doprnt+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??__doprnt+0)+0
	movf	0+(??__doprnt+0)+0,w
	addlw	low(0FFD0h)
	movwf	(__doprnt@width)
	movf	1+(??__doprnt+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(__doprnt@width)
	
l4778:	
	incf	(__doprnt@f),f
	line	605
	
l4780:	
	movf	(__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u1861
	goto	u1860
u1861:
	goto	l4776
u1860:
	line	638
	
l4784:	
	movf	(__doprnt@f),w
	incf	(__doprnt@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(__doprnt@c)
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
	goto	l4880
	xorlw	100^0	; case 100
	skipnz
	goto	l4786
	xorlw	105^100	; case 105
	skipnz
	goto	l4786
	goto	l4878
	opt asmopt_on

	line	1254
	
l4786:	
	movf	(__doprnt@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	((??__doprnt+0)+0)
	movlw	02h
	addwf	indf,f
	movf	((??__doprnt+0)+0),w
	movwf	fsr0
	movf	indf,w
	movwf	(__doprnt@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(__doprnt@_val+1)
	line	1256
	
l4788:	
	btfss	(__doprnt@_val+1),7
	goto	u1871
	goto	u1870
u1871:
	goto	l4794
u1870:
	line	1257
	
l4790:	
	movlw	(03h)
	iorwf	(__doprnt@flag),f
	line	1258
	
l4792:	
	comf	(__doprnt@_val),f
	comf	(__doprnt@_val+1),f
	incf	(__doprnt@_val),f
	skipnz
	incf	(__doprnt@_val+1),f
	line	1300
	
l4794:	
	clrf	(__doprnt@c)
	incf	(__doprnt@c),f
	line	1301
	
l4798:	
	clrc
	rlf	(__doprnt@c),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??__doprnt+0)+0
	fcall	stringdir
	movwf	(??__doprnt+0)+0+1
	movf	1+(??__doprnt+0)+0,w
	subwf	(__doprnt@_val+1),w
	skipz
	goto	u1885
	movf	0+(??__doprnt+0)+0,w
	subwf	(__doprnt@_val),w
u1885:
	skipnc
	goto	u1881
	goto	u1880
u1881:
	goto	l4802
u1880:
	goto	l4806
	line	1300
	
l4802:	
	incf	(__doprnt@c),f
	
l4804:	
	movf	(__doprnt@c),w
	xorlw	05h
	skipz
	goto	u1891
	goto	u1890
u1891:
	goto	l4798
u1890:
	line	1340
	
l4806:	
	movf	(__doprnt@width+1),w
	iorwf	(__doprnt@width),w
	skipnz
	goto	u1901
	goto	u1900
u1901:
	goto	l4812
u1900:
	
l4808:	
	movf	(__doprnt@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1911
	goto	u1910
u1911:
	goto	l4812
u1910:
	line	1341
	
l4810:	
	movlw	-1
	addwf	(__doprnt@width),f
	skipc
	decf	(__doprnt@width+1),f
	line	1376
	
l4812:	
	movf	(__doprnt@c),w
	movwf	(??__doprnt+0)+0
	clrf	(??__doprnt+0)+0+1
	btfsc	(??__doprnt+0)+0,7
	decf	(??__doprnt+0)+0+1,f
	movf	1+(??__doprnt+0)+0,w
	xorlw	80h
	movwf	(??__doprnt+2)+0
	movf	(__doprnt@width+1),w
	xorlw	80h
	subwf	(??__doprnt+2)+0,w
	skipz
	goto	u1925
	movf	(__doprnt@width),w
	subwf	0+(??__doprnt+0)+0,w
u1925:

	skipnc
	goto	u1921
	goto	u1920
u1921:
	goto	l4816
u1920:
	line	1377
	
l4814:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@c),w
	movwf	(??__doprnt+0)+0
	clrf	(??__doprnt+0)+0+1
	btfsc	(??__doprnt+0)+0,7
	decf	(??__doprnt+0)+0+1,f
	movf	0+(??__doprnt+0)+0,w
	subwf	(__doprnt@width),f
	movf	1+(??__doprnt+0)+0,w
	skipc
	decf	(__doprnt@width+1),f
	subwf	(__doprnt@width+1),f
	goto	l4818
	line	1379
	
l4816:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(__doprnt@width)
	clrf	(__doprnt@width+1)
	line	1382
	
l4818:	
	btfss	(__doprnt@flag),(2)&7
	goto	u1931
	goto	u1930
u1931:
	goto	l4842
u1930:
	line	1387
	
l4820:	
	movf	(__doprnt@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1941
	goto	u1940
u1941:
	goto	l4830
u1940:
	line	1388
	
l4822:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u1951
	goto	u1950
u1951:
	goto	l4826
u1950:
	
l4824:	
	movlw	(02Dh)
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l4830
	
l4826:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Dh)
	movwf	indf
	
l4828:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1410
	
l4830:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@width+1),w
	iorwf	(__doprnt@width),w
	skipnz
	goto	u1961
	goto	u1960
u1961:
	goto	l4864
u1960:
	line	1412
	
l4832:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u1971
	goto	u1970
u1971:
	goto	l4836
u1970:
	
l4834:	
	movlw	(030h)
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l4840
	
l4836:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(030h)
	movwf	indf
	
l4838:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1413
	
l4840:	
	movlw	-1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(__doprnt@width),f
	skipc
	decf	(__doprnt@width+1),f
	movf	(((__doprnt@width+1))),w
	iorwf	(((__doprnt@width))),w
	skipz
	goto	u1981
	goto	u1980
u1981:
	goto	l4832
u1980:
	goto	l4864
	line	1423
	
l4842:	
	movf	(__doprnt@width+1),w
	iorwf	(__doprnt@width),w
	skipnz
	goto	u1991
	goto	u1990
u1991:
	goto	l4854
u1990:
	line	1425
	
l4844:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u2001
	goto	u2000
u2001:
	goto	l4848
u2000:
	
l4846:	
	movlw	(020h)
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l4852
	
l4848:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(020h)
	movwf	indf
	
l4850:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1426
	
l4852:	
	movlw	-1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(__doprnt@width),f
	skipc
	decf	(__doprnt@width+1),f
	movf	(((__doprnt@width+1))),w
	iorwf	(((__doprnt@width))),w
	skipz
	goto	u2011
	goto	u2010
u2011:
	goto	l4844
u2010:
	line	1433
	
l4854:	
	movf	(__doprnt@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2021
	goto	u2020
u2021:
	goto	l4864
u2020:
	line	1434
	
l4856:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u2031
	goto	u2030
u2031:
	goto	l4860
u2030:
	
l4858:	
	movlw	(02Dh)
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l4864
	
l4860:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Dh)
	movwf	indf
	
l4862:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1467
	
l4864:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@c),w
	movwf	(__doprnt@prec)
	line	1469
	goto	l4876
	line	1484
	
l4866:	
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	clrc
	rlf	(__doprnt@prec),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)
	fcall	stringdir
	movwf	(?___lwdiv+1)
	movf	(__doprnt@_val+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(__doprnt@_val),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(__doprnt@c)
	line	1516
	
l4868:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u2041
	goto	u2040
u2041:
	goto	l4872
u2040:
	
l4870:	
	movf	(__doprnt@c),w
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l4876
	
l4872:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(__doprnt@c),w
	movwf	indf
	
l4874:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1469
	
l4876:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(__doprnt@prec),f
	incf	((__doprnt@prec)),w
	skipz
	goto	u2051
	goto	u2050
u2051:
	goto	l4866
u2050:
	line	540
	
l4878:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@f),w
	incf	(__doprnt@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(__doprnt@c)
	movf	((__doprnt@c)),f
	skipz
	goto	u2061
	goto	u2060
u2061:
	goto	l4754
u2060:
	line	1532
	
l4880:	
	clrf	(?__doprnt)
	clrf	(?__doprnt+1)
	line	1533
	
l2275:	
	return
	opt stack 0
GLOBAL	__end_of__doprnt
	__end_of__doprnt:
;; =============== function __doprnt ends ============

	signat	__doprnt,12410
	global	_putch
psect	text408,local,class=CODE,delta=2
global __ptext408
__ptext408:

;; *************** function _putch *****************
;; Defined at:
;;		line 114 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 05\BT Ôn Thi 05.c"
;; Parameters:    Size  Location     Type
;;  c               1   19[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
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
psect	text408
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 05\BT Ôn Thi 05.c"
	line	114
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _putch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	115
	
l4750:	
;BT Ôn Thi 05.c: 115: lcd_putc(c);
	movf	(putch@c),w
	fcall	_lcd_putc
	line	116
	
l1095:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_putc
psect	text409,local,class=CODE,delta=2
global __ptext409
__ptext409:

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
psect	text409
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
	
l4732:	
;lcd(16).c: 144: switch(c){
	goto	l4748
	line	146
	
l4734:	
;lcd(16).c: 146: lcd_put_byte(0, 1);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	147
;lcd(16).c: 147: while(lcd_busy());
	
l4736:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1801
	goto	u1800
u1801:
	goto	l4736
u1800:
	goto	l2200
	line	150
	
l4738:	
;lcd(16).c: 150: lcd_gotoxy(0, 1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	151
;lcd(16).c: 151: break;
	goto	l2200
	line	153
	
l4740:	
;lcd(16).c: 153: if(isprint(c)){
	movf	(lcd_putc@c),w
	fcall	_isprint
	btfss	status,0
	goto	u1811
	goto	u1810
u1811:
	goto	l2200
u1810:
	line	154
	
l4742:	
;lcd(16).c: 154: lcd_put_byte(1, c);
	movf	(lcd_putc@c),w
	movwf	(?_lcd_put_byte)
	movlw	(01h)
	fcall	_lcd_put_byte
	line	155
;lcd(16).c: 155: while(lcd_busy());
	
l4744:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1821
	goto	u1820
u1821:
	goto	l4744
u1820:
	goto	l2200
	line	144
	
l4748:	
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
	goto	l4738
	xorlw	12^10	; case 12
	skipnz
	goto	l4734
	goto	l4740
	opt asmopt_on

	line	159
	
l2200:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	_lcd_init
psect	text410,local,class=CODE,delta=2
global __ptext410
__ptext410:

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
psect	text410
	file	"D:\TTVXL\Library\lcd(16).c"
	line	5
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l4694:	
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
	
l4696:	
;lcd(16).c: 18: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u2187:
	decfsz	((??_lcd_init+0)+0),f
	goto	u2187
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u2187
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u2187
	nop2
opt asmopt_on

	line	21
	
l4698:	
;lcd(16).c: 21: lcd_put_byte(0,0x30);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	22
	
l4700:	
;lcd(16).c: 22: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u2197:
	decfsz	((??_lcd_init+0)+0),f
	goto	u2197
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u2197
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u2197
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
	
l4702:	
;lcd(16).c: 24: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u2207:
	decfsz	((??_lcd_init+0)+0),f
	goto	u2207
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u2207
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u2207
	nop2
opt asmopt_on

	line	25
	
l4704:	
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
u2217:
	decfsz	((??_lcd_init+0)+0),f
	goto	u2217
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u2217
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u2217
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
u2227:
	decfsz	((??_lcd_init+0)+0),f
	goto	u2227
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u2227
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u2227
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
u2237:
	decfsz	((??_lcd_init+0)+0),f
	goto	u2237
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u2237
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u2237
	nop2
opt asmopt_on

	line	30
;lcd(16).c: 30: while(lcd_busy());
	
l4706:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1731
	goto	u1730
u1731:
	goto	l4706
u1730:
	line	31
	
l4708:	
;lcd(16).c: 31: lcd_put_byte(0,0b00101100 & 0b00111000);
	movlw	(028h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	32
;lcd(16).c: 32: while(lcd_busy());
	
l4710:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1741
	goto	u1740
u1741:
	goto	l4710
u1740:
	line	34
	
l4712:	
;lcd(16).c: 34: lcd_put_byte(0,0b00001011&0b00001101&0b00001110);
	movlw	(08h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	35
;lcd(16).c: 35: while(lcd_busy());
	
l4714:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1751
	goto	u1750
u1751:
	goto	l4714
u1750:
	line	36
	
l4716:	
;lcd(16).c: 36: lcd_put_byte(0,0b00001111&0b00001101&0b00001110);
	movlw	(0Ch)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	37
;lcd(16).c: 37: while(lcd_busy());
	
l4718:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1761
	goto	u1760
u1761:
	goto	l4718
u1760:
	line	39
	
l4720:	
;lcd(16).c: 39: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	40
;lcd(16).c: 40: while(lcd_busy());
	
l4722:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1771
	goto	u1770
u1771:
	goto	l4722
u1770:
	line	41
	
l4724:	
;lcd(16).c: 41: lcd_put_byte(0,0b00000100);
	movlw	(04h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	42
;lcd(16).c: 42: while(lcd_busy());
	
l4726:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1781
	goto	u1780
u1781:
	goto	l4726
u1780:
	line	43
	
l4728:	
;lcd(16).c: 43: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	44
;lcd(16).c: 44: while(lcd_busy());
	
l4730:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1791
	goto	u1790
u1791:
	goto	l4730
u1790:
	line	45
	
l2174:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_gotoxy
psect	text411,local,class=CODE,delta=2
global __ptext411
__ptext411:

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
psect	text411
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
	
l4682:	
;lcd(16).c: 163: unsigned char address;
;lcd(16).c: 165: if(row!=0)
	movf	(lcd_gotoxy@row),w
	skipz
	goto	u1710
	goto	l4686
u1710:
	line	166
	
l4684:	
;lcd(16).c: 166: address=0x40;
	movlw	(040h)
	movwf	(lcd_gotoxy@address)
	goto	l4688
	line	168
	
l4686:	
;lcd(16).c: 167: else
;lcd(16).c: 168: address=0;
	clrf	(lcd_gotoxy@address)
	line	170
	
l4688:	
;lcd(16).c: 170: address += col;
	movf	(lcd_gotoxy@col),w
	addwf	(lcd_gotoxy@address),f
	line	171
	
l4690:	
;lcd(16).c: 171: lcd_put_byte(0,0x80|address);
	movf	(lcd_gotoxy@address),w
	iorlw	080h
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	172
;lcd(16).c: 172: while(lcd_busy());
	
l4692:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1721
	goto	u1720
u1721:
	goto	l4692
u1720:
	line	173
	
l2208:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
;; =============== function _lcd_gotoxy ends ============

	signat	_lcd_gotoxy,8312
	global	_lcd_busy
psect	text412,local,class=CODE,delta=2
global __ptext412
__ptext412:

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
psect	text412
	file	"D:\TTVXL\Library\lcd(16).c"
	line	47
	global	__size_of_lcd_busy
	__size_of_lcd_busy	equ	__end_of_lcd_busy-_lcd_busy
	
_lcd_busy:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _lcd_busy: [wreg]
	line	50
	
l4668:	
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
	
l4670:	
;lcd(16).c: 57: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u2247:
decfsz	(??_lcd_busy+0)+0,f
	goto	u2247
opt asmopt_on

	line	58
	
l4672:	
;lcd(16).c: 58: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	59
;lcd(16).c: 59: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u2257:
decfsz	(??_lcd_busy+0)+0,f
	goto	u2257
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
	
l4674:	
;lcd(16).c: 63: RD3 = 0;
	bcf	(67/8),(67)&7
	line	64
;lcd(16).c: 64: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u2267:
decfsz	(??_lcd_busy+0)+0,f
	goto	u2267
opt asmopt_on

	line	65
	
l4676:	
;lcd(16).c: 65: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	66
;lcd(16).c: 66: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u2277:
decfsz	(??_lcd_busy+0)+0,f
	goto	u2277
opt asmopt_on

	line	67
	
l4678:	
;lcd(16).c: 67: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	70
;lcd(16).c: 70: return busy;
	movf	(lcd_busy@busy),w
	line	71
	
l2177:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_busy
	__end_of_lcd_busy:
;; =============== function _lcd_busy ends ============

	signat	_lcd_busy,89
	global	_send_string
psect	text413,local,class=CODE,delta=2
global __ptext413
__ptext413:

;; *************** function _send_string *****************
;; Defined at:
;;		line 141 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 05\BT Ôn Thi 05.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> data_rx(10), 
;; Auto vars:     Size  Location     Type
;;  s               1   11[BANK0 ] PTR const unsigned char 
;;		 -> data_rx(10), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_send_char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text413
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 05\BT Ôn Thi 05.c"
	line	141
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 3
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	movwf	(send_string@s)
	line	142
	
l4660:	
;BT Ôn Thi 05.c: 142: while(*s) {send_char(*s++);}
	goto	l4666
	
l4662:	
	movf	(send_string@s),w
	movwf	fsr0
	movf	indf,w
	fcall	_send_char
	
l4664:	
	incf	(send_string@s),f
	
l4666:	
	movf	(send_string@s),w
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u1701
	goto	u1700
u1701:
	goto	l4662
u1700:
	line	143
	
l1112:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	_lcd_put_byte
psect	text414,local,class=CODE,delta=2
global __ptext414
__ptext414:

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
psect	text414
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
	
l4624:	
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
	
l4626:	
;lcd(16).c: 115: if(rs) RD1 = 1;
	movf	(lcd_put_byte@rs),w
	skipz
	goto	u1530
	goto	l4630
u1530:
	
l4628:	
	bsf	(65/8),(65)&7
	line	117
	
l4630:	
;lcd(16).c: 117: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u2287:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u2287
opt asmopt_on

	line	118
	
l4632:	
;lcd(16).c: 118: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	119
;lcd(16).c: 119: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u2297:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u2297
opt asmopt_on

	line	120
	
l4634:	
;lcd(16).c: 120: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	122
;lcd(16).c: 122: temp.Val = b;
	movf	(lcd_put_byte@b),w
	movwf	(lcd_put_byte@temp)
	line	125
	
l4636:	
;lcd(16).c: 125: RD4 = temp.bits.b4;
	swapf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u1541
	goto	u1540
	
u1541:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u1554
u1540:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u1554:
	line	126
	
l4638:	
;lcd(16).c: 126: RD5 = temp.bits.b5;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u1561
	goto	u1560
	
u1561:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u1574
u1560:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u1574:
	line	127
	
l4640:	
;lcd(16).c: 127: RD6 = temp.bits.b6;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u1581
	goto	u1580
	
u1581:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u1594
u1580:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u1594:
	line	128
	
l4642:	
;lcd(16).c: 128: RD7 = temp.bits.b7;
	rlf	(lcd_put_byte@temp),w
	rlf	(lcd_put_byte@temp),w
	andlw	1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u1601
	goto	u1600
	
u1601:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u1614
u1600:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u1614:
	line	129
;lcd(16).c: 129: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u2307:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u2307
opt asmopt_on

	line	130
	
l4644:	
;lcd(16).c: 130: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	131
;lcd(16).c: 131: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u2317:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u2317
opt asmopt_on

	line	132
	
l4646:	
;lcd(16).c: 132: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	134
	
l4648:	
;lcd(16).c: 134: RD4 = temp.bits.b0;
	movf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u1621
	goto	u1620
	
u1621:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u1634
u1620:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u1634:
	line	135
	
l4650:	
;lcd(16).c: 135: RD5 = temp.bits.b1;
	rrf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u1641
	goto	u1640
	
u1641:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u1654
u1640:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u1654:
	line	136
	
l4652:	
;lcd(16).c: 136: RD6 = temp.bits.b2;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u1661
	goto	u1660
	
u1661:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u1674
u1660:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u1674:
	line	137
	
l4654:	
;lcd(16).c: 137: RD7 = temp.bits.b3;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u1681
	goto	u1680
	
u1681:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u1694
u1680:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u1694:
	line	138
;lcd(16).c: 138: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u2327:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u2327
opt asmopt_on

	line	139
	
l4656:	
;lcd(16).c: 139: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	140
;lcd(16).c: 140: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u2337:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u2337
opt asmopt_on

	line	141
	
l4658:	
;lcd(16).c: 141: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	142
	
l2185:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_put_byte
	__end_of_lcd_put_byte:
;; =============== function _lcd_put_byte ends ============

	signat	_lcd_put_byte,8312
	global	___lwmod
psect	text415,local,class=CODE,delta=2
global __ptext415
__ptext415:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text415
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 2
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l4498:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u1221
	goto	u1220
u1221:
	goto	l4514
u1220:
	line	9
	
l4500:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l4504
	line	11
	
l4502:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l4504:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u1231
	goto	u1230
u1231:
	goto	l4502
u1230:
	line	15
	
l4506:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u1245
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u1245:
	skipc
	goto	u1241
	goto	u1240
u1241:
	goto	l4510
u1240:
	line	16
	
l4508:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l4510:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l4512:	
	decfsz	(___lwmod@counter),f
	goto	u1251
	goto	u1250
u1251:
	goto	l4506
u1250:
	line	20
	
l4514:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l3313:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text416,local,class=CODE,delta=2
global __ptext416
__ptext416:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text416
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 2
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l4472:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l4474:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u1181
	goto	u1180
u1181:
	goto	l4494
u1180:
	line	11
	
l4476:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l4480
	line	13
	
l4478:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l4480:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1191
	goto	u1190
u1191:
	goto	l4478
u1190:
	line	17
	
l4482:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l4484:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1205
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1205:
	skipc
	goto	u1201
	goto	u1200
u1201:
	goto	l4490
u1200:
	line	19
	
l4486:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l4488:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l4490:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l4492:	
	decfsz	(___lwdiv@counter),f
	goto	u1211
	goto	u1210
u1211:
	goto	l4482
u1210:
	line	25
	
l4494:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l3303:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text417,local,class=CODE,delta=2
global __ptext417
__ptext417:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text417
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 2
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l4456:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l4458:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1161
	goto	u1160
u1161:
	goto	l4462
u1160:
	line	8
	
l4460:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l4462:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l4464:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l4466:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1171
	goto	u1170
u1171:
	goto	l4458
u1170:
	line	12
	
l4468:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l3293:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_isdigit
psect	text418,local,class=CODE,delta=2
global __ptext418
__ptext418:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text418
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 2
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l4444:	
	clrf	(_isdigit$3700)
	
l4446:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u1141
	goto	u1140
u1141:
	goto	l4452
u1140:
	
l4448:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u1151
	goto	u1150
u1151:
	goto	l4452
u1150:
	
l4450:	
	clrf	(_isdigit$3700)
	incf	(_isdigit$3700),f
	
l4452:	
	rrf	(_isdigit$3700),w
	
	line	15
	
l3260:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_isprint
psect	text419,local,class=CODE,delta=2
global __ptext419
__ptext419:

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
psect	text419
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
	
l4432:	
	clrf	(_isprint$3703)
	
l4434:	
	movlw	(07Fh)
	subwf	(isprint@c),w
	skipnc
	goto	u1121
	goto	u1120
u1121:
	goto	l4440
u1120:
	
l4436:	
	movlw	(020h)
	subwf	(isprint@c),w
	skipc
	goto	u1131
	goto	u1130
u1131:
	goto	l4440
u1130:
	
l4438:	
	clrf	(_isprint$3703)
	incf	(_isprint$3703),f
	
l4440:	
	rrf	(_isprint$3703),w
	
	line	15
	
l3265:	
	return
	opt stack 0
GLOBAL	__end_of_isprint
	__end_of_isprint:
;; =============== function _isprint ends ============

	signat	_isprint,4216
	global	_send_char
psect	text420,local,class=CODE,delta=2
global __ptext420
__ptext420:

;; *************** function _send_char *****************
;; Defined at:
;;		line 137 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 05\BT Ôn Thi 05.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   10[BANK0 ] unsigned char 
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
psect	text420
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 05\BT Ôn Thi 05.c"
	line	137
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 3
; Regs used in _send_char: [wreg]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	138
	
l4428:	
;BT Ôn Thi 05.c: 138: while (TXIF==0){}
	
l1103:	
	btfss	(100/8),(100)&7
	goto	u1111
	goto	u1110
u1111:
	goto	l1103
u1110:
	line	139
	
l4430:	
;BT Ôn Thi 05.c: 139: TXREG = data;
	movf	(send_char@data),w
	movwf	(25)	;volatile
	line	140
	
l1106:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_rx
psect	text421,local,class=CODE,delta=2
global __ptext421
__ptext421:

;; *************** function _rx *****************
;; Defined at:
;;		line 153 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 05\BT Ôn Thi 05.c"
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
psect	text421
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 05\BT Ôn Thi 05.c"
	line	153
	global	__size_of_rx
	__size_of_rx	equ	__end_of_rx-_rx
	
_rx:	
	opt	stack 4
; Regs used in _rx: [wreg]
	line	154
	
l4396:	
;BT Ôn Thi 05.c: 154: SYNC = 0; BRGH = 1; BRG16 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	155
	
l4398:	
;BT Ôn Thi 05.c: 155: SPBRGH = 0x02;
	movlw	(02h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	156
;BT Ôn Thi 05.c: 156: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	157
	
l4400:	
;BT Ôn Thi 05.c: 157: CREN = 1; RX9 = 0; SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(196/8),(196)&7
	
l4402:	
	bcf	(198/8),(198)&7
	
l4404:	
	bsf	(199/8),(199)&7
	line	158
	
l4406:	
;BT Ôn Thi 05.c: 158: RCIE=1; RCIF=0; PEIE=1; GIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1125/8)^080h,(1125)&7
	
l4408:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(101/8),(101)&7
	
l4410:	
	bsf	(94/8),(94)&7
	
l4412:	
	bsf	(95/8),(95)&7
	line	159
	
l1118:	
	return
	opt stack 0
GLOBAL	__end_of_rx
	__end_of_rx:
;; =============== function _rx ends ============

	signat	_rx,88
	global	_tx
psect	text422,local,class=CODE,delta=2
global __ptext422
__ptext422:

;; *************** function _tx *****************
;; Defined at:
;;		line 145 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 05\BT Ôn Thi 05.c"
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
psect	text422
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 05\BT Ôn Thi 05.c"
	line	145
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
	
_tx:	
	opt	stack 4
; Regs used in _tx: [wreg]
	line	146
	
l4386:	
;BT Ôn Thi 05.c: 146: SYNC = 0; BRGH = 1; BRG16 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	147
	
l4388:	
;BT Ôn Thi 05.c: 147: SPBRGH = 0x02;
	movlw	(02h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	148
;BT Ôn Thi 05.c: 148: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	149
	
l4390:	
;BT Ôn Thi 05.c: 149: TXEN = 1; TX9 = 0; SPEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	
l4392:	
	bcf	(1222/8)^080h,(1222)&7
	
l4394:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	151
	
l1115:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
;; =============== function _tx ends ============

	signat	_tx,88
	global	_ngat
psect	text423,local,class=CODE,delta=2
global __ptext423
__ptext423:

;; *************** function _ngat *****************
;; Defined at:
;;		line 118 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 05\BT Ôn Thi 05.c"
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
psect	text423
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 05\BT Ôn Thi 05.c"
	line	118
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
psect	text423
	line	119
	
i1l4414:	
;BT Ôn Thi 05.c: 119: TMR1H=246; TMR1L=60;
	movlw	(0F6h)
	movwf	(15)	;volatile
	movlw	(03Ch)
	movwf	(14)	;volatile
	line	120
	
i1l4416:	
;BT Ôn Thi 05.c: 120: if(TMR1IF)
	btfss	(96/8),(96)&7
	goto	u109_21
	goto	u109_20
u109_21:
	goto	i1l4426
u109_20:
	line	122
	
i1l4418:	
;BT Ôn Thi 05.c: 121: {
;BT Ôn Thi 05.c: 122: dem++;
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
	line	123
	
i1l4420:	
;BT Ôn Thi 05.c: 123: if(dem == 2){dem= 0; ms=ms+1;}
	movlw	0x40
	xorwf	(_dem+2),w
	skipz
	goto	u110_25
	movlw	0x0
	xorwf	(_dem+1),w
	skipz
	goto	u110_25
	movlw	0x0
	xorwf	(_dem),w
u110_25:
	skipz
	goto	u110_21
	goto	u110_20
u110_21:
	goto	i1l4426
u110_20:
	
i1l4422:	
	clrf	(_dem)
	clrf	(_dem+1)
	clrf	(_dem+2)
	
i1l4424:	
	incf	(_ms),f
	skipnz
	incf	(_ms+1),f
	line	125
	
i1l4426:	
;BT Ôn Thi 05.c: 124: }
;BT Ôn Thi 05.c: 125: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	126
	
i1l1100:	
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
psect	text424,local,class=CODE,delta=2
global __ptext424
__ptext424:

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
psect	text424
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
i1l4518:	
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
	
i1l4520:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u126_20
	goto	i1l4526
u126_20:
	
i1l4522:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u127_21
	goto	u127_20
u127_21:
	goto	i1l4530
u127_20:
	
i1l4524:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u128_21
	goto	u128_20
u128_21:
	goto	i1l4530
u128_20:
	line	93
	
i1l4526:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	i1l3337
	line	94
	
i1l4530:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u129_20
	goto	i1l3340
u129_20:
	
i1l4532:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u130_21
	goto	u130_20
u130_21:
	goto	i1l4536
u130_20:
	
i1l4534:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u131_21
	goto	u131_20
u131_21:
	goto	i1l4536
u131_20:
	
i1l3340:	
	line	95
	goto	i1l3337
	line	96
	
i1l4536:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
i1l4538:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u132_21
	goto	u132_20
u132_21:
	goto	i1l3341
u132_20:
	line	98
	
i1l4540:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
i1l3341:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u133_21
	goto	u133_20
u133_21:
	goto	i1l3342
u133_20:
	line	100
	
i1l4542:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
i1l3342:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
i1l4544:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
i1l4546:	
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
	goto	u134_21
	goto	u134_20
u134_21:
	goto	i1l4558
u134_20:
	line	110
	
i1l4548:	
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
i1l4550:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u135_21
	goto	u135_20
u135_21:
	goto	i1l4556
u135_20:
	
i1l4552:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u136_21
	goto	u136_20
u136_21:
	goto	i1l4548
u136_20:
	goto	i1l4556
	line	114
	
i1l4554:	
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
i1l4556:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u137_21
	goto	u137_20
u137_21:
	goto	i1l4554
u137_20:
	goto	i1l3351
	line	117
	
i1l4558:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u138_21
	goto	u138_20
u138_21:
	goto	i1l3351
u138_20:
	line	121
	
i1l4560:	
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
i1l4562:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u139_21
	goto	u139_20
u139_21:
	goto	i1l4568
u139_20:
	
i1l4564:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u140_21
	goto	u140_20
u140_21:
	goto	i1l4560
u140_20:
	goto	i1l4568
	line	125
	
i1l4566:	
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
i1l4568:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u141_21
	goto	u141_20
u141_21:
	goto	i1l4566
u141_20:
	line	129
	
i1l3351:	
	btfss	(___ftadd@sign),(7)&7
	goto	u142_21
	goto	u142_20
u142_21:
	goto	i1l4574
u142_20:
	line	131
	
i1l4570:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
i1l4572:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
i1l4574:	
	btfss	(___ftadd@sign),(6)&7
	goto	u143_21
	goto	u143_20
u143_21:
	goto	i1l4580
u143_20:
	line	136
	
i1l4576:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
i1l4578:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
i1l4580:	
	clrf	(___ftadd@sign)
	line	140
	
i1l4582:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u144_21
	addwf	(___ftadd@f2+1),f
u144_21:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u144_22
	addwf	(___ftadd@f2+2),f
u144_22:

	line	141
	
i1l4584:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u145_21
	goto	u145_20
u145_21:
	goto	i1l4592
u145_20:
	line	142
	
i1l4586:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
i1l4588:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
i1l4590:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
i1l4592:	
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
	
i1l3337:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	___ftpack
psect	text425,local,class=CODE,delta=2
global __ptext425
__ptext425:

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
psect	text425
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
i1l4596:	
	movf	(___ftpack@exp),w
	skipz
	goto	u146_20
	goto	i1l4600
u146_20:
	
i1l4598:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u147_21
	goto	u147_20
u147_21:
	goto	i1l4606
u147_20:
	line	65
	
i1l4600:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	i1l3625
	line	67
	
i1l4604:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
i1l4606:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u148_21
	goto	u148_20
u148_21:
	goto	i1l4604
u148_20:
	goto	i1l4610
	line	71
	
i1l4608:	
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
	
i1l4610:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u149_21
	goto	u149_20
u149_21:
	goto	i1l4608
u149_20:
	goto	i1l4614
	line	76
	
i1l4612:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
i1l4614:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u150_21
	goto	u150_20
u150_21:
	goto	i1l4612
u150_20:
	
i1l3634:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u151_21
	goto	u151_20
u151_21:
	goto	i1l3635
u151_20:
	line	80
	
i1l4616:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
i1l3635:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
i1l4618:	
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
	
i1l4620:	
	movf	(___ftpack@sign),w
	skipz
	goto	u152_20
	goto	i1l3636
u152_20:
	line	84
	
i1l4622:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
i1l3636:	
	line	85
	line	86
	
i1l3625:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
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
