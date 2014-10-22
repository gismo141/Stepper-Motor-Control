/**
  ***************************************************************************
  * @file      	main.c
  * @author  	Michael Riedel
  * @author  	Marc Kossmann
  * @version   	V0.1
  * @date      	22.10.2014
  * @brief   	Main-Routine for Stepper-Motor-Control
  ***************************************************************************
  * @par History:
  * @details V0.1 Riedel & Kossmann
  *			- first draft for milestone 1b
  ****************************************************************************
  */

#include "../INC/main.h"

/** @brief Variable for ISR-Context
  * @details Not used in this program
  */
  uint32_t ISRcontext;

/**
  * @brief  Main-Routine
  * @details
  * @retval Errorcode
  */
int32_t main(void)
{
  // -------- Events, Semaphor, Mutex , Mbx  ---------------------------


  // -------------------- Tasks ----------------------------------------
  OSTaskCreateExt(UserInputTask,
                  NULL,
                  (void *)&UserInputTask_Stk[TASK_STACKSIZE-1],
                  USER_INPUT_TASK_PRIORITY,
                  USER_INPUT_TASK_PRIORITY,
                  UserInputTask_Stk,
                  TASK_STACKSIZE,
                  NULL,
                  0);
   
  OSTaskCreateExt(UserOutputTask,
                  NULL,
                  (void *)&UserOutputTask_Stk[TASK_STACKSIZE-1],
                  USER_OUTPUT_TASK_PRIORITY,
                  USER_OUTPUT_TASK_PRIORITY,
                  UserOutputTask_Stk,
                  TASK_STACKSIZE,
                  NULL,
                  0);
                  
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
//  alt_ic_isr_register(..., ..., switchesIRQhandler, (void *) &ISRcontext, NULL);
//  alt_ic_irq_enable(..., ...);
//  // Enable Interrupt and Reset
//  SetSwitchReg(...);
//
//  //init key ISR
//  alt_ic_isr_register(..., ..., keysIRQhandler, (void *) &ISRcontext, NULL);
//  alt_ic_irq_enable(..., ...);
//  // Enable Interrupt and Reset
//  SetKeyReg(...);
//
//  //init motor ISR
//  alt_ic_isr_register(..., ..., motorIRQhandler, (void *) &ISRcontext, NULL);
//  alt_ic_irq_enable(..., ...);
//  // Enable Interrupt and Reset
//  SetMotorReg(...);
                  
//  //Show initial terminal msg
//  printf_term("Stepper Motor - System on a Chip 2014\n");
//  printf_term("Michael Riedel & Marc Kossmann\n");
//  printf_term("Version 0.1 - 21.10.2014\n");
  
//  //init LC-Display and show initial screen
//  initLCD();
//  printf_lcd("    SoC 2014    ");
//  printf_lcd("Stepper-Control ");
//  fflush(stdout);
  
  OSStart();
  return 0;
}
