/**
  *****************************************************************************
  * @file       hardwareAccess.h
  * @author     Michael Riedel
  * @author     Marc Kossmann
  * @version    v0.1
  * @date       21.10.2014
  * @brief      functions for HW-access
  *****************************************************************************
  * @par History:
  * @details    v0.1 Riedel & Kossmann
  *             - first draft for milestone 1b
  *****************************************************************************
  */

#ifndef HARDWAREACCESS_H_
#define HARDWAREACCESS_H_

#include <stdint.h>
#include "interfaceRegs.h"
#include <system.h>

/**
  * @brief  function to read position of sliding switches
  * @retval SWcontent: Bit 7..0 contain read values
  *                       @arg 0 = Switch OFF
  *                       @arg 1 = Switch ON
  */
static __inline__ uint32_t getSW(void)
{
    return(IORD_INTERFACE_SWITCH(INTERFACE_COMP_0_BASE));
}

/**
  * @brief  function to control red leds
  * @param  redled : Bit 7..0 contain control value for red leds
  *                   @arg 0 = LED OFF
  *                   @arg 1 = LED ON
  * @retval None
  */
static __inline__ void SetRedLed(uint32_t redled)
{
    IOWR_INTERFACE_REDLED(INTERFACE_COMP_0_BASE, redled);
}

/**
  * @brief function to read status of red leds
  * @retval redledContent : Bit 7..0 contain led status
  *                           @arg 0 = LED OFF
  *                           @arg 1 = LED ON
  */
static __inline__ uint32_t GetRedLed(void)
{
    return(IORD_INTERFACE_REDLED(INTERFACE_COMP_0_BASE));
}

/**
  * @brief  function to control green leds
  * @param  redled : Bit 7..0 contain control value for green leds
  *                   @arg 0 = LED OFF
  *                   @arg 1 = LED ON
  * @retval None

 static __inline__ void SetGreenLed(uint32_t greenled)
{
    IOWR_INTERFACE_GREENLED(INTERFACE_COMP_0_BASE, greenled);
}

*
  * @brief function to read status of green leds
  * @retval redledContent : Bit 7..0 contain led status
  *                           @arg 0 = LED OFF
  *                           @arg 1 = LED ON

 static __inline__ uint32_t GetGreenLed(void)
{
    return(IORD_INTERFACE_GREENLED(INTERFACE_COMP_0_BASE));
}*/

/**
  * @brief  function to write to key register
  * @param  newkeyval : can be
  *                      @arg Bit 2..0 interrupt request
  *                      @arg Bit 5..3 interrupt enable
  * @retval None
  */
 static __inline__ void SetKeyReg(uint32_t newkeyval)
{
    IOWR_INTERFACE_KEY(INTERFACE_COMP_0_BASE, newkeyval);
}

/**
  * @brief function to read content of key register
  * @retval keyValue : can be
  *                     @arg Bit 2..0 interrupt request
  *                     @arg Bit 5..3 interrupt enable
  */
 static __inline__ uint32_t GetKeyReg(void)
{
    return(IORD_INTERFACE_KEY(INTERFACE_COMP_0_BASE));
}

#endif /*__HARDWAREACCESS_H__*/
