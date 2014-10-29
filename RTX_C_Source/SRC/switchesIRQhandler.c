/**
  *****************************************************************************
  * @file       switchesIRQhandler.c
  * @author     Michael Riedel
  * @author     Marc Kossmann
  * @version    v0.1
  * @date       29.10.2014
  * @brief      IRQ-handler for switches
  *****************************************************************************
  * @par History:
  * @details    21.10. Riedel & Kossmann
  *             - first draft for milestone 1b
  * @details    27.10. Riedel
  *             - basic implementation
  * @details    29.10. Kossmann
  *             - modified clearing requests and evaluating pressed keys
  *****************************************************************************
  */


#include "../INC/switchesIRQhandler.h"

extern OS_EVENT *switchesMailbox;

void switchesIRQhandler(void *context)
{
    OSIntEnter();
    #ifdef SOC2014_DEBUG
      printf_term("Switch moved!\n");
    #endif
    // Create and Send Mailbox-Message with switches values
    OSMboxPost(switchesMailbox, (void*) PIO_SW_GetValues());

    OSIntExit();
}
