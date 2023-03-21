#include<htc.h>
#include<stdio.h>

#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

void Led_100ms(){
    unsigned char i,h = 0;
    h = 0b00000100;
    for (char m=0;m<4;m++){
        PORTA = h;
        h=h>>1;
        __delay_ms(100);
        PORTA=h;
    }
}

void Led_1s(){
    unsigned char i,h = 0;
    h = 0b00000100;
    for (char m=0;m<4;m++){
        PORTA = h;
        h=h>>1;
        __delay_ms(1000);
        PORTA=h;
    }
}

unsigned char count = 0;

void main()
{
	TRISA = 0;
	ANSEL = ANSELH = 0; // disable analog all I/O
	TRISB0 = 1;
    PORTA = 0;
    
    GIE = 1;
    INTE = 1;
    INTF = 0;
	
    while(1){
        if((count%3)==0&&(count!=0)){Led_100ms();} 
		if((count%3)==1){Led_1s();} 
		if((count%3)==2){PORTA=0;} 
    }
    return; 
}

void interrupt button(void){
	INTF = 0;
    if (RB0 == 1){
        while(RB0==1){
        }
        count = count + 1;
    }  

}

