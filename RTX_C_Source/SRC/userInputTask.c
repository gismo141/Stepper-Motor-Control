/**
  *****************************************************************************
  * @file       userInputTask.c
  * @author     Michael Riedel
  * @author     Marc Kossmann
  * @version    v0.1
  * @date       22.10.2014
  * @brief      Source code for User-Input-Task which is highest instance,
  *             reacts to user input and controls register and hardware access
  * @todo		introduce error-handling like in User-Output-Task
  *****************************************************************************
  * @par History:
  * @details    22.10. Kossmann
  *             - first draft for milestone 1b
  *****************************************************************************
  */

#include "../INC/userInputTask.h"

OS_FLAG_GRP *userInputTaskFlagsGrp;
extern OS_FLAG_GRP *heartbeatTaskFlagsGrp;

OS_EVENT *switchesMailbox;
OS_EVENT *outputTaskMailbox;

/**
  * @brief  UserInputTask
  * @details 
  * @param  pdata : Pointer to parameter structure (not used)
  * @retval None
  */
void UserInputTask(void *pdata)
{
	uint8_t  err;
	OS_FLAGS newFlag;

	//virtual register copies
	uint32_t ctrlReg = 0;
	uint32_t speedReg = 0;
	uint32_t stepsReg = 0;

	//variable to store position of switches
	uint32_t switchesReg = 0;

	//create state variables
    motorState_t motorState =
    {
			.direction = LEFT,
			.running = false
	};
    systemState_t systemState =
    {
			.operationalStatus = FUNCTIONAL,
			.activeUseCase = STOP
	};

	//create mailboxes
    outputTaskMailbox_t outputTaskMailboxContent =
    {
			.ctrlReg = 0,
			.speedReg = 0,
			.stepsReg = 0,
			.debugState = false
	};
	switchesMailbox = OSMboxCreate(NULL);
	outputTaskMailbox = OSMboxCreate(NULL);

	while (0)
	{
		//check for new events
		newFlag = OSFlagPend(userInputTaskFlagsGrp,
						(KEY0_RS_EVENT | KEY2_MINUS_EVENT | KEY3_PLUS_EVENT |
						MOTOR_STOP_EVENT),
						OS_FLAG_WAIT_SET_ANY + OS_FLAG_CONSUME, 10, &err);
        if (OS_NO_ERR == err)
        {
			//check for key0 event
            if (newFlag & KEY0_RS_EVENT)
            {
				//toogle RS-Bit in ctrlReg
                if (ctrlReg & CTRL_REG_RS_MSK)  //RS-Bit is 1
                {
					ctrlReg &= ~(CTRL_REG_RS_MSK);
                }
                else                            //RS-Bit is 0
                {
					ctrlReg |= CTRL_REG_RS_MSK;
				}
			}
			//check for key2 event (decrease steps)
            if (newFlag & KEY2_MINUS_EVENT)
            {
                if (!ctrlReg & CTRL_REG_RS_MSK) //allow modification only when motor stopped
					speedReg--;
			}
			//check for key3 event (increase steps)
            if (newFlag & KEY3_PLUS_EVENT)
            {
                if (!ctrlReg & CTRL_REG_RS_MSK) //allow modification only when motor stopped
					speedReg++;
			}
			//check for motor stop event
            if (newFlag & MOTOR_STOP_EVENT)
            {
				ctrlReg &= ~(CTRL_REG_RS_MSK);
			}
		}

		//check for new switches message
		OSMboxPend(switchesMailbox, 10, &err);
        if (OS_NO_ERR == err)
        {
			switchesReg = (uint32_t)switchesMailbox->OSEventPtr;
		}
		//evaluate switch positions
        if (switchesReg & SWITCH_LR_MSK)
        {
			ctrlReg |= CTRL_REG_LR_MSK;
        }
        else
        {
			ctrlReg &= ~(CTRL_REG_LR_MSK);
		}
        if (!ctrlReg & CTRL_REG_RS_MSK) //allow modification only when motor stopped
        {
            ctrlReg &= ~(SWITCH_MODE_MSK);              //clear mode bits
			ctrlReg |= (switchesReg & SWITCH_MODE_MSK); //set mode bits
		}

        if (switchesReg & SWITCH_DEBUG_MSK)
        {
			systemState.operationalStatus = DEBUG;
			OSFlagPost(heartbeatTaskFlagsGrp, DEBUG_ON_EVENT, OS_FLAG_SET, NULL);
		}

		//change systemState when Run-Bit = 1
        if (ctrlReg & CTRL_REG_RS_MSK)
        {
            if (((ctrlReg & CTRL_REG_MODE_MSK) & MODE_STOP_CON_RUN_MSK) ==
                    MODE_STOP)
            {
				systemState.activeUseCase = STOP;
            }
            else if (((ctrlReg & CTRL_REG_MODE_MSK) & MODE_STOP_CON_RUN_MSK) ==
                     MODE_CON_RUN)
            {
				systemState.activeUseCase = CONTINOUS;
            }
            else if ((ctrlReg & CTRL_REG_MODE_MSK) == MODE_CH_OF_ST_1_4)
            {
				systemState.activeUseCase = QUARTER_ROTATION;
            }
            else if ((ctrlReg & CTRL_REG_MODE_MSK) == MODE_CH_OF_ST_1_2)
            {
				systemState.activeUseCase = HALF_ROTATION;
            }
            else if ((ctrlReg & CTRL_REG_MODE_MSK) == MODE_CH_OF_ST_1)
            {
				systemState.activeUseCase = FULL_ROTATION;
            }
            else if ((ctrlReg & CTRL_REG_MODE_MSK) == MODE_CH_OF_ST_2)
            {
				systemState.activeUseCase = DOUBLE_ROTATION;
			}
		}

		//update content of mailbox to outputTask
		outputTaskMailboxContent.ctrlReg = ctrlReg;
		outputTaskMailboxContent.speedReg = speedReg;
		outputTaskMailboxContent.stepsReg = stepsReg;
        if (systemState.operationalStatus == DEBUG)
        {
			outputTaskMailboxContent.debugState = true;
        }
        else
        {
			outputTaskMailboxContent.debugState = false;
		}
		OSMboxPost(outputTaskMailbox, &outputTaskMailboxContent);
	}
}
