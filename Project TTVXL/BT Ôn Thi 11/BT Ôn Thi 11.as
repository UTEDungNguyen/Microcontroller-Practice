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
# 7 "D:\TTVXL\Project TTVXL\BT Ôn Thi 11\BT Ôn Thi 11.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "D:\TTVXL\Project TTVXL\BT Ôn Thi 11\BT Ôn Thi 11.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_tx
	FNCALL	_main,_rx
	FNCALL	_main,_atoi
	FNCALL	_main,___wmul
	FNCALL	_main,_pwm_10bit
	FNCALL	_pwm_10bit,___awdiv
	FNCALL	_atoi,___wmul
	FNCALL	_atoi,_isdigit
	FNROOT	_main
	FNCALL	intlevel1,_ngat
	global	intlevel1
	FNROOT	intlevel1
	global	_data_rx
	global	_pwm_final
	global	_a
	global	_pwm_t
	global	_CCP1CON
psect	text281,local,class=CODE,delta=2
global __ptext281
__ptext281:
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_RCREG
_RCREG	set	26
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
	global	_T2CKPS0
_T2CKPS0	set	144
	global	_T2CKPS1
_T2CKPS1	set	145
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
	global	_RCIE
_RCIE	set	1125
	global	_SYNC
_SYNC	set	1220
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
	file	"BT Ôn Thi 11.as"
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

_pwm_final:
       ds      2

_pwm_t:
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
	clrf	((__pbssBANK0)+12)&07Fh
	clrf	((__pbssBANK0)+13)&07Fh
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
	global	?_isdigit
?_isdigit:	; 1 bit 
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
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x3
	global	?___wmul
?___wmul:	; 2 bytes @ 0x3
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x3
	global	_isdigit$2339
_isdigit$2339:	; 1 bytes @ 0x3
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x3
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x3
	ds	1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x4
	ds	1
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x5
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x5
	ds	2
	global	??_pwm_10bit
??_pwm_10bit:	; 0 bytes @ 0x7
	global	??___wmul
??___wmul:	; 0 bytes @ 0x7
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x7
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x7
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_atoi
?_atoi:	; 2 bytes @ 0x0
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x0
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	??_atoi
??_atoi:	; 0 bytes @ 0x2
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x2
	ds	2
	global	?_pwm_10bit
?_pwm_10bit:	; 0 bytes @ 0x4
	global	atoi@sign
atoi@sign:	; 1 bytes @ 0x4
	global	pwm_10bit@pwm
pwm_10bit@pwm:	; 2 bytes @ 0x4
	ds	1
	global	atoi@a
atoi@a:	; 2 bytes @ 0x5
	ds	2
	global	atoi@s
atoi@s:	; 1 bytes @ 0x7
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x8
	ds	1
	global	main@data_pwm
main@data_pwm:	; 3 bytes @ 0x9
	ds	3
	global	main@b
main@b:	; 2 bytes @ 0xC
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 16, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      11
;; BANK0           80     14      28
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?_lcd_putc	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_atoi	int  size(1) Largest target is 0
;;
;; atoi@s	PTR const unsigned char  size(1) Largest target is 3
;;		 -> main@data_pwm(BANK0[3]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___wmul
;;   _pwm_10bit->___awdiv
;;   _atoi->___wmul
;;
;; Critical Paths under _ngat in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_atoi
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                16    16      0    1340
;;                                              8 BANK0      6     6      0
;;                                 _tx
;;                                 _rx
;;                               _atoi
;;                             ___wmul
;;                          _pwm_10bit
;; ---------------------------------------------------------------------------------
;; (1) _pwm_10bit                                            2     0      2     538
;;                                              4 BANK0      2     0      2
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (1) _atoi                                                 8     6      2     494
;;                                              0 BANK0      8     6      2
;;                             ___wmul
;;                            _isdigit
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              8     4      4     445
;;                                              3 COMMON     4     0      4
;;                                              0 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; (1) ___wmul                                               6     2      4      92
;;                                              3 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) _isdigit                                              2     2      0      68
;;                                              3 COMMON     2     2      0
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
;;   _atoi
;;     ___wmul
;;     _isdigit
;;   ___wmul
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
;;COMMON               E      9       B       1       78.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0      27       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      E      1C       5       35.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      29      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 22 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 11\BT Ôn Thi 11.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  b               2   12[BANK0 ] int 
;;  data_tx        10    0        unsigned char [10]
;;  data_pwm        3    9[BANK0 ] unsigned char [3]
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
;;      Locals:         0       5       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_tx
;;		_rx
;;		_atoi
;;		___wmul
;;		_pwm_10bit
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 11\BT Ôn Thi 11.c"
	line	22
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	23
	
