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
# 9 "D:\TTVXL\Project TTVXL\BT03week16ttvxl\BT03week16ttvxl.c"
	psect config,class=CONFIG,delta=2 ;#
# 9 "D:\TTVXL\Project TTVXL\BT03week16ttvxl\BT03week16ttvxl.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_tx_init
	FNCALL	_main,_rx_init
	FNCALL	_main,_atoi
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
	FNCALL	_send_string,_send_char
	FNCALL	_atoi,___wmul
	FNCALL	_atoi,_isdigit
	FNROOT	_main
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
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
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
	global	_i
	global	_number_in
	global	_number_out
	global	_ket_qua
	global	_rx_data
	global	_RCREG
_RCREG	set	26
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
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_SPBRGH
_SPBRGH	set	154
	global	_BRGH
_BRGH	set	1218
	global	_RCIE
_RCIE	set	1125
	global	_SYNC
_SYNC	set	1220
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
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	98	;'b'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	32	;' '
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	53	;'5'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_4:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
	file	"BT03week16ttvxl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_i:
       ds      2

_number_in:
       ds      2

_number_out:
       ds      2

_ket_qua:
       ds      6

_rx_data:
       ds      5

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
	movlw	low((__pbssBANK0)+011h)
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
	global	?_tx_init
?_tx_init:	; 0 bytes @ 0x0
	global	?_rx_init
?_rx_init:	; 0 bytes @ 0x0
	global	?_lcd_putc
?_lcd_putc:	; 0 bytes @ 0x0
	global	?_isprint
?_isprint:	; 1 bit 
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_send_char
?_send_char:	; 0 bytes @ 0x0
	global	?_ngat
?_ngat:	; 0 bytes @ 0x0
	global	??_ngat
??_ngat:	; 0 bytes @ 0x0
	global	?_lcd_busy
?_lcd_busy:	; 1 bytes @ 0x0
	ds	3
	global	??_tx_init
??_tx_init:	; 0 bytes @ 0x3
	global	??_rx_init
??_rx_init:	; 0 bytes @ 0x3
	global	?_lcd_put_byte
?_lcd_put_byte:	; 0 bytes @ 0x3
	global	??_lcd_busy
??_lcd_busy:	; 0 bytes @ 0x3
	global	??_isprint
??_isprint:	; 0 bytes @ 0x3
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x3
	global	??_send_char
??_send_char:	; 0 bytes @ 0x3
	global	?___wmul
?___wmul:	; 2 bytes @ 0x3
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x3
	global	send_char@data
send_char@data:	; 1 bytes @ 0x3
	global	lcd_put_byte@b
lcd_put_byte@b:	; 1 bytes @ 0x3
	global	_isdigit$3692
_isdigit$3692:	; 1 bytes @ 0x3
	global	_isprint$3695
_isprint$3695:	; 1 bytes @ 0x3
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x3
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x3
	ds	1
	global	?_send_string
?_send_string:	; 0 bytes @ 0x4
	global	??_lcd_put_byte
??_lcd_put_byte:	; 0 bytes @ 0x4
	global	lcd_busy@busy
lcd_busy@busy:	; 1 bytes @ 0x4
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x4
	global	isprint@c
isprint@c:	; 1 bytes @ 0x4
	global	send_string@s
send_string@s:	; 2 bytes @ 0x4
	ds	1
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x5
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x5
	ds	1
	global	??_send_string
??_send_string:	; 0 bytes @ 0x6
	global	lcd_put_byte@rs
lcd_put_byte@rs:	; 1 bytes @ 0x6
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x7
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x7
	global	lcd_put_byte@temp
lcd_put_byte@temp:	; 1 bytes @ 0x7
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x7
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x8
	global	?_lcd_gotoxy
?_lcd_gotoxy:	; 0 bytes @ 0x8
	global	lcd_gotoxy@row
lcd_gotoxy@row:	; 1 bytes @ 0x8
	ds	1
	global	??_lcd_gotoxy
??_lcd_gotoxy:	; 0 bytes @ 0x9
	global	?_atoi
?_atoi:	; 2 bytes @ 0x9
	global	lcd_gotoxy@col
lcd_gotoxy@col:	; 1 bytes @ 0x9
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x9
	ds	1
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xA
	global	lcd_gotoxy@address
lcd_gotoxy@address:	; 1 bytes @ 0xA
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xA
	ds	1
	global	??_printf
??_printf:	; 0 bytes @ 0xB
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0xB
	global	??_lcd_putc
??_lcd_putc:	; 0 bytes @ 0xB
	global	??_main
??_main:	; 0 bytes @ 0xB
	global	??_putch
??_putch:	; 0 bytes @ 0xB
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_atoi
??_atoi:	; 0 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	lcd_putc@c
lcd_putc@c:	; 1 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	?_putch
?_putch:	; 0 bytes @ 0x1
	global	putch@c
putch@c:	; 1 bytes @ 0x1
	ds	1
	global	atoi@sign
atoi@sign:	; 1 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	atoi@a
atoi@a:	; 2 bytes @ 0x3
	ds	1
	global	?__doprnt
?__doprnt:	; 2 bytes @ 0x4
	global	__doprnt@f
__doprnt@f:	; 1 bytes @ 0x4
	ds	1
	global	__doprnt@ap
__doprnt@ap:	; 1 bytes @ 0x5
	global	atoi@s
atoi@s:	; 1 bytes @ 0x5
	ds	1
	global	??__doprnt
??__doprnt:	; 0 bytes @ 0x6
	ds	3
	global	__doprnt@prec
__doprnt@prec:	; 1 bytes @ 0x9
	ds	1
	global	__doprnt@_val
__doprnt@_val:	; 4 bytes @ 0xA
	ds	4
	global	__doprnt@flag
__doprnt@flag:	; 1 bytes @ 0xE
	ds	1
	global	__doprnt@width
__doprnt@width:	; 2 bytes @ 0xF
	ds	2
	global	__doprnt@c
__doprnt@c:	; 1 bytes @ 0x11
	ds	1
	global	__doprnt@pb
__doprnt@pb:	; 1 bytes @ 0x12
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0x13
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x13
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x13
	ds	2
	global	printf@f
printf@f:	; 1 bytes @ 0x15
	ds	1
	global	printf@ap
printf@ap:	; 1 bytes @ 0x16
	global	sprintf@wh
sprintf@wh:	; 1 bytes @ 0x16
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x17
	global	printf@pb
printf@pb:	; 2 bytes @ 0x17
	ds	1
	global	sprintf@pb
