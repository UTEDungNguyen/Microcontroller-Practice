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
# 9 "D:\TTVXL\Project TTVXL\BT04week16ttvxl\BT04week16ttvxl.c"
	psect config,class=CONFIG,delta=2 ;#
# 9 "D:\TTVXL\Project TTVXL\BT04week16ttvxl\BT04week16ttvxl.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_tx_init
	FNCALL	_main,_rx_init
	FNCALL	_main,_send_string
	FNCALL	_send_string,_send_char
	FNROOT	_main
	FNCALL	_ngat,_atoi
	FNCALL	_atoi,___wmul
	FNCALL	_atoi,_isdigit
	FNCALL	intlevel1,_ngat
	global	intlevel1
	FNROOT	intlevel1
	global	_dem
	global	_i
	global	_pwm_v
	global	_rx_data
	global	_CCP1CON
psect	text187,local,class=CODE,delta=2
global __ptext187
__ptext187:
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
	global	_RC2
_RC2	set	58
	global	_RCIF
_RCIF	set	101
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
	file	"BT04week16ttvxl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_dem:
       ds      2

_i:
       ds      2

_pwm_v:
       ds      2

_rx_data:
       ds      5

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
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_send_char
?_send_char:	; 0 bytes @ 0x0
	global	?_ngat
?_ngat:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	_isdigit$2328
_isdigit$2328:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	ds	1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	2
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	2
	global	?_atoi
?_atoi:	; 2 bytes @ 0x6
	ds	2
	global	??_atoi
??_atoi:	; 0 bytes @ 0x8
	ds	2
	global	atoi@sign
atoi@sign:	; 1 bytes @ 0xA
	ds	1
	global	atoi@a
atoi@a:	; 2 bytes @ 0xB
	ds	2
	global	atoi@s
atoi@s:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_ngat
??_ngat:	; 0 bytes @ 0x0
	ds	5
	global	ngat@PWM_V
ngat@PWM_V:	; 3 bytes @ 0x5
	ds	3
	global	ngat@PWM_V_1811
ngat@PWM_V_1811:	; 3 bytes @ 0x8
	ds	3
	global	??_tx_init
??_tx_init:	; 0 bytes @ 0xB
	global	??_rx_init
??_rx_init:	; 0 bytes @ 0xB
	global	??_send_char
??_send_char:	; 0 bytes @ 0xB
	global	send_char@data
send_char@data:	; 1 bytes @ 0xB
	ds	1
	global	??_send_string
??_send_string:	; 0 bytes @ 0xC
	global	send_string@s
send_string@s:	; 1 bytes @ 0xC
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xD
;;Data sizes: Strings 0, constant 0, data 0, bss 11, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     13      24
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_atoi	int  size(1) Largest target is 0
;;
;; atoi@s	PTR const unsigned char  size(1) Largest target is 3
;;		 -> ngat@PWM_V_1811(BANK0[3]), ngat@PWM_V(BANK0[3]), 
;;
;; send_string@s	PTR const unsigned char  size(1) Largest target is 5
;;		 -> rx_data(BANK0[5]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _ngat in COMMON
;;
;;   _ngat->_atoi
;;   _atoi->___wmul
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_send_string
;;   _send_string->_send_char
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
;; (0) _main                                                 3     3      0      67
;;                            _tx_init
;;                            _rx_init
;;                        _send_string
;; ---------------------------------------------------------------------------------
;; (1) _send_string                                          1     1      0      67
;;                                             12 BANK0      1     1      0
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (2) _send_char                                            1     1      0      22
;;                                             11 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _rx_init                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _tx_init                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _ngat                                                11    11      0     492
;;                                              0 BANK0     11    11      0
;;                               _atoi
;; ---------------------------------------------------------------------------------
;; (4) _atoi                                                 8     6      2     388
;;                                              6 COMMON     8     6      2
;;                             ___wmul
;;                            _isdigit
;; ---------------------------------------------------------------------------------
;; (5) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (5) _isdigit                                              2     2      0      68
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _tx_init
;;   _rx_init
;;   _send_string
;;     _send_char
;;
;; _ngat (ROOT)
;;   _atoi
;;     ___wmul
;;     _isdigit
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
;;STACK                0      0       8       2        0.0%
;;ABS                  0      0      26       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      D      18       5       30.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      2E      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 19 in file "D:\TTVXL\Project TTVXL\BT04week16ttvxl\BT04week16ttvxl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  PWM_V           3    0        unsigned char [3]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_tx_init
;;		_rx_init
;;		_send_string
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT04week16ttvxl\BT04week16ttvxl.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	20
	
l2812:	
;BT04week16ttvxl.c: 20: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	22
	
l2814:	
;BT04week16ttvxl.c: 22: TRISC2 = 0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1082/8)^080h,(1082)&7
	line	23
	
