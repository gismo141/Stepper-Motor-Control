/**
  *****************************************************************************
  * @file       main.h
  * @author     Michael Riedel
  * @author     Marc Kossmann
  * @version    v0.1
  * @date       22.10.2014
  * @brief      Header file for main.c
  * @details    Contains defines, includes, typedefs and declarations needed
  *             for this task.
  ****************************************************************************
  * @par History:
  * @details    22.10. Kossmann
  *             - first draft for milestone 1b
  * @details    29.10. Kossmann
  *             - introduced SOC2014_DEBUG
  * @details    30.10. Kossmann
  *             - added debug and error handling header
  ****************************************************************************
  */

#ifndef __MAIN_H__
#define __MAIN_H__

#include <sys/alt_irq.h>
#include <stdio.h>
#include <stdint.h>
#include "includes.h"
#include "../INC/auxilaryFunctions.h"
#include "../INC/userInputTask.h"
#include "../INC/userOutputTask.h"
#include "../INC/heartbeatTask.h"
#include "../INC/hardwareAccess.h"
#include "../INC/switchesIRQhandler.h"
#include "../INC/keysIRQhandler.h"
#include "../INC/motorIRQhandler.h"
#include "../INC/debugAndErrorOutput.h"

#define SOC2014_DEBUG

/** @brief Definition of Task Stacks */
#define   TASK_STACKSIZE       2048

/** @brief Stack for Task 1 */
OS_STK    UserInputTask_Stk[TASK_STACKSIZE];
/** @brief Stack for Task 2 */
OS_STK    UserOutputTask_Stk[TASK_STACKSIZE];
/** @brief Stack for Task 3 */
OS_STK    HeartbeatDebugTask_Stk[TASK_STACKSIZE];

/** @par Definition of Task Priorities
  * @brief lower numbers mean higher priority
  */
#define USER_INPUT_TASK_PRIORITY        4  /*!< Priority Task UserInputTask */
#define USER_OUTPUT_TASK_PRIORITY       5  /*!< Priority Task UserOutputTask */
#define HEARTBEAT_DEBUG_TASK_PRIORITY   6  /*!< Priority Task HeartbeatDebugTask */

#endif /*__MAIN_H__*/
