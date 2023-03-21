#include<htc.h>
#include<stdio.h>
#include <math.h>
#include <stdlib.h>
#include<string.h>


#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

int i,dem,pwm_v;
char rx_data[5];
void tx_init();
void rx_init();
void send_char(char data);
void send_string(const char *s);
void main()
{
	ANSEL = ANSELH = 0;  //disable analog all I/O

	TRISC2 = 0; //output
	RC2 = RD5 = RD6 = RD7 = 0;	
	TRISD5 = 0; //output 	
	TRISD6 = 0; //output		
	TRISD7 = 0; //output		
		
	tx_init();
	rx_init();

	//set up co cho RX
	RCIF = 0;
	RCIE = 1;
	PEIE = 1;
	GIE = 1;

	T2CKPS1 = 0; T2CKPS0 = 1;
	TMR2 = 0; PR2 = 124;
	TMR2ON = 1;
	CCP1CON = 0b00000000;
	CCPR1L = 0;

	char PWM_V[3];
	while(1)
		{	
			send_string(rx_data);
		}
}

void tx_init()
{
	SPBRGH = 0x02;  //9600
	SPBRG = 0x08;
	SYNC = 0; BRGH = 1; BRG16 = 1;
	TXEN = 1; TX9 = 0; SPEN = 1;
 
}

void rx_init()
{
	SPBRGH = 0x02;  //9600
	SPBRG = 0x08;
	SYNC = 0; BRGH = 1; BRG16 = 1;
	CREN = 1; RX9 = 0; SPEN = 1;
}

void send_char(char data)
{
	while(TXIF == 0){}
	TXREG = data;
}

void send_string(const char *s)
{
	while(*s){send_char(*s++);}
}

void interrupt ngat()
{
	if(RCIF)
	{
		rx_data[i] = RCREG;
		i++;	
		if(i==5) 
		{
			i=0;
		}
		if(rx_data[0] == 'S')
		{
			i = 0;
			CCP1CON = 0b01001100;		
			CCPR1L = 124;
		}
		if(rx_data[0] == 'P')
		{
			i = 0;
			CCP1CON = 0b00000000;		
			CCPR1L = 0;
		}
		if(rx_data[0] == 'B')
		{
			CCP1CON = 0b01001100;
			//i = 0;
			char PWM_V[3];
			dem = 2;
			while(dem<5)
				{
					PWM_V[dem-2] = rx_data[dem];
					dem++;
				}
			pwm_v = atoi(PWM_V);
			CCPR1L = pwm_v;				
		}
		if(rx_data[0] == 'F')
		{
			CCP1CON = 0b11001100;
			//i = 0;
			char PWM_V[3];
			dem = 2;
			while(dem<5)
				{
					PWM_V[dem-2] = rx_data[dem];
					dem++;
				}
			pwm_v = atoi(PWM_V);	
			CCPR1L = pwm_v;
							
		}
	}			
	RCIF=0;
	
}