l2816:	
;BT04week16ttvxl.c: 23: RC2 = RD5 = RD6 = RD7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(71/8),(71)&7
	bcf	(70/8),(70)&7
	bcf	(69/8),(69)&7
	bcf	(58/8),(58)&7
	line	24
	
l2818:	
;BT04week16ttvxl.c: 24: TRISD5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1093/8)^080h,(1093)&7
	line	25
	
l2820:	
;BT04week16ttvxl.c: 25: TRISD6 = 0;
	bcf	(1094/8)^080h,(1094)&7
	line	26
	
l2822:	
;BT04week16ttvxl.c: 26: TRISD7 = 0;
	bcf	(1095/8)^080h,(1095)&7
	line	28
	
l2824:	
;BT04week16ttvxl.c: 28: tx_init();
	fcall	_tx_init
	line	29
	
l2826:	
;BT04week16ttvxl.c: 29: rx_init();
	fcall	_rx_init
	line	32
	
l2828:	
;BT04week16ttvxl.c: 32: RCIF = 0;
	bcf	(101/8),(101)&7
	line	33
	
l2830:	
;BT04week16ttvxl.c: 33: RCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1125/8)^080h,(1125)&7
	line	34
	
l2832:	
;BT04week16ttvxl.c: 34: PEIE = 1;
	bsf	(94/8),(94)&7
	line	35
	
l2834:	
;BT04week16ttvxl.c: 35: GIE = 1;
	bsf	(95/8),(95)&7
	line	37
	
l2836:	
;BT04week16ttvxl.c: 37: T2CKPS1 = 0; T2CKPS0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(145/8),(145)&7
	
l2838:	
	bsf	(144/8),(144)&7
	line	38
;BT04week16ttvxl.c: 38: TMR2 = 0; PR2 = 124;
	clrf	(17)	;volatile
	
l2840:	
	movlw	(07Ch)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	39
	
l2842:	
;BT04week16ttvxl.c: 39: TMR2ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(146/8),(146)&7
	line	40
	
l2844:	
;BT04week16ttvxl.c: 40: CCP1CON = 0b00000000;
	clrf	(23)	;volatile
	line	41
	
l2846:	
;BT04week16ttvxl.c: 41: CCPR1L = 0;
	clrf	(21)	;volatile
	line	46
	
