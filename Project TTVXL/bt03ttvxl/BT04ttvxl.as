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
# 6 "D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_Led_move_right_to_left_single
	FNCALL	_main,_Led_move_left_to_right_single
	FNCALL	_main,_Led_move_interleaved
	FNCALL	_main,_Led_move_left_to_right_one_by_o
	FNCALL	_main,_Led_move_right_to_left_one_by_o
	FNCALL	_main,_Led_move_in_to_out_one_by_one
	FNCALL	_main,_Led_move_out_to_in_one_by_one
	FNCALL	_main,_Led_blink
	FNROOT	_main
	FNCALL	intlevel1,_button
	global	intlevel1
	FNROOT	intlevel1
	global	_S1_state
	global	_PORTC
psect	text126,local,class=CODE,delta=2
global __ptext126
__ptext126:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_GIE
_GIE	set	95
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RBIE
_RBIE	set	91
	global	_RBIF
_RBIF	set	88
	global	_IOCB
_IOCB	set	150
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"BT04ttvxl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_S1_state:
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
	global	?_Led_move_left_to_right_single
?_Led_move_left_to_right_single:	; 0 bytes @ 0x0
	global	?_Led_move_right_to_left_single
?_Led_move_right_to_left_single:	; 0 bytes @ 0x0
	global	?_Led_move_right_to_left_one_by_o
?_Led_move_right_to_left_one_by_o:	; 0 bytes @ 0x0
	global	?_Led_move_left_to_right_one_by_o
?_Led_move_left_to_right_one_by_o:	; 0 bytes @ 0x0
	global	?_Led_move_in_to_out_one_by_one
?_Led_move_in_to_out_one_by_one:	; 0 bytes @ 0x0
	global	?_Led_move_out_to_in_one_by_one
?_Led_move_out_to_in_one_by_one:	; 0 bytes @ 0x0
	global	?_Led_move_interleaved
?_Led_move_interleaved:	; 0 bytes @ 0x0
	global	?_Led_blink
?_Led_blink:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_button
?_button:	; 0 bytes @ 0x0
	global	??_button
??_button:	; 0 bytes @ 0x0
	ds	2
	global	??_Led_move_left_to_right_single
??_Led_move_left_to_right_single:	; 0 bytes @ 0x2
	global	??_Led_move_right_to_left_single
??_Led_move_right_to_left_single:	; 0 bytes @ 0x2
	global	??_Led_move_right_to_left_one_by_o
??_Led_move_right_to_left_one_by_o:	; 0 bytes @ 0x2
	global	??_Led_move_left_to_right_one_by_o
??_Led_move_left_to_right_one_by_o:	; 0 bytes @ 0x2
	global	??_Led_move_in_to_out_one_by_one
??_Led_move_in_to_out_one_by_one:	; 0 bytes @ 0x2
	global	??_Led_move_out_to_in_one_by_one
??_Led_move_out_to_in_one_by_one:	; 0 bytes @ 0x2
	global	??_Led_move_interleaved
??_Led_move_interleaved:	; 0 bytes @ 0x2
	global	??_Led_blink
??_Led_blink:	; 0 bytes @ 0x2
	ds	3
	global	Led_move_left_to_right_single@i
Led_move_left_to_right_single@i:	; 1 bytes @ 0x5
	global	Led_move_right_to_left_single@i
Led_move_right_to_left_single@i:	; 1 bytes @ 0x5
	global	Led_move_right_to_left_one_by_o@m
Led_move_right_to_left_one_by_o@m:	; 1 bytes @ 0x5
	global	Led_move_left_to_right_one_by_o@m
Led_move_left_to_right_one_by_o@m:	; 1 bytes @ 0x5
	global	Led_move_in_to_out_one_by_one@m
Led_move_in_to_out_one_by_one@m:	; 1 bytes @ 0x5
	global	Led_move_out_to_in_one_by_one@m
Led_move_out_to_in_one_by_one@m:	; 1 bytes @ 0x5
	global	Led_move_interleaved@x
Led_move_interleaved@x:	; 1 bytes @ 0x5
	global	Led_blink@x
Led_blink@x:	; 1 bytes @ 0x5
	ds	1
	global	Led_move_left_to_right_single@m
Led_move_left_to_right_single@m:	; 1 bytes @ 0x6
	global	Led_move_right_to_left_single@m
Led_move_right_to_left_single@m:	; 1 bytes @ 0x6
	global	Led_move_right_to_left_one_by_o@m_1798
Led_move_right_to_left_one_by_o@m_1798:	; 1 bytes @ 0x6
	global	Led_move_left_to_right_one_by_o@m_1803
Led_move_left_to_right_one_by_o@m_1803:	; 1 bytes @ 0x6
	global	Led_move_in_to_out_one_by_one@i
Led_move_in_to_out_one_by_one@i:	; 1 bytes @ 0x6
	global	Led_move_out_to_in_one_by_one@i
Led_move_out_to_in_one_by_one@i:	; 1 bytes @ 0x6
	global	Led_move_interleaved@y
Led_move_interleaved@y:	; 1 bytes @ 0x6
	global	Led_blink@y
Led_blink@y:	; 1 bytes @ 0x6
	ds	1
	global	Led_move_left_to_right_single@m_1788
Led_move_left_to_right_single@m_1788:	; 1 bytes @ 0x7
	global	Led_move_right_to_left_single@m_1793
Led_move_right_to_left_single@m_1793:	; 1 bytes @ 0x7
	global	Led_move_right_to_left_one_by_o@i
Led_move_right_to_left_one_by_o@i:	; 1 bytes @ 0x7
	global	Led_move_left_to_right_one_by_o@i
Led_move_left_to_right_one_by_o@i:	; 1 bytes @ 0x7
	global	Led_move_in_to_out_one_by_one@h
Led_move_in_to_out_one_by_one@h:	; 1 bytes @ 0x7
	global	Led_move_out_to_in_one_by_one@h
Led_move_out_to_in_one_by_one@h:	; 1 bytes @ 0x7
	global	Led_move_interleaved@z
Led_move_interleaved@z:	; 1 bytes @ 0x7
	global	Led_blink@z
Led_blink@z:	; 1 bytes @ 0x7
	ds	1
	global	Led_move_left_to_right_single@h
Led_move_left_to_right_single@h:	; 1 bytes @ 0x8
	global	Led_move_right_to_left_single@h
Led_move_right_to_left_single@h:	; 1 bytes @ 0x8
	global	Led_move_right_to_left_one_by_o@h
Led_move_right_to_left_one_by_o@h:	; 1 bytes @ 0x8
	global	Led_move_left_to_right_one_by_o@h
Led_move_left_to_right_one_by_o@h:	; 1 bytes @ 0x8
	global	Led_move_interleaved@h
