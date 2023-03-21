#include<htc.h>
#include<stdio.h>
#include<stdlib.h>

#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
//FOSC_INTRC_NOCLKOUT
//OSCCON = 0b01100001;

int dem,xung,pwm_t,a,i;
float v;
char data_rx[10];
void pwm_10bit(int pwm);
void tx();
void rx();
void send_char(char data);
void send_string(const char *s);
void main()
{
 	ANSEL = ANSELH = 0;  // diasble analog all I/O
	///////////////
	TRISC2 = 0;
	TRISD6 = 0;
	TRISD7 = 0;
	TRISD5 = 0;
	RC2 = RD5 = RD6 = RD7 = 0;  
// luu y phai khai bao khong se loi chan I/O moi vao da kich
	//timer 2 set up 10kHz, 100us
	T2CKPS1 = 0; T2CKPS0 = 1; // 1:4
	PR2 = 124; TMR2 = 0;
	TMR2ON = 1; // on timer 2
 /// CCP1CON set up pum mode
	CCP1CON = 0b00000000;
	CCPR1L=0;

	tx();
	rx();
	char data_tx[10];
	char data_pwm[3];
	while(1)
	{												
	}	
}
void interrupt ngat()
{
	if(RCIF)
	{
		data_rx[i] = RCREG;
		i++;	
		if(i==1) 
		{
			i=0;
		}
		if(data_rx[0] == 'S')
		{
			i = 0;
			CCP1CON = 0b01001100;		
			CCPR1L = 124;
		}
		if(data_rx[0] == 'P')
		{
			i = 0;
			CCP1CON = 0b00000000;		
			CCPR1L = 0;
		}
		if(data_rx[0] == 'L')
		{
			CCP1CON = 0b01001100;
			i = 0;
			CCPR1L = 124;			
		}
		if(data_rx[0] == 'R')
		{
			CCP1CON = 0b11001100;
			i = 0;
			CCPR1L = 124;					
		}
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
}

void rx(){
	SYNC = 0; BRGH = 1; BRG16 = 1;
	SPBRGH = 0x02; // 9600
	SPBRG = 0x08; 
	CREN = 1; RX9 = 0; SPEN = 1;

	RCIE=1; RCIF=0; PEIE=1; GIE=1;
}