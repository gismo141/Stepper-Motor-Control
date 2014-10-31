/**
  *****************************************************************************
  * @file       heartbeatTask.h
  * @author     Michael Riedel
  * @author     Marc Kossmann
  * @version    v0.1
  * @date       22.10.2014
  * @brief      Header file for heartbeatTask.c
  * @details    Contains defines, includes, typedefs and declarations needed
  *             for this task.
  *****************************************************************************
  * @par History:
  * @details    22.10. Kossmann
  *             - first draft for milestone 1b
  * @details    30.10. Riedel
  *             - moved DEBUG_ON_EVENT to events.h
  * @details    31.10. Riedel
  *             - added defines for HEX-segments
  *             - added declaration and documentation for sub-functions.
  * @details    31.10. Riedel & Kossmann
  *             - finilized heartbeat functionality
  *****************************************************************************
  */

#ifndef __HEARTBEAT_TASK_H__
#define __HEARTBEAT_TASK_H__

#include <stdio.h>
#include <stdint.h>

#include "includes.h"
#include "events.h"
#include "hardwareAccess.h"
#include "debugAndErrorOutput.h"

#define LOWER_O (0b1011100) //!< represents the letter o in the lower HEX-segments
#define UPPER_O (0b1100011) //!< represents the letter o in the upper HEX-segments
#define LINE    (0b1000000) //!< represents a centered bar in the HEX-segments

typedef enum heartbeatState {
  FIRST  = 0,
  SECOND = 1,
  THIRD  = 2,
  FOURTH = 3
} heartbeatState_t;

/**
  * @brief  HeartbeatDebugTask
  * @details
  * @param  pdata : Pointer to parameter structure (not used)
  * @retval None
  */
void HeartbeatTask(void *pdata);

/**
  * @brief  State machine for the heartbeat.
  * @details The state machine activates and deactivates the red LED9 and
  *               shows the defined HEX-values (LOWER_O, UPPER_O and LINE) on
  *               HEX3 accordingly after 1 second.
  * @param None
  * @retval None
  */
void nextHeartbeatStep(heartbeatState_t *heartbeatStatePtr);

/**
  * @brief  This function implements the debug-logic
  * @details In Debug-mode, the **registers are read and set** in predefined intervals.
  *               It automatically calls the nextHeartbeatStep-function to move the states.
  * @param  None
  * @retval None
  */
void debugAndHeartbeat(heartbeatState_t *heartbeatStatePtr);

#endif /*__HEARTBEAT_TASK_H__*/
