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
    return(IORD_INTERFACE_SWITCH(PIO_SW_BASE));
}

/**
  * @brief  function to write to key register
  * @param  newkeyval : can be
  *                      @arg Bit 2..0 interrupt request
  *                      @arg Bit 5..3 interrupt enable
  * @retval None
  */
 static __inline__ void SetKeyReg(uint32_t newkeyval)
{
    IOWR_INTERFACE_KEY(PIO_KEY_BASE, newkeyval);
}

/**
  * @brief function to read content of key register
  * @retval keyValue : can be
  *                     @arg Bit 2..0 interrupt request
  *                     @arg Bit 5..3 interrupt enable
  */
 static __inline__ uint32_t GetKeyReg(void)
{
    return(IORD_INTERFACE_KEY(PIO_KEY_BASE));
}

#endif /*__HARDWAREACCESS_H__*/
