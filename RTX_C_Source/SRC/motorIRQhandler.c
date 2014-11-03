/**
 *****************************************************************************
 * @file       motorIRQhandler.c
 * @author     Michael Riedel
 * @author     Marc Kossmann
 * @version    v0.1
 * @date       21.10.2014
 * @brief      IRQ-handler for motor stopped
 *****************************************************************************
 * @par History:
 * @details    21.10. Riedel & Kossmann
 *             - first draft for milestone 1b
 * @details    27.10. by Riedel:
 *             - basic implementation
 *             - moved function-documentation to header-file
 * @details    02.11. Riedel
 *             - finalized ISR-functionality
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
    ctrlReg &= ~(CTRL_REG_IR_MSK); 
    ctrlRegSet(ctrlReg);

    // Send the event
    OSFlagPost(userInputTaskFlagsGrp, MOTOR_STOP_EVENT, OS_FLAG_SET, &err);
    if (OS_NO_ERR != err) {
      error("MOTOR_ISR_FLAG_ERR: %i\n", err);
    }
  } else
    debug("IE not set!");

  OSIntExit();
}