/**
 ******************************************************************************
 * @file        dataTypes.h
 * @author      Michael Riedel
 * @author      Marc Kossmann
 * @version     v0.1
 * @date        13.11.2014
 * @brief       Header file for all own data types
 ******************************************************************************
 * @par History:
 * @details     13.11. Kossmann
 *              - put all own data types together in one file
 ******************************************************************************
 */

#ifndef __DATATYPES_H__
#define __DATATYPES_H__

/** @brief    general state of system */
typedef enum state {
  ERROR = 0, //!< system is not working properly
  FUNCTIONAL = 1, //!< everything is full functional
  DEBUG = 2, //!< debugging is active
} state_t;

/** @brief    general state of system */
typedef enum useCases {
  STOP = 0, //!< Motor not moving
  QUARTER_ROTATION = 1, //!< Motor turning 1/4 rotation
  HALF_ROTATION = 2, //!< Motor turning 1/2 rotation
  FULL_ROTATION = 3, //!< Motor turning one rotation
  DOUBLE_ROTATION = 4, //!< Motor turning two rotation
  CONTINOUS = 5 //!< Motor is continously running
} useCases_t;

/** @brief  Struct to store state of system and use case information */
typedef struct systemState {
  state_t operationalStatus; //!< operational status
  useCases_t activeUseCase; //!< active use case
} systemState_t;

/** @brief  Motor direction  */
typedef enum direction {
  LEFT = 0, RIGHT = 1
} direction_t;

/** @brief  Datatype of global variable for transmitting information from InputTask
 *  to OutputTask */
typedef struct outputTaskData {
  systemState_t systemState; //!< stores state of system
  uint32_t stepsReg; //!< copy of steps register
  uint8_t ctrlReg; //!< copy control register
  uint8_t speedReg; //!< copy of speed register
} outputTaskData_t;

/**
 * @brief   The state-machine for the heartbeat.
 *
 * @details | state  | red LED9 | HEX3-display |
 *          | ------ | -------- | ------------ |
 *          | FIRST  | on       | LINE         |
 *          | SECOND | off      | LOWER_O      |
 *          | THIRD  | on       | LINE         |
 *          | FOURTH | off      | UPPDER_O     |
 */
typedef enum heartbeatState {
  FIRST = 1, SECOND = 2, THIRD = 3, FOURTH = 4
} heartbeatState_t;


#endif
