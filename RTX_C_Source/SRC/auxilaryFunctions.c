/**
 ***************************************************************************
 * @file        auxilaryFunctions.c
 * @author      Michael Riedel
 * @author      Marc Kossmann
 * @version     v1.0
 * @date        11.11.2014
 * @brief       Collection of auxilary functions, mainly output functions
 *****************************************************************************
 * @par History:
 * @details     28.10. Riedel & Kossmann
 *              - added functions for using printf like lcd and term output
 * @details     31.10. Riedel & Kossmann
 *              - added timeout for clearing display but not sure if needed
 *              - clear display function added
 * @details     06.11. Riedel
 *              - implemented some functions for better display-usage
 *****************************************************************************
 */

#include "../INC/auxilaryFunctions.h"

FILE *term; //!< stream to write on terminal device
FILE *lcd;  //!< stream to write lcd device

void init_term(void) {
  term = fopen(JTAG_UART_NAME, "w");
}

void init_lcd(void) {
  DOGM162lcd_init(LCD_BASE);
  lcd = fopen(LCD_NAME, "w");
}

void clear_lcd(void) {
  fprintf(lcd, "\x1B[2J");
  fflush(lcd);
}

void setPos_lcd(int32_t row, int32_t col) {
  fprintf(lcd, "\x1B[%d;%dH", (int) row, (int) col);
  fflush(lcd);
}

void setCursorMode_lcd(int32_t cursorMode) {
  DOGM162lcd_setCursorMode(LCD_BASE, cursorMode);
}

void printf_term(const char *format, ...) {
  va_list args;
  va_start(args, format);
  vfprintf(term, format, args);
  va_end(args);
}
void printf_lcd(const char *format, ...) {
  va_list args;
  va_start(args, format);
  vfprintf(lcd, format, args);
  va_end(args);
}

void fflush_term() {
  fflush(term);
}
void fflush_lcd() {
  fflush(lcd);
}
