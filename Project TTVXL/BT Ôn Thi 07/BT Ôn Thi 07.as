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
# 7 "D:\TTVXL\Project TTVXL\BT Ôn Thi 07\BT Ôn Thi 07.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "D:\TTVXL\Project TTVXL\BT Ôn Thi 07\BT Ôn Thi 07.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_tx
	FNCALL	_main,_rx
	FNCALL	_main,_atoi
	FNCALL	_main,_sprintf
	FNCALL	_main,_send_string
	FNCALL	_send_string,_send_char
	FNCALL	_sprintf,_isdigit
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
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
	global	_data_rx
	global	_PW
	global	_a
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_RCREG
_RCREG	set	26
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
	global	_RX9
_RX9	set	198
	global	_SPEN
_SPEN	set	199
	global	_T2CKPS0
_T2CKPS0	set	144
	global	_T2CKPS1
_T2CKPS1	set	145
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
	global	_BRGH
_BRGH	set	1218
	global	_RCIE
_RCIE	set	1125
	global	_SYNC
_SYNC	set	1220
	global	_TRISC2
_TRISC2	set	1082
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
	retlw	67	;'C'
	retlw	67	;'C'
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	49	;'1'
	retlw	76	;'L'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	51	;'3'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	file	"BT Ôn Thi 07.as"
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
_data_rx:
       ds      10

_PW:
       ds      2

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
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
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
	ds	3
	global	??_tx
??_tx:	; 0 bytes @ 0x3
	global	??_rx
??_rx:	; 0 bytes @ 0x3
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
	global	_isdigit$2373
_isdigit$2373:	; 1 bytes @ 0x3
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x3
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x3
	ds	1
	global	??_send_string
??_send_string:	; 0 bytes @ 0x4
	global	send_string@s
send_string@s:	; 1 bytes @ 0x4
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x4
	ds	1
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x5
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x5
	ds	2
	global	??___wmul
??___wmul:	; 0 bytes @ 0x7
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x7
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x7
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x7
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x7
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_atoi
?_atoi:	; 2 bytes @ 0x0
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x0
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1
	ds	1
	global	??_atoi
??_atoi:	; 0 bytes @ 0x2
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x3
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x3
	ds	1
	global	atoi@sign
atoi@sign:	; 1 bytes @ 0x4
	ds	1
	global	atoi@a
atoi@a:	; 2 bytes @ 0x5
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x5
	ds	2
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x7
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x7
	global	atoi@s
atoi@s:	; 1 bytes @ 0x7
	ds	3
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0xA
	ds	3
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0xD
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0xE
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0xF
	ds	4
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x13
	ds	1
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0x14
	ds	2
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x16
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x17
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x18
	ds	1
	global	main@data_tx
main@data_tx:	; 10 bytes @ 0x19
	ds	10
	global	main@Pulse_width
main@Pulse_width:	; 3 bytes @ 0x23
	ds	3
	global	main@b
main@b:	; 2 bytes @ 0x26
	ds	2
;;Data sizes: Strings 15, constant 10, data 0, bss 14, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      11
;; BANK0           80     40      52
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_atoi	int  size(1) Largest target is 0
;;
;; atoi@s	PTR const unsigned char  size(1) Largest target is 3
;;		 -> main@Pulse_width(BANK0[3]), 
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 15
;;		 -> STR_1(CODE[15]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 10
;;		 -> main@data_tx(BANK0[10]), 
;;
;; ?_sprintf	int  size(1) Largest target is 0
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), 
;;
;; S1850$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; send_string@s	PTR const unsigned char  size(1) Largest target is 10
;;		 -> main@data_tx(BANK0[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _send_string->_send_char
;;   _sprintf->___wmul
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
;;   _sprintf->___lwmod
;;   ___lwmod->___lwdiv
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                16    16      0    2768
;;                                             24 BANK0     16    16      0
;;                                 _tx
;;                                 _rx
;;                               _atoi
;;                            _sprintf
;;                        _send_string
;; ---------------------------------------------------------------------------------
;; (1) _send_string                                          1     1      0      67
;;                                              4 COMMON     1     1      0
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                             17    14      3    1881
;;                                              7 BANK0     17    14      3
;;                            _isdigit
;;                             ___wmul
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (1) _atoi                                                 8     6      2     494
;;                                              0 BANK0      8     6      2
;;                             ___wmul
;;                            _isdigit
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              5     1      4     159
;;                                              7 COMMON     1     1      0
;;                                              3 BANK0      4     0      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              7     3      4     241
;;                                              3 COMMON     4     0      4
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              3 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) _isdigit                                              2     2      0      68
;;                                              3 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _send_char                                            1     1      0      22
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _rx                                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _tx                                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _ngat                                                 3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _tx
;;   _rx
;;   _atoi
;;     ___wmul
;;     _isdigit
;;   _sprintf
;;     _isdigit
;;     ___wmul
;;     ___lwdiv
;;     ___lwmod
;;       ___lwdiv (ARG)
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
;;COMMON               E      9       B       1       78.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0      3F       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     28      34       5       65.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      41      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 22 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 07\BT Ôn Thi 07.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  b               2   38[BANK0 ] int 
;;  data_tx        10   25[BANK0 ] unsigned char [10]
;;  Pulse_width     3   35[BANK0 ] unsigned char [3]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 160/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      15       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_tx
;;		_rx
;;		_atoi
;;		_sprintf
;;		_send_string
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 07\BT Ôn Thi 07.c"
	line	22
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	23
	
l3381:	
;BT Ôn Thi 07.c: 23: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	25
	
l3383:	
;BT Ôn Thi 07.c: 25: TRISC2 = 0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1082/8)^080h,(1082)&7
	line	27
	
