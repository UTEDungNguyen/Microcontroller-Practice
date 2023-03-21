#include<htc.h>
#include<stdio.h>
#include<stdlib.h>

#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
//FOSC_INTRC_NOCLKOUT
//OSCCON = 0b01100001;

int dem,xung,pwm_t,a,pwm_final;
float v;
char data_rx[10];
void tx();
void rx();
void send_char(char data);
void send_string(const char *s);
void pwm_10bit(int pwm);

void main()
{
 	ANSEL = ANSELH = 0;  // diasble analog all I/O
	TRISE1 = 0; RE1=0;
	TRISE2 = 0; RE2=0;
	///////////////
	TRISC2 = 0;
	//timer 2 set up 10kHz, 100us
	T2CKPS1 = 0; T2CKPS0 = 1; // 1:4
	PR2 = 124; TMR2 = 0;
	TMR2ON = 0; // on timer 2
 /// CCP1CON set up pum mode
	CCP1CON = 0b00000000;
	CCPR1L=0;
////////////////////////////////
	tx();
	rx();
	char data_tx[10];
	char data_pwm[3];
	while(1)
	{
		//send_string(data_rx);
		for (int b=1;b<=2;b++){
			data_pwm[b-1]=data_rx[b];
		}	
		pwm_t=atoi(data_pwm);
		TMR2ON = 1;
		CCP1CON = 0b00001100;
		pwm_final=5*pwm_t;   //124*pwm_t/100*4=4,96==>5
		pwm_10bit(pwm_final);
	}	
}
void interrupt ngat()
{
	if (RCIF){
		data_rx[a]=RCREG;
		a++;
		if (a==3) {a=0;}
		if (RCREG == 'P') {RE1=0;RE2 = 0; TMR2ON=0;a=0;}
		else if (RCREG == 'L') {RE1=0;RE2 = 1; TMR2ON=1;}
		else if (RCREG == 'R') {RE1=1;RE2 = 0; TMR2ON=1;}
	}
	RCIF=0;
}

void putch(char c)
{
	lcd_putc(c);
}

void pwm_10bit(int pwm)
{
	CCPR1L  = pwm/4;
	DC1B1 = 0; DC1B0 = 0;
	if((pwm & 2) == 1) DC1B1 = 1;
	if((pwm & 1) == 1) DC1B0 = 1;
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