sprintf@pb:	; 2 bytes @ 0x18
	ds	2
;;Data sizes: Strings 26, constant 10, data 0, bss 17, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      11
;; BANK0           80     26      43
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_atoi	int  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 3
;;		 -> STR_3(CODE[3]), 
;;
;; ?_sprintf	int  size(1) Largest target is 6
;;		 -> NULL(NULL[0]), ket_qua(BANK0[6]), 
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; sprintf@wh	PTR unsigned char  size(1) Largest target is 6
;;		 -> ket_qua(BANK0[6]), 
;;
;; pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; pb.ptr	PTR unsigned char  size(1) Largest target is 6
;;		 -> NULL(NULL[0]), ket_qua(BANK0[6]), 
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 13
;;		 -> STR_2(CODE[7]), STR_1(CODE[13]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; pb.ptr	PTR unsigned char  size(1) Largest target is 6
;;		 -> NULL(NULL[0]), ket_qua(BANK0[6]), 
;;
;; atoi@s	PTR const unsigned char  size(1) Largest target is 5
;;		 -> rx_data(BANK0[5]), 
;;
;; _doprnt@ap	PTR PTR void  size(1) Largest target is 2
;;		 -> sprintf@ap(BANK0[1]), printf@ap(BANK0[1]), 
;;
;; _doprnt@f	PTR const unsigned char  size(1) Largest target is 13
;;		 -> STR_3(CODE[3]), STR_2(CODE[7]), STR_1(CODE[13]), 
;;
;; S3137__prbuf$func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; _doprnt@pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; S3137__prbuf$ptr	PTR unsigned char  size(1) Largest target is 6
;;		 -> NULL(NULL[0]), ket_qua(BANK0[6]), 
;;
;; _doprnt@pb.ptr	PTR unsigned char  size(1) Largest target is 6
;;		 -> NULL(NULL[0]), ket_qua(BANK0[6]), 
;;
;; _doprnt@pb	PTR struct __prbuf size(1) Largest target is 3
;;		 -> sprintf@pb(BANK0[2]), printf@pb(BANK0[2]), 
;;
;; S3162$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; send_string@s	PTR const unsigned char  size(2) Largest target is 6
;;		 -> STR_4(CODE[3]), ket_qua(BANK0[6]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_init
;;   _main->_atoi
;;   _main->_lcd_gotoxy
;;   __doprnt->___lwmod
;;   _lcd_putc->_lcd_gotoxy
;;   _lcd_gotoxy->_lcd_put_byte
;;   _lcd_init->_lcd_put_byte
;;   _send_string->_send_char
;;   _atoi->___wmul
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _ngat in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_sprintf
;;   _sprintf->__doprnt
;;   _printf->__doprnt
;;   __doprnt->___lwmod
;;   _putch->_lcd_putc
;;
;; Critical Paths under _ngat in BANK0
;;
;;   None.
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
;; (0) _main                                                 0     0      0    6434
;;                           _lcd_init
;;                            _tx_init
;;                            _rx_init
;;                               _atoi
;;                         _lcd_gotoxy
;;                             _printf
;;                            _sprintf
;;                        _send_string
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                              7     4      3    2739
;;                                             19 BANK0      7     4      3
;;                            __doprnt
;; ---------------------------------------------------------------------------------
;; (1) _printf                                               6     4      2    2683
;;                                             19 BANK0      6     4      2
;;                            __doprnt
;; ---------------------------------------------------------------------------------
;; (2) __doprnt                                             15    13      2    2557
;;                                              4 BANK0     15    13      2
;;                   Absolute function
;;                              _putch
;;                            _isdigit
;;                             ___wmul
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (3) _putch                                                1     0      1     713
;;                                              1 BANK0      1     0      1
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (4) _lcd_putc                                             1     1      0     691
;;                                              0 BANK0      1     1      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;;                         _lcd_gotoxy
;;                            _isprint
;; ---------------------------------------------------------------------------------
;; (5) _lcd_gotoxy                                           3     2      1     313
;;                                              8 COMMON     3     2      1
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             4     4      0     244
;;                                              8 COMMON     3     3      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (6) _lcd_busy                                             2     2      0      23
;;                                              3 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (6) _lcd_put_byte                                         5     4      1     221
;;                                              3 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (1) _send_string                                          2     0      2      67
;;                                              4 COMMON     2     0      2
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (1) _atoi                                                 8     6      2     388
;;                                              9 COMMON     2     0      2
;;                                              0 BANK0      6     6      0
;;                             ___wmul
;;                            _isdigit
;; ---------------------------------------------------------------------------------
;; (3) ___lwmod                                              5     1      4     159
;;                                             10 COMMON     1     1      0
;;                                              0 BANK0      4     0      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___lwdiv                                              7     3      4     162
;;                                              3 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (3) ___wmul                                               6     2      4      92
;;                                              3 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (3) _isdigit                                              2     2      0      68
;;                                              3 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (3) Absolute function(Fake)                               1     0      1       0
;;                                              3 COMMON     1     0      1
;; ---------------------------------------------------------------------------------
;; (5) _isprint                                              2     2      0      68
;;                                              3 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _send_char                                            1     1      0      22
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _rx_init                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _tx_init                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (7) _ngat                                                 3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 7
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_put_byte
;;     _lcd_busy
;;   _tx_init
;;   _rx_init
;;   _atoi
;;     ___wmul
;;     _isdigit
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
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      B       B       1       78.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       6       2        0.0%
;;ABS                  0      0      36       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     1A      2B       5       53.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      3C      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 20 in file "D:\TTVXL\Project TTVXL\BT03week16ttvxl\BT03week16ttvxl.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_lcd_init
;;		_tx_init
;;		_rx_init
;;		_atoi
;;		_lcd_gotoxy
;;		_printf
;;		_sprintf
;;		_send_string
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT03week16ttvxl\BT03week16ttvxl.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	21
	
l4650:	
;BT03week16ttvxl.c: 21: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	22
	
l4652:	
;BT03week16ttvxl.c: 22: lcd_init();
	fcall	_lcd_init
	line	23
	
l4654:	
;BT03week16ttvxl.c: 23: tx_init();
	fcall	_tx_init
	line	24
	
l4656:	
;BT03week16ttvxl.c: 24: rx_init();
	fcall	_rx_init
	line	27
	
l4658:	
;BT03week16ttvxl.c: 27: RCIF = 0;
	bcf	(101/8),(101)&7
	line	28
	
l4660:	
;BT03week16ttvxl.c: 28: RCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1125/8)^080h,(1125)&7
	line	29
	
l4662:	
;BT03week16ttvxl.c: 29: PEIE = 1;
	bsf	(94/8),(94)&7
	line	30
	
l4664:	
;BT03week16ttvxl.c: 30: GIE = 1;
	bsf	(95/8),(95)&7
	line	32
	
l4666:	
;BT03week16ttvxl.c: 32: i=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_i)
	clrf	(_i+1)
	line	35
	