l3385:	
;BT Ôn Thi 07.c: 27: T2CKPS1 = 0; T2CKPS0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(145/8),(145)&7
	
l3387:	
	bcf	(144/8),(144)&7
	line	28
;BT Ôn Thi 07.c: 28: TMR2 = 0; PR2 = 249;
	clrf	(17)	;volatile
	
l3389:	
	movlw	(0F9h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	29
	
l3391:	
;BT Ôn Thi 07.c: 29: TMR2ON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(146/8),(146)&7
	line	31
	
l3393:	
;BT Ôn Thi 07.c: 31: CCP1CON = 0b00000000;
	clrf	(23)	;volatile
	line	32
	
l3395:	
;BT Ôn Thi 07.c: 32: CCPR1L = 0;
	clrf	(21)	;volatile
	line	35
	
l3397:	
;BT Ôn Thi 07.c: 35: tx();
	fcall	_tx
	line	36
	
l3399:	
;BT Ôn Thi 07.c: 36: rx();
	fcall	_rx
	line	42
	
l3401:	
;BT Ôn Thi 07.c: 41: {
;BT Ôn Thi 07.c: 42: for (int b=0;b<=2;b++){
	clrf	(main@b)
	clrf	(main@b+1)
	line	43
	
l3407:	
;BT Ôn Thi 07.c: 43: Pulse_width[b]=data_rx[b];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@b),w
	addlw	_data_rx&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(main@b),w
	addlw	main@Pulse_width&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	line	42
	
l3409:	
	incf	(main@b),f
	skipnz
	incf	(main@b+1),f
	
l3411:	
	movf	(main@b+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1115
	movlw	low(03h)
	subwf	(main@b),w
u1115:

	skipc
	goto	u1111
	goto	u1110
u1111:
	goto	l3407
u1110:
	line	45
	
l3413:	
;BT Ôn Thi 07.c: 44: }
;BT Ôn Thi 07.c: 45: PW=atoi(Pulse_width);
	movlw	(main@Pulse_width)&0ffh
	fcall	_atoi
	movf	(1+(?_atoi)),w
	movwf	(_PW+1)
	movf	(0+(?_atoi)),w
	movwf	(_PW)
	line	46
	
l3415:	
;BT Ôn Thi 07.c: 46: TMR2ON=1;
	bsf	(146/8),(146)&7
	line	47
	
l3417:	
;BT Ôn Thi 07.c: 47: CCP1CON = 0b00001100;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	48
	
l3419:	
;BT Ôn Thi 07.c: 48: CCPR1L=PW;
	movf	(_PW),w
	movwf	(21)	;volatile
	line	57
	
l3421:	
;BT Ôn Thi 07.c: 57: sprintf(data_tx,"CCPR1L: %03d  ",PW);
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(_PW+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_PW),w
	movwf	0+(?_sprintf)+01h
	movlw	(main@data_tx)&0ffh
	fcall	_sprintf
	line	58
	
l3423:	
;BT Ôn Thi 07.c: 58: send_string(data_tx);
	movlw	(main@data_tx)&0ffh
	fcall	_send_string
	goto	l3401
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	60
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_send_string
psect	text387,local,class=CODE,delta=2
global __ptext387
__ptext387:

;; *************** function _send_string *****************
;; Defined at:
;;		line 76 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 07\BT Ôn Thi 07.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> main@data_tx(10), 
;; Auto vars:     Size  Location     Type
;;  s               1    4[COMMON] PTR const unsigned char 
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
psect	text387
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 07\BT Ôn Thi 07.c"
	line	76
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 5
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	movwf	(send_string@s)
	line	77
	
l3151:	
;BT Ôn Thi 07.c: 77: while(*s) {send_char(*s++);}
	goto	l3157
	
l3153:	
	movf	(send_string@s),w
	movwf	fsr0
	movf	indf,w
	fcall	_send_char
	
l3155:	
	incf	(send_string@s),f
	
l3157:	
	movf	(send_string@s),w
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u811
	goto	u810
u811:
	goto	l3153
u810:
	line	78
	
l1081:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	_sprintf
psect	text388,local,class=CODE,delta=2
global __ptext388
__ptext388:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> main@data_tx(10), 
;;  f               1    7[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(15), 
;; Auto vars:     Size  Location     Type
;;  sp              1   22[BANK0 ] PTR unsigned char 
;;		 -> main@data_tx(10), 
;;  _val            4   15[BANK0 ] struct .
;;  width           2   20[BANK0 ] int 
;;  c               1   23[BANK0 ] char 
;;  flag            1   19[BANK0 ] unsigned char 
;;  prec            1   14[BANK0 ] char 
;;  ap              1   13[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2    7[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0      11       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      17       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_isdigit
;;		___wmul
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text388
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	488
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 5
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	line	537
	movwf	(sprintf@sp)
	
l3271:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)
	line	540
	goto	l3375
	line	542
	
l3273:	
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u931
	goto	u930
u931:
	goto	l3279
u930:
	line	545
	
l3275:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(sprintf@c),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3277:	
	incf	(sprintf@sp),f
	line	546
	goto	l3375
	line	550
	
l3279:	
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	552
	clrf	(sprintf@flag)
	goto	l3285
	line	583
	
l1103:	
	line	584
	bsf	(sprintf@flag)+(2/8),(2)&7
	line	585
	
l3281:	
	incf	(sprintf@f),f
	line	555
	
l3285:	
	movf	(sprintf@f),w
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
	goto	l1103
	goto	l3287
	opt asmopt_on

	line	601
	
l3287:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u941
	goto	u940
u941:
	goto	l3299
u940:
	line	602
	
l3289:	
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	604
	
l3291:	
	movf	(sprintf@width+1),w
	movwf	(?___wmul+1)
	movf	(sprintf@width),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
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
	movwf	(sprintf@width)
	movf	1+(??_sprintf+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(sprintf@width)
	
l3293:	
	incf	(sprintf@f),f
	line	605
	
l3295:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u951
	goto	u950
u951:
	goto	l3291
u950:
	line	638
	
l3299:	
	movf	(sprintf@f),w
	incf	(sprintf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
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
	goto	l3377
	xorlw	100^0	; case 100
	skipnz
	goto	l3301
	xorlw	105^100	; case 105
	skipnz
	goto	l3301
	goto	l3375
	opt asmopt_on

	line	1254
	
l3301:	
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l3303:	
	incf	(sprintf@ap),f
	incf	(sprintf@ap),f
	line	1256
	
l3305:	
	btfss	(sprintf@_val+1),7
	goto	u961
	goto	u960
u961:
	goto	l3311
u960:
	line	1257
	
l3307:	
	movlw	(03h)
	iorwf	(sprintf@flag),f
	line	1258
	
l3309:	
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	line	1300
	
l3311:	
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	line	1301
	
l3315:	
	clrc
	rlf	(sprintf@c),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	fcall	stringdir
	movwf	(??_sprintf+0)+0+1
	movf	1+(??_sprintf+0)+0,w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u975
	movf	0+(??_sprintf+0)+0,w
	subwf	(sprintf@_val),w
u975:
	skipnc
	goto	u971
	goto	u970
u971:
	goto	l3319
u970:
	goto	l3323
	line	1300
	
l3319:	
	incf	(sprintf@c),f
	
l3321:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u981
	goto	u980
u981:
	goto	l3315
u980:
	line	1340
	
l3323:	
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u991
	goto	u990
u991:
	goto	l3329
u990:
	
l3325:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1001
	goto	u1000
u1001:
	goto	l3329
u1000:
	line	1341
	
l3327:	
	movlw	-1
	addwf	(sprintf@width),f
	skipc
	decf	(sprintf@width+1),f
	line	1376
	
l3329:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	movwf	(??_sprintf+2)+0
	movf	(sprintf@width+1),w
	xorlw	80h
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u1015
	movf	(sprintf@width),w
	subwf	0+(??_sprintf+0)+0,w
u1015:

	skipnc
	goto	u1011
	goto	u1010
u1011:
	goto	l3333
u1010:
	line	1377
	
l3331:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	0+(??_sprintf+0)+0,w
	subwf	(sprintf@width),f
	movf	1+(??_sprintf+0)+0,w
	skipc
	decf	(sprintf@width+1),f
	subwf	(sprintf@width+1),f
	goto	l3335
	line	1379
	
l3333:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	1382
	
l3335:	
	btfss	(sprintf@flag),(2)&7
	goto	u1021
	goto	u1020
u1021:
	goto	l3351
u1020:
	line	1387
	
l3337:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1031
	goto	u1030
u1031:
	goto	l3343
u1030:
	line	1388
	
l3339:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movlw	(02Dh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3341:	
	incf	(sprintf@sp),f
	line	1410
	
l3343:	
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u1041
	goto	u1040
u1041:
	goto	l3365
u1040:
	line	1412
	
l3345:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movlw	(030h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3347:	
	incf	(sprintf@sp),f
	line	1413
	
l3349:	
	movlw	-1
	addwf	(sprintf@width),f
	skipc
	decf	(sprintf@width+1),f
	movf	(((sprintf@width+1))),w
	iorwf	(((sprintf@width))),w
	skipz
	goto	u1051
	goto	u1050
u1051:
	goto	l3345
u1050:
	goto	l3365
	line	1423
	
l3351:	
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u1061
	goto	u1060
u1061:
	goto	l3359
u1060:
	line	1425
	
l3353:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movlw	(020h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3355:	
	incf	(sprintf@sp),f
	line	1426
	
l3357:	
	movlw	-1
	addwf	(sprintf@width),f
	skipc
	decf	(sprintf@width+1),f
	movf	(((sprintf@width+1))),w
	iorwf	(((sprintf@width))),w
	skipz
	goto	u1071
	goto	u1070
u1071:
	goto	l3353
u1070:
	line	1433
	
l3359:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1081
	goto	u1080
u1081:
	goto	l3365
u1080:
	line	1434
	
l3361:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movlw	(02Dh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3363:	
	incf	(sprintf@sp),f
	line	1467
	
l3365:	
	movf	(sprintf@c),w
	movwf	(sprintf@prec)
	line	1469
	goto	l3373
	line	1484
	
l3367:	
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	clrc
	rlf	(sprintf@prec),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)
	fcall	stringdir
	movwf	(?___lwdiv+1)
	movf	(sprintf@_val+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(sprintf@_val),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(sprintf@c)
	line	1516
	
l3369:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(sprintf@c),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3371:	
	incf	(sprintf@sp),f
	line	1469
	
l3373:	
	decf	(sprintf@prec),f
	incf	((sprintf@prec)),w
	skipz
	goto	u1091
	goto	u1090
u1091:
	goto	l3367
u1090:
	line	540
	
l3375:	
	movf	(sprintf@f),w
	incf	(sprintf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	movf	((sprintf@c)),f
	skipz
	goto	u1101
	goto	u1100
u1101:
	goto	l3273
u1100:
	line	1530
	
l3377:	
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	1533
	
l1138:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_atoi
psect	text389,local,class=CODE,delta=2
global __ptext389
__ptext389:

;; *************** function _atoi *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\atoi.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> main@Pulse_width(3), 
;; Auto vars:     Size  Location     Type
;;  s               1    7[BANK0 ] PTR const unsigned char 
;;		 -> main@Pulse_width(3), 
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
psect	text389
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
	
l3237:	
	goto	l3241
	line	11
	
l3239:	
	incf	(atoi@s),f
	line	10
	
l3241:	
	movf	(atoi@s),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	020h
	skipnz
	goto	u871
	goto	u870
u871:
	goto	l3239
u870:
	
l3243:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	09h
	skipnz
	goto	u881
	goto	u880
u881:
	goto	l3239
u880:
	line	12
	
l3245:	
	clrf	(atoi@a)
	clrf	(atoi@a+1)
	line	13
	clrf	(atoi@sign)
	line	14
	
l3247:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Dh
	skipz
	goto	u891
	goto	u890
u891:
	goto	l3251
u890:
	line	15
	
l3249:	
	incf	(atoi@sign),f
	line	16
	incf	(atoi@s),f
	line	17
	goto	l3259
	
l3251:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Bh
	skipz
	goto	u901
	goto	u900
u901:
	goto	l3259
u900:
	line	18
	
l3253:	
	incf	(atoi@s),f
	goto	l3259
	line	20
	
l3255:	
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
	goto	l3253
	line	19
	
l3259:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	fcall	_isdigit
	btfsc	status,0
	goto	u911
	goto	u910
u911:
	goto	l3255
u910:
	line	21
	
l3261:	
	movf	(atoi@sign),w
	skipz
	goto	u920
	goto	l3267
u920:
	line	22
	
l3263:	
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
	goto	l2133
	line	23
	
l3267:	
	movf	(atoi@a+1),w
	movwf	(?_atoi+1)
	movf	(atoi@a),w
	movwf	(?_atoi)
	line	24
	
l2133:	
	return
	opt stack 0
GLOBAL	__end_of_atoi
	__end_of_atoi:
;; =============== function _atoi ends ============

	signat	_atoi,4218
	global	___lwmod
psect	text390,local,class=CODE,delta=2
global __ptext390
__ptext390:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    3[BANK0 ] unsigned int 
;;  dividend        2    5[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[BANK0 ] unsigned int 
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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text390
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l2987:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u531
	goto	u530
u531:
	goto	l3003
u530:
	line	9
	
l2989:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l2993
	line	11
	
l2991:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l2993:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u541
	goto	u540
u541:
	goto	l2991
u540:
	line	15
	
l2995:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u555
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u555:
	skipc
	goto	u551
	goto	u550
u551:
	goto	l2999
u550:
	line	16
	
l2997:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l2999:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l3001:	
	decfsz	(___lwmod@counter),f
	goto	u561
	goto	u560
u561:
	goto	l2995
u560:
	line	20
	
l3003:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l2170:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text391,local,class=CODE,delta=2
global __ptext391
__ptext391:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    3[COMMON] unsigned int 
;;  dividend        2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    1[BANK0 ] unsigned int 
;;  counter         1    0[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       3       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text391
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3211:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3213:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u831
	goto	u830
u831:
	goto	l3233
u830:
	line	11
	
l3215:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l3219
	line	13
	
l3217:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l3219:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u841
	goto	u840
u841:
	goto	l3217
u840:
	line	17
	
l3221:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l3223:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u855
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u855:
	skipc
	goto	u851
	goto	u850
u851:
	goto	l3229
u850:
	line	19
	
l3225:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3227:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l3229:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l3231:	
	decfsz	(___lwdiv@counter),f
	goto	u861
	goto	u860
u861:
	goto	l3221
u860:
	line	25
	
l3233:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l2160:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text392,local,class=CODE,delta=2
global __ptext392
__ptext392:

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
;;		_sprintf
;;		_atoi
;; This function uses a non-reentrant model
;;
psect	text392
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l2945:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l2947:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u471
	goto	u470
u471:
	goto	l2951
u470:
	line	8
	
l2949:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l2951:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l2953:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l2955:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u481
	goto	u480
u481:
	goto	l2947
u480:
	line	12
	
l2957:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l2150:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_isdigit
psect	text393,local,class=CODE,delta=2
global __ptext393
__ptext393:

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
;;		_sprintf
;;		_atoi
;; This function uses a non-reentrant model
;;
psect	text393
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 5
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l2933:	
	clrf	(_isdigit$2373)
	
l2935:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u451
	goto	u450
u451:
	goto	l2941
u450:
	
l2937:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u461
	goto	u460
u461:
	goto	l2941
u460:
	
l2939:	
	clrf	(_isdigit$2373)
	incf	(_isdigit$2373),f
	
l2941:	
	rrf	(_isdigit$2373),w
	
	line	15
	
l2138:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_send_char
psect	text394,local,class=CODE,delta=2
global __ptext394
__ptext394:

;; *************** function _send_char *****************
;; Defined at:
;;		line 72 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 07\BT Ôn Thi 07.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    3[COMMON] unsigned char 
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
psect	text394
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 07\BT Ôn Thi 07.c"
	line	72
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 5
; Regs used in _send_char: [wreg]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	73
	
l2929:	
;BT Ôn Thi 07.c: 73: while (TXIF==0){}
	
l1072:	
	btfss	(100/8),(100)&7
	goto	u441
	goto	u440
u441:
	goto	l1072
u440:
	line	74
	
l2931:	
;BT Ôn Thi 07.c: 74: TXREG = data;
	movf	(send_char@data),w
	movwf	(25)	;volatile
	line	75
	
l1075:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_rx
psect	text395,local,class=CODE,delta=2
global __ptext395
__ptext395:

;; *************** function _rx *****************
;; Defined at:
;;		line 88 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 07\BT Ôn Thi 07.c"
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
psect	text395
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 07\BT Ôn Thi 07.c"
	line	88
	global	__size_of_rx
	__size_of_rx	equ	__end_of_rx-_rx
	
_rx:	
	opt	stack 6
; Regs used in _rx: [wreg]
	line	89
	
l2899:	
;BT Ôn Thi 07.c: 89: SYNC = 0; BRGH = 1; BRG16 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	90
	
l2901:	
;BT Ôn Thi 07.c: 90: SPBRGH = 0x02;
	movlw	(02h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	91
;BT Ôn Thi 07.c: 91: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	92
	
l2903:	
;BT Ôn Thi 07.c: 92: CREN = 1; RX9 = 0; SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(196/8),(196)&7
	
l2905:	
	bcf	(198/8),(198)&7
	
l2907:	
	bsf	(199/8),(199)&7
	line	93
	
l2909:	
;BT Ôn Thi 07.c: 93: RCIE=1; RCIF=0; PEIE=1; GIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1125/8)^080h,(1125)&7
	
l2911:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(101/8),(101)&7
	
l2913:	
	bsf	(94/8),(94)&7
	
l2915:	
	bsf	(95/8),(95)&7
	line	94
	
l1087:	
	return
	opt stack 0
GLOBAL	__end_of_rx
	__end_of_rx:
;; =============== function _rx ends ============

	signat	_rx,88
	global	_tx
psect	text396,local,class=CODE,delta=2
global __ptext396
__ptext396:

;; *************** function _tx *****************
;; Defined at:
;;		line 80 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 07\BT Ôn Thi 07.c"
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
psect	text396
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 07\BT Ôn Thi 07.c"
	line	80
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
	
_tx:	
	opt	stack 6
; Regs used in _tx: [wreg]
	line	81
	
l2889:	
;BT Ôn Thi 07.c: 81: SYNC = 0; BRGH = 1; BRG16 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	82
	
l2891:	
;BT Ôn Thi 07.c: 82: SPBRGH = 0x02;
	movlw	(02h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	83
;BT Ôn Thi 07.c: 83: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	84
	
l2893:	
;BT Ôn Thi 07.c: 84: TXEN = 1; TX9 = 0; SPEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	
l2895:	
	bcf	(1222/8)^080h,(1222)&7
	
l2897:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	86
	
l1084:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
;; =============== function _tx ends ============

	signat	_tx,88
	global	_ngat
psect	text397,local,class=CODE,delta=2
global __ptext397
__ptext397:

;; *************** function _ngat *****************
;; Defined at:
;;		line 63 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 07\BT Ôn Thi 07.c"
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
psect	text397
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 07\BT Ôn Thi 07.c"
	line	63
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
	opt	stack 5
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
psect	text397
	line	64
	
i1l2917:	
;BT Ôn Thi 07.c: 64: if (RCIF){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u42_21
	goto	u42_20
u42_21:
	goto	i1l2927
u42_20:
	line	65
	
i1l2919:	
;BT Ôn Thi 07.c: 65: data_rx[a]=RCREG;
	movf	(_a),w
	addlw	_data_rx&0ffh
	movwf	fsr0
	movf	(26),w	;volatile
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	66
	
i1l2921:	
;BT Ôn Thi 07.c: 66: a++;
	incf	(_a),f
	skipnz
	incf	(_a+1),f
	line	67
	
i1l2923:	
;BT Ôn Thi 07.c: 67: if (a==3) {a=0;}
		movf	(_a),w
	xorlw	3
	iorwf	(_a+1),w

	skipz
	goto	u43_21
	goto	u43_20
u43_21:
	goto	i1l2927
u43_20:
	
i1l2925:	
	clrf	(_a)
	clrf	(_a+1)
	line	69
	
i1l2927:	
;BT Ôn Thi 07.c: 68: }
;BT Ôn Thi 07.c: 69: RCIF=0;
	bcf	(101/8),(101)&7
	line	70
	
i1l1069:	
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
psect	text398,local,class=CODE,delta=2
global __ptext398
__ptext398:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
