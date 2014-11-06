/**
 *****************************************************************************
 * @file        userInputTask.c
 * @author      Michael Riedel
 * @author      Marc Kossmann
 * @version     v0.1
 * @date        22.10.2014
 * @brief       Source code for User-Input-Task which is highest instance, reacts
 *              to user input and controls register and hardware access
 * @todoL       `systemState` should be read by another function to symbolize the
 *              execution of the MCU later in VHDL.
 *****************************************************************************
 * @par History:
 * @details     22.10. Kossmann
 *              - first draft for milestone 1b
 * @details     30.10. Kossmann
 *              - added error handling for flags and mailboxes
 *              - changed IPC with switches ISR to message queue
 * @details     30.10. Riedel
 *              - changed DEBUG_ON_FLAG to DEBUG_ON_EVENT
 * @details     31.10. Riedel & Kossmann
 *              - moved hardwareTest() and initial printouts into userInputTask
 *                because the need OS running
 * @details     03.11. Kossmann
 *              - used new register-access via inline functions of registerAccess.h
 * @details     04.11. Riedel & Kossmann
 *              - reduced messageQueue size to 1
 * @details     04.11. Kossmann
 *              - used the right masks for evaluating switches
 * @details     06.11. Riedel
 *              - added usage of new LCD-functions
 *****************************************************************************
 */

#include "../INC/userInputTask.h"

extern OS_FLAG_GRP *userInputTaskFlagsGrp;
extern OS_FLAG_GRP *heartbeatTaskFlagsGrp;

OS_EVENT *switchesMsgQueue;   //!< Message Queue for transmitting the switches values
OS_EVENT *outputTaskMailbox;  //!< Mailbox for transmitting information from InputTask to OutputTask
OS_EVENT *registerMutex;      //!< Mutex for protected access to the registers

