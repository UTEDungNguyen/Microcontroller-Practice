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
# 6 "D:\TTVXL\Project TTVXL\ttvxlweek10\ttvxlweek10.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "D:\TTVXL\Project TTVXL\ttvxlweek10\ttvxlweek10.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,___lbdiv
	FNCALL	_main,___bmul
	FNCALL	_main,_quetled
	FNROOT	_main
	FNCALL	intlevel1,_button
	global	intlevel1
	FNROOT	intlevel1
	global	_maled
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\TTVXL\Project TTVXL\ttvxlweek10\ttvxlweek10.c"
	line	9

;initializer for _maled
	retlw	03Fh
	retlw	06h
	retlw	05Bh
	retlw	04Fh
	retlw	066h
	retlw	06Dh
	retlw	07Dh
	retlw	07h
	retlw	07Fh
	retlw	06Fh
	global	_dem
	global	_PORTD
_PORTD	set	8
	global	_GIE
_GIE	set	95
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RBIE
_RBIE	set	91
	global	_RBIF
_RBIF	set	88
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_IOCB
_IOCB	set	150
	global	_TRISD
_TRISD	set	136
	global	_WPUB
_WPUB	set	149
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISB1
_TRISB1	set	1073
	global	_TRISE0
_TRISE0	set	1096
	global	_TRISE1
_TRISE1	set	1097
	global	_nRBPU
_nRBPU	set	1039
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"ttvxlweek10.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_dem:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\TTVXL\Project TTVXL\ttvxlweek10\ttvxlweek10.c"
_maled:
       ds      10

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
	global	?_quetled
?_quetled:	; 0 bytes @ 0x2
	global	?___bmul
?___bmul:	; 1 bytes @ 0x2
	global	?___lbdiv
?___lbdiv:	; 1 bytes @ 0x2
	global	quetled@donvi_t
quetled@donvi_t:	; 1 bytes @ 0x2
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x2
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x2
	ds	1
	global	??_quetled
??_quetled:	; 0 bytes @ 0x3
	global	??___bmul
??___bmul:	; 0 bytes @ 0x3
	global	??___lbdiv
??___lbdiv:	; 0 bytes @ 0x3
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x3
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x3
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x4
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x4
	ds	1
	global	quetled@chuc_t
quetled@chuc_t:	; 1 bytes @ 0x5
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x5
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x6
	ds	1
	global	main@donvi
main@donvi:	; 1 bytes @ 0x7
	ds	1
	global	main@chuc
main@chuc:	; 1 bytes @ 0x8
	ds	1
;;Data sizes: Strings 0, constant 0, data 10, bss 1, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      10
;; BANK0           80      0      10
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___lbdiv
;;   _main->_quetled
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0     277
;;                                              6 COMMON     3     3      0
;;                            ___lbdiv
;;                             ___bmul
;;                            _quetled
;; ---------------------------------------------------------------------------------
;; (1) _quetled                                              4     3      1      44
;;                                              2 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (1) ___lbdiv                                              4     3      1     105
;;                                              2 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (1) ___bmul                                               3     2      1      60
;;                                              2 COMMON     3     2      1
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _button                                               2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   ___lbdiv
;;   ___bmul
;;   _quetled
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
;;DATA                 0      0      15      12        0.0%
;;ABS                  0      0      14       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50      0       A       5       12.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      9       A       1       71.4%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 14 in file "D:\TTVXL\Project TTVXL\ttvxlweek10\ttvxlweek10.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  chuc            1    8[COMMON] unsigned char 
;;  donvi           1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lbdiv
;;		___bmul
;;		_quetled
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\ttvxlweek10\ttvxlweek10.c"
	line	14
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	15
	
l2541:	
;ttvxlweek10.c: 15: TRISE0 = TRISE1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1097/8)^080h,(1097)&7
	bcf	(1096/8)^080h,(1096)&7
	line	16
	
l2543:	
;ttvxlweek10.c: 16: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	17
	
l2545:	
;ttvxlweek10.c: 17: TRISB0 = 1;
	bsf	(1072/8)^080h,(1072)&7
	line	18
	
