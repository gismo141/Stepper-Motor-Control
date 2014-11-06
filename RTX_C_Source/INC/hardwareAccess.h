/**
 *****************************************************************************
 * @file       hardwareAccess.h
 * @author     Michael Riedel
 * @author     Marc Kossmann
 * @version    v0.1
 * @date       21.10.2014
 * @brief      Functions for accessing hardware connected through pio´s and
 *             registers
 *****************************************************************************
 * @par History:
 * @details    21.10. Riedel & Kossmann
 *             - first draft for milestone 1b
 * @details    29.10. Kossmann
 *             - renewed complete pio access concept
 * @details    31.10. Riedel & Kossmann
 *             - added missing var type in hex functions
 * @details    31.10. Kossmann
 *             - added function to clear edgecapture of switches
 *****************************************************************************
 */

#ifndef __HARDWAREACCESS_H__
#define __HARDWAREACCESS_H__

#include <stdint.h>
#include <system.h>
#include <altera_avalon_pio_regs.h>

#define PIO_KEY_RS_IR0_MSK      (0x1)   //!< Run/Stop mask for PIO-Key
#define PIO_KEY_MINUS_IR2_MSK   (0x4)   //!< Increase steps mask for PIO-Key
#define PIO_KEY_PLUS_IR3_MSK    (0x8)   //!< Decreses steps mask for PIO-Key
#define PIO_SW_LR_MSK           (0x1)   //!< Left/Right mask for PIO-Switches
#define PIO_SW_MODE_MSK         (0x1E)  //!< Mode mask for PIO-Switches
#define PIO_SW_DEBUG_MSK        (0x200) //!< Debug mask for PIO-Switches

/**
 * @name keys
 */

/**
 * @brief  Function to enable interrupts for pio key
 * @param  enablebits : set bits to `1` for enable interrupt
 * @retval None
 */
static __inline__ void PIO_KEY_SetIRMsk(uint32_t enablebits) {
  IOWR_ALTERA_AVALON_PIO_IRQ_MASK(PIO_KEY_BASE, enablebits);
}

/**
 * @brief Function to clear bits of keys edgecapture register
 * @param clearbits : set bits to `1` for enable interrupt
 * @retval none
 */
static __inline__ void PIO_KEY_ClearEdgeCptBits(uint32_t clearbits) {
  IOWR_ALTERA_AVALON_PIO_EDGE_CAP(PIO_KEY_BASE, clearbits);
}

/**
 * @brief Function to read content of keys edgecapture register
 * @retval pressedKeys : When edge was detected, bit is `1`
 */
static __inline__ uint32_t PIO_KEY_GetEdgeCpt(void) {
  return (IORD_ALTERA_AVALON_PIO_EDGE_CAP(PIO_KEY_BASE));
}

/**
 * @name sliding switches
 */

/**
 * @brief  Function to enable interrupts for pio sw
 * @param  enablebits : set bits to `1` for enable interrupt
 * @retval None
 */
static __inline__ void PIO_SW_SetIRMsk(uint32_t enablebits) {
  IOWR_ALTERA_AVALON_PIO_IRQ_MASK(PIO_SW_BASE, enablebits);
}

/**
 * @brief Function to clear bits of switches edgecapture register
 * @param clearbits : set bits to `1` for clearing interrupt
 * @retval none
 */
static __inline__ void PIO_SW_ClearEdgeCptBits(uint32_t clearbits) {
  IOWR_ALTERA_AVALON_PIO_EDGE_CAP(PIO_SW_BASE, clearbits);
}

/**
 * @brief Function to read content of switches data register
 * @retval switchesValues :  Values of all switches
 *                            @arg 0 = Switch OFF
 *                            @arg 1 = Switch ON
 */
static __inline__ uint32_t PIO_SW_GetValues(void) {
  return (IORD_ALTERA_AVALON_PIO_DATA(PIO_SW_BASE));
}

/**
 * @name red LED_9 (heartbeat)
 */

/**
 * @brief Function to set led9 for heartbeat
 * @param ledValue :  Value for LED9
 *                            @arg 0 = LED OFF
 *                            @arg 1 = LED ON
 *  @retval none
 */
static __inline__ void PIO_LED9_Set(uint32_t ledValue) {
  IOWR_ALTERA_AVALON_PIO_DATA(PIO_LED9_BASE, ledValue);
}

/**
 * @name 7-segment hex displays
 */

/**
 * @brief Function to set segments on hex0 display
 * @param segmentValues :  Values for all seven segments
 *                            @arg 0 = segment OFF
 *                            @arg 1 = segment ON
 *  @retval none
 */
static __inline__ void PIO_HEX0_Set(uint32_t segmentValues) {
  IOWR_ALTERA_AVALON_PIO_DATA(PIO_HEX0_BASE, ~segmentValues);
}

/**
 * @brief Function to set segments on hex1 display
 * @param segmentValues :  Values for all seven segments
 *                            @arg 0 = segment OFF
 *                            @arg 1 = segment ON
 *  @retval none
 */
static __inline__ void PIO_HEX1_Set(uint32_t segmentValues) {
  IOWR_ALTERA_AVALON_PIO_DATA(PIO_HEX1_BASE, ~segmentValues);
}

/**
 * @brief Function to set segments on hex2 display
 * @param segmentValues :  Values for all seven segments
 *                            @arg 0 = segment OFF
 *                            @arg 1 = segment ON
 *  @retval none
 */
static __inline__ void PIO_HEX2_Set(uint32_t segmentValues) {
  IOWR_ALTERA_AVALON_PIO_DATA(PIO_HEX2_BASE, ~segmentValues);
}

/**
 * @brief Function to set segments on hex3 display
 * @param segmentValues :  Values for all seven segments
 *                            @arg 0 = segment OFF
 *                            @arg 1 = segment ON
 *  @retval none
 */
static __inline__ void PIO_HEX3_Set(uint32_t segmentValues) {
  IOWR_ALTERA_AVALON_PIO_DATA(PIO_HEX3_BASE, ~segmentValues);
}

#endif // __HARDWAREACCESS_H__