void UserInputTask(void *pdata) {
  uint8_t err;
  OS_FLAGS newFlag;

  bool newInput = false;

  // register copies to work with
  uint8_t ctrlReg = 0;
  uint8_t speedReg = 0;
  uint32_t stepsReg = 0;

  // variable to store position of switches
  uint32_t switchesReg = 0;

  systemState_t systemState = { .operationalStatus = FUNCTIONAL,
                                .activeUseCase = STOP
                              };

  // declare mailbox
  outputTaskMailbox_t outputTaskMailboxContent = { .ctrlReg = 0, .speedReg = 0,
                                                   .stepsReg = 0, .debugState = false
                                                 };

  // declare message and messageQueue
  void *msg;
  void *msgQueue[1];

  // show initial terminal msg
  printf_term("Stepper Motor - System on a Chip 2014\n");
  printf_term("Michael Riedel & Marc Kossmann\n");
  printf_term("Version 0.1 - 28.10.2014\n");

  // init LC-Display and show initial screen
  init_lcd();
  setPos_lcd(4, 1);
  printf_lcd("SoC 2014");
  setPos_lcd(1, 2);
  printf_lcd("Stepper-Control");
  fflush_lcd();

  //    hardwareTest();

  // create OS resources
  registerMutex = OSMutexCreate(3, &err);
  if ((OS_EVENT *) 0 == registerMutex || OS_NO_ERR != err) {
    error("REGISTER_MUTEX_CREATE_ERR: %i\n", err);
  } else {
    switchesMsgQueue = OSQCreate(msgQueue, 1);
    outputTaskMailbox = OSMboxCreate(NULL);
    if ((OS_EVENT *) 0 == switchesMsgQueue
        || (OS_EVENT *) 0 == outputTaskMailbox) {
      error("INPUT_TASK_MBOX_MSGQ_ERR: %i\n", err);
    } else {
      while (1) {
        // get register copies
        ctrlReg = ctrlRegGet();
        speedReg = speedRegGet();
        stepsReg = stepsRegGet();
        // check for new events
        newFlag =
          OSFlagPend(userInputTaskFlagsGrp,
                     (KEY0_RS_EVENT | KEY2_MINUS_EVENT | KEY3_PLUS_EVENT
                      | MOTOR_STOP_EVENT),
                     OS_FLAG_WAIT_SET_ANY + OS_FLAG_CONSUME, 10, &err);
        if (OS_NO_ERR == err) {
          newInput = true;
          // check for key0 event
          if (newFlag & KEY0_RS_EVENT) {
            // toogle RS-Bit in ctrlReg
            if (ctrlReg & CTRL_REG_RS_MSK) { //RS-Bit is 1
              ctrlReg &= ~(CTRL_REG_RS_MSK);
            } else { //RS-Bit is 0
              ctrlReg |= CTRL_REG_RS_MSK;
            }
          }
          // check for key2 event (decrease steps)
          if (newFlag & KEY2_MINUS_EVENT) {
            // is motor stopped?
            if (!(ctrlReg & CTRL_REG_RS_MSK)) {
              if (0 != speedReg) {
                speedReg--;
              }
            }
          }
          // check for key3 event (increase steps)
          if (newFlag & KEY3_PLUS_EVENT) {
            // is motor stopped?
            if (!(ctrlReg & CTRL_REG_RS_MSK)) {
              if (7 != speedReg) {
                speedReg++;
              }
            }
          }
          // check for motor stop event
          if (newFlag & MOTOR_STOP_EVENT) {
            ctrlReg &= ~(CTRL_REG_RS_MSK);
          }
        } else if (OS_TIMEOUT != err) {
          error("INPUT_TASK_FLAG_ERR: %i\n", err);
        }

        // check for new switches message
        msg = OSQPend(switchesMsgQueue, 10, &err);
        if (OS_NO_ERR == err) {
          newInput = true;
          switchesReg = (uint32_t) msg;
          // evaluate switch positions
          if (switchesReg & PIO_SW_LR_MSK) {
            ctrlReg |= CTRL_REG_LR_MSK;
          } else {
            ctrlReg &= ~(CTRL_REG_LR_MSK);
          }
          // is motor stopped?
          if (!(ctrlReg & CTRL_REG_RS_MSK)) {
            // then clear mode bits ...
            ctrlReg &= ~(PIO_SW_MODE_MSK);
            // ... and set mode bits
            ctrlReg |= (switchesReg & PIO_SW_MODE_MSK);
          }
          if (switchesReg & PIO_SW_DEBUG_MSK) {
            systemState.operationalStatus = DEBUG;
            err = OSFlagPost(heartbeatTaskFlagsGrp, DEBUG_ON_EVENT, OS_FLAG_SET,
                             NULL);
            if (OS_NO_ERR != err) {
              error("INPUT_TASK_FLAG_ERR: %i\n", err);
            }
          }
        } else if (OS_TIMEOUT != err) {
          error("INPUT_TASK_MBOX_ERR: %i\n", err);
        }

        // change systemState when Run-Bit = 1
        if (ctrlReg & CTRL_REG_RS_MSK) {
          if (((ctrlReg & CTRL_REG_MODE_MSK) & MODE_STOP_CON_RUN_MSK)
              == MODE_STOP) {
            systemState.activeUseCase = STOP;
          } else if (((ctrlReg & CTRL_REG_MODE_MSK) & MODE_STOP_CON_RUN_MSK)
                     == MODE_CON_RUN) {
            systemState.activeUseCase = CONTINOUS;
          } else if ((ctrlReg & CTRL_REG_MODE_MSK) == MODE_CH_OF_ST_1_4) {
            systemState.activeUseCase = QUARTER_ROTATION;
          } else if ((ctrlReg & CTRL_REG_MODE_MSK) == MODE_CH_OF_ST_1_2) {
            systemState.activeUseCase = HALF_ROTATION;
          } else if ((ctrlReg & CTRL_REG_MODE_MSK) == MODE_CH_OF_ST_1) {
            systemState.activeUseCase = FULL_ROTATION;
          } else if ((ctrlReg & CTRL_REG_MODE_MSK) == MODE_CH_OF_ST_2) {
            systemState.activeUseCase = DOUBLE_ROTATION;
          }
        }
        if (newInput) {
          // update content of mailbox to outputTask
          outputTaskMailboxContent.ctrlReg = ctrlReg;
          outputTaskMailboxContent.speedReg = speedReg;
          outputTaskMailboxContent.stepsReg = stepsReg;
          if (systemState.operationalStatus == DEBUG) {
            outputTaskMailboxContent.debugState = true;
          } else {
            outputTaskMailboxContent.debugState = false;
          }
          err = OSMboxPost(outputTaskMailbox, &outputTaskMailboxContent);
          if (OS_NO_ERR != err) {
            error("INPUT_TASK_MBOX_ERR: %i\n", err);
          }
          // write values of register copies into real registers
          ctrlRegSet(ctrlReg);
          speedRegSet(speedReg);
          newInput = false;
        }
      }
    }
  }
}

