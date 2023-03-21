#include<htc.h>
#include<stdio.h>

#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

unsigned char S1_state=0;

void Led_move_left_to_right_single(){
    unsigned char i,h = 0;
	i = 0b00000001;
    h = 0b10000000;
    for (char m=0;m<8;m++){
		if (S1_state != 2){break;}
		PORTD=0;
        PORTC = h;
        h=h>>1;
        __delay_ms(200);
        PORTC=h;
	}
	for (char m=0;m<8;m++){
		if (S1_state != 2){break;}
		PORTC = 0;
		PORTD = i;
        i=i<<1;
        __delay_ms(200);
        PORTD=i;
    }
	if (S1_state != 2){PORTC=PORTD=0;}
}

void Led_move_right_to_left_single(){
    unsigned char i,h = 0;
	i = 0b10000000;
    h = 0b00000001;
    for (char m=0;m<8;m++){
		if (S1_state != 1){break;}
		PORTC = 0;
		PORTD = i;
        i=i>>1;
        __delay_ms(200);
        PORTD=i;
	}
	for (char m=0;m<8;m++){
		if (S1_state != 1){break;}
		PORTD=0;
        PORTC = h;
        h=h<<1;
        __delay_ms(200);
        PORTC=h;
    }
	if (S1_state != 1){PORTC=PORTD=0;}
}

void Led_move_right_to_left_one_by_one(){
	unsigned char i,h = 0;
	i = 0b10000000;
    h = 0b00000001;
    for (char m=0;m<8;m++){
		if (S1_state != 5){break;}
		PORTD = i;
        i=i>>1|i;
        __delay_ms(200);
	}
	for (char m=0;m<8;m++){
		if (S1_state != 5){break;}
        PORTC = h;
        h=h<<1|h;
        __delay_ms(200);
    }
	PORTC=0;
	PORTD=0;
	__delay_ms(200);
	if (S1_state != 5){PORTC=PORTD=0;}
}

void Led_move_left_to_right_one_by_one(){
	unsigned char i,h = 0;
	i = 0b00000001;
    h = 0b10000000;
    for (char m=0;m<8;m++){
		if (S1_state != 4){break;}
		PORTC = h;
        h=h>>1|h;
        __delay_ms(200);
	}
	for (char m=0;m<8;m++){
		if (S1_state != 4){break;}
		PORTD = i;
        i=i<<1|i;
        __delay_ms(200);
    }
	PORTC=0;
	PORTD=0;
	__delay_ms(200);
	if (S1_state != 4){PORTC=PORTD=0;}
}

void Led_move_in_to_out_one_by_one(){
	unsigned char i,h = 0;
	i = 0b00000001;
    h = 0b00000001;
    for (char m=0;m<8;m++){
		PORTD = i;
		PORTC = h;
        h=h<<1|h;
		i=i<<1|i;
        __delay_ms(200);
		if (S1_state!=6) {break;}
	}
	PORTC=0;
	PORTD=0;
	__delay_ms(200);
	if (S1_state!=6) {PORTC=PORTD=0;}
}

void Led_move_out_to_in_one_by_one(){
	unsigned char i,h = 0;
	i = 0b10000000;
   	h = 0b10000000;
    for (char m=0;m<8;m++){
		if (S1_state!=7) {break;}
		PORTD = i;
		PORTC = h;
        h=h>>1|h;
		i=i>>1|i;
        __delay_ms(200);
	}
	PORTC=0;
	PORTD=0;
	__delay_ms(200);
	if (S1_state!=7) {PORTC=PORTD=0;}
}

void Led_move_interleaved(){
	unsigned char x,y,z,h=0 ;
	z=0b01010101;
	h=0b10101010;
	while(S1_state == 3){
		if (S1_state!=3) {break;}
		x=0|z;
		y=0|h;
		PORTC=x;
		PORTD=y;
		__delay_ms(200);		
		if (PORTC==0b10101010 && PORTD==0b01010101){
			z=0b01010101;
			h=0b10101010;
		}	
		if (PORTC==0b01010101 && PORTD==0b10101010){
			z=0b10101010;
			h=0b01010101;
		}		
	}
	if (S1_state != 3){PORTC=PORTD=0;}
}

void Led_blink(){
	unsigned char x,y,z=0 ;
	while(S1_state == 8){
		if (S1_state!=8) {break;}
		x=0|z;
		y=0|z;
		PORTC=x;
		PORTD=y;
		__delay_ms(200);
		if (PORTC==0 && PORTD==0){
			z=0xFF;
		}	
		if (PORTC==0xFF && PORTD==0xFF){
			z=0;
		}		
	}
	if (S1_state != 8){PORTC=PORTD=0;}
}


void main()
{
	TRISC = 0;
	TRISD = 0;
	ANSEL = ANSELH = 0; // disable analog all I/O
	TRISB = 0xFF;
    PORTC = 0;
	PORTD = 0;

	
    GIE = 1;
    RBIE = 1;
    RBIF = 0;
    IOCB = 0xFF;

    while(1){
		if (S1_state == 1){Led_move_right_to_left_single();}
		if (S1_state == 2){Led_move_left_to_right_single();}
		if (S1_state == 3){Led_move_interleaved();}
		if (S1_state == 4){Led_move_left_to_right_one_by_one();}
		if (S1_state == 5){Led_move_right_to_left_one_by_one();}
		if (S1_state == 6){Led_move_in_to_out_one_by_one();}
		if (S1_state == 7){Led_move_out_to_in_one_by_one();}
		if (S1_state == 8){Led_blink();}
	}
    return; 
}

void interrupt button(void){
	RBIF = 0;
	if (RB0 == 1){
        while(RB0==1){
        }
        if (RB0 == 0){
            S1_state = 1;
        }
   	}  
	if (RB1 == 1){
        while(RB1==1){
        }
        if (RB1 == 0){
            S1_state = 2;
        }
   	}  
	if (RB2 == 1){
       while(RB2==1){
       }
       if (RB2 == 0){
           S1_state = 3;
       }
   	}  
	if (RB3 == 1){
        while(RB3==1){
        }
        if (RB3 == 0){
            S1_state = 4;
        }
   	}  
	if (RB4 == 1){
        while(RB4==1){
        }
        if (RB4 == 0){
            S1_state = 5;
        }
   	}  
	if (RB5 == 1){
        while(RB5==1){
        }
        if (RB5 == 0){
            S1_state = 6;
        }
   	}  
	if (RB6 == 1){
       while(RB6==1){
       }
       if (RB6 == 0){
           S1_state = 7;
       }
  	}  
	if (RB7 == 1){
        while(RB7==1){
        }
        if (RB7 == 0){
            S1_state = 8;
        }
   	}  
}