Led_move_interleaved@h:	; 1 bytes @ 0x8
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x9
;;Data sizes: Strings 0, constant 0, data 0, bss 1, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      10
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Led_move_right_to_left_single
;;   _main->_Led_move_left_to_right_single
;;   _main->_Led_move_interleaved
;;   _main->_Led_move_left_to_right_one_by_o
;;   _main->_Led_move_right_to_left_one_by_o
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
;; (0) _main                                                 0     0      0     900
;;      _Led_move_right_to_left_single
;;      _Led_move_left_to_right_single
;;               _Led_move_interleaved
;;    _Led_move_left_to_right_one_by_o
;;    _Led_move_right_to_left_one_by_o
;;      _Led_move_in_to_out_one_by_one
;;      _Led_move_out_to_in_one_by_one
;;                          _Led_blink
;; ---------------------------------------------------------------------------------
;; (1) _Led_blink                                            6     6      0      60
;;                                              2 COMMON     6     6      0
;; ---------------------------------------------------------------------------------
;; (1) _Led_move_interleaved                                 7     7      0      60
;;                                              2 COMMON     7     7      0
;; ---------------------------------------------------------------------------------
;; (1) _Led_move_out_to_in_one_by_one                        6     6      0     120
;;                                              2 COMMON     6     6      0
;; ---------------------------------------------------------------------------------
;; (1) _Led_move_in_to_out_one_by_one                        6     6      0     120
;;                                              2 COMMON     6     6      0
;; ---------------------------------------------------------------------------------
;; (1) _Led_move_left_to_right_one_by_o                      7     7      0     150
;;                                              2 COMMON     7     7      0
;; ---------------------------------------------------------------------------------
;; (1) _Led_move_right_to_left_one_by_o                      7     7      0     150
;;                                              2 COMMON     7     7      0
;; ---------------------------------------------------------------------------------
;; (1) _Led_move_right_to_left_single                        7     7      0     120
;;                                              2 COMMON     7     7      0
;; ---------------------------------------------------------------------------------
;; (1) _Led_move_left_to_right_single                        7     7      0     120
;;                                              2 COMMON     7     7      0
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
;;   _Led_move_right_to_left_single
;;   _Led_move_left_to_right_single
;;   _Led_move_interleaved
;;   _Led_move_left_to_right_one_by_o
;;   _Led_move_right_to_left_one_by_o
;;   _Led_move_in_to_out_one_by_one
;;   _Led_move_out_to_in_one_by_one
;;   _Led_blink
;;
;; _button (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      9       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       A       3        0.0%
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
;;DATA                 0      0       B      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 181 in file "D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Led_move_right_to_left_single
;;		_Led_move_left_to_right_single
;;		_Led_move_interleaved
;;		_Led_move_left_to_right_one_by_o
;;		_Led_move_right_to_left_one_by_o
;;		_Led_move_in_to_out_one_by_one
;;		_Led_move_out_to_in_one_by_one
;;		_Led_blink
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
	line	181
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	182
	
l2874:	
;bt04ttvxlweek9.c: 182: TRISC = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(135)^080h	;volatile
	line	183
;bt04ttvxlweek9.c: 183: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	184
;bt04ttvxlweek9.c: 184: ANSEL = ANSELH = 0;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	185
	
l2876:	
;bt04ttvxlweek9.c: 185: TRISB = 0xFF;
	movlw	(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	186
	
l2878:	
;bt04ttvxlweek9.c: 186: PORTC = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	187
	
l2880:	
;bt04ttvxlweek9.c: 187: PORTD = 0;
	clrf	(8)	;volatile
	line	190
	
l2882:	
;bt04ttvxlweek9.c: 190: GIE = 1;
	bsf	(95/8),(95)&7
	line	191
	
l2884:	
;bt04ttvxlweek9.c: 191: RBIE = 1;
	bsf	(91/8),(91)&7
	line	192
	
l2886:	
;bt04ttvxlweek9.c: 192: RBIF = 0;
	bcf	(88/8),(88)&7
	line	193
	
l2888:	
;bt04ttvxlweek9.c: 193: IOCB = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(150)^080h	;volatile
	line	196
	
l2890:	
;bt04ttvxlweek9.c: 196: if (S1_state == 1){Led_move_right_to_left_single();}
	decf	(_S1_state),w
	skipz
	goto	u651
	goto	u650
u651:
	goto	l2894
u650:
	
l2892:	
	fcall	_Led_move_right_to_left_single
	line	197
	
l2894:	
;bt04ttvxlweek9.c: 197: if (S1_state == 2){Led_move_left_to_right_single();}
	movf	(_S1_state),w
	xorlw	02h
	skipz
	goto	u661
	goto	u660
u661:
	goto	l2898
u660:
	
l2896:	
	fcall	_Led_move_left_to_right_single
	line	198
	
l2898:	
;bt04ttvxlweek9.c: 198: if (S1_state == 3){Led_move_interleaved();}
	movf	(_S1_state),w
	xorlw	03h
	skipz
	goto	u671
	goto	u670
u671:
	goto	l2902
u670:
	
l2900:	
	fcall	_Led_move_interleaved
	line	199
	
l2902:	
;bt04ttvxlweek9.c: 199: if (S1_state == 4){Led_move_left_to_right_one_by_o();}
	movf	(_S1_state),w
	xorlw	04h
	skipz
	goto	u681
	goto	u680
u681:
	goto	l2906
u680:
	
l2904:	
	fcall	_Led_move_left_to_right_one_by_o
	line	200
	
l2906:	
;bt04ttvxlweek9.c: 200: if (S1_state == 5){Led_move_right_to_left_one_by_o();}
	movf	(_S1_state),w
	xorlw	05h
	skipz
	goto	u691
	goto	u690
u691:
	goto	l2910
u690:
	
l2908:	
	fcall	_Led_move_right_to_left_one_by_o
	line	201
	
l2910:	
;bt04ttvxlweek9.c: 201: if (S1_state == 6){Led_move_in_to_out_one_by_one();}
	movf	(_S1_state),w
	xorlw	06h
	skipz
	goto	u701
	goto	u700
u701:
	goto	l2914
u700:
	
l2912:	
	fcall	_Led_move_in_to_out_one_by_one
	line	202
	
l2914:	
;bt04ttvxlweek9.c: 202: if (S1_state == 7){Led_move_out_to_in_one_by_one();}
	movf	(_S1_state),w
	xorlw	07h
	skipz
	goto	u711
	goto	u710
u711:
	goto	l2918
u710:
	
l2916:	
	fcall	_Led_move_out_to_in_one_by_one
	line	203
	
l2918:	
;bt04ttvxlweek9.c: 203: if (S1_state == 8){Led_blink();}
	movf	(_S1_state),w
	xorlw	08h
	skipz
	goto	u721
	goto	u720
u721:
	goto	l2890
u720:
	
l2920:	
	fcall	_Led_blink
	goto	l2890
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	206
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Led_blink
psect	text127,local,class=CODE,delta=2
global __ptext127
__ptext127:

;; *************** function _Led_blink *****************
;; Defined at:
;;		line 160 in file "D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  z               1    7[COMMON] unsigned char 
;;  y               1    6[COMMON] unsigned char 
;;  x               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          3       0       0       0       0
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
psect	text127
	file	"D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
	line	160
	global	__size_of_Led_blink
	__size_of_Led_blink	equ	__end_of_Led_blink-_Led_blink
	
_Led_blink:	
	opt	stack 6
; Regs used in _Led_blink: [wreg+status,2+status,0]
	line	161
	
l2850:	
;bt04ttvxlweek9.c: 161: unsigned char x,y,z=0 ;
	clrf	(Led_blink@z)
	line	162
;bt04ttvxlweek9.c: 162: while(S1_state == 8){
	goto	l2868
	line	163
	
l2852:	
;bt04ttvxlweek9.c: 163: if (S1_state!=8) {break;}
	movf	(_S1_state),w
	xorlw	08h
	skipnz
	goto	u581
	goto	u580
u581:
	goto	l2856
u580:
	goto	l2870
	line	164
	
l2856:	
;bt04ttvxlweek9.c: 164: x=0|z;
	movf	(Led_blink@z),w
	movwf	(Led_blink@x)
	line	165
;bt04ttvxlweek9.c: 165: y=0|z;
	movf	(Led_blink@z),w
	movwf	(Led_blink@y)
	line	166
;bt04ttvxlweek9.c: 166: PORTC=x;
	movf	(Led_blink@x),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	167
;bt04ttvxlweek9.c: 167: PORTD=y;
	movf	(Led_blink@y),w
	movwf	(8)	;volatile
	line	168
;bt04ttvxlweek9.c: 168: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_Led_blink+0)+0+2),f
movlw	19
movwf	((??_Led_blink+0)+0+1),f
	movlw	177
movwf	((??_Led_blink+0)+0),f
u737:
	decfsz	((??_Led_blink+0)+0),f
	goto	u737
	decfsz	((??_Led_blink+0)+0+1),f
	goto	u737
	decfsz	((??_Led_blink+0)+0+2),f
	goto	u737
	nop2
opt asmopt_on

	line	169
	
l2858:	
;bt04ttvxlweek9.c: 169: if (PORTC==0 && PORTD==0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),f
	skipz	;volatile
	goto	u591
	goto	u590
u591:
	goto	l1097
u590:
	
l2860:	
	movf	(8),f
	skipz	;volatile
	goto	u601
	goto	u600
u601:
	goto	l1097
u600:
	line	170
	
l2862:	
;bt04ttvxlweek9.c: 170: z=0xFF;
	movlw	(0FFh)
	movwf	(Led_blink@z)
	line	171
	
l1097:	
	line	172
;bt04ttvxlweek9.c: 171: }
;bt04ttvxlweek9.c: 172: if (PORTC==0xFF && PORTD==0xFF){
	movf	(7),w	;volatile
	xorlw	0FFh
	skipz
	goto	u611
	goto	u610
u611:
	goto	l2868
u610:
	
l2864:	
	movf	(8),w	;volatile
	xorlw	0FFh
	skipz
	goto	u621
	goto	u620
u621:
	goto	l2868
u620:
	goto	l2850
	line	162
	
l2868:	
	movf	(_S1_state),w
	xorlw	08h
	skipnz
	goto	u631
	goto	u630
u631:
	goto	l2852
u630:
	line	176
	
l2870:	
;bt04ttvxlweek9.c: 174: }
;bt04ttvxlweek9.c: 175: }
;bt04ttvxlweek9.c: 176: if (S1_state != 8){PORTC=PORTD=0;}
	movf	(_S1_state),w
	xorlw	08h
	skipnz
	goto	u641
	goto	u640
