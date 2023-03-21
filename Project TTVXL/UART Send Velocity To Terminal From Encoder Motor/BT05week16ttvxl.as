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
# 9 "D:\TTVXL\Project TTVXL\BT05week16ttvxl\BT05week16ttvxl.c"
	psect config,class=CONFIG,delta=2 ;#
# 9 "D:\TTVXL\Project TTVXL\BT05week16ttvxl\BT05week16ttvxl.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_tx_init
	FNCALL	_main,_rx_init
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftmul
	FNCALL	_main,___fttol
	FNCALL	_main,_send_string
	FNCALL	_main,_sprintf
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_send_string,_send_char
	FNROOT	_main
	FNCALL	intlevel1,_ngat
	global	intlevel1
	FNROOT	intlevel1
	global	_dpowers
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global	_dpowers
	global	_rx_data
	global	_dem
	global	_i
	global	_ket_qua
	global	_xung
	global	_v
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_v:
       ds      3

	global	_v_int
_v_int:
       ds      2

	global	_TMR1
_TMR1	set	14
	global	_RCREG
_RCREG	set	26
	global	_TMR0
_TMR0	set	1
	global	_TXREG
_TXREG	set	25
	global	_CREN
_CREN	set	196
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RCIF
_RCIF	set	101
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
	global	_TMR1CS
_TMR1CS	set	129
	global	_TMR1GE
_TMR1GE	set	134
	global	_TMR1ON
_TMR1ON	set	128
	global	_TXIF
_TXIF	set	100
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
psect	strings
	
STR_1:	
	retlw	86	;'V'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	99	;'c'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	121	;'y'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
	file	"BT05week16ttvxl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_i:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_rx_data:
       ds      5

_dem:
       ds      2

_ket_qua:
       ds      5

_xung:
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
	global	?_tx_init
?_tx_init:	; 0 bytes @ 0x0
	global	?_rx_init
?_rx_init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_send_char
?_send_char:	; 0 bytes @ 0x0
	global	?_ngat
?_ngat:	; 0 bytes @ 0x0
	global	??_ngat
??_ngat:	; 0 bytes @ 0x0
	ds	3
	global	??_tx_init
??_tx_init:	; 0 bytes @ 0x3
	global	??_rx_init
??_rx_init:	; 0 bytes @ 0x3
	global	??_send_char
??_send_char:	; 0 bytes @ 0x3
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x3
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x3
	global	?___fttol
?___fttol:	; 4 bytes @ 0x3
	global	send_char@data
send_char@data:	; 1 bytes @ 0x3
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x3
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x3
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x3
	ds	1
	global	?_send_string
?_send_string:	; 0 bytes @ 0x4
	global	send_string@s
send_string@s:	; 2 bytes @ 0x4
	ds	1
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x5
	ds	1
	global	??_send_string
??_send_string:	; 0 bytes @ 0x6
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x6
	ds	1
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x7
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x7
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x7
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x7
	ds	1
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0x8
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x8
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x0
	global	??___fttol
??___fttol:	; 0 bytes @ 0x0
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x0
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1
	ds	2
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x3
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x3
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x3
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x3
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x3
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x4
	ds	1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x5
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x6
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x6
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x7
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x7
	ds	1
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x8
	ds	1
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x9
	ds	1
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0xA
	ds	2
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0xC
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0xC
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0xD
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0xE
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0xF
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0xF
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x10
	ds	3
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x13
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x13
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x14
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x14
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x15
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x15
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x18
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x1B
	ds	3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1E
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1F
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x22
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x23
	ds	1
