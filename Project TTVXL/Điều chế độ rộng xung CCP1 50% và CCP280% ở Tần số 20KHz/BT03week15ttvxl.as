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
# 7 "D:\TTVXL\Project TTVXL\BT03week15ttvxl\BT03week15ttvxl.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "D:\TTVXL\Project TTVXL\BT03week15ttvxl\BT03week15ttvxl.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_pwm_10bit1
	FNCALL	_main,_pwm_10bit2
	FNCALL	_pwm_10bit2,___awdiv
	FNCALL	_pwm_10bit1,___awdiv
	FNROOT	_main
	global	_pwm_ccp2
	global	_pwm_ccp1
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_pwm_ccp1:
       ds      2

	global	_CCP1CON
_CCP1CON	set	23
	global	_CCP2CON
_CCP2CON	set	29
	global	_CCPR1L
_CCPR1L	set	21
	global	_CCPR2L
_CCPR2L	set	27
	global	_TMR2
_TMR2	set	17
	global	_DC1B0
_DC1B0	set	188
	global	_DC1B1
_DC1B1	set	189
	global	_DC2B0
_DC2B0	set	236
	global	_DC2B1
_DC2B1	set	237
	global	_T2CKPS0
_T2CKPS0	set	144
	global	_T2CKPS1
_T2CKPS1	set	145
	global	_TMR2ON
_TMR2ON	set	146
	global	_PR2
_PR2	set	146
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"BT03week15ttvxl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_pwm_ccp2:
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
	global	?_pwm_10bit1
?_pwm_10bit1:	; 0 bytes @ 0x8
	global	?_pwm_10bit2
?_pwm_10bit2:	; 0 bytes @ 0x8
	global	pwm_10bit1@data_pwm
pwm_10bit1@data_pwm:	; 2 bytes @ 0x8
	global	pwm_10bit2@data_pwm
pwm_10bit2@data_pwm:	; 2 bytes @ 0x8
	ds	2
	global	??_pwm_10bit1
??_pwm_10bit1:	; 0 bytes @ 0xA
	global	??_pwm_10bit2
??_pwm_10bit2:	; 0 bytes @ 0xA
	global	??_main
??_main:	; 0 bytes @ 0xA
;;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 2 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      14
;; BANK0           80      0       0
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
;;   _main->_pwm_10bit1
;;   _main->_pwm_10bit2
;;   _pwm_10bit2->___awdiv
;;   _pwm_10bit1->___awdiv
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
;; (0) _main                                                 0     0      0     480
;;                         _pwm_10bit1
;;                         _pwm_10bit2
;; ---------------------------------------------------------------------------------
;; (1) _pwm_10bit2                                           2     0      2     240
;;                                              8 COMMON     2     0      2
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (1) _pwm_10bit1                                           2     0      2     240
;;                                              8 COMMON     2     0      2
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              8     4      4     195
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _pwm_10bit1
;;     ___awdiv
;;   _pwm_10bit2
;;     ___awdiv
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      A       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       E       3        0.0%
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
;;DATA                 0      0      10      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 14 in file "D:\TTVXL\Project TTVXL\BT03week15ttvxl\BT03week15ttvxl.c"
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
;;		_pwm_10bit1
;;		_pwm_10bit2
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT03week15ttvxl\BT03week15ttvxl.c"
	line	14
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	15
	
l2495:	
;BT03week15ttvxl.c: 15: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	16
	
l2497:	
;BT03week15ttvxl.c: 16: TRISC2 = 0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1082/8)^080h,(1082)&7
	line	17
	
l2499:	
;BT03week15ttvxl.c: 17: TRISC1 = 0;
	bcf	(1081/8)^080h,(1081)&7
	line	20
	
l2501:	
;BT03week15ttvxl.c: 20: T2CKPS1 = 0; T2CKPS0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(145/8),(145)&7
	
l2503:	
	bcf	(144/8),(144)&7
	line	21
;BT03week15ttvxl.c: 21: TMR2 = 0; PR2 = 249;
	clrf	(17)	;volatile
	
