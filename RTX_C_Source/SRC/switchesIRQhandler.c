/**
  *****************************************************************************
  * @file       switchesIRQhandler.c
  * @author     Michael Riedel
  * @author     Marc Kossmann
  * @version    v0.1
  * @date       21.10.2014
  * @brief      IRQ-handler for switches
  *****************************************************************************
  * @par History:
  * @details    21.10. Riedel & Kossmann
  *             - first draft for milestone 1b
  * @details    27.10. Riedel
  *             - basic implementation
  * @details    29.10. Kossmann
  *             - modified clearing requests and evaluating pressed keys
  * @details    30.10. Riedel
  *             - added Debug and Error-Handling
  * @details    30.10. Kossmann
  *             - change IPC to message queue because mailbox not needed
  * @details    31.10. Kossmann
  *             - fix bug that IRQhandler was called all the time
  *****************************************************************************
  */

#include "../INC/switchesIRQhandler.h"

extern OS_EVENT *switchesMsgQueue;

void switchesIRQhandler(void *context) {
  uint8_t err;
  OSIntEnter();
  debug("Switch moved!\n");
  // Create and Send Mailbox-Message with switches values
  err = OSQPost(switchesMsgQueue, (void *) PIO_SW_GetValues());
  if (OS_NO_ERR != err) {
    error("SW_ISR_MBOX_ERR: %i\n", err);
  }
  PIO_SW_ClearEdgeCptBits(0xFFFF);
  OSIntExit();
}
