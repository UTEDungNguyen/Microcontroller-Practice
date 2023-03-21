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
# 6 "D:\TTVXL\Project TTVXL\BT02week16ttvxl\BT02week16ttvxl.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "D:\TTVXL\Project TTVXL\BT02week16ttvxl\BT02week16ttvxl.c"
	dw 0xFFFC & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_tx_init
	FNCALL	_main,_rx_init
	FNCALL	_main,_send_string
	FNCALL	_send_string,_send_char
	FNROOT	_main
	FNCALL	intlevel1,_ngat
	global	intlevel1
	FNROOT	intlevel1
	global	_rx_data
	global	_dem
	global	_i
	global	_RCREG
psect	text156,local,class=CODE,delta=2
global __ptext156
__ptext156:
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
	global	_RA3
_RA3	set	43
	global	_RA4
_RA4	set	44
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
	global	_TMR2IF
_TMR2IF	set	97
	global	_TMR2ON
_TMR2ON	set	146
	global	_TOUTPS0
_TOUTPS0	set	147
	global	_TOUTPS1
_TOUTPS1	set	148
	global	_TOUTPS2
_TOUTPS2	set	149
	global	_TOUTPS3
_TOUTPS3	set	150
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
	global	_IRCF0
_IRCF0	set	1148
	global	_IRCF1
_IRCF1	set	1149
	global	_IRCF2
_IRCF2	set	1150
	global	_RCIE
_RCIE	set	1125
	global	_SCS
_SCS	set	1144
	global	_SYNC
_SYNC	set	1220
	global	_TMR2IE
_TMR2IE	set	1121
	global	_TRISA3
_TRISA3	set	1067
	global	_TRISA4
_TRISA4	set	1068
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
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
	
STR_5:	
	retlw	79	;'O'
	retlw	116	;'t'
	retlw	104	;'h'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	110	;'n'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	98	;'b'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	115	;'s'
	retlw	0
psect	strings
	
STR_1:	
	retlw	78	;'N'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	98	;'b'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_2:	
	retlw	78	;'N'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	98	;'b'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	50	;'2'
	retlw	0
psect	strings
	
STR_3:	
	retlw	78	;'N'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	98	;'b'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	51	;'3'
	retlw	0
psect	strings
	
STR_4:	
	retlw	78	;'N'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	98	;'b'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	52	;'4'
	retlw	0
psect	strings
	file	"BT02week16ttvxl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_dem:
       ds      2

_i:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_rx_data:
       ds      10

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
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_tx_init
?_tx_init:	; 0 bytes @ 0x0
	global	?_rx_init
?_rx_init:	; 0 bytes @ 0x0
	global	?_send_string
?_send_string:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_send_char
?_send_char:	; 0 bytes @ 0x0
	global	?_ngat
?_ngat:	; 0 bytes @ 0x0
	global	??_ngat
??_ngat:	; 0 bytes @ 0x0
	ds	3
	global	??_tx_init
??_tx_init:	; 0 bytes @ 0x3
	global	??_rx_init
??_rx_init:	; 0 bytes @ 0x3
	global	??_send_char
??_send_char:	; 0 bytes @ 0x3
	global	send_char@data
send_char@data:	; 1 bytes @ 0x3
	ds	1
	global	??_send_string
??_send_string:	; 0 bytes @ 0x4
	global	send_string@s
send_string@s:	; 1 bytes @ 0x4
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x5
;;Data sizes: Strings 46, constant 0, data 0, bss 14, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5       9
;; BANK0           80      0      10
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; send_string@s	PTR const unsigned char  size(1) Largest target is 14
;;		 -> STR_5(CODE[14]), STR_4(CODE[8]), STR_3(CODE[8]), STR_2(CODE[8]), 
;;		 -> STR_1(CODE[8]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_send_string
;;   _send_string->_send_char
;;
;; Critical Paths under _ngat in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;; (0) _main                                                 0     0      0      67
;;                            _tx_init
;;                            _rx_init
;;                        _send_string
;; ---------------------------------------------------------------------------------
;; (1) _send_string                                          1     1      0      67
;;                                              4 COMMON     1     1      0
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (2) _send_char                                            1     1      0      22
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _rx_init                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _tx_init                                              0     0      0       0
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
;;   _tx_init
;;   _rx_init
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
;;COMMON               E      5       9       1       64.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0      13       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       A       5       12.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      15      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 16 in file "D:\TTVXL\Project TTVXL\BT02week16ttvxl\BT02week16ttvxl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 11F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_tx_init
;;		_rx_init
;;		_send_string
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT02week16ttvxl\BT02week16ttvxl.c"
	line	16
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	17
	
l2645:	
;BT02week16ttvxl.c: 17: IRCF2 = 1; IRCF1 = 1; IRCF0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1150/8)^080h,(1150)&7
	bsf	(1149/8)^080h,(1149)&7
	bcf	(1148/8)^080h,(1148)&7
	line	18
