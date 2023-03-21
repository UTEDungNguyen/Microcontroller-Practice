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
# 6 "D:\TTVXL\Project TTVXL\bt02ttvxl\bt02ttvxlday1.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "D:\TTVXL\Project TTVXL\bt02ttvxl\bt02ttvxlday1.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_display_7_segment
	FNCALL	_display_7_segment,___awdiv
	FNCALL	_display_7_segment,___awmod
	FNROOT	_main
	global	_maled
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\TTVXL\Project TTVXL\bt02ttvxl\bt02ttvxlday1.c"
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
	global	_h
	global	_i
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"bt02ttvxl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_h:
       ds      2

_i:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\TTVXL\Project TTVXL\bt02ttvxl\bt02ttvxlday1.c"
_maled:
       ds      10

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
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
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	2
	global	?_display_7_segment
?_display_7_segment:	; 0 bytes @ 0x8
	global	display_7_segment@n
display_7_segment@n:	; 2 bytes @ 0x8
	ds	2
	global	??_display_7_segment
??_display_7_segment:	; 0 bytes @ 0xA
	global	??_main
??_main:	; 0 bytes @ 0xA
;;Data sizes: Strings 0, constant 0, data 10, bss 4, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      14
;; BANK0           80      0      10
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_display_7_segment
;;   _display_7_segment->___awdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
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
;; (0) _main                                                 0     0      0     640
;;                  _display_7_segment
;; ---------------------------------------------------------------------------------
;; (1) _display_7_segment                                    2     0      2     640
;;                                              8 COMMON     2     0      2
;;                            ___awdiv
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              6     2      4     296
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              8     4      4     300
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _display_7_segment
;;     ___awdiv
;;     ___awmod
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
;;DATA                 0      0      1A      12        0.0%
;;ABS                  0      0      18       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      0       A       5       12.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      A       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 19 in file "D:\TTVXL\Project TTVXL\bt02ttvxl\bt02ttvxlday1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 160/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_display_7_segment
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\bt02ttvxl\bt02ttvxlday1.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	20
	
l2648:	
;bt02ttvxlday1.c: 20: TRISC = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(135)^080h	;volatile
	line	21
;bt02ttvxlday1.c: 21: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	22
;bt02ttvxlday1.c: 22: ANSEL = ANSELH = 0;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	23
	
