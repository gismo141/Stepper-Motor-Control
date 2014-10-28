/**
  *****************************************************************************
  * @file       main.c
  * @author     Michael Riedel
  * @author     Marc Kossmann
  * @version    v0.1
  * @date       22.10.2014
  * @brief      Main-Routine for Stepper-Motor-Control
  * @todo		introduce error-handling like in User-Output-Task
  * @todo		uncomment isr registration
  *****************************************************************************
  * @par History:
  * @details    v0.1 Riedel & Kossmann
  *             - first draft for milestone 1b
  *****************************************************************************
  */

#include "../INC/main.h"

/**
  * @brief  Main-Routine
  * @details
  * @retval Errorcode
  */
int main(void)
{
  // -------- Events, Semaphor, Mutex , Mbx  ---------------------------


  // -------------------- Tasks ----------------------------------------
  OSTaskCreateExt(UserInputTask,
                  NULL,
                    (void *)&UserInputTask_Stk[TASK_STACKSIZE - 1],
                  USER_INPUT_TASK_PRIORITY,
                  USER_INPUT_TASK_PRIORITY,
                  UserInputTask_Stk,
                  TASK_STACKSIZE,
                  NULL,
                  0);
   
//  OSTaskCreateExt(UserOutputTask,
//                  NULL,
//                    (void *)&UserOutputTask_Stk[TASK_STACKSIZE - 1],
//                  USER_OUTPUT_TASK_PRIORITY,
//                  USER_OUTPUT_TASK_PRIORITY,
//                  UserOutputTask_Stk,
//                  TASK_STACKSIZE,
//                  NULL,
//                  0);
                  
//  OSTaskCreateExt(HeartbeatDebugTask,
//                  NULL,
//                  (void *)&HeartbeatDebugTask_Stk[TASK_STACKSIZE-1],
//                  HEARTBEAT_DEBUG_TASK_PRIORITY,
//                  HEARTBEAT_DEBUG_TASK_PRIORITY,
//                  HeartbeatDebugTask_Stk,
//                  TASK_STACKSIZE,
//                  NULL,
//                  0);

//  //init switches ISR
//  alt_ic_isr_register(PIO_SW_IRQ_INTERRUPT_CONTROLLER_ID, PIO_SW_IRQ,
//		  switchesIRQhandler, (void *) &ISRcontext, NULL);
//  alt_ic_irq_enable(PIO_SW_IRQ_INTERRUPT_CONTROLLER_ID, PIO_SW_IRQ);
//  // Enable Interrupt and Reset
//  SetSwitchReg(INTERFACE_KEY_IE0_MSK |
//          INTERFACE_KEY_IE2_MSK |
//          INTERFACE_KEY_IE3_MSK);

//  //init motor ISR
//  alt_ic_isr_register(..., ..., motorIRQhandler, (void *) &ISRcontext, NULL);
//  alt_ic_irq_enable(..., ...);
//  // Enable Interrupt and Reset
//  SetMotorReg(...);
                  
  //Show initial terminal msg
  init_term();
  printf_term("Stepper Motor - System on a Chip 2014\n");
  printf_term("Michael Riedel & Marc Kossmann\n");
  printf_term("Version 0.1 - 28.10.2014\n");

  //init LC-Display and show initial screen
  init_lcd();
  printf_lcd("    SoC 2014    \n");
  printf_lcd("Stepper-Control ");
  fflush_lcd();
  

  // blubb

  OSStart();
  return 0;
}
