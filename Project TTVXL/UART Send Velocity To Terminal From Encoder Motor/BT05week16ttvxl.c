#include<htc.h>
#include<stdio.h>
#include <math.h>
#include <stdlib.h>
#include<string.h>


#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

int xung,i,dem;
int v_int;
float v;
char rx_data[5];
char ket_qua[5];
void tx_init();
void rx_init();
void send_char(char data);
void send_string(const char *s);
void main()
{
	ANSEL = ANSELH = 0;  //disable analog all I/O
		
	//Khoi tao timer0 che do dinh thoi 100ms
	T0CS = 0;
	PSA = 0;
	PS2 = 0;PS1 = 1;PS0 = 0;
	TMR0 = 7;
	T0IE = 1;T0IF = 0;GIE = 1;

	//Khoi tao timer1 che do counter
	TMR1CS = 1; //Lua chon clock cho timer1
	T1CKPS1 = 0; T1CKPS0 = 0;
	T1SYNC = 1;
	TMR1 = 0; //clear	
	TMR1GE = 0; TMR1ON = 1;
		
	tx_init();
	rx_init();

	//set up co cho RX
	RCIF = 0;
	RCIE = 1;
	PEIE = 1;
	GIE = 1;

	while(1)
		{
			v = (xung/360.0)*10.0*60.0;
			v_int = (int)v;
			send_string("Velocity: ");
			sprintf(ket_qua,"%d",v_int);
			send_string(ket_qua);
			send_string("  ");
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
	}
	if(T0IF)
	{
		dem++;
		if(dem==250)
			{
				dem = 0;
				xung = TMR1;
				TMR1 = 0;
			}
	}	
	T0IF=0;
	TMR0 =7;				
	RCIF=0;	
}
