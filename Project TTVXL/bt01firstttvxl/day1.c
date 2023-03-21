#include<htc.h>
#include<stdio.h>

#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

void Led_200ms(){
    unsigned char i,h = 0;
    h = 0b00000100;
    for (char m=0;m<4;m++){
        PORTC = h;
        h=h>>1;
        __delay_ms(200);
        PORTC=h;
		if (RB6 == 1 || RB7 ==1){
			break;
		}
    }
}

void Led_1s(){
    unsigned char i,h = 0;
    h = 0b00000100;
    for (char m=0;m<4;m++){
        PORTC = h;
        h=h>>1;
        __delay_ms(1000);
        PORTC=h;
		if (RB5 == 1 || RB7 ==1){
			break;
		}
    }
}

void main()
{
	TRISC = 0;
	ANSEL = ANSELH = 0; // disable analog all I/O
	TRISB = 0xFF;
    PORTC = 0;
    
    GIE = 1;
    RBIE = 1;
    RBIF = 0;
    IOCB = 0b11100000;

    while(1){
        if (RB5 == 1){
	        while(RB5==1){
	        }
	        while (RB5 == 0){
	            Led_1s();
				if (RB6 == 1 || RB7 ==1){
					break;
				}
	        }
    	}  
    }
    return; 
}

void interrupt button(void){
	RBIF = 0;
    if (RB6 == 1){
        while(RB6==1){
        }
        while(RB6 == 0){
            Led_200ms();
			if (RB5 == 1 || RB7 == 1){
				break;
			}
        }
    }  
	if (RB7 == 1){
        while(RB7==1){
        }
        while (RB7 == 0){
            PORTC=0;
			if (RB5 == 1 || RB6 == 1){
				break;
			}
        }
	}  
}

