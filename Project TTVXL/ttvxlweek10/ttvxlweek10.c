#include<htc.h>
#include<stdio.h>

#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

unsigned char maled[10]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
void quetled (char chuc_t, char donvi_t);
char dem;

void main()
{
	TRISE0 = TRISE1 = 0; //output
	TRISD = 0;
	TRISB0 = 1;
	TRISB1 = 1;
	ANSEL = ANSELH = 0; // disable analog all I/O
    PORTD = 0;

    
    GIE = 1;
    RBIE = 1;
    RBIF = 0;
	IOCB=0b00000011;
	WPUB = 0b00000011;
	nRBPU =0;
	
	//INTEDG = 1;   // con chan
	char chuc, donvi;

    while(1){
		chuc = dem/10;
		donvi = dem - chuc*10;
		quetled(chuc,donvi);
    }
}

void quetled (char chuc_t, char donvi_t)
{
RE0 = 1; RE1 = 0;
PORTD = maled[chuc_t];
__delay_ms(5);
RE0 = 0; RE1 = 1;
PORTD = maled[donvi_t];
__delay_ms(5);
}

void interrupt button(void){
	if (RB0 == 0){
    while(RB0==0){
        }
        if (RB0 == 1){
            dem++;
        }
   	} 
	if (RB1 == 0){
        while(RB1==0){
        }
        if (RB1 == 1){
            dem--;
        }
   	} 
 	RBIF = 0;
}