;BT02week16ttvxl.c: 18: SCS = 1;
	bsf	(1144/8)^080h,(1144)&7
	line	20
	
l2647:	
;BT02week16ttvxl.c: 20: ANSEL = ANSELH = 0;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	21
	
l2649:	
;BT02week16ttvxl.c: 21: TRISA3 = 0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1067/8)^080h,(1067)&7
	line	22
	
l2651:	
;BT02week16ttvxl.c: 22: TRISA4 = 0;
	bcf	(1068/8)^080h,(1068)&7
	line	23
	
l2653:	
;BT02week16ttvxl.c: 23: TRISC6 = 0;
	bcf	(1086/8)^080h,(1086)&7
	line	24
	
l2655:	
;BT02week16ttvxl.c: 24: TRISC7 = 1;
	bsf	(1087/8)^080h,(1087)&7
	line	27
	
l2657:	
;BT02week16ttvxl.c: 27: RCIE = 1;
	bsf	(1125/8)^080h,(1125)&7
	line	28
	
l2659:	
;BT02week16ttvxl.c: 28: RCIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(101/8),(101)&7
	line	29
	
l2661:	
;BT02week16ttvxl.c: 29: PEIE = 1;
	bsf	(94/8),(94)&7
	line	30
	
l2663:	
;BT02week16ttvxl.c: 30: GIE = 1;
	bsf	(95/8),(95)&7
	line	33
	
l2665:	
;BT02week16ttvxl.c: 33: T2CKPS1 = 0; T2CKPS0 = 1;
	bcf	(145/8),(145)&7
	
l2667:	
	bsf	(144/8),(144)&7
	line	34
	
l2669:	
;BT02week16ttvxl.c: 34: TOUTPS3 = 1; TOUTPS2 = 0; TOUTPS1 = 0; TOUTPS0 = 1;
	bsf	(150/8),(150)&7
	
l2671:	
	bcf	(149/8),(149)&7
	
l2673:	
	bcf	(148/8),(148)&7
	
l2675:	
	bsf	(147/8),(147)&7
	line	35
;BT02week16ttvxl.c: 35: TMR2 = 0 ;PR2 = 250;
	clrf	(17)	;volatile
	
l2677:	
	movlw	(0FAh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	36
	
l2679:	
;BT02week16ttvxl.c: 36: TMR2ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(146/8),(146)&7
	line	38
	
l2681:	
;BT02week16ttvxl.c: 38: TMR2IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1121/8)^080h,(1121)&7
	line	39
	
l2683:	
;BT02week16ttvxl.c: 39: TMR2IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(97/8),(97)&7
	line	40
	
l2685:	
;BT02week16ttvxl.c: 40: PEIE=1;
	bsf	(94/8),(94)&7
	line	41
	
l2687:	
;BT02week16ttvxl.c: 41: GIE=1;
	bsf	(95/8),(95)&7
	line	43
	
l2689:	
;BT02week16ttvxl.c: 43: tx_init();
	fcall	_tx_init
	line	44
	
l2691:	
;BT02week16ttvxl.c: 44: rx_init();
	fcall	_rx_init
	line	47
	