l2547:	
;ttvxlweek10.c: 18: TRISB1 = 1;
	bsf	(1073/8)^080h,(1073)&7
	line	19
;ttvxlweek10.c: 19: ANSEL = ANSELH = 0;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	20
;ttvxlweek10.c: 20: PORTD = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	23
	
l2549:	
;ttvxlweek10.c: 23: GIE = 1;
	bsf	(95/8),(95)&7
	line	24
	
l2551:	
;ttvxlweek10.c: 24: RBIE = 1;
	bsf	(91/8),(91)&7
	line	25
	
l2553:	
;ttvxlweek10.c: 25: RBIF = 0;
	bcf	(88/8),(88)&7
	line	26
	
l2555:	
;ttvxlweek10.c: 26: IOCB=0b00000011;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(150)^080h	;volatile
	line	27
	
l2557:	
;ttvxlweek10.c: 27: WPUB = 0b00000011;
	movlw	(03h)
	movwf	(149)^080h	;volatile
	line	28
	
l2559:	
;ttvxlweek10.c: 28: nRBPU =0;
	bcf	(1039/8)^080h,(1039)&7
	line	34
	
l2561:	
;ttvxlweek10.c: 34: chuc = dem/10;
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(_dem),w
	fcall	___lbdiv
	movwf	(main@chuc)
	line	35
	
l2563:	
;ttvxlweek10.c: 35: donvi = dem - chuc*10;
	movlw	(0F6h)
	movwf	(?___bmul)
	movf	(main@chuc),w
	fcall	___bmul
	movwf	(??_main+0)+0
	movf	(_dem),w
	addwf	0+(??_main+0)+0,w
	movwf	(main@donvi)
	line	36
	
l2565:	
;ttvxlweek10.c: 36: quetled(chuc,donvi);
	movf	(main@donvi),w
	movwf	(?_quetled)
	movf	(main@chuc),w
	fcall	_quetled
	goto	l2561
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	38
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_quetled
psect	text105,local,class=CODE,delta=2
global __ptext105
__ptext105:

;; *************** function _quetled *****************
;; Defined at:
;;		line 41 in file "D:\TTVXL\Project TTVXL\ttvxlweek10\ttvxlweek10.c"
;; Parameters:    Size  Location     Type
;;  chuc_t          1    wreg     unsigned char 
;;  donvi_t         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  chuc_t          1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text105
	file	"D:\TTVXL\Project TTVXL\ttvxlweek10\ttvxlweek10.c"
	line	41
	global	__size_of_quetled
	__size_of_quetled	equ	__end_of_quetled-_quetled
	
_quetled:	
	opt	stack 6
; Regs used in _quetled: [wreg-fsr0h+status,2+status,0]
;quetled@chuc_t stored from wreg
	movwf	(quetled@chuc_t)
	line	42
	
l2529:	
;ttvxlweek10.c: 42: RE0 = 1; RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	bcf	(73/8),(73)&7
	line	43
	
l2531:	
;ttvxlweek10.c: 43: PORTD = maled[chuc_t];
	movf	(quetled@chuc_t),w
	addlw	_maled&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	line	44
	
l2533:	
;ttvxlweek10.c: 44: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_quetled+0)+0+1),f
	movlw	118
movwf	((??_quetled+0)+0),f
u137:
	decfsz	((??_quetled+0)+0),f
	goto	u137
	decfsz	((??_quetled+0)+0+1),f
	goto	u137
	clrwdt
opt asmopt_on

	line	45
	
l2535:	
;ttvxlweek10.c: 45: RE0 = 0; RE1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	
l2537:	
	bsf	(73/8),(73)&7
	line	46
	
l2539:	
;ttvxlweek10.c: 46: PORTD = maled[donvi_t];
	movf	(quetled@donvi_t),w
	addlw	_maled&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	line	47
;ttvxlweek10.c: 47: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_quetled+0)+0+1),f
	movlw	118
movwf	((??_quetled+0)+0),f
u147:
	decfsz	((??_quetled+0)+0),f
	goto	u147
	decfsz	((??_quetled+0)+0+1),f
	goto	u147
	clrwdt
opt asmopt_on

	line	48
	
