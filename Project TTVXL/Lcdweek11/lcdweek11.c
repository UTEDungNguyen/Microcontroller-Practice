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
void main()
{	
	ANSEL = ANSELH = 0;  // disable analog all I/O
	lcd_init();   // khoi tao lcd	
	TRISA4 = 1;
	TRISD = 0x00;
	TRISE0 = 0; //output
	T0CS = 0;   //timer =0; counter =1
	PSA = 0;    //1 : khong dung bo chia
	PS2= 0; PS1 = 0; PS0= 1;  //ps=8
	TMR0 = 6;   // =7 nghia la tran qua 255 se ve 7 
	//T0SE=1;	  //falling edge

	T0IE = 1;
	T0IF = 0;
	GIE = 1;

	while(1)
	{	
		
		/*count1 = TMR0+dem*256;
		__delay_ms(500);
		count2 = TMR0+dem*256;
		count = count2 - count1;

		v=(count/360.0)*60.0*2.0;
		lcd_gotoxy(0,0);
		printf("v: %3.2f",v);
		lcd_gotoxy(0,1);
		printf("xung/s: %04d",count*2);*/
				
	}
}

void putch(char c)
{
	lcd_putc(c);
}
void interrupt ngat()
{
	if(T0IF)
	{
		dem++;
		//if(dem == 250){dem= 0; RE0 = ~RE0;}
		if (dem == 50) {RE0=0;}  //10ms
		if (dem == 250) {RE0=1;dem=0;}  //kc giua 2 xung la 50ms reset 
	}
	TMR0 = 6;
	T0IF = 0;
}