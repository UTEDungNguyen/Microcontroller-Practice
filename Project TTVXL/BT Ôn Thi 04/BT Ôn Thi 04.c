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
float res, dem,v;
int count,count1,count2;
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
	T0CS = 1;   //timer =0; counter =1
	PSA = 1;    //1 : khong dung bo chia
	//PS2= 0; PS1 = 0; PS0= 1;  //ps=8
	TMR0 = 0;   // =7 nghia la tran qua 255 se ve 7 
	T0SE=1;	  //falling edge

	T0IE = 1;
	T0IF = 0;
	GIE = 1;

///set up baud rate 9600
	tx();
	rx();
	char data_tx[10];

	while(1)
	{			
		count1 = TMR0+dem*256;
		//__delay_ms(500);
		//count2 = TMR0+dem*256;
		//count = count2 - count1;

		lcd_gotoxy(0,0);
		printf("Nguyen Phuc Dung");
		lcd_gotoxy(0,1);
		printf("Nhan nut: %03d",count1);
		sprintf(data_tx,"Nhan nut:%03d ",count1);
		send_string(data_tx);
				
	}
}

void putch(char c)
{
	lcd_putc(c);
}
void interrupt ngat()
{
	if(T0IF)
	{
		dem++;  //dem tran du 256 lan bien dem moi +1
	}
	TMR0 = 0; // dem tran du 256 lan TMR0 moi reset ve 0
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