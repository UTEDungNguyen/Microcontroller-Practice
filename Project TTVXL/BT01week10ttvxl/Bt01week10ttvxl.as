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
# 6 "D:\TTVXL\Project TTVXL\BT01week10ttvxl\Bt01week10ttvxl.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "D:\TTVXL\Project TTVXL\BT01week10ttvxl\Bt01week10ttvxl.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftmul
	FNCALL	_main,___fttol
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_quetled
	FNCALL	_main,___ftge
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNROOT	_main
	FNCALL	intlevel1,_button
	global	intlevel1
	FNROOT	intlevel1
	global	_maled
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\TTVXL\Project TTVXL\BT01week10ttvxl\Bt01week10ttvxl.c"
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
	global	_S1_state
	global	_ADRESH
_ADRESH	set	30
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_ADCS0
_ADCS0	set	254
	global	_ADCS1
_ADCS1	set	255
	global	_ADON
_ADON	set	248
	global	_CHS0
_CHS0	set	250
	global	_CHS1
_CHS1	set	251
	global	_CHS2
_CHS2	set	252
	global	_CHS3
_CHS3	set	253
	global	_GIE
_GIE	set	95
	global	_GO_nDONE
_GO_nDONE	set	249
	global	_INTE
_INTE	set	92
	global	_INTF
_INTF	set	89
	global	_RB0
_RB0	set	48
	global	_RE0
_RE0	set	72
	global	_ADRESL
_ADRESL	set	158
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_WPUB
_WPUB	set	149
	global	_ADFM
_ADFM	set	1279
	global	_TRISA0
_TRISA0	set	1064
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISE0
_TRISE0	set	1096
	global	_TRISE1
_TRISE1	set	1097
	global	_VCFG0
_VCFG0	set	1276
	global	_VCFG1
_VCFG1	set	1277
	global	_nRBPU
_nRBPU	set	1039
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	global	_ANS0
_ANS0	set	3136
	file	"Bt01week10ttvxl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_S1_state:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\TTVXL\Project TTVXL\BT01week10ttvxl\Bt01week10ttvxl.c"
_maled:
       ds      10

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
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
	global	?___ftge
?___ftge:	; 1 bit 
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x2
	global	?___fttol
?___fttol:	; 4 bytes @ 0x2
	global	quetled@donvi_t
quetled@donvi_t:	; 1 bytes @ 0x2
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x2
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x2
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x2
	ds	1
	global	??_quetled
??_quetled:	; 0 bytes @ 0x3
	global	quetled@chuc_t
quetled@chuc_t:	; 1 bytes @ 0x3
	ds	2
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x5
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x5
	ds	1
	global	??___fttol
??___fttol:	; 0 bytes @ 0x6
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x6
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x7
	ds	1
	global	??___ftge
??___ftge:	; 0 bytes @ 0x8
	ds	1
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x9
	global	??___awmod
??___awmod:	; 0 bytes @ 0x9
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x9
	ds	1
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xA
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xA
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0xA
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x0
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x0
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x0
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x1
	ds	2
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x3
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x3
	ds	2
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x5
	ds	1
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x6
	global	?___awmod
?___awmod:	; 2 bytes @ 0x6
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x6
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x6
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x6
	ds	2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x8
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x8
	ds	1
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x9
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0xA
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0xB
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0xC
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0xC
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0xD
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x10
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x11
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x12
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x12
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x15
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x18
	ds	3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1B
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1C
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1F
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x20
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x21
	ds	3
	global	main@adc
main@adc:	; 2 bytes @ 0x24
	ds	2
	global	main@chuc
main@chuc:	; 1 bytes @ 0x26
	ds	1
	global	main@donvi
main@donvi:	; 1 bytes @ 0x27
	ds	1
	global	main@res
main@res:	; 3 bytes @ 0x28
	ds	3
