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
# 7 "D:\TTVXL\Project TTVXL\BT05week15ttvxl\BT05week15ttvxl.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "D:\TTVXL\Project TTVXL\BT05week15ttvxl\BT05week15ttvxl.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNROOT	_main
	FNCALL	_ngat,_pwm_10bit
	FNCALL	_pwm_10bit,___awdiv
	FNCALL	intlevel1,_ngat
	global	intlevel1
	FNROOT	intlevel1
	global	_pwm_v
	global	_CCP1CON
psect	text74,local,class=CODE,delta=2
global __ptext74
__ptext74:
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_TMR2
_TMR2	set	17
	global	_DC1B0
_DC1B0	set	188
	global	_DC1B1
_DC1B1	set	189
	global	_GIE
_GIE	set	95
	global	_INTE
_INTE	set	92
	global	_INTF
_INTF	set	89
	global	_RB1
_RB1	set	49
	global	_RBIE
_RBIE	set	91
	global	_RBIF
_RBIF	set	88
	global	_RC2
_RC2	set	58
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
	global	_T2CKPS0
_T2CKPS0	set	144
	global	_T2CKPS1
_T2CKPS1	set	145
	global	_TMR2ON
_TMR2ON	set	146
	global	_PR2
_PR2	set	146
	global	_INTEDG
_INTEDG	set	1038
	global	_IOCB1
_IOCB1	set	1201
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISB1
_TRISB1	set	1073
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISD5
_TRISD5	set	1093
	global	_TRISD6
_TRISD6	set	1094
	global	_TRISD7
_TRISD7	set	1095
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"BT05week15ttvxl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_pwm_v:
       ds      2

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
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ngat
?_ngat:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	2
	global	?_pwm_10bit
?_pwm_10bit:	; 0 bytes @ 0x8
	global	pwm_10bit@data_pwm
pwm_10bit@data_pwm:	; 2 bytes @ 0x8
	ds	2
	global	??_pwm_10bit
??_pwm_10bit:	; 0 bytes @ 0xA
	global	??_ngat
??_ngat:	; 0 bytes @ 0xA
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_main
??_main:	; 0 bytes @ 0x0
;;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      0       2
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awdiv	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _ngat in COMMON
;;
;;   _ngat->_pwm_10bit
;;   _pwm_10bit->___awdiv
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
;; (0) _main                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (1) _ngat                                                 4     4      0     366
;;                                             10 COMMON     4     4      0
;;                          _pwm_10bit
;; ---------------------------------------------------------------------------------
;; (2) _pwm_10bit                                            2     0      2     366
;;                                              8 COMMON     2     0      2
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              8     4      4     300
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;
;; _ngat (ROOT)
;;   _pwm_10bit
;;     ___awdiv
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
;;STACK                0      0       6       2        0.0%
;;ABS                  0      0      10       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       2       5        2.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      16      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "D:\TTVXL\Project TTVXL\BT05week15ttvxl\BT05week15ttvxl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 15F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT05week15ttvxl\BT05week15ttvxl.c"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [status,2]
	line	14
	
l2544:	
;BT05week15ttvxl.c: 14: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	15
	
l2546:	
;BT05week15ttvxl.c: 15: TRISC2 = 0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1082/8)^080h,(1082)&7
	line	16
	
l2548:	
;BT05week15ttvxl.c: 16: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(58/8),(58)&7
	line	17
	
l2550:	
;BT05week15ttvxl.c: 17: TRISD5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1093/8)^080h,(1093)&7
	line	18
	
l2552:	
;BT05week15ttvxl.c: 18: RD5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(69/8),(69)&7
	line	19
	
l2554:	
;BT05week15ttvxl.c: 19: TRISD6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1094/8)^080h,(1094)&7
	line	20
	
l2556:	
;BT05week15ttvxl.c: 20: RD6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(70/8),(70)&7
	line	21
	
l2558:	
;BT05week15ttvxl.c: 21: TRISD7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1095/8)^080h,(1095)&7
	line	22
	
l2560:	
;BT05week15ttvxl.c: 22: RD7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(71/8),(71)&7
	line	24
	
l2562:	
;BT05week15ttvxl.c: 24: TRISB0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1072/8)^080h,(1072)&7
	line	25
	
l2564:	
;BT05week15ttvxl.c: 25: TRISB1 = 1;
	bsf	(1073/8)^080h,(1073)&7
	line	27
	
l2566:	
;BT05week15ttvxl.c: 27: INTE = 1;
	bsf	(92/8),(92)&7
	line	28
	
l2568:	
;BT05week15ttvxl.c: 28: INTF = 0;
	bcf	(89/8),(89)&7
	line	29
	
l2570:	
;BT05week15ttvxl.c: 29: INTEDG = 0;
	bcf	(1038/8)^080h,(1038)&7
	line	30
	
l2572:	
;BT05week15ttvxl.c: 30: GIE = 1;
	bsf	(95/8),(95)&7
	line	32
	