l3051:	
;BT Ôn Thi 11.c: 23: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	24
	
l3053:	
;BT Ôn Thi 11.c: 24: TRISE1 = 0; RE1=0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1097/8)^080h,(1097)&7
	
l3055:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(73/8),(73)&7
	line	25
	
l3057:	
;BT Ôn Thi 11.c: 25: TRISE2 = 0; RE2=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1098/8)^080h,(1098)&7
	
l3059:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(74/8),(74)&7
	line	27
	
l3061:	
;BT Ôn Thi 11.c: 27: TRISC2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1082/8)^080h,(1082)&7
	line	29
	
l3063:	
;BT Ôn Thi 11.c: 29: T2CKPS1 = 0; T2CKPS0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(145/8),(145)&7
	
l3065:	
	bsf	(144/8),(144)&7
	line	30
	
l3067:	
;BT Ôn Thi 11.c: 30: PR2 = 124; TMR2 = 0;
	movlw	(07Ch)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	
l3069:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(17)	;volatile
	line	31
	
l3071:	
;BT Ôn Thi 11.c: 31: TMR2ON = 0;
	bcf	(146/8),(146)&7
	line	33
	
l3073:	
;BT Ôn Thi 11.c: 33: CCP1CON = 0b00000000;
	clrf	(23)	;volatile
	line	34
	
l3075:	
;BT Ôn Thi 11.c: 34: CCPR1L=0;
	clrf	(21)	;volatile
	line	36
	
l3077:	
;BT Ôn Thi 11.c: 36: tx();
	fcall	_tx
	line	37
	
l3079:	
;BT Ôn Thi 11.c: 37: rx();
	fcall	_rx
	line	43
	
