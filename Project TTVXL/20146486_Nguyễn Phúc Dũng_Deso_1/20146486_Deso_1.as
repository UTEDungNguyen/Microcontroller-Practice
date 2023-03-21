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
# 7 "D:\TTVXL\Project TTVXL\20146486_Deso_1\20146486_Deso_1.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "D:\TTVXL\Project TTVXL\20146486_Deso_1\20146486_Deso_1.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_tx
	FNCALL	_main,_rx
	FNCALL	_main,_atoi
	FNCALL	_main,_gocquay
	FNCALL	_gocquay,___awtoft
	FNCALL	_gocquay,___ftmul
	FNCALL	_gocquay,___ftadd
	FNCALL	_gocquay,___fttol
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_atoi,___wmul
	FNCALL	_atoi,_isdigit
	FNROOT	_main
	FNCALL	intlevel1,_ngat
	global	intlevel1
	FNROOT	intlevel1
	global	_data_rx
	global	_A
	global	_a
	global	_angle
	global	_dem
	global	_RCREG
psect	text356,local,class=CODE,delta=2
global __ptext356
__ptext356:
_RCREG	set	26
	global	_TMR2
_TMR2	set	17
	global	_CREN
_CREN	set	196
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RCIF
_RCIF	set	101
	global	_RE0
_RE0	set	72
	global	_RX9
_RX9	set	198
	global	_SPEN
_SPEN	set	199
	global	_T2CKPS0
_T2CKPS0	set	144
	global	_T2CKPS1
_T2CKPS1	set	145
	global	_TMR2IF
_TMR2IF	set	97
	global	_TMR2ON
_TMR2ON	set	146
	global	_TOUTPS0
_TOUTPS0	set	147
	global	_TOUTPS1
_TOUTPS1	set	148
	global	_TOUTPS2
_TOUTPS2	set	149
	global	_TOUTPS3
_TOUTPS3	set	150
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
	global	_TMR2IE
_TMR2IE	set	1121
	global	_TRISE0
_TRISE0	set	1096
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
	file	"20146486_Deso_1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_dem:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_data_rx:
       ds      10

_A:
       ds      2

_a:
       ds      2

_angle:
       ds      2

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+010h)
	fcall	clear_ram
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
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x3
	global	_isdigit$2331
_isdigit$2331:	; 1 bytes @ 0x3
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x3
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x3
	ds	1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x4
	ds	1
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x5
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x6
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x7
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x7
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x7
	ds	1
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0x8
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x8
	ds	1
	global	??_gocquay
??_gocquay:	; 0 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x0
	global	?_atoi
?_atoi:	; 2 bytes @ 0x0
	ds	2
	global	??_atoi
??_atoi:	; 0 bytes @ 0x2
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x3
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x3
	ds	1
	global	atoi@sign
atoi@sign:	; 1 bytes @ 0x4
	ds	1
	global	atoi@a
atoi@a:	; 2 bytes @ 0x5
	ds	2
	global	??___fttol
??___fttol:	; 0 bytes @ 0x7
	global	atoi@s
atoi@s:	; 1 bytes @ 0x7
	ds	3
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0xA
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0xB
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xF
	ds	1
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x10
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x10
	ds	3
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x13
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x13
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x16
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x19
	ds	3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1C
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1D
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x20
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x21
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x22
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x22
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x25
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x28
	ds	3
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x2B
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x2C
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x2D
	ds	1
	global	?_gocquay
?_gocquay:	; 0 bytes @ 0x2E
	global	gocquay@goc
gocquay@goc:	; 2 bytes @ 0x2E
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x30
	ds	1
	global	main@gocquay_start
main@gocquay_start:	; 3 bytes @ 0x31
	ds	3
	global	main@b
