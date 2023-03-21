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
# 6 "D:\TTVXL\Project TTVXL\day1.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "D:\TTVXL\Project TTVXL\day1.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_Led_1s
	FNROOT	_main
	FNCALL	_button,_Led_200ms
	FNCALL	intlevel1,_button
	global	intlevel1
	FNROOT	intlevel1
	global	_PORTC
psect	text83,local,class=CODE,delta=2
global __ptext83
__ptext83:
_PORTC	set	7
	global	_GIE
_GIE	set	95
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RBIE
_RBIE	set	91
	global	_RBIF
_RBIF	set	88
	global	_IOCB
_IOCB	set	150
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"Lesson1.as"
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
	global	?_Led_200ms
?_Led_200ms:	; 0 bytes @ 0x0
	global	??_Led_200ms
??_Led_200ms:	; 0 bytes @ 0x0
	global	?_Led_1s
?_Led_1s:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_button
?_button:	; 0 bytes @ 0x0
	ds	3
	global	Led_200ms@m
Led_200ms@m:	; 1 bytes @ 0x3
	ds	1
	global	Led_200ms@h
Led_200ms@h:	; 1 bytes @ 0x4
	ds	1
	global	??_button
??_button:	; 0 bytes @ 0x5
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x7
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_Led_1s
??_Led_1s:	; 0 bytes @ 0x0
	ds	3
	global	Led_1s@m
Led_1s@m:	; 1 bytes @ 0x3
	ds	1
	global	Led_1s@h
Led_1s@h:	; 1 bytes @ 0x4
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       7
;; BANK0           80      5       5
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
;; Critical Paths under _button in COMMON
;;
;;   _button->_Led_200ms
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_Led_1s
;;
;; Critical Paths under _button in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _button in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _button in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _button in BANK2
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
;; (0) _main                                                 0     0      0      93
;;                             _Led_1s
;; ---------------------------------------------------------------------------------
;; (1) _Led_1s                                               6     6      0      93
;;                                              0 BANK0      5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _button                                               2     2      0      60
;;                                              5 COMMON     2     2      0
;;                          _Led_200ms
;; ---------------------------------------------------------------------------------
;; (3) _Led_200ms                                            6     6      0      60
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Led_1s
;;
;; _button (ROOT)
;;   _Led_200ms
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      7       7       1       50.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      5       5       5        6.3%
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
;;		line 38 in file "D:\TTVXL\Project TTVXL\day1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Led_1s
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\day1.c"
	line	38
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	39
	
l2532:	
;day1.c: 39: TRISC = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(135)^080h	;volatile
	line	40
;day1.c: 40: ANSEL = ANSELH = 0;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	41
	
