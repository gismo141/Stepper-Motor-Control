/**
 ***************************************************************************
 * @file        auxilaryFunctions.c
 * @author      Michael Riedel
 * @author      Marc Kossmann
 * @version     v2.0.0
 * @date        18.11.2014
 * @brief       Collection of auxilary functions, mainly output functions
 *****************************************************************************
 * @par History:
 * @details     v0.1.0 28.10.2014 Riedel & Kossmann
 *              - added functions for using printf like lcd and term output
 * @details     v0.1.1 31.10.2014 Riedel & Kossmann
 *              - added timeout for clearing display but not sure if needed
 *              - clear display function added
 * @details     v0.1.2 06.11.2014 Riedel
 *              - implemented some functions for better display-usage
 * @details     v1.0.0 06.11.2014 Riedel
 *              - implemented some functions for better display-usage
 * @details     v1.1.0 14.11.2014 Kossmann
 *              - implemented init rx,tx functions for access to global ipc var
 *              for transmitting data between UserInput- and UserOuputTask
 * @details     v2.0.0 18.11.2014 Riedel & Kossmann
 *              - fixed all global var function parameters
 *              - verified functionality -> release MS2
 *****************************************************************************
 */

#include "../INC/auxilaryFunctions.h"

FILE *term; //!< stream to write on terminal device
FILE *lcd;  //!< stream to write lcd device

outputTaskData_t outputTaskData;  //!< Variable for transmitting information from InputTask to OutputTask
OS_EVENT *outputTaskDataMutex;    //!< Mutex for secured variable acces

uint8_t init_outputTaskDataTxRx(void){
  uint8_t err;
  systemState_t systemState = {
      .operationalStatus = FUNCTIONAL,
      .activeUseCase = STOP
  };

  outputTaskDataMutex = OSMutexCreate(MUTEX_PRIORITY, &err);
  if(OS_NO_ERR == err){
    outputTaskData.ctrlReg = 0;
    outputTaskData.stepsReg = 0;
    outputTaskData.speedReg = 0;
    outputTaskData.systemState = systemState;
  }
  return err;
}

uint8_t outputTaskDataTx(outputTaskData_t data){
  uint8_t err;

  if(NULL == outputTaskDataMutex){
    err = OS_ERR_INVALID_OPT;
  }else
    OSMutexPend(outputTaskDataMutex, 0, &err);
    if(OS_NO_ERR == err){
      outputTaskData.ctrlReg = data.ctrlReg;
      outputTaskData.speedReg = data.speedReg;
      outputTaskData.stepsReg = data.stepsReg;
      outputTaskData.systemState = data.systemState;
      err = OSMutexPost(outputTaskDataMutex);
    }
    return err;
}

uint8_t outputTaskDataRx(outputTaskData_t *data){
  uint8_t err;

  if(NULL == outputTaskDataMutex || NULL == data){
    err = OS_ERR_INVALID_OPT;
  }else
    OSMutexPend(outputTaskDataMutex, 0, &err);
    if(OS_NO_ERR == err){
      data->ctrlReg = outputTaskData.ctrlReg;
      data->stepsReg = outputTaskData.stepsReg;
      data->speedReg = outputTaskData.speedReg;
      data->systemState = outputTaskData.systemState;
      err = OSMutexPost(outputTaskDataMutex);
    }
    return err;
}

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
