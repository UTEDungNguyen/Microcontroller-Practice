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
# 7 "D:\TTVXL\Project TTVXL\BT Ôn Thi 09\BT Ôn Thi 09.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "D:\TTVXL\Project TTVXL\BT Ôn Thi 09\BT Ôn Thi 09.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_tx
	FNCALL	_main,_rx
	FNCALL	_main,_pwm_10bit
	FNCALL	_pwm_10bit,___awdiv
	FNROOT	_main
	FNCALL	intlevel1,_ngat
	global	intlevel1
	FNROOT	intlevel1
	global	_data_rx
	global	_dem
	global	_a
	global	_pwm_t
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_pwm_t:
       ds      2

	global	_TMR1
_TMR1	set	14
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_RCREG
_RCREG	set	26
	global	_TMR0
_TMR0	set	1
	global	_TMR2
_TMR2	set	17
	global	_CREN
_CREN	set	196
	global	_DC1B0
_DC1B0	set	188
	global	_DC1B1
_DC1B1	set	189
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RCIF
_RCIF	set	101
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_RX9
_RX9	set	198
	global	_SPEN
_SPEN	set	199
	global	_T0IE
_T0IE	set	93
	global	_T0IF
_T0IF	set	90
	global	_T1CKPS0
_T1CKPS0	set	132
	global	_T1CKPS1
_T1CKPS1	set	133
	global	_T1SYNC
_T1SYNC	set	130
	global	_T2CKPS0
_T2CKPS0	set	144
	global	_T2CKPS1
_T2CKPS1	set	145
	global	_TMR1CS
_TMR1CS	set	129
	global	_TMR1GE
_TMR1GE	set	134
	global	_TMR1ON
_TMR1ON	set	128
	global	_TMR2ON
_TMR2ON	set	146
	global	_PR2
_PR2	set	146
	global	_SPBRG
_SPBRG	set	153
	global	_SPBRGH
_SPBRGH	set	154
	global	_BRGH
_BRGH	set	1218
	global	_PS0
_PS0	set	1032
	global	_PS1
_PS1	set	1033
	global	_PS2
_PS2	set	1034
	global	_PSA
_PSA	set	1035
	global	_RCIE
_RCIE	set	1125
	global	_SYNC
_SYNC	set	1220
	global	_T0CS
_T0CS	set	1037
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISE1
_TRISE1	set	1097
	global	_TRISE2
_TRISE2	set	1098
	global	_TX9
_TX9	set	1222
	global	_TXEN
_TXEN	set	1221
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	global	_BRG16
_BRG16	set	3131
	file	"BT Ôn Thi 09.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_a:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_data_rx:
       ds      10

_dem:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_tx
?_tx:	; 0 bytes @ 0x0
	global	?_rx
?_rx:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ngat
?_ngat:	; 0 bytes @ 0x0
	global	??_ngat
??_ngat:	; 0 bytes @ 0x0
	ds	3
	global	??_tx
??_tx:	; 0 bytes @ 0x3
	global	??_rx
??_rx:	; 0 bytes @ 0x3
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x3
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x3
	ds	2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x5
	ds	2
	global	??_pwm_10bit
??_pwm_10bit:	; 0 bytes @ 0x7
	global	??_main
??_main:	; 0 bytes @ 0x7
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x7
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x0
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x2
	ds	2
	global	?_pwm_10bit
?_pwm_10bit:	; 0 bytes @ 0x4
	global	pwm_10bit@pwm
