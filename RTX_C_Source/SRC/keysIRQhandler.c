/**
  *****************************************************************************
  * @file       keysIRQhandler.c
  * @author     Michael Riedel
  * @author     Marc Kossmann
  * @version    v0.1
  * @date       29.10.2014
  * @brief      IRQ-handler for keys
  *****************************************************************************
  * @par History:
  * @details    21.10. Riedel & Kossmann
  *             - first draft for milestone 1b
  * @details    27.10. Riedel
  *             - basic implementation
  *             - moved function-documentation to header-file
  * @details    29.10. Kossmann
  *             - modified clearing requests and evaluating pressed keys
  *             30.10. Riedel
  *             - added Debug and Error-Handling
  *****************************************************************************
  */

#include "../INC/debugAndErrorOutput.h"

#include "../INC/keysIRQhandler.h"

extern OS_FLAG_GRP *userInputTaskFlagsGrp;

void keysIRQhandler(void *context)
{
    uint32_t edgesCaptured = 0;
    INT8U err;

    OSIntEnter();
    edgesCaptured =  PIO_KEY_GetEdgeCpt();

    // Send corresponding Event and clear bit in edgecapture reg
    if (edgesCaptured & PIO_KEY_RS_IR0_MSK)
    {
        debug("KEY_RS_0 pressed!\n");
        OSFlagPost(userInputTaskFlagsGrp, KEY0_RS_EVENT, OS_FLAG_SET, &debug);
    }
    if (edgesCaptured & PIO_KEY_MINUS_IR2_MSK)
    {
        debug("KEY_MINUS_2 pressed!\n");
        OSFlagPost(userInputTaskFlagsGrp, KEY2_MINUS_EVENT, OS_FLAG_SET, &debug);
    }
    if (edgesCaptured & PIO_KEY_PLUS_IR3_MSK)
    {
        debug("KEY_PLUS_3 pressed!\n");
        OSFlagPost(userInputTaskFlagsGrp, KEY3_PLUS_EVENT, OS_FLAG_SET, &err);
    }
    PIO_KEY_ClearEdgeCptBits(edgesCaptured);
    OSIntExit();
}