l2574:	
;BT05week15ttvxl.c: 32: IOCB1 = 1;
	bsf	(1201/8)^080h,(1201)&7
	line	33
	
l2576:	
;BT05week15ttvxl.c: 33: RBIE = 1;
	bsf	(91/8),(91)&7
	line	34
	
l2578:	
;BT05week15ttvxl.c: 34: RBIF = 0;
	bcf	(88/8),(88)&7
	line	35
	
l2580:	
;BT05week15ttvxl.c: 35: GIE = 1;
	bsf	(95/8),(95)&7
	line	38
;BT05week15ttvxl.c: 38: {}
	
l1030:	
	line	37
	goto	l1030
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	39
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_ngat
psect	text75,local,class=CODE,delta=2
global __ptext75
__ptext75:

;; *************** function _ngat *****************
;; Defined at:
;;		line 42 in file "D:\TTVXL\Project TTVXL\BT05week15ttvxl\BT05week15ttvxl.c"
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
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pwm_10bit
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text75
	file	"D:\TTVXL\Project TTVXL\BT05week15ttvxl\BT05week15ttvxl.c"
	line	42
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
	opt	stack 5
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
	movwf	(??_ngat+0)
	movf	fsr0,w
	movwf	(??_ngat+1)
	movf	pclath,w
	movwf	(??_ngat+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ngat+3)
	ljmp	_ngat
psect	text75
	line	43
	
i1l2582:	
;BT05week15ttvxl.c: 43: if (INTF)
	btfss	(89/8),(89)&7
	goto	u13_21
	goto	u13_20
u13_21:
	goto	i1l2598
u13_20:
	line	45
	
i1l2584:	
;BT05week15ttvxl.c: 44: {
;BT05week15ttvxl.c: 45: T2CKPS1 = 0; T2CKPS0 = 1;
	bcf	(145/8),(145)&7
	bsf	(144/8),(144)&7
	line	46
	
i1l2586:	
;BT05week15ttvxl.c: 46: TMR2 = 0; PR2 = 124;
	clrf	(17)	;volatile
	
i1l2588:	
	movlw	(07Ch)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	47
	
i1l2590:	
;BT05week15ttvxl.c: 47: TMR2ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(146/8),(146)&7
	line	48
	
i1l2592:	
;BT05week15ttvxl.c: 48: CCP1CON = 0b01001100;
	movlw	(04Ch)
	movwf	(23)	;volatile
	line	49
	
i1l2594:	
;BT05week15ttvxl.c: 49: pwm_v = 450;
	movlw	low(01C2h)
	movwf	(_pwm_v)
	movlw	high(01C2h)
	movwf	((_pwm_v))+1
	line	50
	
i1l2596:	
;BT05week15ttvxl.c: 50: pwm_10bit(pwm_v);
	movf	(_pwm_v+1),w
	movwf	(?_pwm_10bit+1)
	movf	(_pwm_v),w
	movwf	(?_pwm_10bit)
	fcall	_pwm_10bit
	line	52
	
i1l2598:	
;BT05week15ttvxl.c: 51: }
;BT05week15ttvxl.c: 52: if (RBIF)
	btfss	(88/8),(88)&7
	goto	u14_21
	goto	u14_20
u14_21:
	goto	i1l2616
u14_20:
	line	53
	
i1l2600:	
;BT05week15ttvxl.c: 53: if(RB1)
	btfss	(49/8),(49)&7
	goto	u15_21
	goto	u15_20
u15_21:
	goto	i1l2616
u15_20:
	line	56
	
