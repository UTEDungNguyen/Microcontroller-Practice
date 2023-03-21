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
# 6 "D:\TTVXL\Project TTVXL\keypad\keypadweek9.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "D:\TTVXL\Project TTVXL\keypad\keypadweek9.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNROOT	_main
	FNCALL	intlevel1,_button
	global	intlevel1
	FNROOT	intlevel1
	global	_maled
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\TTVXL\Project TTVXL\keypad\keypadweek9.c"
	line	9

;initializer for _maled
	retlw	0C0h
	retlw	0F9h
	retlw	0A4h
	retlw	0B0h
	retlw	099h
	retlw	092h
	retlw	082h
	retlw	0F8h
	retlw	080h
	retlw	090h
	retlw	0C6h
	retlw	086h
	global	_S1_state
	global	_PORTD
_PORTD	set	8
	global	_GIE
_GIE	set	95
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RBIE
_RBIE	set	91
	global	_RBIF
_RBIF	set	88
	global	_IOCB
_IOCB	set	150
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"keypadweek9.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_S1_state:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\TTVXL\Project TTVXL\keypad\keypadweek9.c"
_maled:
       ds      12

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
	fcall	__pidataBANK0+4		;fetch initializer
	movwf	__pdataBANK0+4&07fh		
	fcall	__pidataBANK0+5		;fetch initializer
	movwf	__pdataBANK0+5&07fh		
	fcall	__pidataBANK0+6		;fetch initializer
	movwf	__pdataBANK0+6&07fh		
	fcall	__pidataBANK0+7		;fetch initializer
	movwf	__pdataBANK0+7&07fh		
	fcall	__pidataBANK0+8		;fetch initializer
	movwf	__pdataBANK0+8&07fh		
	fcall	__pidataBANK0+9		;fetch initializer
	movwf	__pdataBANK0+9&07fh		
	fcall	__pidataBANK0+10		;fetch initializer
	movwf	__pdataBANK0+10&07fh		
	fcall	__pidataBANK0+11		;fetch initializer
	movwf	__pdataBANK0+11&07fh		
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
	global	?_button
?_button:	; 0 bytes @ 0x0
	global	??_button
??_button:	; 0 bytes @ 0x0
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x2
;;Data sizes: Strings 0, constant 0, data 12, bss 1, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      2       3
;; BANK0           80      0      12
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
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;; (0) _main                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (1) _button                                               2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;
;; _button (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0       F      12        0.0%
;;ABS                  0      0       F       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       0       2        0.0%
;;BANK0               50      0       C       5       15.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      2       3       1       21.4%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 14 in file "D:\TTVXL\Project TTVXL\keypad\keypadweek9.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
	file	"D:\TTVXL\Project TTVXL\keypad\keypadweek9.c"
	line	14
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0]
	line	16
	
l3663:	
;keypadweek9.c: 16: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	17
	
