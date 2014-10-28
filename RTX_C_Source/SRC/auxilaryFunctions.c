/**
  ***************************************************************************
  * @file      	auxilaryFunctions.c
  * @author  	Michael Riedel
  * @author  	Marc Kossmann
  * @version   	v0.1
  * @date      	27.10.2014
  * @brief   	Collection of auxilary functions
  ***************************************************************************
  * @par History:
  * @details    v0.1 Riedel & Kossmann
  *			    - first draft for milestone 1b
  ****************************************************************************
  */

#include "../INC/auxilaryFunctions.h"

FILE *term;
FILE *lcd;

void init_term(void){
	term = fopen(JTAG_UART_NAME, "w");
}

void init_lcd(void){
	DOGM162lcd_init(LCD_BASE);
	lcd = fopen(LCD_NAME, "w");
}


void printf_term(const char *format, ...){
	va_list args;
	va_start (args, format);
	vfprintf (term, format, args);
	va_end (args);
}
void printf_lcd(const char *format, ...){
	va_list args;
	va_start (args, format);
	vfprintf (lcd, format, args);
	va_end (args);
}

void fflush_term(){
	fflush(term);
}
void fflush_lcd(){
	fflush(lcd);
}
