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
# 6 "D:\TTVXL\Project TTVXL\BT Ôn Thi 04\BT Ôn Thi 04.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "D:\TTVXL\Project TTVXL\BT Ôn Thi 04\BT Ôn Thi 04.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_tx
	FNCALL	_main,_rx
	FNCALL	_main,___lbtoft
	FNCALL	_main,___ftmul
	FNCALL	_main,___ftadd
	FNCALL	_main,___fttol
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
	FNCALL	__doprnt,___lwdiv
	FNCALL	__doprnt,___lwmod
	FNCALL	_putch,_lcd_putc
	FNCALL	_lcd_putc,_lcd_put_byte
	FNCALL	_lcd_putc,_lcd_busy
	FNCALL	_lcd_putc,_lcd_gotoxy
	FNCALL	_lcd_putc,_isprint
	FNCALL	_lcd_gotoxy,_lcd_put_byte
	FNCALL	_lcd_gotoxy,_lcd_busy
	FNCALL	_lcd_init,_lcd_put_byte
	FNCALL	_lcd_init,_lcd_busy
	FNCALL	___lbtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_send_string,_send_char
	FNROOT	_main
	FNCALL	_ngat,i1___ftadd
	FNCALL	i1___ftadd,i1___ftpack
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
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
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
	global	_count1
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
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_SPBRGH
_SPBRGH	set	154
	global	_TRISD
_TRISD	set	136
	global	_BRGH
_BRGH	set	1218
	global	_PSA
_PSA	set	1035
	global	_RCIE
_RCIE	set	1125
	global	_SYNC
_SYNC	set	1220
	global	_T0CS
_T0CS	set	1037
	global	_T0SE
_T0SE	set	1036
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
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	110	;'n'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	51	;'3'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	78	;'N'
	retlw	104	;'h'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	110	;'n'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	51	;'3'
	retlw	100	;'d'
	retlw	0
psect	strings
	file	"BT Ôn Thi 04.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_dem:
       ds      3

_count1:
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
	global	?___wmul
?___wmul:	; 2 bytes @ 0x8
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x8
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x8
	global	send_char@data
send_char@data:	; 1 bytes @ 0x8
	global	lcd_put_byte@b
lcd_put_byte@b:	; 1 bytes @ 0x8
	global	_isdigit$3687
_isdigit$3687:	; 1 bytes @ 0x8
	global	_isprint$3690
_isprint$3690:	; 1 bytes @ 0x8
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x8
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x8
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x8
	ds	1
	global	??_send_string
??_send_string:	; 0 bytes @ 0x9
	global	??_lcd_put_byte
??_lcd_put_byte:	; 0 bytes @ 0x9
	global	send_string@s
send_string@s:	; 1 bytes @ 0x9
	global	lcd_busy@busy
lcd_busy@busy:	; 1 bytes @ 0x9
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x9
	global	isprint@c
isprint@c:	; 1 bytes @ 0x9
	ds	1
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0xA
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0xA
	ds	1
	global	lcd_put_byte@rs
lcd_put_byte@rs:	; 1 bytes @ 0xB
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0xB
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0xC
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0xC
	global	lcd_put_byte@temp
lcd_put_byte@temp:	; 1 bytes @ 0xC
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0xC
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0xC
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xC
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0xD
	global	?_lcd_gotoxy
?_lcd_gotoxy:	; 0 bytes @ 0xD
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0xD
	global	lcd_gotoxy@row
lcd_gotoxy@row:	; 1 bytes @ 0xD
	ds	1
	global	??_lcd_gotoxy
??_lcd_gotoxy:	; 0 bytes @ 0xE
	global	lcd_gotoxy@col
lcd_gotoxy@col:	; 1 bytes @ 0xE
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xE
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0xF
	global	lcd_gotoxy@address
lcd_gotoxy@address:	; 1 bytes @ 0xF
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0xF
	ds	1
	global	??_lcd_putc
??_lcd_putc:	; 0 bytes @ 0x10
	global	?___fttol
?___fttol:	; 4 bytes @ 0x10
	global	lcd_putc@c
lcd_putc@c:	; 1 bytes @ 0x10
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x10
	ds	1
	global	?_putch
?_putch:	; 0 bytes @ 0x11
	global	putch@c
putch@c:	; 1 bytes @ 0x11
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x11
	ds	1
	global	??_putch
??_putch:	; 0 bytes @ 0x12
	ds	1
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x13
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x13
	ds	1
	global	??___fttol
??___fttol:	; 0 bytes @ 0x14
	global	?__doprnt
?__doprnt:	; 2 bytes @ 0x14
	global	__doprnt@f
__doprnt@f:	; 1 bytes @ 0x14
	ds	1
	global	__doprnt@ap
__doprnt@ap:	; 1 bytes @ 0x15
	ds	1
	global	??__doprnt
??__doprnt:	; 0 bytes @ 0x16
	ds	1
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x17
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x18
	ds	1
	global	__doprnt@prec
__doprnt@prec:	; 1 bytes @ 0x19
	ds	1
	global	__doprnt@_val
__doprnt@_val:	; 4 bytes @ 0x1A
	ds	2
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x1C
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x1D
	global	?___lbtoft
?___lbtoft:	; 3 bytes @ 0x1D
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x1D
	ds	1
	global	__doprnt@flag
__doprnt@flag:	; 1 bytes @ 0x1E
	ds	1
	global	__doprnt@width
__doprnt@width:	; 2 bytes @ 0x1F
	ds	1
	global	??___lbtoft
??___lbtoft:	; 0 bytes @ 0x20
	global	___lbtoft@c
___lbtoft@c:	; 1 bytes @ 0x20
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x20
	ds	1
	global	__doprnt@c
__doprnt@c:	; 1 bytes @ 0x21
	ds	1
	global	__doprnt@pb
__doprnt@pb:	; 1 bytes @ 0x22
	ds	1
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x23
	global	?_printf
?_printf:	; 2 bytes @ 0x23
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x23
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x23
	ds	2
	global	??_printf
??_printf:	; 0 bytes @ 0x25
	global	printf@f
printf@f:	; 1 bytes @ 0x25
	ds	1
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0x26
	global	printf@ap
printf@ap:	; 1 bytes @ 0x26
	global	sprintf@wh
sprintf@wh:	; 1 bytes @ 0x26
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x26
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x27
	global	printf@pb
printf@pb:	; 2 bytes @ 0x27
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x27
	ds	1
	global	sprintf@pb
sprintf@pb:	; 2 bytes @ 0x28
	ds	2
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x2A
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x2B
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x2C
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x2C
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x2F
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x32
	ds	3
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x35
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x36
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x37
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x38
	global	main@data_tx
main@data_tx:	; 10 bytes @ 0x38
	ds	10