;;Data sizes: Strings 17, constant 10, data 0, bss 16, persistent 5 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      11
;; BANK0           80     36      55
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 3
;;		 -> STR_2(CODE[3]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 5
;;		 -> ket_qua(BANK0[5]), 
;;
;; ?_sprintf	int  size(1) Largest target is 0
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), 
;;
;; S1833$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; send_string@s	PTR const unsigned char  size(2) Largest target is 11
;;		 -> STR_3(CODE[3]), ket_qua(BANK0[5]), STR_1(CODE[11]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awtoft
;;   ___awtoft->___ftpack
;;   ___ftmul->___awtoft
;;   ___ftdiv->___awtoft
;;   _sprintf->___lwmod
;;   _send_string->_send_char
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _ngat in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->___ftmul
;;   ___awtoft->___ftpack
;;   ___ftmul->___ftdiv
;;   ___ftdiv->___awtoft
;;   _sprintf->___lwmod
;;   ___lwmod->___lwdiv
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
;; (0) _main                                                 0     0      0    3511
;;                            _tx_init
;;                            _rx_init
;;                           ___awtoft
;;                            ___ftdiv
;;                            ___ftmul
;;                            ___fttol
;;                        _send_string
;;                            _sprintf
;; ---------------------------------------------------------------------------------
;; (1) ___awtoft                                             4     1      3     445
;;                                              8 COMMON     1     1      0
;;                                              3 BANK0      3     0      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (1) ___ftmul                                             15     9      6     800
;;                                             21 BANK0     15     9      6
;;                           ___ftpack
;;                            ___ftdiv (ARG)
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftdiv                                             15     9      6     732
;;                                              6 BANK0     15     9      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                             14    11      3    1096
;;                                              7 BANK0     14    11      3
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (1) _send_string                                          2     0      2      67
;;                                              4 COMMON     2     0      2
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (1) ___fttol                                             13     9      4     371
;;                                              3 COMMON     4     0      4
;;                                              0 BANK0      9     9      0
;; ---------------------------------------------------------------------------------
;; (2) ___ftpack                                             8     3      5     312
;;                                              3 COMMON     5     0      5
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              5     1      4     159
;;                                              7 COMMON     1     1      0
;;                                              3 BANK0      4     0      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              7     3      4     241
;;                                              3 COMMON     4     0      4
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _send_char                                            1     1      0      22
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _rx_init                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _tx_init                                              0     0      0       0
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
;;   _tx_init
;;   _rx_init
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
;;   _send_string
;;     _send_char
;;   _sprintf
;;     ___lwdiv
;;     ___lwmod
;;       ___lwdiv (ARG)
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
;;ABS                  0      0      42       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     24      37       5       68.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      44      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 22 in file "D:\TTVXL\Project TTVXL\BT05week16ttvxl\BT05week16ttvxl.c"
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
;;		On exit  : 7F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_tx_init
;;		_rx_init
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;;		___fttol
;;		_send_string
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT05week16ttvxl\BT05week16ttvxl.c"
	line	22
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	23
	
l3638:	
;BT05week16ttvxl.c: 23: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	26
	
l3640:	
;BT05week16ttvxl.c: 26: T0CS = 0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1037/8)^080h,(1037)&7
	line	27
	
l3642:	
;BT05week16ttvxl.c: 27: PSA = 0;
	bcf	(1035/8)^080h,(1035)&7
	line	28
	
l3644:	
;BT05week16ttvxl.c: 28: PS2 = 0;PS1 = 1;PS0 = 0;
	bcf	(1034/8)^080h,(1034)&7
	
l3646:	
	bsf	(1033/8)^080h,(1033)&7
	
l3648:	
	bcf	(1032/8)^080h,(1032)&7
	line	29
	
l3650:	
;BT05week16ttvxl.c: 29: TMR0 = 7;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	30
	
l3652:	
;BT05week16ttvxl.c: 30: T0IE = 1;T0IF = 0;GIE = 1;
	bsf	(93/8),(93)&7
	
l3654:	
	bcf	(90/8),(90)&7
	
l3656:	
	bsf	(95/8),(95)&7
	line	33
	
l3658:	
;BT05week16ttvxl.c: 33: TMR1CS = 1;
	bsf	(129/8),(129)&7
	line	34
	
l3660:	
;BT05week16ttvxl.c: 34: T1CKPS1 = 0; T1CKPS0 = 0;
	bcf	(133/8),(133)&7
	
l3662:	
	bcf	(132/8),(132)&7
	line	35
	
l3664:	
;BT05week16ttvxl.c: 35: T1SYNC = 1;
	bsf	(130/8),(130)&7
	line	36
	
l3666:	
;BT05week16ttvxl.c: 36: TMR1 = 0;
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	37
	