l1039:	
	return
	opt stack 0
GLOBAL	__end_of_quetled
	__end_of_quetled:
;; =============== function _quetled ends ============

	signat	_quetled,8312
	global	___lbdiv
psect	text106,local,class=CODE,delta=2
global __ptext106
__ptext106:

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    3[COMMON] unsigned char 
;;  quotient        1    5[COMMON] unsigned char 
;;  counter         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/20
;;		Unchanged: FFFFF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text106
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbdiv.c"
	line	5
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
	opt	stack 6
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	line	9
	movwf	(___lbdiv@dividend)
	
l2463:	
	clrf	(___lbdiv@quotient)
	line	10
	
l2465:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u90
	goto	l2483
u90:
	line	11
	
l2467:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2471
	
l2069:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l2469:	
	incf	(___lbdiv@counter),f
	line	12
	
l2471:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u101
	goto	u100
u101:
	goto	l2069
u100:
	line	16
	
l2071:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l2473:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u111
	goto	u110
u111:
	goto	l2479
u110:
	line	19
	
l2475:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2477:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2479:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l2481:	
	decfsz	(___lbdiv@counter),f
	goto	u121
	goto	u120
u121:
	goto	l2071
u120:
	line	25
	
l2483:	
	movf	(___lbdiv@quotient),w
	line	26
	
l2074:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___bmul
psect	text107,local,class=CODE,delta=2
global __ptext107
__ptext107:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    4[COMMON] unsigned char 
;;  product         1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/20
;;		Unchanged: FFFFF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text107
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 6
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l2447:	
	clrf	(___bmul@product)
	line	7
	
l2449:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u71
	goto	u70
u71:
	goto	l2453
u70:
	line	8
	
l2451:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l2453:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l2455:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l2457:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u81
	goto	u80
u81:
	goto	l2449
u80:
	line	12
	
l2459:	
	movf	(___bmul@product),w
	line	13
	
l2038:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_button
psect	text108,local,class=CODE,delta=2
global __ptext108
__ptext108:

;; *************** function _button *****************
;; Defined at:
;;		line 50 in file "D:\TTVXL\Project TTVXL\ttvxlweek10\ttvxlweek10.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0
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
psect	text108
	file	"D:\TTVXL\Project TTVXL\ttvxlweek10\ttvxlweek10.c"
	line	50
	global	__size_of_button
	__size_of_button	equ	__end_of_button-_button
	
_button:	
	opt	stack 6
; Regs used in _button: [status]
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
psect	text108
	line	51
	
i1l2433:	
;ttvxlweek10.c: 51: if (RB0 == 0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l2439
u1_20:
	line	53
	
i1l1043:	
	line	52
	btfss	(48/8),(48)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l1043
u2_20:
	
i1l1045:	
	line	54
;ttvxlweek10.c: 53: }
;ttvxlweek10.c: 54: if (RB0 == 1){
	btfss	(48/8),(48)&7
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l2439
u3_20:
	line	55
	
i1l2437:	
;ttvxlweek10.c: 55: dem++;
	incf	(_dem),f
	line	58
	
i1l2439:	
;ttvxlweek10.c: 56: }
;ttvxlweek10.c: 57: }
;ttvxlweek10.c: 58: if (RB1 == 0){
	btfsc	(49/8),(49)&7
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l2445
u4_20:
	line	60
	
i1l1048:	
	line	59
	btfss	(49/8),(49)&7
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l1048
u5_20:
	
i1l1050:	
	line	61
;ttvxlweek10.c: 60: }
;ttvxlweek10.c: 61: if (RB1 == 1){
	btfss	(49/8),(49)&7
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l2445
u6_20:
	line	62
	
i1l2443:	
;ttvxlweek10.c: 62: dem--;
	decf	(_dem),f
	line	65
	
i1l2445:	
;ttvxlweek10.c: 63: }
;ttvxlweek10.c: 64: }
;ttvxlweek10.c: 65: RBIF = 0;
	bcf	(88/8),(88)&7
	line	66
	
i1l1052:	
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
psect	text109,local,class=CODE,delta=2
global __ptext109
__ptext109:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