u641:
	goto	l1100
u640:
	
l2872:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	clrf	(7)	;volatile
	line	177
	
l1100:	
	return
	opt stack 0
GLOBAL	__end_of_Led_blink
	__end_of_Led_blink:
;; =============== function _Led_blink ends ============

	signat	_Led_blink,88
	global	_Led_move_interleaved
psect	text128,local,class=CODE,delta=2
global __ptext128
__ptext128:

;; *************** function _Led_move_interleaved *****************
;; Defined at:
;;		line 137 in file "D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  h               1    8[COMMON] unsigned char 
;;  z               1    7[COMMON] unsigned char 
;;  y               1    6[COMMON] unsigned char 
;;  x               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text128
	file	"D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
	line	137
	global	__size_of_Led_move_interleaved
	__size_of_Led_move_interleaved	equ	__end_of_Led_move_interleaved-_Led_move_interleaved
	
_Led_move_interleaved:	
	opt	stack 6
; Regs used in _Led_move_interleaved: [wreg+status,2]
	line	138
	
l2826:	
	line	139
	
l2828:	
;bt04ttvxlweek9.c: 139: z=0b01010101;
	movlw	(055h)
	movwf	(Led_move_interleaved@z)
	line	140
	
l2830:	
;bt04ttvxlweek9.c: 140: h=0b10101010;
	movlw	(0AAh)
	movwf	(Led_move_interleaved@h)
	line	141
;bt04ttvxlweek9.c: 141: while(S1_state == 3){
	goto	l1083
	line	142
	
l2832:	
;bt04ttvxlweek9.c: 142: if (S1_state!=3) {break;}
	movf	(_S1_state),w
	xorlw	03h
	skipnz
	goto	u511
	goto	u510
u511:
	goto	l2836
u510:
	goto	l2846
	line	143
	
l2836:	
;bt04ttvxlweek9.c: 143: x=0|z;
	movf	(Led_move_interleaved@z),w
	movwf	(Led_move_interleaved@x)
	line	144
;bt04ttvxlweek9.c: 144: y=0|h;
	movf	(Led_move_interleaved@h),w
	movwf	(Led_move_interleaved@y)
	line	145
;bt04ttvxlweek9.c: 145: PORTC=x;
	movf	(Led_move_interleaved@x),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	146
;bt04ttvxlweek9.c: 146: PORTD=y;
	movf	(Led_move_interleaved@y),w
	movwf	(8)	;volatile
	line	147
;bt04ttvxlweek9.c: 147: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_Led_move_interleaved+0)+0+2),f
movlw	19
movwf	((??_Led_move_interleaved+0)+0+1),f
	movlw	177
movwf	((??_Led_move_interleaved+0)+0),f
u747:
	decfsz	((??_Led_move_interleaved+0)+0),f
	goto	u747
	decfsz	((??_Led_move_interleaved+0)+0+1),f
	goto	u747
	decfsz	((??_Led_move_interleaved+0)+0+2),f
	goto	u747
	nop2
opt asmopt_on

	line	148
;bt04ttvxlweek9.c: 148: if (PORTC==0b10101010 && PORTD==0b01010101){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w	;volatile
	xorlw	0AAh
	skipz
	goto	u521
	goto	u520
u521:
	goto	l1087
u520:
	
l2838:	
	movf	(8),w	;volatile
	xorlw	055h
	skipz
	goto	u531
	goto	u530
u531:
	goto	l1087
u530:
	line	149
	
l2840:	
;bt04ttvxlweek9.c: 149: z=0b01010101;
	movlw	(055h)
	movwf	(Led_move_interleaved@z)
	line	150
;bt04ttvxlweek9.c: 150: h=0b10101010;
	movlw	(0AAh)
	movwf	(Led_move_interleaved@h)
	line	151
	
l1087:	
	line	152
;bt04ttvxlweek9.c: 151: }
;bt04ttvxlweek9.c: 152: if (PORTC==0b01010101 && PORTD==0b10101010){
	movf	(7),w	;volatile
	xorlw	055h
	skipz
	goto	u541
	goto	u540
u541:
	goto	l1083
u540:
	
l2842:	
	movf	(8),w	;volatile
	xorlw	0AAh
	skipz
	goto	u551
	goto	u550
u551:
	goto	l1083
u550:
	line	153
	
l2844:	
;bt04ttvxlweek9.c: 153: z=0b10101010;
	movlw	(0AAh)
	movwf	(Led_move_interleaved@z)
	line	154
;bt04ttvxlweek9.c: 154: h=0b01010101;
	movlw	(055h)
	movwf	(Led_move_interleaved@h)
	line	156
	
l1083:	
	line	141
	movf	(_S1_state),w
	xorlw	03h
	skipnz
	goto	u561
	goto	u560
u561:
	goto	l2832
u560:
	line	157
	
l2846:	
;bt04ttvxlweek9.c: 155: }
;bt04ttvxlweek9.c: 156: }
;bt04ttvxlweek9.c: 157: if (S1_state != 3){PORTC=PORTD=0;}
	movf	(_S1_state),w
	xorlw	03h
	skipnz
	goto	u571
	goto	u570
u571:
	goto	l1090
u570:
	
l2848:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	clrf	(7)	;volatile
	line	158
	
l1090:	
	return
	opt stack 0
GLOBAL	__end_of_Led_move_interleaved
	__end_of_Led_move_interleaved:
;; =============== function _Led_move_interleaved ends ============

	signat	_Led_move_interleaved,88
	global	_Led_move_out_to_in_one_by_one
psect	text129,local,class=CODE,delta=2
global __ptext129
__ptext129:

;; *************** function _Led_move_out_to_in_one_by_one *****************
;; Defined at:
;;		line 119 in file "D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  m               1    5[COMMON] unsigned char 
;;  h               1    7[COMMON] unsigned char 
;;  i               1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          3       0       0       0       0
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
psect	text129
	file	"D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
	line	119
	global	__size_of_Led_move_out_to_in_one_by_one
	__size_of_Led_move_out_to_in_one_by_one	equ	__end_of_Led_move_out_to_in_one_by_one-_Led_move_out_to_in_one_by_one
	
_Led_move_out_to_in_one_by_one:	
	opt	stack 6
; Regs used in _Led_move_out_to_in_one_by_one: [wreg+status,2+status,0]
	line	120
	
l2794:	
	line	121
	
l2796:	
;bt04ttvxlweek9.c: 121: i = 0b10000000;
	movlw	(080h)
	movwf	(Led_move_out_to_in_one_by_one@i)
	line	122
	
l2798:	
;bt04ttvxlweek9.c: 122: h = 0b10000000;
	movlw	(080h)
	movwf	(Led_move_out_to_in_one_by_one@h)
	line	123
