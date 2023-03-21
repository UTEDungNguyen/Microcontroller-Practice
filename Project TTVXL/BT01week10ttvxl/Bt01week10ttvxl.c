#include<htc.h>
#include<stdio.h>

#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

unsigned char maled[10]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
void quetled (char chuc_t, char donvi_t);
char dem;
unsigned char S1_state=0;

void main()
{
 
	ANSEL = ANSELH = 0;  // diasble analog all I/O
//	OSCCON = 0b01100001;
/*	ICRF2 = 1;
	IRCF1 = 1;
	IRCF0 = 0;
	SCS = 1;
*/
	
	TRISB0 = 1;
	TRISA0 = 1; ANS0 = 1;
	ADCS1 = 1; ADCS0 = 0;  
	VCFG1 = 0; VCFG0 = 0;
	CHS3 = 0;CHS2 = 0; CHS1 = 0;CHS0 = 0;
	ADFM = 1;  // right jus
	ADON = 1;
	WPUB = 0b00000001;
	nRBPU =0;
	GIE = 1;
    INTE = 1;
    INTF = 0;
	__delay_ms(10);
/////////////
	TRISE0 = TRISE1 = 0; //output
	RE0=0;
	TRISC = 0x00;
	TRISD = 0x00;
	PORTC = PORTD=0;
 	char chuc, donvi;
	int adc;
	float res;
	while(1)
	{
		__delay_ms(50);
		GO_nDONE=1;
		while(GO_nDONE==1){}
		adc = ADRESH * 256 + ADRESL;                
		res = (adc/1023.0)*50.0;
		chuc = (int)res/10;
		donvi = (int)res%10;
		quetled(chuc,donvi);
		if (res > 25.0 && S1_state==1){
			RE0=0;
			__delay_ms(200);
			RE0=1;
			__delay_ms(200);
		}
		if (res < 25.0){
			RE0=0;
			S1_state=0;
		}

	}
}

void quetled (char chuc_t, char donvi_t)
{
	PORTC = maled[chuc_t];
	PORTD = maled[donvi_t];
}

void interrupt button(void){
	INTF = 0;
    if (RB0 == 1){
        while(RB0==1){
        }
		if (RB0 == 0){
        	S1_state =1 ;
		}
    }  

}