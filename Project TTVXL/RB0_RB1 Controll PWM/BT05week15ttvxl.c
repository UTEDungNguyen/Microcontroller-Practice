#include<htc.h>
#include<stdio.h>
#include <math.h>
#include <stdlib.h>

#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

int pwm_v;
void pwm_10bit(int data_pwm);
void main()
{
	ANSEL = ANSELH = 0;  //disable analog all I/O
	TRISC2 = 0; //output	
	RC2 = 0;
	TRISD5 = 0; //output 	
	RD5 = 0;
	TRISD6 = 0; //output	
	RD6 = 0;	
	TRISD7 = 0; //output	
	RD7 = 0;
	
	TRISB0 = 1; //input
	TRISB1 = 1;

	INTE = 1;	  // enable interrupt INT
	INTF = 0;	  //reset INT flag	
	INTEDG = 0;   // chon canh xuong
	GIE = 1;      // global inteerupt enable

	IOCB1 = 1;
	RBIE = 1;
	RBIF = 0;
	GIE = 1;

	while(1)
		{}
}

void interrupt ngat()
{
	if (INTF)
	{
      	T2CKPS1 = 0; T2CKPS0 = 1;
		TMR2 = 0; PR2 = 124;
		TMR2ON = 1;
		CCP1CON = 0b01001100;		
		pwm_v = 450;
		pwm_10bit(pwm_v);
	}
	if (RBIF)
		if(RB1)	
	{
		{	
			T2CKPS1 = 0; T2CKPS0 = 1;
			TMR2 = 0; PR2 = 84;
			TMR2ON = 1;	
			CCP1CON = 0b11001100;		
			pwm_v = 238;
			pwm_10bit(pwm_v);
		}
	}
	RBIF = 0;				
	INTF = 0;
}

void pwm_10bit(int data_pwm)
{
	CCPR1L = data_pwm/4;
	DC1B1 = 0; DC1B0 = 0; //CCP(1/2)CON
	if((data_pwm &2) == 1) {DC1B1 = 1;} 	
	if((data_pwm &1) == 1) {DC1B0 = 1;} 
}



	