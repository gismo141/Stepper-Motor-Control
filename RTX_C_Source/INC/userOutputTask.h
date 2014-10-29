/**
  *****************************************************************************
  * @file       userOutputTask.h
  * @author     Michael Riedel
  * @author     Marc Kossmann
  * @version    v0.1
  * @date       21.10.2014
  * @brief      Header file for userOutputTask.c
  * @details    Contains defines, includes, typedefs and declarations needed
  *             for this task.
  *****************************************************************************
  * @par History:
  * @details    21.10. Kossmann
  *             - first draft for milestone 1b
  *****************************************************************************
  */

#ifndef __USER_OUTPUT_TASK_H__
#define __USER_OUTPUT_TASK_H__

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "includes.h"
#include "../INC/userInputTask.h"

void UserOutputTask(void *pdata);
void printTerminalInfo(outputTaskMailbox_t *outputTaskMboxContentPtr,
		void* termMsgCounter);

#endif /*__USER_OUTPUT_TASK_H__*/
