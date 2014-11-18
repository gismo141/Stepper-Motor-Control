/**
 *****************************************************************************
 * @file       motorIRQhandler.c
 * @author     Michael Riedel
 * @author     Marc Kossmann
 * @version    v1.0.0
 * @date       11.11.2014
 * @brief      IRQ-handler for motor stopped
 *****************************************************************************
 * @par History:
 * @details    v0.1.0 21.10.2014 Riedel & Kossmann
 *             - first draft for milestone 1b
 * @details    v0.1.1 27.10.2014 by Riedel:
 *             - basic implementation
 *             - moved function-documentation to header-file
 * @details    v0.1.2 02.11.2014 Riedel
 *             - finalized ISR-functionality
 * @details    v1.0.0 11.11.2014 Riedel & Kossmann
 *             - Adapted code to new registerAccess.h (using ctrlRegBitClr/-Set)
 * @details    v1.0.1 18.11.2014 Riedel & Kossmann
 *             - added MOTOR_STOP_EVENT post to UserOutputTask
 *****************************************************************************
 */

#include "../INC/motorIRQhandler.h"

extern OS_FLAG_GRP *userInputTaskFlagsGrp;

void motorIRQhandler(void *context) {
  uint32_t ctrlReg = 0;
  INT8U err;

  OSIntEnter();
  ctrlReg = ctrlRegGet();

  if (ctrlReg & CTRL_REG_IE_MSK) {
    // Clear request
    ctrlRegBitClr(CTRL_REG_IR_MSK);

    // Send the event
    OSFlagPost(userInputTaskFlagsGrp, MOTOR_STOP_EVENT, OS_FLAG_SET, &err);
    if (OS_NO_ERR != err) {
      error("MOTOR_ISR_FLAG_ERR: %i\n", err);
    }
    OSFlagPost(userOutputTaskFlagsGrp, MOTOR_STOP_EVENT, OS_FLAG_SET, &err);
    if (OS_NO_ERR != err) {
      error("MOTOR_ISR_FLAG_ERR: %i\n", err);
    }
  } else
    debug("IE not set!");

  OSIntExit();
}
