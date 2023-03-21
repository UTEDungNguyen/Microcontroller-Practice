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
# 6 "D:\TTVXL\Project TTVXL\bt01ttvxl\bt01ttvxlday1.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "D:\TTVXL\Project TTVXL\bt01ttvxl\bt01ttvxlday1.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,___lbmod
	FNCALL	_main,_Led_100ms
	FNCALL	_main,_Led_1s
	FNROOT	_main
	FNCALL	intlevel1,_button
	global	intlevel1
	FNROOT	intlevel1
	global	_count
	global	_PORTA
psect	text52,local,class=CODE,delta=2
global __ptext52
__ptext52:
_PORTA	set	5
	global	_GIE
_GIE	set	95
	global	_INTE
_INTE	set	92
	global	_INTF
_INTF	set	89
	global	_RB0
_RB0	set	48
	global	_TRISA
_TRISA	set	133
	global	_TRISB0
_TRISB0	set	1072
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"bt01ttvxlday1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_count:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Led_100ms
?_Led_100ms:	; 0 bytes @ 0x0
	global	?_Led_1s
?_Led_1s:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_button
?_button:	; 0 bytes @ 0x0
	global	??_button
??_button:	; 0 bytes @ 0x0
	ds	2
	global	??_Led_100ms
??_Led_100ms:	; 0 bytes @ 0x2
	global	??_Led_1s
??_Led_1s:	; 0 bytes @ 0x2
	global	?___lbmod
?___lbmod:	; 1 bytes @ 0x2
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x2
	ds	1
	global	??___lbmod
??___lbmod:	; 0 bytes @ 0x3
	ds	1
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x4
	ds	1
	global	Led_100ms@m
Led_100ms@m:	; 1 bytes @ 0x5
	global	Led_1s@m
Led_1s@m:	; 1 bytes @ 0x5
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	Led_100ms@h
Led_100ms@h:	; 1 bytes @ 0x6
	global	Led_1s@h
Led_1s@h:	; 1 bytes @ 0x6
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x6
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x7
;;Data sizes: Strings 0, constant 0, data 0, bss 1, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       8
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___lbmod
;;   _main->_Led_100ms
;;   _main->_Led_1s
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
;; (0) _main                                                 0     0      0     225
;;                            ___lbmod
;;                          _Led_100ms
;;                             _Led_1s
;; ---------------------------------------------------------------------------------
;; (1) _Led_1s                                               6     6      0      60
;;                                              2 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; (1) _Led_100ms                                            6     6      0      60
;;                                              2 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; (1) ___lbmod                                              5     4      1     105
;;                                              2 COMMON     5     4      1
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
;;   ___lbmod
;;   _Led_100ms
;;   _Led_1s
;;
;; _button (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      7       8       1       57.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       8       3        0.0%
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
;;DATA                 0      0       9      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 34 in file "D:\TTVXL\Project TTVXL\bt01ttvxl\bt01ttvxlday1.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lbmod
;;		_Led_100ms
;;		_Led_1s
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\bt01ttvxl\bt01ttvxlday1.c"
	line	34
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	35
	
l2503:	
;bt01ttvxlday1.c: 35: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	36
;bt01ttvxlday1.c: 36: ANSEL = ANSELH = 0;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	37
	
l2505:	
;bt01ttvxlday1.c: 37: TRISB0 = 1;
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1072/8)^080h,(1072)&7
	line	38
;bt01ttvxlday1.c: 38: PORTA = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	40
	
l2507:	
;bt01ttvxlday1.c: 40: GIE = 1;
	bsf	(95/8),(95)&7
	line	41
	
l2509:	
;bt01ttvxlday1.c: 41: INTE = 1;
	bsf	(92/8),(92)&7
	line	42
	
l2511:	
;bt01ttvxlday1.c: 42: INTF = 0;
	bcf	(89/8),(89)&7
	line	45
	
l2513:	
;bt01ttvxlday1.c: 45: if((count%3)==0&&(count!=0)){Led_100ms();}
	movlw	(03h)
	movwf	(?___lbmod)
	movf	(_count),w
	fcall	___lbmod
	iorlw	0
	skipz
	goto	u81
	goto	u80
