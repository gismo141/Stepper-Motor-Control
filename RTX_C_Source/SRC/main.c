/**
 *****************************************************************************
 * @file       main.c
 * @author     Michael Riedel
 * @author     Marc Kossmann
 * @version    v0.1
 * @date       22.10.2014
 * @brief      Main-Routine for Stepper-Motor-Control
 * @todo       uncomment tasks creation
 * @todo       finish motor isr registration
 *****************************************************************************
 * @par History:
 * @details    22.10. Riedel & Kossmann
 *             - first draft for milestone 1b
 * @details    29.10. Kossmann
 *             - edited ISRs inits to work with new pio access concept
 * @details    30.10. Kossmann
 *             - adopted error handling to new makro call
 *             - moved all flagsgroups to main and added creating them
 * @details    31.10. Riedel & Kossmann
 *             - moved hardwareTest() and initial printouts into userInputTask
 *             because the need OS running
 *****************************************************************************
 */

#include "../INC/main.h"

extern OS_FLAG_GRP *userInputTaskFlagsGrp;
extern OS_FLAG_GRP *heartbeatTaskFlagsGrp;

/** @brief Variable for ISR-Context
 * @details Not used in this program
 */
uint32_t ISRcontext;

/**
 * @brief  Main-Routine
 * @details
 * @retval Errorcode
 */
int main(void) {
  uint8_t err;
  init_term();

  // -------------------- Flags creation--------------------------------
  userInputTaskFlagsGrp = OSFlagCreate(0x0000, &err);
  if (OS_NO_ERR != err) {
    error("INPUT_FLAG_CREATE_ERR: %i\n", err);
  }
  heartbeatTaskFlagsGrp = OSFlagCreate(0x0000, &err);
  if (OS_NO_ERR != err) {
    error("INPUT_FLAG_CREATE_ERR: %i\n", err);
  }
  // -------------------- Tasks ----------------------------------------
  err = OSTaskCreateExt(UserInputTask, NULL,
      (void *) &UserInputTask_Stk[TASK_STACKSIZE - 1], USER_INPUT_TASK_PRIORITY,
      USER_INPUT_TASK_PRIORITY, UserInputTask_Stk, TASK_STACKSIZE, NULL, 0);
  if (OS_NO_ERR != err) {
    error("Err creating UserInputTask: %i\n", err);
  }

  err = OSTaskCreateExt(UserOutputTask, NULL,
      (void *) &UserOutputTask_Stk[TASK_STACKSIZE - 1],
      USER_OUTPUT_TASK_PRIORITY, USER_OUTPUT_TASK_PRIORITY, UserOutputTask_Stk,
      TASK_STACKSIZE, NULL, 0);
  if (OS_NO_ERR != err) {
    error("Err creating UserInputTask: %i\n", err);
  }

  err = OSTaskCreateExt(HeartbeatTask, NULL,
      (void *) &HeartbeatTask_Stk[TASK_STACKSIZE - 1], HEARTBEAT_TASK_PRIORITY,
      HEARTBEAT_TASK_PRIORITY, HeartbeatTask_Stk, TASK_STACKSIZE, NULL, 0);
  if (OS_NO_ERR != err) {
    error("Err creating HeartbeatTask: %i\n", err);
  }

  //init keys ISR
  alt_ic_isr_register(PIO_KEY_IRQ_INTERRUPT_CONTROLLER_ID, PIO_KEY_IRQ,
      keysIRQhandler, (void *) &ISRcontext, NULL);
  alt_ic_irq_enable(PIO_KEY_IRQ_INTERRUPT_CONTROLLER_ID, PIO_KEY_IRQ);
  //Enable Interrupt in PIO component
  PIO_KEY_SetIRMsk(
      PIO_KEY_RS_IR0_MSK | PIO_KEY_MINUS_IR2_MSK | PIO_KEY_PLUS_IR3_MSK);
  //Clear captured edges
  PIO_KEY_ClearEdgeCptBits(0xF);

  //init switches ISR
  alt_ic_isr_register(PIO_SW_IRQ_INTERRUPT_CONTROLLER_ID, PIO_SW_IRQ,
      switchesIRQhandler, (void *) &ISRcontext, NULL);
  alt_ic_irq_enable(PIO_SW_IRQ_INTERRUPT_CONTROLLER_ID, PIO_SW_IRQ);
  //Enable Interrupt in PIO component
  PIO_SW_SetIRMsk(
      PIO_SW_LR_IR0_MSK | PIO_SW_MODE_IR1234_MSK | PIO_SW_DEBUG_IR9_MSK);
  PIO_KEY_ClearEdgeCptBits(
      PIO_SW_LR_IR0_MSK | PIO_SW_MODE_IR1234_MSK | PIO_SW_DEBUG_IR9_MSK);

  //  //init motor ISR
  //  alt_ic_isr_register(..., ..., motorIRQhandler, (void *) &ISRcontext, NULL);
  //  alt_ic_irq_enable(..., ...);
  //  // Enable Interrupt and Reset
  //  SetMotorReg(...);

  OSStart();
  return 0;
}
