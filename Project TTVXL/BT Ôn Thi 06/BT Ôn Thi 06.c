#include<htc.h>
#include<stdio.h>
#include "lcd(16).h"

#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

unsigned char maled[10]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
void quet_led(char chuc_t, char donvi_t);

char i;
int adc;
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
	lcd_init();   // khoi tao lcd	
	TRISA4 = 1;
	TRISD = 0x00;
	TRISE0 = 0; //output

///////////////
	TRISC2 = 0; //output
	//Khoi tao timer2 20kHz,50us
	T2CKPS1 = 0; T2CKPS0 = 0;
	TMR2 = 0; PR2 = 249; 
	TMR2ON = 1;
 /// CCP1CON set up pum mode
	CCP1CON = 0b00001100;
	CCPR1L = 125; // do rong xung 50%

// Timer 0 using like delay
	T0CS = 0;   //timer =0; counter =1
	PSA = 0;    //1 : khong dung bo chia
	PS2= 0; PS1 = 1; PS0= 0;  //ps=8
	TMR0 = 7;   // =7 nghia la tran qua 255 se ve 7 
	//T0SE=1;	  //falling edge

	T0IE = 1;
	T0IF = 0;
	GIE = 1;

//Timer 1 using read pulse frequency 
	TMR1GE=0;  
	TMR1CS=1; //1: Clock t? bên ngoài (t? chân T1CKI), 0: Clock bên trong (FOSC/4)
	T1SYNC=1;
	T1CKPS1=0;T1CKPS0=0; //presscale 1:1
	//T1GINV=1;
	TMR1ON=1;	
	TMR1H=0;   
	TMR1L=0;

/*	TMR1IE=1;
	TMR1IF=0;
	PEIE=1;
	GIE=1; */

///set up baud rate 9600
	tx();
	rx();
	char data_tx[10];

	while(1)
	{	
		f = xung-xung*0.0038;  // convert second,minute  (pulse/minute)
		lcd_gotoxy(0,0);
		printf("xung: %08u",xung);
		lcd_gotoxy(0,1);
		printf("f: %3.2f",f);
		sprintf(data_rx,"f:%3.2f  ",f);
		send_string(data_rx);
	}
}

void putch(char c)
{
	lcd_putc(c);
}
void interrupt ngat()
{
	TMR0 = 7;
	if(T0IF)
	{
		dem++; 
		if(dem == 2500){  // create delay 200ms --->200ms*5=1s ==> choose 2500
			dem= 0;
			xung = TMR1;	
			TMR1H=0; TMR1L=0;
		}
	}
	T0IF = 0;
	
	//if(TMR1IF)
	//{
		//dem++;
		//if(dem == 7){dem= 0; RE0 = ~RE0;}
		//if (dem == 50) {RE0=0;}  //10ms
		//if (dem == 250) {RE0=1;dem=0;}  //kc giua 2 xung la 50ms reset 
	//}
	//TMR1IF = 0;
}

/*Tính so lan tran và TMR1H, TMR1L 
	ví du :80ms=0.08
	0.08*(FOSC)5000000= 400000
	400000/50000(so dep)=8(so lan tran)
	2^(16)=65536-50000(so dep)=15536
	Lay 15536-1=15535
	15536/256 =60 (TMR1H)
	15536-256*60=176 (TMR1L) */
	
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