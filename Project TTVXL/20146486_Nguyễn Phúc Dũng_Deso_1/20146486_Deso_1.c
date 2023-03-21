#include<htc.h>
#include<stdio.h>
#include <math.h>
#include <stdlib.h>

#define _XTAL_FREQ 16000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
 
int dem,angle,a;
unsigned int A;
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

////timer 2 set up - 10us
	T2CKPS1 = 0; T2CKPS0 = 0;
	TMR2 = 0;PR2 = 79;
	TOUTPS3 = 0;TOUTPS2 = 0;
	TOUTPS1 = 0;TOUTPS0 = 0;
	TMR2ON = 1; // on timer 2
	TMR2IE = 1; TMR2IF = 0; PEIE = 1; GIE =1;

///set up baud rate 9600
	tx();
	rx();
	char data_tx[10];
	char gocquay_start[3];

	while(1)
	{
		//send_string(data_rx);
		for (int b=0;b<=2;b++){
			gocquay_start[b]=data_rx[b];
		}	
		angle=atoi(gocquay_start);
		if (angle <= 179){angle++;}
		gocquay(angle);
	}	
}

void interrupt ngat()
{
	if(TMR2IF)
	{	dem++;
		if (dem == A){RE0 = 0;}
		if (dem == 1000){dem = 0;RE0 = 1;}
	}
	TMR2IF = 0;

	if (RCIF){
		data_rx[a]=RCREG;
		a++;
		if (a==3) {a=0;}	
	}
	RCIF=0;
}

void gocquay(int goc)
{
	A = 50 + goc*(1/3.6);
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
	SPBRGH = 0x01; // 9600
	SPBRG = 21; 
	TXEN = 1; TX9 = 0; SPEN = 1;
}

void rx(){
	SYNC = 0; BRGH = 1; BRG16 = 1;
	SPBRGH = 0x01; // 9600
	SPBRG = 21; 
	CREN = 1; RX9 = 0; SPEN = 1;
	RCIE=1; RCIF=0; PEIE=1; GIE=1;
}