l2505:	
	movlw	(0F9h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	22
	
l2507:	
;BT03week15ttvxl.c: 22: TMR2ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(146/8),(146)&7
	line	25
	
l2509:	
;BT03week15ttvxl.c: 25: CCP1CON = 0b00001100;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	26
	
l2511:	
;BT03week15ttvxl.c: 26: pwm_ccp1 = 500;
	movlw	low(01F4h)
	movwf	(_pwm_ccp1)
	movlw	high(01F4h)
	movwf	((_pwm_ccp1))+1
	line	27
	
l2513:	
;BT03week15ttvxl.c: 27: pwm_10bit1(pwm_ccp1);
	movlw	low(01F4h)
	movwf	(?_pwm_10bit1)
	movlw	high(01F4h)
	movwf	((?_pwm_10bit1))+1
	fcall	_pwm_10bit1
	line	29
	
l2515:	
;BT03week15ttvxl.c: 29: CCP2CON = 0b00001100;
	movlw	(0Ch)
	movwf	(29)	;volatile
	line	30
	
l2517:	
;BT03week15ttvxl.c: 30: pwm_ccp2 = 800;
	movlw	low(0320h)
	movwf	(_pwm_ccp2)
	movlw	high(0320h)
	movwf	((_pwm_ccp2))+1
	line	31
	
l2519:	
;BT03week15ttvxl.c: 31: pwm_10bit2(pwm_ccp2);
	movlw	low(0320h)
	movwf	(?_pwm_10bit2)
	movlw	high(0320h)
	movwf	((?_pwm_10bit2))+1
	fcall	_pwm_10bit2
	line	35
;BT03week15ttvxl.c: 34: {
	
l1034:	
	line	33
	goto	l1034
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	36
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_pwm_10bit2
psect	text34,local,class=CODE,delta=2
global __ptext34
__ptext34:

;; *************** function _pwm_10bit2 *****************
;; Defined at:
;;		line 47 in file "D:\TTVXL\Project TTVXL\BT03week15ttvxl\BT03week15ttvxl.c"
;; Parameters:    Size  Location     Type
;;  data_pwm        2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text34
	file	"D:\TTVXL\Project TTVXL\BT03week15ttvxl\BT03week15ttvxl.c"
	line	47
	global	__size_of_pwm_10bit2
	__size_of_pwm_10bit2	equ	__end_of_pwm_10bit2-_pwm_10bit2
	
_pwm_10bit2:	
	opt	stack 6
; Regs used in _pwm_10bit2: [wreg+status,2+status,0+pclath+cstack]
	line	48
	
l2483:	
;BT03week15ttvxl.c: 48: CCPR2L = data_pwm/4;
	movlw	04h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(pwm_10bit2@data_pwm+1),w
	movwf	1+(?___awdiv)+02h
	movf	(pwm_10bit2@data_pwm),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(27)	;volatile
	line	49
	
l2485:	
;BT03week15ttvxl.c: 49: DC2B1 = 0; DC2B0 = 0;
	bcf	(237/8),(237)&7
	
l2487:	
	bcf	(236/8),(236)&7
	line	50
	
l2489:	
;BT03week15ttvxl.c: 50: if((data_pwm &2) == 1) {DC1B1 = 1;}
	movf	(pwm_10bit2@data_pwm),w
	andlw	02h
	xorlw	01h
	skipz
	goto	u101
	goto	u100
u101:
	goto	l1044
u100:
	
l2491:	
	bsf	(189/8),(189)&7
	
l1044:	
	line	51
;BT03week15ttvxl.c: 51: if((data_pwm &1) == 1) {DC1B0 = 1;}
	btfss	(pwm_10bit2@data_pwm),(0)&7
	goto	u111
	goto	u110
u111:
	goto	l1046
u110:
	
l2493:	
	bsf	(188/8),(188)&7
	line	52
	
l1046:	
	return
	opt stack 0
GLOBAL	__end_of_pwm_10bit2
	__end_of_pwm_10bit2:
;; =============== function _pwm_10bit2 ends ============

	signat	_pwm_10bit2,4216
	global	_pwm_10bit1
psect	text35,local,class=CODE,delta=2
global __ptext35
__ptext35:

;; *************** function _pwm_10bit1 *****************
;; Defined at:
;;		line 39 in file "D:\TTVXL\Project TTVXL\BT03week15ttvxl\BT03week15ttvxl.c"
;; Parameters:    Size  Location     Type
;;  data_pwm        2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text35
	file	"D:\TTVXL\Project TTVXL\BT03week15ttvxl\BT03week15ttvxl.c"
	line	39
	global	__size_of_pwm_10bit1
	__size_of_pwm_10bit1	equ	__end_of_pwm_10bit1-_pwm_10bit1
	
_pwm_10bit1:	
	opt	stack 6
; Regs used in _pwm_10bit1: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l2471:	
;BT03week15ttvxl.c: 40: CCPR1L = data_pwm/4;
	movlw	04h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(pwm_10bit1@data_pwm+1),w
	movwf	1+(?___awdiv)+02h
	movf	(pwm_10bit1@data_pwm),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(21)	;volatile
	line	41
	
l2473:	
;BT03week15ttvxl.c: 41: DC1B1 = 0; DC1B0 = 0;
	bcf	(189/8),(189)&7
	
l2475:	
	bcf	(188/8),(188)&7
	line	42
	
l2477:	
;BT03week15ttvxl.c: 42: if((data_pwm &2) == 1) {DC1B1 = 1;}
	movf	(pwm_10bit1@data_pwm),w
	andlw	02h
	xorlw	01h
	skipz
	goto	u81
	goto	u80
u81:
	goto	l1039
u80:
	
l2479:	
	bsf	(189/8),(189)&7
	
l1039:	
	line	43
;BT03week15ttvxl.c: 43: if((data_pwm &1) == 1) {DC1B0 = 1;}
	btfss	(pwm_10bit1@data_pwm),(0)&7
	goto	u91
	goto	u90
u91:
	goto	l1041
u90:
	
l2481:	
	bsf	(188/8),(188)&7
	line	44
	
l1041:	
	return
	opt stack 0
GLOBAL	__end_of_pwm_10bit1
	__end_of_pwm_10bit1:
;; =============== function _pwm_10bit1 ends ============

	signat	_pwm_10bit1,4216
	global	___awdiv
psect	text36,local,class=CODE,delta=2
global __ptext36
__ptext36:

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
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
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
;;		_pwm_10bit1
;;		_pwm_10bit2
;; This function uses a non-reentrant model
;;
psect	text36
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2427:	
	clrf	(___awdiv@sign)
	line	10
	
l2429:	
	btfss	(___awdiv@divisor+1),7
	goto	u11
	goto	u10
u11:
	goto	l2435
u10:
	line	11
	
l2431:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l2433:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l2435:	
	btfss	(___awdiv@dividend+1),7
	goto	u21
	goto	u20
u21:
	goto	l2441
u20:
	line	15
	
l2437:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2439:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l2441:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2443:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u31
	goto	u30
u31:
	goto	l2463
u30:
	line	20
	
l2445:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l2449
	line	22
	
l2447:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l2449:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u41
	goto	u40
u41:
	goto	l2447
u40:
	line	26
	
l2451:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l2453:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u55
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u55:
	skipc
	goto	u51
	goto	u50
u51:
	goto	l2459
u50:
	line	28
	
l2455:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2457:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l2459:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l2461:	
	decfsz	(___awdiv@counter),f
	goto	u61
	goto	u60
u61:
	goto	l2451
u60:
	line	34
	
l2463:	
	movf	(___awdiv@sign),w
	skipz
	goto	u70
	goto	l2467
u70:
	line	35
	
l2465:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l2467:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l2185:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
psect	text37,local,class=CODE,delta=2
global __ptext37
__ptext37:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
