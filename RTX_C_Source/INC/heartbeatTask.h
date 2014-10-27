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
  * @details    v0.1 Riedel & Kossmann
  *             - first draft for milestone 1b
  *****************************************************************************
  */

#ifndef __HEARTBEAT_TASK_H__
#define __HEARTBEAT_TASK_H__

#include <stdio.h>
#include <stdint.h>
#include "includes.h"

#define DEBUG_ON_FLAG       (0x1)

void HeartbeatTask(void *pdata);

#endif /*__HEARTBEAT_TASK_H__*/
