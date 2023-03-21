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
# 7 "D:\TTVXL\Project TTVXL\BT02week13ttvxl\BT02week13ttvxl.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "D:\TTVXL\Project TTVXL\BT02week13ttvxl\BT02week13ttvxl.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_gocquay
	FNCALL	_gocquay,___awtoft
	FNCALL	_gocquay,___ftmul
	FNCALL	_gocquay,___ftadd
	FNCALL	_gocquay,___fttol
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNROOT	_main
	FNCALL	intlevel1,_ngat
	global	intlevel1
	FNROOT	intlevel1
	global	_dem
	global	_A
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_A:
       ds      2

	global	_TMR2
_TMR2	set	17
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RE0
_RE0	set	72
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
	global	_TMR2IE
_TMR2IE	set	1121
	global	_TRISE0
_TRISE0	set	1096
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"BT02week13ttvxl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_dem:
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
	global	?_ngat
?_ngat:	; 0 bytes @ 0x0
	global	??_ngat
??_ngat:	; 0 bytes @ 0x0
	ds	2
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x2
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x2
	ds	3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x5
	ds	1
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x6
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x7
	ds	3
	global	??_gocquay
??_gocquay:	; 0 bytes @ 0xA
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xA
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___fttol
?___fttol:	; 4 bytes @ 0x0
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x0
	ds	4
	global	??___fttol
??___fttol:	; 0 bytes @ 0x4
	ds	3
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x7
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x8
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xC
	ds	1
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0xD
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0xD
	ds	3
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x10
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x11
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x11
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x14
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x17
	ds	3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1A
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1B
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1E
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1F
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x20
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x20
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x23
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x26
	ds	3
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x29
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x2A
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x2B
	ds	1
	global	?_gocquay
?_gocquay:	; 0 bytes @ 0x2C
	global	gocquay@goc
gocquay@goc:	; 2 bytes @ 0x2C
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x2E
	ds	3
;;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 2 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      12
;; BANK0           80     49      51
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?_lcd_putc	int  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   ___awtoft->___ftpack
;;   ___ftmul->___ftpack
;;   ___ftadd->___ftpack
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0    3065
;;                                             46 BANK0      3     3      0
;;                            _gocquay
;; ---------------------------------------------------------------------------------
;; (1) _gocquay                                              2     0      2    3065
;;                                             44 BANK0      2     0      2
;;                           ___awtoft
;;                            ___ftmul
;;                            ___ftadd
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (2) ___awtoft                                             4     1      3     445
;;                                             13 BANK0      4     1      3
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             15     9      6     800
;;                                             17 BANK0     15     9      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftadd                                             12     6      6    1537
;;                                             32 BANK0     12     6      6
;;                           ___ftpack
;;                            ___ftmul (ARG)
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___fttol                                             13     9      4     252
;;                                              0 BANK0     13     9      4
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     312
;;                                              2 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _ngat                                                 2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
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
;;COMMON               E      A       C       1       85.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      3F       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     31      33       5       63.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      42      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 14 in file "D:\TTVXL\Project TTVXL\BT02week13ttvxl\BT02week13ttvxl.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_gocquay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT02week13ttvxl\BT02week13ttvxl.c"
	line	14
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	15
	
l3203:	
;BT02week13ttvxl.c: 15: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	16
	
l3205:	
;BT02week13ttvxl.c: 16: TRISE0 = 0; RE0 = 1;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1096/8)^080h,(1096)&7
	
l3207:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(72/8),(72)&7
	line	19
	
l3209:	
;BT02week13ttvxl.c: 19: T2CKPS1 = 0; T2CKPS0 = 0;
	bcf	(145/8),(145)&7
	
l3211:	
	bcf	(144/8),(144)&7
	line	20
;BT02week13ttvxl.c: 20: TMR2 = 0;PR2 = 49;
	clrf	(17)	;volatile
	
l3213:	
	movlw	(031h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	21
	
l3215:	
;BT02week13ttvxl.c: 21: TOUTPS3 = 0;TOUTPS2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(150/8),(150)&7
	
l3217:	
	bcf	(149/8),(149)&7
	line	22
	
l3219:	
;BT02week13ttvxl.c: 22: TOUTPS1 = 0;TOUTPS0 = 0;
	bcf	(148/8),(148)&7
	
l3221:	
	bcf	(147/8),(147)&7
	line	23
	
l3223:	
;BT02week13ttvxl.c: 23: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	24
	
l3225:	
;BT02week13ttvxl.c: 24: TMR2IE = 1; TMR2IF = 0; PEIE = 1; GIE =1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1121/8)^080h,(1121)&7
	
