/**
  *****************************************************************************
  * @file       keysIRQhandler.c
  * @author     Michael Riedel
  * @author     Marc Kossmann
  * @version    v0.1
  * @date       21.10.2014
  * @brief      IRQ-handler for keys
  *****************************************************************************
  * @par History:
  * @details    v0.1 Riedel & Kossmann
  *             - first draft for milestone 1b
  * @details    2014-10-27 by Riedel:
  *             - basic implementation
  *             - moved function-documentation to header-file
  *****************************************************************************
  */

#include <sys/alt_irq.h>
#include "includes.h" // Wofür ist die?
#include "../INC/hardwareAccess.h"
#include "../INC/events.h"

void keysIRQhandler(void *context)
{
    uint32_t isrsignals;
    INT8U err;

    OSIntEnter();
    isrsignals =  GetKeyReg();

    // Clear Request
    SetKeyReg(isrsignals & ~(INTERFACE_KEY_IR0_MSK |
                             INTERFACE_KEY_IR1_MSK |
                             INTERFACE_KEY_IR2_MSK));
    isrsignals = isrsignals & (INTERFACE_KEY_IR0_MSK |
                               INTERFACE_KEY_IR1_MSK |
                               INTERFACE_KEY_IR2_MSK);
    
    // Send corresponding Event
    if(isrsignals & INTERFACE_KEY_IR0_MSK)
        OSFlagPost(KEY0_RS_EVENT, isrsignals, OS_FLAG_SET, &err);
    if(isrsignals & INTERFACE_KEY_IR1_MSK)
        OSFlagPost(KEY2_MINUS_EVENT, isrsignals, OS_FLAG_SET, &err);
    if(isrsignals & INTERFACE_KEY_IR2_MSK)
        OSFlagPost(KEY3_PLUS_EVENT, isrsignals, OS_FLAG_SET, &err);
    OSIntExit();
}