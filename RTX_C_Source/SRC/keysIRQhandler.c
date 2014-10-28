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
#include "includes.h"
#include "../INC/keysIRQhandler.h"
#include "../INC/hardwareAccess.h"
#include "../INC/events.h"

extern OS_FLAG_GRP *userInputTaskFlagsGrp;

void keysIRQhandler(void *context)
{
    uint32_t isrsignals;
    INT8U err;

    OSIntEnter();
    isrsignals =  GetKeyReg();

    // Clear Request
    SetKeyReg(isrsignals & ~(INTERFACE_KEY_IR0_MSK |
                             INTERFACE_KEY_IR2_MSK |
                             INTERFACE_KEY_IR3_MSK));
    
    // Send corresponding Event
    if(isrsignals & INTERFACE_KEY_IR0_MSK)
        OSFlagPost(userInputTaskFlagsGrp, KEY0_RS_EVENT, OS_FLAG_SET, &err);
    if(isrsignals & INTERFACE_KEY_IR2_MSK)
        OSFlagPost(userInputTaskFlagsGrp, KEY2_MINUS_EVENT, OS_FLAG_SET, &err);
    if(isrsignals & INTERFACE_KEY_IR3_MSK)
        OSFlagPost(userInputTaskFlagsGrp, KEY3_PLUS_EVENT, OS_FLAG_SET, &err);
    printf_term("Key pressed\n");
    OSIntExit();
}