u81:
	goto	l1040
u80:
	
l2515:	
	movf	(_count),w
	skipz
	goto	u90
	goto	l1040
u90:
	
l2517:	
	fcall	_Led_100ms
	
l1040:	
	line	46
;bt01ttvxlday1.c: 46: if((count%3)==1){Led_1s();}
	movlw	(03h)
	movwf	(?___lbmod)
	movf	(_count),w
	fcall	___lbmod
	xorlw	01h
	skipz
	goto	u101
	goto	u100
u101:
	goto	l1041
u100:
	
l2519:	
	fcall	_Led_1s
	
l1041:	
	line	47
;bt01ttvxlday1.c: 47: if((count%3)==2){PORTA=0;}
	movlw	(03h)
	movwf	(?___lbmod)
	movf	(_count),w
	fcall	___lbmod
	xorlw	02h
	skipz
	goto	u111
	goto	u110
u111:
	goto	l2513
u110:
	
l2521:	
	clrf	(5)	;volatile
	goto	l2513
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	50
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Led_1s
psect	text53,local,class=CODE,delta=2
global __ptext53
__ptext53:

;; *************** function _Led_1s *****************
;; Defined at:
;;		line 20 in file "D:\TTVXL\Project TTVXL\bt01ttvxl\bt01ttvxlday1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  m               1    5[COMMON] unsigned char 
;;  h               1    6[COMMON] unsigned char 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text53
	file	"D:\TTVXL\Project TTVXL\bt01ttvxl\bt01ttvxlday1.c"
	line	20
	global	__size_of_Led_1s
	__size_of_Led_1s	equ	__end_of_Led_1s-_Led_1s
	
_Led_1s:	
	opt	stack 6
; Regs used in _Led_1s: [wreg+status,2+status,0]
	line	21
	
l2487:	
	line	22
	
l2489:	
;bt01ttvxlday1.c: 22: h = 0b00000100;
	movlw	(04h)
	movwf	(Led_1s@h)
	line	23
	
