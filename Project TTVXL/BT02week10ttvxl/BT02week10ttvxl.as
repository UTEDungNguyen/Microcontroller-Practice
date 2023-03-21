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
# 6 "D:\TTVXL\Project TTVXL\BT02week10ttvxl\BT02week10ttvxl.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "D:\TTVXL\Project TTVXL\BT02week10ttvxl\BT02week10ttvxl.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_quetled
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftmul
	FNCALL	_main,___fttol
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNROOT	_main
	global	_maled
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\TTVXL\Project TTVXL\BT02week10ttvxl\BT02week10ttvxl.c"
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
	global	_ADRESH
_ADRESH	set	30
	global	_PORTB
_PORTB	set	6
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
	global	_GO_nDONE
_GO_nDONE	set	249
	global	_ADRESL
_ADRESL	set	158
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_ADFM
_ADFM	set	1279
	global	_TRISA0
_TRISA0	set	1064
	global	_VCFG0
_VCFG0	set	1276
	global	_VCFG1
_VCFG1	set	1277
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	global	_ANS0
_ANS0	set	3136
	file	"BT02week10ttvxl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\TTVXL\Project TTVXL\BT02week10ttvxl\BT02week10ttvxl.c"
_maled:
       ds      10

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
	global	?_quetled
?_quetled:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___fttol
?___fttol:	; 4 bytes @ 0x0
	global	quetled@chuc_t
quetled@chuc_t:	; 1 bytes @ 0x0
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	quetled@donvi_t
quetled@donvi_t:	; 1 bytes @ 0x1
	ds	1
	global	??_quetled
??_quetled:	; 0 bytes @ 0x2
	global	quetled@tram_t
quetled@tram_t:	; 1 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	??___fttol
??___fttol:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	ds	2
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x7
	ds	1
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x8
	ds	3
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xB
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xB
	ds	1
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xC
	ds	1
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0xD
	global	??___awmod
??___awmod:	; 0 bytes @ 0xD
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x0
	ds	2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x3
	ds	1
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	ds	1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	ds	1
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x6
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x6
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x6
	ds	2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x8
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x9
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0xA
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0xA
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0xB
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0xC
	ds	1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0xD
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0xE
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xF
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xF
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x12
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x15
	ds	3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x18
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x19
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1C
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1D
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x1E
	ds	2
	global	main@chuc
main@chuc:	; 2 bytes @ 0x20
	ds	2
	global	main@donvi
main@donvi:	; 2 bytes @ 0x22
	ds	2
	global	main@tram
main@tram:	; 2 bytes @ 0x24
	ds	2
	global	_main$2643
_main$2643:	; 2 bytes @ 0x26
	ds	2
	global	main@adc
main@adc:	; 2 bytes @ 0x28
	ds	2
	global	main@res
main@res:	; 3 bytes @ 0x2A
	ds	3
;;Data sizes: Strings 0, constant 0, data 10, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80     45      55
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
;;   _main->___fttol
;;   ___awtoft->___ftpack
;;   ___ftmul->___awtoft
;;   ___ftdiv->___awtoft
;;   ___awmod->___fttol
;;   ___awdiv->___fttol
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->___ftmul
;;   ___ftmul->___ftdiv
;;   ___awdiv->___awmod
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                15    15      0    2444
;;                                             30 BANK0     15    15      0
;;                            _quetled
;;                           ___awtoft
;;                            ___ftdiv
;;                            ___ftmul
;;                            ___fttol
;;                            ___awdiv
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) ___awtoft                                             4     1      3     300
;;                                              8 COMMON     4     1      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (1) ___ftmul                                             15     9      6     535
;;                                             15 BANK0     15     9      6
;;                           ___ftpack
;;                            ___ftdiv (ARG)
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftdiv                                             15     9      6     489
;;                                              0 BANK0     15     9      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              6     2      4     296
;;                                              0 BANK0      6     2      4
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              8     4      4     300
;;                                              6 BANK0      8     4      4
;;                            ___fttol (ARG)
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___fttol                                             13     9      4     252
;;                                              0 COMMON    13     9      4
;; ---------------------------------------------------------------------------------
;; (2) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (1) _quetled                                              3     1      2      66
;;                                              0 COMMON     3     1      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _quetled
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
;;     ___awmod (ARG)
;;       ___fttol (ARG)
;;   ___awmod
;;     ___fttol (ARG)
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
;;DATA                 0      0      46      12        0.0%
;;ABS                  0      0      44       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50     2D      37       5       68.8%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      D       D       1       92.9%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "D:\TTVXL\Project TTVXL\BT02week10ttvxl\BT02week10ttvxl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  res             3   42[BANK0 ] float 
;;  adc             2   40[BANK0 ] int 
;;  tram            2   36[BANK0 ] int 
;;  donvi           2   34[BANK0 ] int 
;;  chuc            2   32[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 160/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      13       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_quetled
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;;		___fttol
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT02week10ttvxl\BT02week10ttvxl.c"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	15
	
l3163:	
;BT02week10ttvxl.c: 15: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	23
;BT02week10ttvxl.c: 23: TRISB = 0x00;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	24
	
l3165:	
;BT02week10ttvxl.c: 24: TRISA0 = 1; ANS0 = 1;
	bsf	(1064/8)^080h,(1064)&7
	
l3167:	
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3136/8)^0180h,(3136)&7
	line	25
	
