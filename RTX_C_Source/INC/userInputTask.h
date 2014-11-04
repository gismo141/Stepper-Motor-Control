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

/** @brief    general state of system */
typedef enum state {
  ERROR = 0, //!< system is not working properly
  FUNCTIONAL = 1, //!< everything is full functional
  DEBUG = 2, //!< debugging is active
} state_t;

/** @brief    general state of system */
typedef enum useCases {
  STOP = 0, //!< Motor not moving
  QUARTER_ROTATION = 1, //!< Motor turning 1/4 rotation
  HALF_ROTATION = 2, //!< Motor turning 1/2 rotation
  FULL_ROTATION = 3, //!< Motor turning one rotation
  DOUBLE_ROTATION = 4, //!< Motor turning two rotation
  CONTINOUS = 5 //!< Motor is continously running
} useCases_t;

/** @brief  Struct to store state of system and use case information */
typedef struct systemState {
  state_t operationalStatus; //!< operational status
  useCases_t activeUseCase; //!< active use case
} systemState_t;

/** @brief  Motor direction  */
typedef enum direction {
  LEFT = 0, RIGHT = 1
} direction_t;

/** @brief  Datatype of Mailbox for transmitting information from InputTask
 *  to OutputTask */
typedef struct outputTaskMailbox {
  systemState_t systemState; //!< stores state of system
  uint32_t stepsReg; //!< copy of steps register
  uint8_t ctrlReg; //!< copy control register
  uint8_t speedReg; //!< copy of speed register
  bool debugState; //!< Debug mode On/Off
} outputTaskMailbox_t;

/**
 * @brief    UserInputTask
 * @details  This task is the control instance for the whole system.
 *           All register access is done in this Task. It reacts to user input,
 *           sets needed flags and delivers needed informatino to other tasks.
 * @param    pdata : Pointer to parameter structure (not used)
 * @retval   None
 */
void UserInputTask(void *pdata);

/**
 * @brief    Tests hardware
 * @details  A functions for just test some hardware features. Has no needed
 *           functionality for any Milestone
 * @retval   None
 */
void hardwareTest(void);

#endif // __USER_INPUT_TASK_H__