l4668:	
;BT03week16ttvxl.c: 34: {
;BT03week16ttvxl.c: 35: number_in = atoi(rx_data);
	movlw	(_rx_data)&0ffh
	fcall	_atoi
	movf	(1+(?_atoi)),w
	movwf	(_number_in+1)
	movf	(0+(?_atoi)),w
	movwf	(_number_in)
	line	36
	
l4670:	
;BT03week16ttvxl.c: 36: number_out = number_in + 10;
	movf	(_number_in+1),w
	movwf	(_number_out+1)
	movf	(_number_in),w
	movwf	(_number_out)
	
l4672:	
	movlw	0Ah
	addwf	(_number_out),f
	skipnc
	incf	(_number_out+1),f
	line	38
	
l4674:	
;BT03week16ttvxl.c: 38: lcd_gotoxy(2,0);
	clrf	(?_lcd_gotoxy)
	movlw	(02h)
	fcall	_lcd_gotoxy
	line	39
	
l4676:	
;BT03week16ttvxl.c: 39: printf("Numbers is: ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	40
	
l4678:	
;BT03week16ttvxl.c: 40: lcd_gotoxy(4,1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(04h)
	fcall	_lcd_gotoxy
	line	41
	
l4680:	
;BT03week16ttvxl.c: 41: printf(" %05u ",number_in);
	movf	(_number_in+1),w
	movwf	(?_printf+1)
	movf	(_number_in),w
	movwf	(?_printf)
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	line	43
	
l4682:	
;BT03week16ttvxl.c: 43: sprintf(ket_qua,"%d",number_out);
	movlw	((STR_3-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(_number_out+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_number_out),w
	movwf	0+(?_sprintf)+01h
	movlw	(_ket_qua)&0ffh
	fcall	_sprintf
	line	44
	
l4684:	
;BT03week16ttvxl.c: 44: send_string(ket_qua);
	movlw	(_ket_qua&0ffh)
	movwf	(?_send_string)
	movlw	(0x0/2)
	movwf	(?_send_string+1)
	fcall	_send_string
	line	45
	
l4686:	
;BT03week16ttvxl.c: 45: send_string("  ");
	movlw	low((STR_4-__stringbase))
	movwf	(?_send_string)
	movlw	80h
	movwf	(?_send_string+1)
	fcall	_send_string
	goto	l4668
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	48
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_sprintf
psect	text400,local,class=CODE,delta=2
global __ptext400
__ptext400:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\sprintf.c"
;; Parameters:    Size  Location     Type
;;  wh              1    wreg     PTR unsigned char 
;;		 -> ket_qua(6), 
;;  f               1   19[BANK0 ] PTR const unsigned char 
;;		 -> STR_3(3), 
;; Auto vars:     Size  Location     Type
;;  wh              1   22[BANK0 ] PTR unsigned char 
;;		 -> ket_qua(6), 
;;  pb              2   24[BANK0 ] struct __prbuf
;;  ap              1   23[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   19[BANK0 ] int 
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text400
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\sprintf.c"
	line	14
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 1
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@wh stored from wreg
	line	31
	movwf	(sprintf@wh)
	
l4638:	
	movf	(sprintf@wh),w
	movwf	(sprintf@pb)
	line	32
	
l4640:	
	clrf	(0+sprintf@pb+01h)
	line	33
	
l4642:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)
	line	34
	
l4644:	
	movf	(sprintf@f),w
	movwf	(?__doprnt)
	movlw	(sprintf@ap)&0ffh
	movwf	(0+?__doprnt+01h)
	movlw	(sprintf@pb)&0ffh
	fcall	__doprnt
	line	35
	
l4646:	
	movf	(sprintf@pb),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	38
	
l3263:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_printf
psect	text401,local,class=CODE,delta=2
global __ptext401
__ptext401:

;; *************** function _printf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\printf.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_2(7), STR_1(13), 
;; Auto vars:     Size  Location     Type
;;  f               1   21[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(7), STR_1(13), 
;;  pb              2   23[BANK0 ] struct __prbuf
;;  ap              1   22[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   19[BANK0 ] int 
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text401
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\printf.c"
	line	14
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 1
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	23
	movwf	(printf@f)
	
l4628:	
	clrf	(printf@pb)
	line	24
	
l4630:	
	movlw	((fp__putch-fpbase))&0ffh
	movwf	(0+printf@pb+01h)
	line	25
	
l4632:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)
	line	26
	
l4634:	
;	Return value of _printf is never used
	movf	(printf@f),w
	movwf	(?__doprnt)
	movlw	(printf@ap)&0ffh
	movwf	(0+?__doprnt+01h)
	movlw	(printf@pb)&0ffh
	fcall	__doprnt
	line	28
	
l3256:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	__doprnt
psect	text402,local,class=CODE,delta=2
global __ptext402
__ptext402:

;; *************** function __doprnt *****************
;; Defined at:
;;		line 455 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  pb              1    wreg     PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  f               1    4[BANK0 ] PTR const unsigned char 
;;		 -> STR_3(3), STR_2(7), STR_1(13), 
;;  ap              1    5[BANK0 ] PTR PTR void 
;;		 -> sprintf@ap(1), printf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  pb              1   18[BANK0 ] PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  _val            4   10[BANK0 ] struct .
;;  width           2   15[BANK0 ] int 
;;  c               1   17[BANK0 ] char 
;;  flag            1   14[BANK0 ] unsigned char 
;;  prec            1    9[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  2    4[BANK0 ] int 
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
;; Hardware stack levels required when called:    5
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
psect	text402
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	455
	global	__size_of__doprnt
	__size_of__doprnt	equ	__end_of__doprnt-__doprnt
	
__doprnt:	
	opt	stack 1
; Regs used in __doprnt: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;__doprnt@pb stored from wreg
	movwf	(__doprnt@pb)
	line	540
	
l4492:	
	goto	l4622
	line	542
	
l4494:	
	movf	(__doprnt@c),w
	xorlw	025h
	skipnz
	goto	u1321
	goto	u1320
u1321:
	goto	l4504
u1320:
	line	545
	
l4496:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u1331
	goto	u1330
u1331:
	goto	l4500
u1330:
	
l4498:	
	movf	(__doprnt@c),w
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l4622
	
l4500:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(__doprnt@c),w
	movwf	indf
	
l4502:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	goto	l4622
	line	550
	
l4504:	
	clrf	(__doprnt@width)
	clrf	(__doprnt@width+1)
	line	552
	clrf	(__doprnt@flag)
	goto	l4510
	line	583
	
l2194:	
	line	584
	bsf	(__doprnt@flag)+(2/8),(2)&7
	line	585
	
l4506:	
	incf	(__doprnt@f),f
	line	555
	
l4510:	
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
	goto	l2194
	goto	l4512
	opt asmopt_on

	line	601
	
l4512:	
	movf	(__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u1341
	goto	u1340
u1341:
	goto	l4524
u1340:
	line	602
	
l4514:	
	clrf	(__doprnt@width)
	clrf	(__doprnt@width+1)
	line	604
	
l4516:	
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
	
l4518:	
	incf	(__doprnt@f),f
	line	605
	
l4520:	
	movf	(__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u1351
	goto	u1350
u1351:
	goto	l4516
u1350:
	goto	l4524
	line	820
	
l2208:	
	line	821
	bsf	(__doprnt@flag)+(6/8),(6)&7
	line	822
	goto	l2206
	line	638
	
l4524:	
	movf	(__doprnt@f),w
	incf	(__doprnt@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(__doprnt@c)
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 117
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; jumptable            260     6 (fixed)
; rangetable           122     6 (fixed)
; spacedrange          242     9 (fixed)
; locatedrange         118     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l4624
	xorlw	100^0	; case 100
	skipnz
	goto	l2206
	xorlw	105^100	; case 105
	skipnz
	goto	l2206
	xorlw	117^105	; case 117
	skipnz
	goto	l2208
	goto	l4622
	opt asmopt_on

	line	825
	
l2206:	
	line	1246
	btfsc	(__doprnt@flag),(6)&7
	goto	u1361
	goto	u1360
u1361:
	goto	l4534
u1360:
	line	1254
	
l4526:	
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
	
l4528:	
	btfss	(__doprnt@_val+1),7
	goto	u1371
	goto	u1370
u1371:
	goto	l4536
u1370:
	line	1257
	
l4530:	
	movlw	(03h)
	iorwf	(__doprnt@flag),f
	line	1258
	
l4532:	
	comf	(__doprnt@_val),f
	comf	(__doprnt@_val+1),f
	incf	(__doprnt@_val),f
	skipnz
	incf	(__doprnt@_val+1),f
	goto	l4536
	line	1281
	
l4534:	
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
	line	1300
	
l4536:	
	clrf	(__doprnt@c)
	incf	(__doprnt@c),f
	line	1301
	
l4542:	
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
	goto	u1385
	movf	0+(??__doprnt+0)+0,w
	subwf	(__doprnt@_val),w
u1385:
	skipnc
	goto	u1381
	goto	u1380
u1381:
	goto	l4546
u1380:
	goto	l4550
	line	1300
	
l4546:	
	incf	(__doprnt@c),f
	
l4548:	
	movf	(__doprnt@c),w
	xorlw	05h
	skipz
	goto	u1391
	goto	u1390
u1391:
	goto	l4542
u1390:
	line	1340
	
l4550:	
	movf	(__doprnt@width+1),w
	iorwf	(__doprnt@width),w
	skipnz
	goto	u1401
	goto	u1400
u1401:
	goto	l4556
u1400:
	
l4552:	
	movf	(__doprnt@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1411
	goto	u1410
u1411:
	goto	l4556
u1410:
	line	1341
	
l4554:	
	movlw	-1
	addwf	(__doprnt@width),f
	skipc
	decf	(__doprnt@width+1),f
	line	1376
	
l4556:	
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
	goto	u1425
	movf	(__doprnt@width),w
	subwf	0+(??__doprnt+0)+0,w
u1425:

	skipnc
	goto	u1421
	goto	u1420
u1421:
	goto	l4560
u1420:
	line	1377
	
l4558:	
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
	goto	l4562
	line	1379
	
l4560:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(__doprnt@width)
	clrf	(__doprnt@width+1)
	line	1382
	
l4562:	
	btfss	(__doprnt@flag),(2)&7
	goto	u1431
	goto	u1430
u1431:
	goto	l4586
u1430:
	line	1387
	
l4564:	
	movf	(__doprnt@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1441
	goto	u1440
u1441:
	goto	l4574
u1440:
	line	1388
	
l4566:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u1451
	goto	u1450
u1451:
	goto	l4570
u1450:
	
l4568:	
	movlw	(02Dh)
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l4574
	
l4570:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Dh)
	movwf	indf
	
l4572:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1410
	
l4574:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@width+1),w
	iorwf	(__doprnt@width),w
	skipnz
	goto	u1461
	goto	u1460
u1461:
	goto	l4608
u1460:
	line	1412
	
l4576:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u1471
	goto	u1470
u1471:
	goto	l4580
u1470:
	
l4578:	
	movlw	(030h)
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l4584
	
l4580:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(030h)
	movwf	indf
	
l4582:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1413
	
l4584:	
	movlw	-1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(__doprnt@width),f
	skipc
	decf	(__doprnt@width+1),f
	movf	(((__doprnt@width+1))),w
	iorwf	(((__doprnt@width))),w
	skipz
	goto	u1481
	goto	u1480
u1481:
	goto	l4576
u1480:
	goto	l4608
	line	1423
	
l4586:	
	movf	(__doprnt@width+1),w
	iorwf	(__doprnt@width),w
	skipnz
	goto	u1491
	goto	u1490
u1491:
	goto	l4598
u1490:
	line	1425
	
l4588:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u1501
	goto	u1500
u1501:
	goto	l4592
u1500:
	
l4590:	
	movlw	(020h)
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l4596
	
l4592:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(020h)
	movwf	indf
	
l4594:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1426
	
l4596:	
	movlw	-1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(__doprnt@width),f
	skipc
	decf	(__doprnt@width+1),f
	movf	(((__doprnt@width+1))),w
	iorwf	(((__doprnt@width))),w
	skipz
	goto	u1511
	goto	u1510
u1511:
	goto	l4588
u1510:
	line	1433
	
l4598:	
	movf	(__doprnt@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1521
	goto	u1520
u1521:
	goto	l4608
u1520:
	line	1434
	
l4600:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u1531
	goto	u1530
u1531:
	goto	l4604
u1530:
	
l4602:	
	movlw	(02Dh)
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l4608
	
l4604:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Dh)
	movwf	indf
	
l4606:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1467
	
l4608:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@c),w
	movwf	(__doprnt@prec)
	line	1469
	goto	l4620
	line	1484
	
l4610:	
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
	
l4612:	
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u1541
	goto	u1540
u1541:
	goto	l4616
u1540:
	
l4614:	
	movf	(__doprnt@c),w
	movwf	(?_putch)
	movf	(__doprnt@pb),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l4620
	
l4616:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(__doprnt@c),w
	movwf	indf
	
l4618:	
	movf	(__doprnt@pb),w
	movwf	fsr0
	incf	indf,f
	line	1469
	
l4620:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(__doprnt@prec),f
	incf	((__doprnt@prec)),w
	skipz
	goto	u1551
	goto	u1550
u1551:
	goto	l4610
u1550:
	line	540
	
l4622:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@f),w
	incf	(__doprnt@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(__doprnt@c)
	movf	((__doprnt@c)),f
	skipz
	goto	u1561
	goto	u1560
u1561:
	goto	l4494
u1560:
	line	1532
	
l4624:	
	clrf	(?__doprnt)
	clrf	(?__doprnt+1)
	line	1533
	
l2242:	
	return
	opt stack 0
GLOBAL	__end_of__doprnt
	__end_of__doprnt:
;; =============== function __doprnt ends ============

	signat	__doprnt,12410
	global	_putch
psect	text403,local,class=CODE,delta=2
global __ptext403
__ptext403:

;; *************** function _putch *****************
;; Defined at:
;;		line 93 in file "D:\TTVXL\Project TTVXL\BT03week16ttvxl\BT03week16ttvxl.c"
;; Parameters:    Size  Location     Type
;;  c               1    1[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_putc
;; This function is called by:
;;		_printf
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text403
	file	"D:\TTVXL\Project TTVXL\BT03week16ttvxl\BT03week16ttvxl.c"
	line	93
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 1
; Regs used in _putch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	94
	
l4490:	
;BT03week16ttvxl.c: 94: lcd_putc(c);
	movf	(putch@c),w
	fcall	_lcd_putc
	line	95
	
l1082:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_putc
psect	text404,local,class=CODE,delta=2
global __ptext404
__ptext404:

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 143 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    0[BANK0 ] unsigned char 
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
psect	text404
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
	
l4472:	
;lcd(16).c: 144: switch(c){
	goto	l4488
	line	146
	
l4474:	
;lcd(16).c: 146: lcd_put_byte(0, 1);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	147
;lcd(16).c: 147: while(lcd_busy());
	
l4476:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1291
	goto	u1290
u1291:
	goto	l4476
u1290:
	goto	l2164
	line	150
	
l4478:	
;lcd(16).c: 150: lcd_gotoxy(0, 1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	151
;lcd(16).c: 151: break;
	goto	l2164
	line	153
	
l4480:	
;lcd(16).c: 153: if(isprint(c)){
	movf	(lcd_putc@c),w
	fcall	_isprint
	btfss	status,0
	goto	u1301
	goto	u1300
u1301:
	goto	l2164
u1300:
	line	154
	
l4482:	
;lcd(16).c: 154: lcd_put_byte(1, c);
	movf	(lcd_putc@c),w
	movwf	(?_lcd_put_byte)
	movlw	(01h)
	fcall	_lcd_put_byte
	line	155
;lcd(16).c: 155: while(lcd_busy());
	
l4484:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1311
	goto	u1310
u1311:
	goto	l4484
u1310:
	goto	l2164
	line	144
	
l4488:	
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
	goto	l4478
	xorlw	12^10	; case 12
	skipnz
	goto	l4474
	goto	l4480
	opt asmopt_on

	line	159
	
l2164:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	_lcd_gotoxy
psect	text405,local,class=CODE,delta=2
global __ptext405
__ptext405:

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 162 in file "D:\TTVXL\Library\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1    8[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1    9[COMMON] unsigned char 
;;  address         1   10[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_main
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text405
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
	
l4460:	
;lcd(16).c: 163: unsigned char address;
;lcd(16).c: 165: if(row!=0)
	movf	(lcd_gotoxy@row),w
	skipz
	goto	u1270
	goto	l4464
u1270:
	line	166
	
l4462:	
;lcd(16).c: 166: address=0x40;
	movlw	(040h)
	movwf	(lcd_gotoxy@address)
	goto	l4466
	line	168
	
l4464:	
;lcd(16).c: 167: else
;lcd(16).c: 168: address=0;
	clrf	(lcd_gotoxy@address)
	line	170
	
l4466:	
;lcd(16).c: 170: address += col;
	movf	(lcd_gotoxy@col),w
	addwf	(lcd_gotoxy@address),f
	line	171
	
l4468:	
;lcd(16).c: 171: lcd_put_byte(0,0x80|address);
	movf	(lcd_gotoxy@address),w
	iorlw	080h
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	172
;lcd(16).c: 172: while(lcd_busy());
	
l4470:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1281
	goto	u1280
u1281:
	goto	l4470
u1280:
	line	173
	
l2172:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
;; =============== function _lcd_gotoxy ends ============

	signat	_lcd_gotoxy,8312
	global	_lcd_init
psect	text406,local,class=CODE,delta=2
global __ptext406
__ptext406:

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
psect	text406
	file	"D:\TTVXL\Library\lcd(16).c"
	line	5
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 5
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l4422:	
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
	
l4424:	
;lcd(16).c: 18: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u1577:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1577
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1577
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1577
	nop2
opt asmopt_on

	line	21
	
l4426:	
;lcd(16).c: 21: lcd_put_byte(0,0x30);
	movlw	(030h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	22
	
l4428:	
;lcd(16).c: 22: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u1587:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1587
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1587
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1587
	nop2
opt asmopt_on

	line	23
;lcd(16).c: 23: lcd_put_byte(0,0x30);
	movlw	(030h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	24
	
l4430:	
;lcd(16).c: 24: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u1597:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1597
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1597
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1597
	nop2
opt asmopt_on

	line	25
	
l4432:	
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
u1607:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1607
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1607
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1607
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
u1617:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1617
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1617
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1617
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
u1627:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1627
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1627
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1627
	nop2
opt asmopt_on

	line	30
;lcd(16).c: 30: while(lcd_busy());
	
l4434:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1201
	goto	u1200
u1201:
	goto	l4434
u1200:
	line	31
	
l4436:	
;lcd(16).c: 31: lcd_put_byte(0,0b00101100 & 0b00111000);
	movlw	(028h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	32
;lcd(16).c: 32: while(lcd_busy());
	
l4438:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1211
	goto	u1210
u1211:
	goto	l4438
u1210:
	line	34
	
l4440:	
;lcd(16).c: 34: lcd_put_byte(0,0b00001011&0b00001101&0b00001110);
	movlw	(08h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	35
;lcd(16).c: 35: while(lcd_busy());
	
l4442:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1221
	goto	u1220
u1221:
	goto	l4442
u1220:
	line	36
	
l4444:	
;lcd(16).c: 36: lcd_put_byte(0,0b00001111&0b00001101&0b00001110);
	movlw	(0Ch)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	37
;lcd(16).c: 37: while(lcd_busy());
	
l4446:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1231
	goto	u1230
u1231:
	goto	l4446
u1230:
	line	39
	
l4448:	
;lcd(16).c: 39: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	40
;lcd(16).c: 40: while(lcd_busy());
	
l4450:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1241
	goto	u1240
u1241:
	goto	l4450
u1240:
	line	41
	
l4452:	
;lcd(16).c: 41: lcd_put_byte(0,0b00000100);
	movlw	(04h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	42
;lcd(16).c: 42: while(lcd_busy());
	
l4454:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1251
	goto	u1250
u1251:
	goto	l4454
u1250:
	line	43
	
l4456:	
;lcd(16).c: 43: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	44
;lcd(16).c: 44: while(lcd_busy());
	
l4458:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1261
	goto	u1260
u1261:
	goto	l4458
u1260:
	line	45
	
l2138:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_busy
psect	text407,local,class=CODE,delta=2
global __ptext407
__ptext407:

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
psect	text407
	file	"D:\TTVXL\Library\lcd(16).c"
	line	47
	global	__size_of_lcd_busy
	__size_of_lcd_busy	equ	__end_of_lcd_busy-_lcd_busy
	
_lcd_busy:	
	opt	stack 1
; Regs used in _lcd_busy: [wreg]
	line	50
	
l4408:	
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
	
l4410:	
;lcd(16).c: 57: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u1637:
decfsz	(??_lcd_busy+0)+0,f
	goto	u1637
opt asmopt_on

	line	58
	
l4412:	
;lcd(16).c: 58: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	59
;lcd(16).c: 59: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u1647:
decfsz	(??_lcd_busy+0)+0,f
	goto	u1647
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
	
l4414:	
;lcd(16).c: 63: RD3 = 0;
	bcf	(67/8),(67)&7
	line	64
;lcd(16).c: 64: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u1657:
decfsz	(??_lcd_busy+0)+0,f
	goto	u1657
opt asmopt_on

	line	65
	
l4416:	
;lcd(16).c: 65: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	66
;lcd(16).c: 66: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u1667:
decfsz	(??_lcd_busy+0)+0,f
	goto	u1667
opt asmopt_on

	line	67
	
l4418:	
;lcd(16).c: 67: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	70
;lcd(16).c: 70: return busy;
	movf	(lcd_busy@busy),w
	line	71
	
l2141:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_busy
	__end_of_lcd_busy:
;; =============== function _lcd_busy ends ============

	signat	_lcd_busy,89
	global	_lcd_put_byte
psect	text408,local,class=CODE,delta=2
global __ptext408
__ptext408:

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
psect	text408
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
	
l4372:	
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
	
l4374:	
;lcd(16).c: 115: if(rs) RD1 = 1;
	movf	(lcd_put_byte@rs),w
	skipz
	goto	u1030
	goto	l4378
u1030:
	
l4376:	
	bsf	(65/8),(65)&7
	line	117
	
l4378:	
;lcd(16).c: 117: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1677:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1677
opt asmopt_on

	line	118
	
l4380:	
;lcd(16).c: 118: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	119
;lcd(16).c: 119: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1687:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1687
opt asmopt_on

	line	120
	
l4382:	
;lcd(16).c: 120: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	122
;lcd(16).c: 122: temp.Val = b;
	movf	(lcd_put_byte@b),w
	movwf	(lcd_put_byte@temp)
	line	125
	
l4384:	
;lcd(16).c: 125: RD4 = temp.bits.b4;
	swapf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u1041
	goto	u1040
	
u1041:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u1054
u1040:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u1054:
	line	126
	
l4386:	
;lcd(16).c: 126: RD5 = temp.bits.b5;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u1061
	goto	u1060
	
u1061:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u1074
u1060:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u1074:
	line	127
	
l4388:	
;lcd(16).c: 127: RD6 = temp.bits.b6;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u1081
	goto	u1080
	
u1081:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u1094
u1080:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u1094:
	line	128
	
l4390:	
;lcd(16).c: 128: RD7 = temp.bits.b7;
	rlf	(lcd_put_byte@temp),w
	rlf	(lcd_put_byte@temp),w
	andlw	1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u1101
	goto	u1100
	
u1101:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u1114
u1100:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u1114:
	line	129
;lcd(16).c: 129: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1697:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1697
opt asmopt_on

	line	130
	
l4392:	
;lcd(16).c: 130: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	131
;lcd(16).c: 131: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1707:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1707
opt asmopt_on

	line	132
	
l4394:	
;lcd(16).c: 132: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	134
	
l4396:	
;lcd(16).c: 134: RD4 = temp.bits.b0;
	movf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u1121
	goto	u1120
	
u1121:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u1134
u1120:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u1134:
	line	135
	
l4398:	
;lcd(16).c: 135: RD5 = temp.bits.b1;
	rrf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u1141
	goto	u1140
	
u1141:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u1154
u1140:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u1154:
	line	136
	
l4400:	
;lcd(16).c: 136: RD6 = temp.bits.b2;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u1161
	goto	u1160
	
u1161:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u1174
u1160:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u1174:
	line	137
	
l4402:	
;lcd(16).c: 137: RD7 = temp.bits.b3;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u1181
	goto	u1180
	
u1181:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u1194
u1180:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u1194:
	line	138
;lcd(16).c: 138: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1717:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1717
opt asmopt_on

	line	139
	
l4404:	
;lcd(16).c: 139: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	140
;lcd(16).c: 140: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1727:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1727
opt asmopt_on

	line	141
	
l4406:	
;lcd(16).c: 141: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	142
	
l2149:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_put_byte
	__end_of_lcd_put_byte:
;; =============== function _lcd_put_byte ends ============

	signat	_lcd_put_byte,8312
	global	_send_string
psect	text409,local,class=CODE,delta=2
global __ptext409
__ptext409:

;; *************** function _send_string *****************
;; Defined at:
;;		line 74 in file "D:\TTVXL\Project TTVXL\BT03week16ttvxl\BT03week16ttvxl.c"
;; Parameters:    Size  Location     Type
;;  s               2    4[COMMON] PTR const unsigned char 
;;		 -> STR_4(3), ket_qua(6), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text409
	file	"D:\TTVXL\Project TTVXL\BT03week16ttvxl\BT03week16ttvxl.c"
	line	74
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 5
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	75
	
l4364:	
;BT03week16ttvxl.c: 75: while(*s){send_char(*s++);}
	goto	l4370
	
l4366:	
	movf	(send_string@s+1),w
	movwf	btemp+1
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_send_char
	
l4368:	
	incf	(send_string@s),f
	skipnz
	incf	(send_string@s+1),f
	
l4370:	
	movf	(send_string@s+1),w
	movwf	btemp+1
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u1021
	goto	u1020
u1021:
	goto	l4366
u1020:
	line	76
	
l1074:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	_atoi
psect	text410,local,class=CODE,delta=2
global __ptext410
__ptext410:

;; *************** function _atoi *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\atoi.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> rx_data(5), 
;; Auto vars:     Size  Location     Type
;;  s               1    5[BANK0 ] PTR const unsigned char 
;;		 -> rx_data(5), 
;;  a               2    3[BANK0 ] int 
;;  sign            1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    9[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         2       6       0       0       0
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
psect	text410
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\atoi.c"
	line	6
	global	__size_of_atoi
	__size_of_atoi	equ	__end_of_atoi-_atoi
	
_atoi:	
	opt	stack 5
; Regs used in _atoi: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;atoi@s stored from wreg
	movwf	(atoi@s)
	line	10
	
l4330:	
	goto	l4334
	line	11
	
l4332:	
	incf	(atoi@s),f
	line	10
	
l4334:	
	movf	(atoi@s),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	020h
	skipnz
	goto	u961
	goto	u960
u961:
	goto	l4332
u960:
	
l4336:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	09h
	skipnz
	goto	u971
	goto	u970
u971:
	goto	l4332
u970:
	line	12
	
l4338:	
	clrf	(atoi@a)
	clrf	(atoi@a+1)
	line	13
	clrf	(atoi@sign)
	line	14
	
l4340:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Dh
	skipz
	goto	u981
	goto	u980
u981:
	goto	l4344
u980:
	line	15
	
l4342:	
	incf	(atoi@sign),f
	line	16
	incf	(atoi@s),f
	line	17
	goto	l4352
	
l4344:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Bh
	skipz
	goto	u991
	goto	u990
u991:
	goto	l4352
u990:
	line	18
	
l4346:	
	incf	(atoi@s),f
	goto	l4352
	line	20
	
l4348:	
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
	goto	l4346
	line	19
	
l4352:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	fcall	_isdigit
	btfsc	status,0
	goto	u1001
	goto	u1000
u1001:
	goto	l4348
u1000:
	line	21
	
l4354:	
	movf	(atoi@sign),w
	skipz
	goto	u1010
	goto	l4360
u1010:
	line	22
	
l4356:	
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
	goto	l3237
	line	23
	
l4360:	
	movf	(atoi@a+1),w
	movwf	(?_atoi+1)
	movf	(atoi@a),w
	movwf	(?_atoi)
	line	24
	
l3237:	
	return
	opt stack 0
GLOBAL	__end_of_atoi
	__end_of_atoi:
;; =============== function _atoi ends ============

	signat	_atoi,4218
	global	___lwmod
psect	text411,local,class=CODE,delta=2
global __ptext411
__ptext411:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   10[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       4       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text411
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 4
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l4310:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u921
	goto	u920
u921:
	goto	l4326
u920:
	line	9
	
l4312:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l4316
	line	11
	
l4314:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l4316:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u931
	goto	u930
u931:
	goto	l4314
u930:
	line	15
	
l4318:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u945
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u945:
	skipc
	goto	u941
	goto	u940
u941:
	goto	l4322
u940:
	line	16
	
l4320:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l4322:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l4324:	
	decfsz	(___lwmod@counter),f
	goto	u951
	goto	u950
u951:
	goto	l4318
u950:
	line	20
	
l4326:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l3295:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text412,local,class=CODE,delta=2
global __ptext412
__ptext412:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    3[COMMON] unsigned int 
;;  dividend        2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] unsigned int 
;;  counter         1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] unsigned int 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text412
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l4284:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l4286:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u881
	goto	u880
u881:
	goto	l4306
u880:
	line	11
	
l4288:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l4292
	line	13
	
l4290:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l4292:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u891
	goto	u890
u891:
	goto	l4290
u890:
	line	17
	
l4294:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l4296:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u905
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u905:
	skipc
	goto	u901
	goto	u900
u901:
	goto	l4302
u900:
	line	19
	
l4298:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l4300:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l4302:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l4304:	
	decfsz	(___lwdiv@counter),f
	goto	u911
	goto	u910
u911:
	goto	l4294
u910:
	line	25
	
l4306:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l3285:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text413,local,class=CODE,delta=2
global __ptext413
__ptext413:

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
;;		__doprnt
;;		_atoi
;; This function uses a non-reentrant model
;;
psect	text413
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l4268:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l4270:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u861
	goto	u860
u861:
	goto	l4274
u860:
	line	8
	
l4272:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l4274:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l4276:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l4278:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u871
	goto	u870
u871:
	goto	l4270
u870:
	line	12
	
l4280:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l3275:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_isdigit
psect	text414,local,class=CODE,delta=2
global __ptext414
__ptext414:

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
;;		__doprnt
;;		_atoi
;; This function uses a non-reentrant model
;;
psect	text414
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 4
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l4256:	
	clrf	(_isdigit$3692)
	
l4258:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u841
	goto	u840
u841:
	goto	l4264
u840:
	
l4260:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u851
	goto	u850
u851:
	goto	l4264
u850:
	
l4262:	
	clrf	(_isdigit$3692)
	incf	(_isdigit$3692),f
	
l4264:	
	rrf	(_isdigit$3692),w
	
	line	15
	
l3242:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_isprint
psect	text415,local,class=CODE,delta=2
global __ptext415
__ptext415:

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
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
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
psect	text415
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
	
l4244:	
	clrf	(_isprint$3695)
	
l4246:	
	movlw	(07Fh)
	subwf	(isprint@c),w
	skipnc
	goto	u821
	goto	u820
u821:
	goto	l4252
u820:
	
l4248:	
	movlw	(020h)
	subwf	(isprint@c),w
	skipc
	goto	u831
	goto	u830
u831:
	goto	l4252
u830:
	
l4250:	
	clrf	(_isprint$3695)
	incf	(_isprint$3695),f
	
l4252:	
	rrf	(_isprint$3695),w
	
	line	15
	
l3247:	
	return
	opt stack 0
GLOBAL	__end_of_isprint
	__end_of_isprint:
;; =============== function _isprint ends ============

	signat	_isprint,4216
	global	_send_char
psect	text416,local,class=CODE,delta=2
global __ptext416
__ptext416:

;; *************** function _send_char *****************
;; Defined at:
;;		line 68 in file "D:\TTVXL\Project TTVXL\BT03week16ttvxl\BT03week16ttvxl.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    3[COMMON] unsigned char 
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
psect	text416
	file	"D:\TTVXL\Project TTVXL\BT03week16ttvxl\BT03week16ttvxl.c"
	line	68
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 5
; Regs used in _send_char: [wreg]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	69
	
l4228:	
;BT03week16ttvxl.c: 69: while(TXIF == 0){}
	
l1065:	
	btfss	(100/8),(100)&7
	goto	u791
	goto	u790
u791:
	goto	l1065
u790:
	line	70
	
l4230:	
;BT03week16ttvxl.c: 70: TXREG = data;
	movf	(send_char@data),w
	movwf	(25)	;volatile
	line	71
	
l1068:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_rx_init
psect	text417,local,class=CODE,delta=2
global __ptext417
__ptext417:

;; *************** function _rx_init *****************
;; Defined at:
;;		line 60 in file "D:\TTVXL\Project TTVXL\BT03week16ttvxl\BT03week16ttvxl.c"
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
psect	text417
	file	"D:\TTVXL\Project TTVXL\BT03week16ttvxl\BT03week16ttvxl.c"
	line	60
	global	__size_of_rx_init
	__size_of_rx_init	equ	__end_of_rx_init-_rx_init
	
_rx_init:	
	opt	stack 6
; Regs used in _rx_init: [wreg]
	line	61
	
l4214:	
;BT03week16ttvxl.c: 61: SPBRGH = 0x02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(154)^080h	;volatile
	line	62
;BT03week16ttvxl.c: 62: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	63
	
l4216:	
;BT03week16ttvxl.c: 63: SYNC = 0; BRGH = 1; BRG16 = 1;
	bcf	(1220/8)^080h,(1220)&7
	
l4218:	
	bsf	(1218/8)^080h,(1218)&7
	
l4220:	
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	64
	
l4222:	
;BT03week16ttvxl.c: 64: CREN = 1; RX9 = 0; SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	
l4224:	
	bcf	(198/8),(198)&7
	
l4226:	
	bsf	(199/8),(199)&7
	line	65
	
l1062:	
	return
	opt stack 0
GLOBAL	__end_of_rx_init
	__end_of_rx_init:
;; =============== function _rx_init ends ============

	signat	_rx_init,88
	global	_tx_init
psect	text418,local,class=CODE,delta=2
global __ptext418
__ptext418:

;; *************** function _tx_init *****************
;; Defined at:
;;		line 51 in file "D:\TTVXL\Project TTVXL\BT03week16ttvxl\BT03week16ttvxl.c"
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
psect	text418
	file	"D:\TTVXL\Project TTVXL\BT03week16ttvxl\BT03week16ttvxl.c"
	line	51
	global	__size_of_tx_init
	__size_of_tx_init	equ	__end_of_tx_init-_tx_init
	
_tx_init:	
	opt	stack 6
; Regs used in _tx_init: [wreg]
	line	52
	
l4200:	
;BT03week16ttvxl.c: 52: SPBRGH = 0x02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(154)^080h	;volatile
	line	53
;BT03week16ttvxl.c: 53: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	54
	
l4202:	
;BT03week16ttvxl.c: 54: SYNC = 0; BRGH = 1; BRG16 = 1;
	bcf	(1220/8)^080h,(1220)&7
	
l4204:	
	bsf	(1218/8)^080h,(1218)&7
	
l4206:	
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	55
	
l4208:	
;BT03week16ttvxl.c: 55: TXEN = 1; TX9 = 0; SPEN = 1;
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7
	
l4210:	
	bcf	(1222/8)^080h,(1222)&7
	
l4212:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	57
	
l1059:	
	return
	opt stack 0
GLOBAL	__end_of_tx_init
	__end_of_tx_init:
;; =============== function _tx_init ends ============

	signat	_tx_init,88
	global	_ngat
psect	text419,local,class=CODE,delta=2
global __ptext419
__ptext419:

;; *************** function _ngat *****************
;; Defined at:
;;		line 79 in file "D:\TTVXL\Project TTVXL\BT03week16ttvxl\BT03week16ttvxl.c"
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
psect	text419
	file	"D:\TTVXL\Project TTVXL\BT03week16ttvxl\BT03week16ttvxl.c"
	line	79
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
	opt	stack 1
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
psect	text419
	line	80
	
i1l4232:	
;BT03week16ttvxl.c: 80: if(RCIF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u80_21
	goto	u80_20
u80_21:
	goto	i1l4242
u80_20:
	line	82
	
i1l4234:	
;BT03week16ttvxl.c: 81: {
;BT03week16ttvxl.c: 82: rx_data[i] = RCREG;
	movf	(_i),w
	addlw	_rx_data&0ffh
	movwf	fsr0
	movf	(26),w	;volatile
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	83
	
i1l4236:	
;BT03week16ttvxl.c: 83: i++;
	incf	(_i),f
	skipnz
	incf	(_i+1),f
	line	84
	
i1l4238:	
;BT03week16ttvxl.c: 84: if(i==5)
		movf	(_i),w
	xorlw	5
	iorwf	(_i+1),w

	skipz
	goto	u81_21
	goto	u81_20
u81_21:
	goto	i1l4242
u81_20:
	line	86
	
i1l4240:	
;BT03week16ttvxl.c: 85: {
;BT03week16ttvxl.c: 86: i=0;
	clrf	(_i)
	clrf	(_i+1)
	line	89
	
i1l4242:	
;BT03week16ttvxl.c: 87: }
;BT03week16ttvxl.c: 88: }
;BT03week16ttvxl.c: 89: RCIF=0;
	bcf	(101/8),(101)&7
	line	90
	
i1l1079:	
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
