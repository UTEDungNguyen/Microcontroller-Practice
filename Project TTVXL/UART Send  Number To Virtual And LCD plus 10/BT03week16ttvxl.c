#include<htc.h>
#include<stdio.h>
#include <math.h>
#include <stdlib.h>
#include<string.h>
#include "lcd(16).h"

#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

int i,number_in,number_out;
char rx_data[5];
char ket_qua[6];
void tx_init();
void rx_init();
void send_char(char data);
void send_string(const char *s);
void main()
{
	ANSEL = ANSELH = 0;  //disable analog all I/O
	lcd_init();	
	tx_init();
	rx_init();

	//set up co cho RX
	RCIF = 0;
	RCIE = 1;
	PEIE = 1;
	GIE = 1;

	i=0;
	while(1)
		{		
			number_in = atoi(rx_data);
			number_out = number_in + 10;

			lcd_gotoxy(2,0);
			printf("Numbers is: ");
			lcd_gotoxy(4,1);
			printf(" %05u ",number_in);
			
			sprintf(ket_qua,"%d",number_out);
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
	RCIF=0;
}

void putch(char c)
{
	lcd_putc(c);
}