l3665:	
;keypadweek9.c: 17: TRISB = 0b01111000;
	movlw	(078h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	18
	
l3667:	
;keypadweek9.c: 18: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	19
	
l3669:	
;keypadweek9.c: 19: PORTD=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(8)	;volatile
	line	21
	
l3671:	
;keypadweek9.c: 21: GIE = 1;
	bsf	(95/8),(95)&7
	line	22
	
l3673:	
;keypadweek9.c: 22: RBIE = 1;
	bsf	(91/8),(91)&7
	line	23
	
l3675:	
;keypadweek9.c: 23: RBIF = 0;
	bcf	(88/8),(88)&7
	line	24
	
l3677:	
;keypadweek9.c: 24: IOCB = 0b01111000;
	movlw	(078h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(150)^080h	;volatile
	line	29
	
l3679:	
;keypadweek9.c: 29: RB0=0;RB1=0;RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(48/8),(48)&7
	
l3681:	
	bcf	(49/8),(49)&7
	
l3683:	
	bsf	(50/8),(50)&7
	line	31
	
l3685:	
;keypadweek9.c: 31: RB0=0;RB1=1;RB2=0;
	bcf	(48/8),(48)&7
	
l3687:	
	bsf	(49/8),(49)&7
	
l3689:	
	bcf	(50/8),(50)&7
	line	33
	
l3691:	
;keypadweek9.c: 33: RB0=1;RB1=0;RB2=0;
	bsf	(48/8),(48)&7
	
l3693:	
	bcf	(49/8),(49)&7
	
l3695:	
	bcf	(50/8),(50)&7
	line	35
	
l3697:	
;keypadweek9.c: 35: if (S1_state ==0){PORTD=maled[0];}
	movf	(_S1_state),f
	skipz
	goto	u361
	goto	u360
u361:
	goto	l1033
u360:
	
l3699:	
	movf	(_maled),w
	movwf	(8)	;volatile
	
l1033:	
	line	36
;keypadweek9.c: 36: if (S1_state != 0){break;}
	movf	(_S1_state),w
	skipz
	goto	u370
	goto	l3679
u370:
	line	38
	
l3703:	
;keypadweek9.c: 37: }
;keypadweek9.c: 38: if (S1_state ==0){PORTD=maled[0];}
	movf	(_S1_state),f
	skipz
	goto	u381
	goto	u380
u381:
	goto	l1037
u380:
	
l3705:	
	movf	(_maled),w
	movwf	(8)	;volatile
	
l1037:	
	line	39
;keypadweek9.c: 39: if (S1_state ==1){PORTD = maled[1];}
	decf	(_S1_state),w
	skipz
	goto	u391
	goto	u390
u391:
	goto	l1038
u390:
	
l3707:	
	movf	0+(_maled)+01h,w
	movwf	(8)	;volatile
	
l1038:	
	line	40
;keypadweek9.c: 40: if (S1_state ==2){PORTD = maled[4];}
	movf	(_S1_state),w
	xorlw	02h
	skipz
	goto	u401
	goto	u400
u401:
	goto	l1039
u400:
	
l3709:	
	movf	0+(_maled)+04h,w
	movwf	(8)	;volatile
	
l1039:	
	line	41
;keypadweek9.c: 41: if (S1_state ==3){PORTD = maled[7];}
	movf	(_S1_state),w
	xorlw	03h
	skipz
	goto	u411
	goto	u410
u411:
	goto	l1040
u410:
	
l3711:	
	movf	0+(_maled)+07h,w
	movwf	(8)	;volatile
	
l1040:	
	line	42
;keypadweek9.c: 42: if (S1_state ==4){PORTD = maled[10];}
	movf	(_S1_state),w
	xorlw	04h
	skipz
	goto	u421
	goto	u420
u421:
	goto	l1041
u420:
	
l3713:	
	movf	0+(_maled)+0Ah,w
	movwf	(8)	;volatile
	
l1041:	
	line	43
;keypadweek9.c: 43: if (S1_state ==5){PORTD = maled[2];}
	movf	(_S1_state),w
	xorlw	05h
	skipz
	goto	u431
	goto	u430
u431:
	goto	l1042
u430:
	
l3715:	
	movf	0+(_maled)+02h,w
	movwf	(8)	;volatile
	
l1042:	
	line	44
;keypadweek9.c: 44: if (S1_state ==6){PORTD = maled[5];}
	movf	(_S1_state),w
	xorlw	06h
	skipz
	goto	u441
	goto	u440
u441:
	goto	l1043
u440:
	
l3717:	
	movf	0+(_maled)+05h,w
	movwf	(8)	;volatile
	
l1043:	
	line	45
;keypadweek9.c: 45: if (S1_state ==7){PORTD = maled[8];}
	movf	(_S1_state),w
	xorlw	07h
	skipz
	goto	u451
	goto	u450
u451:
	goto	l1044
u450:
	
l3719:	
	movf	0+(_maled)+08h,w
	movwf	(8)	;volatile
	
l1044:	
	line	46
;keypadweek9.c: 46: if (S1_state ==8){PORTD = maled[0];}
	movf	(_S1_state),w
	xorlw	08h
	skipz
	goto	u461
	goto	u460
u461:
	goto	l1045
u460:
	
l3721:	
	movf	(_maled),w
	movwf	(8)	;volatile
	
l1045:	
	line	47
;keypadweek9.c: 47: if (S1_state ==9){PORTD = maled[3];}
	movf	(_S1_state),w
	xorlw	09h
	skipz
	goto	u471
	goto	u470
u471:
	goto	l1046
u470:
	
l3723:	
	movf	0+(_maled)+03h,w
	movwf	(8)	;volatile
	
l1046:	
	line	48
;keypadweek9.c: 48: if (S1_state ==10){PORTD = maled[6];}
	movf	(_S1_state),w
	xorlw	0Ah
	skipz
	goto	u481
	goto	u480
u481:
	goto	l1047
u480:
	
l3725:	
	movf	0+(_maled)+06h,w
	movwf	(8)	;volatile
	
l1047:	
	line	49
;keypadweek9.c: 49: if (S1_state ==11){PORTD = maled[9];}
	movf	(_S1_state),w
	xorlw	0Bh
	skipz
	goto	u491
	goto	u490
u491:
	goto	l1048
u490:
	
l3727:	
	movf	0+(_maled)+09h,w
	movwf	(8)	;volatile
	
l1048:	
	line	50
;keypadweek9.c: 50: if (S1_state ==12){PORTD = maled[11];}
	movf	(_S1_state),w
	xorlw	0Ch
	skipz
	goto	u501
	goto	u500
u501:
	goto	l3679
u500:
	
l3729:	
	movf	0+(_maled)+0Bh,w
	movwf	(8)	;volatile
	goto	l3679
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	53
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_button
psect	text48,local,class=CODE,delta=2
global __ptext48
__ptext48:

;; *************** function _button *****************
;; Defined at:
;;		line 54 in file "D:\TTVXL\Project TTVXL\keypad\keypadweek9.c"
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
psect	text48
	file	"D:\TTVXL\Project TTVXL\keypad\keypadweek9.c"
	line	54
	global	__size_of_button
	__size_of_button	equ	__end_of_button-_button
	
_button:	
	opt	stack 7
; Regs used in _button: [wreg]
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
psect	text48
	line	55
	
i1l3609:	
;keypadweek9.c: 55: RBIF = 0;
	bcf	(88/8),(88)&7
	line	56
;keypadweek9.c: 56: if (RB3 == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(51/8),(51)&7
	goto	u16_21
	goto	u16_20
u16_21:
	goto	i1l3621
u16_20:
	line	58
	
i1l1056:	
	line	57
	btfsc	(51/8),(51)&7
	goto	u17_21
	goto	u17_20
u17_21:
	goto	i1l1056
u17_20:
	
i1l1058:	
	line	59
;keypadweek9.c: 58: }
;keypadweek9.c: 59: if (RB0 == 1){
	btfss	(48/8),(48)&7
	goto	u18_21
	goto	u18_20
u18_21:
	goto	i1l1059
u18_20:
	line	60
	
i1l3613:	
;keypadweek9.c: 60: S1_state =1;
	clrf	(_S1_state)
	incf	(_S1_state),f
	line	61
	
i1l1059:	
	line	62
;keypadweek9.c: 61: }
;keypadweek9.c: 62: if (RB1 == 1){
	btfss	(49/8),(49)&7
	goto	u19_21
	goto	u19_20
u19_21:
	goto	i1l3617
u19_20:
	line	63
	
i1l3615:	
;keypadweek9.c: 63: S1_state =5;
	movlw	(05h)
	movwf	(_S1_state)
	line	65
	
i1l3617:	
;keypadweek9.c: 64: }
;keypadweek9.c: 65: if (RB2 == 1){
	btfss	(50/8),(50)&7
	goto	u20_21
	goto	u20_20
u20_21:
	goto	i1l3621
u20_20:
	line	66
	
i1l3619:	
;keypadweek9.c: 66: S1_state =9;
	movlw	(09h)
	movwf	(_S1_state)
	line	69
	
i1l3621:	
;keypadweek9.c: 67: }
;keypadweek9.c: 68: }
;keypadweek9.c: 69: if (RB4 == 1){
	btfss	(52/8),(52)&7
	goto	u21_21
	goto	u21_20
u21_21:
	goto	i1l3635
u21_20:
	line	71
	
i1l1063:	
	line	70
	btfsc	(52/8),(52)&7
	goto	u22_21
	goto	u22_20
u22_21:
	goto	i1l1063
u22_20:
	
i1l1065:	
	line	72
;keypadweek9.c: 71: }
;keypadweek9.c: 72: if (RB0 == 1){
	btfss	(48/8),(48)&7
	goto	u23_21
	goto	u23_20
u23_21:
	goto	i1l3627
u23_20:
	line	73
	
i1l3625:	
;keypadweek9.c: 73: S1_state =2;
	movlw	(02h)
	movwf	(_S1_state)
	line	75
	
i1l3627:	
;keypadweek9.c: 74: }
;keypadweek9.c: 75: if (RB1 == 1){
	btfss	(49/8),(49)&7
	goto	u24_21
	goto	u24_20
u24_21:
	goto	i1l3631
u24_20:
	line	76
	
i1l3629:	
;keypadweek9.c: 76: S1_state =6;
	movlw	(06h)
	movwf	(_S1_state)
	line	78
	
i1l3631:	
;keypadweek9.c: 77: }
;keypadweek9.c: 78: if (RB2 == 1){
	btfss	(50/8),(50)&7
	goto	u25_21
	goto	u25_20
u25_21:
	goto	i1l3635
u25_20:
	line	79
	
i1l3633:	
;keypadweek9.c: 79: S1_state =10;
	movlw	(0Ah)
	movwf	(_S1_state)
	line	82
	
i1l3635:	
;keypadweek9.c: 80: }
;keypadweek9.c: 81: }
;keypadweek9.c: 82: if (RB5 == 1){
	btfss	(53/8),(53)&7
	goto	u26_21
	goto	u26_20
u26_21:
	goto	i1l3649
u26_20:
	line	84
	
i1l1070:	
	line	83
	btfsc	(53/8),(53)&7
	goto	u27_21
	goto	u27_20
u27_21:
	goto	i1l1070
u27_20:
	
i1l1072:	
	line	85
;keypadweek9.c: 84: }
;keypadweek9.c: 85: if (RB0 == 1){
	btfss	(48/8),(48)&7
	goto	u28_21
	goto	u28_20
u28_21:
	goto	i1l3641
u28_20:
	line	86
	
i1l3639:	
;keypadweek9.c: 86: S1_state =3;
	movlw	(03h)
	movwf	(_S1_state)
	line	88
	
i1l3641:	
;keypadweek9.c: 87: }
;keypadweek9.c: 88: if (RB1 == 1){
	btfss	(49/8),(49)&7
	goto	u29_21
	goto	u29_20
u29_21:
	goto	i1l3645
u29_20:
	line	89
	
i1l3643:	
;keypadweek9.c: 89: S1_state =7;
	movlw	(07h)
	movwf	(_S1_state)
	line	91
	
i1l3645:	
;keypadweek9.c: 90: }
;keypadweek9.c: 91: if (RB2 == 1){
	btfss	(50/8),(50)&7
	goto	u30_21
	goto	u30_20
u30_21:
	goto	i1l3649
u30_20:
	line	92
	
i1l3647:	
;keypadweek9.c: 92: S1_state =11;
	movlw	(0Bh)
	movwf	(_S1_state)
	line	95
	
i1l3649:	
;keypadweek9.c: 93: }
;keypadweek9.c: 94: }
;keypadweek9.c: 95: if (RB6 == 1){
	btfss	(54/8),(54)&7
	goto	u31_21
	goto	u31_20
u31_21:
	goto	i1l1083
u31_20:
	line	97
	
i1l1077:	
	line	96
	btfsc	(54/8),(54)&7
	goto	u32_21
	goto	u32_20
u32_21:
	goto	i1l1077
u32_20:
	
i1l1079:	
	line	98
;keypadweek9.c: 97: }
;keypadweek9.c: 98: if (RB0 == 1){
	btfss	(48/8),(48)&7
	goto	u33_21
	goto	u33_20
u33_21:
	goto	i1l3655
u33_20:
	line	99
	
i1l3653:	
;keypadweek9.c: 99: S1_state =4;
	movlw	(04h)
	movwf	(_S1_state)
	line	101
	
i1l3655:	
;keypadweek9.c: 100: }
;keypadweek9.c: 101: if (RB1 == 1){
	btfss	(49/8),(49)&7
	goto	u34_21
	goto	u34_20
u34_21:
	goto	i1l3659
u34_20:
	line	102
	
i1l3657:	
;keypadweek9.c: 102: S1_state =8;
	movlw	(08h)
	movwf	(_S1_state)
	line	104
	
i1l3659:	
;keypadweek9.c: 103: }
;keypadweek9.c: 104: if (RB2 == 1){
	btfss	(50/8),(50)&7
	goto	u35_21
	goto	u35_20
u35_21:
	goto	i1l1083
u35_20:
	line	105
	
i1l3661:	
;keypadweek9.c: 105: S1_state =12;
	movlw	(0Ch)
	movwf	(_S1_state)
	line	108
	
i1l1083:	
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
psect	text49,local,class=CODE,delta=2
global __ptext49
__ptext49:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
