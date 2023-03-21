#include<htc.h>
#include<stdio.h>
#include<stdlib.h>
#include "lcd(16).h"

#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
//FOSC_INTRC_NOCLKOUT
//OSCCON = 0b01100001;
void pwm_10bit(int pwm);
int A,dem;
char i;
int adc,pwm_t;
float res,v;
int dem;
int count,count1,count2;
long int xung;

void main()
{
 	ANSEL = ANSELH = 0;  // diasble analog all I/O
	lcd_init();
	TRISE0 = 0; RE0 = 1;
	TRISC2=0;

	//timer 2 set up
	T2CKPS1 = 0; T2CKPS0 = 1; // 1:1
	PR2 = 124; TMR2 = 0;
	TMR2ON = 1; // on timer 2

//// CCP1CON set up pum mode
	CCP1CON=0b00001100;

///// Timer 1 set up - counter mode 
	TMR1CS =1 ;
	T1CKPS1=0;  T1CKPS0=0; 
	T1SYNC =1;
	TMR1=0;
	TMR1GE=0;
	TMR1ON=1;
///// Timer 0 set up - timer mode
	T0CS = 0;
	PSA =0;  // cap bo chia
	PS2=0;PS1=1;PS0=0; //ps=8
	TMR0=6;
	T0IE=1;
	T0IF=0;
	GIE=1;
	PEIE=1;

	pwm_t = 300;
	pwm_10bit(pwm_t);

	while(1)
	{
		v = (xung/360.0)*10.0*60.0;
		if(v < 30.7)pwm_t = pwm_t++;
		else if(v > 30.7)pwm_t = pwm_t--;

		pwm_10bit(pwm_t);
		lcd_gotoxy(0,0);
		printf("v: %3.2f",v);
		lcd_gotoxy(0,1);
		printf("xung: %05d",xung);
	}	
}

void interrupt ngat()
{
	
	if(T0IF)
	{
		TMR0 = 6;
		dem++; 
		if(dem == 250){  // create delay 200ms
			dem= 0;
			xung = TMR1;	
			TMR1 = 0; 
			TMR1H=0; TMR1L=0;
		}
	}
	T0IF = 0;
}

void pwm_10bit(int pwm){
	CCPR1L=pwm/4;
	DC1B1=0;DC1B0=0;
	if ((pwm & 2)==1) DC1B1=1;
	if ((pwm & 1)==1) DC1B0=1;
} 

void putch(char c)
{
	lcd_putc(c);
}