#include<htc.h>
#include<stdio.h>
#include <math.h>
#include <stdlib.h>

#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
 
int dem,angle,a,xung;
unsigned int A;
float v;
char data_rx[10];
void gocquay(int goc);
void tx();
void rx();
void send_char(char data);
void send_string(const char *s);
void main()
{		
	ANSEL = ANSELH = 0;  // disable analog all I/O
	TRISE0 = 0; RE0 = 1; //output

//////Timer 0 set up - timer mode - 100ms
	T0CS = 0;
	PSA  = 0; // cap bo chia
	PS2 = 0; PS1 = 1;PS0 = 0;
    TMR0 = 6;
	T0IE = 1; T0IF = 0; GIE = 1; PEIE =1;

//////Timer 1 set up - counter mode
	TMR1CS = 1;
	T1CKPS1 = 0;T1CKPS0 = 0;  //1:1
	T1SYNC  = 1;
	TMR1 = 0;
	TMR1GE = 0; TMR1ON = 1;
///////////////////////////

///set up baud rate 9600
	tx();
	rx();
	char data_tx[10];
	char gocquay_start[3];

	while(1)
	{
		v = (xung/374.0)*10.0*60.0;
		sprintf(data_tx,"v:%3.2f",v);
		send_string(data_tx);
	}
}

void interrupt ngat()
{
	if(T0IF)
		{	TMR0 = 6;
			dem++;
			if(dem == 250)
				{ 
					dem = 0;
					xung = TMR1;
					TMR1 = 0; 
				}
		}
		T0IF = 0;

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