pwm_10bit@pwm:	; 2 bytes @ 0x4
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 14, persistent 2 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       9
;; BANK0           80      6      20
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?_lcd_putc	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _pwm_10bit->___awdiv
;;
;; Critical Paths under _ngat in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_pwm_10bit
;;   _pwm_10bit->___awdiv
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
;; (0) _main                                                13    13      0     538
;;                                 _tx
;;                                 _rx
;;                          _pwm_10bit
;; ---------------------------------------------------------------------------------
;; (1) _pwm_10bit                                            2     0      2     538
;;                                              4 BANK0      2     0      2
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              8     4      4     445
;;                                              3 COMMON     4     0      4
;;                                              0 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; (1) _rx                                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _tx                                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _ngat                                                 3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _tx
;;   _rx
;;   _pwm_10bit
;;     ___awdiv
;;
;; _ngat (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      7       9       1       64.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0      1D       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      6      14       5       25.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      1F      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 21 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 09\BT Ôn Thi 09.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data_tx        10    0        unsigned char [10]
;;  data_pwm        3    0        unsigned char [3]
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_tx
;;		_rx
;;		_pwm_10bit
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 09\BT Ôn Thi 09.c"
	line	21
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	22
	
l2895:	
;BT Ôn Thi 09.c: 22: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	23
	
l2897:	
;BT Ôn Thi 09.c: 23: TRISE1 = 0; RE1=0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1097/8)^080h,(1097)&7
	
l2899:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(73/8),(73)&7
	line	24
	
l2901:	
;BT Ôn Thi 09.c: 24: TRISE2 = 0; RE2=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1098/8)^080h,(1098)&7
	
l2903:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(74/8),(74)&7
	line	26
	
l2905:	
;BT Ôn Thi 09.c: 26: TRISC2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1082/8)^080h,(1082)&7
	line	28
	
l2907:	
;BT Ôn Thi 09.c: 28: T2CKPS1 = 0; T2CKPS0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(145/8),(145)&7
	
l2909:	
	bsf	(144/8),(144)&7
	line	29
	
l2911:	
;BT Ôn Thi 09.c: 29: PR2 = 124; TMR2 = 0;
	movlw	(07Ch)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	
l2913:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(17)	;volatile
	line	30
	
l2915:	
;BT Ôn Thi 09.c: 30: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	32
;BT Ôn Thi 09.c: 32: CCP1CON = 0b00001100;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	34
	
l2917:	
;BT Ôn Thi 09.c: 34: TMR1CS = 1;
	bsf	(129/8),(129)&7
	line	35
	
l2919:	
;BT Ôn Thi 09.c: 35: T1CKPS1 = 0;T1CKPS0 = 0;
	bcf	(133/8),(133)&7
	
l2921:	
	bcf	(132/8),(132)&7
	line	36
	
l2923:	
;BT Ôn Thi 09.c: 36: T1SYNC = 1;
	bsf	(130/8),(130)&7
	line	37
	
l2925:	
;BT Ôn Thi 09.c: 37: TMR1 = 0;
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	38
	
l2927:	
;BT Ôn Thi 09.c: 38: TMR1GE = 0; TMR1ON = 1;
	bcf	(134/8),(134)&7
	
l2929:	
	bsf	(128/8),(128)&7
	line	41
	
l2931:	
;BT Ôn Thi 09.c: 41: T0CS = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1037/8)^080h,(1037)&7
	line	42
	
l2933:	
;BT Ôn Thi 09.c: 42: PSA = 0;
	bcf	(1035/8)^080h,(1035)&7
	line	43
	
l2935:	
;BT Ôn Thi 09.c: 43: PS2 = 0; PS1 = 1;PS0 = 0;
	bcf	(1034/8)^080h,(1034)&7
	
l2937:	
	bsf	(1033/8)^080h,(1033)&7
	
l2939:	
	bcf	(1032/8)^080h,(1032)&7
	line	44
	
l2941:	
;BT Ôn Thi 09.c: 44: TMR0 = 6;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	45
	
l2943:	
;BT Ôn Thi 09.c: 45: T0IE = 1; T0IF = 0; GIE = 1; PEIE =1;
	bsf	(93/8),(93)&7
	
l2945:	
	bcf	(90/8),(90)&7
	
l2947:	
	bsf	(95/8),(95)&7
	
l2949:	
	bsf	(94/8),(94)&7
	line	47
	
l2951:	
;BT Ôn Thi 09.c: 47: tx();
	fcall	_tx
	line	48
	
l2953:	
;BT Ôn Thi 09.c: 48: rx();
	fcall	_rx
	line	54
	
