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
# 5 "D:\TTVXL\Project TTVXL\BT01week12ttvxl\BT01week12ttvxl.c"
	psect config,class=CONFIG,delta=2 ;#
# 5 "D:\TTVXL\Project TTVXL\BT01week12ttvxl\BT01week12ttvxl.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNROOT	_main
	FNCALL	_ngat,___ftadd
	FNCALL	___ftadd,___ftpack
	FNCALL	intlevel1,_ngat
	global	intlevel1
	FNROOT	intlevel1
	global	_dem
	global	_TMR1H
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RE0
_RE0	set	72
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
	global	_TRISD
_TRISD	set	136
	global	_TMR1IE
_TMR1IE	set	1120
	global	_TRISA4
_TRISA4	set	1068
	global	_TRISE0
_TRISE0	set	1096
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"BT01week12ttvxl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_dem:
       ds      3

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
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
	global	??_main
??_main:	; 0 bytes @ 0xA
;;Data sizes: Strings 0, constant 0, data 0, bss 3, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     10      13
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?_lcd_putc	int  size(1) Largest target is 0
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
;;   None.
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
;; (1) _ngat                                                 4     4      0    1049
;;                                              6 BANK0      4     4      0
;;                            ___ftadd
;; ---------------------------------------------------------------------------------
;; (2) ___ftadd                                             12     6      6    1049
;;                                              8 COMMON     6     0      6
;;                                              0 BANK0      6     6      0
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
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
;;STACK                0      0       6       2        0.0%
;;ABS                  0      0      1B       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      A       D       5       16.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      21      12        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 16 in file "D:\TTVXL\Project TTVXL\BT01week12ttvxl\BT01week12ttvxl.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT01week12ttvxl\BT01week12ttvxl.c"
	line	16
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2]
	line	17
	
l2573:	
;BT01week12ttvxl.c: 17: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	19
	
l2575:	
;BT01week12ttvxl.c: 19: TRISA4 = 1;
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1068/8)^080h,(1068)&7
	line	20
;BT01week12ttvxl.c: 20: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	21
	
l2577:	
;BT01week12ttvxl.c: 21: TRISE0 = 0;
	bcf	(1096/8)^080h,(1096)&7
	line	32
	
l2579:	
;BT01week12ttvxl.c: 32: TMR1GE=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(134/8),(134)&7
	line	33
	
l2581:	
;BT01week12ttvxl.c: 33: TMR1CS=0;
	bcf	(129/8),(129)&7
	line	34
	
l2583:	
;BT01week12ttvxl.c: 34: T1SYNC=1;
	bsf	(130/8),(130)&7
	line	35
	
l2585:	
;BT01week12ttvxl.c: 35: T1CKPS1=0;T1CKPS0=0;
	bcf	(133/8),(133)&7
	
l2587:	
	bcf	(132/8),(132)&7
	line	37
	
l2589:	
;BT01week12ttvxl.c: 37: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	38
	
l2591:	
;BT01week12ttvxl.c: 38: TMR1H=60;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	39
	
l2593:	
;BT01week12ttvxl.c: 39: TMR1L=176;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	41
	
l2595:	
;BT01week12ttvxl.c: 41: TMR1IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	42
	
l2597:	
;BT01week12ttvxl.c: 42: TMR1IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(96/8),(96)&7
	line	43
	
l2599:	
;BT01week12ttvxl.c: 43: PEIE=1;
	bsf	(94/8),(94)&7
	line	44
	
l2601:	
;BT01week12ttvxl.c: 44: GIE=1;
	bsf	(95/8),(95)&7
	line	48
