/**
 *************************************************************************
 * @file      lcdDOGM162.c
 * @author    Johann Mayr
 * @author    Prof. Dr.-Ing. Ferdinand Englberger
 * @version   V2.0.0
 * @date      25.03.2014
 * @copyright 2011 - 2014 UniBw M - ETTI - WE 4
 * @brief Initialization program for LCD DOGM162. Qsys uses Altera
 *        LCD component "altera_avalon_lcd_16207".
 * @remark This initialization function extends the standard
 *        initialization by DOGM162 specific initialization. This
 *        function has to be called before the display can be used.
 *************************************************************************
 * @par History:
 *  @details V2.0.0 Ferdinand Englberger
 *           - comments in english
 *           - Remove all functions, but initialization function
 *           - uses component register interface, instead of own access
 *             function.
 *           - uses a base parameter to identify lcd.
 *  @details V1.1 25.06.2012 Johann Mayr
 *           - Initial version
 *  @details V1.0 20.12.2011 Johann Mayr
 *           - Initial version
 **************************************************************************
 */

#include <stdint.h>
#include <system.h>
#include "altera_avalon_lcd_16207_regs.h"
#include "../INC/lcdDOGM162.h"

/**
 * @details Initialization function of LCD DOGM162B-A
 * @details This initialization function extends the standard
 *          initialization by DOGM162 specific initialization. This
 *          function has to be called before the display can be used.
 * @param   lcdBase : Base address of DOGM162 LCD (from system.h)
 * @retval  None
 */
void DOGM162lcd_init(uint32_t lcdBase) {
  static const uint8_t initCodes[] = { 0x39, // Function Set: 8 bit data, 2 lines,
      // instruction table 1
      0x39,// Function Set: 8 bit data, 2 lines,
      // instruction table 1
      0x14,// Bias Set: Bias = 1/5, 2 lines
      0x55, // Power Control: Icon Display off,
      // Booster on, Internal Contrast C5 off, C4 on
      0x6E,// Follower Control: Follower on, Rab = 6
      0x72, // Contrast Set: Contrast = 2
      0x38, // Function Set: 8 bit data, 2 lines,
      // instruction table 0
      0x0c,// Display Set: Display on, Cursor on,
      // Cursor Pos off
      0x01,// Display Clear
      0x06 }; // Entry Mode Set: Increment DDRAM-Addr,
  // ShiftEntireDisplay off
  uint32_t i;
  uint32_t j;

  // Wait for Power on not required, due to previous initialization by HAL
  for (j = 0; j < sizeof(initCodes) / sizeof(initCodes[0]); j++) {
    IOWR_ALTERA_AVALON_LCD_16207_COMMAND(lcdBase, initCodes[j]);
    for (i = 0; i < 50000; i++)
      ;
  }
}

