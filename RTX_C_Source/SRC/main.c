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
  *****************************************************************************
  */

#include "../INC/main.h"

OS_FLAG_GRP *userInputTaskFlagsGrp;
OS_FLAG_GRP *heartbeatTaskFlagsGrp;

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
  if(OS_NO_ERR != err){
    error("INPUT_FLAG_CREATE_ERR: %i\n", err);
  }
  heartbeatTaskFlagsGrp = OSFlagCreate(0x0000, &err);
  if(OS_NO_ERR != err){
    error("INPUT_FLAG_CREATE_ERR: %i\n", err);
  }
  // -------------------- Tasks ----------------------------------------
  //  err = OSTaskCreateExt(HeartbeatDebugTask,
  //                  NULL,
  //                  (void *)&HeartbeatDebugTask_Stk[TASK_STACKSIZE-1],
  //                  HEARTBEAT_DEBUG_TASK_PRIORITY,
  //                  HEARTBEAT_DEBUG_TASK_PRIORITY,
  //                  HeartbeatDebugTask_Stk,
  //                  TASK_STACKSIZE,
  //                  NULL,
  //                  0);
  //  if(OS_NO_ERR != err){
  //    error("Err creating HeartbeatDebugTask: %i\n", err);
  //  }

  //  err = OSTaskCreateExt(UserInputTask,
  //                  NULL,
  //                    (void *)&UserInputTask_Stk[TASK_STACKSIZE - 1],
  //                  USER_INPUT_TASK_PRIORITY,
  //                  USER_INPUT_TASK_PRIORITY,
  //                  UserInputTask_Stk,
  //                  TASK_STACKSIZE,
  //                  NULL,
  //                  0);
  //   if(OS_NO_ERR != err){
  //     error("Err creating UserInputTask: %i\n", err);
  //   }
  //  err = OSTaskCreateExt(UserOutputTask,
  //                  NULL,
  //                    (void *)&UserOutputTask_Stk[TASK_STACKSIZE - 1],
  //                  USER_OUTPUT_TASK_PRIORITY,
  //                  USER_OUTPUT_TASK_PRIORITY,
  //                  UserOutputTask_Stk,
  //                  TASK_STACKSIZE,
  //                  NULL,
  //                  0);
  //   if(OS_NO_ERR != err){
  //     error("Err creating UserInputTask: %i\n", err);
  //   }
  //init keys ISR
  alt_ic_isr_register(PIO_KEY_IRQ_INTERRUPT_CONTROLLER_ID, PIO_KEY_IRQ,
                      keysIRQhandler, (void *) &ISRcontext, NULL);
  alt_ic_irq_enable(PIO_KEY_IRQ_INTERRUPT_CONTROLLER_ID, PIO_KEY_IRQ);
  //Enable Interrupt in PIO component
  PIO_KEY_SetIRMsk(PIO_KEY_RS_IR0_MSK |
                   PIO_KEY_MINUS_IR2_MSK |
                   PIO_KEY_PLUS_IR3_MSK);
  //Clear captured edges
  PIO_KEY_ClearEdgeCptBits(0xF);

  //init switches ISR
  alt_ic_isr_register(PIO_SW_IRQ_INTERRUPT_CONTROLLER_ID, PIO_SW_IRQ,
                      switchesIRQhandler, (void *) &ISRcontext, NULL);
  alt_ic_irq_enable(PIO_SW_IRQ_INTERRUPT_CONTROLLER_ID, PIO_SW_IRQ);
  //Enable Interrupt in PIO component
  PIO_SW_SetIRMsk(PIO_SW_LR_IR0_MSK |
                  PIO_SW_MODE_IR1234_MSK |
                  PIO_SW_DEBUG_IR9_MSK);

  //  //init motor ISR
  //  alt_ic_isr_register(..., ..., motorIRQhandler, (void *) &ISRcontext, NULL);
  //  alt_ic_irq_enable(..., ...);
  //  // Enable Interrupt and Reset
  //  SetMotorReg(...);

  //Show initial terminal msg
  printf_term("Stepper Motor - System on a Chip 2014\n");
  printf_term("Michael Riedel & Marc Kossmann\n");
  printf_term("Version 0.1 - 28.10.2014\n");

  //init LC-Display and show initial screen
  init_lcd();
  printf_lcd("    SoC 2014    \n");
  printf_lcd("Stepper-Control ");
  fflush_lcd();

  hardwareTest();

  OSStart();
  return 0;
}

void hardwareTest(void){
  uint32_t i;
  uint32_t timeoutMs = 1000;
  printf_term("Starting hardwareTest!\n");
  printf_lcd("\nStarting hwTest!");

  printf_term("Begin with LED9 flashing on-off\n");
  printf_lcd("LED9 on-off");
  OSTimeDlyHMSM(0, 0, 0, timeoutMs);
  PIO_LED9_Set(0x1);
  OSTimeDlyHMSM(0, 0, 0, timeoutMs);
  PIO_LED9_Set(0x0);
  OSTimeDlyHMSM(0, 0, 0, timeoutMs);
  PIO_LED9_Set(0x1);
  OSTimeDlyHMSM(0, 0, 0, timeoutMs);
  PIO_LED9_Set(0x0);
  OSTimeDlyHMSM(0, 0, 0, timeoutMs);

  printf_term("HEX-Display 0 all on\n");
  printf_lcd("\nHEX0 all on");
  OSTimeDlyHMSM(0, 0, 0, timeoutMs);
  PIO_HEX0_Set(0x7F);
  OSTimeDlyHMSM(0, 0, 0, timeoutMs);

  printf_term("HEX-Display 1 all on\n");
  printf_lcd("\nHEX1 all on");
  PIO_HEX1_Set(0x7F);
  OSTimeDlyHMSM(0, 0, 0, timeoutMs);

  printf_term("HEX-Display 2 all on\n");
  printf_lcd("\nHEX2 all on");
  PIO_HEX2_Set(0x7F);
  OSTimeDlyHMSM(0, 0, 0, timeoutMs);

  printf_term("HEX-Display 3 all on\n");
  printf_lcd("\nHEX1 all on");
  PIO_HEX3_Set(0x7F);
  OSTimeDlyHMSM(0, 0, 0, timeoutMs);

  PIO_HEX0_Set(0x0);
  PIO_HEX1_Set(0x0);
  PIO_HEX2_Set(0x0);
  PIO_HEX3_Set(0x0);

  printf_term("HEX-Display 0 shift on-off\n");
  printf_lcd("\nHEX0 shift test");
  for(i = 0; i < 7; i++){
    PIO_HEX0_Set(pow(2, i));
    OSTimeDlyHMSM(0, 0, 0, timeoutMs / 2);
    PIO_HEX0_Set(0x0);
    OSTimeDlyHMSM(0, 0, 0, timeoutMs / 2);
  }
  OSTimeDlyHMSM(0, 0, 0, timeoutMs *2);
  PIO_HEX0_Set(0x0);
}
