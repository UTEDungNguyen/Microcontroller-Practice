#include<htc.h>
#include<stdio.h>
#include <math.h>
#include <stdlib.h>

#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

int i;
void main()
{
	ANSEL = ANSELH = 0;  //disable analog all I/O
	TRISC1 = 0; //output
	TRISB0 = 1; //input

	INTE = 1;	  // enable interrupt INT
	INTF = 0;	  //reset INT flag	
	INTEDG = 0;   // chon canh xuong
	GIE = 1;      // global inteerupt enable

	//Khoi tao timer2 15kHz
	T2CKPS1 = 0; T2CKPS0 = 1;
	TMR2 = 0; PR2 = 82;
	TMR2ON = 0;	

	//Che do PWM
	CCP2CON = 0b00000000;
	CCPR2L = 0;
	while(1)
		{}
}

void interrupt ngat()
{
	if (INTF)
	{
      i=i++;
	  if (i==1) //15%
		{
			TMR2ON = 1;	
			CCP2CON = 0b00001100;
			CCPR2L = 13;
		}
	  if (i==2) //30%
		{
			TMR2ON = 1;	
			CCP2CON = 0b00001100;
			CCPR2L = 25;
		}
	  if (i==3) //45%
		{
			TMR2ON = 1;	
			CCP2CON = 0b00001100;
			CCPR2L = 37;
		}
	  if (i==4) //60%
		{
			TMR2ON = 1;	
			CCP2CON = 0b00001100;
			CCPR2L = 50;
		}
	  if (i==5) //75%
		{
			TMR2ON = 1;	
			CCP2CON = 0b00001100;
			CCPR2L = 63;
		}
	  if (i==6) //90%
		{
			TMR2ON = 1;	
			CCP2CON = 0b00001100;	
			CCPR2L = 75;
		}
	  if (i==7)
		{
			i=1;
			TMR2ON = 1;	
			CCP2CON = 0b00001100;
			CCPR2L = 13;
		}
	}				
	INTF = 0;
}



	