;bt04ttvxlweek9.c: 123: for (char m=0;m<8;m++){
	clrf	(Led_move_out_to_in_one_by_one@m)
	line	124
	
l2804:	
;bt04ttvxlweek9.c: 124: if (S1_state!=7) {break;}
	movf	(_S1_state),w
	xorlw	07h
	skipnz
	goto	u481
	goto	u480
u481:
	goto	l2808
u480:
	goto	l2818
	line	125
	
l2808:	
;bt04ttvxlweek9.c: 125: PORTD = i;
	movf	(Led_move_out_to_in_one_by_one@i),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	126
;bt04ttvxlweek9.c: 126: PORTC = h;
	movf	(Led_move_out_to_in_one_by_one@h),w
	movwf	(7)	;volatile
	line	127
	
l2810:	
;bt04ttvxlweek9.c: 127: h=h>>1|h;
	clrc
	rrf	(Led_move_out_to_in_one_by_one@h),w
	iorwf	(Led_move_out_to_in_one_by_one@h),w
	movwf	(Led_move_out_to_in_one_by_one@h)
	line	128
	
l2812:	
;bt04ttvxlweek9.c: 128: i=i>>1|i;
	clrc
	rrf	(Led_move_out_to_in_one_by_one@i),w
	iorwf	(Led_move_out_to_in_one_by_one@i),w
	movwf	(Led_move_out_to_in_one_by_one@i)
	line	129
;bt04ttvxlweek9.c: 129: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_Led_move_out_to_in_one_by_one+0)+0+2),f
movlw	19
movwf	((??_Led_move_out_to_in_one_by_one+0)+0+1),f
	movlw	177
movwf	((??_Led_move_out_to_in_one_by_one+0)+0),f
u757:
	decfsz	((??_Led_move_out_to_in_one_by_one+0)+0),f
	goto	u757
	decfsz	((??_Led_move_out_to_in_one_by_one+0)+0+1),f
	goto	u757
	decfsz	((??_Led_move_out_to_in_one_by_one+0)+0+2),f
	goto	u757
	nop2
opt asmopt_on

	line	123
	
l2814:	
	incf	(Led_move_out_to_in_one_by_one@m),f
	
l2816:	
	movlw	(08h)
	subwf	(Led_move_out_to_in_one_by_one@m),w
	skipc
	goto	u491
	goto	u490
u491:
	goto	l2804
u490:
	line	131
	
l2818:	
;bt04ttvxlweek9.c: 130: }
;bt04ttvxlweek9.c: 131: PORTC=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	132
;bt04ttvxlweek9.c: 132: PORTD=0;
	clrf	(8)	;volatile
	line	133
	
l2820:	
;bt04ttvxlweek9.c: 133: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_Led_move_out_to_in_one_by_one+0)+0+2),f
movlw	19
movwf	((??_Led_move_out_to_in_one_by_one+0)+0+1),f
	movlw	177
movwf	((??_Led_move_out_to_in_one_by_one+0)+0),f
u767:
	decfsz	((??_Led_move_out_to_in_one_by_one+0)+0),f
	goto	u767
	decfsz	((??_Led_move_out_to_in_one_by_one+0)+0+1),f
	goto	u767
	decfsz	((??_Led_move_out_to_in_one_by_one+0)+0+2),f
	goto	u767
	nop2
opt asmopt_on

	line	134
	
l2822:	
;bt04ttvxlweek9.c: 134: if (S1_state!=7) {PORTC=PORTD=0;}
	movf	(_S1_state),w
	xorlw	07h
	skipnz
	goto	u501
	goto	u500
u501:
	goto	l1080
u500:
	
l2824:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	clrf	(7)	;volatile
	line	135
	
l1080:	
	return
	opt stack 0
GLOBAL	__end_of_Led_move_out_to_in_one_by_one
	__end_of_Led_move_out_to_in_one_by_one:
;; =============== function _Led_move_out_to_in_one_by_one ends ============

	signat	_Led_move_out_to_in_one_by_one,88
	global	_Led_move_in_to_out_one_by_one
psect	text130,local,class=CODE,delta=2
global __ptext130
__ptext130:

;; *************** function _Led_move_in_to_out_one_by_one *****************
;; Defined at:
;;		line 101 in file "D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  m               1    5[COMMON] unsigned char 
;;  h               1    7[COMMON] unsigned char 
;;  i               1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          3       0       0       0       0
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
psect	text130
	file	"D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
	line	101
	global	__size_of_Led_move_in_to_out_one_by_one
	__size_of_Led_move_in_to_out_one_by_one	equ	__end_of_Led_move_in_to_out_one_by_one-_Led_move_in_to_out_one_by_one
	
_Led_move_in_to_out_one_by_one:	
	opt	stack 6
; Regs used in _Led_move_in_to_out_one_by_one: [wreg+status,2+status,0]
	line	102
	
l2764:	
	line	103
	
l2766:	
;bt04ttvxlweek9.c: 103: i = 0b00000001;
	clrf	(Led_move_in_to_out_one_by_one@i)
	incf	(Led_move_in_to_out_one_by_one@i),f
	line	104
	
l2768:	
;bt04ttvxlweek9.c: 104: h = 0b00000001;
	clrf	(Led_move_in_to_out_one_by_one@h)
	incf	(Led_move_in_to_out_one_by_one@h),f
	line	105
;bt04ttvxlweek9.c: 105: for (char m=0;m<8;m++){
	clrf	(Led_move_in_to_out_one_by_one@m)
	line	106
	
l2774:	
;bt04ttvxlweek9.c: 106: PORTD = i;
	movf	(Led_move_in_to_out_one_by_one@i),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	107
;bt04ttvxlweek9.c: 107: PORTC = h;
	movf	(Led_move_in_to_out_one_by_one@h),w
	movwf	(7)	;volatile
	line	108
	
l2776:	
;bt04ttvxlweek9.c: 108: h=h<<1|h;
	clrc
	rlf	(Led_move_in_to_out_one_by_one@h),w
	iorwf	(Led_move_in_to_out_one_by_one@h),w
	movwf	(Led_move_in_to_out_one_by_one@h)
	line	109
	
l2778:	
;bt04ttvxlweek9.c: 109: i=i<<1|i;
	clrc
	rlf	(Led_move_in_to_out_one_by_one@i),w
	iorwf	(Led_move_in_to_out_one_by_one@i),w
	movwf	(Led_move_in_to_out_one_by_one@i)
	line	110
;bt04ttvxlweek9.c: 110: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_Led_move_in_to_out_one_by_one+0)+0+2),f
movlw	19
movwf	((??_Led_move_in_to_out_one_by_one+0)+0+1),f
	movlw	177
movwf	((??_Led_move_in_to_out_one_by_one+0)+0),f
u777:
	decfsz	((??_Led_move_in_to_out_one_by_one+0)+0),f
	goto	u777
	decfsz	((??_Led_move_in_to_out_one_by_one+0)+0+1),f
	goto	u777
	decfsz	((??_Led_move_in_to_out_one_by_one+0)+0+2),f
	goto	u777
	nop2
opt asmopt_on

	line	111
;bt04ttvxlweek9.c: 111: if (S1_state!=6) {break;}
	movf	(_S1_state),w
	xorlw	06h
	skipnz
	goto	u451
	goto	u450
u451:
	goto	l2782
u450:
	goto	l2786
	line	105
	
l2782:	
	incf	(Led_move_in_to_out_one_by_one@m),f
	
l2784:	
	movlw	(08h)
	subwf	(Led_move_in_to_out_one_by_one@m),w
	skipc
	goto	u461
	goto	u460
u461:
	goto	l2774
u460:
	line	113
	
l2786:	
;bt04ttvxlweek9.c: 112: }
;bt04ttvxlweek9.c: 113: PORTC=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	114
;bt04ttvxlweek9.c: 114: PORTD=0;
	clrf	(8)	;volatile
	line	115
	
l2788:	
;bt04ttvxlweek9.c: 115: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_Led_move_in_to_out_one_by_one+0)+0+2),f
movlw	19
movwf	((??_Led_move_in_to_out_one_by_one+0)+0+1),f
	movlw	177
movwf	((??_Led_move_in_to_out_one_by_one+0)+0),f
u787:
	decfsz	((??_Led_move_in_to_out_one_by_one+0)+0),f
	goto	u787
	decfsz	((??_Led_move_in_to_out_one_by_one+0)+0+1),f
	goto	u787
	decfsz	((??_Led_move_in_to_out_one_by_one+0)+0+2),f
	goto	u787
	nop2
opt asmopt_on

	line	116
	
l2790:	
;bt04ttvxlweek9.c: 116: if (S1_state!=6) {PORTC=PORTD=0;}
	movf	(_S1_state),w
	xorlw	06h
	skipnz
	goto	u471
	goto	u470
u471:
	goto	l1073
u470:
	
l2792:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	clrf	(7)	;volatile
	line	117
	
l1073:	
	return
	opt stack 0
GLOBAL	__end_of_Led_move_in_to_out_one_by_one
	__end_of_Led_move_in_to_out_one_by_one:
;; =============== function _Led_move_in_to_out_one_by_one ends ============

	signat	_Led_move_in_to_out_one_by_one,88
	global	_Led_move_left_to_right_one_by_o
psect	text131,local,class=CODE,delta=2
global __ptext131
__ptext131:

;; *************** function _Led_move_left_to_right_one_by_o *****************
;; Defined at:
;;		line 79 in file "D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  m               1    6[COMMON] unsigned char 
;;  m               1    5[COMMON] unsigned char 
;;  h               1    8[COMMON] unsigned char 
;;  i               1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text131
	file	"D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
	line	79
	global	__size_of_Led_move_left_to_right_one_by_o
	__size_of_Led_move_left_to_right_one_by_o	equ	__end_of_Led_move_left_to_right_one_by_o-_Led_move_left_to_right_one_by_o
	
_Led_move_left_to_right_one_by_o:	
	opt	stack 6
; Regs used in _Led_move_left_to_right_one_by_o: [wreg+status,2+status,0]
	line	80
	
l2716:	
	line	81
	
l2718:	
;bt04ttvxlweek9.c: 81: i = 0b00000001;
	clrf	(Led_move_left_to_right_one_by_o@i)
	incf	(Led_move_left_to_right_one_by_o@i),f
	line	82
	
l2720:	
;bt04ttvxlweek9.c: 82: h = 0b10000000;
	movlw	(080h)
	movwf	(Led_move_left_to_right_one_by_o@h)
	line	83
	
l2722:	
;bt04ttvxlweek9.c: 83: for (char m=0;m<8;m++){
	clrf	(Led_move_left_to_right_one_by_o@m)
	line	84
	
l2726:	
;bt04ttvxlweek9.c: 84: if (S1_state != 4){break;}
	movf	(_S1_state),w
	xorlw	04h
	skipnz
	goto	u401
	goto	u400
u401:
	goto	l2730
u400:
	goto	l2738
	line	85
	
l2730:	
;bt04ttvxlweek9.c: 85: PORTC = h;
	movf	(Led_move_left_to_right_one_by_o@h),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	86
	
l2732:	
;bt04ttvxlweek9.c: 86: h=h>>1|h;
	clrc
	rrf	(Led_move_left_to_right_one_by_o@h),w
	iorwf	(Led_move_left_to_right_one_by_o@h),w
	movwf	(Led_move_left_to_right_one_by_o@h)
	line	87
	
l2734:	
;bt04ttvxlweek9.c: 87: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_Led_move_left_to_right_one_by_o+0)+0+2),f
movlw	19
movwf	((??_Led_move_left_to_right_one_by_o+0)+0+1),f
	movlw	177
movwf	((??_Led_move_left_to_right_one_by_o+0)+0),f
u797:
	decfsz	((??_Led_move_left_to_right_one_by_o+0)+0),f
	goto	u797
	decfsz	((??_Led_move_left_to_right_one_by_o+0)+0+1),f
	goto	u797
	decfsz	((??_Led_move_left_to_right_one_by_o+0)+0+2),f
	goto	u797
	nop2
opt asmopt_on

	line	83
	
l2736:	
	incf	(Led_move_left_to_right_one_by_o@m),f
	movlw	(08h)
	subwf	(Led_move_left_to_right_one_by_o@m),w
	skipc
	goto	u411
	goto	u410
u411:
	goto	l2726
u410:
	line	89
	
l2738:	
;bt04ttvxlweek9.c: 88: }
;bt04ttvxlweek9.c: 89: for (char m=0;m<8;m++){
	clrf	(Led_move_left_to_right_one_by_o@m_1803)
	line	90
	
l2744:	
;bt04ttvxlweek9.c: 90: if (S1_state != 4){break;}
	movf	(_S1_state),w
	xorlw	04h
	skipnz
	goto	u421
	goto	u420
u421:
	goto	l2748
u420:
	goto	l2756
	line	91
	
l2748:	
;bt04ttvxlweek9.c: 91: PORTD = i;
	movf	(Led_move_left_to_right_one_by_o@i),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	92
	
l2750:	
;bt04ttvxlweek9.c: 92: i=i<<1|i;
	clrc
	rlf	(Led_move_left_to_right_one_by_o@i),w
	iorwf	(Led_move_left_to_right_one_by_o@i),w
	movwf	(Led_move_left_to_right_one_by_o@i)
	line	93
	
l2752:	
;bt04ttvxlweek9.c: 93: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_Led_move_left_to_right_one_by_o+0)+0+2),f
movlw	19
movwf	((??_Led_move_left_to_right_one_by_o+0)+0+1),f
	movlw	177
movwf	((??_Led_move_left_to_right_one_by_o+0)+0),f
u807:
	decfsz	((??_Led_move_left_to_right_one_by_o+0)+0),f
	goto	u807
	decfsz	((??_Led_move_left_to_right_one_by_o+0)+0+1),f
	goto	u807
	decfsz	((??_Led_move_left_to_right_one_by_o+0)+0+2),f
	goto	u807
	nop2
opt asmopt_on

	line	89
	
l2754:	
	incf	(Led_move_left_to_right_one_by_o@m_1803),f
	movlw	(08h)
	subwf	(Led_move_left_to_right_one_by_o@m_1803),w
	skipc
	goto	u431
	goto	u430
u431:
	goto	l2744
u430:
	line	95
	
l2756:	
;bt04ttvxlweek9.c: 94: }
;bt04ttvxlweek9.c: 95: PORTC=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	96
;bt04ttvxlweek9.c: 96: PORTD=0;
	clrf	(8)	;volatile
	line	97
	
l2758:	
;bt04ttvxlweek9.c: 97: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_Led_move_left_to_right_one_by_o+0)+0+2),f
movlw	19
movwf	((??_Led_move_left_to_right_one_by_o+0)+0+1),f
	movlw	177
movwf	((??_Led_move_left_to_right_one_by_o+0)+0),f
u817:
	decfsz	((??_Led_move_left_to_right_one_by_o+0)+0),f
	goto	u817
	decfsz	((??_Led_move_left_to_right_one_by_o+0)+0+1),f
	goto	u817
	decfsz	((??_Led_move_left_to_right_one_by_o+0)+0+2),f
	goto	u817
	nop2
opt asmopt_on

	line	98
	
l2760:	
;bt04ttvxlweek9.c: 98: if (S1_state != 4){PORTC=PORTD=0;}
	movf	(_S1_state),w
	xorlw	04h
	skipnz
	goto	u441
	goto	u440
u441:
	goto	l1066
u440:
	
l2762:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	clrf	(7)	;volatile
	line	99
	
l1066:	
	return
	opt stack 0
GLOBAL	__end_of_Led_move_left_to_right_one_by_o
	__end_of_Led_move_left_to_right_one_by_o:
;; =============== function _Led_move_left_to_right_one_by_o ends ============

	signat	_Led_move_left_to_right_one_by_o,88
	global	_Led_move_right_to_left_one_by_o
psect	text132,local,class=CODE,delta=2
global __ptext132
__ptext132:

;; *************** function _Led_move_right_to_left_one_by_o *****************
;; Defined at:
;;		line 57 in file "D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  m               1    6[COMMON] unsigned char 
;;  m               1    5[COMMON] unsigned char 
;;  h               1    8[COMMON] unsigned char 
;;  i               1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text132
	file	"D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
	line	57
	global	__size_of_Led_move_right_to_left_one_by_o
	__size_of_Led_move_right_to_left_one_by_o	equ	__end_of_Led_move_right_to_left_one_by_o-_Led_move_right_to_left_one_by_o
	
_Led_move_right_to_left_one_by_o:	
	opt	stack 6
; Regs used in _Led_move_right_to_left_one_by_o: [wreg+status,2+status,0]
	line	58
	
l2668:	
	line	59
	
l2670:	
;bt04ttvxlweek9.c: 59: i = 0b10000000;
	movlw	(080h)
	movwf	(Led_move_right_to_left_one_by_o@i)
	line	60
	
l2672:	
;bt04ttvxlweek9.c: 60: h = 0b00000001;
	clrf	(Led_move_right_to_left_one_by_o@h)
	incf	(Led_move_right_to_left_one_by_o@h),f
	line	61
	
