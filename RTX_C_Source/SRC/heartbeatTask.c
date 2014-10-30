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
  *****************************************************************************
  */

#include "../INC/heartbeatTask.h"
#include "../INC/debugAndErrorOutput.h"

OS_FLAG_GRP *heartbeatTaskFlagsGrp;

void HeartbeatTask(void *pdata) {
  while (1) {
    heartbeatFlag = OSFlagPend(heartbeatTaskFlagsGrp,
                               (DEBUG_ON_EVENT | TURN_LEFT_EVENT | TURN_RIGHT_EVENT),
                               OS_FLAG_WAIT_SET_ANY + OS_FLAG_CONSUME, 10, &err);

    if (OS_NO_ERR == err) {

      if (heartbeatFlag & DEBUG_ON_EVENT)
        debugAndHeartbeat(heartbeatFlag);
      nextHeartbeatStep();
    } else
      error("There was an error while waiting for the event!");
  }
}

void nextHeartbeatStep(void) {
  OSTimeDlyHMSM(0, 0, 0, 250);
}

void debugAndHeartbeat(void) {
  nextHeartbeatStep();
  runFlag = OSFlagPend(userInputTaskFlagsGrp,
                       (KEY0_RS_EVENT | KEY2_MINUS_EVENT | KEY3_PLUS_EVENT |
                        MOTOR_STOP_EVENT),
                       OS_FLAG_WAIT_SET_ANY + OS_FLAG_CONSUME, 10, &err);

  if (OS_NO_ERR == err) {
    if (runFlag & KEY0_RS_EVENT)

    }
  nextHeartbeatStep();
  nextHeartbeatStep();
  // setIR();
}