l3227:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(97/8),(97)&7
	
l3229:	
	bsf	(94/8),(94)&7
	
l3231:	
	bsf	(95/8),(95)&7
	line	27
	
l3233:	
;BT02week13ttvxl.c: 26: {
;BT02week13ttvxl.c: 27: gocquay(30);
	movlw	01Eh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_gocquay)
	clrf	(?_gocquay+1)
	fcall	_gocquay
	line	28
	
l3235:	
;BT02week13ttvxl.c: 28: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u1317:
	decfsz	((??_main+0)+0),f
	goto	u1317
	decfsz	((??_main+0)+0+1),f
	goto	u1317
	decfsz	((??_main+0)+0+2),f
	goto	u1317
	clrwdt
opt asmopt_on

	line	29
	
l3237:	
;BT02week13ttvxl.c: 29: gocquay(90);
	movlw	05Ah
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_gocquay)
	clrf	(?_gocquay+1)
	fcall	_gocquay
	line	30
	
l3239:	
;BT02week13ttvxl.c: 30: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u1327:
	decfsz	((??_main+0)+0),f
	goto	u1327
	decfsz	((??_main+0)+0+1),f
	goto	u1327
	decfsz	((??_main+0)+0+2),f
	goto	u1327
	clrwdt
opt asmopt_on

	line	31
	
l3241:	
;BT02week13ttvxl.c: 31: gocquay(150);
	movlw	096h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_gocquay)
	clrf	(?_gocquay+1)
	fcall	_gocquay
	line	32
	
l3243:	
;BT02week13ttvxl.c: 32: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u1337:
	decfsz	((??_main+0)+0),f
	goto	u1337
	decfsz	((??_main+0)+0+1),f
	goto	u1337
	decfsz	((??_main+0)+0+2),f
	goto	u1337
	clrwdt
opt asmopt_on

	line	33
	
l3245:	
;BT02week13ttvxl.c: 33: gocquay(0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_gocquay)
	clrf	(?_gocquay+1)
	fcall	_gocquay
	line	34
	
l3247:	
;BT02week13ttvxl.c: 34: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u1347:
	decfsz	((??_main+0)+0),f
	goto	u1347
	decfsz	((??_main+0)+0+1),f
	goto	u1347
	decfsz	((??_main+0)+0+2),f
	goto	u1347
	clrwdt
opt asmopt_on

	goto	l3233
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	36
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_gocquay
psect	text201,local,class=CODE,delta=2
global __ptext201
__ptext201:

;; *************** function _gocquay *****************
;; Defined at:
;;		line 39 in file "D:\TTVXL\Project TTVXL\BT02week13ttvxl\BT02week13ttvxl.c"
;; Parameters:    Size  Location     Type
;;  goc             2   44[BANK0 ] int 
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
psect	text201
	file	"D:\TTVXL\Project TTVXL\BT02week13ttvxl\BT02week13ttvxl.c"
	line	39
	global	__size_of_gocquay
	__size_of_gocquay	equ	__end_of_gocquay-_gocquay
	
_gocquay:	
	opt	stack 4
; Regs used in _gocquay: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l3201:	
;BT02week13ttvxl.c: 40: A = 100 + goc*(1/1.8);
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
	movlw	0xe
	movwf	(?___ftmul+1)
	movlw	0x3f
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
	movlw	0xc8
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
	line	41
	
l1041:	
	return
	opt stack 0
GLOBAL	__end_of_gocquay
	__end_of_gocquay:
;; =============== function _gocquay ends ============

	signat	_gocquay,4216
	global	___awtoft
