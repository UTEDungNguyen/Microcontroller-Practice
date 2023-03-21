#include<htc.h>
#include<stdio.h>
#include <math.h>
#include <stdlib.h>

#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

char i;
int a,PW,PW1;
float res, dem,v,f;
int count,count1,count2;
long int xung;
char data_rx[10];
void tx();
void rx();
void send_char(char data);
void send_string(const char *s);
int pwm_ccp1, pwm_ccp2;
void pwm_10bit1(int data_pwm);

void main()
{	
	ANSEL = ANSELH = 0;  // disable analog all I/O	
///////////////
	TRISC2 = 0; //output
	//Khoi tao timer2 10kHz, 100us
	T2CKPS1 = 0; T2CKPS0 = 1;  // prescale 1:4
	TMR2 = 0; PR2 = 124; 
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
		PW1=PW*124/100;
		TMR2ON=1;
		CCP1CON = 0b00001100;
		pwm_ccp1 = PW1*4;    //trong truong hop 8bit thi 50% cua PR2 la 125 con neu su dung 10 bit thi x4 lên là 500
		pwm_10bit1(pwm_ccp1);


/* Luu y khi su dung mang data la neu da su dung data_rx de lay so
vao mang roi thi khi in ra terminal thi phai su dung 1 mang data
khac vi du nhu data_tx*/

/* Con neu bthuong k lay du lieu vao mang data_rx thi co the in
len terminal bang cach su dung data_rx nhu bth */

		sprintf(data_tx,"CCPR1L: %03d  ",CCPR1L);
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

void pwm_10bit1(int data_pwm)	
{
	CCPR1L = data_pwm/4;  //Dich bit sang phai 2 donvi
	DC1B1 = 0; DC1B0 = 0; //CCP(1/2)CON
	if((data_pwm &2) == 1) {DC1B1 = 1;} 	
	if((data_pwm &1) == 1) {DC1B0 = 1;} 
}
