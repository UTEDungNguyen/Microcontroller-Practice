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
int count,count1,count2,a;
int h,m,s,ms = 0;
long int xung;
unsigned char S1_state =0;
char data_rx[10];
void tx();
void rx();
void send_char(char data);
void send_string(const char *s);

void lcd_counter(){
	lcd_gotoxy(3,1);
	printf("%02dh",h);
	lcd_gotoxy(6,1);
	printf(":%02dm",m);
	lcd_gotoxy(10,1);
	printf(":%02ds",s);
	lcd_put_byte(1,1);   // clear screen temporarily
}

void main()
{	
	ANSEL = ANSELH = 0;  // disable analog all I/O
	lcd_init();   // khoi tao lcd	
	TRISA4 = 1;
	TRISD = 0x00;
	TRISE0 = 0; //output
	
	TRISB0 = 1;
	TRISA0 = 1; ANS0 = 1;
	ADCS1 = 1; ADCS0 = 0;  
	VCFG1 = 0; VCFG0 = 0;
	CHS3 = 0;CHS2 = 0; CHS1 = 0;CHS0 = 0;
	ADFM = 1;  // right jus
	ADON = 1;
	WPUB = 0b00000011;
	nRBPU =0;
	GIE = 1;
    RBIE = 1;
    RBIF = 0;
	__delay_ms(10);

	TMR1GE=0; 
	TMR1CS=0; //1: Clock t? bên ngoài (t? chân T1CKI), 0: Clock bên trong (FOSC/4)
	T1SYNC=1;
	T1CKPS1=0;T1CKPS0=0; //presscale 1:1
	TMR1ON=1;	
	TMR1H=246;   
	TMR1L=60;

	TMR1IE=1;
	TMR1IF=0;
	PEIE=1;
	GIE=1; 

///set up baud rate 9600
	tx();
	rx();
	char data_tx[10];

	lcd_gotoxy(0,0);
	printf("Nguyen Phuc Dung");

	while(1)
	{	
		lcd_counter();
		if (ms>=1000){
			ms=0;
			s=s+1;
			lcd_counter();
			if (s==10||s==20||s==30||s==40||s==50||s==60){
				sprintf(data_rx,"gio:%02d",h);
				send_string(data_rx);
				sprintf(data_rx,"phut:%02d",m);
				send_string(data_rx);
			}
			if (s>=60){
				s=0;
				m=m+1;
				lcd_counter();
				if (m>=60){
					m=0;
					h=h+1;
					lcd_counter();
					if (h>=60){
						ms=0;
						s=0;
						m=0;
						h=0;
						lcd_counter();
					}
				}
			}
		}	
		lcd_put_byte(1,1);   // clear screen temporarily
	}
}

void putch(char c)
{
	lcd_putc(c);
}
void interrupt ngat()
{ 
	TMR1H=246; TMR1L=60;  // Ðinh thoi 1ms
	if(TMR1IF)
	{
		dem++;
		if(dem == 2){dem= 0; ms=ms+1;}
	}
	TMR1IF = 0;
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