main@b:	; 2 bytes @ 0x34
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 18, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      11
;; BANK0           80     54      70
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?_atoi	int  size(1) Largest target is 0
;;
;; atoi@s	PTR const unsigned char  size(1) Largest target is 3
;;		 -> main@gocquay_start(BANK0[3]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _gocquay->___awtoft
;;   ___awtoft->___ftpack
;;   ___ftmul->___awtoft
;;   ___ftadd->___awtoft
;;   _atoi->___wmul
;;   ___fttol->___ftpack
;;
;; Critical Paths under _ngat in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_gocquay
;;   _gocquay->___ftadd
;;   ___awtoft->___fttol
;;   ___ftmul->___awtoft
;;   ___ftadd->___ftmul
;;   ___fttol->___ftpack
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
;; (0) _main                                                16    16      0    3775
;;                                             48 BANK0      6     6      0
;;                                 _tx
;;                                 _rx
;;                               _atoi
;;                            _gocquay
;; ---------------------------------------------------------------------------------
;; (1) _gocquay                                              2     0      2    3065
;;                                             46 BANK0      2     0      2
;;                           ___awtoft
;;                            ___ftmul
;;                            ___ftadd
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (2) ___awtoft                                             4     1      3     445
;;                                              8 COMMON     1     1      0
;;                                             16 BANK0      3     0      3
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             15     9      6     800
;;                                             19 BANK0     15     9      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftadd                                             12     6      6    1537
;;                                             34 BANK0     12     6      6
;;                           ___ftpack
;;                            ___ftmul (ARG)
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _atoi                                                 8     6      2     494
;;                                              0 BANK0      8     6      2
;;                             ___wmul
;;                            _isdigit
;; ---------------------------------------------------------------------------------
;; (2) ___fttol                                             13     9      4     252
;;                                              3 BANK0     13     9      4
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     312
;;                                              3 COMMON     5     0      5
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              3 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) _isdigit                                              2     2      0      68
;;                                              3 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _rx                                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _tx                                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _ngat                                                 3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _tx
;;   _rx
;;   _atoi
;;     ___wmul
;;     _isdigit
;;   _gocquay
;;     ___awtoft
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     ___ftadd
;;       ___ftpack
;;       ___ftmul (ARG)
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     ___fttol
;;       ___ftpack (ARG)
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
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      51       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     36      46       5       87.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      54      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 19 in file "D:\TTVXL\Project TTVXL\20146486_Deso_1\20146486_Deso_1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  b               2   52[BANK0 ] int 
;;  data_tx        10    0        unsigned char [10]
;;  gocquay_star    3   49[BANK0 ] unsigned char [3]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_tx
;;		_rx
;;		_atoi
;;		_gocquay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\20146486_Deso_1\20146486_Deso_1.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	20
	
l3523:	
;20146486_Deso_1.c: 20: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	21
	
l3525:	
;20146486_Deso_1.c: 21: TRISE0 = 0; RE0 = 1;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1096/8)^080h,(1096)&7
	
l3527:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(72/8),(72)&7
	line	24
	
l3529:	
;20146486_Deso_1.c: 24: T2CKPS1 = 0; T2CKPS0 = 0;
	bcf	(145/8),(145)&7
	
l3531:	
	bcf	(144/8),(144)&7
	line	25
;20146486_Deso_1.c: 25: TMR2 = 0;PR2 = 79;
	clrf	(17)	;volatile
	
l3533:	
	movlw	(04Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	26
	
l3535:	
;20146486_Deso_1.c: 26: TOUTPS3 = 0;TOUTPS2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(150/8),(150)&7
	
l3537:	
	bcf	(149/8),(149)&7
	line	27
	
l3539:	
;20146486_Deso_1.c: 27: TOUTPS1 = 0;TOUTPS0 = 0;
	bcf	(148/8),(148)&7
	
l3541:	
	bcf	(147/8),(147)&7
	line	28
	
l3543:	
;20146486_Deso_1.c: 28: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	29
	
l3545:	
;20146486_Deso_1.c: 29: TMR2IE = 1; TMR2IF = 0; PEIE = 1; GIE =1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1121/8)^080h,(1121)&7
	
l3547:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(97/8),(97)&7
	
l3549:	
	bsf	(94/8),(94)&7
	
l3551:	
	bsf	(95/8),(95)&7
	line	32
	
l3553:	
;20146486_Deso_1.c: 32: tx();
	fcall	_tx
	line	33
	
l3555:	
;20146486_Deso_1.c: 33: rx();
	fcall	_rx
	line	40
	