l2534:	
;day1.c: 41: TRISB = 0xFF;
	movlw	(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	42
	
l2536:	
;day1.c: 42: PORTC = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	44
	
l2538:	
;day1.c: 44: GIE = 1;
	bsf	(95/8),(95)&7
	line	45
	
l2540:	
;day1.c: 45: RBIE = 1;
	bsf	(91/8),(91)&7
	line	46
	
l2542:	
;day1.c: 46: RBIF = 0;
	bcf	(88/8),(88)&7
	line	47
;day1.c: 47: IOCB = 0b11100000;
	movlw	(0E0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(150)^080h	;volatile
	line	50
	
l2544:	
;day1.c: 50: if (RB5 == 1){
	bcf	status, 5	;RP0=0, select bank0
	btfss	(53/8),(53)&7
	goto	u251
	goto	u250
u251:
	goto	l2544
u250:
	line	52
	
l1045:	
	line	51
	btfsc	(53/8),(53)&7
	goto	u261
	goto	u260
u261:
	goto	l1045
u260:
	goto	l1048
	line	54
	
l2548:	
;day1.c: 54: Led_1s();
	fcall	_Led_1s
	line	55
	
l2550:	
;day1.c: 55: if (RB6 == 1 || RB7 ==1){
	btfsc	(54/8),(54)&7
	goto	u271
	goto	u270
u271:
	goto	l1044
u270:
	
l2552:	
	btfss	(55/8),(55)&7
	goto	u281
	goto	u280
u281:
	goto	l1048
u280:
	goto	l2544
	line	58
	
l1048:	
	line	53
	btfss	(53/8),(53)&7
	goto	u291
	goto	u290
u291:
	goto	l2548
u290:
	goto	l2544
	line	59
	
l1044:	
	goto	l2544
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	62
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Led_1s
psect	text84,local,class=CODE,delta=2
global __ptext84
__ptext84:

;; *************** function _Led_1s *****************
;; Defined at:
;;		line 23 in file "D:\TTVXL\Project TTVXL\day1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  m               1    3[BANK0 ] unsigned char 
;;  h               1    4[BANK0 ] unsigned char 
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text84
	file	"D:\TTVXL\Project TTVXL\day1.c"
	line	23
	global	__size_of_Led_1s
	__size_of_Led_1s	equ	__end_of_Led_1s-_Led_1s
	
_Led_1s:	
	opt	stack 5
; Regs used in _Led_1s: [wreg+status,2+status,0]
	line	24
	
l2512:	
	line	25
	
l2514:	
;day1.c: 25: h = 0b00000100;
	movlw	(04h)
	movwf	(Led_1s@h)
	line	26
	
l2516:	
;day1.c: 26: for (char m=0;m<4;m++){
	clrf	(Led_1s@m)
	line	27
	
l2520:	
;day1.c: 27: PORTC = h;
	movf	(Led_1s@h),w
	movwf	(7)	;volatile
	line	28
	
l2522:	
;day1.c: 28: h=h>>1;
	clrc
	rrf	(Led_1s@h),f
	line	29
;day1.c: 29: _delay((unsigned long)((1000)*(20000000/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_Led_1s+0)+0+2),f
movlw	94
movwf	((??_Led_1s+0)+0+1),f
	movlw	134
movwf	((??_Led_1s+0)+0),f
u307:
	decfsz	((??_Led_1s+0)+0),f
	goto	u307
	decfsz	((??_Led_1s+0)+0+1),f
	goto	u307
	decfsz	((??_Led_1s+0)+0+2),f
	goto	u307
	clrwdt
opt asmopt_on

	line	30
;day1.c: 30: PORTC=h;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Led_1s@h),w
	movwf	(7)	;volatile
	line	31
	
l2524:	
;day1.c: 31: if (RB5 == 1 || RB7 ==1){
	btfsc	(53/8),(53)&7
	goto	u221
	goto	u220
u221:
	goto	l1040
u220:
	
l2526:	
	btfss	(55/8),(55)&7
	goto	u231
	goto	u230
u231:
	goto	l2528
u230:
	goto	l1040
	line	26
	
l2528:	
	incf	(Led_1s@m),f
	
l2530:	
	movlw	(04h)
	subwf	(Led_1s@m),w
	skipc
	goto	u241
	goto	u240
u241:
	goto	l2520
u240:
	line	35
	
l1040:	
	return
	opt stack 0
GLOBAL	__end_of_Led_1s
	__end_of_Led_1s:
;; =============== function _Led_1s ends ============

	signat	_Led_1s,88
	global	_button
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:

;; *************** function _button *****************
;; Defined at:
;;		line 64 in file "D:\TTVXL\Project TTVXL\day1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Led_200ms
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text85
	file	"D:\TTVXL\Project TTVXL\day1.c"
	line	64
	global	__size_of_button
	__size_of_button	equ	__end_of_button-_button
	
_button:	
	opt	stack 5
; Regs used in _button: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_button+0)
	movf	pclath,w
	movwf	(??_button+1)
	ljmp	_button
psect	text85
	line	65
	
i1l2452:	
;day1.c: 65: RBIF = 0;
	bcf	(88/8),(88)&7
	line	66
;day1.c: 66: if (RB6 == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(54/8),(54)&7
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l1059
u4_20:
	line	68
	
i1l1060:	
	line	67
	btfsc	(54/8),(54)&7
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l1060
u5_20:
	goto	i1l1063
	line	70
	
i1l2456:	
;day1.c: 70: Led_200ms();
	fcall	_Led_200ms
	line	71
	
i1l2458:	
;day1.c: 71: if (RB5 == 1 || RB7 == 1){
	btfsc	(53/8),(53)&7
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l1059
u6_20:
	
i1l2460:	
	btfss	(55/8),(55)&7
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l1063
u7_20:
	goto	i1l1059
	line	74
	
i1l1063:	
	line	69
	btfss	(54/8),(54)&7
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l2456
u8_20:
	line	75
	
i1l1059:	
	line	76
;day1.c: 73: }
;day1.c: 74: }
;day1.c: 75: }
;day1.c: 76: if (RB7 == 1){
	btfss	(55/8),(55)&7
	goto	u9_21
	goto	u9_20
u9_21:
	goto	i1l1079
u9_20:
	line	78
	
i1l1070:	
	line	77
	btfsc	(55/8),(55)&7
	goto	u10_21
	goto	u10_20
u10_21:
	goto	i1l1070
u10_20:
	goto	i1l1073
	line	80
	
i1l2464:	
;day1.c: 80: PORTC=0;
	clrf	(7)	;volatile
	line	81
	
i1l2466:	
;day1.c: 81: if (RB5 == 1 || RB6 == 1){
	btfsc	(53/8),(53)&7
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l1079
u11_20:
	
i1l2468:	
	btfss	(54/8),(54)&7
	goto	u12_21
	goto	u12_20
u12_21:
	goto	i1l1073
u12_20:
	goto	i1l1079
	line	84
	
i1l1073:	
	line	79
	btfss	(55/8),(55)&7
	goto	u13_21
	goto	u13_20
u13_21:
	goto	i1l2464
u13_20:
	line	86
	
i1l1079:	
	movf	(??_button+1),w
	movwf	pclath
	swapf	(??_button+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_button
	__end_of_button:
;; =============== function _button ends ============

	signat	_button,88
	global	_Led_200ms
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:

;; *************** function _Led_200ms *****************
;; Defined at:
;;		line 9 in file "D:\TTVXL\Project TTVXL\day1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  m               1    3[COMMON] unsigned char 
;;  h               1    4[COMMON] unsigned char 
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_button
;; This function uses a non-reentrant model
;;
psect	text86
	file	"D:\TTVXL\Project TTVXL\day1.c"
	line	9
	global	__size_of_Led_200ms
	__size_of_Led_200ms	equ	__end_of_Led_200ms-_Led_200ms
	
_Led_200ms:	
	opt	stack 5
; Regs used in _Led_200ms: [wreg+status,2+status,0]
	line	10
	
i1l2432:	
	line	11
	
i1l2434:	
;day1.c: 11: h = 0b00000100;
	movlw	(04h)
	movwf	(Led_200ms@h)
	line	12
	
i1l2436:	
;day1.c: 12: for (char m=0;m<4;m++){
	clrf	(Led_200ms@m)
	line	13
	
i1l2440:	
;day1.c: 13: PORTC = h;
	movf	(Led_200ms@h),w
	movwf	(7)	;volatile
	line	14
	
i1l2442:	
;day1.c: 14: h=h>>1;
	clrc
	rrf	(Led_200ms@h),f
	line	15
;day1.c: 15: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_Led_200ms+0)+0+2),f
movlw	19
movwf	((??_Led_200ms+0)+0+1),f
	movlw	177
movwf	((??_Led_200ms+0)+0),f
u31_27:
	decfsz	((??_Led_200ms+0)+0),f
	goto	u31_27
	decfsz	((??_Led_200ms+0)+0+1),f
	goto	u31_27
	decfsz	((??_Led_200ms+0)+0+2),f
	goto	u31_27
	nop2
opt asmopt_on

	line	16
;day1.c: 16: PORTC=h;
	movf	(Led_200ms@h),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	17
	
i1l2444:	
;day1.c: 17: if (RB6 == 1 || RB7 ==1){
	btfsc	(54/8),(54)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l1032
u1_20:
	
i1l2446:	
	btfss	(55/8),(55)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l2448
u2_20:
	goto	i1l1032
	line	12
	
i1l2448:	
	incf	(Led_200ms@m),f
	
i1l2450:	
	movlw	(04h)
	subwf	(Led_200ms@m),w
	skipc
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l2440
u3_20:
	line	21
	
i1l1032:	
	return
	opt stack 0
GLOBAL	__end_of_Led_200ms
	__end_of_Led_200ms:
;; =============== function _Led_200ms ends ============

	signat	_Led_200ms,88
psect	text87,local,class=CODE,delta=2
global __ptext87
__ptext87:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