l2674:	
;bt04ttvxlweek9.c: 61: for (char m=0;m<8;m++){
	clrf	(Led_move_right_to_left_one_by_o@m)
	line	62
	
l2678:	
;bt04ttvxlweek9.c: 62: if (S1_state != 5){break;}
	movf	(_S1_state),w
	xorlw	05h
	skipnz
	goto	u351
	goto	u350
u351:
	goto	l2682
u350:
	goto	l2690
	line	63
	
l2682:	
;bt04ttvxlweek9.c: 63: PORTD = i;
	movf	(Led_move_right_to_left_one_by_o@i),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	64
	
l2684:	
;bt04ttvxlweek9.c: 64: i=i>>1|i;
	clrc
	rrf	(Led_move_right_to_left_one_by_o@i),w
	iorwf	(Led_move_right_to_left_one_by_o@i),w
	movwf	(Led_move_right_to_left_one_by_o@i)
	line	65
	
l2686:	
;bt04ttvxlweek9.c: 65: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_Led_move_right_to_left_one_by_o+0)+0+2),f
movlw	19
movwf	((??_Led_move_right_to_left_one_by_o+0)+0+1),f
	movlw	177
movwf	((??_Led_move_right_to_left_one_by_o+0)+0),f
u827:
	decfsz	((??_Led_move_right_to_left_one_by_o+0)+0),f
	goto	u827
	decfsz	((??_Led_move_right_to_left_one_by_o+0)+0+1),f
	goto	u827
	decfsz	((??_Led_move_right_to_left_one_by_o+0)+0+2),f
	goto	u827
	nop2
opt asmopt_on

	line	61
	
l2688:	
	incf	(Led_move_right_to_left_one_by_o@m),f
	movlw	(08h)
	subwf	(Led_move_right_to_left_one_by_o@m),w
	skipc
	goto	u361
	goto	u360
u361:
	goto	l2678
u360:
	line	67
	
l2690:	
;bt04ttvxlweek9.c: 66: }
;bt04ttvxlweek9.c: 67: for (char m=0;m<8;m++){
	clrf	(Led_move_right_to_left_one_by_o@m_1798)
	line	68
	
l2696:	
;bt04ttvxlweek9.c: 68: if (S1_state != 5){break;}
	movf	(_S1_state),w
	xorlw	05h
	skipnz
	goto	u371
	goto	u370
u371:
	goto	l2700
u370:
	goto	l2708
	line	69
	
l2700:	
;bt04ttvxlweek9.c: 69: PORTC = h;
	movf	(Led_move_right_to_left_one_by_o@h),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	70
	
l2702:	
;bt04ttvxlweek9.c: 70: h=h<<1|h;
	clrc
	rlf	(Led_move_right_to_left_one_by_o@h),w
	iorwf	(Led_move_right_to_left_one_by_o@h),w
	movwf	(Led_move_right_to_left_one_by_o@h)
	line	71
	
l2704:	
;bt04ttvxlweek9.c: 71: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_Led_move_right_to_left_one_by_o+0)+0+2),f
movlw	19
movwf	((??_Led_move_right_to_left_one_by_o+0)+0+1),f
	movlw	177
movwf	((??_Led_move_right_to_left_one_by_o+0)+0),f
u837:
	decfsz	((??_Led_move_right_to_left_one_by_o+0)+0),f
	goto	u837
	decfsz	((??_Led_move_right_to_left_one_by_o+0)+0+1),f
	goto	u837
	decfsz	((??_Led_move_right_to_left_one_by_o+0)+0+2),f
	goto	u837
	nop2
opt asmopt_on

	line	67
	
l2706:	
	incf	(Led_move_right_to_left_one_by_o@m_1798),f
	movlw	(08h)
	subwf	(Led_move_right_to_left_one_by_o@m_1798),w
	skipc
	goto	u381
	goto	u380
u381:
	goto	l2696
u380:
	line	73
	
l2708:	
;bt04ttvxlweek9.c: 72: }
;bt04ttvxlweek9.c: 73: PORTC=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	74
;bt04ttvxlweek9.c: 74: PORTD=0;
	clrf	(8)	;volatile
	line	75
	
l2710:	
;bt04ttvxlweek9.c: 75: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_Led_move_right_to_left_one_by_o+0)+0+2),f
movlw	19
movwf	((??_Led_move_right_to_left_one_by_o+0)+0+1),f
	movlw	177
movwf	((??_Led_move_right_to_left_one_by_o+0)+0),f
u847:
	decfsz	((??_Led_move_right_to_left_one_by_o+0)+0),f
	goto	u847
	decfsz	((??_Led_move_right_to_left_one_by_o+0)+0+1),f
	goto	u847
	decfsz	((??_Led_move_right_to_left_one_by_o+0)+0+2),f
	goto	u847
	nop2
opt asmopt_on

	line	76
	
l2712:	
;bt04ttvxlweek9.c: 76: if (S1_state != 5){PORTC=PORTD=0;}
	movf	(_S1_state),w
	xorlw	05h
	skipnz
	goto	u391
	goto	u390
u391:
	goto	l1056
u390:
	
l2714:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	clrf	(7)	;volatile
	line	77
	
l1056:	
	return
	opt stack 0
GLOBAL	__end_of_Led_move_right_to_left_one_by_o
	__end_of_Led_move_right_to_left_one_by_o:
;; =============== function _Led_move_right_to_left_one_by_o ends ============

	signat	_Led_move_right_to_left_one_by_o,88
	global	_Led_move_right_to_left_single
psect	text133,local,class=CODE,delta=2
global __ptext133
__ptext133:

;; *************** function _Led_move_right_to_left_single *****************
;; Defined at:
;;		line 34 in file "D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  m               1    7[COMMON] unsigned char 
;;  m               1    6[COMMON] unsigned char 
;;  h               1    8[COMMON] unsigned char 
;;  i               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text133
	file	"D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
	line	34
	global	__size_of_Led_move_right_to_left_single
	__size_of_Led_move_right_to_left_single	equ	__end_of_Led_move_right_to_left_single-_Led_move_right_to_left_single
	
_Led_move_right_to_left_single:	
	opt	stack 6
; Regs used in _Led_move_right_to_left_single: [wreg+status,2+status,0]
	line	35
	
l2612:	
	line	36
	
l2614:	
;bt04ttvxlweek9.c: 36: i = 0b10000000;
	movlw	(080h)
	movwf	(Led_move_right_to_left_single@i)
	line	37
	
l2616:	
;bt04ttvxlweek9.c: 37: h = 0b00000001;
	clrf	(Led_move_right_to_left_single@h)
	incf	(Led_move_right_to_left_single@h),f
	line	38
	
l2618:	
;bt04ttvxlweek9.c: 38: for (char m=0;m<8;m++){
	clrf	(Led_move_right_to_left_single@m)
	line	39
	
l2622:	
;bt04ttvxlweek9.c: 39: if (S1_state != 1){break;}
	decf	(_S1_state),w
	skipnz
	goto	u301
	goto	u300
u301:
	goto	l2626
u300:
	goto	l2640
	line	40
	
l2626:	
;bt04ttvxlweek9.c: 40: PORTC = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	41
	
l2628:	
;bt04ttvxlweek9.c: 41: PORTD = i;
	movf	(Led_move_right_to_left_single@i),w
	movwf	(8)	;volatile
	line	42
	
l2630:	
;bt04ttvxlweek9.c: 42: i=i>>1;
	clrc
	rrf	(Led_move_right_to_left_single@i),f
	line	43
	
l2632:	
;bt04ttvxlweek9.c: 43: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_Led_move_right_to_left_single+0)+0+2),f
movlw	19
movwf	((??_Led_move_right_to_left_single+0)+0+1),f
	movlw	177
movwf	((??_Led_move_right_to_left_single+0)+0),f
u857:
	decfsz	((??_Led_move_right_to_left_single+0)+0),f
	goto	u857
	decfsz	((??_Led_move_right_to_left_single+0)+0+1),f
	goto	u857
	decfsz	((??_Led_move_right_to_left_single+0)+0+2),f
	goto	u857
	nop2
opt asmopt_on

	line	44
	
l2634:	
;bt04ttvxlweek9.c: 44: PORTD=i;
	movf	(Led_move_right_to_left_single@i),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	38
	
l2636:	
	incf	(Led_move_right_to_left_single@m),f
	
