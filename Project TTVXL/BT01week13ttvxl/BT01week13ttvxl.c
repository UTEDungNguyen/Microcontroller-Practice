#include<htc.h>
#include<stdio.h>
#include <math.h>
#include <stdlib.h>

#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
 
void main()
{		
	ANSEL = ANSELH = 0;  // disable analog all I/O
	TRISE0 = 0; RE0 = 0; //output

////timer 2 set up - 50us
	T2CKPS1=0; T2CKPS0=0; //Lua chon bo chia Prescaler 1:1
	TMR2 = 0;PR2 = 249;
	TOUTPS3 = 0;TOUTPS2 = 0; //Lua chon bo chia Postcaler 1:1	
	TOUTPS1 = 0;TOUTPS0 = 0;
	TMR2ON = 1; // on timer 2
	TMR2IE = 1; TMR2IF = 0; PEIE = 1; GIE =1;
	
	while(1)
	{
	}
}
void interrupt ngat()
{
	if(TMR2IF)
	{
		RE0 =~RE0;
	}
	TMR2IF = 0;
}