l2848:	
;BT04week16ttvxl.c: 45: {
;BT04week16ttvxl.c: 46: send_string(rx_data);
	movlw	(_rx_data)&0ffh
	fcall	_send_string
	goto	l2848
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	48
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_send_string
psect	text188,local,class=CODE,delta=2
global __ptext188
__ptext188:

;; *************** function _send_string *****************
;; Defined at:
;;		line 74 in file "D:\TTVXL\Project TTVXL\BT04week16ttvxl\BT04week16ttvxl.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> rx_data(5), 
;; Auto vars:     Size  Location     Type
;;  s               1   12[BANK0 ] PTR const unsigned char 
;;		 -> rx_data(5), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
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
psect	text188
	file	"D:\TTVXL\Project TTVXL\BT04week16ttvxl\BT04week16ttvxl.c"
	line	74
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 3
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	movwf	(send_string@s)
	line	75
	
l2804:	
;BT04week16ttvxl.c: 75: while(*s){send_char(*s++);}
	goto	l2810
	
l2806:	
	movf	(send_string@s),w
	movwf	fsr0
	movf	indf,w
	fcall	_send_char
	
l2808:	
	incf	(send_string@s),f
	
l2810:	
	movf	(send_string@s),w
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u401
	goto	u400
u401:
	goto	l2806
u400:
	line	76
	
l1062:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	_send_char
psect	text189,local,class=CODE,delta=2
global __ptext189
__ptext189:

;; *************** function _send_char *****************
;; Defined at:
;;		line 68 in file "D:\TTVXL\Project TTVXL\BT04week16ttvxl\BT04week16ttvxl.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   11[BANK0 ] unsigned char 
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
psect	text189
	file	"D:\TTVXL\Project TTVXL\BT04week16ttvxl\BT04week16ttvxl.c"
	line	68
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 3
; Regs used in _send_char: [wreg]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	69
	
l2686:	
;BT04week16ttvxl.c: 69: while(TXIF == 0){}
	
l1053:	
	btfss	(100/8),(100)&7
	goto	u211
	goto	u210
u211:
	goto	l1053
u210:
	line	70
	
l2688:	
;BT04week16ttvxl.c: 70: TXREG = data;
	movf	(send_char@data),w
	movwf	(25)	;volatile
	line	71
	
l1056:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_rx_init
psect	text190,local,class=CODE,delta=2
global __ptext190
__ptext190:

;; *************** function _rx_init *****************
;; Defined at:
;;		line 60 in file "D:\TTVXL\Project TTVXL\BT04week16ttvxl\BT04week16ttvxl.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text190
	file	"D:\TTVXL\Project TTVXL\BT04week16ttvxl\BT04week16ttvxl.c"
	line	60
	global	__size_of_rx_init
	__size_of_rx_init	equ	__end_of_rx_init-_rx_init
	
_rx_init:	
	opt	stack 4
; Regs used in _rx_init: [wreg]
	line	61
	
l2672:	
;BT04week16ttvxl.c: 61: SPBRGH = 0x02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(154)^080h	;volatile
	line	62
;BT04week16ttvxl.c: 62: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	63
	
l2674:	
;BT04week16ttvxl.c: 63: SYNC = 0; BRGH = 1; BRG16 = 1;
	bcf	(1220/8)^080h,(1220)&7
	
l2676:	
	bsf	(1218/8)^080h,(1218)&7
	
l2678:	
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	64
	
l2680:	
;BT04week16ttvxl.c: 64: CREN = 1; RX9 = 0; SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	
l2682:	
	bcf	(198/8),(198)&7
	
l2684:	
	bsf	(199/8),(199)&7
	line	65
	
l1050:	
	return
	opt stack 0
GLOBAL	__end_of_rx_init
	__end_of_rx_init:
;; =============== function _rx_init ends ============

	signat	_rx_init,88
	global	_tx_init
psect	text191,local,class=CODE,delta=2
global __ptext191
__ptext191:

;; *************** function _tx_init *****************
;; Defined at:
;;		line 51 in file "D:\TTVXL\Project TTVXL\BT04week16ttvxl\BT04week16ttvxl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 17F/20
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
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
psect	text191
	file	"D:\TTVXL\Project TTVXL\BT04week16ttvxl\BT04week16ttvxl.c"
	line	51
	global	__size_of_tx_init
	__size_of_tx_init	equ	__end_of_tx_init-_tx_init
	
_tx_init:	
	opt	stack 4
; Regs used in _tx_init: [wreg]
	line	52
	
l2658:	
;BT04week16ttvxl.c: 52: SPBRGH = 0x02;
	movlw	(02h)
	movwf	(154)^080h	;volatile
	line	53
;BT04week16ttvxl.c: 53: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	54
	
l2660:	
;BT04week16ttvxl.c: 54: SYNC = 0; BRGH = 1; BRG16 = 1;
	bcf	(1220/8)^080h,(1220)&7
	
l2662:	
	bsf	(1218/8)^080h,(1218)&7
	
l2664:	
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	55
	
l2666:	
;BT04week16ttvxl.c: 55: TXEN = 1; TX9 = 0; SPEN = 1;
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7
	
l2668:	
	bcf	(1222/8)^080h,(1222)&7
	
l2670:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	57
	
l1047:	
	return
	opt stack 0
GLOBAL	__end_of_tx_init
	__end_of_tx_init:
;; =============== function _tx_init ends ============

	signat	_tx_init,88
	global	_ngat
psect	text192,local,class=CODE,delta=2
global __ptext192
__ptext192:

;; *************** function _ngat *****************
;; Defined at:
;;		line 79 in file "D:\TTVXL\Project TTVXL\BT04week16ttvxl\BT04week16ttvxl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  PWM_V           3    8[BANK0 ] unsigned char [3]
;;  PWM_V           3    5[BANK0 ] unsigned char [3]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0      11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_atoi
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text192
	file	"D:\TTVXL\Project TTVXL\BT04week16ttvxl\BT04week16ttvxl.c"
	line	79
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
	opt	stack 3
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
	movwf	(??_ngat+1)
	movf	fsr0,w
	movwf	(??_ngat+2)
	movf	pclath,w
	movwf	(??_ngat+3)
	movf	btemp+1,w
	movwf	(??_ngat+4)
	ljmp	_ngat
psect	text192
	line	80
	
i1l2690:	
;BT04week16ttvxl.c: 80: if(RCIF)
	btfss	(101/8),(101)&7
	goto	u22_21
	goto	u22_20
u22_21:
	goto	i1l2740
u22_20:
	line	82
	
i1l2692:	
;BT04week16ttvxl.c: 81: {
;BT04week16ttvxl.c: 82: rx_data[i] = RCREG;
	movf	(_i),w
	addlw	_rx_data&0ffh
	movwf	fsr0
	movf	(26),w	;volatile
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	83
	
i1l2694:	
;BT04week16ttvxl.c: 83: i++;
	incf	(_i),f
	skipnz
	incf	(_i+1),f
	line	84
	
i1l2696:	
;BT04week16ttvxl.c: 84: if(i==5)
		movf	(_i),w
	xorlw	5
	iorwf	(_i+1),w

	skipz
	goto	u23_21
	goto	u23_20
u23_21:
	goto	i1l2700
u23_20:
	line	86
	
i1l2698:	
;BT04week16ttvxl.c: 85: {
;BT04week16ttvxl.c: 86: i=0;
	clrf	(_i)
	clrf	(_i+1)
	line	88
	
i1l2700:	
;BT04week16ttvxl.c: 87: }
;BT04week16ttvxl.c: 88: if(rx_data[0] == 'S')
	movf	(_rx_data),w
	xorlw	053h
	skipz
	goto	u24_21
	goto	u24_20
u24_21:
	goto	i1l2708
u24_20:
	line	90
	
i1l2702:	
;BT04week16ttvxl.c: 89: {
;BT04week16ttvxl.c: 90: i = 0;
	clrf	(_i)
	clrf	(_i+1)
	line	91
	
i1l2704:	
;BT04week16ttvxl.c: 91: CCP1CON = 0b01001100;
	movlw	(04Ch)
	movwf	(23)	;volatile
	line	92
	
i1l2706:	
;BT04week16ttvxl.c: 92: CCPR1L = 124;
	movlw	(07Ch)
	movwf	(21)	;volatile
	line	94
	
i1l2708:	
;BT04week16ttvxl.c: 93: }
;BT04week16ttvxl.c: 94: if(rx_data[0] == 'P')
	movf	(_rx_data),w
	xorlw	050h
	skipz
	goto	u25_21
	goto	u25_20
u25_21:
	goto	i1l2712
u25_20:
	line	96
	
i1l2710:	
;BT04week16ttvxl.c: 95: {
;BT04week16ttvxl.c: 96: i = 0;
	clrf	(_i)
	clrf	(_i+1)
	line	97
;BT04week16ttvxl.c: 97: CCP1CON = 0b00000000;
	clrf	(23)	;volatile
	line	98
;BT04week16ttvxl.c: 98: CCPR1L = 0;
	clrf	(21)	;volatile
	line	100
	
i1l2712:	
;BT04week16ttvxl.c: 99: }
;BT04week16ttvxl.c: 100: if(rx_data[0] == 'B')
	movf	(_rx_data),w
	xorlw	042h
	skipz
	goto	u26_21
	goto	u26_20
u26_21:
	goto	i1l2726
u26_20:
	line	102
	
i1l2714:	
;BT04week16ttvxl.c: 101: {
;BT04week16ttvxl.c: 102: CCP1CON = 0b01001100;
	movlw	(04Ch)
	movwf	(23)	;volatile
	line	105
;BT04week16ttvxl.c: 104: char PWM_V[3];
;BT04week16ttvxl.c: 105: dem = 2;
	movlw	02h
	movwf	(_dem)
	clrf	(_dem+1)
	line	106
;BT04week16ttvxl.c: 106: while(dem<5)
	goto	i1l2720
	line	108
	
i1l2716:	
;BT04week16ttvxl.c: 107: {
;BT04week16ttvxl.c: 108: PWM_V[dem-2] = rx_data[dem];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dem),w
	addlw	_rx_data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_ngat+0)+0
	movf	(_dem),w
	addlw	0FEh
	addlw	ngat@PWM_V&0ffh
	movwf	fsr0
	movf	(??_ngat+0)+0,w
	movwf	indf
	line	109
	
i1l2718:	
;BT04week16ttvxl.c: 109: dem++;
	incf	(_dem),f
	skipnz
	incf	(_dem+1),f
	line	106
	
i1l2720:	
	movf	(_dem+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u27_25
	movlw	low(05h)
	subwf	(_dem),w
u27_25:

	skipc
	goto	u27_21
	goto	u27_20
u27_21:
	goto	i1l2716
u27_20:
	line	111
	
i1l2722:	
;BT04week16ttvxl.c: 110: }
;BT04week16ttvxl.c: 111: pwm_v = atoi(PWM_V);
	movlw	(ngat@PWM_V)&0ffh
	fcall	_atoi
	movf	(1+(?_atoi)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_pwm_v+1)
	movf	(0+(?_atoi)),w
	movwf	(_pwm_v)
	line	112
	
i1l2724:	
;BT04week16ttvxl.c: 112: CCPR1L = pwm_v;
	movf	(_pwm_v),w
	movwf	(21)	;volatile
	line	114
	
i1l2726:	
;BT04week16ttvxl.c: 113: }
;BT04week16ttvxl.c: 114: if(rx_data[0] == 'F')
	movf	(_rx_data),w
	xorlw	046h
	skipz
	goto	u28_21
	goto	u28_20
u28_21:
	goto	i1l2740
u28_20:
	line	116
	
i1l2728:	
;BT04week16ttvxl.c: 115: {
;BT04week16ttvxl.c: 116: CCP1CON = 0b11001100;
	movlw	(0CCh)
	movwf	(23)	;volatile
	line	119
;BT04week16ttvxl.c: 118: char PWM_V[3];
;BT04week16ttvxl.c: 119: dem = 2;
	movlw	02h
	movwf	(_dem)
	clrf	(_dem+1)
	line	120
;BT04week16ttvxl.c: 120: while(dem<5)
	goto	i1l2734
	line	122
	
i1l2730:	
;BT04week16ttvxl.c: 121: {
;BT04week16ttvxl.c: 122: PWM_V[dem-2] = rx_data[dem];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dem),w
	addlw	_rx_data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_ngat+0)+0
	movf	(_dem),w
	addlw	0FEh
	addlw	ngat@PWM_V_1811&0ffh
	movwf	fsr0
	movf	(??_ngat+0)+0,w
	movwf	indf
	line	123
	
i1l2732:	
;BT04week16ttvxl.c: 123: dem++;
	incf	(_dem),f
	skipnz
	incf	(_dem+1),f
	line	120
	
i1l2734:	
	movf	(_dem+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u29_25
	movlw	low(05h)
	subwf	(_dem),w
u29_25:

	skipc
	goto	u29_21
	goto	u29_20
u29_21:
	goto	i1l2730
u29_20:
	line	125
	
i1l2736:	
;BT04week16ttvxl.c: 124: }
;BT04week16ttvxl.c: 125: pwm_v = atoi(PWM_V);
	movlw	(ngat@PWM_V_1811)&0ffh
	fcall	_atoi
	movf	(1+(?_atoi)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_pwm_v+1)
	movf	(0+(?_atoi)),w
	movwf	(_pwm_v)
	line	126
	
i1l2738:	
;BT04week16ttvxl.c: 126: CCPR1L = pwm_v;
	movf	(_pwm_v),w
	movwf	(21)	;volatile
	line	130
	
i1l2740:	
;BT04week16ttvxl.c: 128: }
;BT04week16ttvxl.c: 129: }
;BT04week16ttvxl.c: 130: RCIF=0;
	bcf	(101/8),(101)&7
	line	132
	
