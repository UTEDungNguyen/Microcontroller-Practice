#include<htc.h>
#include<stdio.h>

#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

unsigned char maled[10]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
void quet_led(char chuc_t, char donvi_t);

char i;
int adc;
float res, dem,v;
int count,count1,count2;
void main()
{	
	ANSEL = ANSELH = 0;  // disable analog all I/O
	//lcd_init();   // khoi tao lcd	
	TRISA4 = 1;
	TRISD = 0x00;
	TRISE0 = 0; //output

	//T0CS = 1;   //timer =0; counter =1
	//PSA = 1;    //1 : khong dung bo chia
	//PS2= 0; PS1 = 0; PS0= 1;  //ps=8
	//TMR1 = 7;   // =7 nghia la tran qua 255 se ve 7 
	//T0SE=1;	  //falling edge
	//T0IE = 1;
	//T0IF = 0;
	//GIE = 1;

	TMR1GE=0; 
	TMR1CS=0;
	T1SYNC=1;
	T1CKPS1=0;T1CKPS0=0; //presscale 1:4
	//T1GINV=1;
	TMR1ON=1;	
	TMR1H=60;   //80ms
	TMR1L=176;

	TMR1IE=1;
	TMR1IF=0;
	PEIE=1;
	GIE=1;

	while(1)
	{		
	}
}

void putch(char c)
{
	lcd_putc(c);
}
void interrupt ngat()
{
	TMR1H=60;   //80ms
	TMR1L=176;
	if(TMR1IF)
	{
		dem++;
		if(dem == 8){dem= 0; RE0 = ~RE0;}
		//if (dem == 50) {RE0=0;}  //10ms
		//if (dem == 250) {RE0=1;dem=0;}  //kc giua 2 xung la 50ms reset 
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
	