l2650:	
;bt02ttvxlday1.c: 23: TRISB = 0xFF;
	movlw	(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	24
	
l2652:	
;bt02ttvxlday1.c: 24: display_7_segment(0);
	clrf	(?_display_7_segment)
	clrf	(?_display_7_segment+1)
	fcall	_display_7_segment
	line	25
	
l2654:	
;bt02ttvxlday1.c: 25: i,h = 0;
	clrf	(_h)
	clrf	(_h+1)
	line	27
	
l2656:	
;bt02ttvxlday1.c: 27: if (RB0 == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u411
	goto	u410
u411:
	goto	l2676
u410:
	line	29
	
l1036:	
	line	28
	btfsc	(48/8),(48)&7
	goto	u421
	goto	u420
u421:
	goto	l1036
u420:
	
l1038:	
	line	30
;bt02ttvxlday1.c: 29: }
;bt02ttvxlday1.c: 30: if (RB0 == 0){
	btfsc	(48/8),(48)&7
	goto	u431
	goto	u430
u431:
	goto	l2670
u430:
	line	31
	
l2660:	
;bt02ttvxlday1.c: 31: i=i+1;
	incf	(_i),f
	skipnz
	incf	(_i+1),f
	line	32
	
l2662:	
;bt02ttvxlday1.c: 32: if ((i>=0)&&(i<100)){
	btfsc	(_i+1),7
	goto	u441
	goto	u440
u441:
	goto	l2670
u440:
	
l2664:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u455
	movlw	low(064h)
	subwf	(_i),w
u455:

	skipnc
	goto	u451
	goto	u450
u451:
	goto	l2670
u450:
	line	33
	
l2666:	
;bt02ttvxlday1.c: 33: h=i;
	movf	(_i+1),w
	movwf	(_h+1)
	movf	(_i),w
	movwf	(_h)
	line	34
	
l2668:	
;bt02ttvxlday1.c: 34: display_7_segment(h);}
	movf	(_h+1),w
	movwf	(?_display_7_segment+1)
	movf	(_h),w
	movwf	(?_display_7_segment)
	fcall	_display_7_segment
	line	36
	
l2670:	
;bt02ttvxlday1.c: 35: }
;bt02ttvxlday1.c: 36: if (i>99){
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u465
	movlw	low(064h)
	subwf	(_i),w
u465:

	skipc
	goto	u461
	goto	u460
u461:
	goto	l2676
u460:
	line	37
	
l2672:	
;bt02ttvxlday1.c: 37: i=h=99;
	movlw	063h
	movwf	(_h)
	clrf	(_h+1)
	movf	((_h+1)),w
	movwf	(_i+1)
	movf	((_h)),w
	movwf	(_i)
	line	38
	
l2674:	
;bt02ttvxlday1.c: 38: display_7_segment(h);}
	movlw	063h
	movwf	(?_display_7_segment)
	clrf	(?_display_7_segment+1)
	fcall	_display_7_segment
	line	40
	
l2676:	
;bt02ttvxlday1.c: 39: }
;bt02ttvxlday1.c: 40: if (RB1 == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u471
	goto	u470
u471:
	goto	l2656
u470:
	line	42
	
l1043:	
	line	41
	btfsc	(49/8),(49)&7
	goto	u481
	goto	u480
u481:
	goto	l1043
u480:
	
l1045:	
	line	43
;bt02ttvxlday1.c: 42: }
;bt02ttvxlday1.c: 43: if (RB1 == 0){
	btfsc	(49/8),(49)&7
	goto	u491
	goto	u490
u491:
	goto	l2690
u490:
	line	44
	
l2680:	
;bt02ttvxlday1.c: 44: i=i-1;
	movlw	-1
	addwf	(_i),f
	skipc
	decf	(_i+1),f
	line	45
	
l2682:	
;bt02ttvxlday1.c: 45: if ((i>=0)&&(i<100)){
	btfsc	(_i+1),7
	goto	u501
	goto	u500
u501:
	goto	l2690
u500:
	
l2684:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u515
	movlw	low(064h)
	subwf	(_i),w
u515:

	skipnc
	goto	u511
	goto	u510
u511:
	goto	l2690
u510:
	line	46
	
l2686:	
;bt02ttvxlday1.c: 46: h=i;
	movf	(_i+1),w
	movwf	(_h+1)
	movf	(_i),w
	movwf	(_h)
	line	47
	
l2688:	
;bt02ttvxlday1.c: 47: display_7_segment(h);}
	movf	(_h+1),w
	movwf	(?_display_7_segment+1)
	movf	(_h),w
	movwf	(?_display_7_segment)
	fcall	_display_7_segment
	line	49
	
l2690:	
;bt02ttvxlday1.c: 48: }
;bt02ttvxlday1.c: 49: if (i<0){
	btfss	(_i+1),7
	goto	u521
	goto	u520
u521:
	goto	l2656
u520:
	line	50
	
l2692:	
;bt02ttvxlday1.c: 50: i=h=0;
	clrf	(_h)
	clrf	(_h+1)
	clrf	(_i)
	clrf	(_i+1)
	line	51
	
l2694:	
;bt02ttvxlday1.c: 51: display_7_segment(h);}
	clrf	(?_display_7_segment)
	clrf	(?_display_7_segment+1)
	fcall	_display_7_segment
	goto	l2656
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	55
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_display_7_segment
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:

