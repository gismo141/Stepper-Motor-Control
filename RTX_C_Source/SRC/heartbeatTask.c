/**
 *****************************************************************************
 * @file        heartbeatTask.c
 * @author      Michael Riedel
 * @author      Marc Kossmann
 * @version     v1.0.0
 * @date        11.11.2014
 * @brief       Source code of heartbeatTask which shows that scheduling is
 *              working. Also used for debuging.
 *****************************************************************************
 * @par History:
 * @details     v0.1.0 30.10.2014 Riedel
 *              - first draft for milestone 1b
 * @details     v0.1.1 31.10.2014 Riedel
 *              - added hardware-access to heartbeat
 * @details     v0.1.2 31.10.2014 Riedel & Kossmann
 *              - finilized heartbeat functionality
 * @details     v0.1.3 02.11.2014 Riedel
 *              - finalized Debug functionality
 * @details     v1.0.0 11.11.2014 Riedel & Kossmann
 *              - switched stepsReg-inc/dec in debug-mode
 *****************************************************************************
 */

#include "../INC/heartbeatTask.h"

extern OS_FLAG_GRP *heartbeatTaskFlagsGrp;

void HeartbeatTask(void *pdata) {
  uint8_t err;
  OS_FLAGS heartbeatFlag;
  bool debug = false;
  heartbeatState_t heartbeatState = FIRST;
  heartbeatState_t *heartbeatStatePtr = &heartbeatState;

  while (1) {
    heartbeatFlag = OSFlagPend(heartbeatTaskFlagsGrp, (DEBUG_ON_EVENT | DEBUG_OFF_EVENT),
        OS_FLAG_WAIT_SET_ANY + OS_FLAG_CONSUME, 10, &err);
    if (OS_NO_ERR != err && OS_TIMEOUT != err) {
      error("There was an error while waiting for the event!");
    } else {
      if (heartbeatFlag & DEBUG_ON_EVENT){
        debug = true;
      }else if(heartbeatFlag & DEBUG_OFF_EVENT){
        debug = false;
      }
      if(debug){
        debugAndHeartbeat(heartbeatStatePtr);
      }else{
        nextHeartbeatStep(heartbeatStatePtr);
      }
    }
  }
}

void nextHeartbeatStep(heartbeatState_t *heartbeatStatePtr) {
  switch (*heartbeatStatePtr) {
  case FIRST:
    PIO_HEX3_Set(LINE);
    PIO_LED9_Set(LED_ON);
    *heartbeatStatePtr = SECOND;
    break;
  case SECOND:
    PIO_HEX3_Set(LOWER_O);
    PIO_LED9_Set(LED_OFF);
    *heartbeatStatePtr = THIRD;
    break;
  case THIRD:
    PIO_HEX3_Set(LINE);
    PIO_LED9_Set(LED_ON);
    *heartbeatStatePtr = FOURTH;
    break;
  case FOURTH:
    PIO_HEX3_Set(UPPER_O);
    PIO_LED9_Set(LED_OFF);
    *heartbeatStatePtr = FIRST;
    break;
  default:
    break;
  }
  OSTimeDlyHMSM(0, 0, 1, 0);
}

void debugAndHeartbeat(heartbeatState_t *heartbeatStatePtr) {
  uint32_t ctrlReg = 0;
  uint8_t stepCounter = 0;

  while (stepCounter < 4) {
    ctrlReg = ctrlRegGet();
    // Is Run-Bit == 1? (RUN)
    if (ctrlReg & CTRL_REG_RS_MSK) {
      // Is Dir-Bit == 1? (RIGHT)
      if (ctrlReg & CTRL_REG_LR_MSK) {
        stepsRegSet(stepsRegGet() + 10);
      }else{
        stepsRegSet(stepsRegGet() - 10);
      }
    }

    // Debug things done -> next step of heartbeat-cycle...
    ++stepCounter;
    nextHeartbeatStep(heartbeatStatePtr);
  }
  // Set IR
  ctrlRegBitSet(CTRL_REG_IR_MSK);
}
