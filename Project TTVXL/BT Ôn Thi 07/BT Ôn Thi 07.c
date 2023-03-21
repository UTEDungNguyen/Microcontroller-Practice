#include<htc.h>
#include<stdio.h>
#include <math.h>
#include <stdlib.h>

#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

char i;
int a,PW;
float res, dem,v,f;
int count,count1,count2;
long int xung;
char data_rx[10];
void tx();
void rx();
void send_char(char data);
void send_string(const char *s);

void main()
{	
	ANSEL = ANSELH = 0;  // disable analog all I/O	
///////////////
	TRISC2 = 0; //output
	//Khoi tao timer2 20kHz, 50us
	T2CKPS1 = 0; T2CKPS0 = 0;
	TMR2 = 0; PR2 = 249; 
	TMR2ON = 0;
 /// CCP1CON set up pum mode
	CCP1CON = 0b00000000;
	CCPR1L = 0; // do rong xung 50%

///set up baud rate 9600
	tx();
	rx();
	char data_tx[10];
	char Pulse_width[3];

	while(1)
	{	
		for (int b=0;b<=2;b++){
			Pulse_width[b]=data_rx[b];
		}	
		PW=atoi(Pulse_width);
		TMR2ON=1;
		CCP1CON = 0b00001100;
		CCPR1L=PW;

/* Luu y khi su dung mang data la neu da su dung data_rx de lay so
vao mang roi thi khi in ra terminal thi phai su dung 1 mang data
khac vi du nhu data_tx*/

/* Con neu bthuong k lay du lieu vao mang data_rx thi co the in
len terminal bang cach su dung data_rx nhu bth */

		sprintf(data_tx,"CCPR1L: %03d  ",PW);
		send_string(data_tx);	
	}	
}

void interrupt ngat()
{
	if (RCIF){
		data_rx[a]=RCREG;
		a++;
		if (a==3) {a=0;}
	}
	RCIF=0;
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
	//TXIE=1; TXIF=0; PEIE=1; GIE=1;
}

void rx(){
	SYNC = 0; BRGH = 1; BRG16 = 1;
	SPBRGH = 0x02; // 9600
	SPBRG = 0x08; 
	CREN = 1; RX9 = 0; SPEN = 1;
	RCIE=1; RCIF=0; PEIE=1; GIE=1;
}