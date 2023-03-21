#include<htc.h>
#include<stdio.h>

#include "lcd(16).h"

#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

unsigned char maled[10]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
void quetled (char chuc_t, char donvi_t);
char dem;
int adc1,adc2,adc3,adc4,adc5;
float res1,res2,res3,res4,res5;
unsigned char S1_state=0;

void read_adc_AN0(){
	CHS3 = 0; CHS2 = 0;CHS1 =0;CHS0 =0;  // chanel selection AN0
	__delay_ms(10);
	GO_nDONE = 1;
	while(GO_nDONE == 1){}
	adc1 = ADRESH ;                  
	res1 = (adc1/256.0)*500.0;
	__delay_ms(150);    // cho bo doc adc on dinh de day ki tu len lcd khong loi 
}

void read_adc_AN1(){
	CHS3 = 0; CHS2 = 0;CHS1 =0;CHS0 =1;  // chanel selection AN1
	__delay_ms(10);
	GO_nDONE = 1;
	while(GO_nDONE == 1){}
	adc2 = ADRESH;                  
	res2 = (adc2/256.0)*500.0;
	__delay_ms(150);  // cho bo doc adc on dinh de day ki tu len lcd khong loi 
}

void read_adc_AN2(){
	CHS3 = 0; CHS2 = 0;CHS1 =1;CHS0 =0;  // chanel selection AN2
	__delay_ms(10);
	GO_nDONE = 1;
	while(GO_nDONE == 1){}
	adc3 = ADRESH ;                  
	res3 = (adc3/256.0)*500.0;
	__delay_ms(150);  // cho bo doc adc on dinh de day ki tu len lcd khong loi 
}

void read_adc_AN3(){
	CHS3 = 0; CHS2 = 0;CHS1 =1;CHS0 =1;  // chanel selection AN3
	__delay_ms(10);
	GO_nDONE = 1;
	while(GO_nDONE == 1){}
	adc4 = ADRESH ;                  
	res4 = (adc4/256.0)*500.0;
	__delay_ms(150);  // cho bo doc adc on dinh de day ki tu len lcd khong loi 
}

void read_adc_AN5(){
	CHS3 = 0; CHS2 = 1;CHS1 =0;CHS0 =1;  // chanel selection AN5
	__delay_ms(10);
	GO_nDONE = 1;
	while(GO_nDONE == 1){}
	adc5 = ADRESH ;                  
	res5 = (adc5/256.0)*500.0;
	__delay_ms(150);  // cho bo doc adc on dinh de day ki tu len lcd khong loi 
}

void main()
{
 	ANSEL = ANSELH = 0;  // diasble analog all I/O
	lcd_init();

	GIE = 1;
    RBIE = 1;
    RBIF = 0;
    IOCB = 0xFF;

	TRISD= 0x00;
	TRISB = 0xFF;

	lcd_gotoxy(4,0);
	printf("WELCOME");
	lcd_gotoxy(0,1);
	printf("Nguyen Phuc Dung");

	TRISE0 = 1;		// input 
	ANS5 = 1;		// enble analog e0
	TRISA0 = 1;    // input 
	ANS0 = 1;		// enble analog a0
	TRISA1 = 1;    // input 
	ANS1 = 1;		// enble analog a1
	TRISA2 = 1;    // input 
	ANS2 = 1;		// enble analog a2
	TRISA3 = 1;    // input 
	ANS3 = 1;		// enble analog a3
	VCFG1 = 0;VCFG0 = 0;                 // chon dien ap tham chieu
	ADCS1 = 1; ADCS0 = 0;					 // adc  clock					
	ADFM = 0;   // canh trai 8 bit ==> 256
	ADON = 1;  // khoi dong bo adc
	__delay_ms(10);

	while(1)
	{
		if (S1_state == 1){
			read_adc_AN0();
			lcd_gotoxy(0,0);
			printf("Nhiet Do Room 1");
			lcd_gotoxy(0,1);
			printf("Gia tri: %3.1f",res1);
		}
		if (S1_state == 2){
			read_adc_AN1();
			lcd_gotoxy(0,0);
			printf("Nhiet Do Room 2");
			lcd_gotoxy(0,1);
			printf("Gia tri: %3.1f",res2);
		}
		if (S1_state == 3){
			read_adc_AN2();
			lcd_gotoxy(0,0);
			printf("Nhiet Do Room 3");
			lcd_gotoxy(0,1);
			printf("Gia tri: %3.1f",res3);
		}
		if (S1_state == 4){
			read_adc_AN3();
			lcd_gotoxy(0,0);
			printf("Nhiet Do Room 4");
			lcd_gotoxy(0,1);
			printf("Gia tri: %3.1f",res4);
		}
		if (S1_state == 5){
			read_adc_AN5();
			lcd_gotoxy(0,0);
			printf("Nhiet Do Room 5");
			lcd_gotoxy(0,1);
			printf("Gia tri: %3.1f",res5);
		}
	}	
}
void putch(char c)
{
	lcd_putc(c);
}

void interrupt button(void){
	RBIF = 0;
	if (RB0 == 1){
        while(RB0==1){
        }
        if (RB0 == 0){
            S1_state = 1;
			lcd_put_byte(0,0x01);
			while(lcd_busy());	
			__delay_ms(60);
        }
   	}  
	if (RB1 == 1){
        while(RB1==1){
        }
        if (RB1 == 0){
            S1_state = 2;
			lcd_put_byte(0,0x01);	
			while(lcd_busy());
			__delay_ms(60);
        }
   	}  
	if (RB2 == 1){
       while(RB2==1){
       }
       if (RB2 == 0){
           S1_state = 3;
		   lcd_put_byte(0,0x01);
			while(lcd_busy());	
			__delay_ms(60);
       }
   	}  
	if (RB3 == 1){
        while(RB3==1){
        }
        if (RB3 == 0){
            S1_state = 4;
			lcd_put_byte(0,0x01);	
			while(lcd_busy());
			__delay_ms(60);
        }
   	}  
	if (RB4 == 1){
        while(RB4==1){
        }
        if (RB4 == 0){
            S1_state = 5;
			lcd_put_byte(0,0x01);
			while(lcd_busy());
			__delay_ms(60);
        }
   	}  
}