l2638:	
	movlw	(08h)
	subwf	(Led_move_right_to_left_single@m),w
	skipc
	goto	u311
	goto	u310
u311:
	goto	l2622
u310:
	line	46
	
l2640:	
;bt04ttvxlweek9.c: 45: }
;bt04ttvxlweek9.c: 46: for (char m=0;m<8;m++){
	clrf	(Led_move_right_to_left_single@m_1793)
	line	47
	
l2646:	
;bt04ttvxlweek9.c: 47: if (S1_state != 1){break;}
	decf	(_S1_state),w
	skipnz
	goto	u321
	goto	u320
u321:
	goto	l2650
u320:
	goto	l2664
	line	48
	
l2650:	
;bt04ttvxlweek9.c: 48: PORTD=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	49
	
l2652:	
;bt04ttvxlweek9.c: 49: PORTC = h;
	movf	(Led_move_right_to_left_single@h),w
	movwf	(7)	;volatile
	line	50
	
l2654:	
;bt04ttvxlweek9.c: 50: h=h<<1;
	clrc
	rlf	(Led_move_right_to_left_single@h),f
	line	51
	
l2656:	
;bt04ttvxlweek9.c: 51: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_Led_move_right_to_left_single+0)+0+2),f
movlw	19
movwf	((??_Led_move_right_to_left_single+0)+0+1),f
	movlw	177
movwf	((??_Led_move_right_to_left_single+0)+0),f
u867:
	decfsz	((??_Led_move_right_to_left_single+0)+0),f
	goto	u867
	decfsz	((??_Led_move_right_to_left_single+0)+0+1),f
	goto	u867
	decfsz	((??_Led_move_right_to_left_single+0)+0+2),f
	goto	u867
	nop2
opt asmopt_on

	line	52
	
l2658:	
;bt04ttvxlweek9.c: 52: PORTC=h;
	movf	(Led_move_right_to_left_single@h),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	46
	
l2660:	
	incf	(Led_move_right_to_left_single@m_1793),f
	
l2662:	
	movlw	(08h)
	subwf	(Led_move_right_to_left_single@m_1793),w
	skipc
	goto	u331
	goto	u330
u331:
	goto	l2646
u330:
	line	54
	
l2664:	
;bt04ttvxlweek9.c: 53: }
;bt04ttvxlweek9.c: 54: if (S1_state != 1){PORTC=PORTD=0;}
	decf	(_S1_state),w
	skipnz
	goto	u341
	goto	u340
u341:
	goto	l1046
u340:
	
l2666:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	clrf	(7)	;volatile
	line	55
	
l1046:	
	return
	opt stack 0
GLOBAL	__end_of_Led_move_right_to_left_single
	__end_of_Led_move_right_to_left_single:
;; =============== function _Led_move_right_to_left_single ends ============

	signat	_Led_move_right_to_left_single,88
	global	_Led_move_left_to_right_single
psect	text134,local,class=CODE,delta=2
global __ptext134
__ptext134:

;; *************** function _Led_move_left_to_right_single *****************
;; Defined at:
;;		line 11 in file "D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  m               1    7[COMMON] unsigned char 
;;  m               1    6[COMMON] unsigned char 
;;  h               1    8[COMMON] unsigned char 
;;  i               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text134
	file	"D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
	line	11
	global	__size_of_Led_move_left_to_right_single
	__size_of_Led_move_left_to_right_single	equ	__end_of_Led_move_left_to_right_single-_Led_move_left_to_right_single
	
_Led_move_left_to_right_single:	
	opt	stack 6
; Regs used in _Led_move_left_to_right_single: [wreg+status,2+status,0]
	line	12
	
l2556:	
	line	13
	
l2558:	
;bt04ttvxlweek9.c: 13: i = 0b00000001;
	clrf	(Led_move_left_to_right_single@i)
	incf	(Led_move_left_to_right_single@i),f
	line	14
	
l2560:	
;bt04ttvxlweek9.c: 14: h = 0b10000000;
	movlw	(080h)
	movwf	(Led_move_left_to_right_single@h)
	line	15
	
l2562:	
;bt04ttvxlweek9.c: 15: for (char m=0;m<8;m++){
	clrf	(Led_move_left_to_right_single@m)
	line	16
	
l2566:	
;bt04ttvxlweek9.c: 16: if (S1_state != 2){break;}
	movf	(_S1_state),w
	xorlw	02h
	skipnz
	goto	u251
	goto	u250
u251:
	goto	l2570
u250:
	goto	l2584
	line	17
	
l2570:	
;bt04ttvxlweek9.c: 17: PORTD=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	18
	
l2572:	
;bt04ttvxlweek9.c: 18: PORTC = h;
	movf	(Led_move_left_to_right_single@h),w
	movwf	(7)	;volatile
	line	19
	
l2574:	
;bt04ttvxlweek9.c: 19: h=h>>1;
	clrc
	rrf	(Led_move_left_to_right_single@h),f
	line	20
	
l2576:	
;bt04ttvxlweek9.c: 20: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_Led_move_left_to_right_single+0)+0+2),f
movlw	19
movwf	((??_Led_move_left_to_right_single+0)+0+1),f
	movlw	177
movwf	((??_Led_move_left_to_right_single+0)+0),f
u877:
	decfsz	((??_Led_move_left_to_right_single+0)+0),f
	goto	u877
	decfsz	((??_Led_move_left_to_right_single+0)+0+1),f
	goto	u877
	decfsz	((??_Led_move_left_to_right_single+0)+0+2),f
	goto	u877
	nop2
opt asmopt_on

	line	21
	
l2578:	
;bt04ttvxlweek9.c: 21: PORTC=h;
	movf	(Led_move_left_to_right_single@h),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	15
	
l2580:	
	incf	(Led_move_left_to_right_single@m),f
	
l2582:	
	movlw	(08h)
	subwf	(Led_move_left_to_right_single@m),w
	skipc
	goto	u261
	goto	u260
u261:
	goto	l2566
u260:
	line	23
	
l2584:	
;bt04ttvxlweek9.c: 22: }
;bt04ttvxlweek9.c: 23: for (char m=0;m<8;m++){
	clrf	(Led_move_left_to_right_single@m_1788)
	line	24
	
l2590:	
;bt04ttvxlweek9.c: 24: if (S1_state != 2){break;}
	movf	(_S1_state),w
	xorlw	02h
	skipnz
	goto	u271
	goto	u270
u271:
	goto	l2594
u270:
	goto	l2608
	line	25
	
l2594:	
;bt04ttvxlweek9.c: 25: PORTC = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	26
	
l2596:	
;bt04ttvxlweek9.c: 26: PORTD = i;
	movf	(Led_move_left_to_right_single@i),w
	movwf	(8)	;volatile
	line	27
	
l2598:	
;bt04ttvxlweek9.c: 27: i=i<<1;
	clrc
	rlf	(Led_move_left_to_right_single@i),f
	line	28
	
l2600:	
;bt04ttvxlweek9.c: 28: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_Led_move_left_to_right_single+0)+0+2),f
movlw	19
movwf	((??_Led_move_left_to_right_single+0)+0+1),f
	movlw	177
movwf	((??_Led_move_left_to_right_single+0)+0),f
u887:
	decfsz	((??_Led_move_left_to_right_single+0)+0),f
	goto	u887
	decfsz	((??_Led_move_left_to_right_single+0)+0+1),f
	goto	u887
	decfsz	((??_Led_move_left_to_right_single+0)+0+2),f
	goto	u887
	nop2
opt asmopt_on

	line	29
	
l2602:	
;bt04ttvxlweek9.c: 29: PORTD=i;
	movf	(Led_move_left_to_right_single@i),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	23
	
l2604:	
	incf	(Led_move_left_to_right_single@m_1788),f
	
l2606:	
	movlw	(08h)
	subwf	(Led_move_left_to_right_single@m_1788),w
	skipc
	goto	u281
	goto	u280
u281:
	goto	l2590
u280:
	line	31
	
l2608:	
;bt04ttvxlweek9.c: 30: }
;bt04ttvxlweek9.c: 31: if (S1_state != 2){PORTC=PORTD=0;}
	movf	(_S1_state),w
	xorlw	02h
	skipnz
	goto	u291
	goto	u290
u291:
	goto	l1036
u290:
	