;;Data sizes: Strings 47, constant 10, data 0, bss 5, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     66      71
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?i1___ftpack	float  size(1) Largest target is 0
;;
;; ?i1___ftadd	float  size(1) Largest target is 0
;;
;; ?___lbtoft	float  size(1) Largest target is 0
;;
;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 15
;;		 -> STR_3(CODE[15]), 
;;
;; ?_sprintf	int  size(1) Largest target is 10
;;		 -> NULL(NULL[0]), main@data_tx(BANK0[10]), 
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; sprintf@wh	PTR unsigned char  size(1) Largest target is 10
;;		 -> main@data_tx(BANK0[10]), 
;;
;; pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; pb.ptr	PTR unsigned char  size(1) Largest target is 10
;;		 -> NULL(NULL[0]), main@data_tx(BANK0[10]), 
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_2(CODE[15]), STR_1(CODE[17]), 
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
;;		 -> NULL(NULL[0]), main@data_tx(BANK0[10]), 
;;
;; _doprnt@ap	PTR PTR void  size(1) Largest target is 2
;;		 -> sprintf@ap(BANK0[1]), printf@ap(BANK0[1]), 
;;
;; _doprnt@f	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_3(CODE[15]), STR_2(CODE[15]), STR_1(CODE[17]), 
;;
;; S3137__prbuf$func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; _doprnt@pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; S3137__prbuf$ptr	PTR unsigned char  size(1) Largest target is 10
;;		 -> NULL(NULL[0]), main@data_tx(BANK0[10]), 
;;
;; _doprnt@pb.ptr	PTR unsigned char  size(1) Largest target is 10
;;		 -> NULL(NULL[0]), main@data_tx(BANK0[10]), 
;;
;; _doprnt@pb	PTR struct __prbuf size(1) Largest target is 3
;;		 -> sprintf@pb(BANK0[2]), printf@pb(BANK0[2]), 
;;
;; S3162$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; send_string@s	PTR const unsigned char  size(1) Largest target is 10
;;		 -> main@data_tx(BANK0[10]), 
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
;;   _main->___ftadd
;;   _sprintf->__doprnt
;;   _printf->__doprnt
;;   __doprnt->___lwmod
;;   _putch->_lcd_putc
;;   _lcd_putc->_lcd_gotoxy
;;   _lcd_gotoxy->_lcd_put_byte
;;   _lcd_init->_lcd_put_byte
;;   ___lbtoft->___fttol
;;   ___ftmul->___fttol
;;   ___ftadd->___ftmul
;;   _send_string->_send_char
;;   ___fttol->___ftpack
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _ngat in BANK0
;;
;;   _ngat->i1___ftadd
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                10    10      0    8077
;;                                             56 BANK0     10    10      0
;;                           _lcd_init
;;                                 _tx
;;                                 _rx
;;                           ___lbtoft
;;                            ___ftmul
;;                            ___ftadd
;;                            ___fttol
;;                         _lcd_gotoxy
;;                             _printf
;;                            _sprintf
;;                        _send_string
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                              7     4      3    2691
;;                                             35 BANK0      7     4      3
;;                            __doprnt
;; ---------------------------------------------------------------------------------
;; (1) _printf                                               6     4      2    2635
;;                                             35 BANK0      6     4      2
;;                            __doprnt
;; ---------------------------------------------------------------------------------
;; (2) __doprnt                                             15    13      2    2511
;;                                             20 BANK0     15    13      2
;;                   Absolute function
;;                              _putch
;;                            _isdigit
;;                             ___wmul
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (3) _putch                                                1     0      1     713
;;                                             17 BANK0      1     0      1
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (4) _lcd_putc                                             1     1      0     691
;;                                             16 BANK0      1     1      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;;                         _lcd_gotoxy
;;                            _isprint
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
;; (1) ___lbtoft                                             4     1      3     231
;;                                             29 BANK0      4     1      3
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftmul                                             15     9      6     535
;;                                             29 BANK0     15     9      6
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftadd                                             12     6      6    1049
;;                                             44 BANK0     12     6      6
;;                           ___ftpack
;;                           ___lbtoft (ARG)
;;                            ___ftmul (ARG)
;;                            ___fttol (ARG)
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
;; (1) ___fttol                                             13     9      4     252
;;                                             16 BANK0     13     9      4
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftpack                                             8     3      5     209
;;                                              8 BANK0      8     3      5
;; ---------------------------------------------------------------------------------
;; (3) ___lwmod                                              5     1      4     159
;;                                             15 BANK0      5     1      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___lwdiv                                              7     3      4     162
;;                                              8 BANK0      7     3      4
;; ---------------------------------------------------------------------------------
;; (3) ___wmul                                               6     2      4      92
;;                                              8 BANK0      6     2      4
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
;;   ___lbtoft
;;     ___ftpack
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;   ___ftmul
;;     ___ftpack
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;   ___ftadd
;;     ___ftpack
;;     ___lbtoft (ARG)
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     ___ftmul (ARG)
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;   ___fttol
;;     ___ftpack (ARG)
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
;;ABS                  0      0      55       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     42      47       5       88.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      61      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 22 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 04\BT Ôn Thi 04.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data_tx        10   56[BANK0 ] unsigned char [10]
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
;;      Locals:         0      10       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_lcd_init
;;		_tx
;;		_rx
;;		___lbtoft
;;		___ftmul
;;		___ftadd
;;		___fttol
;;		_lcd_gotoxy
;;		_printf
;;		_sprintf
;;		_send_string
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 04\BT Ôn Thi 04.c"
	line	22
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	23
	
l5357:	
;BT Ôn Thi 04.c: 23: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	24
	
l5359:	
;BT Ôn Thi 04.c: 24: lcd_init();
	fcall	_lcd_init
	line	25
	
l5361:	
;BT Ôn Thi 04.c: 25: TRISA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1068/8)^080h,(1068)&7
	line	26
	
l5363:	
;BT Ôn Thi 04.c: 26: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	27
	
l5365:	
;BT Ôn Thi 04.c: 27: TRISE0 = 0;
	bcf	(1096/8)^080h,(1096)&7
	line	28
	
l5367:	
;BT Ôn Thi 04.c: 28: T0CS = 1;
	bsf	(1037/8)^080h,(1037)&7
	line	29
	
l5369:	
;BT Ôn Thi 04.c: 29: PSA = 1;
	bsf	(1035/8)^080h,(1035)&7
	line	31
	
l5371:	
;BT Ôn Thi 04.c: 31: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	32
	
l5373:	
;BT Ôn Thi 04.c: 32: T0SE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1036/8)^080h,(1036)&7
	line	34
	
l5375:	
;BT Ôn Thi 04.c: 34: T0IE = 1;
	bsf	(93/8),(93)&7
	line	35
	
l5377:	
;BT Ôn Thi 04.c: 35: T0IF = 0;
	bcf	(90/8),(90)&7
	line	36
	
l5379:	
;BT Ôn Thi 04.c: 36: GIE = 1;
	bsf	(95/8),(95)&7
	line	39
	
l5381:	
;BT Ôn Thi 04.c: 39: tx();
	fcall	_tx
	line	40
	
l5383:	
;BT Ôn Thi 04.c: 40: rx();
	fcall	_rx
	line	45
	
