#include<htc.h>
#include<stdio.h>
#include <math.h>

#include "lcd(16).h"

#define _XTAL_FREQ 4000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

unsigned char maled[10]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
void quetled (char chuc_t, char donvi_t);
char dem;
int adc1,adc2;
float res1,res2;

void read_adc_AN0(){
	CHS3 = 0; CHS2 = 0;CHS1 =0;CHS0 =0;  // chanel selection
	__delay_ms(10);
	GO_nDONE = 1;
	while(GO_nDONE == 1){}
	adc1 = ADRESH * 256 + ADRESL;                  
	res1 = (adc1/1023.0)*500.0;
}

void main()
{
 	ANSEL = ANSELH = 0;  // diasble analog all I/O
	lcd_init();

	TRISD= 0x00;	
	TRISA0 = 1;    // input 
	ANS0 = 1;		// enble analog a3

	//CHS3 = 0; CHS2 = 0;CHS1 =0;CHS0 =1;  // chanel selection
	VCFG1 = 1;VCFG0 = 1;                 // chon dien ap tham chieu
	ADCS1 = 1; ADCS0 = 0;					 // adc  clock					
	ADFM = 1;
	ADON = 1;
	__delay_ms(10);

	while(1)
	{
		read_adc_AN0();
		lcd_gotoxy(0,0);
		printf("Nhiet do: %03d",(int)res1);
		lcd_gotoxy(0,1);
		printf("%07d-%07d",ADRESH,ADRESL);	
	}	
}
void putch(char c)
{
	lcd_putc(c);
}