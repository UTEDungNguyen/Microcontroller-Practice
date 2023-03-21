#include<htc.h>
#include<stdio.h>

#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
	
unsigned char maled[10]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
int i = 0;
int h = 0;

void display_7_segment(int n){
	 PORTC = maled[n/10];
	 PORTD = maled[n%10];
}

void main()
{
	TRISC = 0;
	TRISD = 0;
	ANSEL = ANSELH = 0; // disable analog all I/O
	TRISB = 0xFF;
    display_7_segment(0);
	i,h = 0;
    while(1){
        if (RB0 == 1){
	        while(RB0==1){
	        }
	        if (RB0 == 0){
				i=i+1;
				if ((i>=0)&&(i<100)){
					h=i;
					display_7_segment(h);}
	        	}
				if (i>99){
					i=h=99;
					display_7_segment(h);}
	        	}
		if (RB1 == 1){
	        while(RB1==1){
	        }
	        if (RB1 == 0){
				i=i-1;
				if ((i>=0)&&(i<100)){
					h=i;
					display_7_segment(h);}
	        	}
				if (i<0){
					i=h=0;
					display_7_segment(h);}
	        	}
	        }  
    return; 
}


