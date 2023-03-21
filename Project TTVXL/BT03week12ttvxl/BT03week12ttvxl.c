#include<htc.h>
#include<stdio.h>
#include "lcd(16).h"

#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

unsigned char maled[10]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
void quet_led(char chuc_t, char donvi_t);

char i;
int adc;
float res, dem,v;
int count,count1,count2;
long int xung;
void main()
{	
	ANSEL = ANSELH = 0;  // disable analog all I/O
	lcd_init();   // khoi tao lcd	
	TRISA4 = 1;
	TRISD = 0x00;
	TRISE0 = 0; //output

	T0CS = 0;   //timer =0; counter =1
	PSA = 0;    //1 : khong dung bo chia
	PS2= 0; PS1 = 1; PS0= 0;  //ps=8
	TMR0 = 7;   // =7 nghia la tran qua 255 se ve 7 
	//T0SE=1;	  //falling edge

	T0IE = 1;
	T0IF = 0;
	GIE = 1;

	TMR1GE=0; 
	TMR1CS=1; //1: Clock t? bên ngoài (t? chân T1CKI), 0: Clock bên trong (FOSC/4)
	T1SYNC=1;
	T1CKPS1=0;T1CKPS0=0; //presscale 1:1
	//T1GINV=1;
	TMR1ON=1;	
	TMR1H=0;   //3036
	TMR1L=0;

	while(1)
	{	
		v = (xung/360.0)*5.0*60.0;  // convert second,minute  (pulse/minute)
		lcd_gotoxy(0,0);
		printf("xung: %08u",xung);
		lcd_gotoxy(0,1);
		printf("v: %3.2f",v);
	}
}

void putch(char c)
{
	lcd_putc(c);
}
void interrupt ngat()
{
	TMR0 = 7;
	//TMR1H=60; TMR1L=176;  //3036
	if(T0IF)
	{
		dem++; 
		if(dem == 500){  // create delay 200ms
			dem= 0;
			xung = TMR1;	
			TMR1H=0; TMR1L=0;
		}
	}
	T0IF = 0;
}

/*Tính so lan tran và TMR1H, TMR1L 
	ví du :80ms=0.08
	0.08*(FOSC)5000000= 400000
	400000/50000(so dep)=8(so lan tran)
	2^(16)=65536-50000(so dep)=15536
	Lay 15536-1=15535
	15536/256 =60 (TMR1H)
	15536-256*60=176 (TMR1L) */
	