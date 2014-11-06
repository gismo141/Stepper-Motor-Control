/**
 *************************************************************************
 * @file      lcdDOGM162.h
 * @author    Johann Mayr
 * @author    Prof. Dr.-Ing. Ferdinand Englberger
 * @version   V2.0.0
 * @date      25.03.2014
 * @copyright 2011 - 2014 UniBw M - ETTI - WE 4
 * @brief     Header for Initialization program for LCD DOGM162.
 *            Qsys uses Altera LCD component "altera_avalon_lcd_16207".
 * @remark    This initialization function extends the standard
 *            initialization by DOGM162 specific initialization. This
 *            function has to be called before the display can be used.
 *************************************************************************
 * @par History:
 *  @details  V2.0.0 Ferdinand Englberger
 *            - comments in english
 *            - Remove all functions, but initialization function
 *            - uses component register interface, instead of own access
 *              function.
 *            - uses a base parameter to identify lcd.
 *  @details  V1.1 25.06.2012 Johann Mayr
 *            - Initial version
 *  @details  V1.0 20.12.2011 Johann Mayr
 *            - Initial version
 *  @details  05.11.2014 Michael Riedel
 *            - added functions for better lcd-usage from script (p. 1-122)
 **************************************************************************
 */

#ifndef LCD_DOGM_162_A_H
#define LCD_DOGM_162_A_H

#include <stdint.h>

#define LCD_CURSOR_OFF                    (0x00)  //!< Code for Cursor off
#define LCD_CURSOR_ON                     (0x02)  //!< Code for Cursor on
#define LCD_BLINK                         (0x01)  //!< Code for Cursor blink

#define DATA8_LINES2_TABLE0               (0x38)  //!< Function Set: 8 bit data, 2 lines, instruction table 0
#define DATA8_LINES2_TABLE1               (0x39)  //!< Function Set: 8 bit data, 2 lines, instruction table 1
#define BIAS1_2LINES2                     (0x14)  //!< Bias Set: Bias = 1/5, 2 lines
#define ICON0_BOOSTER1_CONTRAST_C4_0_C5_1 (0x55)  //!< Power Control: Icon Display off, Booster on, Internal Contrast C5 off, C4 on
#define FOLLOWER1_RAB6                    (0x6E)  //!< Follower Control: Follower on, Rab = 6
#define CONTRAST2                         (0x72)  //!< Contrast Set: Contrast = 2
#define DISPLAY1_CURSOR1_POS0             (0x0C)  //!< Display Set: Display on, Cursor on, Cursor Pos off
#define DISPLAY_CLEAR                     (0x01)  //!< Display Clear
#define DDRAM_INC_SHIFT0                  (0x06)  //!< Entry Mode Set: Increment DDRAM-Addr, ShiftEntireDisplay off

/**
 * @brief 	Initialization function of LCD DOGM162B-A
 * @details This initialization function extends the standard
 *          initialization by DOGM162 specific initialization. This
 *          function has to be called before the display can be used.
 * @param   lcdBase : Base address of DOGM162 LCD (from system.h)
 * @retval  None
 */
void DOGM162lcd_init(uint32_t lcdBase);

/**
 * @brief   function erases the screen
 * @param   [in, out] lcdBase : LCD handle
 * @retval  none
 */
void DOGM162lcd_clear(uint32_t lcdBase);

/**
 * @brief   Function to set a new write position
 * @param   [in, out] lcdBase : LCD handle
 * @param           row : line (1 or 2)
 * @param           col : column (1 to 16)
 * @retval  none
 */
void DOGM162lcd_setPos(uint32_t lcdBase, int32_t row, int32_t col);

/**
 * @brief   function changes cursor mode
 * @details This function requires an extra wait period
 * @param   lcdBase : Base address of LCD (from system.h)
 * @param   cursorMode: new Cursor mode, can be
 *                    @arg LCD_CURSOR_OFF
 *                    @arg LCD_CURSOR_ON
 *                    @arg LCD_BLINK
 * @retval  none
 */
void DOGM162lcd_setCursorMode(uint32_t lcdBase, int32_t cursorMode);

#endif /*LCD_DOGM_162_A_H*/
