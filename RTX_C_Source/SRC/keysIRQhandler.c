/**
 *****************************************************************************
 * @file       keysIRQhandler.c
 * @author     Michael Riedel
 * @author     Marc Kossmann
 * @version    v1.0.0
 * @date       11.11.2014
 * @brief      IRQ-handler for keys
 *****************************************************************************
 * @par History:
 * @details    v0.1.0 21.10.2014 Riedel & Kossmann
 *             - first draft for milestone 1b
 * @details    v0.1.1 27.10.2014 Riedel
 *             - basic implementation
 *             - moved function-documentation to header-file
 * @details    v0.1.2 29.10.2014 Kossmann
 *             - modified clearing requests and evaluating pressed keys
 * @details    v0.1.3 30.10.2014 Riedel
 *             - added Debug and Error-Handling
 * @details    v1.0.0 30.10.2014 Kossmann
 *             - fixed bug in Debug and Error-Handling
 *****************************************************************************
 */

#include "../INC/keysIRQhandler.h"

extern OS_FLAG_GRP *userInputTaskFlagsGrp;

void keysIRQhandler(void *context) {
  uint32_t edgesCaptured = 0;
  INT8U err;

  OSIntEnter();
  edgesCaptured = PIO_KEY_GetEdgeCpt();

  // Send corresponding Event and clear bit in edgecapture reg
  if (edgesCaptured & PIO_KEY_RS_IR0_MSK) {
    OSFlagPost(userInputTaskFlagsGrp, KEY0_RS_EVENT, OS_FLAG_SET, &err);
    if (OS_NO_ERR != err) {
      error("KEY_ISR_FLAG_ERR: %i\n", err);
    }
  }
  if (edgesCaptured & PIO_KEY_MINUS_IR2_MSK) {
    OSFlagPost(userInputTaskFlagsGrp, KEY2_MINUS_EVENT, OS_FLAG_SET, &err);
    if (OS_NO_ERR != err) {
      error("KEY_ISR_FLAG_ERR: %i\n", err);
    }
  }
  if (edgesCaptured & PIO_KEY_PLUS_IR3_MSK) {
    OSFlagPost(userInputTaskFlagsGrp, KEY3_PLUS_EVENT, OS_FLAG_SET, &err);
    if (OS_NO_ERR != err) {
      error("KEY_ISR_FLAG_ERR: %i\n", err);
    }
  }
  PIO_KEY_ClearEdgeCptBits(edgesCaptured);
  OSIntExit();
}