l3081:	
;BT Ôn Thi 11.c: 41: {
;BT Ôn Thi 11.c: 43: for (int b=1;b<=2;b++){
	clrf	(main@b)
	incf	(main@b),f
	clrf	(main@b+1)
	line	44
	
l3087:	
;BT Ôn Thi 11.c: 44: data_pwm[b-1]=data_rx[b];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@b),w
	addlw	_data_rx&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(main@b),w
	addlw	0FFh
	addlw	main@data_pwm&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	line	43
	
l3089:	
	incf	(main@b),f
	skipnz
	incf	(main@b+1),f
	
l3091:	
	movf	(main@b+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u665
	movlw	low(03h)
	subwf	(main@b),w
u665:

	skipc
	goto	u661
	goto	u660
u661:
	goto	l3087
u660:
	line	46
	
l3093:	
;BT Ôn Thi 11.c: 45: }
;BT Ôn Thi 11.c: 46: pwm_t=atoi(data_pwm);
	movlw	(main@data_pwm)&0ffh
	fcall	_atoi
	movf	(1+(?_atoi)),w
	movwf	(_pwm_t+1)
	movf	(0+(?_atoi)),w
	movwf	(_pwm_t)
	line	47
	
l3095:	
;BT Ôn Thi 11.c: 47: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	48
	
l3097:	
;BT Ôn Thi 11.c: 48: CCP1CON = 0b00001100;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	49
	
l3099:	
;BT Ôn Thi 11.c: 49: pwm_final=5*pwm_t;
	movf	(_pwm_t+1),w
	movwf	(?___wmul+1)
	movf	(_pwm_t),w
	movwf	(?___wmul)
	movlw	05h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(_pwm_final+1)
	movf	(0+(?___wmul)),w
	movwf	(_pwm_final)
	line	50
	
l3101:	
;BT Ôn Thi 11.c: 50: pwm_10bit(pwm_final);
	movf	(_pwm_final+1),w
	movwf	(?_pwm_10bit+1)
	movf	(_pwm_final),w
	movwf	(?_pwm_10bit)
	fcall	_pwm_10bit
	goto	l3081
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	52
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_pwm_10bit
psect	text282,local,class=CODE,delta=2
global __ptext282
__ptext282:

;; *************** function _pwm_10bit *****************
;; Defined at:
;;		line 72 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 11\BT Ôn Thi 11.c"
;; Parameters:    Size  Location     Type
;;  pwm             2    4[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
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
psect	text282
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 11\BT Ôn Thi 11.c"
	line	72
	global	__size_of_pwm_10bit
	__size_of_pwm_10bit	equ	__end_of_pwm_10bit-_pwm_10bit
	
_pwm_10bit:	
	opt	stack 5
; Regs used in _pwm_10bit: [wreg+status,2+status,0+pclath+cstack]
	line	73
	
l3039:	
;BT Ôn Thi 11.c: 73: CCPR1L = pwm/4;
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
	line	74
	
l3041:	
;BT Ôn Thi 11.c: 74: DC1B1 = 0; DC1B0 = 0;
	bcf	(189/8),(189)&7
	
l3043:	
	bcf	(188/8),(188)&7
	line	75
	
l3045:	
;BT Ôn Thi 11.c: 75: if((pwm & 2) == 1) DC1B1 = 1;
	movf	(pwm_10bit@pwm),w
	andlw	02h
	xorlw	01h
	skipz
	goto	u641
	goto	u640
u641:
	goto	l1070
u640:
	
l3047:	
	bsf	(189/8),(189)&7
	
l1070:	
	line	76
;BT Ôn Thi 11.c: 76: if((pwm & 1) == 1) DC1B0 = 1;
	btfss	(pwm_10bit@pwm),(0)&7
	goto	u651
	goto	u650
u651:
	goto	l1072
u650:
	
l3049:	
	bsf	(188/8),(188)&7
	line	77
	
l1072:	
	return
	opt stack 0
GLOBAL	__end_of_pwm_10bit
	__end_of_pwm_10bit:
;; =============== function _pwm_10bit ends ============

	signat	_pwm_10bit,4216
	global	_atoi
psect	text283,local,class=CODE,delta=2
global __ptext283
__ptext283:

;; *************** function _atoi *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\atoi.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> main@data_pwm(3), 
;; Auto vars:     Size  Location     Type
;;  s               1    7[BANK0 ] PTR const unsigned char 
;;		 -> main@data_pwm(3), 
;;  a               2    5[BANK0 ] int 
;;  sign            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___wmul
;;		_isdigit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text283
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\atoi.c"
	line	6
	global	__size_of_atoi
	__size_of_atoi	equ	__end_of_atoi-_atoi
	
_atoi:	
	opt	stack 5
; Regs used in _atoi: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;atoi@s stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(atoi@s)
	line	10
	
l3005:	
	goto	l3009
	line	11
	
l3007:	
	incf	(atoi@s),f
	line	10
	
l3009:	
	movf	(atoi@s),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	020h
	skipnz
	goto	u581
	goto	u580
u581:
	goto	l3007
u580:
	
l3011:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	09h
	skipnz
	goto	u591
	goto	u590
u591:
	goto	l3007
u590:
	line	12
	
l3013:	
	clrf	(atoi@a)
	clrf	(atoi@a+1)
	line	13
	clrf	(atoi@sign)
	line	14
	
l3015:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Dh
	skipz
	goto	u601
	goto	u600
u601:
	goto	l3019
u600:
	line	15
	
l3017:	
	incf	(atoi@sign),f
	line	16
	incf	(atoi@s),f
	line	17
	goto	l3027
	
l3019:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Bh
	skipz
	goto	u611
	goto	u610
u611:
	goto	l3027
u610:
	line	18
	
l3021:	
	incf	(atoi@s),f
	goto	l3027
	line	20
	
l3023:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	(atoi@a+1),w
	movwf	(?___wmul+1)
	movf	(atoi@a),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	indf,w
	addwf	(0+(?___wmul)),w
	movwf	(??_atoi+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_atoi+0)+0
	movf	0+(??_atoi+0)+0,w
	addlw	low(0FFD0h)
	movwf	(atoi@a)
	movf	1+(??_atoi+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(atoi@a)
	goto	l3021
	line	19
	
l3027:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	fcall	_isdigit
	btfsc	status,0
	goto	u621
	goto	u620
u621:
	goto	l3023
u620:
	line	21
	
l3029:	
	movf	(atoi@sign),w
	skipz
	goto	u630
	goto	l3035
u630:
	line	22
	
l3031:	
	comf	(atoi@a),w
	movwf	(??_atoi+0)+0
	comf	(atoi@a+1),w
	movwf	((??_atoi+0)+0+1)
	incf	(??_atoi+0)+0,f
	skipnz
	incf	((??_atoi+0)+0+1),f
	movf	0+(??_atoi+0)+0,w
	movwf	(?_atoi)
	movf	1+(??_atoi+0)+0,w
	movwf	(?_atoi+1)
	goto	l2085
	line	23
	
l3035:	
	movf	(atoi@a+1),w
	movwf	(?_atoi+1)
	movf	(atoi@a),w
	movwf	(?_atoi)
	line	24
	
l2085:	
	return
	opt stack 0
GLOBAL	__end_of_atoi
	__end_of_atoi:
;; =============== function _atoi ends ============

	signat	_atoi,4218
	global	___awdiv
psect	text284,local,class=CODE,delta=2
global __ptext284
__ptext284:

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
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
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
psect	text284
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2961:	
	clrf	(___awdiv@sign)
	line	10
	
l2963:	
	btfss	(___awdiv@divisor+1),7
	goto	u511
	goto	u510
u511:
	goto	l2969
u510:
	line	11
	
l2965:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l2967:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l2969:	
	btfss	(___awdiv@dividend+1),7
	goto	u521
	goto	u520
u521:
	goto	l2975
u520:
	line	15
	
l2971:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2973:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l2975:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2977:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u531
	goto	u530
u531:
	goto	l2997
u530:
	line	20
	
l2979:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l2983
	line	22
	
l2981:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l2983:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u541
	goto	u540
u541:
	goto	l2981
u540:
	line	26
	
l2985:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l2987:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u555
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u555:
	skipc
	goto	u551
	goto	u550
u551:
	goto	l2993
u550:
	line	28
	
l2989:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2991:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l2993:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l2995:	
	decfsz	(___awdiv@counter),f
	goto	u561
	goto	u560
u561:
	goto	l2985
u560:
	line	34
	
l2997:	
	movf	(___awdiv@sign),w
	skipz
	goto	u570
	goto	l3001
u570:
	line	35
	
l2999:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l3001:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l2249:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___wmul
psect	text285,local,class=CODE,delta=2
global __ptext285
__ptext285:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    3[COMMON] unsigned int 
;;  multiplicand    2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    7[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_atoi
;; This function uses a non-reentrant model
;;
psect	text285
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l2797:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l2799:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u331
	goto	u330
u331:
	goto	l2803
u330:
	line	8
	
l2801:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l2803:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l2805:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l2807:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u341
	goto	u340
u341:
	goto	l2799
u340:
	line	12
	
l2809:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l2102:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_isdigit
psect	text286,local,class=CODE,delta=2
global __ptext286
__ptext286:

;; *************** function _isdigit *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_atoi
;; This function uses a non-reentrant model
;;
psect	text286
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 5
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l2785:	
	clrf	(_isdigit$2339)
	
l2787:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u311
	goto	u310
u311:
	goto	l2793
u310:
	
l2789:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u321
	goto	u320
u321:
	goto	l2793
u320:
	
l2791:	
	clrf	(_isdigit$2339)
	incf	(_isdigit$2339),f
	
l2793:	
	rrf	(_isdigit$2339),w
	
	line	15
	
l2090:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_rx
psect	text287,local,class=CODE,delta=2
global __ptext287
__ptext287:

;; *************** function _rx *****************
;; Defined at:
;;		line 93 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 11\BT Ôn Thi 11.c"
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
psect	text287
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 11\BT Ôn Thi 11.c"
	line	93
	global	__size_of_rx
	__size_of_rx	equ	__end_of_rx-_rx
	
_rx:	
	opt	stack 6
; Regs used in _rx: [wreg]
	line	94
	
l2743:	
;BT Ôn Thi 11.c: 94: SYNC = 0; BRGH = 1; BRG16 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	95
	
l2745:	
;BT Ôn Thi 11.c: 95: SPBRGH = 0x02;
	movlw	(02h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	96
;BT Ôn Thi 11.c: 96: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	97
	
l2747:	
;BT Ôn Thi 11.c: 97: CREN = 1; RX9 = 0; SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(196/8),(196)&7
	
l2749:	
	bcf	(198/8),(198)&7
	
l2751:	
	bsf	(199/8),(199)&7
	line	99
	
l2753:	
;BT Ôn Thi 11.c: 99: RCIE=1; RCIF=0; PEIE=1; GIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1125/8)^080h,(1125)&7
	
l2755:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(101/8),(101)&7
	
l2757:	
	bsf	(94/8),(94)&7
	
l2759:	
	bsf	(95/8),(95)&7
	line	100
	
l1090:	
	return
	opt stack 0
GLOBAL	__end_of_rx
	__end_of_rx:
;; =============== function _rx ends ============

	signat	_rx,88
	global	_tx
psect	text288,local,class=CODE,delta=2
global __ptext288
__ptext288:

;; *************** function _tx *****************
;; Defined at:
;;		line 86 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 11\BT Ôn Thi 11.c"
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
psect	text288
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 11\BT Ôn Thi 11.c"
	line	86
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
	
_tx:	
	opt	stack 6
; Regs used in _tx: [wreg]
	line	87
	
l2733:	
;BT Ôn Thi 11.c: 87: SYNC = 0; BRGH = 1; BRG16 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	88
	
l2735:	
;BT Ôn Thi 11.c: 88: SPBRGH = 0x02;
	movlw	(02h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	89
;BT Ôn Thi 11.c: 89: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	90
	
l2737:	
;BT Ôn Thi 11.c: 90: TXEN = 1; TX9 = 0; SPEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	
l2739:	
	bcf	(1222/8)^080h,(1222)&7
	
l2741:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	91
	
l1087:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
;; =============== function _tx ends ============

	signat	_tx,88
	global	_ngat
psect	text289,local,class=CODE,delta=2
global __ptext289
__ptext289:

;; *************** function _ngat *****************
;; Defined at:
;;		line 54 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 11\BT Ôn Thi 11.c"
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
psect	text289
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 11\BT Ôn Thi 11.c"
	line	54
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
psect	text289
	line	55
	
i1l2761:	
;BT Ôn Thi 11.c: 55: if (RCIF){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u26_21
	goto	u26_20
u26_21:
	goto	i1l1057
u26_20:
	line	56
	
i1l2763:	
;BT Ôn Thi 11.c: 56: data_rx[a]=RCREG;
	movf	(_a),w
	addlw	_data_rx&0ffh
	movwf	fsr0
	movf	(26),w	;volatile
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	57
	
i1l2765:	
;BT Ôn Thi 11.c: 57: a++;
	incf	(_a),f
	skipnz
	incf	(_a+1),f
	line	58
	
i1l2767:	
;BT Ôn Thi 11.c: 58: if (a==3) {a=0;}
		movf	(_a),w
	xorlw	3
	iorwf	(_a+1),w

	skipz
	goto	u27_21
	goto	u27_20
u27_21:
	goto	i1l2771
u27_20:
	
i1l2769:	
	clrf	(_a)
	clrf	(_a+1)
	line	59
	
i1l2771:	
;BT Ôn Thi 11.c: 59: if (RCREG == 'P') {RE1=0;RE2 = 0; TMR2ON=0;a=0;}
	movf	(26),w
	xorlw	050h
	skipz
	goto	u28_21
	goto	u28_20
u28_21:
	goto	i1l2777
u28_20:
	
i1l2773:	
	bcf	(73/8),(73)&7
	bcf	(74/8),(74)&7
	bcf	(146/8),(146)&7
	
i1l2775:	
	clrf	(_a)
	clrf	(_a+1)
	goto	i1l1057
	line	60
	
i1l2777:	
;BT Ôn Thi 11.c: 60: else if (RCREG == 'L') {RE1=0;RE2 = 1; TMR2ON=1;}
	movf	(26),w
	xorlw	04Ch
	skipz
	goto	u29_21
	goto	u29_20
u29_21:
	goto	i1l2781
u29_20:
	
i1l2779:	
	bcf	(73/8),(73)&7
	bsf	(74/8),(74)&7
	bsf	(146/8),(146)&7
	goto	i1l1057
	line	61
	
i1l2781:	
;BT Ôn Thi 11.c: 61: else if (RCREG == 'R') {RE1=1;RE2 = 0; TMR2ON=1;}
	movf	(26),w
	xorlw	052h
	skipz
	goto	u30_21
	goto	u30_20
u30_21:
	goto	i1l1057
u30_20:
	
i1l2783:	
	bsf	(73/8),(73)&7
	bcf	(74/8),(74)&7
	bsf	(146/8),(146)&7
	line	62
	
i1l1057:	
	line	63
;BT Ôn Thi 11.c: 62: }
;BT Ôn Thi 11.c: 63: RCIF=0;
	bcf	(101/8),(101)&7
	line	64
	
i1l1064:	
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
psect	text290,local,class=CODE,delta=2
global __ptext290
__ptext290:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
