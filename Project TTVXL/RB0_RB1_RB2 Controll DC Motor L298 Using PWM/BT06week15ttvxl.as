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
# 7 "D:\TTVXL\Project TTVXL\BT06week15ttvxl\BT06week15ttvxl.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "D:\TTVXL\Project TTVXL\BT06week15ttvxl\BT06week15ttvxl.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNROOT	_main
	FNCALL	intlevel1,_ngat
	global	intlevel1
	FNROOT	intlevel1
	global	_giatri
	global	_i
	global	_CCP1CON
psect	text25,local,class=CODE,delta=2
global __ptext25
__ptext25:
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_TMR2
_TMR2	set	17
	global	_GIE
_GIE	set	95
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RBIE
_RBIE	set	91
	global	_RBIF
_RBIF	set	88
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_T2CKPS0
_T2CKPS0	set	144
	global	_T2CKPS1
_T2CKPS1	set	145
	global	_TMR2ON
_TMR2ON	set	146
	global	_IOCB
_IOCB	set	150
	global	_PR2
_PR2	set	146
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISB1
_TRISB1	set	1073
	global	_TRISB2
_TRISB2	set	1074
	global	_TRISC0
_TRISC0	set	1080
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISE0
_TRISE0	set	1096
	global	_TRISE1
_TRISE1	set	1097
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"BT06week15ttvxl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_giatri:
       ds      2

_i:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
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
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0x3
;;Data sizes: Strings 0, constant 0, data 0, bss 4, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      3       7
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
;; (1) _ngat                                                 3     3      0       0
;;                                              0 COMMON     3     3      0
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
;;COMMON               E      3       7       1       50.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;ABS                  0      0       7       3        0.0%
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
;;DATA                 0      0       7      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 12 in file "D:\TTVXL\Project TTVXL\BT06week15ttvxl\BT06week15ttvxl.c"
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
	file	"D:\TTVXL\Project TTVXL\BT06week15ttvxl\BT06week15ttvxl.c"
	line	12
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2]
	line	13
	
l2396:	
;BT06week15ttvxl.c: 13: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	14
	
l2398:	
;BT06week15ttvxl.c: 14: TRISC0 = 1;
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1080/8)^080h,(1080)&7
	line	15
	
l2400:	
;BT06week15ttvxl.c: 15: TRISC2 = 0;
	bcf	(1082/8)^080h,(1082)&7
	line	16
	
l2402:	
;BT06week15ttvxl.c: 16: TRISE0 = 0;
	bcf	(1096/8)^080h,(1096)&7
	line	17
	
l2404:	
;BT06week15ttvxl.c: 17: RE0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(72/8),(72)&7
	line	18
	
l2406:	
;BT06week15ttvxl.c: 18: TRISE1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1097/8)^080h,(1097)&7
	line	19
	
l2408:	
;BT06week15ttvxl.c: 19: RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(73/8),(73)&7
	line	21
	
l2410:	
;BT06week15ttvxl.c: 21: TRISB0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1072/8)^080h,(1072)&7
	line	22
	
l2412:	
;BT06week15ttvxl.c: 22: TRISB1 = 1;
	bsf	(1073/8)^080h,(1073)&7
	line	23
	
l2414:	
;BT06week15ttvxl.c: 23: TRISB2 = 1;
	bsf	(1074/8)^080h,(1074)&7
	line	25
	
l2416:	
;BT06week15ttvxl.c: 25: IOCB=0b00000111;
	movlw	(07h)
	movwf	(150)^080h	;volatile
	line	26
	
l2418:	
;BT06week15ttvxl.c: 26: RBIE = 1;
	bsf	(91/8),(91)&7
	line	27
	
l2420:	
;BT06week15ttvxl.c: 27: RBIF = 0;
	bcf	(88/8),(88)&7
	line	28
	
l2422:	
;BT06week15ttvxl.c: 28: GIE = 1;
	bsf	(95/8),(95)&7
	line	31
	
l2424:	
;BT06week15ttvxl.c: 31: T2CKPS1 = 0; T2CKPS0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(145/8),(145)&7
	
l2426:	
	bsf	(144/8),(144)&7
	line	32
	
l2428:	
;BT06week15ttvxl.c: 32: TMR2 = 0; PR2 = 124;
	clrf	(17)	;volatile
	movlw	(07Ch)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	33
	
l2430:	
;BT06week15ttvxl.c: 33: TMR2ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(146/8),(146)&7
	line	35
;BT06week15ttvxl.c: 35: CCP1CON = 0b00001100;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	36
	
l2432:	
;BT06week15ttvxl.c: 36: CCPR1L = 0;
	clrf	(21)	;volatile
	line	37
	
