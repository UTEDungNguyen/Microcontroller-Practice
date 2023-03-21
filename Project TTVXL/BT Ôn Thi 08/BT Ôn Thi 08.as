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
# 7 "D:\TTVXL\Project TTVXL\BT Ôn Thi 08\BT Ôn Thi 08.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "D:\TTVXL\Project TTVXL\BT Ôn Thi 08\BT Ôn Thi 08.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_tx
	FNCALL	_main,_rx
	FNCALL	_main,_atoi
	FNCALL	_main,___wmul
	FNCALL	_main,___awdiv
	FNCALL	_main,_pwm_10bit1
	FNCALL	_main,_sprintf
	FNCALL	_main,_send_string
	FNCALL	_send_string,_send_char
	FNCALL	_sprintf,_isdigit
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_pwm_10bit1,___awdiv
	FNCALL	_atoi,___wmul
	FNCALL	_atoi,_isdigit
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
	global	_data_rx
	global	_PW
	global	_PW1
	global	_pwm_ccp1
	global	_a
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_RCREG
_RCREG	set	26
	global	_TMR2
_TMR2	set	17
	global	_TXREG
_TXREG	set	25
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
	global	_TXIF
_TXIF	set	100
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
	
STR_1:	
	retlw	67	;'C'
	retlw	67	;'C'
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	49	;'1'
	retlw	76	;'L'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	51	;'3'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	file	"BT Ôn Thi 08.as"
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

_PW:
       ds      2

_PW1:
       ds      2

_pwm_ccp1:
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
	global	?_send_string
?_send_string:	; 0 bytes @ 0x0
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ngat
?_ngat:	; 0 bytes @ 0x0
	global	??_ngat
??_ngat:	; 0 bytes @ 0x0
	global	?_send_char
?_send_char:	; 0 bytes @ 0x0
	ds	3
	global	??_tx
??_tx:	; 0 bytes @ 0x3
	global	??_rx
??_rx:	; 0 bytes @ 0x3
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x3
	global	??_send_char
??_send_char:	; 0 bytes @ 0x3
	global	?___wmul
?___wmul:	; 2 bytes @ 0x3
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x3
	global	send_char@data
send_char@data:	; 1 bytes @ 0x3
	global	_isdigit$2383
_isdigit$2383:	; 1 bytes @ 0x3
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x3
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x3
	ds	1
	global	??_send_string
??_send_string:	; 0 bytes @ 0x4
	global	send_string@s
send_string@s:	; 1 bytes @ 0x4
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x4
	ds	1
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x5
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x5
	ds	2
	global	??___wmul
??___wmul:	; 0 bytes @ 0x7
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x7
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x7
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x7
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x7
	ds	2
	global	??_pwm_10bit1
??_pwm_10bit1:	; 0 bytes @ 0x9
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_atoi
?_atoi:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1
	ds	1
	global	??_atoi
??_atoi:	; 0 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x3
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x3
	ds	1
	global	atoi@sign
atoi@sign:	; 1 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	atoi@a
atoi@a:	; 2 bytes @ 0x5
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x5
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x7
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x7
	global	atoi@s
atoi@s:	; 1 bytes @ 0x7
	ds	1
	global	?_pwm_10bit1
?_pwm_10bit1:	; 0 bytes @ 0x8
	global	pwm_10bit1@data_pwm
pwm_10bit1@data_pwm:	; 2 bytes @ 0x8
	ds	2
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0xA
	ds	3
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0xD
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0xE
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0xF
	ds	4
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x13
	ds	1
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0x14
	ds	2
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x16
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x17
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x18
	ds	1
	global	main@data_tx
main@data_tx:	; 10 bytes @ 0x19
	ds	10
	global	main@Pulse_width
main@Pulse_width:	; 3 bytes @ 0x23
	ds	3
	global	main@b
main@b:	; 2 bytes @ 0x26
	ds	2
