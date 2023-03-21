#include<htc.h>
#include<stdio.h>
#include <math.h>
#include <stdlib.h>

#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);

int pwm_ccp1, pwm_ccp2;
void pwm_10bit1(int data_pwm);
void pwm_10bit2(int data_pwm);
void main()
{
	ANSEL = ANSELH = 0;  //disable analog all I/O
	TRISC2 = 0; //output
	TRISC1 = 0; //output

	//Khoi tao timer2 20kHz
	T2CKPS1 = 0; T2CKPS0 = 0;
	TMR2 = 0; PR2 = 249;
	TMR2ON = 1;	

	//Che do PWM
	CCP1CON = 0b00001100;
	pwm_ccp1 = 500;    //trong truong hop 8bit thi 50% cua PR2 la 125 con neu su dung 10 bit thi x4 lên là 500
	pwm_10bit1(pwm_ccp1);

	CCP2CON = 0b00001100;
	pwm_ccp2 = 800;   //trong truong hop 8bit thi 80% cua PR2 la 200 con neu su dung 10 bit thi x4 lên là 800
	pwm_10bit2(pwm_ccp2);
	
	while(1)
		{
		}
}	

void pwm_10bit1(int data_pwm)	
{
	CCPR1L = data_pwm/4;  //Dich bit sang phai 2 donvi
	DC1B1 = 0; DC1B0 = 0; //CCP(1/2)CON
	if((data_pwm &2) == 1) {DC1B1 = 1;} 	
	if((data_pwm &1) == 1) {DC1B0 = 1;} 
}

void pwm_10bit2(int data_pwm)
{
	CCPR2L = data_pwm/4;  //Dich bit sang phai 2 donvi
	DC2B1 = 0; DC2B0 = 0; //CCP(1/2)CON
	if((data_pwm &2) == 1) {DC1B1 = 1;} 	
	if((data_pwm &1) == 1) {DC1B0 = 1;} 
}