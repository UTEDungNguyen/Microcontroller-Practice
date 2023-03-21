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
# 7 "D:\TTVXL\Project TTVXL\BT Ôn Thi 10\BT Ôn Thi 10.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "D:\TTVXL\Project TTVXL\BT Ôn Thi 10\BT Ôn Thi 10.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_tx
	FNCALL	_main,_rx
	FNROOT	_main
	FNCALL	intlevel1,_ngat
	global	intlevel1
	FNROOT	intlevel1
	global	_data_rx
	global	_i
	global	_CCP1CON
psect	text91,local,class=CODE,delta=2
global __ptext91
__ptext91:
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_RCREG
_RCREG	set	26
	global	_TMR2
_TMR2	set	17
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
	file	"BT Ôn Thi 10.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_i:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_data_rx:
       ds      10

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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ngat
?_ngat:	; 0 bytes @ 0x0
	global	??_ngat
??_ngat:	; 0 bytes @ 0x0
	ds	3
	global	??_tx
??_tx:	; 0 bytes @ 0x3
	global	??_rx
??_rx:	; 0 bytes @ 0x3
	global	??_main
??_main:	; 0 bytes @ 0x3
;;Data sizes: Strings 0, constant 0, data 0, bss 12, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      3       5
;; BANK0           80      0      10
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
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
;; (0) _main                                                13    13      0       0
;;                                 _tx
;;                                 _rx
;; ---------------------------------------------------------------------------------
;; (1) _rx                                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _tx                                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _ngat                                                 3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _tx
;;   _rx
;;
;; _ngat (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      3       5       1       35.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       F       3        0.0%
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
;;DATA                 0      0      10      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 21 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 10\BT Ôn Thi 10.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data_tx        10    0        unsigned char [10]
;;  data_pwm        3    0        unsigned char [3]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_tx
;;		_rx
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 10\BT Ôn Thi 10.c"
	line	21
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	22
	
l2494:	
;BT Ôn Thi 10.c: 22: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	24
	
l2496:	
;BT Ôn Thi 10.c: 24: TRISC2 = 0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1082/8)^080h,(1082)&7
	line	25
	
l2498:	
;BT Ôn Thi 10.c: 25: TRISD6 = 0;
	bcf	(1094/8)^080h,(1094)&7
	line	26
	
l2500:	
;BT Ôn Thi 10.c: 26: TRISD7 = 0;
	bcf	(1095/8)^080h,(1095)&7
	line	27
	
l2502:	
;BT Ôn Thi 10.c: 27: TRISD5 = 0;
	bcf	(1093/8)^080h,(1093)&7
	line	28
	
l2504:	
;BT Ôn Thi 10.c: 28: RC2 = RD5 = RD6 = RD7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(71/8),(71)&7
	bcf	(70/8),(70)&7
	bcf	(69/8),(69)&7
	bcf	(58/8),(58)&7
	line	31
	
l2506:	
;BT Ôn Thi 10.c: 31: T2CKPS1 = 0; T2CKPS0 = 1;
	bcf	(145/8),(145)&7
	
l2508:	
	bsf	(144/8),(144)&7
	line	32
	
l2510:	
;BT Ôn Thi 10.c: 32: PR2 = 124; TMR2 = 0;
	movlw	(07Ch)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	
l2512:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(17)	;volatile
	line	33
	
l2514:	
;BT Ôn Thi 10.c: 33: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	35
	
l2516:	
;BT Ôn Thi 10.c: 35: CCP1CON = 0b00000000;
	clrf	(23)	;volatile
	line	36
	
l2518:	
;BT Ôn Thi 10.c: 36: CCPR1L=0;
	clrf	(21)	;volatile
	line	38
	
l2520:	
;BT Ôn Thi 10.c: 38: tx();
	fcall	_tx
	line	39
	
l2522:	
;BT Ôn Thi 10.c: 39: rx();
	fcall	_rx
	line	44
