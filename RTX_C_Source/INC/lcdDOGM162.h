/**
 *************************************************************************
 * @file      lcdDOGM162.h
 * @author    Johann Mayr
 * @author    Prof. Dr.-Ing. Ferdinand Englberger
 * @version   V2.0.0
 * @date      25.03.2014
 * @copyright 2011 - 2014 UniBw M - ETTI - WE 4
 * @brief Header for Initialization program for LCD DOGM162.
 *        Qsys uses Altera LCD component "altera_avalon_lcd_16207".
 * @remark This initialization function extends the standard
 *         initialization by DOGM162 specific initialization. This
 *         function has to be called before the display can be used.
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

#ifndef LCD_DOGM_162_A_H
#define LCD_DOGM_162_A_H

#include <stdint.h>

void DOGM162lcd_init(uint32_t lcdBase);

#endif /*LCD_DOGM_162_A_H*/