l3557:	
;20146486_Deso_1.c: 38: {
;20146486_Deso_1.c: 40: for (int b=0;b<=2;b++){
	clrf	(main@b)
	clrf	(main@b+1)
	line	41
	
l3563:	
;20146486_Deso_1.c: 41: gocquay_start[b]=data_rx[b];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@b),w
	addlw	_data_rx&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(main@b),w
	addlw	main@gocquay_start&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	line	40
	
l3565:	
	incf	(main@b),f
	skipnz
	incf	(main@b+1),f
	
l3567:	
	movf	(main@b+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1655
	movlw	low(03h)
	subwf	(main@b),w
u1655:

	skipc
	goto	u1651
	goto	u1650
u1651:
	goto	l3563
u1650:
	line	43
	
l3569:	
;20146486_Deso_1.c: 42: }
;20146486_Deso_1.c: 43: angle=atoi(gocquay_start);
	movlw	(main@gocquay_start)&0ffh
	fcall	_atoi
	movf	(1+(?_atoi)),w
	movwf	(_angle+1)
	movf	(0+(?_atoi)),w
	movwf	(_angle)
	line	44
	
l3571:	
;20146486_Deso_1.c: 44: if (angle <= 179){angle++;}
	movf	(_angle+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0B4h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1665
	movlw	low(0B4h)
	subwf	(_angle),w
u1665:

	skipnc
	goto	u1661
	goto	u1660
u1661:
	goto	l3575
u1660:
	
l3573:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_angle),f
	skipnz
	incf	(_angle+1),f
	line	45
	
l3575:	
;20146486_Deso_1.c: 45: gocquay(angle);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_angle+1),w
	movwf	(?_gocquay+1)
	movf	(_angle),w
	movwf	(?_gocquay)
	fcall	_gocquay
	goto	l3557
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	47
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_gocquay
psect	text357,local,class=CODE,delta=2
global __ptext357
__ptext357:

;; *************** function _gocquay *****************
;; Defined at:
;;		line 67 in file "D:\TTVXL\Project TTVXL\20146486_Deso_1\20146486_Deso_1.c"
;; Parameters:    Size  Location     Type
;;  goc             2   46[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awtoft
;;		___ftmul
;;		___ftadd
;;		___fttol
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text357
	file	"D:\TTVXL\Project TTVXL\20146486_Deso_1\20146486_Deso_1.c"
	line	67
	global	__size_of_gocquay
	__size_of_gocquay	equ	__end_of_gocquay-_gocquay
	
_gocquay:	
	opt	stack 4
; Regs used in _gocquay: [wreg+status,2+status,0+pclath+cstack]
	line	68
	
l3521:	
;20146486_Deso_1.c: 68: A = 50 + goc*(1/3.6);
	movf	(gocquay@goc+1),w
	movwf	(?___awtoft+1)
	movf	(gocquay@goc),w
	movwf	(?___awtoft)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___awtoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___awtoft)),w
	movwf	2+(?___ftmul)+03h
	movlw	0x39
	movwf	(?___ftmul)
	movlw	0x8e
	movwf	(?___ftmul+1)
	movlw	0x3e
	movwf	(?___ftmul+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftmul)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftmul)),w
	movwf	2+(?___ftadd)+03h
	movlw	0x0
	movwf	(?___ftadd)
	movlw	0x48
	movwf	(?___ftadd+1)
	movlw	0x42
	movwf	(?___ftadd+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(?___fttol)
	movf	(1+(?___ftadd)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	movwf	(_A+1)
	movf	0+(((0+(?___fttol)))),w
	movwf	(_A)
	line	69
	
l1060:	
	return
	opt stack 0
GLOBAL	__end_of_gocquay
	__end_of_gocquay:
;; =============== function _gocquay ends ============

	signat	_gocquay,4216
	global	___awtoft
psect	text358,local,class=CODE,delta=2
global __ptext358
__ptext358:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   16[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   16[BANK0 ] float 
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
;;		_gocquay
;; This function uses a non-reentrant model
;;
psect	text358
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 4
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l3509:	
	clrf	(___awtoft@sign)
	line	37
	
l3511:	
	btfss	(___awtoft@c+1),7
	goto	u1641
	goto	u1640
u1641:
	goto	l3517
u1640:
	line	38
	
l3513:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l3515:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l3517:	
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
	
l2224:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text359,local,class=CODE,delta=2
global __ptext359
__ptext359:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   19[BANK0 ] float 
;;  f2              3   22[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   29[BANK0 ] unsigned um
;;  sign            1   33[BANK0 ] unsigned char 
;;  cntr            1   32[BANK0 ] unsigned char 
;;  exp             1   28[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   19[BANK0 ] float 
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
;;		_gocquay
;; This function uses a non-reentrant model
;;
psect	text359
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 4
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l3453:	
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
	goto	u1561
	goto	u1560
u1561:
	goto	l3459
u1560:
	line	57
	
l3455:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2186
	line	58
	
l3459:	
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
	goto	u1571
	goto	u1570
u1571:
	goto	l3465
u1570:
	line	59
	
l3461:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2186
	line	60
	
l3465:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l3467:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l3469:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l3471:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l3473:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l3475:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l3477:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l3479:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l3481:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l3483:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1581
	goto	u1580
u1581:
	goto	l3487
u1580:
	line	72
	
l3485:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1591
	addwf	(___ftmul@f3_as_product+1),f
u1591:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1592
	addwf	(___ftmul@f3_as_product+2),f
u1592:

	line	73
	
l3487:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l3489:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l3491:	
	decfsz	(___ftmul@cntr),f
	goto	u1601
	goto	u1600
u1601:
	goto	l3483
u1600:
	line	76
	
l3493:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l3495:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1611
	goto	u1610
u1611:
	goto	l3499
u1610:
	line	79
	
l3497:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1621
	addwf	(___ftmul@f3_as_product+1),f
u1621:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1622
	addwf	(___ftmul@f3_as_product+2),f
u1622:

	line	80
	
l3499:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l3501:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l3503:	
	decfsz	(___ftmul@cntr),f
	goto	u1631
	goto	u1630
u1631:
	goto	l3495
u1630:
	line	83
	
l3505:	
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
	
l2186:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftadd
psect	text360,local,class=CODE,delta=2
global __ptext360
__ptext360:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   34[BANK0 ] float 
;;  f2              3   37[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   45[BANK0 ] unsigned char 
;;  exp2            1   44[BANK0 ] unsigned char 
;;  sign            1   43[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   34[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_gocquay
;; This function uses a non-reentrant model
;;
psect	text360
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 4
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l3375:	
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(___ftadd@exp2)
	line	92
	
l3377:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u1360
	goto	l3383
u1360:
	
l3379:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1371
	goto	u1370
u1371:
	goto	l3387
u1370:
	
l3381:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1381
	goto	u1380
u1381:
	goto	l3387
u1380:
	line	93
	
l3383:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l2134
	line	94
	
l3387:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u1390
	goto	l2137
u1390:
	
l3389:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1401
	goto	u1400
u1401:
	goto	l3393
u1400:
	
l3391:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1411
	goto	u1410
u1411:
	goto	l3393
u1410:
	
l2137:	
	line	95
	goto	l2134
	line	96
	
l3393:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
l3395:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u1421
	goto	u1420
u1421:
	goto	l2138
u1420:
	line	98
	
l3397:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l2138:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1431
	goto	u1430
u1431:
	goto	l2139
u1430:
	line	100
	
l3399:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l2139:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l3401:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l3403:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1441
	goto	u1440
u1441:
	goto	l3415
u1440:
	line	110
	
l3405:	
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
l3407:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1451
	goto	u1450
u1451:
	goto	l3413
u1450:
	
l3409:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1461
	goto	u1460
u1461:
	goto	l3405
u1460:
	goto	l3413
	line	114
	
l3411:	
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
l3413:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1471
	goto	u1470
u1471:
	goto	l3411
u1470:
	goto	l2148
	line	117
	
l3415:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1481
	goto	u1480
u1481:
	goto	l2148
u1480:
	line	121
	
l3417:	
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
l3419:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1491
	goto	u1490
u1491:
	goto	l3425
u1490:
	
l3421:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1501
	goto	u1500
u1501:
	goto	l3417
u1500:
	goto	l3425
	line	125
	
l3423:	
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
l3425:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1511
	goto	u1510
u1511:
	goto	l3423
u1510:
	line	129
	
l2148:	
	btfss	(___ftadd@sign),(7)&7
	goto	u1521
	goto	u1520
u1521:
	goto	l3431
u1520:
	line	131
	
l3427:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
l3429:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
l3431:	
	btfss	(___ftadd@sign),(6)&7
	goto	u1531
	goto	u1530
u1531:
	goto	l3437
u1530:
	line	136
	
l3433:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
l3435:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
l3437:	
	clrf	(___ftadd@sign)
	line	140
	
l3439:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u1541
	addwf	(___ftadd@f2+1),f
u1541:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u1542
	addwf	(___ftadd@f2+2),f
u1542:

	line	141
	
l3441:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1551
	goto	u1550
u1551:
	goto	l3449
u1550:
	line	142
	
l3443:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
l3445:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
l3447:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l3449:	
	movf	(___ftadd@f2),w
	movwf	(?___ftpack)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftpack+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftpack+2)
	movf	(___ftadd@exp1),w
	movwf	0+(?___ftpack)+03h
	movf	(___ftadd@sign),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	line	148
	
l2134:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_atoi
psect	text361,local,class=CODE,delta=2
global __ptext361
__ptext361:

;; *************** function _atoi *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\atoi.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> main@gocquay_start(3), 
;; Auto vars:     Size  Location     Type
;;  s               1    7[BANK0 ] PTR const unsigned char 
;;		 -> main@gocquay_start(3), 
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
psect	text361
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
	
l3341:	
	goto	l3345
	line	11
	
l3343:	
	incf	(atoi@s),f
	line	10
	
l3345:	
	movf	(atoi@s),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	020h
	skipnz
	goto	u1301
	goto	u1300
u1301:
	goto	l3343
u1300:
	
l3347:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	09h
	skipnz
	goto	u1311
	goto	u1310
u1311:
	goto	l3343
u1310:
	line	12
	
l3349:	
	clrf	(atoi@a)
	clrf	(atoi@a+1)
	line	13
	clrf	(atoi@sign)
	line	14
	
l3351:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Dh
	skipz
	goto	u1321
	goto	u1320
u1321:
	goto	l3355
u1320:
	line	15
	
l3353:	
	incf	(atoi@sign),f
	line	16
	incf	(atoi@s),f
	line	17
	goto	l3363
	
l3355:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Bh
	skipz
	goto	u1331
	goto	u1330
u1331:
	goto	l3363
u1330:
	line	18
	
l3357:	
	incf	(atoi@s),f
	goto	l3363
	line	20
	
l3359:	
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
	goto	l3357
	line	19
	
l3363:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	fcall	_isdigit
	btfsc	status,0
	goto	u1341
	goto	u1340
u1341:
	goto	l3359
u1340:
	line	21
	
l3365:	
	movf	(atoi@sign),w
	skipz
	goto	u1350
	goto	l3371
u1350:
	line	22
	
l3367:	
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
	goto	l2073
	line	23
	
l3371:	
	movf	(atoi@a+1),w
	movwf	(?_atoi+1)
	movf	(atoi@a),w
	movwf	(?_atoi)
	line	24
	
l2073:	
	return
	opt stack 0
GLOBAL	__end_of_atoi
	__end_of_atoi:
;; =============== function _atoi ends ============

	signat	_atoi,4218
	global	___fttol
psect	text362,local,class=CODE,delta=2
global __ptext362
__ptext362:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   11[BANK0 ] unsigned long 
;;  exp1            1   15[BANK0 ] unsigned char 
;;  sign1           1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    3[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_gocquay
;; This function uses a non-reentrant model
;;
psect	text362
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l3029:	
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
	goto	u781
	goto	u780
u781:
	goto	l3033
u780:
	line	50
	
l3031:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l2197
	line	51
	
l3033:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u795:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u790:
	addlw	-1
	skipz
	goto	u795
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l3035:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l3037:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l3039:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l3041:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l3043:	
	btfss	(___fttol@exp1),7
	goto	u801
	goto	u800
u801:
	goto	l3053
u800:
	line	57
	
l3045:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u811
	goto	u810
u811:
	goto	l3049
u810:
	goto	l3031
	line	60
	
l3049:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l3051:	
	incfsz	(___fttol@exp1),f
	goto	u821
	goto	u820
u821:
	goto	l3049
u820:
	goto	l3059
	line	63
	
l3053:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u831
	goto	u830
u831:
	goto	l2204
u830:
	goto	l3031
	line	66
	
l3057:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l2204:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u841
	goto	u840
u841:
	goto	l3057
u840:
	line	70
	
l3059:	
	movf	(___fttol@sign1),w
	skipz
	goto	u850
	goto	l3063
u850:
	line	71
	
l3061:	
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
	
l3063:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l2197:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text363,local,class=CODE,delta=2
global __ptext363
__ptext363:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    3[COMMON] unsigned um
;;  exp             1    6[COMMON] unsigned char 
;;  sign            1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    3[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         5       3       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftmul
;;		___awtoft
;; This function uses a non-reentrant model
;;
psect	text363
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l3313:	
	movf	(___ftpack@exp),w
	skipz
	goto	u1230
	goto	l3317
u1230:
	
l3315:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1241
	goto	u1240
u1241:
	goto	l3323
u1240:
	line	65
	
l3317:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l2422
	line	67
	
l3321:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l3323:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1251
	goto	u1250
u1251:
	goto	l3321
u1250:
	goto	l3327
	line	71
	
l3325:	
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
	
l3327:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1261
	goto	u1260
u1261:
	goto	l3325
u1260:
	goto	l3331
	line	76
	
l3329:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l3331:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u1271
	goto	u1270
u1271:
	goto	l3329
u1270:
	
l2431:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1281
	goto	u1280
u1281:
	goto	l2432
u1280:
	line	80
	
l3333:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l2432:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l3335:	
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
	
l3337:	
	movf	(___ftpack@sign),w
	skipz
	goto	u1290
	goto	l2433
u1290:
	line	84
	
l3339:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2433:	
	line	85
	line	86
	
l2422:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___wmul
psect	text364,local,class=CODE,delta=2
global __ptext364
__ptext364:

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
;;		_atoi
;; This function uses a non-reentrant model
;;
psect	text364
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l2985:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l2987:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u691
	goto	u690
u691:
	goto	l2991
u690:
	line	8
	
l2989:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l2991:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l2993:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l2995:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u701
	goto	u700
u701:
	goto	l2987
u700:
	line	12
	
l2997:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l2090:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_isdigit
psect	text365,local,class=CODE,delta=2
global __ptext365
__ptext365:

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
psect	text365
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 5
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l2973:	
	clrf	(_isdigit$2331)
	
l2975:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u671
	goto	u670
u671:
	goto	l2981
u670:
	
l2977:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u681
	goto	u680
u681:
	goto	l2981
u680:
	
l2979:	
	clrf	(_isdigit$2331)
	incf	(_isdigit$2331),f
	
l2981:	
	rrf	(_isdigit$2331),w
	
	line	15
	
l2078:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_rx
psect	text366,local,class=CODE,delta=2
global __ptext366
__ptext366:

;; *************** function _rx *****************
;; Defined at:
;;		line 86 in file "D:\TTVXL\Project TTVXL\20146486_Deso_1\20146486_Deso_1.c"
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
psect	text366
	file	"D:\TTVXL\Project TTVXL\20146486_Deso_1\20146486_Deso_1.c"
	line	86
	global	__size_of_rx
	__size_of_rx	equ	__end_of_rx-_rx
	
_rx:	
	opt	stack 6
; Regs used in _rx: [wreg]
	line	87
	
l2927:	
;20146486_Deso_1.c: 87: SYNC = 0; BRGH = 1; BRG16 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	88
	
l2929:	
;20146486_Deso_1.c: 88: SPBRGH = 0x01;
	movlw	(01h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	89
;20146486_Deso_1.c: 89: SPBRG = 21;
	movlw	(015h)
	movwf	(153)^080h	;volatile
	line	90
	
l2931:	
;20146486_Deso_1.c: 90: CREN = 1; RX9 = 0; SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(196/8),(196)&7
	
l2933:	
	bcf	(198/8),(198)&7
	
l2935:	
	bsf	(199/8),(199)&7
	line	91
	
l2937:	
;20146486_Deso_1.c: 91: RCIE=1; RCIF=0; PEIE=1; GIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1125/8)^080h,(1125)&7
	
l2939:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(101/8),(101)&7
	
l2941:	
	bsf	(94/8),(94)&7
	
l2943:	
	bsf	(95/8),(95)&7
	line	92
	
l1078:	
	return
	opt stack 0
GLOBAL	__end_of_rx
	__end_of_rx:
;; =============== function _rx ends ============

	signat	_rx,88
	global	_tx
psect	text367,local,class=CODE,delta=2
global __ptext367
__ptext367:

;; *************** function _tx *****************
;; Defined at:
;;		line 79 in file "D:\TTVXL\Project TTVXL\20146486_Deso_1\20146486_Deso_1.c"
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
psect	text367
	file	"D:\TTVXL\Project TTVXL\20146486_Deso_1\20146486_Deso_1.c"
	line	79
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
	
_tx:	
	opt	stack 6
; Regs used in _tx: [wreg]
	line	80
	
l2917:	
;20146486_Deso_1.c: 80: SYNC = 0; BRGH = 1; BRG16 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	81
	
l2919:	
;20146486_Deso_1.c: 81: SPBRGH = 0x01;
	movlw	(01h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	82
;20146486_Deso_1.c: 82: SPBRG = 21;
	movlw	(015h)
	movwf	(153)^080h	;volatile
	line	83
	
l2921:	
;20146486_Deso_1.c: 83: TXEN = 1; TX9 = 0; SPEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	
l2923:	
	bcf	(1222/8)^080h,(1222)&7
	
l2925:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	84
	
l1075:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
;; =============== function _tx ends ============

	signat	_tx,88
	global	_ngat
psect	text368,local,class=CODE,delta=2
global __ptext368
__ptext368:

;; *************** function _ngat *****************
;; Defined at:
;;		line 50 in file "D:\TTVXL\Project TTVXL\20146486_Deso_1\20146486_Deso_1.c"
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
psect	text368
	file	"D:\TTVXL\Project TTVXL\20146486_Deso_1\20146486_Deso_1.c"
	line	50
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
	opt	stack 4
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
psect	text368
	line	51
	
i1l2945:	
;20146486_Deso_1.c: 51: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7
	goto	u62_21
	goto	u62_20
u62_21:
	goto	i1l2959
u62_20:
	line	52
	
i1l2947:	
;20146486_Deso_1.c: 52: { dem++;
	incf	(_dem),f
	skipnz
	incf	(_dem+1),f
	line	53
	
i1l2949:	
;20146486_Deso_1.c: 53: if (dem == A){RE0 = 0;}
	movf	(_A+1),w
	xorwf	(_dem+1),w
	skipz
	goto	u63_25
	movf	(_A),w
	xorwf	(_dem),w
u63_25:

	skipz
	goto	u63_21
	goto	u63_20
u63_21:
	goto	i1l2953
u63_20:
	
i1l2951:	
	bcf	(72/8),(72)&7
	line	54
	
i1l2953:	
;20146486_Deso_1.c: 54: if (dem == 1000){dem = 0;RE0 = 1;}
		movf	(_dem+1),w
	xorlw	3
	movlw	232
	skipnz
	xorwf	(_dem),w

	skipz
	goto	u64_21
	goto	u64_20
u64_21:
	goto	i1l2959
u64_20:
	
i1l2955:	
	clrf	(_dem)
	clrf	(_dem+1)
	
i1l2957:	
	bsf	(72/8),(72)&7
	line	56
	
i1l2959:	
;20146486_Deso_1.c: 55: }
;20146486_Deso_1.c: 56: TMR2IF = 0;
	bcf	(97/8),(97)&7
	line	58
	
i1l2961:	
;20146486_Deso_1.c: 58: if (RCIF){
	btfss	(101/8),(101)&7
	goto	u65_21
	goto	u65_20
u65_21:
	goto	i1l2971
u65_20:
	line	59
	
i1l2963:	
;20146486_Deso_1.c: 59: data_rx[a]=RCREG;
	movf	(_a),w
	addlw	_data_rx&0ffh
	movwf	fsr0
	movf	(26),w	;volatile
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	60
	
i1l2965:	
;20146486_Deso_1.c: 60: a++;
	incf	(_a),f
	skipnz
	incf	(_a+1),f
	line	61
	
i1l2967:	
;20146486_Deso_1.c: 61: if (a==3) {a=0;}
		movf	(_a),w
	xorlw	3
	iorwf	(_a+1),w

	skipz
	goto	u66_21
	goto	u66_20
u66_21:
	goto	i1l2971
u66_20:
	
i1l2969:	
	clrf	(_a)
	clrf	(_a+1)
	line	63
	
i1l2971:	
;20146486_Deso_1.c: 62: }
;20146486_Deso_1.c: 63: RCIF=0;
	bcf	(101/8),(101)&7
	line	64
	
i1l1057:	
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
psect	text369,local,class=CODE,delta=2
global __ptext369
__ptext369:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