;BT Ôn Thi 10.c: 43: {
	
l1044:	
	line	42
	goto	l1044
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	45
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_rx
psect	text92,local,class=CODE,delta=2
global __ptext92
__ptext92:

;; *************** function _rx *****************
;; Defined at:
;;		line 100 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 10\BT Ôn Thi 10.c"
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
psect	text92
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 10\BT Ôn Thi 10.c"
	line	100
	global	__size_of_rx
	__size_of_rx	equ	__end_of_rx-_rx
	
_rx:	
	opt	stack 6
; Regs used in _rx: [wreg]
	line	101
	
l2436:	
;BT Ôn Thi 10.c: 101: SYNC = 0; BRGH = 1; BRG16 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	102
	
l2438:	
;BT Ôn Thi 10.c: 102: SPBRGH = 0x02;
	movlw	(02h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	103
;BT Ôn Thi 10.c: 103: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	104
	
l2440:	
;BT Ôn Thi 10.c: 104: CREN = 1; RX9 = 0; SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(196/8),(196)&7
	
l2442:	
	bcf	(198/8),(198)&7
	
l2444:	
	bsf	(199/8),(199)&7
	line	106
	
l2446:	
;BT Ôn Thi 10.c: 106: RCIE=1; RCIF=0; PEIE=1; GIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1125/8)^080h,(1125)&7
	
l2448:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(101/8),(101)&7
	
l2450:	
	bsf	(94/8),(94)&7
	
l2452:	
	bsf	(95/8),(95)&7
	line	107
	
l1073:	
	return
	opt stack 0
GLOBAL	__end_of_rx
	__end_of_rx:
;; =============== function _rx ends ============

	signat	_rx,88
	global	_tx
psect	text93,local,class=CODE,delta=2
global __ptext93
__ptext93:

;; *************** function _tx *****************
;; Defined at:
;;		line 93 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 10\BT Ôn Thi 10.c"
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
psect	text93
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 10\BT Ôn Thi 10.c"
	line	93
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
	
_tx:	
	opt	stack 6
; Regs used in _tx: [wreg]
	line	94
	
l2426:	
;BT Ôn Thi 10.c: 94: SYNC = 0; BRGH = 1; BRG16 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	95
	
l2428:	
;BT Ôn Thi 10.c: 95: SPBRGH = 0x02;
	movlw	(02h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	96
;BT Ôn Thi 10.c: 96: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	97
	
l2430:	
;BT Ôn Thi 10.c: 97: TXEN = 1; TX9 = 0; SPEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	
l2432:	
	bcf	(1222/8)^080h,(1222)&7
	
l2434:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	98
	
l1070:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
;; =============== function _tx ends ============

	signat	_tx,88
	global	_ngat
psect	text94,local,class=CODE,delta=2
global __ptext94
__ptext94:

;; *************** function _ngat *****************
;; Defined at:
;;		line 47 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 10\BT Ôn Thi 10.c"
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
psect	text94
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 10\BT Ôn Thi 10.c"
	line	47
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
	opt	stack 6
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
psect	text94
	line	48
	
i1l2524:	
;BT Ôn Thi 10.c: 48: if(RCIF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l2562
u7_20:
	line	50
	
i1l2526:	
;BT Ôn Thi 10.c: 49: {
;BT Ôn Thi 10.c: 50: data_rx[i] = RCREG;
	movf	(_i),w
	addlw	_data_rx&0ffh
	movwf	fsr0
	movf	(26),w	;volatile
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	51
	
i1l2528:	
;BT Ôn Thi 10.c: 51: i++;
	incf	(_i),f
	skipnz
	incf	(_i+1),f
	line	52
	
i1l2530:	
;BT Ôn Thi 10.c: 52: if(i==1)
	decf	(_i),w
	iorwf	(_i+1),w

	skipz
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l2534
u8_20:
	line	54
	
i1l2532:	
;BT Ôn Thi 10.c: 53: {
;BT Ôn Thi 10.c: 54: i=0;
	clrf	(_i)
	clrf	(_i+1)
	line	56
	
i1l2534:	
;BT Ôn Thi 10.c: 55: }
;BT Ôn Thi 10.c: 56: if(data_rx[0] == 'S')
	movf	(_data_rx),w
	xorlw	053h
	skipz
	goto	u9_21
	goto	u9_20
u9_21:
	goto	i1l2542
u9_20:
	line	58
	
i1l2536:	
;BT Ôn Thi 10.c: 57: {
;BT Ôn Thi 10.c: 58: i = 0;
	clrf	(_i)
	clrf	(_i+1)
	line	59
	
i1l2538:	
;BT Ôn Thi 10.c: 59: CCP1CON = 0b01001100;
	movlw	(04Ch)
	movwf	(23)	;volatile
	line	60
	
i1l2540:	
;BT Ôn Thi 10.c: 60: CCPR1L = 124;
	movlw	(07Ch)
	movwf	(21)	;volatile
	line	62
	
i1l2542:	
;BT Ôn Thi 10.c: 61: }
;BT Ôn Thi 10.c: 62: if(data_rx[0] == 'P')
	movf	(_data_rx),w
	xorlw	050h
	skipz
	goto	u10_21
	goto	u10_20
u10_21:
	goto	i1l2546
u10_20:
	line	64
	
i1l2544:	
;BT Ôn Thi 10.c: 63: {
;BT Ôn Thi 10.c: 64: i = 0;
	clrf	(_i)
	clrf	(_i+1)
	line	65
;BT Ôn Thi 10.c: 65: CCP1CON = 0b00000000;
	clrf	(23)	;volatile
	line	66
;BT Ôn Thi 10.c: 66: CCPR1L = 0;
	clrf	(21)	;volatile
	line	68
	
i1l2546:	
;BT Ôn Thi 10.c: 67: }
;BT Ôn Thi 10.c: 68: if(data_rx[0] == 'L')
	movf	(_data_rx),w
	xorlw	04Ch
	skipz
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l2554
u11_20:
	line	70
	
i1l2548:	
;BT Ôn Thi 10.c: 69: {
;BT Ôn Thi 10.c: 70: CCP1CON = 0b01001100;
	movlw	(04Ch)
	movwf	(23)	;volatile
	line	71
	
i1l2550:	
;BT Ôn Thi 10.c: 71: i = 0;
	clrf	(_i)
	clrf	(_i+1)
	line	72
	
i1l2552:	
;BT Ôn Thi 10.c: 72: CCPR1L = 124;
	movlw	(07Ch)
	movwf	(21)	;volatile
	line	74
	
i1l2554:	
;BT Ôn Thi 10.c: 73: }
;BT Ôn Thi 10.c: 74: if(data_rx[0] == 'R')
	movf	(_data_rx),w
	xorlw	052h
	skipz
	goto	u12_21
	goto	u12_20
u12_21:
	goto	i1l2562
u12_20:
	line	76
	
i1l2556:	
;BT Ôn Thi 10.c: 75: {
;BT Ôn Thi 10.c: 76: CCP1CON = 0b11001100;
	movlw	(0CCh)
	movwf	(23)	;volatile
	line	77
	
i1l2558:	
;BT Ôn Thi 10.c: 77: i = 0;
	clrf	(_i)
	clrf	(_i+1)
	line	78
	
i1l2560:	
;BT Ôn Thi 10.c: 78: CCPR1L = 124;
	movlw	(07Ch)
	movwf	(21)	;volatile
	line	81
	
i1l2562:	
;BT Ôn Thi 10.c: 79: }
;BT Ôn Thi 10.c: 80: }
;BT Ôn Thi 10.c: 81: RCIF=0;
	bcf	(101/8),(101)&7
	line	83
	
i1l1055:	
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
psect	text95,local,class=CODE,delta=2
global __ptext95
__ptext95:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
