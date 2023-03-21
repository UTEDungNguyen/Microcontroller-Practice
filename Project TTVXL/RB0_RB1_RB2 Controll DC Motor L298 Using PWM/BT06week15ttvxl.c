#include<htc.h>
#include<stdio.h>
#include <math.h>
#include <stdlib.h>

#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

int i,giatri;
void main()
{
	ANSEL = ANSELH = 0;  //disable analog all I/O
	TRISC0 = 1; //input
	TRISC2 = 0; //output
	TRISE0 = 0; //output  
	RE0 = 1;
	TRISE1 = 0; //output  
	RE1 = 0;	
	
	TRISB0 = 1; //input
	TRISB1 = 1;
	TRISB2 = 1;

	IOCB=0b00000111;
	RBIE = 1;
	RBIF = 0;
	GIE = 1;

	//Khoi tao timer2 10kHz
	T2CKPS1 = 0; T2CKPS0 = 1;
	TMR2 = 0; PR2 = 124;
	TMR2ON = 1;

	CCP1CON = 0b00001100;
	CCPR1L = 0;	
	i = 0;
	giatri = 0;	

	while(1)
		{
		}
}

void interrupt ngat()
{
	if (RBIF)
	{
		if (RB0)
			{
				giatri = giatri - 12;
				CCPR1L = giatri;
				if(giatri>124) {CCPR1L =124;giatri=124;}
				
			}
		if(RB1)	
			{
				giatri = giatri + 12;	
		 		CCPR1L = giatri;
				if(giatri<0) {CCPR1L =0;giatri=0;}		
			}
		if(RB2)	
			{	
				i++;
				if(i==1) {RE0 = 0; RE1 = 1;}
				if(i==2) {RE0 = 1; RE1 = 0;i=0;}		
			}
	}
	RBIF = 0;				
}


	