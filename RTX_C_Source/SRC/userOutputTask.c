/**
 ***************************************************************************
 * @file      	userOutputTask.c
 * @author  	Michael Riedel
 * @author  	Marc Kossmann
 * @version   	V0.1
 * @date      	21.10.2014
 * @brief   	Source code for User-Output-Task which communications with
 * 				the user and shows him system information
 ***************************************************************************
 * @par History:
 * @details V0.1 Riedel & Kossmann
 *			- first draft for milestone 1b
 ****************************************************************************
 */

#include "../INC/userOutputTask.h"

/**
 * @brief  UserOutputTask
 * @details
 * @param  pdata : Pointer to parameter structure (not used)
 * @retval None
 */
void UserOutputTask(void * pdata)
{
	//Wait 2 seconds before starting
	OSTimeDlyHMSM(0, 0, 2, 0);

	while(1)
	{
		OSTimeDlyHMSM(0, 0, 0, 100);
	}
}