psect	text202,local,class=CODE,delta=2
global __ptext202
__ptext202:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   13[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   13[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_gocquay
;; This function uses a non-reentrant model
;;
psect	text202
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 4
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l3189:	
	clrf	(___awtoft@sign)
	line	37
	
l3191:	
	btfss	(___awtoft@c+1),7
	goto	u1301
	goto	u1300
u1301:
	goto	l3197
u1300:
	line	38
	
l3193:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l3195:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l3197:	
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
	
l2176:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text203,local,class=CODE,delta=2
global __ptext203
__ptext203:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   17[BANK0 ] float 
;;  f2              3   20[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   27[BANK0 ] unsigned um
;;  sign            1   31[BANK0 ] unsigned char 
;;  cntr            1   30[BANK0 ] unsigned char 
;;  exp             1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   17[BANK0 ] float 
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
psect	text203
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 4
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l3133:	
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
	goto	u1221
	goto	u1220
u1221:
	goto	l3139
u1220:
	line	57
	
l3135:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2138
	line	58
	
l3139:	
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
	goto	u1231
	goto	u1230
u1231:
	goto	l3145
u1230:
	line	59
	
l3141:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2138
	line	60
	
l3145:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l3147:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l3149:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l3151:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l3153:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l3155:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l3157:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l3159:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l3161:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l3163:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1241
	goto	u1240
u1241:
	goto	l3167
u1240:
	line	72
	
l3165:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1251
	addwf	(___ftmul@f3_as_product+1),f
u1251:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1252
	addwf	(___ftmul@f3_as_product+2),f
u1252:

	line	73
	
l3167:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l3169:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l3171:	
	decfsz	(___ftmul@cntr),f
	goto	u1261
	goto	u1260
u1261:
	goto	l3163
u1260:
	line	76
	
l3173:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l3175:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1271
	goto	u1270
u1271:
	goto	l3179
u1270:
	line	79
	
l3177:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1281
	addwf	(___ftmul@f3_as_product+1),f
u1281:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1282
	addwf	(___ftmul@f3_as_product+2),f
u1282:

	line	80
	
l3179:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l3181:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l3183:	
	decfsz	(___ftmul@cntr),f
	goto	u1291
	goto	u1290
u1291:
	goto	l3175
u1290:
	line	83
	
l3185:	
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
	
l2138:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftadd
psect	text204,local,class=CODE,delta=2
global __ptext204
__ptext204:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   32[BANK0 ] float 
;;  f2              3   35[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   43[BANK0 ] unsigned char 
;;  exp2            1   42[BANK0 ] unsigned char 
;;  sign            1   41[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] float 
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
psect	text204
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 4
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l3055:	
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
	
l3057:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u1020
	goto	l3063
u1020:
	
l3059:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1031
	goto	u1030
u1031:
	goto	l3067
u1030:
	
l3061:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1041
	goto	u1040
u1041:
	goto	l3067
u1040:
	line	93
	
l3063:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l2086
	line	94
	
l3067:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u1050
	goto	l2089
u1050:
	
l3069:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1061
	goto	u1060
u1061:
	goto	l3073
u1060:
	
l3071:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1071
	goto	u1070
u1071:
	goto	l3073
u1070:
	
l2089:	
	line	95
	goto	l2086
	line	96
	
l3073:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
l3075:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u1081
	goto	u1080
u1081:
	goto	l2090
u1080:
	line	98
	
l3077:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l2090:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1091
	goto	u1090
u1091:
	goto	l2091
u1090:
	line	100
	
l3079:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l2091:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l3081:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l3083:	
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
	goto	u1101
	goto	u1100
u1101:
	goto	l3095
u1100:
	line	110
	
l3085:	
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
l3087:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1111
	goto	u1110
u1111:
	goto	l3093
u1110:
	
l3089:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1121
	goto	u1120
u1121:
	goto	l3085
u1120:
	goto	l3093
	line	114
	
l3091:	
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
l3093:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1131
	goto	u1130
u1131:
	goto	l3091
u1130:
	goto	l2100
	line	117
	
l3095:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1141
	goto	u1140
u1141:
	goto	l2100
u1140:
	line	121
	
l3097:	
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
l3099:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1151
	goto	u1150
u1151:
	goto	l3105
u1150:
	
l3101:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1161
	goto	u1160
u1161:
	goto	l3097
u1160:
	goto	l3105
	line	125
	
l3103:	
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
l3105:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1171
	goto	u1170
u1171:
	goto	l3103
u1170:
	line	129
	
l2100:	
	btfss	(___ftadd@sign),(7)&7
	goto	u1181
	goto	u1180
u1181:
	goto	l3111
u1180:
	line	131
	
l3107:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
l3109:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
l3111:	
	btfss	(___ftadd@sign),(6)&7
	goto	u1191
	goto	u1190
u1191:
	goto	l3117
u1190:
	line	136
	
l3113:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
l3115:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
l3117:	
	clrf	(___ftadd@sign)
	line	140
	
l3119:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u1201
	addwf	(___ftadd@f2+1),f
u1201:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u1202
	addwf	(___ftadd@f2+2),f
u1202:

	line	141
	
l3121:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1211
	goto	u1210
u1211:
	goto	l3129
u1210:
	line	142
	
l3123:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
l3125:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
l3127:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l3129:	
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
	
l2086:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	___fttol
psect	text205,local,class=CODE,delta=2
global __ptext205
__ptext205:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    8[BANK0 ] unsigned long 
;;  exp1            1   12[BANK0 ] unsigned char 
;;  sign1           1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] long 
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
psect	text205
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2787:	
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
	goto	u581
	goto	u580
u581:
	goto	l2791
u580:
	line	50
	
l2789:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l2149
	line	51
	
l2791:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u595:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u590:
	addlw	-1
	skipz
	goto	u595
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2793:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2795:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2797:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2799:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l2801:	
	btfss	(___fttol@exp1),7
	goto	u601
	goto	u600
u601:
	goto	l2811
u600:
	line	57
	
l2803:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u611
	goto	u610
u611:
	goto	l2807
u610:
	goto	l2789
	line	60
	
l2807:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l2809:	
	incfsz	(___fttol@exp1),f
	goto	u621
	goto	u620
u621:
	goto	l2807
u620:
	goto	l2817
	line	63
	
l2811:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u631
	goto	u630
u631:
	goto	l2156
u630:
	goto	l2789
	line	66
	
l2815:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l2156:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u641
	goto	u640
u641:
	goto	l2815
u640:
	line	70
	
l2817:	
	movf	(___fttol@sign1),w
	skipz
	goto	u650
	goto	l2821
u650:
	line	71
	
l2819:	
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
	
l2821:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l2149:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text206,local,class=CODE,delta=2
global __ptext206
__ptext206:

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
;;		___ftadd
;;		___ftmul
;;		___awtoft
;; This function uses a non-reentrant model
;;
psect	text206
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l3027:	
	movf	(___ftpack@exp),w
	skipz
	goto	u950
	goto	l3031
u950:
	
l3029:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u961
	goto	u960
u961:
	goto	l3037
u960:
	line	65
	
l3031:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l2374
	line	67
	
l3035:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l3037:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u971
	goto	u970
u971:
	goto	l3035
u970:
	goto	l3041
	line	71
	
l3039:	
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
	
l3041:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u981
	goto	u980
u981:
	goto	l3039
u980:
	goto	l3045
	line	76
	
l3043:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l3045:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u991
	goto	u990
u991:
	goto	l3043
u990:
	
l2383:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1001
	goto	u1000
u1001:
	goto	l2384
u1000:
	line	80
	
l3047:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l2384:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l3049:	
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
	
l3051:	
	movf	(___ftpack@sign),w
	skipz
	goto	u1010
	goto	l2385
u1010:
	line	84
	
l3053:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2385:	
	line	85
	line	86
	
l2374:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	_ngat
psect	text207,local,class=CODE,delta=2
global __ptext207
__ptext207:

;; *************** function _ngat *****************
;; Defined at:
;;		line 44 in file "D:\TTVXL\Project TTVXL\BT02week13ttvxl\BT02week13ttvxl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
psect	text207
	file	"D:\TTVXL\Project TTVXL\BT02week13ttvxl\BT02week13ttvxl.c"
	line	44
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
	opt	stack 4
; Regs used in _ngat: [wreg+status,2+status,0]
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
	movf	pclath,w
	movwf	(??_ngat+1)
	ljmp	_ngat
psect	text207
	line	45
	
i1l2743:	
;BT02week13ttvxl.c: 45: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7
	goto	u48_21
	goto	u48_20
u48_21:
	goto	i1l2757
u48_20:
	line	46
	
i1l2745:	
;BT02week13ttvxl.c: 46: { dem++;
	incf	(_dem),f
	skipnz
	incf	(_dem+1),f
	line	47
	
i1l2747:	
;BT02week13ttvxl.c: 47: if (dem == A){RE0 = 0;}
	movf	(_A+1),w
	xorwf	(_dem+1),w
	skipz
	goto	u49_25
	movf	(_A),w
	xorwf	(_dem),w
u49_25:

	skipz
	goto	u49_21
	goto	u49_20
u49_21:
	goto	i1l2751
u49_20:
	
i1l2749:	
	bcf	(72/8),(72)&7
	line	48
	
i1l2751:	
;BT02week13ttvxl.c: 48: if (dem == 2000){dem = 0;RE0 = 1;}
		movf	(_dem+1),w
	xorlw	7
	movlw	208
	skipnz
	xorwf	(_dem),w

	skipz
	goto	u50_21
	goto	u50_20
u50_21:
	goto	i1l2757
u50_20:
	
i1l2753:	
	clrf	(_dem)
	clrf	(_dem+1)
	
i1l2755:	
	bsf	(72/8),(72)&7
	line	50
	
i1l2757:	
;BT02week13ttvxl.c: 49: }
;BT02week13ttvxl.c: 50: TMR2IF = 0;
	bcf	(97/8),(97)&7
	line	51
	
i1l1047:	
	movf	(??_ngat+1),w
	movwf	pclath
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
psect	text208,local,class=CODE,delta=2
global __ptext208
__ptext208:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
