/**
  *****************************************************************************
  * @file       userInputTask.h
  * @author     Michael Riedel
  * @author     Marc Kossmann
  * @version    v0.1
  * @date       22.10.2014
  * @brief      Header file for userInputTask.c
  * @details    Contains defines, includes, typedefs and declarations needed
  *             for this task.
  *****************************************************************************
  * @par History:
  * @details    22.10. Riedel & Kossmann
  *             - first draft for milestone 1b
  * @details    27.10. Riedel
  *             - moved events to events.h for better handling
  * @details    30.10. Kossmann
  *             - removed hardwareAccess.h include
  * @details    30.10. Kossmann
  *             - added debug and error handling header
  *             30.10. Riedel
  *             - cleaned includes
  * @details    31.10. Riedel & Kossmann
  *             - added hardwareTest() declaration
  * @details    03.11. Kossmann
  *             - moved all register masks in registerAccess.h
  *****************************************************************************
  */

#ifndef __USER_INPUT_TASK_H__
#define __USER_INPUT_TASK_H__

#include <sys/alt_irq.h>
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <math.h>

#include "includes.h"
#include "events.h"
#include "hardwareAccess.h"
#include "registerAccess.h"

#include "auxilaryFunctions.h"
#include "debugAndErrorOutput.h"

typedef enum state {
  ERROR       = 0,
  FUNCTIONAL  = 1,
  DEBUG       = 2,
} state_t;

typedef enum useCases {
  STOP              = 0,
  QUARTER_ROTATION  = 1,
  HALF_ROTATION     = 2,
  FULL_ROTATION     = 3,
  DOUBLE_ROTATION   = 4,
  CONTINOUS         = 5
} useCases_t;

typedef struct systemState {
  state_t operationalStatus;
  useCases_t activeUseCase;
} systemState_t;

typedef enum direction {
  LEFT  = 0,
  RIGHT = 1
} direction_t;

typedef struct outputTaskMailbox {
  systemState_t systemState;
  uint32_t ctrlReg;
  uint32_t speedReg;
  uint32_t stepsReg;
  bool debugState;
} outputTaskMailbox_t;

/**
  * @brief  UserInputTask
  * @details
  * @param  pdata : Pointer to parameter structure (not used)
  * @retval None
  */
void UserInputTask(void *pdata);

void hardwareTest(void);

#endif /*__USER_INPUT_TASK_H__*/