;;Data sizes: Strings 0, constant 0, data 10, bss 1, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      11
;; BANK0           80     43      54
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awtoft
;;   _main->___awmod
;;   ___awtoft->___ftpack
;;   ___ftmul->___awtoft
;;   ___ftdiv->___awtoft
;;   ___awmod->___fttol
;;   ___awdiv->___fttol
;;
;; Critical Paths under _button in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->___ftmul
;;   ___ftmul->___ftdiv
;;   ___ftdiv->___awtoft
;;   ___awmod->___fttol
;;   ___awdiv->___fttol
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                10    10      0    2511
;;                                             33 BANK0     10    10      0
;;                           ___awtoft
;;                            ___ftdiv
;;                            ___ftmul
;;                            ___fttol
;;                            ___awdiv
;;                            ___awmod
;;                            _quetled
;;                             ___ftge
;; ---------------------------------------------------------------------------------
;; (1) ___awtoft                                             4     1      3     300
;;                                             10 COMMON     1     1      0
;;                                              0 BANK0      3     0      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (1) ___ftmul                                             15     9      6     535
;;                                             18 BANK0     15     9      6
;;                           ___ftpack
;;                            ___ftdiv (ARG)
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftdiv                                             15     9      6     489
;;                                              3 BANK0     15     9      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              6     2      4     296
;;                                              9 COMMON     2     2      0
;;                                              6 BANK0      4     0      4
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftge                                               6     0      6     136
;;                                              2 COMMON     6     0      6
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              8     4      4     300
;;                                              6 BANK0      8     4      4
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___fttol                                             13     9      4     252
;;                                              2 COMMON     7     3      4
;;                                              0 BANK0      6     6      0
;; ---------------------------------------------------------------------------------
;; (2) ___ftpack                                             8     3      5     209
;;                                              2 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (1) _quetled                                              2     1      1      44
;;                                              2 COMMON     2     1      1
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _button                                               2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   ___awtoft
;;     ___ftpack
;;   ___ftdiv
;;     ___ftpack
;;     ___awtoft (ARG)
;;       ___ftpack
;;   ___ftmul
;;     ___ftpack
;;     ___ftdiv (ARG)
;;       ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;     ___awtoft (ARG)
;;       ___ftpack
;;   ___fttol
;;   ___awdiv
;;     ___fttol (ARG)
;;   ___awmod
;;     ___fttol (ARG)
;;   _quetled
;;   ___ftge
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
;;DATA                 0      0      43      12        0.0%
;;ABS                  0      0      41       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50     2B      36       5       67.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      B       B       1       78.6%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 15 in file "D:\TTVXL\Project TTVXL\BT01week10ttvxl\Bt01week10ttvxl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  res             3   40[BANK0 ] float 
;;  adc             2   36[BANK0 ] int 
;;  donvi           1   39[BANK0 ] unsigned char 
;;  chuc            1   38[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;;		___fttol
;;		___awdiv
;;		___awmod
;;		_quetled
;;		___ftge
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT01week10ttvxl\Bt01week10ttvxl.c"
	line	15
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	17
	
l3213:	
;Bt01week10ttvxl.c: 17: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	25
	
l3215:	
;Bt01week10ttvxl.c: 25: TRISB0 = 1;
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1072/8)^080h,(1072)&7
	line	26
	
l3217:	
;Bt01week10ttvxl.c: 26: TRISA0 = 1; ANS0 = 1;
	bsf	(1064/8)^080h,(1064)&7
	
l3219:	
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3136/8)^0180h,(3136)&7
	line	27
	
l3221:	
;Bt01week10ttvxl.c: 27: ADCS1 = 1; ADCS0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(255/8),(255)&7
	
l3223:	
	bcf	(254/8),(254)&7
	line	28
	
l3225:	
;Bt01week10ttvxl.c: 28: VCFG1 = 0; VCFG0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1277/8)^080h,(1277)&7
	
l3227:	
	bcf	(1276/8)^080h,(1276)&7
	line	29
	
l3229:	
;Bt01week10ttvxl.c: 29: CHS3 = 0;CHS2 = 0; CHS1 = 0;CHS0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(253/8),(253)&7
	
l3231:	
	bcf	(252/8),(252)&7
	
l3233:	
	bcf	(251/8),(251)&7
	
l3235:	
	bcf	(250/8),(250)&7
	line	30
	
l3237:	
;Bt01week10ttvxl.c: 30: ADFM = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1279/8)^080h,(1279)&7
	line	31
	
l3239:	
;Bt01week10ttvxl.c: 31: ADON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(248/8),(248)&7
	line	32
	