l3668:	
;BT05week16ttvxl.c: 37: TMR1GE = 0; TMR1ON = 1;
	bcf	(134/8),(134)&7
	
l3670:	
	bsf	(128/8),(128)&7
	line	39
	
l3672:	
;BT05week16ttvxl.c: 39: tx_init();
	fcall	_tx_init
	line	40
	
l3674:	
;BT05week16ttvxl.c: 40: rx_init();
	fcall	_rx_init
	line	43
	
l3676:	
;BT05week16ttvxl.c: 43: RCIF = 0;
	bcf	(101/8),(101)&7
	line	44
	
l3678:	
;BT05week16ttvxl.c: 44: RCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1125/8)^080h,(1125)&7
	line	45
	
l3680:	
;BT05week16ttvxl.c: 45: PEIE = 1;
	bsf	(94/8),(94)&7
	line	46
	
l3682:	
;BT05week16ttvxl.c: 46: GIE = 1;
	bsf	(95/8),(95)&7
	line	50
	
l3684:	
;BT05week16ttvxl.c: 49: {
;BT05week16ttvxl.c: 50: v = (xung/360.0)*10.0*60.0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	movlw	0x16
	movwf	(?___ftmul+1)
	movlw	0x44
	movwf	(?___ftmul+2)
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0xb4
	movwf	(?___ftdiv+1)
	movlw	0x43
	movwf	(?___ftdiv+2)
	movf	(_xung+1),w
	movwf	(?___awtoft+1)
	movf	(_xung),w
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
	movwf	(_v)
	movf	(1+(?___ftmul)),w
	movwf	(_v+1)
	movf	(2+(?___ftmul)),w
	movwf	(_v+2)
	line	51
	
l3686:	
;BT05week16ttvxl.c: 51: v_int = (int)v;
	movf	(_v),w
	movwf	(?___fttol)
	movf	(_v+1),w
	movwf	(?___fttol+1)
	movf	(_v+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	movwf	(_v_int+1)
	movf	0+(((0+(?___fttol)))),w
	movwf	(_v_int)
	line	52
	
l3688:	
;BT05week16ttvxl.c: 52: send_string("Velocity: ");
	movlw	low((STR_1-__stringbase))
	movwf	(?_send_string)
	movlw	80h
	movwf	(?_send_string+1)
	fcall	_send_string
	line	53
	
l3690:	
;BT05week16ttvxl.c: 53: sprintf(ket_qua,"%d",v_int);
	movlw	((STR_2-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(_v_int+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_v_int),w
	movwf	0+(?_sprintf)+01h
	movlw	(_ket_qua)&0ffh
	fcall	_sprintf
	line	54
	
l3692:	
;BT05week16ttvxl.c: 54: send_string(ket_qua);
	movlw	(_ket_qua&0ffh)
	movwf	(?_send_string)
	movlw	(0x0/2)
	movwf	(?_send_string+1)
	fcall	_send_string
	line	55
	
l3694:	
;BT05week16ttvxl.c: 55: send_string("  ");
	movlw	low((STR_3-__stringbase))
	movwf	(?_send_string)
	movlw	80h
	movwf	(?_send_string+1)
	fcall	_send_string
	goto	l3684
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	57
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	___awtoft
psect	text356,local,class=CODE,delta=2
global __ptext356
__ptext356:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    3[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    3[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 7F/0
;;		On exit  : 7F/0
;;		Unchanged: FFF80/0
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
psect	text356
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l3626:	
	clrf	(___awtoft@sign)
	line	37
	
l3628:	
	btfss	(___awtoft@c+1),7
	goto	u1371
	goto	u1370
u1371:
	goto	l3634
u1370:
	line	38
	
l3630:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l3632:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l3634:	
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
	
l2229:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text357,local,class=CODE,delta=2
global __ptext357
__ptext357:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   21[BANK0 ] float 
;;  f2              3   24[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   31[BANK0 ] unsigned um
;;  sign            1   35[BANK0 ] unsigned char 
;;  cntr            1   34[BANK0 ] unsigned char 
;;  exp             1   30[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   21[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 7F/0
;;		On exit  : 7F/0
;;		Unchanged: FFF80/0
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
psect	text357
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l3570:	
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
	goto	u1291
	goto	u1290
u1291:
	goto	l3576
u1290:
	line	57
	
l3572:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2191
	line	58
	
l3576:	
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
	goto	u1301
	goto	u1300
u1301:
	goto	l3582
u1300:
	line	59
	
l3578:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2191
	line	60
	
l3582:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l3584:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l3586:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l3588:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l3590:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l3592:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l3594:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l3596:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l3598:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l3600:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1311
	goto	u1310
u1311:
	goto	l3604
u1310:
	line	72
	
l3602:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1321
	addwf	(___ftmul@f3_as_product+1),f
u1321:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1322
	addwf	(___ftmul@f3_as_product+2),f
u1322:

	line	73
	
l3604:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l3606:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l3608:	
	decfsz	(___ftmul@cntr),f
	goto	u1331
	goto	u1330
u1331:
	goto	l3600
u1330:
	line	76
	
l3610:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l3612:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1341
	goto	u1340
u1341:
	goto	l3616
u1340:
	line	79
	
l3614:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1351
	addwf	(___ftmul@f3_as_product+1),f
u1351:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1352
	addwf	(___ftmul@f3_as_product+2),f
u1352:

	line	80
	
l3616:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l3618:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l3620:	
	decfsz	(___ftmul@cntr),f
	goto	u1361
	goto	u1360
u1361:
	goto	l3612
u1360:
	line	83
	
l3622:	
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
	
l2191:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text358,local,class=CODE,delta=2
global __ptext358
__ptext358:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    6[BANK0 ] float 
;;  f1              3    9[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   16[BANK0 ] float 
;;  sign            1   20[BANK0 ] unsigned char 
;;  exp             1   19[BANK0 ] unsigned char 
;;  cntr            1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    6[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 7F/0
;;		On exit  : 7F/0
;;		Unchanged: FFF80/0
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
psect	text358
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l3526:	
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
	goto	u1251
	goto	u1250
u1251:
	goto	l3532
u1250:
	line	56
	
l3528:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l2181
	line	57
	
l3532:	
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
	goto	u1261
	goto	u1260
u1261:
	goto	l2182
u1260:
	line	58
	
l3534:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l2181
	
l2182:	
	line	59
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	60
	
l3538:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l3540:	
	movf	0+(((___ftdiv@f1))+2),w
	movwf	(___ftdiv@sign)
	line	62
	
l3542:	
	movf	0+(((___ftdiv@f2))+2),w
	xorwf	(___ftdiv@sign),f
	line	63
	
l3544:	
	movlw	(080h)
	andwf	(___ftdiv@sign),f
	line	64
	
l3546:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	
l3548:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l3550:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	
l3552:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	
l3554:	
	movlw	(018h)
	movwf	(___ftdiv@cntr)
	line	70
	
l3556:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	71
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u1275
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u1275
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u1275:
	skipc
	goto	u1271
	goto	u1270
u1271:
	goto	l3562
u1270:
	line	72
	
l3558:	
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
	
l3560:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	75
	
l3562:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	76
	
l3564:	
	decfsz	(___ftdiv@cntr),f
	goto	u1281
	goto	u1280
u1281:
	goto	l3556
u1280:
	line	77
	
l3566:	
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
	
l2181:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	_sprintf
psect	text359,local,class=CODE,delta=2
global __ptext359
__ptext359:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> ket_qua(5), 
;;  f               1    7[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(3), 
;; Auto vars:     Size  Location     Type
;;  sp              1   19[BANK0 ] PTR unsigned char 
;;		 -> ket_qua(5), 
;;  _val            4   15[BANK0 ] struct .
;;  c               1   20[BANK0 ] char 
;;  prec            1   14[BANK0 ] char 
;;  flag            1   13[BANK0 ] unsigned char 
;;  ap              1   12[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2    7[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 7F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text359
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	488
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 5
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	line	537
	movwf	(sprintf@sp)
	
l3468:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)
	line	540
	goto	l3520
	line	542
	
l3470:	
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u1181
	goto	u1180
u1181:
	goto	l3476
u1180:
	line	545
	
l3472:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(sprintf@c),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3474:	
	incf	(sprintf@sp),f
	line	546
	goto	l3520
	line	552
	
l3476:	
	clrf	(sprintf@flag)
	line	638
	
l3480:	
	movf	(sprintf@f),w
	incf	(sprintf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
; rangetable           110     6 (fixed)
; spacedrange          218     9 (fixed)
; locatedrange         106     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3522
	xorlw	100^0	; case 100
	skipnz
	goto	l3482
	xorlw	105^100	; case 105
	skipnz
	goto	l3482
	goto	l3520
	opt asmopt_on

	line	1254
	
l3482:	
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l3484:	
	incf	(sprintf@ap),f
	incf	(sprintf@ap),f
	line	1256
	
l3486:	
	btfss	(sprintf@_val+1),7
	goto	u1191
	goto	u1190
u1191:
	goto	l3492
u1190:
	line	1257
	
l3488:	
	movlw	(03h)
	iorwf	(sprintf@flag),f
	line	1258
	
l3490:	
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	line	1300
	
l3492:	
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	line	1301
	
l3496:	
	clrc
	rlf	(sprintf@c),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	fcall	stringdir
	movwf	(??_sprintf+0)+0+1
	movf	1+(??_sprintf+0)+0,w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u1205
	movf	0+(??_sprintf+0)+0,w
	subwf	(sprintf@_val),w
u1205:
	skipnc
	goto	u1201
	goto	u1200
u1201:
	goto	l3500
u1200:
	goto	l3504
	line	1300
	
l3500:	
	incf	(sprintf@c),f
	
l3502:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u1211
	goto	u1210
u1211:
	goto	l3496
u1210:
	line	1433
	
l3504:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1221
	goto	u1220
u1221:
	goto	l3510
u1220:
	line	1434
	
l3506:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movlw	(02Dh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3508:	
	incf	(sprintf@sp),f
	line	1467
	
l3510:	
	movf	(sprintf@c),w
	movwf	(sprintf@prec)
	line	1469
	goto	l3518
	line	1484
	
l3512:	
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	clrc
	rlf	(sprintf@prec),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)
	fcall	stringdir
	movwf	(?___lwdiv+1)
	movf	(sprintf@_val+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(sprintf@_val),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(sprintf@c)
	line	1516
	
l3514:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(sprintf@c),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3516:	
	incf	(sprintf@sp),f
	line	1469
	
l3518:	
	decf	(sprintf@prec),f
	incf	((sprintf@prec)),w
	skipz
	goto	u1231
	goto	u1230
u1231:
	goto	l3512
u1230:
	line	540
	
l3520:	
	movf	(sprintf@f),w
	incf	(sprintf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	movf	((sprintf@c)),f
	skipz
	goto	u1241
	goto	u1240
u1241:
	goto	l3470
u1240:
	line	1530
	
l3522:	
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	1533
	
l1103:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_send_string
psect	text360,local,class=CODE,delta=2
global __ptext360
__ptext360:

;; *************** function _send_string *****************
;; Defined at:
;;		line 83 in file "D:\TTVXL\Project TTVXL\BT05week16ttvxl\BT05week16ttvxl.c"
;; Parameters:    Size  Location     Type
;;  s               2    4[COMMON] PTR const unsigned char 
;;		 -> STR_3(3), ket_qua(5), STR_1(11), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 7F/0
;;		On exit  : 7F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text360
	file	"D:\TTVXL\Project TTVXL\BT05week16ttvxl\BT05week16ttvxl.c"
	line	83
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 5
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	84
	
l3128:	
;BT05week16ttvxl.c: 84: while(*s){send_char(*s++);}
	goto	l3134
	
l3130:	
	movf	(send_string@s+1),w
	movwf	btemp+1
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_send_char
	
l3132:	
	incf	(send_string@s),f
	skipnz
	incf	(send_string@s+1),f
	
l3134:	
	movf	(send_string@s+1),w
	movwf	btemp+1
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u781
	goto	u780
u781:
	goto	l3130
u780:
	line	85
	
l1068:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	___fttol
psect	text361,local,class=CODE,delta=2
global __ptext361
__ptext361:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    4[BANK0 ] unsigned long 
;;  exp1            1    8[BANK0 ] unsigned char 
;;  sign1           1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    3[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 7F/0
;;		On exit  : 7F/0
;;		Unchanged: FFF80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         4       9       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text361
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l3430:	
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
	goto	u1101
	goto	u1100
u1101:
	goto	l3434
u1100:
	line	50
	
l3432:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l2202
	line	51
	
l3434:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u1115:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u1110:
	addlw	-1
	skipz
	goto	u1115
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l3436:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l3438:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l3440:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l3442:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l3444:	
	btfss	(___fttol@exp1),7
	goto	u1121
	goto	u1120
u1121:
	goto	l3454
u1120:
	line	57
	
l3446:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u1131
	goto	u1130
u1131:
	goto	l3450
u1130:
	goto	l3432
	line	60
	
l3450:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l3452:	
	incfsz	(___fttol@exp1),f
	goto	u1141
	goto	u1140
u1141:
	goto	l3450
u1140:
	goto	l3460
	line	63
	
l3454:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u1151
	goto	u1150
u1151:
	goto	l2209
u1150:
	goto	l3432
	line	66
	
l3458:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l2209:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u1161
	goto	u1160
u1161:
	goto	l3458
u1160:
	line	70
	
l3460:	
	movf	(___fttol@sign1),w
	skipz
	goto	u1170
	goto	l3464
u1170:
	line	71
	
l3462:	
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
	
l3464:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l2202:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text362,local,class=CODE,delta=2
global __ptext362
__ptext362:

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
;;		On entry : 7F/0
;;		On exit  : 7F/0
;;		Unchanged: FFF80/0
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
;;		___ftdiv
;;		___ftmul
;;		___awtoft
;; This function uses a non-reentrant model
;;
psect	text362
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l3402:	
	movf	(___ftpack@exp),w
	skipz
	goto	u1030
	goto	l3406
u1030:
	
l3404:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1041
	goto	u1040
u1041:
	goto	l3412
u1040:
	line	65
	
l3406:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l2427
	line	67
	
l3410:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l3412:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1051
	goto	u1050
u1051:
	goto	l3410
u1050:
	goto	l3416
	line	71
	
l3414:	
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
	
l3416:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1061
	goto	u1060
u1061:
	goto	l3414
u1060:
	goto	l3420
	line	76
	
l3418:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l3420:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u1071
	goto	u1070
u1071:
	goto	l3418
u1070:
	
l2436:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1081
	goto	u1080
u1081:
	goto	l2437
u1080:
	line	80
	
l3422:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l2437:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l3424:	
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
	
l3426:	
	movf	(___ftpack@sign),w
	skipz
	goto	u1090
	goto	l2438
u1090:
	line	84
	
l3428:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2438:	
	line	85
	line	86
	
l2427:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lwmod
psect	text363,local,class=CODE,delta=2
global __ptext363
__ptext363:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    3[BANK0 ] unsigned int 
;;  dividend        2    5[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 7F/0
;;		On exit  : 7F/0
;;		Unchanged: FFF80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       4       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text363
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l3042:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u591
	goto	u590
u591:
	goto	l3058
u590:
	line	9
	
l3044:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l3048
	line	11
	
l3046:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l3048:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u601
	goto	u600
u601:
	goto	l3046
u600:
	line	15
	
l3050:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u615
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u615:
	skipc
	goto	u611
	goto	u610
u611:
	goto	l3054
u610:
	line	16
	
l3052:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l3054:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l3056:	
	decfsz	(___lwmod@counter),f
	goto	u621
	goto	u620
u621:
	goto	l3050
u620:
	line	20
	
l3058:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l2115:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text364,local,class=CODE,delta=2
global __ptext364
__ptext364:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    3[COMMON] unsigned int 
;;  dividend        2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    1[BANK0 ] unsigned int 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 7F/0
;;		On exit  : 7F/0
;;		Unchanged: FFF80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       3       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text364
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3376:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3378:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u991
	goto	u990
u991:
	goto	l3398
u990:
	line	11
	
l3380:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l3384
	line	13
	
l3382:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l3384:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1001
	goto	u1000
u1001:
	goto	l3382
u1000:
	line	17
	
l3386:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l3388:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1015
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1015:
	skipc
	goto	u1011
	goto	u1010
u1011:
	goto	l3394
u1010:
	line	19
	
l3390:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3392:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l3394:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l3396:	
	decfsz	(___lwdiv@counter),f
	goto	u1021
	goto	u1020
u1021:
	goto	l3386
u1020:
	line	25
	
l3398:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l2105:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_send_char
psect	text365,local,class=CODE,delta=2
global __ptext365
__ptext365:

;; *************** function _send_char *****************
;; Defined at:
;;		line 77 in file "D:\TTVXL\Project TTVXL\BT05week16ttvxl\BT05week16ttvxl.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 7F/0
;;		On exit  : 7F/0
;;		Unchanged: FFF80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_string
;; This function uses a non-reentrant model
;;
psect	text365
	file	"D:\TTVXL\Project TTVXL\BT05week16ttvxl\BT05week16ttvxl.c"
	line	77
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 5
; Regs used in _send_char: [wreg]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	78
	
l2986:	
;BT05week16ttvxl.c: 78: while(TXIF == 0){}
	
l1059:	
	btfss	(100/8),(100)&7
	goto	u501
	goto	u500
u501:
	goto	l1059
u500:
	line	79
	
l2988:	
;BT05week16ttvxl.c: 79: TXREG = data;
	movf	(send_char@data),w
	movwf	(25)	;volatile
	line	80
	
l1062:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_rx_init
psect	text366,local,class=CODE,delta=2
global __ptext366
__ptext366:

;; *************** function _rx_init *****************
;; Defined at:
;;		line 69 in file "D:\TTVXL\Project TTVXL\BT05week16ttvxl\BT05week16ttvxl.c"
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
	file	"D:\TTVXL\Project TTVXL\BT05week16ttvxl\BT05week16ttvxl.c"
	line	69
	global	__size_of_rx_init
	__size_of_rx_init	equ	__end_of_rx_init-_rx_init
	
_rx_init:	
	opt	stack 6
; Regs used in _rx_init: [wreg]
	line	70
	
l2972:	
;BT05week16ttvxl.c: 70: SPBRGH = 0x02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(154)^080h	;volatile
	line	71
;BT05week16ttvxl.c: 71: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	72
	
l2974:	
;BT05week16ttvxl.c: 72: SYNC = 0; BRGH = 1; BRG16 = 1;
	bcf	(1220/8)^080h,(1220)&7
	
l2976:	
	bsf	(1218/8)^080h,(1218)&7
	
l2978:	
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	73
	
l2980:	
;BT05week16ttvxl.c: 73: CREN = 1; RX9 = 0; SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	
l2982:	
	bcf	(198/8),(198)&7
	
l2984:	
	bsf	(199/8),(199)&7
	line	74
	
l1056:	
	return
	opt stack 0
GLOBAL	__end_of_rx_init
	__end_of_rx_init:
;; =============== function _rx_init ends ============

	signat	_rx_init,88
	global	_tx_init
psect	text367,local,class=CODE,delta=2
global __ptext367
__ptext367:

;; *************** function _tx_init *****************
;; Defined at:
;;		line 60 in file "D:\TTVXL\Project TTVXL\BT05week16ttvxl\BT05week16ttvxl.c"
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
	file	"D:\TTVXL\Project TTVXL\BT05week16ttvxl\BT05week16ttvxl.c"
	line	60
	global	__size_of_tx_init
	__size_of_tx_init	equ	__end_of_tx_init-_tx_init
	
_tx_init:	
	opt	stack 6
; Regs used in _tx_init: [wreg]
	line	61
	
l2958:	
;BT05week16ttvxl.c: 61: SPBRGH = 0x02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(154)^080h	;volatile
	line	62
;BT05week16ttvxl.c: 62: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	63
	
l2960:	
;BT05week16ttvxl.c: 63: SYNC = 0; BRGH = 1; BRG16 = 1;
	bcf	(1220/8)^080h,(1220)&7
	
l2962:	
	bsf	(1218/8)^080h,(1218)&7
	
l2964:	
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	64
	
l2966:	
;BT05week16ttvxl.c: 64: TXEN = 1; TX9 = 0; SPEN = 1;
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7
	
l2968:	
	bcf	(1222/8)^080h,(1222)&7
	
l2970:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	66
	
l1053:	
	return
	opt stack 0
GLOBAL	__end_of_tx_init
	__end_of_tx_init:
;; =============== function _tx_init ends ============

	signat	_tx_init,88
	global	_ngat
psect	text368,local,class=CODE,delta=2
global __ptext368
__ptext368:

;; *************** function _ngat *****************
;; Defined at:
;;		line 88 in file "D:\TTVXL\Project TTVXL\BT05week16ttvxl\BT05week16ttvxl.c"
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
	file	"D:\TTVXL\Project TTVXL\BT05week16ttvxl\BT05week16ttvxl.c"
	line	88
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
psect	text368
	line	89
	
i1l2990:	
;BT05week16ttvxl.c: 89: if(RCIF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u51_21
	goto	u51_20
u51_21:
	goto	i1l3000
u51_20:
	line	91
	
i1l2992:	
;BT05week16ttvxl.c: 90: {
;BT05week16ttvxl.c: 91: rx_data[i] = RCREG;
	movf	(_i),w
	addlw	_rx_data&0ffh
	movwf	fsr0
	movf	(26),w	;volatile
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	92
	
i1l2994:	
;BT05week16ttvxl.c: 92: i++;
	incf	(_i),f
	skipnz
	incf	(_i+1),f
	line	93
	
i1l2996:	
;BT05week16ttvxl.c: 93: if(i==5)
		movf	(_i),w
	xorlw	5
	iorwf	(_i+1),w

	skipz
	goto	u52_21
	goto	u52_20
u52_21:
	goto	i1l3000
u52_20:
	line	95
	
i1l2998:	
;BT05week16ttvxl.c: 94: {
;BT05week16ttvxl.c: 95: i=0;
	clrf	(_i)
	clrf	(_i+1)
	line	98
	
i1l3000:	
;BT05week16ttvxl.c: 96: }
;BT05week16ttvxl.c: 97: }
;BT05week16ttvxl.c: 98: if(T0IF)
	btfss	(90/8),(90)&7
	goto	u53_21
	goto	u53_20
u53_21:
	goto	i1l3012
u53_20:
	line	100
	
i1l3002:	
;BT05week16ttvxl.c: 99: {
;BT05week16ttvxl.c: 100: dem++;
	incf	(_dem),f
	skipnz
	incf	(_dem+1),f
	line	101
	
i1l3004:	
;BT05week16ttvxl.c: 101: if(dem==250)
		movf	(_dem),w
	xorlw	250
	iorwf	(_dem+1),w

	skipz
	goto	u54_21
	goto	u54_20
u54_21:
	goto	i1l3012
u54_20:
	line	103
	
i1l3006:	
;BT05week16ttvxl.c: 102: {
;BT05week16ttvxl.c: 103: dem = 0;
	clrf	(_dem)
	clrf	(_dem+1)
	line	104
	
i1l3008:	
;BT05week16ttvxl.c: 104: xung = TMR1;
	movf	(14+1),w	;volatile
	movwf	(_xung+1)	;volatile
	movf	(14),w	;volatile
	movwf	(_xung)	;volatile
	line	105
	
i1l3010:	
;BT05week16ttvxl.c: 105: TMR1 = 0;
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	108
	
i1l3012:	
;BT05week16ttvxl.c: 106: }
;BT05week16ttvxl.c: 107: }
;BT05week16ttvxl.c: 108: T0IF=0;
	bcf	(90/8),(90)&7
	line	109
;BT05week16ttvxl.c: 109: TMR0 =7;
	movlw	(07h)
	movwf	(1)	;volatile
	line	110
	
i1l3014:	
;BT05week16ttvxl.c: 110: RCIF=0;
	bcf	(101/8),(101)&7
	line	111
	
i1l1075:	
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
