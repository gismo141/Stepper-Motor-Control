/**
  *****************************************************************************
  * @file       heartbeatTask.c
  * @author     Michael Riedel
  * @author     Marc Kossmann
  * @version    v0.1
  * @date       30.10.2014
  * @brief
  *****************************************************************************
  * @par History:
  * @details    30.10. Riedel
  *             - first draft for milestone 1b
  * @todoH      add the hardware-access to state-machine
  *****************************************************************************
  */

#include "../INC/heartbeatTask.h"
#include "../INC/debugAndErrorOutput.h"

extern OS_FLAG_GRP *heartbeatTaskFlagsGrp;
heartbeatState_t heartbeatState;

void HeartbeatTask(void *pdata) {
  OS_FLAGS heartbeatFlag;
  heartbeatState =  FIRST;

  while (1) {
    heartbeatFlag = OSFlagPend(heartbeatTaskFlagsGrp,
                               DEBUG_ON_EVENT,
                               OS_FLAG_WAIT_SET_ANY + OS_FLAG_CONSUME, 10, &err);
    if (OS_NO_ERR == err) {
      if (heartbeatFlag & DEBUG_ON_EVENT)
        debugAndHeartbeat();
      nextHeartbeatStep();
    } else
      error("There was an error while waiting for the event!");
  }
}

void nextHeartbeatStep() {
  switch (heartbeatState) {
  case FIRST:
    // line
    // red led9 on
    heartbeatState = SECOND;
  case SECOND:
    // lower o
    // red led9 off
    heartbeatState = THIRD;
  case THIRD:
    // line
    // red led9 on
    heartbeatState = FOURTH;
  case FOURTH:
    // upper o
    // red led9 off
    heartbeatState = FIRST;
  default:
    OSTimeDlyHMSM(0, 0, 0, 250);
  }
}

void debugAndHeartbeat() {
  nextHeartbeatStep();
  
  
  if () {

  }
  nextHeartbeatStep();
  nextHeartbeatStep();
  // setIR();
}