l3241:	
;Bt01week10ttvxl.c: 32: WPUB = 0b00000001;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	33
	
l3243:	
;Bt01week10ttvxl.c: 33: nRBPU =0;
	bcf	(1039/8)^080h,(1039)&7
	line	34
	
l3245:	
;Bt01week10ttvxl.c: 34: GIE = 1;
	bsf	(95/8),(95)&7
	line	35
	
l3247:	
;Bt01week10ttvxl.c: 35: INTE = 1;
	bsf	(92/8),(92)&7
	line	36
	
l3249:	
;Bt01week10ttvxl.c: 36: INTF = 0;
	bcf	(89/8),(89)&7
	line	37
	
l3251:	
;Bt01week10ttvxl.c: 37: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u1057:
	decfsz	((??_main+0)+0),f
	goto	u1057
	decfsz	((??_main+0)+0+1),f
	goto	u1057
	clrwdt
opt asmopt_on

	line	39
	
l3253:	
;Bt01week10ttvxl.c: 39: TRISE0 = TRISE1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1097/8)^080h,(1097)&7
	bcf	(1096/8)^080h,(1096)&7
	line	40
	
l3255:	
;Bt01week10ttvxl.c: 40: RE0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(72/8),(72)&7
	line	41
;Bt01week10ttvxl.c: 41: TRISC = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(135)^080h	;volatile
	line	42
;Bt01week10ttvxl.c: 42: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	43
;Bt01week10ttvxl.c: 43: PORTC = PORTD=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(8)	;volatile
	clrf	(7)	;volatile
	line	49
	
l3257:	
;Bt01week10ttvxl.c: 48: {
;Bt01week10ttvxl.c: 49: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u1067:
	decfsz	((??_main+0)+0),f
	goto	u1067
	decfsz	((??_main+0)+0+1),f
	goto	u1067
	decfsz	((??_main+0)+0+2),f
	goto	u1067
	nop2
opt asmopt_on

	line	50
	
l3259:	
;Bt01week10ttvxl.c: 50: GO_nDONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	51
;Bt01week10ttvxl.c: 51: while(GO_nDONE==1){}
	
l1036:	
	btfsc	(249/8),(249)&7
	goto	u1011
	goto	u1010
u1011:
	goto	l1036
u1010:
	line	52
	
l3261:	
;Bt01week10ttvxl.c: 52: adc = ADRESH * 256 + ADRESL;
	movf	(30),w	;volatile
	movwf	(main@adc+1)
	clrf	(main@adc)
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	addwf	(main@adc),f
	skipnc
	incf	(main@adc+1),f
	line	53
	
l3263:	
;Bt01week10ttvxl.c: 53: res = (adc/1023.0)*50.0;
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x48
	movwf	(?___ftmul+1)
	movlw	0x42
	movwf	(?___ftmul+2)
	movlw	0xc0
	movwf	(?___ftdiv)
	movlw	0x7f
	movwf	(?___ftdiv+1)
	movlw	0x44
	movwf	(?___ftdiv+2)
	movf	(main@adc+1),w
	movwf	(?___awtoft+1)
	movf	(main@adc),w
	movwf	(?___awtoft)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?___awtoft)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?___awtoft)),w
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(main@res)
	movf	(1+(?___ftmul)),w
	movwf	(main@res+1)
	movf	(2+(?___ftmul)),w
	movwf	(main@res+2)
	line	54
	
