/**
 ******************************************************************************
 * @file        userOutputTask.c
 * @author      Michael Riedel
 * @author      Marc Kossmann
 * @version     v1.0
 * @date        11.11.2014
 * @brief       Source code for User-Output-Task which communications with
 *              the user and shows him system information
 ******************************************************************************
 * @par History:
 * @details     21.10. Kossmann
 *              - first draft for milestone 1b
 * @details     30.10. Kossmann
 *              - added error handling for flags and mailboxes
 * @details     06.11. Riedel
 *              - added usage of new LCD-functions
 * @details     11.11. Riedel & Kossmann
 *              - moved 1 second wait to userInputTask
 ******************************************************************************
 */

#include "../INC/userOutputTask.h"

extern OS_EVENT *outputTaskMailbox;

void UserOutputTask(void *pdata) {
  uint8_t err;
  uint8_t modeBits;
  outputTaskMailbox_t *outputTaskMboxContentPtr;
  uint32_t termMsgCounter = 2;
  bool oldMotorRunning = false;

  // Wait 2 seconds before starting
  OSTimeDlyHMSM(0, 0, 2, 0);

  while (1) {
    outputTaskMboxContentPtr = OSMboxPend(outputTaskMailbox, 0, &err);
    if (OS_NO_ERR == err && NULL != outputTaskMboxContentPtr) {

      /***********************************************************************/
      /* terminal output                                                     */
      /***********************************************************************/
      // once when motor is started
      if ((outputTaskMboxContentPtr->ctrlReg & CTRL_REG_RS_MSK) &&
          !oldMotorRunning ) {
        oldMotorRunning = true;
        printTerminalInfo(outputTaskMboxContentPtr, &termMsgCounter);
      }
      // once when motor is stopped
      if (!(outputTaskMboxContentPtr->ctrlReg & CTRL_REG_RS_MSK) &&
          oldMotorRunning ) {
        oldMotorRunning = false;
        printTerminalInfo(outputTaskMboxContentPtr, &termMsgCounter);
      }
      // output of stepsReg every second when motor running
      if (outputTaskMboxContentPtr->ctrlReg & CTRL_REG_RS_MSK) {
        printf_term("Steps: %i\n", outputTaskMboxContentPtr->stepsReg);
      }
      /***********************************************************************/

      /***********************************************************************/
      /* lcd output                                                          */
      /***********************************************************************/
      clear_lcd();
      modeBits = (outputTaskMboxContentPtr->ctrlReg
                         & CTRL_REG_MODE_MSK) >> 2;
      setPos_lcd(1, 1);
      printf_lcd("M:%i%i%i%i", (modeBits & 0x8)>> 3, (modeBits & 0x4)>> 2,
                 (modeBits & 0x2)>>1, (modeBits & 0x1));
      setPos_lcd(1, 13);
      printf_lcd("v%s", VERSION);
      if (outputTaskMboxContentPtr->ctrlReg & CTRL_REG_RS_MSK) {
        setPos_lcd(2, 1);
        printf_lcd("Running");
      } else {
        setPos_lcd(2, 1);
        printf_lcd("Stopped");
      }
      if (DEBUG == outputTaskMboxContentPtr->systemState.operationalStatus) {
        setPos_lcd(2, 12);
        printf_lcd("Debug");
      }
      fflush_lcd();
      /***********************************************************************/

      /***********************************************************************/
      /* hex-display output                                                  */
      /***********************************************************************/
      // display direction on hex0
      if(outputTaskMboxContentPtr->ctrlReg & CTRL_REG_LR_MSK){
        PIO_HEX0_Set(HEX_RIGHT);
      }else{
        PIO_HEX0_Set(HEX_LEFT);
      }
      // display mode on hex1
      switch(outputTaskMboxContentPtr->systemState.activeUseCase){
      case QUARTER_ROTATION:
        PIO_HEX1_Set(HEX_ZERO);
        break;
      case HALF_ROTATION:
        PIO_HEX1_Set(HEX_ONE);
        break;
      case FULL_ROTATION:
        PIO_HEX1_Set(HEX_TWO);
        break;
      case DOUBLE_ROTATION:
        PIO_HEX1_Set(HEX_THREE);
        break;
      default:
        PIO_HEX1_Set(HEX_LINE);
        break;
      }
      switch(outputTaskMboxContentPtr->speedReg){
        case 1:
          PIO_HEX2_Set(HEX_ONE);
          break;
        case 2:
          PIO_HEX2_Set(HEX_TWO);
          break;
        case 3:
          PIO_HEX2_Set(HEX_THREE);
          break;
        case 4:
          PIO_HEX2_Set(HEX_FOUR);
          break;
        case 5:
          PIO_HEX2_Set(HEX_FIVE);
          break;
        case 6:
          PIO_HEX2_Set(HEX_SIX);
          break;
        case 7:
          PIO_HEX2_Set(HEX_SEVEN);
          break;
        case 8:
          PIO_HEX2_Set(HEX_EIGHT);
          break;
        case 9:
          PIO_HEX2_Set(HEX_NINE);
          break;
        default:
          PIO_HEX2_Set(HEX_ZERO);
          break;
      }
      /***********************************************************************/

    } else {
      error("OUTPUT_TASK_MBOX_ERR: %i\n", err);
    }
    fflush_term();
  }
}

void printTerminalInfo(outputTaskMailbox_t *outputTaskMboxContentPtr,
    uint32_t *termMsgCounterPtr) {
  uint8_t modeBits;
  printf_term("Message Nr. #%i\n", *termMsgCounterPtr);
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
  modeBits = (outputTaskMboxContentPtr->ctrlReg
                     & CTRL_REG_MODE_MSK) >> 2;
  printf_term("M:%i%i%i%i", (modeBits & 0x8)>> 3, (modeBits & 0x4)>> 2,
             (modeBits & 0x2)>>1, (modeBits & 0x1));
  switch (outputTaskMboxContentPtr->systemState.activeUseCase) {
  case STOP:
    printf_term("Stop\n");
    break;
  case QUARTER_ROTATION:
    printf_term("Chain of Steps - 1/4 rotation\n");
    break;
  case HALF_ROTATION:
    printf_term("Chain of Steps - 1/2 rotation\n");
    break;
  case FULL_ROTATION:
    printf_term("Chain of Steps - 1 rotation\n");
    break;
  case DOUBLE_ROTATION:
    printf_term("Chain of Steps - 2 rotations\n");
    break;
  case CONTINOUS:
    printf_term("Continous Run\n");
    break;
  default:
    printf_term("Reserved\n");
    break;
  }
  printf_term("Interrupt-Enable: %i\n",
      (outputTaskMboxContentPtr->ctrlReg & CTRL_REG_IE_MSK)>> 6);
  printf_term("Interrupt-Request: %i\n",
      (outputTaskMboxContentPtr->ctrlReg & CTRL_REG_IR_MSK)>> 7);
  printf_term("Speed-Step: %i\n", outputTaskMboxContentPtr->speedReg);
  printf_term("Steps: %i\n", outputTaskMboxContentPtr->stepsReg);
  (*termMsgCounterPtr)++;
}
