/**
  ***************************************************************************
  * @file      	heartbeatTask.c
  * @author  	Michael Riedel
  * @author  	Marc Kossmann
  * @version   	V0.1
  * @date      	22.10.2014
  * @brief
  ***************************************************************************
  * @par History:
  * @details V0.1 Riedel & Kossmann
  *			- first draft for milestone 1b
  ****************************************************************************
  */

#include "../INC/heartbeatTask.h"

OS_FLAG_GRP *heartbeatTaskFlagsGrp;

/**
  * @brief  HeartbeatDebugTask
  * @details 
  * @param  pdata : Pointer to parameter structure (not used)
  * @retval None
  */
 void HeartbeatTask(void * pdata)
{
	 OSTimeDlyHMSM(0, 0, 0, 100);
}
