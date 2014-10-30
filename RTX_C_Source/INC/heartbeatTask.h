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
  *             30.10. Riedel
  *             - moved DEBUG_ON_EVENT to events.h
  *****************************************************************************
  */

#ifndef __HEARTBEAT_TASK_H__
#define __HEARTBEAT_TASK_H__

#include <stdio.h>
#include <stdint.h>
#include "includes.h"
#include "events.h"

/**
  * @brief  HeartbeatDebugTask
  * @details
  * @param  pdata : Pointer to parameter structure (not used)
  * @retval None
  */
void HeartbeatTask(void *pdata);

#endif /*__HEARTBEAT_TASK_H__*/
