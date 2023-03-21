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
# 7 "D:\TTVXL\Project TTVXL\BT04week15ttvxl\BT04week15ttvxl.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "D:\TTVXL\Project TTVXL\BT04week15ttvxl\BT04week15ttvxl.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNROOT	_main
	FNCALL	intlevel1,_ngat
	global	intlevel1
	FNROOT	intlevel1
	global	_i
	global	_CCP2CON
psect	text25,local,class=CODE,delta=2
global __ptext25
__ptext25:
_CCP2CON	set	29
	global	_CCPR2L
_CCPR2L	set	27
	global	_TMR2
_TMR2	set	17
	global	_GIE
_GIE	set	95
	global	_INTE
_INTE	set	92
	global	_INTF
_INTF	set	89
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
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISC1
_TRISC1	set	1081
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"BT04week15ttvxl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_i:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
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
	global	??_ngat
??_ngat:	; 0 bytes @ 0x0
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x2
;;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      2       4
;; BANK0           80      0       0
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
;; (0) _main                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (1) _ngat                                                 2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;
;; _ngat (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      2       4       1       28.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;ABS                  0      0       4       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       4      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 12 in file "D:\TTVXL\Project TTVXL\BT04week15ttvxl\BT04week15ttvxl.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT04week15ttvxl\BT04week15ttvxl.c"
	line	12
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2]
	line	13
	
l2394:	
;BT04week15ttvxl.c: 13: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	14
	
l2396:	
;BT04week15ttvxl.c: 14: TRISC1 = 0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1081/8)^080h,(1081)&7
	line	15
	
l2398:	
;BT04week15ttvxl.c: 15: TRISB0 = 1;
	bsf	(1072/8)^080h,(1072)&7
	line	17
	
l2400:	
;BT04week15ttvxl.c: 17: INTE = 1;
	bsf	(92/8),(92)&7
	line	18
	
l2402:	
;BT04week15ttvxl.c: 18: INTF = 0;
	bcf	(89/8),(89)&7
	line	19
	
l2404:	
;BT04week15ttvxl.c: 19: INTEDG = 0;
	bcf	(1038/8)^080h,(1038)&7
	line	20
	
l2406:	
;BT04week15ttvxl.c: 20: GIE = 1;
	bsf	(95/8),(95)&7
	line	23
	
l2408:	
;BT04week15ttvxl.c: 23: T2CKPS1 = 0; T2CKPS0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(145/8),(145)&7
	
l2410:	
	bsf	(144/8),(144)&7
	line	24
;BT04week15ttvxl.c: 24: TMR2 = 0; PR2 = 82;
	clrf	(17)	;volatile
	
