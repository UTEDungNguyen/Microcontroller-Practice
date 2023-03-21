#include<htc.h>
#include<stdio.h>
#include <math.h>
#include <stdlib.h>

__CONFIG(FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

int i,dem;
char rx_data[10];
void tx_init();
void rx_init();
void send_char(char data);
void send_string(const char *s);
void main()
{
	IRCF2 = 1; IRCF1 = 1; IRCF0 = 0; //Setup FOSC = 4MHz
	SCS = 1; 	

	ANSEL = ANSELH = 0;
	TRISA3 = 0; 
	TRISA4 = 0; 
	TRISC6 = 0;
	TRISC7 = 1;
	
	//Khai bao co cho RX
	RCIE = 1;
	RCIF = 0;
	PEIE = 1;
	GIE = 1;

	/////timer 2 - setup - 500ms
	T2CKPS1 = 0;	 T2CKPS0 = 1;
	TOUTPS3 = 1; TOUTPS2 = 0; TOUTPS1 = 0; TOUTPS0 = 1;
	TMR2 = 0 ;PR2 = 250;
	TMR2ON = 1;

	TMR2IE=1; 
	TMR2IF=0;
	PEIE=1;
	GIE=1;  	

	tx_init();
	rx_init();
	while(1)
		{
			if(rx_data[i] == '1')
				{
					RA3 = 0;RA4 = 0 ;
					send_string("Number1");
				}
			else if(rx_data[i] == '2')
				{
					RA3 = 1;RA4 = 1 ;
					send_string("Number2");
				}
			else if(rx_data[i] == '3')
				{
					RA3 = 1;RA4 = 0 ;
					send_string("Number3");
				}
			else if(rx_data[i] == '4')
				{
					RA3 = 0;RA4 = 1 ;
					send_string("Number4");
				}
			else 
			{	
				send_string("Other numbers");
			}
		}
}

void tx_init()
{
	SPBRGH = 0;  //14400
	SPBRG = 69;
	SYNC = 0; BRGH = 1; BRG16 = 1;
	TXEN = 1; TX9 = 0; SPEN = 1;
 
}

void rx_init()
{
	SPBRGH = 0;  //14400
	SPBRG = 69;
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
		if(i==1) {i=0;}
	}	
	RCIF=0;
	if(TMR2IF)
	{
		dem++;
		if(dem==50)
			{	
				RA3 = RA4 =0;
			}
		if(dem==100)
			{	
				RA3 = RA4 =1;
				dem = 0;
			}	
	}
	TMR2IF=0;
}