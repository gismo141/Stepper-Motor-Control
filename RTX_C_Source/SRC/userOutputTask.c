/**
 ******************************************************************************
 * @file        userOutputTask.c
 * @author      Michael Riedel
 * @author      Marc Kossmann
 * @version     v0.1
 * @date        2.10.2014
 * @brief       Source code for User-Output-Task which communications with
 *              the user and shows him system information
 * @todo        finish hex update
 ******************************************************************************
 * @par History:
 * @details     21.10. Kossmann
 *              - first draft for milestone 1b
 * @details     30.10. Kossmann
 *              - added error handling for flags and mailboxes
 ******************************************************************************
 */

#include "../INC/userOutputTask.h"

extern OS_EVENT *outputTaskMailbox;

/**
 * @brief  UserOutputTask
 * @details
 * @param  pdata : Pointer to parameter structure (not used)
 * @retval None
 */
void UserOutputTask(void *pdata) {
  uint8_t err;
  outputTaskMailbox_t *outputTaskMboxContentPtr;
  uint32_t termMsgCounter = 2;
  bool oldMotorRunning = false;

  //Wait 2 seconds before starting
  OSTimeDlyHMSM(0, 0, 2, 0);

  while (1) {
    outputTaskMboxContentPtr = OSMboxPend(outputTaskMailbox, 0, &err);
    if (OS_NO_ERR == err && NULL != outputTaskMboxContentPtr) {
      //BEGIN of terminal output
      //once when motor is started
      if ((outputTaskMboxContentPtr->ctrlReg & CTRL_REG_RS_MSK) &&
          !oldMotorRunning ) {
        termMsgCounter++;
        oldMotorRunning = true;
        printTerminalInfo(outputTaskMboxContentPtr, &termMsgCounter);
      }
      //once when motor is stopped
      if (!(outputTaskMboxContentPtr->ctrlReg & CTRL_REG_RS_MSK) &&
          oldMotorRunning ) {
        termMsgCounter++;
        oldMotorRunning = false;
        printTerminalInfo(outputTaskMboxContentPtr, &termMsgCounter);
      }
      if (outputTaskMboxContentPtr->ctrlReg & CTRL_REG_RS_MSK) {
        printf_term("Steps: %i\n", outputTaskMboxContentPtr->stepsReg);
        OSTimeDlyHMSM(0, 0, 0, 100);
      }
      //END of terminal output
      //BEGIN of lcd ouput
      uint8_t modeBits = outputTaskMboxContentPtr->ctrlReg
                         & CTRL_REG_MODE_MSK;
      printf_lcd("M:%i%i%i%i      ", modeBits & 0x8, modeBits & 0x4,
                 modeBits & 0x2, modeBits & 0x1);
      printf_lcd("v0.1\n");
      if (outputTaskMboxContentPtr->ctrlReg & CTRL_REG_RS_MSK) {
        printf_lcd("Running    ");
      } else {
        printf_lcd("Stopped    ");
      }
      if (DEBUG == outputTaskMboxContentPtr->systemState.operationalStatus) {
        printf_lcd("Debug");
      }
      //END of lcd ouput
    } else {
      error("OUTPUT_TASK_MBOX_ERR: %i\n", err);
    }
    fflush_term();
    fflush_lcd();

  }
}

void printTerminalInfo(outputTaskMailbox_t *outputTaskMboxContentPtr,
                       void *termMsgCounter) {
  printf_term("Message Nr. #%i\n", termMsgCounter);
  if (outputTaskMboxContentPtr->ctrlReg & CTRL_REG_RS_MSK) {
    printf_term("Motor: Running ");
  } else {
    printf_term("Motor: Stopped ");
  }
  if ((outputTaskMboxContentPtr->ctrlReg & CTRL_REG_LR_MSK)) {
    printf_term("right\n");
  } else {
    printf_term("left\n");
  }
  printf_term("Mode: %X, ",
              outputTaskMboxContentPtr->ctrlReg & CTRL_REG_MODE_MSK);
  switch (outputTaskMboxContentPtr->systemState.activeUseCase) {
  case STOP:
    printf_term("Stop\n");
    break;
  case QUARTER_ROTATION:
    printf_term("1/4 Rotation\n");
    break;
  case HALF_ROTATION:
    printf_term("1/2 Rotation\n");
    break;
  case FULL_ROTATION:
    printf_term("1 Rotation\n");
    break;
  case DOUBLE_ROTATION:
    printf_term("2 Rotations\n");
    break;
  case CONTINOUS:
    printf_term("Continous Run\n");
    break;
  default:
    printf_term("Reserved\n");
    break;
  }
  printf_term("Interrupt-Enable: %i\n",
              outputTaskMboxContentPtr->ctrlReg & CTRL_REG_IE_MSK);
  printf_term("Interrupt-Request: %i\n",
              outputTaskMboxContentPtr->ctrlReg & CTRL_REG_IR_MSK);
  printf_term("Speed-Step: %i\n",
              outputTaskMboxContentPtr->speedReg);
  printf_term("Steps: %i\n", outputTaskMboxContentPtr->stepsReg);
}