l2955:	
;BT Ôn Thi 09.c: 52: {
;BT Ôn Thi 09.c: 54: pwm_t=496;
	movlw	low(01F0h)
	movwf	(_pwm_t)
	movlw	high(01F0h)
	movwf	((_pwm_t))+1
	line	55
	
l2957:	
;BT Ôn Thi 09.c: 55: pwm_10bit(pwm_t);
	movlw	low(01F0h)
	movwf	(?_pwm_10bit)
	movlw	high(01F0h)
	movwf	((?_pwm_10bit))+1
	fcall	_pwm_10bit
	goto	l2955
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	57
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_pwm_10bit
psect	text188,local,class=CODE,delta=2
global __ptext188
__ptext188:

;; *************** function _pwm_10bit *****************
;; Defined at:
;;		line 92 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 09\BT Ôn Thi 09.c"
;; Parameters:    Size  Location     Type
;;  pwm             2    4[BANK0 ] int 
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
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text188
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 09\BT Ôn Thi 09.c"
	line	92
	global	__size_of_pwm_10bit
	__size_of_pwm_10bit	equ	__end_of_pwm_10bit-_pwm_10bit
	
_pwm_10bit:	
	opt	stack 5
; Regs used in _pwm_10bit: [wreg+status,2+status,0+pclath+cstack]
	line	93
	
l2883:	
;BT Ôn Thi 09.c: 93: CCPR1L = pwm/4;
	movlw	04h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(pwm_10bit@pwm+1),w
	movwf	1+(?___awdiv)+02h
	movf	(pwm_10bit@pwm),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(21)	;volatile
	line	94
	
l2885:	
;BT Ôn Thi 09.c: 94: DC1B1 = 0; DC1B0 = 0;
	bcf	(189/8),(189)&7
	
l2887:	
	bcf	(188/8),(188)&7
	line	95
	
l2889:	
;BT Ôn Thi 09.c: 95: if((pwm & 2) == 1) DC1B1 = 1;
	movf	(pwm_10bit@pwm),w
	andlw	02h
	xorlw	01h
	skipz
	goto	u421
	goto	u420
u421:
	goto	l1068
u420:
	
l2891:	
	bsf	(189/8),(189)&7
	
l1068:	
	line	96
;BT Ôn Thi 09.c: 96: if((pwm & 1) == 1) DC1B0 = 1;
	btfss	(pwm_10bit@pwm),(0)&7
	goto	u431
	goto	u430
u431:
	goto	l1070
u430:
	
l2893:	
	bsf	(188/8),(188)&7
	line	97
	
l1070:	
	return
	opt stack 0
GLOBAL	__end_of_pwm_10bit
	__end_of_pwm_10bit:
;; =============== function _pwm_10bit ends ============

	signat	_pwm_10bit,4216
	global	___awdiv
psect	text189,local,class=CODE,delta=2
global __ptext189
__ptext189:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    3[COMMON] int 
;;  dividend        2    5[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    2[BANK0 ] int 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       4       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pwm_10bit
;; This function uses a non-reentrant model
;;
psect	text189
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2839:	
	clrf	(___awdiv@sign)
	line	10
	
l2841:	
	btfss	(___awdiv@divisor+1),7
	goto	u351
	goto	u350
u351:
	goto	l2847
u350:
	line	11
	
l2843:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l2845:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l2847:	
	btfss	(___awdiv@dividend+1),7
	goto	u361
	goto	u360
u361:
	goto	l2853
u360:
	line	15
	
l2849:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2851:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l2853:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2855:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u371
	goto	u370
u371:
	goto	l2875
u370:
	line	20
	
l2857:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l2861
	line	22
	
l2859:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l2861:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u381
	goto	u380
u381:
	goto	l2859
u380:
	line	26
	
l2863:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l2865:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u395
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u395:
	skipc
	goto	u391
	goto	u390
u391:
	goto	l2871
u390:
	line	28
	
l2867:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2869:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l2871:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l2873:	
	decfsz	(___awdiv@counter),f
	goto	u401
	goto	u400
u401:
	goto	l2863
u400:
	line	34
	
l2875:	
	movf	(___awdiv@sign),w
	skipz
	goto	u410
	goto	l2879
u410:
	line	35
	
l2877:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l2879:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l2227:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_rx
psect	text190,local,class=CODE,delta=2
global __ptext190
__ptext190:

;; *************** function _rx *****************
;; Defined at:
;;		line 113 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 09\BT Ôn Thi 09.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text190
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 09\BT Ôn Thi 09.c"
	line	113
	global	__size_of_rx
	__size_of_rx	equ	__end_of_rx-_rx
	
_rx:	
	opt	stack 6
; Regs used in _rx: [wreg]
	line	114
	
l2657:	
;BT Ôn Thi 09.c: 114: SYNC = 0; BRGH = 1; BRG16 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	115
	
l2659:	
;BT Ôn Thi 09.c: 115: SPBRGH = 0x02;
	movlw	(02h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	116
;BT Ôn Thi 09.c: 116: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	117
	
l2661:	
;BT Ôn Thi 09.c: 117: CREN = 1; RX9 = 0; SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(196/8),(196)&7
	
l2663:	
	bcf	(198/8),(198)&7
	
l2665:	
	bsf	(199/8),(199)&7
	line	119
	
l2667:	
;BT Ôn Thi 09.c: 119: RCIE=1; RCIF=0; PEIE=1; GIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1125/8)^080h,(1125)&7
	
l2669:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(101/8),(101)&7
	
l2671:	
	bsf	(94/8),(94)&7
	
l2673:	
	bsf	(95/8),(95)&7
	line	120
	
l1088:	
	return
	opt stack 0
GLOBAL	__end_of_rx
	__end_of_rx:
;; =============== function _rx ends ============

	signat	_rx,88
	global	_tx
psect	text191,local,class=CODE,delta=2
global __ptext191
__ptext191:

;; *************** function _tx *****************
;; Defined at:
;;		line 106 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 09\BT Ôn Thi 09.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text191
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 09\BT Ôn Thi 09.c"
	line	106
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
	
_tx:	
	opt	stack 6
; Regs used in _tx: [wreg]
	line	107
	
l2647:	
;BT Ôn Thi 09.c: 107: SYNC = 0; BRGH = 1; BRG16 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	108
	
l2649:	
;BT Ôn Thi 09.c: 108: SPBRGH = 0x02;
	movlw	(02h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	109
;BT Ôn Thi 09.c: 109: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	110
	
l2651:	
;BT Ôn Thi 09.c: 110: TXEN = 1; TX9 = 0; SPEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	
l2653:	
	bcf	(1222/8)^080h,(1222)&7
	
l2655:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	111
	
l1085:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
;; =============== function _tx ends ============

	signat	_tx,88
	global	_ngat
psect	text192,local,class=CODE,delta=2
global __ptext192
__ptext192:

;; *************** function _ngat *****************
;; Defined at:
;;		line 59 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 09\BT Ôn Thi 09.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
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
psect	text192
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 09\BT Ôn Thi 09.c"
	line	59
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
	opt	stack 5
; Regs used in _ngat: [wreg-fsr0h+status,2+status,0]
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
	movf	fsr0,w
	movwf	(??_ngat+1)
	movf	pclath,w
	movwf	(??_ngat+2)
	ljmp	_ngat
psect	text192
	line	60
	
i1l2675:	
;BT Ôn Thi 09.c: 60: if(T0IF)
	btfss	(90/8),(90)&7
	goto	u18_21
	goto	u18_20
u18_21:
	goto	i1l2689
u18_20:
	line	61
	
i1l2677:	
;BT Ôn Thi 09.c: 61: { TMR0 = 6;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	62
	
i1l2679:	
;BT Ôn Thi 09.c: 62: dem++;
	incf	(_dem),f
	skipnz
	incf	(_dem+1),f
	line	63
	
i1l2681:	
;BT Ôn Thi 09.c: 63: if(dem == 250)
		movf	(_dem),w
	xorlw	250
	iorwf	(_dem+1),w

	skipz
	goto	u19_21
	goto	u19_20
u19_21:
	goto	i1l2689
u19_20:
	line	65
	
i1l2683:	
;BT Ôn Thi 09.c: 64: {
;BT Ôn Thi 09.c: 65: dem = 0;
	clrf	(_dem)
	clrf	(_dem+1)
	line	66
	
i1l2685:	
;BT Ôn Thi 09.c: 66: xung = TMR1;
	movf	(14),w	;volatile
	movf	(14+1),w	;volatile
	line	67
	
i1l2687:	
;BT Ôn Thi 09.c: 67: TMR1 = 0;
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	70
	
i1l2689:	
;BT Ôn Thi 09.c: 68: }
;BT Ôn Thi 09.c: 69: }
;BT Ôn Thi 09.c: 70: T0IF = 0;
	bcf	(90/8),(90)&7
	line	72
	
i1l2691:	
;BT Ôn Thi 09.c: 72: if (RCIF){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u20_21
	goto	u20_20
u20_21:
	goto	i1l1053
u20_20:
	line	73
	
i1l2693:	
;BT Ôn Thi 09.c: 73: data_rx[a]=RCREG;
	movf	(_a),w
	addlw	_data_rx&0ffh
	movwf	fsr0
	movf	(26),w	;volatile
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	74
	
i1l2695:	
;BT Ôn Thi 09.c: 74: a++;
	incf	(_a),f
	skipnz
	incf	(_a+1),f
	line	75
	
i1l2697:	
;BT Ôn Thi 09.c: 75: if (a==1) {a=0;}
	decf	(_a),w
	iorwf	(_a+1),w

	skipz
	goto	u21_21
	goto	u21_20
u21_21:
	goto	i1l2701
u21_20:
	
i1l2699:	
	clrf	(_a)
	clrf	(_a+1)
	line	76
	
i1l2701:	
;BT Ôn Thi 09.c: 76: if (RCREG == 'P') {RE1=0;RE2 = 0; TMR2ON=0;}
	movf	(26),w
	xorlw	050h
	skipz
	goto	u22_21
	goto	u22_20
u22_21:
	goto	i1l2705
u22_20:
	
i1l2703:	
	bcf	(73/8),(73)&7
	bcf	(74/8),(74)&7
	bcf	(146/8),(146)&7
	goto	i1l1053
	line	77
	
i1l2705:	
;BT Ôn Thi 09.c: 77: else if (RCREG == 'S') {RE1=0;RE2 = 1; TMR2ON=1;}
	movf	(26),w
	xorlw	053h
	skipz
	goto	u23_21
	goto	u23_20
u23_21:
	goto	i1l2709
u23_20:
	
i1l2707:	
	bcf	(73/8),(73)&7
	bsf	(74/8),(74)&7
	bsf	(146/8),(146)&7
	goto	i1l1053
	line	78
	
i1l2709:	
;BT Ôn Thi 09.c: 78: else if (RCREG == 'L') {RE1=0;RE2 = 1; TMR2ON=1;}
	movf	(26),w
	xorlw	04Ch
	skipz
	goto	u24_21
	goto	u24_20
u24_21:
	goto	i1l2713
u24_20:
	goto	i1l2707
	line	79
	
i1l2713:	
;BT Ôn Thi 09.c: 79: else if (RCREG == 'R') {RE1=1;RE2 = 0; TMR2ON=1;}
	movf	(26),w
	xorlw	052h
	skipz
	goto	u25_21
	goto	u25_20
u25_21:
	goto	i1l1058
u25_20:
	
i1l2715:	
	bsf	(73/8),(73)&7
	bcf	(74/8),(74)&7
	bsf	(146/8),(146)&7
	goto	i1l1053
	line	82
	
i1l1058:	
	
i1l1053:	
	line	83
;BT Ôn Thi 09.c: 82: }
;BT Ôn Thi 09.c: 83: RCIF=0;
	bcf	(101/8),(101)&7
	line	84
	
i1l1062:	
	movf	(??_ngat+2),w
	movwf	pclath
	movf	(??_ngat+1),w
	movwf	fsr0
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
psect	text193,local,class=CODE,delta=2
global __ptext193
__ptext193:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
