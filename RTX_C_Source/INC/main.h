/**
 *****************************************************************************
 * @file       main.h
 * @author     Michael Riedel
 * @author     Marc Kossmann
 * @version    v2.0.0
 * @date       18.11.2014
 * @brief      Header file for main.c
 * @details    Contains defines, includes, typedefs and declarations needed
 *             for this task.
 ****************************************************************************
 * @par History:
 * @details    v0.1.0 22.10.2014 Kossmann
 *             - first draft for milestone 1b
 * @details    v0.1.1 29.10.2014 Kossmann
 *             - introduced SOC2014_DEBUG
 * @details    v0.1.2 30.10.2014 Kossmann
 *             - added debug and error handling header
 * @details    v0.1.3 31.10.2014 Riedel & Kossmann
 *             - corrected misspelled heartbeatTask
 * @details    v1.0.0 11.11.2014 Riedel & Kossmann
 *             - added INTERRUPT_ENABLE define to enable motor interrupt
 * @details    v2.0.0 18.11.2014 Riedel & Kossmann
 *             - moved INTERRUPT_ENABLE to userInputTask.h
 ****************************************************************************
 */

#ifndef __MAIN_H__
#define __MAIN_H__

#include <sys/alt_irq.h>
#include <stdio.h>
#include <stdint.h>
#include "includes.h"
#include "auxilaryFunctions.h"
#include "userInputTask.h"
#include "userOutputTask.h"
#include "heartbeatTask.h"
#include "hardwareAccess.h"
#include "switchesIRQhandler.h"
#include "keysIRQhandler.h"
#include "motorIRQhandler.h"
#include "debugAndErrorOutput.h"
#include "registerAccess.h"

/** @brief Definition of Task Stacks */
#define   TASK_STACKSIZE       2048

/** @brief Stack for Task 1 */
OS_STK UserInputTask_Stk[TASK_STACKSIZE];
/** @brief Stack for Task 2 */
OS_STK UserOutputTask_Stk[TASK_STACKSIZE];
/** @brief Stack for Task 3 */
OS_STK HeartbeatTask_Stk[TASK_STACKSIZE];

/** @par Definition of Task Priorities
 * @brief lower numbers mean higher priority
 */
#define USER_INPUT_TASK_PRIORITY        5  /*!< Priority Task UserInputTask */
#define USER_OUTPUT_TASK_PRIORITY       6  /*!< Priority Task UserOutputTask */
#define HEARTBEAT_TASK_PRIORITY         7  /*!< Priority Task HeartbeatDebugTask */

/**
 * @brief  		Main-Routine
 * @details
 * @retval 		Errorcode
 */
int main(void);

#endif // __MAIN_H__