l3169:	
;BT02week10ttvxl.c: 25: ADCS1 = 1; ADCS0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(255/8),(255)&7
	
l3171:	
	bcf	(254/8),(254)&7
	line	26
	
l3173:	
;BT02week10ttvxl.c: 26: VCFG1 = 0; VCFG0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1277/8)^080h,(1277)&7
	
l3175:	
	bcf	(1276/8)^080h,(1276)&7
	line	27
	
l3177:	
;BT02week10ttvxl.c: 27: CHS3 = 0;CHS2 = 0; CHS1 = 0;CHS0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(253/8),(253)&7
	
l3179:	
	bcf	(252/8),(252)&7
	
l3181:	
	bcf	(251/8),(251)&7
	
l3183:	
	bcf	(250/8),(250)&7
	line	28
	
l3185:	
;BT02week10ttvxl.c: 28: ADFM = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1279/8)^080h,(1279)&7
	line	29
	
l3187:	
;BT02week10ttvxl.c: 29: ADON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(248/8),(248)&7
	line	30
	
l3189:	
;BT02week10ttvxl.c: 30: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u877:
	decfsz	((??_main+0)+0),f
	goto	u877
	decfsz	((??_main+0)+0+1),f
	goto	u877
	clrwdt
opt asmopt_on

	line	32
	
l3191:	
;BT02week10ttvxl.c: 32: TRISC = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	33
	
l3193:	
;BT02week10ttvxl.c: 33: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	34
	
l3195:	
;BT02week10ttvxl.c: 34: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	35
	
l3197:	
;BT02week10ttvxl.c: 35: PORTC = PORTD = PORTB =0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	clrf	(8)	;volatile
	clrf	(7)	;volatile
	line	39
	
l3199:	
;BT02week10ttvxl.c: 36: int chuc, donvi, tram;
;BT02week10ttvxl.c: 37: int adc;
;BT02week10ttvxl.c: 38: float res;
;BT02week10ttvxl.c: 39: quetled(0,0,0);
	clrf	(?_quetled)
	clrf	0+(?_quetled)+01h
	movlw	(0)
	fcall	_quetled
	line	42
	
