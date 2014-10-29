/**
  *****************************************************************************
  * @file       hardwareAccess.h
  * @author     Michael Riedel
  * @author     Marc Kossmann
  * @version    v0.1
  * @date       29.10.2014
  * @brief      Functions for accessing hardware connected through pio´s and
  *             registers
  *****************************************************************************
  * @par History:
  * @details    21.10. Riedel & Kossmann
  *             - first draft for milestone 1b
  * @details    29.10. Kossmann
  *             -renewed complete pio access concept
  *****************************************************************************
  */

#ifndef __HARDWAREACCESS_H__
#define __HARDWAREACCESS_H__

#include <stdint.h>
#include <system.h>
#include <altera_avalon_pio_regs.h>

/**
  * @name Key-register
  */

/**
  * @name Key-register: interrupt access defines
  */
#define PIO_KEY_RS_IR0_MSK      (0x1)
#define PIO_KEY_MINUS_IR2_MSK   (0x4)
#define PIO_KEY_PLUS_IR3_MSK    (0x8)

/**
  * @brief  Function to enable interrupts for pio key
  * @param  enablebits : set bits to 1 for enable interrupt
  * @retval None
  */
static __inline__ void PIO_KEY_SetIRMsk(uint32_t enablebits){
  IOWR_ALTERA_AVALON_PIO_IRQ_MASK(PIO_KEY_BASE, enablebits);
}

/**
  * @brief Function to clear bits of edgecapture register
  * @param clearbits : set bits to 1 for enable interrupt
  * @retval none
  */
static __inline__ void PIO_KEY_ClearEdgeCptBits(uint32_t clearbits){
  IOWR_ALTERA_AVALON_PIO_EDGE_CAP(PIO_KEY_BASE, clearbits);
}

/**
  * @brief Function to read content of edgecapture register
  * @retval pressedKeys : When edge was detected, bit is 1
  */
static __inline__ uint32_t PIO_KEY_GetEdgeCpt(void){
    return(IORD_ALTERA_AVALON_PIO_EDGE_CAP(PIO_KEY_BASE));
}

/**
  * @name sliding switches
  */

/**
  * @name Key-register: interrupt access defines
  */
#define PIO_SW_LR_IR0_MSK       (0x1)
#define PIO_SW_MODE_IR1234_MSK  (0x1E)
#define PIO_SW_DEBUG_IR9_MSK    (0x100)

/**
  * @brief  Function to enable interrupts for pio sw
  * @param  enablebits : set bits to 1 for enable interrupt
  * @retval None
 */
static __inline__ void PIO_SW_SetIRMsk(uint32_t enablebits){
  IOWR_ALTERA_AVALON_PIO_IRQ_MASK(PIO_SW_BASE, enablebits);
}

/**
  * @brief Function to read content of data register
  * @retval switchesValues :  Values of all switches
 *                            @arg 0 = Switch OFF
 *                            @arg 1 = Switch ON
 */
static __inline__ uint32_t PIO_SW_GetValues(void){
     return(IORD_ALTERA_AVALON_PIO_DATA(PIO_SW_BASE));
}

#endif