i1l1077:	
	movf	(??_ngat+4),w
	movwf	btemp+1
	movf	(??_ngat+3),w
	movwf	pclath
	movf	(??_ngat+2),w
	movwf	fsr0
	swapf	(??_ngat+1)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ngat
	__end_of_ngat:
;; =============== function _ngat ends ============

	signat	_ngat,88
	global	_atoi
psect	text193,local,class=CODE,delta=2
global __ptext193
__ptext193:

;; *************** function _atoi *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\atoi.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> ngat@PWM_V_1811(3), ngat@PWM_V(3), 
;; Auto vars:     Size  Location     Type
;;  s               1   13[COMMON] PTR const unsigned char 
;;		 -> ngat@PWM_V_1811(3), ngat@PWM_V(3), 
;;  a               2   11[COMMON] int 
;;  sign            1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 100/0
;;		Unchanged: FFEFF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___wmul
;;		_isdigit
;; This function is called by:
;;		_ngat
;; This function uses a non-reentrant model
;;
psect	text193
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\atoi.c"
	line	6
	global	__size_of_atoi
	__size_of_atoi	equ	__end_of_atoi-_atoi
	
_atoi:	
	opt	stack 3
; Regs used in _atoi: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;atoi@s stored from wreg
	movwf	(atoi@s)
	line	10
	