l2412:	
	movlw	(052h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	25
	
l2414:	
;BT04week15ttvxl.c: 25: TMR2ON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(146/8),(146)&7
	line	28
	
l2416:	
;BT04week15ttvxl.c: 28: CCP2CON = 0b00000000;
	clrf	(29)	;volatile
	line	29
	
l2418:	
;BT04week15ttvxl.c: 29: CCPR2L = 0;
	clrf	(27)	;volatile
	line	31
;BT04week15ttvxl.c: 31: {}
	
l1028:	
	line	30
	goto	l1028
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	32
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_ngat
psect	text26,local,class=CODE,delta=2
global __ptext26
__ptext26:

;; *************** function _ngat *****************
;; Defined at:
;;		line 35 in file "D:\TTVXL\Project TTVXL\BT04week15ttvxl\BT04week15ttvxl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text26
	file	"D:\TTVXL\Project TTVXL\BT04week15ttvxl\BT04week15ttvxl.c"
	line	35
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
	opt	stack 7
; Regs used in _ngat: [wreg+status,2+status,0]
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
	movf	pclath,w
	movwf	(??_ngat+1)
	ljmp	_ngat
psect	text26
	line	36
	
i1l2420:	
;BT04week15ttvxl.c: 37: {
;BT04week15ttvxl.c: 38: i=i++;
	btfss	(89/8),(89)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l2458
u1_20:
	line	38
	
i1l2422:	
	incf	(_i),f
	skipnz
	incf	(_i+1),f
	line	39
	
i1l2424:	
;BT04week15ttvxl.c: 39: if (i==1)
	decf	(_i),w
	iorwf	(_i+1),w

	skipz
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l1034
u2_20:
	line	41
	
i1l2426:	
;BT04week15ttvxl.c: 40: {
;BT04week15ttvxl.c: 41: TMR2ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7
	line	42
	
i1l2428:	
;BT04week15ttvxl.c: 42: CCP2CON = 0b00001100;
	movlw	(0Ch)
	movwf	(29)	;volatile
	line	43
;BT04week15ttvxl.c: 43: CCPR2L = 13;
	movlw	(0Dh)
	movwf	(27)	;volatile
	line	44
	
i1l1034:	
	line	45
;BT04week15ttvxl.c: 44: }
;BT04week15ttvxl.c: 45: if (i==2)
		movf	(_i),w
	xorlw	2
	iorwf	(_i+1),w

	skipz
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l1035
u3_20:
	line	47
	
i1l2430:	
;BT04week15ttvxl.c: 46: {
;BT04week15ttvxl.c: 47: TMR2ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7
	line	48
	
i1l2432:	
;BT04week15ttvxl.c: 48: CCP2CON = 0b00001100;
	movlw	(0Ch)
	movwf	(29)	;volatile
	line	49
;BT04week15ttvxl.c: 49: CCPR2L = 25;
	movlw	(019h)
	movwf	(27)	;volatile
	line	50
	
i1l1035:	
	line	51
;BT04week15ttvxl.c: 50: }
;BT04week15ttvxl.c: 51: if (i==3)
		movf	(_i),w
	xorlw	3
	iorwf	(_i+1),w

	skipz
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l1036
u4_20:
	line	53
	
i1l2434:	
;BT04week15ttvxl.c: 52: {
;BT04week15ttvxl.c: 53: TMR2ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7
	line	54
	
i1l2436:	
;BT04week15ttvxl.c: 54: CCP2CON = 0b00001100;
	movlw	(0Ch)
	movwf	(29)	;volatile
	line	55
;BT04week15ttvxl.c: 55: CCPR2L = 37;
	movlw	(025h)
	movwf	(27)	;volatile
	line	56
	
i1l1036:	
	line	57
;BT04week15ttvxl.c: 56: }
;BT04week15ttvxl.c: 57: if (i==4)
		movf	(_i),w
	xorlw	4
	iorwf	(_i+1),w

	skipz
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l1037
u5_20:
	line	59
	
i1l2438:	
;BT04week15ttvxl.c: 58: {
;BT04week15ttvxl.c: 59: TMR2ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7
	line	60
	
i1l2440:	
;BT04week15ttvxl.c: 60: CCP2CON = 0b00001100;
	movlw	(0Ch)
	movwf	(29)	;volatile
	line	61
;BT04week15ttvxl.c: 61: CCPR2L = 50;
	movlw	(032h)
	movwf	(27)	;volatile
	line	62
	
i1l1037:	
	line	63
;BT04week15ttvxl.c: 62: }
;BT04week15ttvxl.c: 63: if (i==5)
		movf	(_i),w
	xorlw	5
	iorwf	(_i+1),w

	skipz
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l1038
u6_20:
	line	65
	
i1l2442:	
;BT04week15ttvxl.c: 64: {
;BT04week15ttvxl.c: 65: TMR2ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7
	line	66
	
i1l2444:	
;BT04week15ttvxl.c: 66: CCP2CON = 0b00001100;
	movlw	(0Ch)
	movwf	(29)	;volatile
	line	67
;BT04week15ttvxl.c: 67: CCPR2L = 63;
	movlw	(03Fh)
	movwf	(27)	;volatile
	line	68
	
i1l1038:	
	line	69
;BT04week15ttvxl.c: 68: }
;BT04week15ttvxl.c: 69: if (i==6)
		movf	(_i),w
	xorlw	6
	iorwf	(_i+1),w

	skipz
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l1039
u7_20:
	line	71
	
i1l2446:	
;BT04week15ttvxl.c: 70: {
;BT04week15ttvxl.c: 71: TMR2ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7
	line	72
	
i1l2448:	
;BT04week15ttvxl.c: 72: CCP2CON = 0b00001100;
	movlw	(0Ch)
	movwf	(29)	;volatile
	line	73
;BT04week15ttvxl.c: 73: CCPR2L = 75;
	movlw	(04Bh)
	movwf	(27)	;volatile
	line	74
	
i1l1039:	
	line	75
;BT04week15ttvxl.c: 74: }
;BT04week15ttvxl.c: 75: if (i==7)
		movf	(_i),w
	xorlw	7
	iorwf	(_i+1),w

	skipz
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l2458
u8_20:
	line	77
	
i1l2450:	
;BT04week15ttvxl.c: 76: {
;BT04week15ttvxl.c: 77: i=1;
	clrf	(_i)
	incf	(_i),f
	clrf	(_i+1)
	line	78
	
i1l2452:	
;BT04week15ttvxl.c: 78: TMR2ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7
	line	79
	
i1l2454:	
;BT04week15ttvxl.c: 79: CCP2CON = 0b00001100;
	movlw	(0Ch)
	movwf	(29)	;volatile
	line	80
	
i1l2456:	
;BT04week15ttvxl.c: 80: CCPR2L = 13;
	movlw	(0Dh)
	movwf	(27)	;volatile
	line	83
	
i1l2458:	
;BT04week15ttvxl.c: 81: }
;BT04week15ttvxl.c: 82: }
;BT04week15ttvxl.c: 83: INTF = 0;
	bcf	(89/8),(89)&7
	line	84
	
i1l1041:	
	movf	(??_ngat+1),w
	movwf	pclath
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
psect	text27,local,class=CODE,delta=2
global __ptext27
__ptext27:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