l2491:	
;bt01ttvxlday1.c: 23: for (char m=0;m<4;m++){
	clrf	(Led_1s@m)
	line	24
	
l2495:	
;bt01ttvxlday1.c: 24: PORTA = h;
	movf	(Led_1s@h),w
	movwf	(5)	;volatile
	line	25
	
l2497:	
;bt01ttvxlday1.c: 25: h=h>>1;
	clrc
	rrf	(Led_1s@h),f
	line	26
;bt01ttvxlday1.c: 26: _delay((unsigned long)((1000)*(20000000/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_Led_1s+0)+0+2),f
movlw	94
movwf	((??_Led_1s+0)+0+1),f
	movlw	134
movwf	((??_Led_1s+0)+0),f
u127:
	decfsz	((??_Led_1s+0)+0),f
	goto	u127
	decfsz	((??_Led_1s+0)+0+1),f
	goto	u127
	decfsz	((??_Led_1s+0)+0+2),f
	goto	u127
	clrwdt
opt asmopt_on

	line	27
;bt01ttvxlday1.c: 27: PORTA=h;
	movf	(Led_1s@h),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	23
	
l2499:	
	incf	(Led_1s@m),f
	
l2501:	
	movlw	(04h)
	subwf	(Led_1s@m),w
	skipc
	goto	u71
	goto	u70
u71:
	goto	l2495
u70:
	line	29
	
l1036:	
	return
	opt stack 0
GLOBAL	__end_of_Led_1s
	__end_of_Led_1s:
;; =============== function _Led_1s ends ============

	signat	_Led_1s,88
	global	_Led_100ms
psect	text54,local,class=CODE,delta=2
global __ptext54
__ptext54:

;; *************** function _Led_100ms *****************
;; Defined at:
;;		line 9 in file "D:\TTVXL\Project TTVXL\bt01ttvxl\bt01ttvxlday1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  m               1    5[COMMON] unsigned char 
;;  h               1    6[COMMON] unsigned char 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text54
	file	"D:\TTVXL\Project TTVXL\bt01ttvxl\bt01ttvxlday1.c"
	line	9
	global	__size_of_Led_100ms
	__size_of_Led_100ms	equ	__end_of_Led_100ms-_Led_100ms
	
_Led_100ms:	
	opt	stack 6
; Regs used in _Led_100ms: [wreg+status,2+status,0]
	line	10
	
l2471:	
	line	11
	
l2473:	
;bt01ttvxlday1.c: 11: h = 0b00000100;
	movlw	(04h)
	movwf	(Led_100ms@h)
	line	12
	
l2475:	
;bt01ttvxlday1.c: 12: for (char m=0;m<4;m++){
	clrf	(Led_100ms@m)
	line	13
	
l2479:	
;bt01ttvxlday1.c: 13: PORTA = h;
	movf	(Led_100ms@h),w
	movwf	(5)	;volatile
	line	14
	
l2481:	
;bt01ttvxlday1.c: 14: h=h>>1;
	clrc
	rrf	(Led_100ms@h),f
	line	15
;bt01ttvxlday1.c: 15: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_Led_100ms+0)+0+2),f
movlw	138
movwf	((??_Led_100ms+0)+0+1),f
	movlw	86
movwf	((??_Led_100ms+0)+0),f
u137:
	decfsz	((??_Led_100ms+0)+0),f
	goto	u137
	decfsz	((??_Led_100ms+0)+0+1),f
	goto	u137
	decfsz	((??_Led_100ms+0)+0+2),f
	goto	u137
	nop2
opt asmopt_on

	line	16
;bt01ttvxlday1.c: 16: PORTA=h;
	movf	(Led_100ms@h),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	12
	
l2483:	
	incf	(Led_100ms@m),f
	
l2485:	
	movlw	(04h)
	subwf	(Led_100ms@m),w
	skipc
	goto	u61
	goto	u60
u61:
	goto	l2479
u60:
	line	18
	
l1031:	
	return
	opt stack 0
GLOBAL	__end_of_Led_100ms
	__end_of_Led_100ms:
;; =============== function _Led_100ms ends ============

	signat	_Led_100ms,88
	global	___lbmod
psect	text55,local,class=CODE,delta=2
global __ptext55
__ptext55:

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    4[COMMON] unsigned char 
;;  rem             1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text55
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbmod.c"
	line	5
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
	opt	stack 6
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	line	9
	movwf	(___lbmod@dividend)
	
l2453:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l2455:	
	clrf	(___lbmod@rem)
	line	12
	
l2457:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u35:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u35
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l2459:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l2461:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u41
	goto	u40
u41:
	goto	l2465
u40:
	line	15
	
l2463:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l2465:	
	decfsz	(___lbmod@counter),f
	goto	u51
	goto	u50
u51:
	goto	l2457
u50:
	line	17
	
l2467:	
	movf	(___lbmod@rem),w
	line	18
	
l2080:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	_button
psect	text56,local,class=CODE,delta=2
global __ptext56
__ptext56:

;; *************** function _button *****************
;; Defined at:
;;		line 52 in file "D:\TTVXL\Project TTVXL\bt01ttvxl\bt01ttvxlday1.c"
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
psect	text56
	file	"D:\TTVXL\Project TTVXL\bt01ttvxl\bt01ttvxlday1.c"
	line	52
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
psect	text56
	line	53
	
i1l2447:	
;bt01ttvxlday1.c: 53: INTF = 0;
	bcf	(89/8),(89)&7
	line	54
;bt01ttvxlday1.c: 54: if (RB0 == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l1052
u1_20:
	line	56
	
i1l1049:	
	line	55
	btfsc	(48/8),(48)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l1049
u2_20:
	line	57
	
i1l2451:	
;bt01ttvxlday1.c: 56: }
;bt01ttvxlday1.c: 57: count = count + 1;
	incf	(_count),f
	line	60
	
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
psect	text57,local,class=CODE,delta=2
global __ptext57
__ptext57:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
