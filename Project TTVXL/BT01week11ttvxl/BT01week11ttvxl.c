#include<htc.h>
#include<stdio.h>

#include "lcd(16).h"

#define _XTAL_FREQ 4000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

unsigned char maled[10]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
void quetled (char chuc_t, char donvi_t);
char dem;
int adc1,adc2;
float res1,res2;

void read_adc_AN3(){
	CHS3 = 0; CHS2 = 0;CHS1 =1;CHS0 =1;  // chanel selection
	__delay_ms(10);
	GO_nDONE = 1;
	while(GO_nDONE == 1){}
	adc1 = ADRESH * 256 + ADRESL;                  
	res1 = (adc1/1023.0)*500.0;
}

void read_adc_AN12(){
	CHS3 = 1; CHS2 = 1;CHS1 =0;CHS0 =0;  // chanel selection
	__delay_ms(10);
	GO_nDONE = 1;
	while(GO_nDONE == 1){}
	adc2 = ADRESH * 256 + ADRESL;                  
	res2 = (adc2/1023.0)*500.0;
}

void main()
{
 	ANSEL = ANSELH = 0;  // diasble analog all I/O
	lcd_init();
	TRISE0 = TRISE1 = 0;
	TRISD= 0x00;	
	TRISA3 = 1;    // input 
	ANS3 = 1;		// enble analog a3
	TRISB0 = 1;    // input 
	ANS12 = 1;		// enble analog b0
	//CHS3 = 0; CHS2 = 0;CHS1 =0;CHS0 =1;  // chanel selection
	VCFG1 = 0;VCFG0 = 0;                 // chon dien ap tham chieu
	ADCS1 = 0; ADCS0 = 1;					 // adc  clock					
	ADFM = 1;
	ADON = 1;
	__delay_ms(10);
	while(1)
	{
		read_adc_AN3();
		lcd_gotoxy(0,0);
		printf("Dien ap 1: %3.1f",res1);
		read_adc_AN12();
		lcd_gotoxy(0,1);
		printf("Dien ap 2: %3.1f",res2);	
	}	
}
void putch(char c)
{
	lcd_putc(c);
}