l3265:	
;Bt01week10ttvxl.c: 54: chuc = (int)res/10;
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(main@res),w
	movwf	(?___fttol)
	movf	(main@res+1),w
	movwf	(?___fttol+1)
	movf	(main@res+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	movwf	1+(?___awdiv)+02h
	movf	0+(((0+(?___fttol)))),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(main@chuc)
	line	55
	
l3267:	
;Bt01week10ttvxl.c: 55: donvi = (int)res%10;
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(main@res),w
	movwf	(?___fttol)
	movf	(main@res+1),w
	movwf	(?___fttol+1)
	movf	(main@res+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	movwf	1+(?___awmod)+02h
	movf	0+(((0+(?___fttol)))),w
	movwf	0+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	movwf	(main@donvi)
	line	56
	
l3269:	
;Bt01week10ttvxl.c: 56: quetled(chuc,donvi);
	movf	(main@donvi),w
	movwf	(?_quetled)
	movf	(main@chuc),w
	fcall	_quetled
	line	57
	
l3271:	
;Bt01week10ttvxl.c: 57: if (res > 25.0 && S1_state==1){
	movlw	0x0
	movwf	(?___ftge)
	movlw	0xc8
	movwf	(?___ftge+1)
	movlw	0x41
	movwf	(?___ftge+2)
	movf	(main@res),w
	movwf	0+(?___ftge)+03h
	movf	(main@res+1),w
	movwf	1+(?___ftge)+03h
	movf	(main@res+2),w
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u1021
	goto	u1020
u1021:
	goto	l3281
u1020:
	
l3273:	
	decf	(_S1_state),w
	skipz
	goto	u1031
	goto	u1030
u1031:
	goto	l3281
u1030:
	line	58
	
l3275:	
;Bt01week10ttvxl.c: 58: RE0=0;
	bcf	(72/8),(72)&7
	line	59
	
l3277:	
;Bt01week10ttvxl.c: 59: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1077:
	decfsz	((??_main+0)+0),f
	goto	u1077
	decfsz	((??_main+0)+0+1),f
	goto	u1077
	decfsz	((??_main+0)+0+2),f
	goto	u1077
	nop2
opt asmopt_on

	line	60
	
l3279:	
;Bt01week10ttvxl.c: 60: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	line	61
;Bt01week10ttvxl.c: 61: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1087:
	decfsz	((??_main+0)+0),f
	goto	u1087
	decfsz	((??_main+0)+0+1),f
	goto	u1087
	decfsz	((??_main+0)+0+2),f
	goto	u1087
	nop2
opt asmopt_on

	line	63
	
l3281:	
;Bt01week10ttvxl.c: 62: }
;Bt01week10ttvxl.c: 63: if (res < 25.0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@res),w
	movwf	(?___ftge)
	movf	(main@res+1),w
	movwf	(?___ftge+1)
	movf	(main@res+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0xc8
	movwf	1+(?___ftge)+03h
	movlw	0x41
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u1041
	goto	u1040
u1041:
	goto	l3257
u1040:
	line	64
	
l3283:	
;Bt01week10ttvxl.c: 64: RE0=0;
	bcf	(72/8),(72)&7
	line	65
	
l3285:	
;Bt01week10ttvxl.c: 65: S1_state=0;
	clrf	(_S1_state)
	goto	l3257
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	69
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	___awtoft
psect	text170,local,class=CODE,delta=2
global __ptext170
__ptext170:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    0[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text170
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l3201:	
	clrf	(___awtoft@sign)
	line	37
	
l3203:	
	btfss	(___awtoft@c+1),7
	goto	u1001
	goto	u1000
u1001:
	goto	l3209
u1000:
	line	38
	
l3205:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l3207:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l3209:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	line	42
	
l2180:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text171,local,class=CODE,delta=2
global __ptext171
__ptext171:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   18[BANK0 ] float 
;;  f2              3   21[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   28[BANK0 ] unsigned um
;;  sign            1   32[BANK0 ] unsigned char 
;;  cntr            1   31[BANK0 ] unsigned char 
;;  exp             1   27[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   18[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text171
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l3145:	
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u921
	goto	u920
u921:
	goto	l3151
u920:
	line	57
	
l3147:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2142
	line	58
	
l3151:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u931
	goto	u930
u931:
	goto	l3157
u930:
	line	59
	
l3153:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2142
	line	60
	
l3157:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l3159:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l3161:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l3163:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l3165:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l3167:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l3169:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l3171:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l3173:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l3175:	
	btfss	(___ftmul@f1),(0)&7
	goto	u941
	goto	u940
u941:
	goto	l3179
u940:
	line	72
	
l3177:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u951
	addwf	(___ftmul@f3_as_product+1),f
u951:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u952
	addwf	(___ftmul@f3_as_product+2),f
u952:

	line	73
	
l3179:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l3181:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l3183:	
	decfsz	(___ftmul@cntr),f
	goto	u961
	goto	u960
u961:
	goto	l3175
u960:
	line	76
	
l3185:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l3187:	
	btfss	(___ftmul@f1),(0)&7
	goto	u971
	goto	u970
u971:
	goto	l3191
u970:
	line	79
	
l3189:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u981
	addwf	(___ftmul@f3_as_product+1),f
u981:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u982
	addwf	(___ftmul@f3_as_product+2),f
u982:

	line	80
	
l3191:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l3193:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l3195:	
	decfsz	(___ftmul@cntr),f
	goto	u991
	goto	u990
u991:
	goto	l3187
u990:
	line	83
	
l3197:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	line	84
	
l2142:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text172,local,class=CODE,delta=2
global __ptext172
__ptext172:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    3[BANK0 ] float 
;;  f1              3    6[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   13[BANK0 ] float 
;;  sign            1   17[BANK0 ] unsigned char 
;;  exp             1   16[BANK0 ] unsigned char 
;;  cntr            1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    3[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text172
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l3101:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u881
	goto	u880
u881:
	goto	l3107
u880:
	line	56
	
l3103:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l2132
	line	57
	
l3107:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u891
	goto	u890
u891:
	goto	l2133
u890:
	line	58
	
l3109:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l2132
	
l2133:	
	line	59
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	60
	
l3113:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l3115:	
	movf	0+(((___ftdiv@f1))+2),w
	movwf	(___ftdiv@sign)
	line	62
	
l3117:	
	movf	0+(((___ftdiv@f2))+2),w
	xorwf	(___ftdiv@sign),f
	line	63
	
l3119:	
	movlw	(080h)
	andwf	(___ftdiv@sign),f
	line	64
	
l3121:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	
l3123:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l3125:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	
l3127:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	
l3129:	
	movlw	(018h)
	movwf	(___ftdiv@cntr)
	line	70
	
l3131:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	71
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u905
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u905
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u905:
	skipc
	goto	u901
	goto	u900
u901:
	goto	l3137
u900:
	line	72
	
l3133:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l3135:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	75
	
l3137:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	76
	
l3139:	
	decfsz	(___ftdiv@cntr),f
	goto	u911
	goto	u910
u911:
	goto	l3131
u910:
	line	77
	
l3141:	
	movf	(___ftdiv@f3),w
	movwf	(?___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	0+(?___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	line	78
	
l2132:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___awmod
psect	text173,local,class=CODE,delta=2
global __ptext173
__ptext173:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[BANK0 ] int 
;;  dividend        2    8[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   10[COMMON] unsigned char 
;;  counter         1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text173
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3065:	
	clrf	(___awmod@sign)
	line	9
	
l3067:	
	btfss	(___awmod@dividend+1),7
	goto	u811
	goto	u810
u811:
	goto	l3073
u810:
	line	10
	
l3069:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l3071:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l3073:	
	btfss	(___awmod@divisor+1),7
	goto	u821
	goto	u820
u821:
	goto	l3077
u820:
	line	14
	
l3075:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l3077:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u831
	goto	u830
u831:
	goto	l3093
u830:
	line	16
	
l3079:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l3083
	line	18
	
l3081:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l3083:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u841
	goto	u840
u841:
	goto	l3081
u840:
	line	22
	
l3085:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u855
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u855:
	skipc
	goto	u851
	goto	u850
u851:
	goto	l3089
u850:
	line	23
	
l3087:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l3089:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l3091:	
	decfsz	(___awmod@counter),f
	goto	u861
	goto	u860
u861:
	goto	l3085
u860:
	line	27
	
l3093:	
	movf	(___awmod@sign),w
	skipz
	goto	u870
	goto	l3097
u870:
	line	28
	
l3095:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l3097:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l2261:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___ftge
psect	text174,local,class=CODE,delta=2
global __ptext174
__ptext174:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    2[COMMON] float 
;;  ff2             3    5[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text174
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 6
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l3045:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u781
	goto	u780
u781:
	goto	l3049
u780:
	line	7
	
l3047:	
	movf	(___ftge@ff1),w
	sublw	0
	movwf	(___ftge@ff1)
	movf	(___ftge@ff1+1),w
	skipc
	incfsz	(___ftge@ff1+1),w
	sublw	0
	movwf	1+(___ftge@ff1)
	movf	(___ftge@ff1+2),w
	skipc
	incfsz	(___ftge@ff1+2),w
	sublw	080h
	movwf	2+(___ftge@ff1)
	line	8
	
l3049:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u791
	goto	u790
u791:
	goto	l3053
u790:
	line	9
	
l3051:	
	movf	(___ftge@ff2),w
	sublw	0
	movwf	(___ftge@ff2)
	movf	(___ftge@ff2+1),w
	skipc
	incfsz	(___ftge@ff2+1),w
	sublw	0
	movwf	1+(___ftge@ff2)
	movf	(___ftge@ff2+2),w
	skipc
	incfsz	(___ftge@ff2+2),w
	sublw	080h
	movwf	2+(___ftge@ff2)
	line	10
	
l3053:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l3055:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l3057:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u805
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u805
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u805:
	skipnc
	goto	u801
	goto	u800
u801:
	goto	l3061
u800:
	
l3059:	
	clrc
	
	goto	l2212
	
l3061:	
	setc
	
	line	13
	
l2212:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___awdiv
psect	text175,local,class=CODE,delta=2
global __ptext175
__ptext175:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[BANK0 ] int 
;;  dividend        2    8[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   12[BANK0 ] int 
;;  sign            1   11[BANK0 ] unsigned char 
;;  counter         1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text175
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3001:	
	clrf	(___awdiv@sign)
	line	10
	
l3003:	
	btfss	(___awdiv@divisor+1),7
	goto	u711
	goto	u710
u711:
	goto	l3009
u710:
	line	11
	
l3005:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l3007:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l3009:	
	btfss	(___awdiv@dividend+1),7
	goto	u721
	goto	u720
u721:
	goto	l3015
u720:
	line	15
	
l3011:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3013:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l3015:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3017:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u731
	goto	u730
u731:
	goto	l3037
u730:
	line	20
	
l3019:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l3023
	line	22
	
l3021:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l3023:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u741
	goto	u740
u741:
	goto	l3021
u740:
	line	26
	
l3025:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l3027:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u755
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u755:
	skipc
	goto	u751
	goto	u750
u751:
	goto	l3033
u750:
	line	28
	
l3029:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3031:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l3033:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l3035:	
	decfsz	(___awdiv@counter),f
	goto	u761
	goto	u760
u761:
	goto	l3025
u760:
	line	34
	
l3037:	
	movf	(___awdiv@sign),w
	skipz
	goto	u770
	goto	l3041
u770:
	line	35
	
l3039:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l3041:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l2193:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text176,local,class=CODE,delta=2
global __ptext176
__ptext176:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    2[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    1[BANK0 ] unsigned long 
;;  exp1            1    5[BANK0 ] unsigned char 
;;  sign1           1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    2[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         7       6       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text176
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2963:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u631
	goto	u630
u631:
	goto	l2967
u630:
	line	50
	
l2965:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l2153
	line	51
	
l2967:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u645:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u640:
	addlw	-1
	skipz
	goto	u645
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2969:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2971:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2973:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2975:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l2977:	
	btfss	(___fttol@exp1),7
	goto	u651
	goto	u650
u651:
	goto	l2987
u650:
	line	57
	
l2979:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u661
	goto	u660
u661:
	goto	l2983
u660:
	goto	l2965
	line	60
	
l2983:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l2985:	
	incfsz	(___fttol@exp1),f
	goto	u671
	goto	u670
u671:
	goto	l2983
u670:
	goto	l2993
	line	63
	
l2987:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u681
	goto	u680
u681:
	goto	l2160
u680:
	goto	l2965
	line	66
	
l2991:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l2160:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u691
	goto	u690
u691:
	goto	l2991
u690:
	line	70
	
l2993:	
	movf	(___fttol@sign1),w
	skipz
	goto	u700
	goto	l2997
u700:
	line	71
	
l2995:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	line	72
	
l2997:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l2153:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text177,local,class=CODE,delta=2
global __ptext177
__ptext177:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    2[COMMON] unsigned um
;;  exp             1    5[COMMON] unsigned char 
;;  sign            1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    2[COMMON] float 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftdiv
;;		___ftmul
;;		___awtoft
;; This function uses a non-reentrant model
;;
psect	text177
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l2935:	
	movf	(___ftpack@exp),w
	skipz
	goto	u560
	goto	l2939
u560:
	
l2937:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u571
	goto	u570
u571:
	goto	l2945
u570:
	line	65
	
l2939:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l2378
	line	67
	
l2943:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l2945:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u581
	goto	u580
u581:
	goto	l2943
u580:
	goto	l2949
	line	71
	
l2947:	
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
	
l2949:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u591
	goto	u590
u591:
	goto	l2947
u590:
	goto	l2953
	line	76
	
l2951:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l2953:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u601
	goto	u600
u601:
	goto	l2951
u600:
	
l2387:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u611
	goto	u610
u611:
	goto	l2388
u610:
	line	80
	
l2955:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l2388:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l2957:	
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
	
l2959:	
	movf	(___ftpack@sign),w
	skipz
	goto	u620
	goto	l2389
u620:
	line	84
	
l2961:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2389:	
	line	85
	line	86
	
l2378:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	_quetled
psect	text178,local,class=CODE,delta=2
global __ptext178
__ptext178:

;; *************** function _quetled *****************
;; Defined at:
;;		line 72 in file "D:\TTVXL\Project TTVXL\BT01week10ttvxl\Bt01week10ttvxl.c"
;; Parameters:    Size  Location     Type
;;  chuc_t          1    wreg     unsigned char 
;;  donvi_t         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  chuc_t          1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text178
	file	"D:\TTVXL\Project TTVXL\BT01week10ttvxl\Bt01week10ttvxl.c"
	line	72
	global	__size_of_quetled
	__size_of_quetled	equ	__end_of_quetled-_quetled
	
_quetled:	
	opt	stack 6
; Regs used in _quetled: [wreg-fsr0h+status,2+status,0]
;quetled@chuc_t stored from wreg
	movwf	(quetled@chuc_t)
	line	73
	
l2927:	
;Bt01week10ttvxl.c: 73: PORTC = maled[chuc_t];
	movf	(quetled@chuc_t),w
	addlw	_maled&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	74
;Bt01week10ttvxl.c: 74: PORTD = maled[donvi_t];
	movf	(quetled@donvi_t),w
	addlw	_maled&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(8)	;volatile
	line	75
	
l1046:	
	return
	opt stack 0
GLOBAL	__end_of_quetled
	__end_of_quetled:
;; =============== function _quetled ends ============

	signat	_quetled,8312
	global	_button
psect	text179,local,class=CODE,delta=2
global __ptext179
__ptext179:

;; *************** function _button *****************
;; Defined at:
;;		line 77 in file "D:\TTVXL\Project TTVXL\BT01week10ttvxl\Bt01week10ttvxl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
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
psect	text179
	file	"D:\TTVXL\Project TTVXL\BT01week10ttvxl\Bt01week10ttvxl.c"
	line	77
	global	__size_of_button
	__size_of_button	equ	__end_of_button-_button
	
_button:	
	opt	stack 5
; Regs used in _button: []
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
psect	text179
	line	78
	
i1l2929:	
;Bt01week10ttvxl.c: 78: INTF = 0;
	bcf	(89/8),(89)&7
	line	79
;Bt01week10ttvxl.c: 79: if (RB0 == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u53_21
	goto	u53_20
u53_21:
	goto	i1l1054
u53_20:
	line	81
	
i1l1050:	
	line	80
	btfsc	(48/8),(48)&7
	goto	u54_21
	goto	u54_20
u54_21:
	goto	i1l1050
u54_20:
	
i1l1052:	
	line	82
;Bt01week10ttvxl.c: 81: }
;Bt01week10ttvxl.c: 82: if (RB0 == 0){
	btfsc	(48/8),(48)&7
	goto	u55_21
	goto	u55_20
u55_21:
	goto	i1l1054
u55_20:
	line	83
	
i1l2933:	
;Bt01week10ttvxl.c: 83: S1_state =1 ;
	clrf	(_S1_state)
	incf	(_S1_state),f
	line	87
	
i1l1054:	
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
psect	text180,local,class=CODE,delta=2
global __ptext180
__ptext180:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