l2693:	
;BT02week16ttvxl.c: 46: {
;BT02week16ttvxl.c: 47: if(rx_data[i] == '1')
	movf	(_i),w
	addlw	_rx_data&0ffh
	movwf	fsr0
	movf	indf,w
	xorlw	031h
	skipz
	goto	u231
	goto	u230
u231:
	goto	l2699
u230:
	line	49
	
l2695:	
;BT02week16ttvxl.c: 48: {
;BT02week16ttvxl.c: 49: RA3 = 0;RA4 = 0 ;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(43/8),(43)&7
	bcf	(44/8),(44)&7
	line	50
	
l2697:	
;BT02week16ttvxl.c: 50: send_string("Number1");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_send_string
	line	51
;BT02week16ttvxl.c: 51: }
	goto	l2693
	line	52
	
l2699:	
;BT02week16ttvxl.c: 52: else if(rx_data[i] == '2')
	movf	(_i),w
	addlw	_rx_data&0ffh
	movwf	fsr0
	movf	indf,w
	xorlw	032h
	skipz
	goto	u241
	goto	u240
u241:
	goto	l2705
u240:
	line	54
	
l2701:	
;BT02week16ttvxl.c: 53: {
;BT02week16ttvxl.c: 54: RA3 = 1;RA4 = 1 ;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	bsf	(44/8),(44)&7
	line	55
	
l2703:	
;BT02week16ttvxl.c: 55: send_string("Number2");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_send_string
	line	56
;BT02week16ttvxl.c: 56: }
	goto	l2693
	line	57
	
l2705:	
;BT02week16ttvxl.c: 57: else if(rx_data[i] == '3')
	movf	(_i),w
	addlw	_rx_data&0ffh
	movwf	fsr0
	movf	indf,w
	xorlw	033h
	skipz
	goto	u251
	goto	u250
u251:
	goto	l2711
u250:
	line	59
	
l2707:	
;BT02week16ttvxl.c: 58: {
;BT02week16ttvxl.c: 59: RA3 = 1;RA4 = 0 ;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	bcf	(44/8),(44)&7
	line	60
	
l2709:	
;BT02week16ttvxl.c: 60: send_string("Number3");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_send_string
	line	61
;BT02week16ttvxl.c: 61: }
	goto	l2693
	line	62
	
l2711:	
;BT02week16ttvxl.c: 62: else if(rx_data[i] == '4')
	movf	(_i),w
	addlw	_rx_data&0ffh
	movwf	fsr0
	movf	indf,w
	xorlw	034h
	skipz
	goto	u261
	goto	u260
u261:
	goto	l2717
u260:
	line	64
	
l2713:	
;BT02week16ttvxl.c: 63: {
;BT02week16ttvxl.c: 64: RA3 = 0;RA4 = 1 ;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(43/8),(43)&7
	bsf	(44/8),(44)&7
	line	65
	
l2715:	
;BT02week16ttvxl.c: 65: send_string("Number4");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_send_string
	line	66
;BT02week16ttvxl.c: 66: }
	goto	l2693
	line	69
	
l2717:	
;BT02week16ttvxl.c: 67: else
;BT02week16ttvxl.c: 68: {
;BT02week16ttvxl.c: 69: send_string("Other numbers");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_send_string
	goto	l2693
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	72
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_send_string
psect	text157,local,class=CODE,delta=2
global __ptext157
__ptext157:

;; *************** function _send_string *****************
;; Defined at:
;;		line 98 in file "D:\TTVXL\Project TTVXL\BT02week16ttvxl\BT02week16ttvxl.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_5(14), STR_4(8), STR_3(8), STR_2(8), 
;;		 -> STR_1(8), 
;; Auto vars:     Size  Location     Type
;;  s               1    4[COMMON] PTR const unsigned char 
;;		 -> STR_5(14), STR_4(8), STR_3(8), STR_2(8), 
;;		 -> STR_1(8), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 11F/0
;;		On exit  : 11F/0
;;		Unchanged: FFE80/0
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
psect	text157
	file	"D:\TTVXL\Project TTVXL\BT02week16ttvxl\BT02week16ttvxl.c"
	line	98
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 5
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	movwf	(send_string@s)
	line	99
	
l2637:	
;BT02week16ttvxl.c: 99: while(*s){send_char(*s++);}
	goto	l2643
	
l2639:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_send_char
	
l2641:	
	incf	(send_string@s),f
	
l2643:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u221
	goto	u220
u221:
	goto	l2639
u220:
	line	100
	
l1066:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	_send_char
psect	text158,local,class=CODE,delta=2
global __ptext158
__ptext158:

;; *************** function _send_char *****************
;; Defined at:
;;		line 92 in file "D:\TTVXL\Project TTVXL\BT02week16ttvxl\BT02week16ttvxl.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 11F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
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
psect	text158
	file	"D:\TTVXL\Project TTVXL\BT02week16ttvxl\BT02week16ttvxl.c"
	line	92
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 5
; Regs used in _send_char: [wreg]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	93
	
l2605:	
;BT02week16ttvxl.c: 93: while(TXIF == 0){}
	
l1057:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u141
	goto	u140
u141:
	goto	l1057
u140:
	line	94
	
l2607:	
;BT02week16ttvxl.c: 94: TXREG = data;
	movf	(send_char@data),w
	movwf	(25)	;volatile
	line	95
	
l1060:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_rx_init
psect	text159,local,class=CODE,delta=2
global __ptext159
__ptext159:

;; *************** function _rx_init *****************
;; Defined at:
;;		line 84 in file "D:\TTVXL\Project TTVXL\BT02week16ttvxl\BT02week16ttvxl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
psect	text159
	file	"D:\TTVXL\Project TTVXL\BT02week16ttvxl\BT02week16ttvxl.c"
	line	84
	global	__size_of_rx_init
	__size_of_rx_init	equ	__end_of_rx_init-_rx_init
	
_rx_init:	
	opt	stack 6
; Regs used in _rx_init: [wreg+status,2]
	line	85
	
l2589:	
;BT02week16ttvxl.c: 85: SPBRGH = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(154)^080h	;volatile
	line	86
	
l2591:	
;BT02week16ttvxl.c: 86: SPBRG = 69;
	movlw	(045h)
	movwf	(153)^080h	;volatile
	line	87
	
l2593:	
;BT02week16ttvxl.c: 87: SYNC = 0; BRGH = 1; BRG16 = 1;
	bcf	(1220/8)^080h,(1220)&7
	
l2595:	
	bsf	(1218/8)^080h,(1218)&7
	
l2597:	
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	88
	
l2599:	
;BT02week16ttvxl.c: 88: CREN = 1; RX9 = 0; SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	
l2601:	
	bcf	(198/8),(198)&7
	
l2603:	
	bsf	(199/8),(199)&7
	line	89
	
l1054:	
	return
	opt stack 0
GLOBAL	__end_of_rx_init
	__end_of_rx_init:
;; =============== function _rx_init ends ============

	signat	_rx_init,88
	global	_tx_init
psect	text160,local,class=CODE,delta=2
global __ptext160
__ptext160:

;; *************** function _tx_init *****************
;; Defined at:
;;		line 75 in file "D:\TTVXL\Project TTVXL\BT02week16ttvxl\BT02week16ttvxl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
psect	text160
	file	"D:\TTVXL\Project TTVXL\BT02week16ttvxl\BT02week16ttvxl.c"
	line	75
	global	__size_of_tx_init
	__size_of_tx_init	equ	__end_of_tx_init-_tx_init
	
_tx_init:	
	opt	stack 6
; Regs used in _tx_init: [wreg+status,2]
	line	76
	
l2573:	
;BT02week16ttvxl.c: 76: SPBRGH = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(154)^080h	;volatile
	line	77
	
l2575:	
;BT02week16ttvxl.c: 77: SPBRG = 69;
	movlw	(045h)
	movwf	(153)^080h	;volatile
	line	78
	
l2577:	
;BT02week16ttvxl.c: 78: SYNC = 0; BRGH = 1; BRG16 = 1;
	bcf	(1220/8)^080h,(1220)&7
	
l2579:	
	bsf	(1218/8)^080h,(1218)&7
	
l2581:	
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	79
	
l2583:	
;BT02week16ttvxl.c: 79: TXEN = 1; TX9 = 0; SPEN = 1;
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7
	
l2585:	
	bcf	(1222/8)^080h,(1222)&7
	
l2587:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	81
	
l1051:	
	return
	opt stack 0
GLOBAL	__end_of_tx_init
	__end_of_tx_init:
;; =============== function _tx_init ends ============

	signat	_tx_init,88
	global	_ngat
psect	text161,local,class=CODE,delta=2
global __ptext161
__ptext161:

;; *************** function _ngat *****************
;; Defined at:
;;		line 103 in file "D:\TTVXL\Project TTVXL\BT02week16ttvxl\BT02week16ttvxl.c"
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
;;		Unchanged: FFE00/0
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
psect	text161
	file	"D:\TTVXL\Project TTVXL\BT02week16ttvxl\BT02week16ttvxl.c"
	line	103
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
psect	text161
	line	104
	
i1l2609:	
;BT02week16ttvxl.c: 104: if(RCIF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u15_21
	goto	u15_20
u15_21:
	goto	i1l2619
u15_20:
	line	106
	
i1l2611:	
;BT02week16ttvxl.c: 105: {
;BT02week16ttvxl.c: 106: rx_data[i] = RCREG;
	movf	(_i),w
	addlw	_rx_data&0ffh
	movwf	fsr0
	movf	(26),w	;volatile
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	107
	
i1l2613:	
;BT02week16ttvxl.c: 107: i++;
	incf	(_i),f
	skipnz
	incf	(_i+1),f
	line	108
	
i1l2615:	
;BT02week16ttvxl.c: 108: if(i==1) {i=0;}
	decf	(_i),w
	iorwf	(_i+1),w

	skipz
	goto	u16_21
	goto	u16_20
u16_21:
	goto	i1l2619
u16_20:
	
i1l2617:	
	clrf	(_i)
	clrf	(_i+1)
	line	110
	
i1l2619:	
;BT02week16ttvxl.c: 109: }
;BT02week16ttvxl.c: 110: RCIF=0;
	bcf	(101/8),(101)&7
	line	111
	
i1l2621:	
;BT02week16ttvxl.c: 111: if(TMR2IF)
	btfss	(97/8),(97)&7
	goto	u17_21
	goto	u17_20
u17_21:
	goto	i1l2635
u17_20:
	line	113
	
i1l2623:	
;BT02week16ttvxl.c: 112: {
;BT02week16ttvxl.c: 113: dem++;
	incf	(_dem),f
	skipnz
	incf	(_dem+1),f
	line	114
	
i1l2625:	
;BT02week16ttvxl.c: 114: if(dem==50)
		movf	(_dem),w
	xorlw	50
	iorwf	(_dem+1),w

	skipz
	goto	u18_21
	goto	u18_20
u18_21:
	goto	i1l2629
u18_20:
	line	116
	
i1l2627:	
;BT02week16ttvxl.c: 115: {
;BT02week16ttvxl.c: 116: RA3 = RA4 =0;
	bcf	(44/8),(44)&7
	bcf	(43/8),(43)&7
	line	118
	
i1l2629:	
;BT02week16ttvxl.c: 117: }
;BT02week16ttvxl.c: 118: if(dem==100)
		movf	(_dem),w
	xorlw	100
	iorwf	(_dem+1),w

	skipz
	goto	u19_21
	goto	u19_20
u19_21:
	goto	i1l2635
u19_20:
	line	120
	
i1l2631:	
;BT02week16ttvxl.c: 119: {
;BT02week16ttvxl.c: 120: RA3 = RA4 =1;
	bsf	(44/8),(44)&7
	btfsc	(44/8),(44)&7
	goto	u20_21
	goto	u20_20
	
u20_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	goto	u21_24
u20_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(43/8),(43)&7
u21_24:
	line	121
	
i1l2633:	
;BT02week16ttvxl.c: 121: dem = 0;
	clrf	(_dem)
	clrf	(_dem+1)
	line	124
	
i1l2635:	
;BT02week16ttvxl.c: 122: }
;BT02week16ttvxl.c: 123: }
;BT02week16ttvxl.c: 124: TMR2IF=0;
	bcf	(97/8),(97)&7
	line	125
	
i1l1074:	
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
psect	text162,local,class=CODE,delta=2
global __ptext162
__ptext162:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
