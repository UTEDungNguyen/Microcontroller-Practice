#include<htc.h>
#include<stdio.h>

#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

unsigned char maled[10]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
void quetled (char tram_t,char chuc_t, char donvi_t);

void main()
{
 
	ANSEL = ANSELH = 0;  // diasble analog all I/O
//	OSCCON = 0b01100001;
/*	ICRF2 = 1;
	IRCF1 = 1;
	IRCF0 = 0;
	SCS = 1;
*/
	
	TRISB = 0x00;
	TRISA0 = 1; ANS0 = 1;
	ADCS1 = 1; ADCS0 = 0;  
	VCFG1 = 0; VCFG0 = 0;
	CHS3 = 0;CHS2 = 0; CHS1 = 0;CHS0 = 0;
	ADFM = 1;  // right jus
	ADON = 1;
	__delay_ms(10);
/////////////
	TRISC = 0x00;
	TRISD = 0x00;
	TRISB = 0x00;
	PORTC = PORTD = PORTB =0;
 	int chuc, donvi, tram;
	int adc;
	float res;
	quetled(0,0,0);
	while(1)
	{
		__delay_ms(10);
		GO_nDONE=1;
		while(GO_nDONE==1){}
		adc = ADRESH * 256 + ADRESL;                
		res = (adc/1023.0)*5.0;
		res = res*100.0;
		tram = (int)res/100;
		chuc = (int)res%100/10;
		donvi = (int)res%100%10;
		quetled(tram,chuc,donvi);
	}
}

void quetled(char tram_t, char chuc_t, char donvi_t)
{
	PORTC = maled[tram_t];
	PORTD = maled[chuc_t];
	PORTB = maled[donvi_t];
}
