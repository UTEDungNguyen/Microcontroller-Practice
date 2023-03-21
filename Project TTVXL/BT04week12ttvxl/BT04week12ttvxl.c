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
float res, dem,v,f,t;
int count,count1,count2,count_old;
long int xung;
void main()
{	
	ANSEL = ANSELH = 0;  // disable analog all I/O
	lcd_init();   // khoi tao lcd	
	TRISA4 = 1;
	TRISD = 0x00;
	TRISE0 = 0; //output

//Timer 1 setup
	TMR1GE=0; 
	TMR1CS=0; //1: Clock t? bên ngoài (t? chân T1CKI), 0: Clock bên trong (FOSC/4)
	T1SYNC=1;
	T1CKPS1=0;T1CKPS0=0; //presscale 1:1
	TMR1ON=1;	
	TMR1H=0;   
	TMR1L=0;

//CCP1 setup
	TRISC2 =1; //input
	//CCP1CON = 0b00000101; //capture 1 rising --> read in small frequency
	CCP1CON = 0b00000110; //capture 4 rising --> read in big frequency
	CCP1IE=1;
	CCP1IF=0;
	PEIE=1;
	GIE=1;

	while(1)
	{	
//////// read in big frequency
		t = xung*(1.0/5000000.0);
		f = 4.0/t;
		lcd_gotoxy(0,0);
		printf("xung: %08u",xung);
		lcd_gotoxy(0,1);
		printf("f: %5.2f",f);

/////// read in small frequency
		/*f = 5000000.0/xung;	
		lcd_gotoxy(0,0);
		printf("xung: %05u",CCPR1);
		lcd_gotoxy(0,1);
		printf("xung: %3.2f",f); */
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
			xung = abs(CCPR1-count_old);
			count_old = CCPR1;
		}
	CCP1IF = 0;
}

/*Tính so lan tran và TMR1H, TMR1L 
	ví du :80ms=0.08
	0.08*(FOSC)5000000= 400000
	400000/50000(so dep)=8(so lan tran)
	2^(16)=65536-50000(so dep)=15536
	Lay 15536-1=15535
	15536/256 =60 (TMR1H)
	15536-256*60=176 (TMR1L) */
	