l2610:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	clrf	(7)	;volatile
	line	32
	
l1036:	
	return
	opt stack 0
GLOBAL	__end_of_Led_move_left_to_right_single
	__end_of_Led_move_left_to_right_single:
;; =============== function _Led_move_left_to_right_single ends ============

	signat	_Led_move_left_to_right_single,88
	global	_button
psect	text135,local,class=CODE,delta=2
global __ptext135
__ptext135:

;; *************** function _button *****************
;; Defined at:
;;		line 208 in file "D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
psect	text135
	file	"D:\TTVXL\Project TTVXL\bt03ttvxl\bt04ttvxlweek9.c"
	line	208
	global	__size_of_button
	__size_of_button	equ	__end_of_button-_button
	
_button:	
	opt	stack 6
; Regs used in _button: [wreg]
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
psect	text135
	line	209
	
i1l2510:	
;bt04ttvxlweek9.c: 209: RBIF = 0;
	bcf	(88/8),(88)&7
	line	210
;bt04ttvxlweek9.c: 210: if (RB0 == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l1117
u1_20:
	line	212
	
i1l1118:	
	line	211
	btfsc	(48/8),(48)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l1118
u2_20:
	
i1l1120:	
	line	213
;bt04ttvxlweek9.c: 212: }
;bt04ttvxlweek9.c: 213: if (RB0 == 0){
	btfsc	(48/8),(48)&7
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l1117
u3_20:
	line	214
	
i1l2514:	
;bt04ttvxlweek9.c: 214: S1_state = 1;
	clrf	(_S1_state)
	incf	(_S1_state),f
	line	216
	
i1l1117:	
	line	217
;bt04ttvxlweek9.c: 215: }
;bt04ttvxlweek9.c: 216: }
;bt04ttvxlweek9.c: 217: if (RB1 == 1){
	btfss	(49/8),(49)&7
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l2520
u4_20:
	line	219
	
i1l1123:	
	line	218
	btfsc	(49/8),(49)&7
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l1123
u5_20:
	
i1l1125:	
	line	220
;bt04ttvxlweek9.c: 219: }
;bt04ttvxlweek9.c: 220: if (RB1 == 0){
	btfsc	(49/8),(49)&7
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l2520
u6_20:
	line	221
	
i1l2518:	
;bt04ttvxlweek9.c: 221: S1_state = 2;
	movlw	(02h)
	movwf	(_S1_state)
	line	224
	
i1l2520:	
;bt04ttvxlweek9.c: 222: }
;bt04ttvxlweek9.c: 223: }
;bt04ttvxlweek9.c: 224: if (RB2 == 1){
	btfss	(50/8),(50)&7
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l2526
u7_20:
	line	226
	
i1l1128:	
	line	225
	btfsc	(50/8),(50)&7
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l1128
u8_20:
	
i1l1130:	
	line	227
;bt04ttvxlweek9.c: 226: }
;bt04ttvxlweek9.c: 227: if (RB2 == 0){
	btfsc	(50/8),(50)&7
	goto	u9_21
	goto	u9_20
u9_21:
	goto	i1l2526
u9_20:
	line	228
	
i1l2524:	
;bt04ttvxlweek9.c: 228: S1_state = 3;
	movlw	(03h)
	movwf	(_S1_state)
	line	231
	
i1l2526:	
;bt04ttvxlweek9.c: 229: }
;bt04ttvxlweek9.c: 230: }
;bt04ttvxlweek9.c: 231: if (RB3 == 1){
	btfss	(51/8),(51)&7
	goto	u10_21
	goto	u10_20
u10_21:
	goto	i1l2532
u10_20:
	line	233
	
i1l1133:	
	line	232
	btfsc	(51/8),(51)&7
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l1133
u11_20:
	
i1l1135:	
	line	234
;bt04ttvxlweek9.c: 233: }
;bt04ttvxlweek9.c: 234: if (RB3 == 0){
	btfsc	(51/8),(51)&7
	goto	u12_21
	goto	u12_20
u12_21:
	goto	i1l2532
u12_20:
	line	235
	
i1l2530:	
;bt04ttvxlweek9.c: 235: S1_state = 4;
	movlw	(04h)
	movwf	(_S1_state)
	line	238
	
i1l2532:	
;bt04ttvxlweek9.c: 236: }
;bt04ttvxlweek9.c: 237: }
;bt04ttvxlweek9.c: 238: if (RB4 == 1){
	btfss	(52/8),(52)&7
	goto	u13_21
	goto	u13_20
u13_21:
	goto	i1l2538
u13_20:
	line	240
	
i1l1138:	
	line	239
	btfsc	(52/8),(52)&7
	goto	u14_21
	goto	u14_20
u14_21:
	goto	i1l1138
u14_20:
	
i1l1140:	
	line	241
;bt04ttvxlweek9.c: 240: }
;bt04ttvxlweek9.c: 241: if (RB4 == 0){
	btfsc	(52/8),(52)&7
	goto	u15_21
	goto	u15_20
u15_21:
	goto	i1l2538
u15_20:
	line	242
	
i1l2536:	
;bt04ttvxlweek9.c: 242: S1_state = 5;
	movlw	(05h)
	movwf	(_S1_state)
	line	245
	
i1l2538:	
;bt04ttvxlweek9.c: 243: }
;bt04ttvxlweek9.c: 244: }
;bt04ttvxlweek9.c: 245: if (RB5 == 1){
	btfss	(53/8),(53)&7
	goto	u16_21
	goto	u16_20
u16_21:
	goto	i1l2544
u16_20:
	line	247
	
i1l1143:	
	line	246
	btfsc	(53/8),(53)&7
	goto	u17_21
	goto	u17_20
u17_21:
	goto	i1l1143
u17_20:
	
i1l1145:	
	line	248
;bt04ttvxlweek9.c: 247: }
;bt04ttvxlweek9.c: 248: if (RB5 == 0){
	btfsc	(53/8),(53)&7
	goto	u18_21
	goto	u18_20
u18_21:
	goto	i1l2544
u18_20:
	line	249
	
i1l2542:	
;bt04ttvxlweek9.c: 249: S1_state = 6;
	movlw	(06h)
	movwf	(_S1_state)
	line	252
	
i1l2544:	
;bt04ttvxlweek9.c: 250: }
;bt04ttvxlweek9.c: 251: }
;bt04ttvxlweek9.c: 252: if (RB6 == 1){
	btfss	(54/8),(54)&7
	goto	u19_21
	goto	u19_20
u19_21:
	goto	i1l2550
u19_20:
	line	254
	
i1l1148:	
	line	253
	btfsc	(54/8),(54)&7
	goto	u20_21
	goto	u20_20
u20_21:
	goto	i1l1148
u20_20:
	
i1l1150:	
	line	255
;bt04ttvxlweek9.c: 254: }
;bt04ttvxlweek9.c: 255: if (RB6 == 0){
	btfsc	(54/8),(54)&7
	goto	u21_21
	goto	u21_20
u21_21:
	goto	i1l2550
u21_20:
	line	256
	
i1l2548:	
;bt04ttvxlweek9.c: 256: S1_state = 7;
	movlw	(07h)
	movwf	(_S1_state)
	line	259
	
i1l2550:	
;bt04ttvxlweek9.c: 257: }
;bt04ttvxlweek9.c: 258: }
;bt04ttvxlweek9.c: 259: if (RB7 == 1){
	btfss	(55/8),(55)&7
	goto	u22_21
	goto	u22_20
u22_21:
	goto	i1l1157
u22_20:
	line	261
	
i1l1153:	
	line	260
	btfsc	(55/8),(55)&7
	goto	u23_21
	goto	u23_20
u23_21:
	goto	i1l1153
u23_20:
	
i1l1155:	
	line	262
;bt04ttvxlweek9.c: 261: }
;bt04ttvxlweek9.c: 262: if (RB7 == 0){
	btfsc	(55/8),(55)&7
	goto	u24_21
	goto	u24_20
u24_21:
	goto	i1l1157
u24_20:
	line	263
	
i1l2554:	
;bt04ttvxlweek9.c: 263: S1_state = 8;
	movlw	(08h)
	movwf	(_S1_state)
	line	266
	
i1l1157:	
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
psect	text136,local,class=CODE,delta=2
global __ptext136
__ptext136:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