;;Data sizes: Strings 15, constant 10, data 0, bss 18, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      11
;; BANK0           80     40      56
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?_atoi	int  size(1) Largest target is 0
;;
;; atoi@s	PTR const unsigned char  size(1) Largest target is 3
;;		 -> main@Pulse_width(BANK0[3]), 
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 15
;;		 -> STR_1(CODE[15]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 10
;;		 -> main@data_tx(BANK0[10]), 
;;
;; ?_sprintf	int  size(1) Largest target is 0
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), 
;;
;; S1860$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; send_string@s	PTR const unsigned char  size(1) Largest target is 10
;;		 -> main@data_tx(BANK0[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___wmul
;;   _send_string->_send_char
;;   _sprintf->___wmul
;;   _atoi->___wmul
;;   ___awdiv->___wmul
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _ngat in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_sprintf
;;   _sprintf->___lwmod
;;   _pwm_10bit1->___awdiv
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                16    16      0    3526
;;                                             24 BANK0     16    16      0
;;                                 _tx
;;                                 _rx
;;                               _atoi
;;                             ___wmul
;;                            ___awdiv
;;                         _pwm_10bit1
;;                            _sprintf
;;                        _send_string
;; ---------------------------------------------------------------------------------
;; (1) _send_string                                          1     1      0      67
;;                                              4 COMMON     1     1      0
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                             17    14      3    1881
;;                                              7 BANK0     17    14      3
;;                            _isdigit
;;                             ___wmul
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (1) _pwm_10bit1                                           2     0      2     366
;;                                              8 BANK0      2     0      2
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (1) _atoi                                                 8     6      2     494
;;                                              0 BANK0      8     6      2
;;                             ___wmul
;;                            _isdigit
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              8     4      4     300
;;                                              0 BANK0      8     4      4
;;                             ___wmul (ARG)
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
;; (2) ___wmul                                               6     2      4      92
;;                                              3 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) _isdigit                                              2     2      0      68
;;                                              3 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _send_char                                            1     1      0      22
;;                                              3 COMMON     1     1      0
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
;;   ___awdiv
;;     ___wmul (ARG)
;;   _pwm_10bit1
;;     ___awdiv
;;       ___wmul (ARG)
;;   _sprintf
;;     _isdigit
;;     ___wmul
;;     ___lwdiv
;;     ___lwmod
;;       ___lwdiv (ARG)
;;   _send_string
;;     _send_char
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
;;ABS                  0      0      43       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     28      38       5       70.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      45      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 24 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 08\BT Ôn Thi 08.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  b               2   38[BANK0 ] int 
;;  data_tx        10   25[BANK0 ] unsigned char [10]
;;  Pulse_width     3   35[BANK0 ] unsigned char [3]
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
;;      Locals:         0      15       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_tx
;;		_rx
;;		_atoi
;;		___wmul
;;		___awdiv
;;		_pwm_10bit1
;;		_sprintf
;;		_send_string
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 08\BT Ôn Thi 08.c"
	line	24
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	25
	
l3570:	
;BT Ôn Thi 08.c: 25: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	27
	
l3572:	
;BT Ôn Thi 08.c: 27: TRISC2 = 0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1082/8)^080h,(1082)&7
	line	29
	
l3574:	
;BT Ôn Thi 08.c: 29: T2CKPS1 = 0; T2CKPS0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(145/8),(145)&7
	
l3576:	
	bsf	(144/8),(144)&7
	line	30
;BT Ôn Thi 08.c: 30: TMR2 = 0; PR2 = 124;
	clrf	(17)	;volatile
	
l3578:	
	movlw	(07Ch)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	31
	
l3580:	
;BT Ôn Thi 08.c: 31: TMR2ON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(146/8),(146)&7
	line	33
	
l3582:	
;BT Ôn Thi 08.c: 33: CCP1CON = 0b00000000;
	clrf	(23)	;volatile
	line	34
	
l3584:	
;BT Ôn Thi 08.c: 34: CCPR1L = 0;
	clrf	(21)	;volatile
	line	37
	
l3586:	
;BT Ôn Thi 08.c: 37: tx();
	fcall	_tx
	line	38
	
l3588:	
;BT Ôn Thi 08.c: 38: rx();
	fcall	_rx
	line	44
	