i1l2742:	
	goto	i1l2746
	line	11
	
i1l2744:	
	incf	(atoi@s),f
	line	10
	
i1l2746:	
	movf	(atoi@s),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	020h
	skipnz
	goto	u30_21
	goto	u30_20
u30_21:
	goto	i1l2744
u30_20:
	
i1l2748:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	09h
	skipnz
	goto	u31_21
	goto	u31_20
u31_21:
	goto	i1l2744
u31_20:
	line	12
	
i1l2750:	
	clrf	(atoi@a)
	clrf	(atoi@a+1)
	line	13
	clrf	(atoi@sign)
	line	14
	
i1l2752:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Dh
	skipz
	goto	u32_21
	goto	u32_20
u32_21:
	goto	i1l2756
u32_20:
	line	15
	
i1l2754:	
	incf	(atoi@sign),f
	line	16
	incf	(atoi@s),f
	line	17
	goto	i1l2764
	
i1l2756:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Bh
	skipz
	goto	u33_21
	goto	u33_20
u33_21:
	goto	i1l2764
u33_20:
	line	18
	
i1l2758:	
	incf	(atoi@s),f
	goto	i1l2764
	line	20
	
i1l2760:	
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
	goto	i1l2758
	line	19
	
i1l2764:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	fcall	_isdigit
	btfsc	status,0
	goto	u34_21
	goto	u34_20