l5385:	
;BT Ôn Thi 04.c: 44: {
;BT Ôn Thi 04.c: 45: count1 = TMR0+dem*256;
	movf	(1),w	;volatile
	fcall	___lbtoft
	movf	(0+(?___lbtoft)),w
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___lbtoft)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___lbtoft)),w
	movwf	2+(?___ftadd)+03h
	movf	(_dem),w
	movwf	0+(?___ftmul)+03h
	movf	(_dem+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_dem+2),w
	movwf	2+(?___ftmul)+03h
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x80
	movwf	(?___ftmul+1)
	movlw	0x43
	movwf	(?___ftmul+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftmul)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___ftadd+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(?___fttol)
	movf	(1+(?___ftadd)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	movwf	(_count1+1)
	movf	0+(((0+(?___fttol)))),w
	movwf	(_count1)
	line	50
	
l5387:	
;BT Ôn Thi 04.c: 50: lcd_gotoxy(0,0);
	clrf	(?_lcd_gotoxy)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	51
	
l5389:	
;BT Ôn Thi 04.c: 51: printf("Nguyen Phuc Dung");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	52
	
l5391:	
;BT Ôn Thi 04.c: 52: lcd_gotoxy(0,1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	53
	
l5393:	
;BT Ôn Thi 04.c: 53: printf("Nhan nut: %03d",count1);
	movf	(_count1+1),w
	movwf	(?_printf+1)
	movf	(_count1),w
	movwf	(?_printf)
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	line	54
	
l5395:	
;BT Ôn Thi 04.c: 54: sprintf(data_tx,"Nhan nut:%03d ",count1);
	movlw	((STR_3-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(_count1+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_count1),w
	movwf	0+(?_sprintf)+01h
	movlw	(main@data_tx)&0ffh
	fcall	_sprintf
	line	55
	
l5397:	
;BT Ôn Thi 04.c: 55: send_string(data_tx);
	movlw	(main@data_tx)&0ffh
	fcall	_send_string
	goto	l5385
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	58
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_sprintf
psect	text462,local,class=CODE,delta=2
global __ptext462
__ptext462:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\sprintf.c"
;; Parameters:    Size  Location     Type
;;  wh              1    wreg     PTR unsigned char 
;;		 -> main@data_tx(10), 
;;  f               1   35[BANK0 ] PTR const unsigned char 
;;		 -> STR_3(15), 
;; Auto vars:     Size  Location     Type
;;  wh              1   38[BANK0 ] PTR unsigned char 
;;		 -> main@data_tx(10), 
;;  pb              2   40[BANK0 ] struct __prbuf
;;  ap              1   39[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   35[BANK0 ] int 
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
psect	text462
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
	
l5345:	
	movf	(sprintf@wh),w
	movwf	(sprintf@pb)
	line	32
	
l5347:	
	clrf	(0+sprintf@pb+01h)
	line	33
	
l5349:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)
	line	34
	
l5351:	
	movf	(sprintf@f),w
	movwf	(?__doprnt)
	movlw	(sprintf@ap)&0ffh
	movwf	(0+?__doprnt+01h)
	movlw	(sprintf@pb)&0ffh
	fcall	__doprnt
	line	35
	
l5353:	
	movf	(sprintf@pb),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	38
	
l3252:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_printf
psect	text463,local,class=CODE,delta=2
global __ptext463
__ptext463:

;; *************** function _printf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\printf.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_2(15), STR_1(17), 
;; Auto vars:     Size  Location     Type
;;  f               1   37[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(15), STR_1(17), 
;;  pb              2   39[BANK0 ] struct __prbuf
;;  ap              1   38[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   35[BANK0 ] int 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text463
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
	
l5335:	
	clrf	(printf@pb)
	line	24
	
l5337:	
	movlw	((fp__putch-fpbase))&0ffh
	movwf	(0+printf@pb+01h)
	line	25
	
l5339:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)
	line	26
	
l5341:	
;	Return value of _printf is never used
	movf	(printf@f),w
	movwf	(?__doprnt)
	movlw	(printf@ap)&0ffh
	movwf	(0+?__doprnt+01h)
	movlw	(printf@pb)&0ffh
	fcall	__doprnt
	line	28
	
l3245:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	__doprnt
psect	text464,local,class=CODE,delta=2
global __ptext464
__ptext464:

;; *************** function __doprnt *****************
;; Defined at:
;;		line 455 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  pb              1    wreg     PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  f               1   20[BANK0 ] PTR const unsigned char 
;;		 -> STR_3(15), STR_2(15), STR_1(17), 
;;  ap              1   21[BANK0 ] PTR PTR void 
;;		 -> sprintf@ap(1), printf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  pb              1   34[BANK0 ] PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  _val            4   26[BANK0 ] struct .
;;  width           2   31[BANK0 ] int 
;;  c               1   33[BANK0 ] char 
;;  flag            1   30[BANK0 ] unsigned char 
;;  prec            1   25[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  2   20[BANK0 ] int 
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
psect	text464
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
	
l5203:	
	goto	l5329
	line	542
	
l5205:	
	movf	(__doprnt@c),w
	xorlw	025h
	skipnz
	goto	u2841
	goto	u2840
u2841:
	goto	l5215
u2840:
	line	545
	
l5207:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u2851
	goto	u2850
u2851:
	goto	l5211
u2850:
	
l5209:	
	movf	(__doprnt@c),w
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l5329
	
l5211:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(__doprnt@c),w
	movwf	indf
	
l5213:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	goto	l5329
	line	550
	
l5215:	
	clrf	(__doprnt@width)
	clrf	(__doprnt@width+1)
	line	552
	clrf	(__doprnt@flag)
	goto	l5221
	line	583
	
l2201:	
	line	584
	bsf	(__doprnt@flag)+(2/8),(2)&7
	line	585
	
l5217:	
	incf	(__doprnt@f),f
	line	555
	
l5221:	
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
	goto	l2201
	goto	l5223
	opt asmopt_on

	line	601
	
l5223:	
	movf	(__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u2861
	goto	u2860
u2861:
	goto	l5235
u2860:
	line	602
	
l5225:	
	clrf	(__doprnt@width)
	clrf	(__doprnt@width+1)
	line	604
	
l5227:	
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
	
l5229:	
	incf	(__doprnt@f),f
	line	605
	
l5231:	
	movf	(__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u2871
	goto	u2870
u2871:
	goto	l5227
u2870:
	line	638
	
l5235:	
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
	goto	l5331
	xorlw	100^0	; case 100
	skipnz
	goto	l5237
	xorlw	105^100	; case 105
	skipnz
	goto	l5237
	goto	l5329
	opt asmopt_on

	line	1254
	
l5237:	
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
	
l5239:	
	btfss	(__doprnt@_val+1),7
	goto	u2881
	goto	u2880
u2881:
	goto	l5245
u2880:
	line	1257
	
l5241:	
	movlw	(03h)
	iorwf	(__doprnt@flag),f
	line	1258
	
l5243:	
	comf	(__doprnt@_val),f
	comf	(__doprnt@_val+1),f
	incf	(__doprnt@_val),f
	skipnz
	incf	(__doprnt@_val+1),f
	line	1300
	
l5245:	
	clrf	(__doprnt@c)
	incf	(__doprnt@c),f
	line	1301
	
l5249:	
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
	goto	u2895
	movf	0+(??__doprnt+0)+0,w
	subwf	(__doprnt@_val),w
u2895:
	skipnc
	goto	u2891
	goto	u2890
u2891:
	goto	l5253
u2890:
	goto	l5257
	line	1300
	
l5253:	
	incf	(__doprnt@c),f
	
l5255:	
	movf	(__doprnt@c),w
	xorlw	05h
	skipz
	goto	u2901
	goto	u2900
u2901:
	goto	l5249
u2900:
	line	1340
	
l5257:	
	movf	(__doprnt@width+1),w
	iorwf	(__doprnt@width),w
	skipnz
	goto	u2911
	goto	u2910
u2911:
	goto	l5263
u2910:
	
l5259:	
	movf	(__doprnt@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l5263
u2920:
	line	1341
	
l5261:	
	movlw	-1
	addwf	(__doprnt@width),f
	skipc
	decf	(__doprnt@width+1),f
	line	1376
	
l5263:	
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
	goto	u2935
	movf	(__doprnt@width),w
	subwf	0+(??__doprnt+0)+0,w
u2935:

	skipnc
	goto	u2931
	goto	u2930
u2931:
	goto	l5267
u2930:
	line	1377
	
l5265:	
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
	goto	l5269
	line	1379
	
l5267:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(__doprnt@width)
	clrf	(__doprnt@width+1)
	line	1382
	
l5269:	
	btfss	(__doprnt@flag),(2)&7
	goto	u2941
	goto	u2940
u2941:
	goto	l5293
u2940:
	line	1387
	
l5271:	
	movf	(__doprnt@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2951
	goto	u2950
u2951:
	goto	l5281
u2950:
	line	1388
	
l5273:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u2961
	goto	u2960
u2961:
	goto	l5277
u2960:
	
l5275:	
	movlw	(02Dh)
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l5281
	
l5277:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Dh)
	movwf	indf
	
l5279:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1410
	
l5281:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@width+1),w
	iorwf	(__doprnt@width),w
	skipnz
	goto	u2971
	goto	u2970
u2971:
	goto	l5315
u2970:
	line	1412
	
l5283:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u2981
	goto	u2980
u2981:
	goto	l5287
u2980:
	
l5285:	
	movlw	(030h)
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l5291
	
l5287:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(030h)
	movwf	indf
	
l5289:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1413
	
l5291:	
	movlw	-1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(__doprnt@width),f
	skipc
	decf	(__doprnt@width+1),f
	movf	(((__doprnt@width+1))),w
	iorwf	(((__doprnt@width))),w
	skipz
	goto	u2991
	goto	u2990
u2991:
	goto	l5283
u2990:
	goto	l5315
	line	1423
	
l5293:	
	movf	(__doprnt@width+1),w
	iorwf	(__doprnt@width),w
	skipnz
	goto	u3001
	goto	u3000
u3001:
	goto	l5305
u3000:
	line	1425
	
l5295:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u3011
	goto	u3010
u3011:
	goto	l5299
u3010:
	
l5297:	
	movlw	(020h)
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l5303
	
l5299:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(020h)
	movwf	indf
	
l5301:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1426
	
l5303:	
	movlw	-1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(__doprnt@width),f
	skipc
	decf	(__doprnt@width+1),f
	movf	(((__doprnt@width+1))),w
	iorwf	(((__doprnt@width))),w
	skipz
	goto	u3021
	goto	u3020
u3021:
	goto	l5295
u3020:
	line	1433
	
l5305:	
	movf	(__doprnt@flag),w
	andlw	03h
	btfsc	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l5315
u3030:
	line	1434
	
l5307:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u3041
	goto	u3040
u3041:
	goto	l5311
u3040:
	
l5309:	
	movlw	(02Dh)
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l5315
	
l5311:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Dh)
	movwf	indf
	
l5313:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1467
	
l5315:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@c),w
	movwf	(__doprnt@prec)
	line	1469
	goto	l5327
	line	1484
	
l5317:	
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
	
l5319:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u3051
	goto	u3050
u3051:
	goto	l5323
u3050:
	
l5321:	
	movf	(__doprnt@c),w
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l5327
	
l5323:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(__doprnt@c),w
	movwf	indf
	
l5325:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1469
	
l5327:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(__doprnt@prec),f
	incf	((__doprnt@prec)),w
	skipz
	goto	u3061
	goto	u3060
u3061:
	goto	l5317
u3060:
	line	540
	
l5329:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@f),w
	incf	(__doprnt@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(__doprnt@c)
	movf	((__doprnt@c)),f
	skipz
	goto	u3071
	goto	u3070
u3071:
	goto	l5205
u3070:
	line	1532
	
l5331:	
	clrf	(?__doprnt)
	clrf	(?__doprnt+1)
	line	1533
	
l2246:	
	return
	opt stack 0
GLOBAL	__end_of__doprnt
	__end_of__doprnt:
;; =============== function __doprnt ends ============

	signat	__doprnt,12410
	global	_putch
psect	text465,local,class=CODE,delta=2
global __ptext465
__ptext465:

;; *************** function _putch *****************
;; Defined at:
;;		line 61 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 04\BT Ôn Thi 04.c"
;; Parameters:    Size  Location     Type
;;  c               1   17[BANK0 ] unsigned char 
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
psect	text465
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 04\BT Ôn Thi 04.c"
	line	61
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _putch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	62
	
l5201:	
;BT Ôn Thi 04.c: 62: lcd_putc(c);
	movf	(putch@c),w
	fcall	_lcd_putc
	line	63
	
l1067:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_putc
psect	text466,local,class=CODE,delta=2
global __ptext466
__ptext466:

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
psect	text466
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
	
l5183:	
;lcd(16).c: 144: switch(c){
	goto	l5199
	line	146
	
l5185:	
;lcd(16).c: 146: lcd_put_byte(0, 1);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	147
;lcd(16).c: 147: while(lcd_busy());
	
l5187:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u2811
	goto	u2810
u2811:
	goto	l5187
u2810:
	goto	l2171
	line	150
	
l5189:	
;lcd(16).c: 150: lcd_gotoxy(0, 1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	151
;lcd(16).c: 151: break;
	goto	l2171
	line	153
	
l5191:	
;lcd(16).c: 153: if(isprint(c)){
	movf	(lcd_putc@c),w
	fcall	_isprint
	btfss	status,0
	goto	u2821
	goto	u2820
u2821:
	goto	l2171
u2820:
	line	154
	
l5193:	
;lcd(16).c: 154: lcd_put_byte(1, c);
	movf	(lcd_putc@c),w
	movwf	(?_lcd_put_byte)
	movlw	(01h)
	fcall	_lcd_put_byte
	line	155
;lcd(16).c: 155: while(lcd_busy());
	
l5195:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u2831
	goto	u2830
u2831:
	goto	l5195
u2830:
	goto	l2171
	line	144
	
l5199:	
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
	goto	l5189
	xorlw	12^10	; case 12
	skipnz
	goto	l5185
	goto	l5191
	opt asmopt_on

	line	159
	
l2171:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	_lcd_gotoxy
psect	text467,local,class=CODE,delta=2
global __ptext467
__ptext467:

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
psect	text467
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
	
l5171:	
;lcd(16).c: 163: unsigned char address;
;lcd(16).c: 165: if(row!=0)
	movf	(lcd_gotoxy@row),w
	skipz
	goto	u2790
	goto	l5175
u2790:
	line	166
	
l5173:	
;lcd(16).c: 166: address=0x40;
	movlw	(040h)
	movwf	(lcd_gotoxy@address)
	goto	l5177
	line	168
	
l5175:	
;lcd(16).c: 167: else
;lcd(16).c: 168: address=0;
	clrf	(lcd_gotoxy@address)
	line	170
	
l5177:	
;lcd(16).c: 170: address += col;
	movf	(lcd_gotoxy@col),w
	addwf	(lcd_gotoxy@address),f
	line	171
	
l5179:	
;lcd(16).c: 171: lcd_put_byte(0,0x80|address);
	movf	(lcd_gotoxy@address),w
	iorlw	080h
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	172
;lcd(16).c: 172: while(lcd_busy());
	
l5181:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u2801
	goto	u2800
u2801:
	goto	l5181
u2800:
	line	173
	
l2179:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
;; =============== function _lcd_gotoxy ends ============

	signat	_lcd_gotoxy,8312
	global	_lcd_init
psect	text468,local,class=CODE,delta=2
global __ptext468
__ptext468:

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
psect	text468
	file	"D:\TTVXL\Library\lcd(16).c"
	line	5
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l5133:	
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
	
l5135:	
;lcd(16).c: 18: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u3087:
	decfsz	((??_lcd_init+0)+0),f
	goto	u3087
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u3087
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u3087
	nop2
opt asmopt_on

	line	21
	
l5137:	
;lcd(16).c: 21: lcd_put_byte(0,0x30);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	22
	
l5139:	
;lcd(16).c: 22: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u3097:
	decfsz	((??_lcd_init+0)+0),f
	goto	u3097
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u3097
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u3097
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
	
l5141:	
;lcd(16).c: 24: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u3107:
	decfsz	((??_lcd_init+0)+0),f
	goto	u3107
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u3107
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u3107
	nop2
opt asmopt_on

	line	25
	
l5143:	
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
u3117:
	decfsz	((??_lcd_init+0)+0),f
	goto	u3117
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u3117
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u3117
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
u3127:
	decfsz	((??_lcd_init+0)+0),f
	goto	u3127
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u3127
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u3127
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
u3137:
	decfsz	((??_lcd_init+0)+0),f
	goto	u3137
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u3137
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u3137
	nop2
opt asmopt_on

	line	30
;lcd(16).c: 30: while(lcd_busy());
	
l5145:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u2721
	goto	u2720
u2721:
	goto	l5145
u2720:
	line	31
	
l5147:	
;lcd(16).c: 31: lcd_put_byte(0,0b00101100 & 0b00111000);
	movlw	(028h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	32
;lcd(16).c: 32: while(lcd_busy());
	
l5149:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u2731
	goto	u2730
u2731:
	goto	l5149
u2730:
	line	34
	
l5151:	
;lcd(16).c: 34: lcd_put_byte(0,0b00001011&0b00001101&0b00001110);
	movlw	(08h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	35
;lcd(16).c: 35: while(lcd_busy());
	
l5153:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u2741
	goto	u2740
u2741:
	goto	l5153
u2740:
	line	36
	
l5155:	
;lcd(16).c: 36: lcd_put_byte(0,0b00001111&0b00001101&0b00001110);
	movlw	(0Ch)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	37
;lcd(16).c: 37: while(lcd_busy());
	
l5157:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u2751
	goto	u2750
u2751:
	goto	l5157
u2750:
	line	39
	
l5159:	
;lcd(16).c: 39: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	40
;lcd(16).c: 40: while(lcd_busy());
	
l5161:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u2761
	goto	u2760
u2761:
	goto	l5161
u2760:
	line	41
	
l5163:	
;lcd(16).c: 41: lcd_put_byte(0,0b00000100);
	movlw	(04h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	42
;lcd(16).c: 42: while(lcd_busy());
	
l5165:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u2771
	goto	u2770
u2771:
	goto	l5165
u2770:
	line	43
	
l5167:	
;lcd(16).c: 43: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	44
;lcd(16).c: 44: while(lcd_busy());
	
l5169:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u2781
	goto	u2780
u2781:
	goto	l5169
u2780:
	line	45
	
l2145:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	___lbtoft
psect	text469,local,class=CODE,delta=2
global __ptext469
__ptext469:

;; *************** function ___lbtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbtoft.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   32[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   29[BANK0 ] float 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text469
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbtoft.c"
	line	28
	global	__size_of___lbtoft
	__size_of___lbtoft	equ	__end_of___lbtoft-___lbtoft
	
___lbtoft:	
	opt	stack 3
; Regs used in ___lbtoft: [wreg+status,2+status,0+pclath+cstack]
;___lbtoft@c stored from wreg
	movwf	(___lbtoft@c)
	line	29
	
l5129:	
	movf	(___lbtoft@c),w
	movwf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	0+(?___ftpack)+03h
	clrf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lbtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lbtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lbtoft+2)
	line	30
	
l3386:	
	return
	opt stack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
;; =============== function ___lbtoft ends ============

	signat	___lbtoft,4219
	global	___ftmul
psect	text470,local,class=CODE,delta=2
global __ptext470
__ptext470:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   29[BANK0 ] float 
;;  f2              3   32[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   39[BANK0 ] unsigned um
;;  sign            1   43[BANK0 ] unsigned char 
;;  cntr            1   42[BANK0 ] unsigned char 
;;  exp             1   38[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   29[BANK0 ] float 
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
psect	text470
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 3
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l5073:	
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
	goto	u2641
	goto	u2640
u2641:
	goto	l5079
u2640:
	line	57
	
l5075:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l3360
	line	58
	
l5079:	
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
	goto	u2651
	goto	u2650
u2651:
	goto	l5085
u2650:
	line	59
	
l5081:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l3360
	line	60
	
l5085:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l5087:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l5089:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l5091:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l5093:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l5095:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l5097:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l5099:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l5101:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l5103:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l5107
u2660:
	line	72
	
l5105:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2671
	addwf	(___ftmul@f3_as_product+1),f
u2671:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2672
	addwf	(___ftmul@f3_as_product+2),f
u2672:

	line	73
	
l5107:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l5109:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l5111:	
	decfsz	(___ftmul@cntr),f
	goto	u2681
	goto	u2680
u2681:
	goto	l5103
u2680:
	line	76
	
l5113:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l5115:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l5119
u2690:
	line	79
	
l5117:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2701
	addwf	(___ftmul@f3_as_product+1),f
u2701:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2702
	addwf	(___ftmul@f3_as_product+2),f
u2702:

	line	80
	
l5119:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l5121:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l5123:	
	decfsz	(___ftmul@cntr),f
	goto	u2711
	goto	u2710
u2711:
	goto	l5115
u2710:
	line	83
	
l5125:	
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
	
l3360:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftadd
psect	text471,local,class=CODE,delta=2
global __ptext471
__ptext471:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   44[BANK0 ] float 
;;  f2              3   47[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   55[BANK0 ] unsigned char 
;;  exp2            1   54[BANK0 ] unsigned char 
;;  sign            1   53[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text471
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 3
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l4995:	
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
	
l4997:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2440
	goto	l5003
u2440:
	
l4999:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2451
	goto	u2450
u2451:
	goto	l5007
u2450:
	
l5001:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2461
	goto	u2460
u2461:
	goto	l5007
u2460:
	line	93
	
l5003:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l3308
	line	94
	
l5007:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2470
	goto	l3311
u2470:
	
l5009:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2481
	goto	u2480
u2481:
	goto	l5013
u2480:
	
l5011:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2491
	goto	u2490
u2491:
	goto	l5013
u2490:
	
l3311:	
	line	95
	goto	l3308
	line	96
	
l5013:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
l5015:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l3312
u2500:
	line	98
	
l5017:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l3312:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l3313
u2510:
	line	100
	
l5019:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l3313:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l5021:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l5023:	
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
	goto	u2521
	goto	u2520
u2521:
	goto	l5035
u2520:
	line	110
	
l5025:	
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
l5027:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2531
	goto	u2530
u2531:
	goto	l5033
u2530:
	
l5029:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2541
	goto	u2540
u2541:
	goto	l5025
u2540:
	goto	l5033
	line	114
	
l5031:	
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
l5033:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2551
	goto	u2550
u2551:
	goto	l5031
u2550:
	goto	l3322
	line	117
	
l5035:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2561
	goto	u2560
u2561:
	goto	l3322
u2560:
	line	121
	
l5037:	
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
l5039:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2571
	goto	u2570
u2571:
	goto	l5045
u2570:
	
l5041:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l5037
u2580:
	goto	l5045
	line	125
	
l5043:	
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
l5045:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2591
	goto	u2590
u2591:
	goto	l5043
u2590:
	line	129
	
l3322:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l5051
u2600:
	line	131
	
l5047:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
l5049:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
l5051:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l5057
u2610:
	line	136
	
l5053:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
l5055:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
l5057:	
	clrf	(___ftadd@sign)
	line	140
	
l5059:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2621
	addwf	(___ftadd@f2+1),f
u2621:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2622
	addwf	(___ftadd@f2+2),f
u2622:

	line	141
	
l5061:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l5069
u2630:
	line	142
	
l5063:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
l5065:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
l5067:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l5069:	
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
	
l3308:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_lcd_busy
psect	text472,local,class=CODE,delta=2
global __ptext472
__ptext472:

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
psect	text472
	file	"D:\TTVXL\Library\lcd(16).c"
	line	47
	global	__size_of_lcd_busy
	__size_of_lcd_busy	equ	__end_of_lcd_busy-_lcd_busy
	
_lcd_busy:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _lcd_busy: [wreg]
	line	50
	
l4981:	
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
	
l4983:	
;lcd(16).c: 57: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u3147:
decfsz	(??_lcd_busy+0)+0,f
	goto	u3147
opt asmopt_on

	line	58
	
l4985:	
;lcd(16).c: 58: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	59
;lcd(16).c: 59: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u3157:
decfsz	(??_lcd_busy+0)+0,f
	goto	u3157
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
	
l4987:	
;lcd(16).c: 63: RD3 = 0;
	bcf	(67/8),(67)&7
	line	64
;lcd(16).c: 64: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u3167:
decfsz	(??_lcd_busy+0)+0,f
	goto	u3167
opt asmopt_on

	line	65
	
l4989:	
;lcd(16).c: 65: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	66
;lcd(16).c: 66: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u3177:
decfsz	(??_lcd_busy+0)+0,f
	goto	u3177
opt asmopt_on

	line	67
	
l4991:	
;lcd(16).c: 67: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	70
;lcd(16).c: 70: return busy;
	movf	(lcd_busy@busy),w
	line	71
	
l2148:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_busy
	__end_of_lcd_busy:
;; =============== function _lcd_busy ends ============

	signat	_lcd_busy,89
	global	_lcd_put_byte
psect	text473,local,class=CODE,delta=2
global __ptext473
__ptext473:

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
psect	text473
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
	
l4945:	
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
	
l4947:	
;lcd(16).c: 115: if(rs) RD1 = 1;
	movf	(lcd_put_byte@rs),w
	skipz
	goto	u2270
	goto	l4951
u2270:
	
l4949:	
	bsf	(65/8),(65)&7
	line	117
	
l4951:	
;lcd(16).c: 117: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u3187:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u3187
opt asmopt_on

	line	118
	
l4953:	
;lcd(16).c: 118: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	119
;lcd(16).c: 119: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u3197:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u3197
opt asmopt_on

	line	120
	
l4955:	
;lcd(16).c: 120: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	122
;lcd(16).c: 122: temp.Val = b;
	movf	(lcd_put_byte@b),w
	movwf	(lcd_put_byte@temp)
	line	125
	
l4957:	
;lcd(16).c: 125: RD4 = temp.bits.b4;
	swapf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u2281
	goto	u2280
	
u2281:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u2294
u2280:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u2294:
	line	126
	
l4959:	
;lcd(16).c: 126: RD5 = temp.bits.b5;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u2301
	goto	u2300
	
u2301:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u2314
u2300:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u2314:
	line	127
	
l4961:	
;lcd(16).c: 127: RD6 = temp.bits.b6;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u2321
	goto	u2320
	
u2321:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u2334
u2320:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u2334:
	line	128
	
l4963:	
;lcd(16).c: 128: RD7 = temp.bits.b7;
	rlf	(lcd_put_byte@temp),w
	rlf	(lcd_put_byte@temp),w
	andlw	1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u2341
	goto	u2340
	
u2341:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u2354
u2340:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u2354:
	line	129
;lcd(16).c: 129: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u3207:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u3207
opt asmopt_on

	line	130
	
l4965:	
;lcd(16).c: 130: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	131
;lcd(16).c: 131: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u3217:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u3217
opt asmopt_on

	line	132
	
l4967:	
;lcd(16).c: 132: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	134
	
l4969:	
;lcd(16).c: 134: RD4 = temp.bits.b0;
	movf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u2361
	goto	u2360
	
u2361:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u2374
u2360:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u2374:
	line	135
	
l4971:	
;lcd(16).c: 135: RD5 = temp.bits.b1;
	rrf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u2381
	goto	u2380
	
u2381:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u2394
u2380:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u2394:
	line	136
	
l4973:	
;lcd(16).c: 136: RD6 = temp.bits.b2;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u2401
	goto	u2400
	
u2401:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u2414
u2400:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u2414:
	line	137
	
l4975:	
;lcd(16).c: 137: RD7 = temp.bits.b3;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u2421
	goto	u2420
	
u2421:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u2434
u2420:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u2434:
	line	138
;lcd(16).c: 138: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u3227:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u3227
opt asmopt_on

	line	139
	
l4977:	
;lcd(16).c: 139: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	140
;lcd(16).c: 140: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u3237:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u3237
opt asmopt_on

	line	141
	
l4979:	
;lcd(16).c: 141: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	142
	
l2156:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_put_byte
	__end_of_lcd_put_byte:
;; =============== function _lcd_put_byte ends ============

	signat	_lcd_put_byte,8312
	global	_send_string
psect	text474,local,class=CODE,delta=2
global __ptext474
__ptext474:

;; *************** function _send_string *****************
;; Defined at:
;;		line 78 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 04\BT Ôn Thi 04.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> main@data_tx(10), 
;; Auto vars:     Size  Location     Type
;;  s               1    9[BANK0 ] PTR const unsigned char 
;;		 -> main@data_tx(10), 
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
psect	text474
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 04\BT Ôn Thi 04.c"
	line	78
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 3
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	movwf	(send_string@s)
	line	79
	
l4937:	
;BT Ôn Thi 04.c: 79: while(*s) {send_char(*s++);}
	goto	l4943
	
l4939:	
	movf	(send_string@s),w
	movwf	fsr0
	movf	indf,w
	fcall	_send_char
	
l4941:	
	incf	(send_string@s),f
	
l4943:	
	movf	(send_string@s),w
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u2261
	goto	u2260
u2261:
	goto	l4939
u2260:
	line	80
	
l1083:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	___fttol
psect	text475,local,class=CODE,delta=2
global __ptext475
__ptext475:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   16[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   24[BANK0 ] unsigned long 
;;  exp1            1   28[BANK0 ] unsigned char 
;;  sign1           1   23[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   16[BANK0 ] long 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text475
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 4
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l4793:	
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
	goto	u1911
	goto	u1910
u1911:
	goto	l4797
u1910:
	line	50
	
l4795:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l3371
	line	51
	
l4797:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u1925:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u1920:
	addlw	-1
	skipz
	goto	u1925
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l4799:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l4801:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l4803:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l4805:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l4807:	
	btfss	(___fttol@exp1),7
	goto	u1931
	goto	u1930
u1931:
	goto	l4817
u1930:
	line	57
	
l4809:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u1941
	goto	u1940
u1941:
	goto	l4813
u1940:
	goto	l4795
	line	60
	
l4813:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l4815:	
	incfsz	(___fttol@exp1),f
	goto	u1951
	goto	u1950
u1951:
	goto	l4813
u1950:
	goto	l4823
	line	63
	
l4817:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u1961
	goto	u1960
u1961:
	goto	l3378
u1960:
	goto	l4795
	line	66
	
l4821:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l3378:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u1971
	goto	u1970
u1971:
	goto	l4821
u1970:
	line	70
	
l4823:	
	movf	(___fttol@sign1),w
	skipz
	goto	u1980
	goto	l4827
u1980:
	line	71
	
l4825:	
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
	
l4827:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l3371:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text476,local,class=CODE,delta=2
global __ptext476
__ptext476:

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
;;		___lbtoft
;; This function uses a non-reentrant model
;;
psect	text476
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 3
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l4765:	
	movf	(___ftpack@exp),w
	skipz
	goto	u1840
	goto	l4769
u1840:
	
l4767:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1851
	goto	u1850
u1851:
	goto	l4775
u1850:
	line	65
	
l4769:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l3596
	line	67
	
l4773:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l4775:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1861
	goto	u1860
u1861:
	goto	l4773
u1860:
	goto	l4779
	line	71
	
l4777:	
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
	
l4779:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1871
	goto	u1870
u1871:
	goto	l4777
u1870:
	goto	l4783
	line	76
	
l4781:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l4783:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u1881
	goto	u1880
u1881:
	goto	l4781
u1880:
	
l3605:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1891
	goto	u1890
u1891:
	goto	l3606
u1890:
	line	80
	
l4785:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l3606:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l4787:	
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
	
l4789:	
	movf	(___ftpack@sign),w
	skipz
	goto	u1900
	goto	l3607
u1900:
	line	84
	
l4791:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l3607:	
	line	85
	line	86
	
l3596:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lwmod
psect	text477,local,class=CODE,delta=2
global __ptext477
__ptext477:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   15[BANK0 ] unsigned int 
;;  dividend        2   17[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   15[BANK0 ] unsigned int 
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
psect	text477
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 2
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l4745:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u1801
	goto	u1800
u1801:
	goto	l4761
u1800:
	line	9
	
l4747:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l4751
	line	11
	
l4749:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l4751:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u1811
	goto	u1810
u1811:
	goto	l4749
u1810:
	line	15
	
l4753:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u1825
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u1825:
	skipc
	goto	u1821
	goto	u1820
u1821:
	goto	l4757
u1820:
	line	16
	
l4755:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l4757:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l4759:	
	decfsz	(___lwmod@counter),f
	goto	u1831
	goto	u1830
u1831:
	goto	l4753
u1830:
	line	20
	
l4761:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l3284:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text478,local,class=CODE,delta=2
global __ptext478
__ptext478:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[BANK0 ] unsigned int 
;;  dividend        2   10[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   12[BANK0 ] unsigned int 
;;  counter         1   14[BANK0 ] unsigned char 
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
psect	text478
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 2
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l4719:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l4721:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u1761
	goto	u1760
u1761:
	goto	l4741
u1760:
	line	11
	
l4723:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l4727
	line	13
	
l4725:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l4727:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1771
	goto	u1770
u1771:
	goto	l4725
u1770:
	line	17
	
l4729:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l4731:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1785
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1785:
	skipc
	goto	u1781
	goto	u1780
u1781:
	goto	l4737
u1780:
	line	19
	
l4733:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l4735:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l4737:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l4739:	
	decfsz	(___lwdiv@counter),f
	goto	u1791
	goto	u1790
u1791:
	goto	l4729
u1790:
	line	25
	
l4741:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l3274:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text479,local,class=CODE,delta=2
global __ptext479
__ptext479:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text479
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 2
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l4703:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l4705:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1741
	goto	u1740
u1741:
	goto	l4709
u1740:
	line	8
	
l4707:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l4709:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l4711:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l4713:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1751
	goto	u1750
u1751:
	goto	l4705
u1750:
	line	12
	
l4715:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l3264:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_isdigit
psect	text480,local,class=CODE,delta=2
global __ptext480
__ptext480:

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
psect	text480
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 2
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l4691:	
	clrf	(_isdigit$3687)
	
l4693:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u1721
	goto	u1720
u1721:
	goto	l4699
u1720:
	
l4695:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u1731
	goto	u1730
u1731:
	goto	l4699
u1730:
	
l4697:	
	clrf	(_isdigit$3687)
	incf	(_isdigit$3687),f
	
l4699:	
	rrf	(_isdigit$3687),w
	
	line	15
	
l3231:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_isprint
psect	text481,local,class=CODE,delta=2
global __ptext481
__ptext481:

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
psect	text481
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
	
l4679:	
	clrf	(_isprint$3690)
	
l4681:	
	movlw	(07Fh)
	subwf	(isprint@c),w
	skipnc
	goto	u1701
	goto	u1700
u1701:
	goto	l4687
u1700:
	
l4683:	
	movlw	(020h)
	subwf	(isprint@c),w
	skipc
	goto	u1711
	goto	u1710
u1711:
	goto	l4687
u1710:
	
l4685:	
	clrf	(_isprint$3690)
	incf	(_isprint$3690),f
	
l4687:	
	rrf	(_isprint$3690),w
	
	line	15
	
l3236:	
	return
	opt stack 0
GLOBAL	__end_of_isprint
	__end_of_isprint:
;; =============== function _isprint ends ============

	signat	_isprint,4216
	global	_send_char
psect	text482,local,class=CODE,delta=2
global __ptext482
__ptext482:

;; *************** function _send_char *****************
;; Defined at:
;;		line 74 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 04\BT Ôn Thi 04.c"
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
psect	text482
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 04\BT Ôn Thi 04.c"
	line	74
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 3
; Regs used in _send_char: [wreg]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	75
	
l4675:	
;BT Ôn Thi 04.c: 75: while (TXIF==0){}
	
l1074:	
	btfss	(100/8),(100)&7
	goto	u1691
	goto	u1690
u1691:
	goto	l1074
u1690:
	line	76
	
l4677:	
;BT Ôn Thi 04.c: 76: TXREG = data;
	movf	(send_char@data),w
	movwf	(25)	;volatile
	line	77
	
l1077:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_rx
psect	text483,local,class=CODE,delta=2
global __ptext483
__ptext483:

;; *************** function _rx *****************
;; Defined at:
;;		line 89 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 04\BT Ôn Thi 04.c"
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
psect	text483
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 04\BT Ôn Thi 04.c"
	line	89
	global	__size_of_rx
	__size_of_rx	equ	__end_of_rx-_rx
	
_rx:	
	opt	stack 4
; Regs used in _rx: [wreg]
	line	90
	
l4649:	
;BT Ôn Thi 04.c: 90: SYNC = 0; BRGH = 1; BRG16 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	91
	
l4651:	
;BT Ôn Thi 04.c: 91: SPBRGH = 0x02;
	movlw	(02h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	92
;BT Ôn Thi 04.c: 92: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	93
	
l4653:	
;BT Ôn Thi 04.c: 93: CREN = 1; RX9 = 0; SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(196/8),(196)&7
	
l4655:	
	bcf	(198/8),(198)&7
	
l4657:	
	bsf	(199/8),(199)&7
	line	94
	
l4659:	
;BT Ôn Thi 04.c: 94: RCIE=1; RCIF=0; PEIE=1; GIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1125/8)^080h,(1125)&7
	
l4661:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(101/8),(101)&7
	
l4663:	
	bsf	(94/8),(94)&7
	
l4665:	
	bsf	(95/8),(95)&7
	line	95
	
l1089:	
	return
	opt stack 0
GLOBAL	__end_of_rx
	__end_of_rx:
;; =============== function _rx ends ============

	signat	_rx,88
	global	_tx
psect	text484,local,class=CODE,delta=2
global __ptext484
__ptext484:

;; *************** function _tx *****************
;; Defined at:
;;		line 82 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 04\BT Ôn Thi 04.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/20
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
psect	text484
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 04\BT Ôn Thi 04.c"
	line	82
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
	
_tx:	
	opt	stack 4
; Regs used in _tx: [wreg]
	line	83
	
l4639:	
;BT Ôn Thi 04.c: 83: SYNC = 0; BRGH = 1; BRG16 = 1;
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	84
	
l4641:	
;BT Ôn Thi 04.c: 84: SPBRGH = 0x02;
	movlw	(02h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	85
;BT Ôn Thi 04.c: 85: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	86
	
l4643:	
;BT Ôn Thi 04.c: 86: TXEN = 1; TX9 = 0; SPEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	
l4645:	
	bcf	(1222/8)^080h,(1222)&7
	
l4647:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	87
	
l1086:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
;; =============== function _tx ends ============

	signat	_tx,88
	global	_ngat
psect	text485,local,class=CODE,delta=2
global __ptext485
__ptext485:

;; *************** function _ngat *****************
;; Defined at:
;;		line 65 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 04\BT Ôn Thi 04.c"
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
psect	text485
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 04\BT Ôn Thi 04.c"
	line	65
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
psect	text485
	line	66
	
i1l4667:	
;BT Ôn Thi 04.c: 66: if(T0IF)
	btfss	(90/8),(90)&7
	goto	u168_21
	goto	u168_20
u168_21:
	goto	i1l4671
u168_20:
	line	68
	
i1l4669:	
;BT Ôn Thi 04.c: 67: {
;BT Ôn Thi 04.c: 68: dem++;
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
	
i1l4671:	
;BT Ôn Thi 04.c: 69: }
;BT Ôn Thi 04.c: 70: TMR0 = 0;
	clrf	(1)	;volatile
	line	71
	
i1l4673:	
;BT Ôn Thi 04.c: 71: T0IF = 0;
	bcf	(90/8),(90)&7
	line	72
	
i1l1071:	
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
psect	text486,local,class=CODE,delta=2
global __ptext486
__ptext486:

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
psect	text486
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_ofi1___ftadd
	__size_ofi1___ftadd	equ	__end_ofi1___ftadd-i1___ftadd
	
i1___ftadd:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
i1l4831:	
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
	
i1l4833:	
	movf	(i1___ftadd@exp1),w
	skipz
	goto	u199_20
	goto	i1l4839
u199_20:
	
i1l4835:	
	movf	(i1___ftadd@exp2),w
	subwf	(i1___ftadd@exp1),w
	skipnc
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l4843
u200_20:
	
i1l4837:	
	movf	(i1___ftadd@exp2),w
	movwf	(??i1___ftadd+0)+0
	movf	(i1___ftadd@exp1),w
	subwf	(??i1___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??i1___ftadd+0)+0,w
	skipc
	goto	u201_21
	goto	u201_20
u201_21:
	goto	i1l4843
u201_20:
	line	93
	
i1l4839:	
	movf	(i1___ftadd@f2),w
	movwf	(?i1___ftadd)
	movf	(i1___ftadd@f2+1),w
	movwf	(?i1___ftadd+1)
	movf	(i1___ftadd@f2+2),w
	movwf	(?i1___ftadd+2)
	goto	i1l3308
	line	94
	
i1l4843:	
	movf	(i1___ftadd@exp2),w
	skipz
	goto	u202_20
	goto	i1l3311
u202_20:
	
i1l4845:	
	movf	(i1___ftadd@exp1),w
	subwf	(i1___ftadd@exp2),w
	skipnc
	goto	u203_21
	goto	u203_20
u203_21:
	goto	i1l4849
u203_20:
	
i1l4847:	
	movf	(i1___ftadd@exp1),w
	movwf	(??i1___ftadd+0)+0
	movf	(i1___ftadd@exp2),w
	subwf	(??i1___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??i1___ftadd+0)+0,w
	skipc
	goto	u204_21
	goto	u204_20
u204_21:
	goto	i1l4849
u204_20:
	
i1l3311:	
	line	95
	goto	i1l3308
	line	96
	
i1l4849:	
	movlw	(06h)
	movwf	(i1___ftadd@sign)
	line	97
	
i1l4851:	
	btfss	(i1___ftadd@f1+2),(23)&7
	goto	u205_21
	goto	u205_20
u205_21:
	goto	i1l3312
u205_20:
	line	98
	
i1l4853:	
	bsf	(i1___ftadd@sign)+(7/8),(7)&7
	
i1l3312:	
	line	99
	btfss	(i1___ftadd@f2+2),(23)&7
	goto	u206_21
	goto	u206_20
u206_21:
	goto	i1l3313
u206_20:
	line	100
	
i1l4855:	
	bsf	(i1___ftadd@sign)+(6/8),(6)&7
	
i1l3313:	
	line	101
	bsf	(i1___ftadd@f1)+(15/8),(15)&7
	line	102
	
i1l4857:	
	movlw	0FFh
	andwf	(i1___ftadd@f1),f
	movlw	0FFh
	andwf	(i1___ftadd@f1+1),f
	movlw	0
	andwf	(i1___ftadd@f1+2),f
	line	103
	
i1l4859:	
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
	goto	u207_21
	goto	u207_20
u207_21:
	goto	i1l4871
u207_20:
	line	110
	
i1l4861:	
	clrc
	rlf	(i1___ftadd@f2),f
	rlf	(i1___ftadd@f2+1),f
	rlf	(i1___ftadd@f2+2),f
	line	111
	decf	(i1___ftadd@exp2),f
	line	112
	
i1l4863:	
	movf	(i1___ftadd@exp2),w
	xorwf	(i1___ftadd@exp1),w
	skipnz
	goto	u208_21
	goto	u208_20
u208_21:
	goto	i1l4869
u208_20:
	
i1l4865:	
	decf	(i1___ftadd@sign),f
	movf	((i1___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u209_21
	goto	u209_20
u209_21:
	goto	i1l4861
u209_20:
	goto	i1l4869
	line	114
	
i1l4867:	
	clrc
	rrf	(i1___ftadd@f1+2),f
	rrf	(i1___ftadd@f1+1),f
	rrf	(i1___ftadd@f1),f
	line	115
	incf	(i1___ftadd@exp1),f
	line	113
	
i1l4869:	
	movf	(i1___ftadd@exp1),w
	xorwf	(i1___ftadd@exp2),w
	skipz
	goto	u210_21
	goto	u210_20
u210_21:
	goto	i1l4867
u210_20:
	goto	i1l3322
	line	117
	
i1l4871:	
	movf	(i1___ftadd@exp1),w
	subwf	(i1___ftadd@exp2),w
	skipnc
	goto	u211_21
	goto	u211_20
u211_21:
	goto	i1l3322
u211_20:
	line	121
	
i1l4873:	
	clrc
	rlf	(i1___ftadd@f1),f
	rlf	(i1___ftadd@f1+1),f
	rlf	(i1___ftadd@f1+2),f
	line	122
	decf	(i1___ftadd@exp1),f
	line	123
	
i1l4875:	
	movf	(i1___ftadd@exp2),w
	xorwf	(i1___ftadd@exp1),w
	skipnz
	goto	u212_21
	goto	u212_20
u212_21:
	goto	i1l4881
u212_20:
	
i1l4877:	
	decf	(i1___ftadd@sign),f
	movf	((i1___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u213_21
	goto	u213_20
u213_21:
	goto	i1l4873
u213_20:
	goto	i1l4881
	line	125
	
i1l4879:	
	clrc
	rrf	(i1___ftadd@f2+2),f
	rrf	(i1___ftadd@f2+1),f
	rrf	(i1___ftadd@f2),f
	line	126
	incf	(i1___ftadd@exp2),f
	line	124
	
i1l4881:	
	movf	(i1___ftadd@exp1),w
	xorwf	(i1___ftadd@exp2),w
	skipz
	goto	u214_21
	goto	u214_20
u214_21:
	goto	i1l4879
u214_20:
	line	129
	
i1l3322:	
	btfss	(i1___ftadd@sign),(7)&7
	goto	u215_21
	goto	u215_20
u215_21:
	goto	i1l4887
u215_20:
	line	131
	
i1l4883:	
	movlw	0FFh
	xorwf	(i1___ftadd@f1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f1+2),f
	line	132
	
i1l4885:	
	incf	(i1___ftadd@f1),f
	skipnz
	incf	(i1___ftadd@f1+1),f
	skipnz
	incf	(i1___ftadd@f1+2),f
	line	134
	
i1l4887:	
	btfss	(i1___ftadd@sign),(6)&7
	goto	u216_21
	goto	u216_20
u216_21:
	goto	i1l4893
u216_20:
	line	136
	
i1l4889:	
	movlw	0FFh
	xorwf	(i1___ftadd@f2),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+2),f
	line	137
	
i1l4891:	
	incf	(i1___ftadd@f2),f
	skipnz
	incf	(i1___ftadd@f2+1),f
	skipnz
	incf	(i1___ftadd@f2+2),f
	line	139
	
i1l4893:	
	clrf	(i1___ftadd@sign)
	line	140
	
i1l4895:	
	movf	(i1___ftadd@f1),w
	addwf	(i1___ftadd@f2),f
	movf	(i1___ftadd@f1+1),w
	clrz
	skipnc
	incf	(i1___ftadd@f1+1),w
	skipnz
	goto	u217_21
	addwf	(i1___ftadd@f2+1),f
u217_21:
	movf	(i1___ftadd@f1+2),w
	clrz
	skipnc
	incf	(i1___ftadd@f1+2),w
	skipnz
	goto	u217_22
	addwf	(i1___ftadd@f2+2),f
u217_22:

	line	141
	
i1l4897:	
	btfss	(i1___ftadd@f2+2),(23)&7
	goto	u218_21
	goto	u218_20
u218_21:
	goto	i1l4905
u218_20:
	line	142
	
i1l4899:	
	movlw	0FFh
	xorwf	(i1___ftadd@f2),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+2),f
	line	143
	
i1l4901:	
	incf	(i1___ftadd@f2),f
	skipnz
	incf	(i1___ftadd@f2+1),f
	skipnz
	incf	(i1___ftadd@f2+2),f
	line	144
	
i1l4903:	
	clrf	(i1___ftadd@sign)
	incf	(i1___ftadd@sign),f
	line	146
	
i1l4905:	
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
	
i1l3308:	
	return
	opt stack 0
GLOBAL	__end_ofi1___ftadd
	__end_ofi1___ftadd:
;; =============== function i1___ftadd ends ============

	signat	i1___ftadd,91
	global	i1___ftpack
psect	text487,local,class=CODE,delta=2
global __ptext487
__ptext487:

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
psect	text487
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_ofi1___ftpack
	__size_ofi1___ftpack	equ	__end_ofi1___ftpack-i1___ftpack
	
i1___ftpack:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1___ftpack: [wreg+status,2+status,0]
	line	64
	
i1l4909:	
	movf	(i1___ftpack@exp),w
	skipz
	goto	u219_20
	goto	i1l4913
u219_20:
	
i1l4911:	
	movf	(i1___ftpack@arg+2),w
	iorwf	(i1___ftpack@arg+1),w
	iorwf	(i1___ftpack@arg),w
	skipz
	goto	u220_21
	goto	u220_20
u220_21:
	goto	i1l4919
u220_20:
	line	65
	
i1l4913:	
	clrf	(?i1___ftpack)
	clrf	(?i1___ftpack+1)
	clrf	(?i1___ftpack+2)
	goto	i1l3596
	line	67
	
i1l4917:	
	incf	(i1___ftpack@exp),f
	line	68
	clrc
	rrf	(i1___ftpack@arg+2),f
	rrf	(i1___ftpack@arg+1),f
	rrf	(i1___ftpack@arg),f
	line	66
	
i1l4919:	
	movlw	low highword(0FE0000h)
	andwf	(i1___ftpack@arg+2),w
	btfss	status,2
	goto	u221_21
	goto	u221_20
u221_21:
	goto	i1l4917
u221_20:
	goto	i1l4923
	line	71
	
i1l4921:	
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
	
i1l4923:	
	movlw	low highword(0FF0000h)
	andwf	(i1___ftpack@arg+2),w
	btfss	status,2
	goto	u222_21
	goto	u222_20
u222_21:
	goto	i1l4921
u222_20:
	goto	i1l4927
	line	76
	
i1l4925:	
	decf	(i1___ftpack@exp),f
	line	77
	clrc
	rlf	(i1___ftpack@arg),f
	rlf	(i1___ftpack@arg+1),f
	rlf	(i1___ftpack@arg+2),f
	line	75
	
i1l4927:	
	btfss	(i1___ftpack@arg+1),(15)&7
	goto	u223_21
	goto	u223_20
u223_21:
	goto	i1l4925
u223_20:
	
i1l3605:	
	line	79
	btfsc	(i1___ftpack@exp),(0)&7
	goto	u224_21
	goto	u224_20
u224_21:
	goto	i1l3606
u224_20:
	line	80
	
i1l4929:	
	bcf	(i1___ftpack@arg)+(15/8),(15)&7
	
i1l3606:	
	line	81
	clrc
	rrf	(i1___ftpack@exp),f
	line	82
	
i1l4931:	
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
	
i1l4933:	
	movf	(i1___ftpack@sign),w
	skipz
	goto	u225_20
	goto	i1l3607
u225_20:
	line	84
	
i1l4935:	
	bsf	(i1___ftpack@arg)+(23/8),(23)&7
	
i1l3607:	
	line	85
	line	86
	
i1l3596:	
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