l2434:	
;BT06week15ttvxl.c: 37: i = 0;
	clrf	(_i)
	clrf	(_i+1)
	line	38
	
l2436:	
;BT06week15ttvxl.c: 38: giatri = 0;
	clrf	(_giatri)
	clrf	(_giatri+1)
	line	42
;BT06week15ttvxl.c: 41: {
	
l1030:	
	line	40
	goto	l1030
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	43
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
;;		line 46 in file "D:\TTVXL\Project TTVXL\BT06week15ttvxl\BT06week15ttvxl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
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
psect	text26
	file	"D:\TTVXL\Project TTVXL\BT06week15ttvxl\BT06week15ttvxl.c"
	line	46
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
	opt	stack 7
; Regs used in _ngat: [wreg+status,2+status,0+btemp+1]
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ngat+2)
	ljmp	_ngat
psect	text26
	line	47
	
i1l2438:	
;BT06week15ttvxl.c: 47: if (RBIF)
	btfss	(88/8),(88)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l2472
u1_20:
	line	49
	
i1l2440:	
;BT06week15ttvxl.c: 48: {
;BT06week15ttvxl.c: 49: if (RB0)
	btfss	(48/8),(48)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l2450
u2_20:
	line	51
	
i1l2442:	
;BT06week15ttvxl.c: 50: {
;BT06week15ttvxl.c: 51: giatri = giatri - 12;
	movlw	-12
	addwf	(_giatri),f
	skipc
	decf	(_giatri+1),f
	line	52
	
i1l2444:	
;BT06week15ttvxl.c: 52: CCPR1L = giatri;
	movf	(_giatri),w
	movwf	(21)	;volatile
	line	53
	
i1l2446:	
;BT06week15ttvxl.c: 53: if(giatri>124) {CCPR1L =124;giatri=124;}
	movf	(_giatri+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3_25
	movlw	low(07Dh)
	subwf	(_giatri),w
u3_25:

	skipc
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l2450
u3_20:
	
i1l2448:	
	movlw	(07Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	movlw	07Ch
	movwf	(_giatri)
	clrf	(_giatri+1)
	line	56
	
i1l2450:	
;BT06week15ttvxl.c: 55: }
;BT06week15ttvxl.c: 56: if(RB1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l2458
u4_20:
	line	58
	
i1l2452:	
;BT06week15ttvxl.c: 57: {
;BT06week15ttvxl.c: 58: giatri = giatri + 12;
	movlw	0Ch
	addwf	(_giatri),f
	skipnc
	incf	(_giatri+1),f
	line	59
;BT06week15ttvxl.c: 59: CCPR1L = giatri;
	movf	(_giatri),w
	movwf	(21)	;volatile
	line	60
	
i1l2454:	
;BT06week15ttvxl.c: 60: if(giatri<0) {CCPR1L =0;giatri=0;}
	btfss	(_giatri+1),7
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l2458
u5_20:
	
i1l2456:	
	clrf	(21)	;volatile
	clrf	(_giatri)
	clrf	(_giatri+1)
	line	62
	
i1l2458:	
;BT06week15ttvxl.c: 61: }
;BT06week15ttvxl.c: 62: if(RB2)
	btfss	(50/8),(50)&7
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l2472
u6_20:
	line	64
	
i1l2460:	
;BT06week15ttvxl.c: 63: {
;BT06week15ttvxl.c: 64: i++;
	incf	(_i),f
	skipnz
	incf	(_i+1),f
	line	65
	
i1l2462:	
;BT06week15ttvxl.c: 65: if(i==1) {RE0 = 0; RE1 = 1;}
	decf	(_i),w
	iorwf	(_i+1),w

	skipz
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l2466
u7_20:
	
i1l2464:	
	bcf	(72/8),(72)&7
	bsf	(73/8),(73)&7
	line	66
	
i1l2466:	
;BT06week15ttvxl.c: 66: if(i==2) {RE0 = 1; RE1 = 0;i=0;}
		movf	(_i),w
	xorlw	2
	iorwf	(_i+1),w

	skipz
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l2472
u8_20:
	
i1l2468:	
	bsf	(72/8),(72)&7
	bcf	(73/8),(73)&7
	
i1l2470:	
	clrf	(_i)
	clrf	(_i+1)
	line	69
	
i1l2472:	
;BT06week15ttvxl.c: 67: }
;BT06week15ttvxl.c: 68: }
;BT06week15ttvxl.c: 69: RBIF = 0;
	bcf	(88/8),(88)&7
	line	70
	
i1l1043:	
	movf	(??_ngat+2),w
	movwf	btemp+1
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
