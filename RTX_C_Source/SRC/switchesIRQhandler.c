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
  * @details    v0.1 Riedel & Kossmann
  *             - first draft for milestone 1b
  * @details    2014-10-27 by Riedel:
  *             - basic implementation
  *****************************************************************************
  */

#include <sys/alt_irq.h>
#include "includes.h"
#include "../INC/hardwareAccess.h"
#include "../INC/events.h"

void switchesIRQhandler(void *context)
{
    uint32_t isrsignals;
    INT8U err;

    OSIntEnter();
    isrsignals =  getSW();

    // Clear Request
    SetKeyReg(isrsignals & ~(INTERFACE_SWITCH_MSK));
    isrsignals = isrsignals & (INTERFACE_SWITCH_MSK);

    // Send corresponding Event
    OSFlagPost(SWITCH_UPDATE_EVENT, isrsignals, OS_FLAG_SET, &err);
    OSIntExit();
}
