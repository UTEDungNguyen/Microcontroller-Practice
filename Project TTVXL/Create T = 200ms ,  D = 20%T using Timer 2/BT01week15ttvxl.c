#include<htc.h>
#include<stdio.h>
#include <math.h>
#include <stdlib.h>
#include "lcd(16).h"

#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
 
int dem;
unsigned int A,count,count1, count2;
long int xung;
float d;
char data[12];
void gocquay(int goc);
void main()
{		
	ANSEL = ANSELH = 0;  // disable analog all I/O
	lcd_init();   // khoi tao lcd
	TRISE0 = 0; RE0 = 1; //output
////timer 2 set up - 100us
	T2CKPS1 = 0; T2CKPS0 = 1;
	TMR2 = 0;PR2 = 124;
	TOUTPS3 = 0;TOUTPS2 = 0;
	TOUTPS1 = 0;TOUTPS0 = 0;
	TMR2ON = 1; // on timer 2
	TMR2IE = 1; TMR2IF = 0; PEIE = 1; GIE =1;
	while(1)
	{
	}
}
void interrupt ngat()
{
	if(TMR2IF)
	{	dem++;
		if (dem == 250){RE0 = 0;}
		if (dem == 500){dem = 0;RE0 = 1;}
	}
	TMR2IF = 0;
}

void putch(char c)
{
	lcd_putc(c);
}