l3201:	
;BT02week10ttvxl.c: 41: {
;BT02week10ttvxl.c: 42: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u887:
	decfsz	((??_main+0)+0),f
	goto	u887
	decfsz	((??_main+0)+0+1),f
	goto	u887
	clrwdt
opt asmopt_on

	line	43
	
l3203:	
;BT02week10ttvxl.c: 43: GO_nDONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	44
;BT02week10ttvxl.c: 44: while(GO_nDONE==1){}
	
l1032:	
	btfsc	(249/8),(249)&7
	goto	u861
	goto	u860
u861:
	goto	l1032
u860:
	line	45
	
l3205:	
;BT02week10ttvxl.c: 45: adc = ADRESH * 256 + ADRESL;
	movf	(30),w	;volatile
	movwf	(main@adc+1)
	clrf	(main@adc)
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	addwf	(main@adc),f
	skipnc
	incf	(main@adc+1),f
	line	46
	
l3207:	
;BT02week10ttvxl.c: 46: res = (adc/1023.0)*5.0;
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0xa0
	movwf	(?___ftmul+1)
	movlw	0x40
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
	line	47
	
l3209:	
;BT02week10ttvxl.c: 47: res = res*100.0;
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0xc8
	movwf	(?___ftmul+1)
	movlw	0x42
	movwf	(?___ftmul+2)
	movf	(main@res),w
	movwf	0+(?___ftmul)+03h
	movf	(main@res+1),w
	movwf	1+(?___ftmul)+03h
	movf	(main@res+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(main@res)
	movf	(1+(?___ftmul)),w
	movwf	(main@res+1)
	movf	(2+(?___ftmul)),w
	movwf	(main@res+2)
	line	48
	
l3211:	
;BT02week10ttvxl.c: 48: tram = (int)res/100;
	movlw	064h
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
	movf	(1+(?___awdiv)),w
	movwf	(main@tram+1)
	movf	(0+(?___awdiv)),w
	movwf	(main@tram)
	line	49
	
l3213:	
;BT02week10ttvxl.c: 49: chuc = (int)res%100/10;
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
	movwf	1+(?___awmod)+02h
	movf	0+(((0+(?___fttol)))),w
	movwf	0+(?___awmod)+02h
	movlw	064h
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(main@chuc+1)
	movf	(0+(?___awdiv)),w
	movwf	(main@chuc)
	line	50
	
l3215:	
;BT02week10ttvxl.c: 50: donvi = (int)res%100%10;
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
	movlw	064h
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	(_main$2643+1)
	movf	(0+(?___awmod)),w
	movwf	(_main$2643)
	
l3217:	
;BT02week10ttvxl.c: 50: donvi = (int)res%100%10;
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(_main$2643+1),w
	movwf	1+(?___awmod)+02h
	movf	(_main$2643),w
	movwf	0+(?___awmod)+02h
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	(main@donvi+1)
	movf	(0+(?___awmod)),w
	movwf	(main@donvi)
	line	51
	
l3219:	
;BT02week10ttvxl.c: 51: quetled(tram,chuc,donvi);
	movf	(main@chuc),w
	movwf	(?_quetled)
	movf	(main@donvi),w
	movwf	0+(?_quetled)+01h
	movf	(main@tram),w
	fcall	_quetled
	goto	l3201
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	53
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	___awtoft
psect	text134,local,class=CODE,delta=2
global __ptext134
__ptext134:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text134
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 6
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l3151:	
	clrf	(___awtoft@sign)
	line	37
	
l3153:	
	btfss	(___awtoft@c+1),7
	goto	u851
	goto	u850
u851:
	goto	l3159
u850:
	line	38
	
l3155:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l3157:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l3159:	
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
	
l2166:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text135,local,class=CODE,delta=2
global __ptext135
__ptext135:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   15[BANK0 ] float 
;;  f2              3   18[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   25[BANK0 ] unsigned um
;;  sign            1   29[BANK0 ] unsigned char 
;;  cntr            1   28[BANK0 ] unsigned char 
;;  exp             1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   15[BANK0 ] float 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text135
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 6
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l3095:	
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
	goto	u771
	goto	u770
u771:
	goto	l3101
u770:
	line	57
	
l3097:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2128
	line	58
	
l3101:	
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
	goto	u781
	goto	u780
u781:
	goto	l3107
u780:
	line	59
	
l3103:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2128
	line	60
	
l3107:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l3109:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l3111:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l3113:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l3115:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l3117:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l3119:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l3121:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l3123:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l3125:	
	btfss	(___ftmul@f1),(0)&7
	goto	u791
	goto	u790
u791:
	goto	l3129
u790:
	line	72
	
l3127:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u801
	addwf	(___ftmul@f3_as_product+1),f
u801:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u802
	addwf	(___ftmul@f3_as_product+2),f
u802:

	line	73
	
l3129:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l3131:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l3133:	
	decfsz	(___ftmul@cntr),f
	goto	u811
	goto	u810
u811:
	goto	l3125
u810:
	line	76
	
l3135:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l3137:	
	btfss	(___ftmul@f1),(0)&7
	goto	u821
	goto	u820
u821:
	goto	l3141
u820:
	line	79
	
l3139:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u831
	addwf	(___ftmul@f3_as_product+1),f
u831:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u832
	addwf	(___ftmul@f3_as_product+2),f
u832:

	line	80
	
l3141:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l3143:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l3145:	
	decfsz	(___ftmul@cntr),f
	goto	u841
	goto	u840
u841:
	goto	l3137
u840:
	line	83
	
l3147:	
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
	
l2128:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text136,local,class=CODE,delta=2
global __ptext136
__ptext136:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    0[BANK0 ] float 
;;  f1              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   10[BANK0 ] float 
;;  sign            1   14[BANK0 ] unsigned char 
;;  exp             1   13[BANK0 ] unsigned char 
;;  cntr            1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text136
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 6
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l3051:	
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
	goto	u731
	goto	u730
u731:
	goto	l3057
u730:
	line	56
	
l3053:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l2118
	line	57
	
l3057:	
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
	goto	u741
	goto	u740
u741:
	goto	l2119
u740:
	line	58
	
l3059:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l2118
	
l2119:	
	line	59
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	60
	
l3063:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l3065:	
	movf	0+(((___ftdiv@f1))+2),w
	movwf	(___ftdiv@sign)
	line	62
	
l3067:	
	movf	0+(((___ftdiv@f2))+2),w
	xorwf	(___ftdiv@sign),f
	line	63
	
l3069:	
	movlw	(080h)
	andwf	(___ftdiv@sign),f
	line	64
	
l3071:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	
l3073:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l3075:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	
l3077:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	
l3079:	
	movlw	(018h)
	movwf	(___ftdiv@cntr)
	line	70
	
l3081:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	71
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u755
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u755
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u755:
	skipc
	goto	u751
	goto	u750
u751:
	goto	l3087
u750:
	line	72
	
l3083:	
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
	
l3085:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	75
	
l3087:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	76
	
l3089:	
	decfsz	(___ftdiv@cntr),f
	goto	u761
	goto	u760
u761:
	goto	l3081
u760:
	line	77
	
l3091:	
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
	
l2118:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___awmod
psect	text137,local,class=CODE,delta=2
global __ptext137
__ptext137:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text137
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3015:	
	clrf	(___awmod@sign)
	line	9
	
l3017:	
	btfss	(___awmod@dividend+1),7
	goto	u661
	goto	u660
u661:
	goto	l3023
u660:
	line	10
	
l3019:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l3021:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l3023:	
	btfss	(___awmod@divisor+1),7
	goto	u671
	goto	u670
u671:
	goto	l3027
u670:
	line	14
	
l3025:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l3027:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u681
	goto	u680
u681:
	goto	l3043
u680:
	line	16
	
l3029:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l3033
	line	18
	
l3031:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l3033:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u691
	goto	u690
u691:
	goto	l3031
u690:
	line	22
	
l3035:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u705
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u705:
	skipc
	goto	u701
	goto	u700
u701:
	goto	l3039
u700:
	line	23
	
l3037:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l3039:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l3041:	
	decfsz	(___awmod@counter),f
	goto	u711
	goto	u710
u711:
	goto	l3035
u710:
	line	27
	
l3043:	
	movf	(___awmod@sign),w
	skipz
	goto	u720
	goto	l3047
u720:
	line	28
	
l3045:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l3047:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l2247:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text138,local,class=CODE,delta=2
global __ptext138
__ptext138:

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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text138
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2971:	
	clrf	(___awdiv@sign)
	line	10
	
l2973:	
	btfss	(___awdiv@divisor+1),7
	goto	u591
	goto	u590
u591:
	goto	l2979
u590:
	line	11
	
l2975:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l2977:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l2979:	
	btfss	(___awdiv@dividend+1),7
	goto	u601
	goto	u600
u601:
	goto	l2985
u600:
	line	15
	
l2981:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2983:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l2985:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2987:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u611
	goto	u610
u611:
	goto	l3007
u610:
	line	20
	
l2989:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l2993
	line	22
	
l2991:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l2993:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u621
	goto	u620
u621:
	goto	l2991
u620:
	line	26
	
l2995:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l2997:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u635
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u635:
	skipc
	goto	u631
	goto	u630
u631:
	goto	l3003
u630:
	line	28
	
l2999:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3001:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l3003:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l3005:	
	decfsz	(___awdiv@counter),f
	goto	u641
	goto	u640
u641:
	goto	l2995
u640:
	line	34
	
l3007:	
	movf	(___awdiv@sign),w
	skipz
	goto	u650
	goto	l3011
u650:
	line	35
	
l3009:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l3011:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l2179:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text139,local,class=CODE,delta=2
global __ptext139
__ptext139:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    8[COMMON] unsigned long 
;;  exp1            1   12[COMMON] unsigned char 
;;  sign1           1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         6       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:        13       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text139
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 7
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2933:	
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
	goto	u511
	goto	u510
u511:
	goto	l2937
u510:
	line	50
	
l2935:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l2139
	line	51
	
l2937:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u525:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u520:
	addlw	-1
	skipz
	goto	u525
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2939:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2941:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2943:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2945:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l2947:	
	btfss	(___fttol@exp1),7
	goto	u531
	goto	u530
u531:
	goto	l2957
u530:
	line	57
	
l2949:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u541
	goto	u540
u541:
	goto	l2953
u540:
	goto	l2935
	line	60
	
l2953:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l2955:	
	incfsz	(___fttol@exp1),f
	goto	u551
	goto	u550
u551:
	goto	l2953
u550:
	goto	l2963
	line	63
	
l2957:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u561
	goto	u560
u561:
	goto	l2146
u560:
	goto	l2935
	line	66
	
l2961:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l2146:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u571
	goto	u570
u571:
	goto	l2961
u570:
	line	70
	
l2963:	
	movf	(___fttol@sign1),w
	skipz
	goto	u580
	goto	l2967
u580:
	line	71
	
l2965:	
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
	
l2967:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l2139:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text140,local,class=CODE,delta=2
global __ptext140
__ptext140:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftdiv
;;		___ftmul
;;		___awtoft
;; This function uses a non-reentrant model
;;
psect	text140
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 6
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l2905:	
	movf	(___ftpack@exp),w
	skipz
	goto	u440
	goto	l2909
u440:
	
l2907:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u451
	goto	u450
u451:
	goto	l2915
u450:
	line	65
	
l2909:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l2364
	line	67
	
l2913:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l2915:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u461
	goto	u460
u461:
	goto	l2913
u460:
	goto	l2919
	line	71
	
l2917:	
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
	
l2919:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u471
	goto	u470
u471:
	goto	l2917
u470:
	goto	l2923
	line	76
	
l2921:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l2923:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u481
	goto	u480
u481:
	goto	l2921
u480:
	
l2373:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u491
	goto	u490
u491:
	goto	l2374
u490:
	line	80
	
l2925:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l2374:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l2927:	
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
	
l2929:	
	movf	(___ftpack@sign),w
	skipz
	goto	u500
	goto	l2375
u500:
	line	84
	
l2931:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2375:	
	line	85
	line	86
	
l2364:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	_quetled
psect	text141,local,class=CODE,delta=2
global __ptext141
__ptext141:

;; *************** function _quetled *****************
;; Defined at:
;;		line 56 in file "D:\TTVXL\Project TTVXL\BT02week10ttvxl\BT02week10ttvxl.c"
;; Parameters:    Size  Location     Type
;;  tram_t          1    wreg     unsigned char 
;;  chuc_t          1    0[COMMON] unsigned char 
;;  donvi_t         1    1[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  tram_t          1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text141
	file	"D:\TTVXL\Project TTVXL\BT02week10ttvxl\BT02week10ttvxl.c"
	line	56
	global	__size_of_quetled
	__size_of_quetled	equ	__end_of_quetled-_quetled
	
_quetled:	
	opt	stack 7
; Regs used in _quetled: [wreg-fsr0h+status,2+status,0]
;quetled@tram_t stored from wreg
	movwf	(quetled@tram_t)
	line	57
	
l2903:	
;BT02week10ttvxl.c: 57: PORTC = maled[tram_t];
	movf	(quetled@tram_t),w
	addlw	_maled&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	58
;BT02week10ttvxl.c: 58: PORTD = maled[chuc_t];
	movf	(quetled@chuc_t),w
	addlw	_maled&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(8)	;volatile
	line	59
;BT02week10ttvxl.c: 59: PORTB = maled[donvi_t];
	movf	(quetled@donvi_t),w
	addlw	_maled&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(6)	;volatile
	line	60
	
l1040:	
	return
	opt stack 0
GLOBAL	__end_of_quetled
	__end_of_quetled:
;; =============== function _quetled ends ============

	signat	_quetled,12408
psect	text142,local,class=CODE,delta=2
global __ptext142
__ptext142:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
