/**
 *************************************************************************
 * @file      lcdDOGM162.c
 * @author    Johann Mayr
 * @author    Prof. Dr.-Ing. Ferdinand Englberger
 * @version   V2.0.0
 * @date      25.03.2014
 * @copyright 2011 - 2014 UniBw M - ETTI - WE 4
 * @brief     Initialization program for LCD DOGM162. Qsys uses Altera
 *            LCD component "altera_avalon_lcd_16207".
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
 *  @details  06.11.2014 Riedel
 *            - Created defines for init-codes and moved to header
 *  @details  06.11.2014 Kossmann
 *            - moved clear, set-position functionality into
 *              auxilaryFunctions.c because stream not available here
 **************************************************************************
 */

#include <stdint.h>
#include <system.h>
#include "altera_avalon_lcd_16207_regs.h"
#include "../INC/lcdDOGM162.h"

void DOGM162lcd_init(uint32_t lcdBase) {
  static const uint8_t initCodes[] = {
    DATA8_LINES2_TABLE1,
    DATA8_LINES2_TABLE1,
    BIAS1_2LINES2,
    ICON0_BOOSTER1_CONTRAST_C4_0_C5_1,
    FOLLOWER1_RAB6,
    CONTRAST2,
    DATA8_LINES2_TABLE0,
    DISPLAY1_CURSOR1_POS0,
    DISPLAY_CLEAR,
    DDRAM_INC_SHIFT0
  };
  uint32_t i;
  uint32_t j;

  // Wait for Power on not required, due to previous initialization by HAL
  for (j = 0; j < sizeof(initCodes) / sizeof(initCodes[0]); j++) {
    IOWR_ALTERA_AVALON_LCD_16207_COMMAND(lcdBase, initCodes[j]);
    for (i = 0; i < 50000; i++){
      ;
    }
  }
}

void DOGM162lcd_setCursorMode(uint32_t lcdBase, int32_t cursorMode) {
  int32_t i;
  IOWR_ALTERA_AVALON_LCD_16207_COMMAND(lcdBase, (DISPLAY1_CURSOR1_POS0 | (cursorMode & 0x03)));
  for (i = 0; i < 10000; ++i){
    ;
  }
}
