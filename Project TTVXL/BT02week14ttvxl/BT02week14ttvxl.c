#include<htc.h>
#include<stdio.h>
#include <math.h>
#include <stdlib.h>
#include "lcd(16).h"

#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
 
int dem;
unsigned int count,count1, count2;
long int xung;
float d;
char data[12];
void main()
{	
	
	ANSEL = ANSELH = 0;  // disable analog all I/O
	lcd_init();   // khoi tao lcd	
	TRISE0 = 0; RE0 = 1;
	TRISE1 = 0; RE0 = 0;
///timer 1 set up --- counter mode	
	TMR1CS = 0;
	T1CKPS1 = 0;T1CKPS0 = 0; 
	T1SYNC = 1;
	TMR1GE = 0;
	TMR1H = TMR1L = 0;
	TMR1ON = 0;  // off timer 1
////IOCB setup
	TRISB1 = 1;// input
	IOCB = 0b00000010;
	WPUB = 0b00000010;
	nRBPU = 0;
	RBIE = 1; RBIF = 0;	GIE = 1;
/////////////////////////
	while(1)
	{	
		__delay_ms(100);
		RE1 = 1;
		__delay_ms(1);
		RE1 = 0;

//		xung = abs(count2 - count1);
		xung = count;
		d = (17000.0*xung*(1.0/5000000.0));
		lcd_gotoxy(0,0);
		printf("xung: %05u",xung);
		lcd_gotoxy(0,1);
		printf("d: %3.2f",d);
	}
}
void interrupt ngat()
{
	if(RBIF)
	{
		if(RB1 == 1)
			{TMR1ON = 1;}
		else 
			{TMR1ON = 0;count = TMR1;TMR1= 0;}
	}
	RBIF = 0;
}

void putch(char c)
{
	lcd_putc(c);
}