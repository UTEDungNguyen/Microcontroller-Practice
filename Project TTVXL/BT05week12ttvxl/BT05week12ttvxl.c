#include<htc.h>
#include<stdio.h>
#include "lcd(16).h"
#include<stdlib.h>

#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

unsigned char maled[10]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
void quet_led(char chuc_t, char donvi_t);

char i;
int adc;
float res, dem,v,f,t,d;
int count,count1,count2,count_old;
long int xung;
void main()
{	
	ANSEL = ANSELH = 0;  // disable analog all I/O
	lcd_init();   // khoi tao lcd	
	TRISA4 = 1;
	TRISD = 0x00;
	TRISE0 = 0; //output
	TRISE1 = 0; //output
	RE1 =0;

//Timer 1 setup
	TMR1GE=0; 
	TMR1CS=0; //1: Clock t? bên ngoài (t? chân T1CKI), 0: Clock bên trong (FOSC/4)
	T1SYNC=1;
	T1CKPS1=0;T1CKPS0=0; //presscale 1:1
	//T1GINV=1;	
	TMR1H=0;   
	TMR1L=0;
	TMR1ON=1;

//CCP1 setup
	TRISC2 =1; //input
	TRISC1 =1; //input
	CCP1CON = 0b00000101; //capture 1 rising
	CCP2CON = 0b00000100; //capture 1 falling
	CCP1IE=1;
	CCP1IF=0;
	CCP2IE=1;
	CCP2IF=0;
	PEIE=1;
	GIE=1;

	while(1)
	{	
		//tao xung chan trigger
		__delay_ms(100);
		RE1=1;
		__delay_ms(1);
		RE1=0;
///////////////////////////////////
		xung = abs(count2-count1);
		t = xung*(1.0/5000000.0);
		d = 17000.0*t+1.0;	
		lcd_gotoxy(0,0);
		printf("xung: %08u",xung);
		lcd_gotoxy(0,1);
		printf("f: %5.2f",d);
	}
}

void putch(char c)
{
	lcd_putc(c);
}
void interrupt ngat()
{
		if(CCP1IF)
		{
			count1=CCPR1;
		}
		if(CCP2IF)
		{
			count2=CCPR2;
		}
	CCP1IF = 0;
	CCP2IF = 0;
	
}
	