i1l2602:	
;BT05week15ttvxl.c: 54: {
;BT05week15ttvxl.c: 55: {
;BT05week15ttvxl.c: 56: T2CKPS1 = 0; T2CKPS0 = 1;
	bcf	(145/8),(145)&7
	bsf	(144/8),(144)&7
	line	57
	
i1l2604:	
;BT05week15ttvxl.c: 57: TMR2 = 0; PR2 = 84;
	clrf	(17)	;volatile
	
i1l2606:	
	movlw	(054h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	58
	
i1l2608:	
;BT05week15ttvxl.c: 58: TMR2ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(146/8),(146)&7
	line	59
	
i1l2610:	
;BT05week15ttvxl.c: 59: CCP1CON = 0b11001100;
	movlw	(0CCh)
	movwf	(23)	;volatile
	line	60
	
i1l2612:	
;BT05week15ttvxl.c: 60: pwm_v = 238;
	movlw	0EEh
	movwf	(_pwm_v)
	clrf	(_pwm_v+1)
	line	61
	
i1l2614:	
;BT05week15ttvxl.c: 61: pwm_10bit(pwm_v);
	movf	(_pwm_v+1),w
	movwf	(?_pwm_10bit+1)
	movf	(_pwm_v),w
	movwf	(?_pwm_10bit)
	fcall	_pwm_10bit
	line	64
	
i1l2616:	
;BT05week15ttvxl.c: 62: }
;BT05week15ttvxl.c: 63: }
;BT05week15ttvxl.c: 64: RBIF = 0;
	bcf	(88/8),(88)&7
	line	65
	
i1l2618:	
;BT05week15ttvxl.c: 65: INTF = 0;
	bcf	(89/8),(89)&7
	line	66
	
i1l1038:	
	movf	(??_ngat+3),w
	movwf	btemp+1
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
	global	_pwm_10bit
psect	text76,local,class=CODE,delta=2
global __ptext76
__ptext76:

;; *************** function _pwm_10bit *****************
;; Defined at:
;;		line 69 in file "D:\TTVXL\Project TTVXL\BT05week15ttvxl\BT05week15ttvxl.c"
;; Parameters:    Size  Location     Type
;;  data_pwm        2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awdiv
;; This function is called by:
;;		_ngat
;; This function uses a non-reentrant model
;;
psect	text76
	file	"D:\TTVXL\Project TTVXL\BT05week15ttvxl\BT05week15ttvxl.c"
	line	69
	global	__size_of_pwm_10bit
	__size_of_pwm_10bit	equ	__end_of_pwm_10bit-_pwm_10bit
	
_pwm_10bit:	
	opt	stack 5
; Regs used in _pwm_10bit: [wreg+status,2+status,0+pclath+cstack]
	line	70
	
i1l2620:	
;BT05week15ttvxl.c: 70: CCPR1L = data_pwm/4;
	movlw	04h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(pwm_10bit@data_pwm+1),w
	movwf	1+(?___awdiv)+02h
	movf	(pwm_10bit@data_pwm),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(21)	;volatile
	line	71
	
i1l2622:	
;BT05week15ttvxl.c: 71: DC1B1 = 0; DC1B0 = 0;
	bcf	(189/8),(189)&7
	
i1l2624:	
	bcf	(188/8),(188)&7
	line	72
	
i1l2626:	
;BT05week15ttvxl.c: 72: if((data_pwm &2) == 1) {DC1B1 = 1;}
	movf	(pwm_10bit@data_pwm),w
	andlw	02h
	xorlw	01h
	skipz
	goto	u16_21
	goto	u16_20
u16_21:
	goto	i1l1041
u16_20:
	
i1l2628:	
	bsf	(189/8),(189)&7
	
i1l1041:	
	line	73
;BT05week15ttvxl.c: 73: if((data_pwm &1) == 1) {DC1B0 = 1;}
	btfss	(pwm_10bit@data_pwm),(0)&7
	goto	u17_21
	goto	u17_20
u17_21:
	goto	i1l1043
u17_20:
	
i1l2630:	
	bsf	(188/8),(188)&7
	line	74
	
i1l1043:	
	return
	opt stack 0
GLOBAL	__end_of_pwm_10bit
	__end_of_pwm_10bit:
;; =============== function _pwm_10bit ends ============

	signat	_pwm_10bit,4216
	global	___awdiv
psect	text77,local,class=CODE,delta=2
global __ptext77
__ptext77:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMMON] int 
;;  sign            1    5[COMMON] unsigned char 
;;  counter         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pwm_10bit
;; This function uses a non-reentrant model
;;
psect	text77
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
i1l2632:	
	clrf	(___awdiv@sign)
	line	10
	
i1l2634:	
	btfss	(___awdiv@divisor+1),7
	goto	u18_21
	goto	u18_20
u18_21:
	goto	i1l2640
u18_20:
	line	11
	
i1l2636:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
i1l2638:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
i1l2640:	
	btfss	(___awdiv@dividend+1),7
	goto	u19_21
	goto	u19_20
u19_21:
	goto	i1l2646
u19_20:
	line	15
	
i1l2642:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
i1l2644:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
i1l2646:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
i1l2648:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u20_21
	goto	u20_20
u20_21:
	goto	i1l2668
u20_20:
	line	20
	
i1l2650:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	i1l2654
	line	22
	
i1l2652:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
i1l2654:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u21_21
	goto	u21_20
u21_21:
	goto	i1l2652
u21_20:
	line	26
	
i1l2656:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
i1l2658:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u22_25
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u22_25:
	skipc
	goto	u22_21
	goto	u22_20
u22_21:
	goto	i1l2664
u22_20:
	line	28
	
i1l2660:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
i1l2662:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
i1l2664:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
i1l2666:	
	decfsz	(___awdiv@counter),f
	goto	u23_21
	goto	u23_20
u23_21:
	goto	i1l2656
u23_20:
	line	34
	
i1l2668:	
	movf	(___awdiv@sign),w
	skipz
	goto	u24_20
	goto	i1l2672
u24_20:
	line	35
	
i1l2670:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
i1l2672:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
i1l2182:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
psect	text78,local,class=CODE,delta=2
global __ptext78
__ptext78:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