u34_21:
	goto	i1l2760
u34_20:
	line	21
	
i1l2766:	
	movf	(atoi@sign),w
	skipz
	goto	u35_20
	goto	i1l2772
u35_20:
	line	22
	
i1l2768:	
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
	goto	i1l2072
	line	23
	
i1l2772:	
	movf	(atoi@a+1),w
	movwf	(?_atoi+1)
	movf	(atoi@a),w
	movwf	(?_atoi)
	line	24
	
i1l2072:	
	return
	opt stack 0
GLOBAL	__end_of_atoi
	__end_of_atoi:
;; =============== function _atoi ends ============

	signat	_atoi,4218
	global	___wmul
psect	text194,local,class=CODE,delta=2
global __ptext194
__ptext194:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 100/0
;;		Unchanged: FFEFF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_atoi
;; This function uses a non-reentrant model
;;
psect	text194
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 3
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
i1l2788:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
i1l2790:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u38_21
	goto	u38_20
u38_21:
	goto	i1l2794
u38_20:
	line	8
	
i1l2792:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
i1l2794:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
i1l2796:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
i1l2798:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u39_21
	goto	u39_20
u39_21:
	goto	i1l2790
u39_20:
	line	12
	
i1l2800:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
i1l2089:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_isdigit
psect	text195,local,class=CODE,delta=2
global __ptext195
__ptext195:

;; *************** function _isdigit *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: FFEFF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_atoi
;; This function uses a non-reentrant model
;;
psect	text195
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 3
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
i1l2776:	
	clrf	(_isdigit$2328)
	
i1l2778:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u36_21
	goto	u36_20
u36_21:
	goto	i1l2784
u36_20:
	
i1l2780:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u37_21
	goto	u37_20
u37_21:
	goto	i1l2784
u37_20:
	
i1l2782:	
	clrf	(_isdigit$2328)
	incf	(_isdigit$2328),f
	
i1l2784:	
	rrf	(_isdigit$2328),w
	
	line	15
	
i1l2077:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
psect	text196,local,class=CODE,delta=2
global __ptext196
__ptext196:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