l3590:	
;BT Ôn Thi 08.c: 43: {
;BT Ôn Thi 08.c: 44: for (int b=0;b<=2;b++){
	clrf	(main@b)
	clrf	(main@b+1)
	line	45
	
l3596:	
;BT Ôn Thi 08.c: 45: Pulse_width[b]=data_rx[b];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@b),w
	addlw	_data_rx&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(main@b),w
	addlw	main@Pulse_width&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	line	44
	
l3598:	
	incf	(main@b),f
	skipnz
	incf	(main@b+1),f
	
l3600:	
	movf	(main@b+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1295
	movlw	low(03h)
	subwf	(main@b),w
u1295:

	skipc
	goto	u1291
	goto	u1290
u1291:
	goto	l3596
u1290:
	line	47
	
l3602:	
;BT Ôn Thi 08.c: 46: }
;BT Ôn Thi 08.c: 47: PW=atoi(Pulse_width);
	movlw	(main@Pulse_width)&0ffh
	fcall	_atoi
	movf	(1+(?_atoi)),w
	movwf	(_PW+1)
	movf	(0+(?_atoi)),w
	movwf	(_PW)
	line	48
	
l3604:	
;BT Ôn Thi 08.c: 48: PW1=PW*124/100;
	movlw	064h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(_PW+1),w
	movwf	(?___wmul+1)
	movf	(_PW),w
	movwf	(?___wmul)
	movlw	07Ch
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	1+(?___awdiv)+02h
	movf	(0+(?___wmul)),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(_PW1+1)
	movf	(0+(?___awdiv)),w
	movwf	(_PW1)
	line	49
	
l3606:	
;BT Ôn Thi 08.c: 49: TMR2ON=1;
	bsf	(146/8),(146)&7
	line	50
	
l3608:	
;BT Ôn Thi 08.c: 50: CCP1CON = 0b00001100;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	51
	
l3610:	
;BT Ôn Thi 08.c: 51: pwm_ccp1 = PW1*4;
	movf	(_PW1+1),w
	movwf	(_pwm_ccp1+1)
	movf	(_PW1),w
	movwf	(_pwm_ccp1)
	
l3612:	
	clrc
	rlf	(_pwm_ccp1),f
	rlf	(_pwm_ccp1+1),f
	clrc
	rlf	(_pwm_ccp1),f
	rlf	(_pwm_ccp1+1),f
	line	52
	
l3614:	
;BT Ôn Thi 08.c: 52: pwm_10bit1(pwm_ccp1);
	movf	(_pwm_ccp1+1),w
	movwf	(?_pwm_10bit1+1)
	movf	(_pwm_ccp1),w
	movwf	(?_pwm_10bit1)
	fcall	_pwm_10bit1
	line	62
	
l3616:	
;BT Ôn Thi 08.c: 62: sprintf(data_tx,"CCPR1L: %03d  ",CCPR1L);
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(21),w	;volatile
	movwf	0+(?_sprintf)+01h
	clrf	1+(?_sprintf)+01h
	movlw	(main@data_tx)&0ffh
	fcall	_sprintf
	line	63
	
l3618:	
;BT Ôn Thi 08.c: 63: send_string(data_tx);
	movlw	(main@data_tx)&0ffh
	fcall	_send_string
	goto	l3590
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	65
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_send_string
psect	text423,local,class=CODE,delta=2
global __ptext423
__ptext423:

;; *************** function _send_string *****************
;; Defined at:
;;		line 81 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 08\BT Ôn Thi 08.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> main@data_tx(10), 
;; Auto vars:     Size  Location     Type
;;  s               1    4[COMMON] PTR const unsigned char 
;;		 -> main@data_tx(10), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text423
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 08\BT Ôn Thi 08.c"
	line	81
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 5
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	movwf	(send_string@s)
	line	82
	
l3330:	
;BT Ôn Thi 08.c: 82: while(*s) {send_char(*s++);}
	goto	l3336
	
l3332:	
	movf	(send_string@s),w
	movwf	fsr0
	movf	indf,w
	fcall	_send_char
	
l3334:	
	incf	(send_string@s),f
	
l3336:	
	movf	(send_string@s),w
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u991
	goto	u990
u991:
	goto	l3332
u990:
	line	83
	
l1089:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	_sprintf
psect	text424,local,class=CODE,delta=2
global __ptext424
__ptext424:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> main@data_tx(10), 
;;  f               1    7[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(15), 
;; Auto vars:     Size  Location     Type
;;  sp              1   22[BANK0 ] PTR unsigned char 
;;		 -> main@data_tx(10), 
;;  _val            4   15[BANK0 ] struct .
;;  width           2   20[BANK0 ] int 
;;  c               1   23[BANK0 ] char 
;;  flag            1   19[BANK0 ] unsigned char 
;;  prec            1   14[BANK0 ] char 
;;  ap              1   13[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2    7[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0      11       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      17       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_isdigit
;;		___wmul
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text424
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
	
l3460:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)
	line	540
	goto	l3564
	line	542
	
l3462:	
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u1111
	goto	u1110
u1111:
	goto	l3468
u1110:
	line	545
	
l3464:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(sprintf@c),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3466:	
	incf	(sprintf@sp),f
	line	546
	goto	l3564
	line	550
	
l3468:	
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	552
	clrf	(sprintf@flag)
	goto	l3474
	line	583
	
l1116:	
	line	584
	bsf	(sprintf@flag)+(2/8),(2)&7
	line	585
	
l3470:	
	incf	(sprintf@f),f
	line	555
	
l3474:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 48 to 48
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           14    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	48^0	; case 48
	skipnz
	goto	l1116
	goto	l3476
	opt asmopt_on

	line	601
	
l3476:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u1121
	goto	u1120
u1121:
	goto	l3488
u1120:
	line	602
	
l3478:	
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	604
	
l3480:	
	movf	(sprintf@width+1),w
	movwf	(?___wmul+1)
	movf	(sprintf@width),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	movwf	(??_sprintf+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_sprintf+0)+0
	movf	0+(??_sprintf+0)+0,w
	addlw	low(0FFD0h)
	movwf	(sprintf@width)
	movf	1+(??_sprintf+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(sprintf@width)
	
l3482:	
	incf	(sprintf@f),f
	line	605
	
l3484:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u1131
	goto	u1130
u1131:
	goto	l3480
u1130:
	line	638
	
l3488:	
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
	goto	l3566
	xorlw	100^0	; case 100
	skipnz
	goto	l3490
	xorlw	105^100	; case 105
	skipnz
	goto	l3490
	goto	l3564
	opt asmopt_on

	line	1254
	
l3490:	
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l3492:	
	incf	(sprintf@ap),f
	incf	(sprintf@ap),f
	line	1256
	
l3494:	
	btfss	(sprintf@_val+1),7
	goto	u1141
	goto	u1140
u1141:
	goto	l3500
u1140:
	line	1257
	
l3496:	
	movlw	(03h)
	iorwf	(sprintf@flag),f
	line	1258
	
l3498:	
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	line	1300
	
l3500:	
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	line	1301
	
l3504:	
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
	goto	u1155
	movf	0+(??_sprintf+0)+0,w
	subwf	(sprintf@_val),w
u1155:
	skipnc
	goto	u1151
	goto	u1150
u1151:
	goto	l3508
u1150:
	goto	l3512
	line	1300
	
l3508:	
	incf	(sprintf@c),f
	
l3510:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u1161
	goto	u1160
u1161:
	goto	l3504
u1160:
	line	1340
	
l3512:	
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u1171
	goto	u1170
u1171:
	goto	l3518
u1170:
	
l3514:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1181
	goto	u1180
u1181:
	goto	l3518
u1180:
	line	1341
	
l3516:	
	movlw	-1
	addwf	(sprintf@width),f
	skipc
	decf	(sprintf@width+1),f
	line	1376
	
l3518:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	movwf	(??_sprintf+2)+0
	movf	(sprintf@width+1),w
	xorlw	80h
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u1195
	movf	(sprintf@width),w
	subwf	0+(??_sprintf+0)+0,w
u1195:

	skipnc
	goto	u1191
	goto	u1190
u1191:
	goto	l3522
u1190:
	line	1377
	
l3520:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	0+(??_sprintf+0)+0,w
	subwf	(sprintf@width),f
	movf	1+(??_sprintf+0)+0,w
	skipc
	decf	(sprintf@width+1),f
	subwf	(sprintf@width+1),f
	goto	l3524
	line	1379
	
l3522:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	1382
	
l3524:	
	btfss	(sprintf@flag),(2)&7
	goto	u1201
	goto	u1200
u1201:
	goto	l3540
u1200:
	line	1387
	
l3526:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1211
	goto	u1210
u1211:
	goto	l3532
u1210:
	line	1388
	
l3528:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movlw	(02Dh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3530:	
	incf	(sprintf@sp),f
	line	1410
	
l3532:	
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u1221
	goto	u1220
u1221:
	goto	l3554
u1220:
	line	1412
	
l3534:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movlw	(030h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3536:	
	incf	(sprintf@sp),f
	line	1413
	
l3538:	
	movlw	-1
	addwf	(sprintf@width),f
	skipc
	decf	(sprintf@width+1),f
	movf	(((sprintf@width+1))),w
	iorwf	(((sprintf@width))),w
	skipz
	goto	u1231
	goto	u1230
u1231:
	goto	l3534
u1230:
	goto	l3554
	line	1423
	
l3540:	
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u1241
	goto	u1240
u1241:
	goto	l3548
u1240:
	line	1425
	
l3542:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movlw	(020h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3544:	
	incf	(sprintf@sp),f
	line	1426
	
l3546:	
	movlw	-1
	addwf	(sprintf@width),f
	skipc
	decf	(sprintf@width+1),f
	movf	(((sprintf@width+1))),w
	iorwf	(((sprintf@width))),w
	skipz
	goto	u1251
	goto	u1250
u1251:
	goto	l3542
u1250:
	line	1433
	
l3548:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1261
	goto	u1260
u1261:
	goto	l3554
u1260:
	line	1434
	
l3550:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movlw	(02Dh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3552:	
	incf	(sprintf@sp),f
	line	1467
	
l3554:	
	movf	(sprintf@c),w
	movwf	(sprintf@prec)
	line	1469
	goto	l3562
	line	1484
	
l3556:	
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
	
l3558:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(sprintf@c),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3560:	
	incf	(sprintf@sp),f
	line	1469
	
l3562:	
	decf	(sprintf@prec),f
	incf	((sprintf@prec)),w
	skipz
	goto	u1271
	goto	u1270
u1271:
	goto	l3556
u1270:
	line	540
	
l3564:	
	movf	(sprintf@f),w
	incf	(sprintf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	movf	((sprintf@c)),f
	skipz
	goto	u1281
	goto	u1280
u1281:
	goto	l3462
u1280:
	line	1530
	
l3566:	
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	1533
	
l1151:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_pwm_10bit1
psect	text425,local,class=CODE,delta=2
global __ptext425
__ptext425:

;; *************** function _pwm_10bit1 *****************
;; Defined at:
;;		line 102 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 08\BT Ôn Thi 08.c"
;; Parameters:    Size  Location     Type
;;  data_pwm        2    8[BANK0 ] int 
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
psect	text425
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 08\BT Ôn Thi 08.c"
	line	102
	global	__size_of_pwm_10bit1
	__size_of_pwm_10bit1	equ	__end_of_pwm_10bit1-_pwm_10bit1
	
_pwm_10bit1:	
	opt	stack 5
; Regs used in _pwm_10bit1: [wreg+status,2+status,0+pclath+cstack]
	line	103
	
l3208:	
;BT Ôn Thi 08.c: 103: CCPR1L = data_pwm/4;
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
	line	104
	
l3210:	
;BT Ôn Thi 08.c: 104: DC1B1 = 0; DC1B0 = 0;
	bcf	(189/8),(189)&7
	
l3212:	
	bcf	(188/8),(188)&7
	line	105
	
l3214:	
;BT Ôn Thi 08.c: 105: if((data_pwm &2) == 1) {DC1B1 = 1;}
	movf	(pwm_10bit1@data_pwm),w
	andlw	02h
	xorlw	01h
	skipz
	goto	u791
	goto	u790
u791:
	goto	l1098
u790:
	
l3216:	
	bsf	(189/8),(189)&7
	
l1098:	
	line	106
;BT Ôn Thi 08.c: 106: if((data_pwm &1) == 1) {DC1B0 = 1;}
	btfss	(pwm_10bit1@data_pwm),(0)&7
	goto	u801
	goto	u800
u801:
	goto	l1100
u800:
	
l3218:	
	bsf	(188/8),(188)&7
	line	107
	
l1100:	
	return
	opt stack 0
GLOBAL	__end_of_pwm_10bit1
	__end_of_pwm_10bit1:
;; =============== function _pwm_10bit1 ends ============

	signat	_pwm_10bit1,4216
	global	_atoi
psect	text426,local,class=CODE,delta=2
global __ptext426
__ptext426:

;; *************** function _atoi *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\atoi.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> main@Pulse_width(3), 
;; Auto vars:     Size  Location     Type
;;  s               1    7[BANK0 ] PTR const unsigned char 
;;		 -> main@Pulse_width(3), 
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
psect	text426
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
	
l3426:	
	goto	l3430
	line	11
	
l3428:	
	incf	(atoi@s),f
	line	10
	
l3430:	
	movf	(atoi@s),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	020h
	skipnz
	goto	u1051
	goto	u1050
u1051:
	goto	l3428
u1050:
	
l3432:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	09h
	skipnz
	goto	u1061
	goto	u1060
u1061:
	goto	l3428
u1060:
	line	12
	
l3434:	
	clrf	(atoi@a)
	clrf	(atoi@a+1)
	line	13
	clrf	(atoi@sign)
	line	14
	
l3436:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Dh
	skipz
	goto	u1071
	goto	u1070
u1071:
	goto	l3440
u1070:
	line	15
	
l3438:	
	incf	(atoi@sign),f
	line	16
	incf	(atoi@s),f
	line	17
	goto	l3448
	
l3440:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Bh
	skipz
	goto	u1081
	goto	u1080
u1081:
	goto	l3448
u1080:
	line	18
	
l3442:	
	incf	(atoi@s),f
	goto	l3448
	line	20
	
l3444:	
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
	goto	l3442
	line	19
	
l3448:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	fcall	_isdigit
	btfsc	status,0
	goto	u1091
	goto	u1090
u1091:
	goto	l3444
u1090:
	line	21
	
l3450:	
	movf	(atoi@sign),w
	skipz
	goto	u1100
	goto	l3456
u1100:
	line	22
	
l3452:	
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
	goto	l2146
	line	23
	
l3456:	
	movf	(atoi@a+1),w
	movwf	(?_atoi+1)
	movf	(atoi@a),w
	movwf	(?_atoi)
	line	24
	
l2146:	
	return
	opt stack 0
GLOBAL	__end_of_atoi
	__end_of_atoi:
;; =============== function _atoi ends ============

	signat	_atoi,4218
	global	___awdiv
psect	text427,local,class=CODE,delta=2
global __ptext427
__ptext427:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] int 
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
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
;;		_pwm_10bit1
;; This function uses a non-reentrant model
;;
psect	text427
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3130:	
	clrf	(___awdiv@sign)
	line	10
	
l3132:	
	btfss	(___awdiv@divisor+1),7
	goto	u661
	goto	u660
u661:
	goto	l3138
u660:
	line	11
	
l3134:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l3136:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l3138:	
	btfss	(___awdiv@dividend+1),7
	goto	u671
	goto	u670
u671:
	goto	l3144
u670:
	line	15
	
l3140:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3142:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l3144:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3146:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u681
	goto	u680
u681:
	goto	l3166
u680:
	line	20
	
l3148:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l3152
	line	22
	
l3150:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l3152:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u691
	goto	u690
u691:
	goto	l3150
u690:
	line	26
	
l3154:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l3156:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u705
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u705:
	skipc
	goto	u701
	goto	u700
u701:
	goto	l3162
u700:
	line	28
	
l3158:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3160:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l3162:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l3164:	
	decfsz	(___awdiv@counter),f
	goto	u711
	goto	u710
u711:
	goto	l3154
u710:
	line	34
	
l3166:	
	movf	(___awdiv@sign),w
	skipz
	goto	u720
	goto	l3170
u720:
	line	35
	
l3168:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l3170:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l2310:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwmod
psect	text428,local,class=CODE,delta=2
global __ptext428
__ptext428:

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
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
psect	text428
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l3110:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u621
	goto	u620
u621:
	goto	l3126
u620:
	line	9
	
l3112:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l3116
	line	11
	
l3114:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l3116:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u631
	goto	u630
u631:
	goto	l3114
u630:
	line	15
	
l3118:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u645
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u645:
	skipc
	goto	u641
	goto	u640
u641:
	goto	l3122
u640:
	line	16
	
l3120:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l3122:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l3124:	
	decfsz	(___lwmod@counter),f
	goto	u651
	goto	u650
u651:
	goto	l3118
u650:
	line	20
	
l3126:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l2183:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text429,local,class=CODE,delta=2
global __ptext429
__ptext429:

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
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
psect	text429
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3400:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3402:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u1011
	goto	u1010
u1011:
	goto	l3422
u1010:
	line	11
	
l3404:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l3408
	line	13
	
l3406:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l3408:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1021
	goto	u1020
u1021:
	goto	l3406
u1020:
	line	17
	
l3410:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l3412:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1035
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1035:
	skipc
	goto	u1031
	goto	u1030
u1031:
	goto	l3418
u1030:
	line	19
	
l3414:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3416:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l3418:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l3420:	
	decfsz	(___lwdiv@counter),f
	goto	u1041
	goto	u1040
u1041:
	goto	l3410
u1040:
	line	25
	
l3422:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l2173:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text430,local,class=CODE,delta=2
global __ptext430
__ptext430:

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
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
;;		_sprintf
;;		_atoi
;; This function uses a non-reentrant model
;;
psect	text430
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3068:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l3070:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u561
	goto	u560
u561:
	goto	l3074
u560:
	line	8
	
l3072:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l3074:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l3076:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l3078:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u571
	goto	u570
u571:
	goto	l3070
u570:
	line	12
	
l3080:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l2163:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_isdigit
psect	text431,local,class=CODE,delta=2
global __ptext431
__ptext431:

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
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
;;		_sprintf
;;		_atoi
;; This function uses a non-reentrant model
;;
psect	text431
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 5
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l3056:	
	clrf	(_isdigit$2383)
	
l3058:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u541
	goto	u540
u541:
	goto	l3064
u540:
	
l3060:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u551
	goto	u550
u551:
	goto	l3064
u550:
	
l3062:	
	clrf	(_isdigit$2383)
	incf	(_isdigit$2383),f
	
l3064:	
	rrf	(_isdigit$2383),w
	
	line	15
	
l2151:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_send_char
psect	text432,local,class=CODE,delta=2
global __ptext432
__ptext432:

;; *************** function _send_char *****************
;; Defined at:
;;		line 77 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 08\BT Ôn Thi 08.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
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
psect	text432
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 08\BT Ôn Thi 08.c"
	line	77
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 5
; Regs used in _send_char: [wreg]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	78
	
l3052:	
;BT Ôn Thi 08.c: 78: while (TXIF==0){}
	
l1080:	
	btfss	(100/8),(100)&7
	goto	u531
	goto	u530
u531:
	goto	l1080
u530:
	line	79
	
l3054:	
;BT Ôn Thi 08.c: 79: TXREG = data;
	movf	(send_char@data),w
	movwf	(25)	;volatile
	line	80
	
l1083:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_rx
psect	text433,local,class=CODE,delta=2
global __ptext433
__ptext433:

;; *************** function _rx *****************
;; Defined at:
;;		line 93 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 08\BT Ôn Thi 08.c"
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
psect	text433
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 08\BT Ôn Thi 08.c"
	line	93
	global	__size_of_rx
	__size_of_rx	equ	__end_of_rx-_rx
	
_rx:	
	opt	stack 6
; Regs used in _rx: [wreg]
	line	94
	
l3022:	
;BT Ôn Thi 08.c: 94: SYNC = 0; BRGH = 1; BRG16 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	95
	
l3024:	
;BT Ôn Thi 08.c: 95: SPBRGH = 0x02;
	movlw	(02h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	96
;BT Ôn Thi 08.c: 96: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	97
	
l3026:	
;BT Ôn Thi 08.c: 97: CREN = 1; RX9 = 0; SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(196/8),(196)&7
	
l3028:	
	bcf	(198/8),(198)&7
	
l3030:	
	bsf	(199/8),(199)&7
	line	98
	
l3032:	
;BT Ôn Thi 08.c: 98: RCIE=1; RCIF=0; PEIE=1; GIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1125/8)^080h,(1125)&7
	
l3034:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(101/8),(101)&7
	
l3036:	
	bsf	(94/8),(94)&7
	
l3038:	
	bsf	(95/8),(95)&7
	line	99
	
l1095:	
	return
	opt stack 0
GLOBAL	__end_of_rx
	__end_of_rx:
;; =============== function _rx ends ============

	signat	_rx,88
	global	_tx
psect	text434,local,class=CODE,delta=2
global __ptext434
__ptext434:

;; *************** function _tx *****************
;; Defined at:
;;		line 85 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 08\BT Ôn Thi 08.c"
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
psect	text434
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 08\BT Ôn Thi 08.c"
	line	85
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
	
_tx:	
	opt	stack 6
; Regs used in _tx: [wreg]
	line	86
	
l3012:	
;BT Ôn Thi 08.c: 86: SYNC = 0; BRGH = 1; BRG16 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1220/8)^080h,(1220)&7
	bsf	(1218/8)^080h,(1218)&7
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	87
	
l3014:	
;BT Ôn Thi 08.c: 87: SPBRGH = 0x02;
	movlw	(02h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	88
;BT Ôn Thi 08.c: 88: SPBRG = 0x08;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	89
	
l3016:	
;BT Ôn Thi 08.c: 89: TXEN = 1; TX9 = 0; SPEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	
l3018:	
	bcf	(1222/8)^080h,(1222)&7
	
l3020:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	91
	
l1092:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
;; =============== function _tx ends ============

	signat	_tx,88
	global	_ngat
psect	text435,local,class=CODE,delta=2
global __ptext435
__ptext435:

;; *************** function _ngat *****************
;; Defined at:
;;		line 68 in file "D:\TTVXL\Project TTVXL\BT Ôn Thi 08\BT Ôn Thi 08.c"
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
psect	text435
	file	"D:\TTVXL\Project TTVXL\BT Ôn Thi 08\BT Ôn Thi 08.c"
	line	68
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
psect	text435
	line	69
	
i1l3040:	
;BT Ôn Thi 08.c: 69: if (RCIF){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u51_21
	goto	u51_20
u51_21:
	goto	i1l3050
u51_20:
	line	70
	
i1l3042:	
;BT Ôn Thi 08.c: 70: data_rx[a]=RCREG;
	movf	(_a),w
	addlw	_data_rx&0ffh
	movwf	fsr0
	movf	(26),w	;volatile
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	71
	
i1l3044:	
;BT Ôn Thi 08.c: 71: a++;
	incf	(_a),f
	skipnz
	incf	(_a+1),f
	line	72
	
i1l3046:	
;BT Ôn Thi 08.c: 72: if (a==3) {a=0;}
		movf	(_a),w
	xorlw	3
	iorwf	(_a+1),w

	skipz
	goto	u52_21
	goto	u52_20
u52_21:
	goto	i1l3050
u52_20:
	
i1l3048:	
	clrf	(_a)
	clrf	(_a+1)
	line	74
	
i1l3050:	
;BT Ôn Thi 08.c: 73: }
;BT Ôn Thi 08.c: 74: RCIF=0;
	bcf	(101/8),(101)&7
	line	75
	
i1l1077:	
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
psect	text436,local,class=CODE,delta=2
global __ptext436
__ptext436:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