;BT01week12ttvxl.c: 47: {
	
l1046:	
	line	46
	goto	l1046
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	49
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_ngat
psect	text64,local,class=CODE,delta=2
global __ptext64
__ptext64:

;; *************** function _ngat *****************
;; Defined at:
;;		line 56 in file "D:\TTVXL\Project TTVXL\BT01week12ttvxl\BT01week12ttvxl.c"
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
psect	text64
	file	"D:\TTVXL\Project TTVXL\BT01week12ttvxl\BT01week12ttvxl.c"
	line	56
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
psect	text64
	line	57
	
i1l2603:	
;BT01week12ttvxl.c: 57: TMR1H=60;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	58
;BT01week12ttvxl.c: 58: TMR1L=176;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	59
	
i1l2605:	
;BT01week12ttvxl.c: 59: if(TMR1IF)
	btfss	(96/8),(96)&7
	goto	u30_21
	goto	u30_20
u30_21:
	goto	i1l2613
u30_20:
	line	61
	
i1l2607:	
;BT01week12ttvxl.c: 60: {
;BT01week12ttvxl.c: 61: dem++;
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
	line	62
	
i1l2609:	
;BT01week12ttvxl.c: 62: if(dem == 8){dem= 0; RE0 = ~RE0;}
	movlw	0x41
	xorwf	(_dem+2),w
	skipz
	goto	u31_25
	movlw	0x0
	xorwf	(_dem+1),w
	skipz
	goto	u31_25
	movlw	0x0
	xorwf	(_dem),w
u31_25:
	skipz
	goto	u31_21
	goto	u31_20
u31_21:
	goto	i1l2613
u31_20:
	
i1l2611:	
	clrf	(_dem)
	clrf	(_dem+1)
	clrf	(_dem+2)
	movlw	1<<((72)&7)
	xorwf	((72)/8),f
	line	66
	
i1l2613:	
;BT01week12ttvxl.c: 65: }
;BT01week12ttvxl.c: 66: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	67
	
i1l1056:	
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
psect	text65,local,class=CODE,delta=2
global __ptext65
__ptext65:

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
psect	text65
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 5
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
i1l2615:	
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
	
i1l2617:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u32_20
	goto	i1l2623
u32_20:
	
i1l2619:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u33_21
	goto	u33_20
u33_21:
	goto	i1l2627
u33_20:
	
i1l2621:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u34_21
	goto	u34_20
u34_21:
	goto	i1l2627
u34_20:
	line	93
	
i1l2623:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	i1l2092
	line	94
	
i1l2627:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u35_20
	goto	i1l2095
u35_20:
	
i1l2629:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u36_21
	goto	u36_20
u36_21:
	goto	i1l2633
u36_20:
	
i1l2631:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u37_21
	goto	u37_20
u37_21:
	goto	i1l2633
u37_20:
	
i1l2095:	
	line	95
	goto	i1l2092
	line	96
	
i1l2633:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
i1l2635:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u38_21
	goto	u38_20
u38_21:
	goto	i1l2096
u38_20:
	line	98
	
i1l2637:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
i1l2096:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u39_21
	goto	u39_20
u39_21:
	goto	i1l2097
u39_20:
	line	100
	
i1l2639:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
i1l2097:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
i1l2641:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
i1l2643:	
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
	goto	u40_21
	goto	u40_20
u40_21:
	goto	i1l2655
u40_20:
	line	110
	
i1l2645:	
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
i1l2647:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u41_21
	goto	u41_20
u41_21:
	goto	i1l2653
u41_20:
	
i1l2649:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u42_21
	goto	u42_20
u42_21:
	goto	i1l2645
u42_20:
	goto	i1l2653
	line	114
	
i1l2651:	
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
i1l2653:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u43_21
	goto	u43_20
u43_21:
	goto	i1l2651
u43_20:
	goto	i1l2106
	line	117
	
i1l2655:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u44_21
	goto	u44_20
u44_21:
	goto	i1l2106
u44_20:
	line	121
	
i1l2657:	
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
i1l2659:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u45_21
	goto	u45_20
u45_21:
	goto	i1l2665
u45_20:
	
i1l2661:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u46_21
	goto	u46_20
u46_21:
	goto	i1l2657
u46_20:
	goto	i1l2665
	line	125
	
i1l2663:	
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
i1l2665:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u47_21
	goto	u47_20
u47_21:
	goto	i1l2663
u47_20:
	line	129
	
i1l2106:	
	btfss	(___ftadd@sign),(7)&7
	goto	u48_21
	goto	u48_20
u48_21:
	goto	i1l2671
u48_20:
	line	131
	
i1l2667:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
i1l2669:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
i1l2671:	
	btfss	(___ftadd@sign),(6)&7
	goto	u49_21
	goto	u49_20
u49_21:
	goto	i1l2677
u49_20:
	line	136
	
i1l2673:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
i1l2675:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
i1l2677:	
	clrf	(___ftadd@sign)
	line	140
	
i1l2679:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u50_21
	addwf	(___ftadd@f2+1),f
u50_21:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u50_22
	addwf	(___ftadd@f2+2),f
u50_22:

	line	141
	
i1l2681:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u51_21
	goto	u51_20
u51_21:
	goto	i1l2689
u51_20:
	line	142
	
i1l2683:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
i1l2685:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
i1l2687:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
i1l2689:	
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
	
i1l2092:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	___ftpack
psect	text66,local,class=CODE,delta=2
global __ptext66
__ptext66:

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
psect	text66
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
i1l2693:	
	movf	(___ftpack@exp),w
	skipz
	goto	u52_20
	goto	i1l2697
u52_20:
	
i1l2695:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u53_21
	goto	u53_20
u53_21:
	goto	i1l2703
u53_20:
	line	65
	
i1l2697:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	i1l2380
	line	67
	
i1l2701:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
i1l2703:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u54_21
	goto	u54_20
u54_21:
	goto	i1l2701
u54_20:
	goto	i1l2707
	line	71
	
i1l2705:	
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
	
i1l2707:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u55_21
	goto	u55_20
u55_21:
	goto	i1l2705
u55_20:
	goto	i1l2711
	line	76
	
i1l2709:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
i1l2711:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u56_21
	goto	u56_20
u56_21:
	goto	i1l2709
u56_20:
	
i1l2389:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u57_21
	goto	u57_20
u57_21:
	goto	i1l2390
u57_20:
	line	80
	
i1l2713:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
i1l2390:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
i1l2715:	
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
	
i1l2717:	
	movf	(___ftpack@sign),w
	skipz
	goto	u58_20
	goto	i1l2391
u58_20:
	line	84
	
i1l2719:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
i1l2391:	
	line	85
	line	86
	
i1l2380:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
psect	text67,local,class=CODE,delta=2
global __ptext67
__ptext67:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
