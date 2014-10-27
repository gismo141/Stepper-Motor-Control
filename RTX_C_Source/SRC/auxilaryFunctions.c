/**
  ***************************************************************************
  * @file      	auxilaryFunctions.c
  * @author  	Michael Riedel
  * @author  	Marc Kossmann
  * @version   	v0.1
  * @date      	27.10.2014
  * @brief   	Collection of auxilary functions
  * @todo		Open streams before printing
  ***************************************************************************
  * @par History:
  * @details    v0.1 Riedel & Kossmann
  *			    - first draft for milestone 1b
  ****************************************************************************
  */

#include "../INC/auxilaryFunctions.h"

void printf_term(const char *format, ...){
	va_list args;
	va_start (args, format);
	vfprintf ("/dev/jtag_uart", format, args);
	va_end (args);
}
void printf_lcd(const char *format, ...){
	va_list args;
	va_start (args, format);
	vfprintf ("/dev/lcd", format, args);
	va_end (args);
}

void fflush_term(){
	fflush("/dev/jtag_uart");
}
void fflush_lcd(){
	fflush("/dev/jtag_uart");
}
