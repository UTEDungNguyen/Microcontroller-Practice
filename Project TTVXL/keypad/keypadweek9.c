#include<htc.h>
#include<stdio.h>

#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

unsigned char maled[12]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90,0xC6,0x86};
void quetled (char chuc_t, char donvi_t);
char dem = 0;
unsigned char S1_state = 0;
void main()
{
 
	ANSEL = ANSELH = 0;  // diasble analog all I/O
	TRISB = 0b01111000; //output
	TRISD = 0x00;
	PORTD=0;

	GIE = 1;
    RBIE = 1;
    RBIF = 0;
    IOCB = 0b01111000;

	while(1)
	{
		while(1){
		RB0=0;RB1=0;RB2=1;
		//__delay_ms(100);
		RB0=0;RB1=1;RB2=0;
		//__delay_ms(100);
		RB0=1;RB1=0;RB2=0;
		//__delay_ms(100);
		if (S1_state ==0){PORTD=maled[0];}
		if (S1_state != 0){break;}
		}
		if (S1_state ==0){PORTD=maled[0];}
		if (S1_state ==1){PORTD = maled[1];}
		if (S1_state ==2){PORTD = maled[4];}
		if (S1_state ==3){PORTD = maled[7];}
		if (S1_state ==4){PORTD = maled[10];}
		if (S1_state ==5){PORTD = maled[2];}
		if (S1_state ==6){PORTD = maled[5];}
		if (S1_state ==7){PORTD = maled[8];}
		if (S1_state ==8){PORTD = maled[0];}
		if (S1_state ==9){PORTD = maled[3];}
		if (S1_state ==10){PORTD = maled[6];}
		if (S1_state ==11){PORTD = maled[9];}
		if (S1_state ==12){PORTD = maled[11];}
		
	}
}
void interrupt button(void){
	RBIF = 0;
    if (RB3 == 1){
        while(RB3==1){
        }
		if (RB0 == 1){
        S1_state =1;
		}
		if (RB1 == 1){
        S1_state =5;
		}
		if (RB2 == 1){
        S1_state =9;
		}
    }  
	if (RB4 == 1){
        while(RB4==1){
        }
		if (RB0 == 1){
        S1_state =2;
		}
		if (RB1 == 1){
        S1_state =6;
		}
		if (RB2 == 1){
        S1_state =10;
		}
    }  
	if (RB5 == 1){
        while(RB5==1){
        }
        if (RB0 == 1){
        S1_state =3;
		}
		if (RB1 == 1){
        S1_state =7;
		}
		if (RB2 == 1){
        S1_state =11;
	    } 
	}
	if (RB6 == 1){
        while(RB6==1){
        }
        if (RB0 == 1){
        S1_state =4;
		}
		if (RB1 == 1){
        S1_state =8;
		}
		if (RB2 == 1){
        S1_state =12;
	 }
 }
}