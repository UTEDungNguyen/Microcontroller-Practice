#include<htc.h>
#include<stdio.h>
#include <math.h>
#include <stdlib.h>
#include "lcd(16).h"

#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
 
int dem;
unsigned int count1, count2, count_old;
long int xung;
float t,f,d;
char data_rx[10];
void tx();
void rx();
void send_char(char data);
void send_string(const char *s);
void main()
{	
	
	ANSEL = ANSELH = 0;  // disable analog all I/O
	lcd_init();   // khoi tao lcd	
	TRISE1 = 0; 
	
///timer 1 set up --- counter mode	
	TMR1CS = 0;
	T1CKPS1 = 0;T1CKPS0 = 0; 
	T1SYNC = 1;
	TMR1GE = 0;
	TMR1H = TMR1L = 0;
	TMR1ON = 1;  // enable timer 1
//// khai baos CCP1
	TRISC2 = 1; // input
	TRISC1 = 1;

	CCP1CON = 0b00000101;
	CCP2CON = 0b00000100;

	CCP1IE = 1; 
	CCP1IF = 0; 
	PEIE = 1;
	GIE = 1;

	CCP2IE = 1; 
	CCP2IF = 0; 
	PEIE = 1;
	GIE = 1;

///set up baud rate 9600
	tx();
	rx();
	char data_tx[10];

	while(1)
	{	
		__delay_ms(100);
		RE1=1;
		__delay_ms(1);
		RE1=0;

		xung = abs(count2-count1);
		d=(17000.0*xung*(1/5000000.0))+1;
		lcd_gotoxy(0,0);
		printf("xung: %05u",xung);
		lcd_gotoxy(0,1);
		printf("d: %5.2f",d);
		sprintf(data_tx,"d:%5.2f",d);
		send_string(data_tx);
	}
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

void putch(char c)
{
	lcd_putc(c);
}

void send_char(char data){
	while (TXIF==0){}
	TXREG = data;
}
void send_string(const char *s){  //*s mang dong
	while(*s) {send_char(*s++);}
}

void tx(){
	SYNC = 0; BRGH = 1; BRG16 = 1;
	SPBRGH = 0x02; // 9600
	SPBRG = 0x08; 
	TXEN = 1; TX9 = 0; SPEN = 1;
}

void rx(){
	SYNC = 0; BRGH = 1; BRG16 = 1;
	SPBRGH = 0x02; // 9600
	SPBRG = 0x08; 
	CREN = 1; RX9 = 0; SPEN = 1;
	RCIE=1; RCIF=0; PEIE=1; GIE=1;
}