;; *************** function _display_7_segment *****************
;; Defined at:
;;		line 13 in file "D:\TTVXL\Project TTVXL\bt02ttvxl\bt02ttvxlday1.c"
;; Parameters:    Size  Location     Type
;;  n               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
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
;;		___awmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text85
	file	"D:\TTVXL\Project TTVXL\bt02ttvxl\bt02ttvxlday1.c"
	line	13
	global	__size_of_display_7_segment
	__size_of_display_7_segment	equ	__end_of_display_7_segment-_display_7_segment
	
_display_7_segment:	
	opt	stack 6
; Regs used in _display_7_segment: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	14
	
l2646:	
;bt02ttvxlday1.c: 14: PORTC = maled[n/10];
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(display_7_segment@n+1),w
	movwf	1+(?___awdiv)+02h
	movf	(display_7_segment@n),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	_maled&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	15
;bt02ttvxlday1.c: 15: PORTD = maled[n%10];
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(display_7_segment@n+1),w
	movwf	1+(?___awmod)+02h
	movf	(display_7_segment@n),w
	movwf	0+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	_maled&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(8)	;volatile
	line	16
	
l1031:	
	return
	opt stack 0
GLOBAL	__end_of_display_7_segment
	__end_of_display_7_segment:
;; =============== function _display_7_segment ends ============

	signat	_display_7_segment,4216
	global	___awmod
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    5[COMMON] unsigned char 
;;  counter         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
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
;;		_display_7_segment
;; This function uses a non-reentrant model
;;
psect	text86
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2610:	
	clrf	(___awmod@sign)
	line	9
	
l2612:	
	btfss	(___awmod@dividend+1),7
	goto	u341
	goto	u340
u341:
	goto	l2618
u340:
	line	10
	
l2614:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l2616:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l2618:	
	btfss	(___awmod@divisor+1),7
	goto	u351
	goto	u350
u351:
	goto	l2622
u350:
	line	14
	
l2620:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l2622:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u361
	goto	u360
u361:
	goto	l2638
u360:
	line	16
	
l2624:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l2628
	line	18
	
l2626:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l2628:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u371
	goto	u370
u371:
	goto	l2626
u370:
	line	22
	
l2630:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u385
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u385:
	skipc
	goto	u381
	goto	u380
u381:
	goto	l2634
u380:
	line	23
	
l2632:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l2634:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l2636:	
	decfsz	(___awmod@counter),f
	goto	u391
	goto	u390
u391:
	goto	l2630
u390:
	line	27
	
l2638:	
	movf	(___awmod@sign),w
	skipz
	goto	u400
	goto	l2642
u400:
	line	28
	
l2640:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l2642:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l2258:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text87,local,class=CODE,delta=2
global __ptext87
__ptext87:

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
;;		On entry : 0/20
;;		On exit  : 0/20
;;		Unchanged: FFFFF/0
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
;;		_display_7_segment
;; This function uses a non-reentrant model
;;
psect	text87
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2566:	
	clrf	(___awdiv@sign)
	line	10
	
l2568:	
	btfss	(___awdiv@divisor+1),7
	goto	u271
	goto	u270
u271:
	goto	l2574
u270:
	line	11
	
l2570:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l2572:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l2574:	
	btfss	(___awdiv@dividend+1),7
	goto	u281
	goto	u280
u281:
	goto	l2580
u280:
	line	15
	
l2576:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2578:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l2580:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2582:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u291
	goto	u290
u291:
	goto	l2602
u290:
	line	20
	
l2584:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l2588
	line	22
	
l2586:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l2588:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u301
	goto	u300
u301:
	goto	l2586
u300:
	line	26
	
l2590:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l2592:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u315
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u315:
	skipc
	goto	u311
	goto	u310
u311:
	goto	l2598
u310:
	line	28
	
l2594:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2596:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l2598:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l2600:	
	decfsz	(___awdiv@counter),f
	goto	u321
	goto	u320
u321:
	goto	l2590
u320:
	line	34
	
l2602:	
	movf	(___awdiv@sign),w
	skipz
	goto	u330
	goto	l2606
u330:
	line	35
	
l2604:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l2606:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l2190:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
psect	text88,local,class=CODE,delta=2
global __ptext88
__ptext88:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
