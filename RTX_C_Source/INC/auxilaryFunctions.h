/**
 ******************************************************************************
 * @file        auxilaryFunctions.h
 * @author      Michael Riedel
 * @author      Marc Kossmann
 * @version     v2.0.0
 * @date        18.11.2014
 * @brief       Header file for auxilaryFunctions.c
 * @details     Contains defines, includes, typedefs and declarations needed for
 *              auxilary functions.
 ******************************************************************************
 * @par History:
 * @details     v0.1.0 22.10.2014 Kossmann
 *              - first draft for milestone 1b
 * @details     v0.1.1 27.10.2014 Riedel & Kossmann
 *              - using lcdDOGM162.h
 * @details     v0.1.2 27.10.2014 Riedel & Kossmann
 *              - clear display function added
 * @details     v0.1.3 03.11.2014 Kossmann
 *              - finished documentation
 * @details     v1.0.1 14.11.2014 Kossmann
 *              - added init rx,tx functions for access to global ipc var
 *              for transmitting data between UserInput- and UserOuputTask
 * @details     v2.0.0 18.11.2014 Riedel & Kossmann
 *              - verified functionality -> release MS2
 ******************************************************************************
 */

#ifndef __AUXILARY_FUNCTIONS_H__
#define __AUXILARY_FUNCTIONS_H__

#include <stdio.h>
#include <stdarg.h>
#include <system.h>
#include "includes.h"
#include "lcdDOGM162.h"
#include "altera_avalon_lcd_16207_regs.h"
#include "dataTypes.h"

#define VERSION           "2.0.0"       //!< global version definition
#define DATE              "18.11.2014"  //!< global date definition

#define MUTEX_PRIORITY         4  /*!< Priority for Mutexes */

/**
 * @brief  Initializes the interprocess communication between OutputTask and
 * InputTask
 * @details Transmission is done via global variable and secured by mutex.
 * @retval  err     System wide error code
 */
uint8_t init_outputTaskDataTxRx(void);

/**
 * @brief  Sends data to ipc channel
 * @details Stores data in global variable. `outputTaskDataMutex` must be
 *          initialized before.
 * @param   data    Data to store in global var.
 * @retval  err     System wide error code. "OS_ERR_INVALID_OPT" means param
 *                  was NULL.
 */
uint8_t outputTaskDataTx(outputTaskData_t data);

/**
 * @brief  Received data from ipc channel
 * @details Reads data of global variable. `outputTaskDataMutex` must be
 *          initialized before.
 * @param   [out] data   Pointer to the content of the global var.
 * @retval  err     System wide error code. "OS_ERR_INVALID_OPT" means param
 *                  was NULL.
 */
uint8_t outputTaskDataRx(outputTaskData_t *data);

/**
 * @brief  Initializes terminal output
 * @details Opens stream to JTAG-UART-device in write mode.
 * @retval none
 */
void init_term(void);

/**
 * @brief  Initializes lcd output
 * @details Calling specific lcd init functions which sends initializisation
 *           sequence to lcd. Also opens stream to lcd-device in write mode.
 * @retval none
 */
void init_lcd(void);

/**
 * @brief  Clears display
 * @details Sends clear sequence to display.
 * @retval none
 */
void clear_lcd(void);

/**
 * @brief Sets the cursor position on display
 * @details The display supports 2 rows and 16 columns where the cursor can be set
 *
 * @param row The number of row to position.
 * @param col The number of col to position.
 */
void setPos_lcd(int32_t row, int32_t col);

/**
 * @brief Sets the cursor-mode
 * @details @see lcdDOGM162.h for more info
 *
 * @param cursorMode new Cursor mode, can be
 *                    @arg LCD_CURSOR_OFF
 *                    @arg LCD_CURSOR_ON
 *                    @arg LCD_BLINK
 */
void setCursorMode_lcd(int32_t cursorMode);

/**
 * @brief  Writes formated string to terminal.
 * @details Usage like common printf.
 * @retval none
 */
void printf_term(const char *, ...);

/**
 * @brief  Writes formated string to lcd
 * @details Usage like common printf.
 * @retval none
 */
void printf_lcd(const char *, ...);

/**
 * @brief  Writes buffed data to terminal
 * @details Writes any buffed data to terminal stream.
 * @retval none
 */
void fflush_term();

/**
 * @brief  Writes buffed data to lcd
 * @details Writes any buffed data to lcd stream.
 * @retval none
 */
void fflush_lcd();

#endif // __AUXILARY_FUNCTIONS_H__