void hardwareTest(void) {
  uint32_t i;

  PIO_HEX0_Set(0x0);
  PIO_HEX1_Set(0x0);
  PIO_HEX2_Set(0x0);
  PIO_HEX3_Set(0x0);

  printf_term("Starting hardwareTest!\n");
  clear_lcd();
  setPos_lcd(1, 1);
  printf_lcd("Start hwTest!");

  printf_term("Begin with LED9 flashing on-off\n");
  setPos_lcd(1, 2);
  printf_lcd("LED9 on-off");
  fflush_lcd();
  OSTimeDlyHMSM(0, 0, 1, 0);
  PIO_LED9_Set(0x1);
  OSTimeDlyHMSM(0, 0, 1, 0);
  PIO_LED9_Set(0x0);
  OSTimeDlyHMSM(0, 0, 1, 0);
  PIO_LED9_Set(0x1);
  OSTimeDlyHMSM(0, 0, 1, 0);
  PIO_LED9_Set(0x0);
  OSTimeDlyHMSM(0, 0, 1, 0);

  printf_term("HEX-Display 0 all on\n");
  setPos_lcd(1, 2);
  printf_lcd("HEX0 all on");
  fflush_lcd();
  OSTimeDlyHMSM(0, 0, 1, 0);
  PIO_HEX0_Set(0x7F);
  OSTimeDlyHMSM(0, 0, 1, 0);

  printf_term("HEX-Display 1 all on\n");
  setPos_lcd(1, 2);
  printf_lcd("HEX1 all on");
  fflush_lcd();
  fflush_lcd();
  PIO_HEX1_Set(0x7F);
  OSTimeDlyHMSM(0, 0, 1, 0);

  printf_term("HEX-Display 2 all on\n");
  setPos_lcd(1, 2);
  printf_lcd("HEX2 all on");
  fflush_lcd();
  PIO_HEX2_Set(0x7F);
  OSTimeDlyHMSM(0, 0, 1, 0);

  printf_term("HEX-Display 3 all on\n");
  setPos_lcd(1, 2);
  printf_lcd("HEX1 all on");
  fflush_lcd();
  PIO_HEX3_Set(0x7F);
  OSTimeDlyHMSM(0, 0, 1, 0);

  PIO_HEX0_Set(0x0);
  PIO_HEX1_Set(0x0);
  PIO_HEX2_Set(0x0);
  PIO_HEX3_Set(0x0);

  printf_term("HEX-Display 0 shift on-off\n");
  setPos_lcd(1, 2);
  printf_lcd("HEX0 shift test\n");
  fflush_lcd();
  for (i = 0; i < 7; i++) {
    PIO_HEX0_Set(pow(2, i));
    OSTimeDlyHMSM(0, 0, 0, 500);
    PIO_HEX0_Set(0x0);
    OSTimeDlyHMSM(0, 0, 0, 500);
  }
  OSTimeDlyHMSM(0, 0, 0, 500);
  PIO_HEX0_Set(0x0);
  clear_lcd();
}
