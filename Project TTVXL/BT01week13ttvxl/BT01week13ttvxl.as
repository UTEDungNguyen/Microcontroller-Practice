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
# 7 "D:\TTVXL\Project TTVXL\BT01week13ttvxl\BT01week13ttvxl.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "D:\TTVXL\Project TTVXL\BT01week13ttvxl\BT01week13ttvxl.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNROOT	_main
	FNCALL	intlevel1,_ngat
	global	intlevel1
	FNROOT	intlevel1
	global	_TMR2
psect	text25,local,class=CODE,delta=2
global __ptext25
__ptext25:
_TMR2	set	17
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RE0
_RE0	set	72
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
	global	_PR2
_PR2	set	146
	global	_TMR2IE
_TMR2IE	set	1121
	global	_TRISE0
_TRISE0	set	1096
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"BT01week13ttvxl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

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
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      2       2
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
;;COMMON               E      2       2       1       14.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;ABS                  0      0       0       3        0.0%
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
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 11 in file "D:\TTVXL\Project TTVXL\BT01week13ttvxl\BT01week13ttvxl.c"
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
	file	"D:\TTVXL\Project TTVXL\BT01week13ttvxl\BT01week13ttvxl.c"
	line	11
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2]
	line	12
	
l3490:	
;BT01week13ttvxl.c: 12: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	13
	
l3492:	
;BT01week13ttvxl.c: 13: TRISE0 = 0; RE0 = 0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1096/8)^080h,(1096)&7
	
l3494:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(72/8),(72)&7
	line	16
	
l3496:	
;BT01week13ttvxl.c: 16: T2CKPS1=0; T2CKPS0=0;
	bcf	(145/8),(145)&7
	
l3498:	
	bcf	(144/8),(144)&7
	line	17
;BT01week13ttvxl.c: 17: TMR2 = 0;PR2 = 249;
	clrf	(17)	;volatile
	
l3500:	
	movlw	(0F9h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	18
	
l3502:	
;BT01week13ttvxl.c: 18: TOUTPS3 = 0;TOUTPS2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(150/8),(150)&7
	
l3504:	
	bcf	(149/8),(149)&7
	line	19
	
l3506:	
;BT01week13ttvxl.c: 19: TOUTPS1 = 0;TOUTPS0 = 0;
	bcf	(148/8),(148)&7
	
l3508:	
	bcf	(147/8),(147)&7
	line	20
	
l3510:	
;BT01week13ttvxl.c: 20: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	21
	
l3512:	
;BT01week13ttvxl.c: 21: TMR2IE = 1; TMR2IF = 0; PEIE = 1; GIE =1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1121/8)^080h,(1121)&7
	
l3514:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(97/8),(97)&7
	
l3516:	
	bsf	(94/8),(94)&7
	
l3518:	
	bsf	(95/8),(95)&7
	line	25
;BT01week13ttvxl.c: 24: {
	
l1026:	
	line	23
	goto	l1026
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	26
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
;;		line 28 in file "D:\TTVXL\Project TTVXL\BT01week13ttvxl\BT01week13ttvxl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
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
	file	"D:\TTVXL\Project TTVXL\BT01week13ttvxl\BT01week13ttvxl.c"
	line	28
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
	opt	stack 7
; Regs used in _ngat: [wreg]
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
	line	29
	
i1l3520:	
;BT01week13ttvxl.c: 29: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l3524
u1_20:
	line	31
	
i1l3522:	
;BT01week13ttvxl.c: 30: {
;BT01week13ttvxl.c: 31: RE0 =~RE0;
	movlw	1<<((72)&7)
	xorwf	((72)/8),f
	line	33
	
i1l3524:	
;BT01week13ttvxl.c: 32: }
;BT01week13ttvxl.c: 33: TMR2IF = 0;
	bcf	(97/8),(97)&7
	line	34
	
i1l1032:	
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
