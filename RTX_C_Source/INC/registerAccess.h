/**
 *****************************************************************************
 * @file       registerAccess.h
 * @author     Michael Riedel
 * @author     Marc Kossmann
 * @version    v1.0
 * @date       11.11.2014
 * @brief      Header file with inline functions to access the registers that
 *             are used by the Stepper-Motor-Control VHDL-component.
 * @details    The bitmask is as follows:
 *  | Bit  | Function| Usage                                                             |
 *  | :--: | :-----: | :-----------------------------------------------------------------|
 *  | 7    | IR      | The Interrupt that will be set via the VHDL Stepper-Motor-Control |
 *  | 6    | IE      | IE (Interrupt Enable) to enable the interrupt for Chain of Steps  |
 *  | 2..5 | MODE    | Mode according to table below                                     |
 *  | 1    | LR      | Turn the motor Left (0) or Right (1)                              |
 *  | 0    | RS      | Run (1) or Stop (0) the motor                                     |
 *
 *  | Modes | Effect                        |
 *  | :---: | :-----------------------------|
 *  | xx00  | Stop                          |
 *  | xx01  | Continuous Run                |
 *  | 0010  | Chain of Steps (1/4 rotation) |
 *  | 0110  | Chain of Steps (1/2 rotation) |
 *  | 1010  | Chain of Steps (1 rotation)   |
 *  | 1110  | Chain of Steps (2 rotations)  |
 *  | other | reserved                      |
 *****************************************************************************
 * @par History:
 * @details    02.11. Riedel
 *             - first draft for milestone 1b
 * @details    03.11. Kossmann
 *             - moved all register masks in this file
 *             - added registerMutex for save access
 * @details    04.11. Kossmann
 *             - removed switches masks defines. They already exist in
 *             hardwareAccess.h
 * @details    11.11. Riedel & Kossmann
 *             - Moved register masks to headers' documentation
 *             - Added ctrlRegBitClr and ctrlRegBitSet functions for bitwise control
 *****************************************************************************
 */

#ifndef __REGISTER_ACCESS_H__
#define __REGISTER_ACCESS_H__

#include <stdint.h>
#include "includes.h"
#include "debugAndErrorOutput.h"

#define CTRL_REG_RS_MSK       (0b00000001)  //!< Run (1) or Stop (0)-Bit
#define CTRL_REG_LR_MSK       (0b00000010)  //!< Left (0) or Right (1)-Bit
#define CTRL_REG_MODE_MSK     (0b00111100)  //!< Mode-combination according to ctrlRegSet()-function
#define CTRL_REG_IE_MSK       (0b01000000)  //!< Interrupt-Enable Bit
#define CTRL_REG_IR_MSK       (0b10000000)  //!< Interrupt-Request Bit
#define MODE_STOP_CON_RUN_MSK (0b0011)      //!< Bit 0 & 1 only
#define MODE_STOP             (0b0000)      //!< MODE_STOP_CON_RUN_MSK; Must be `0b00`
#define MODE_CON_RUN          (0b0001)      //!< Use "MODE_STOP_CON_RUN_MSK"; Must be `0b01`
#define MODE_CH_OF_ST_1_4     (0b0010)      //!< Bits must be `0b0010`
#define MODE_CH_OF_ST_1_2     (0b0110)      //!< Bits must be `0b0110`
#define MODE_CH_OF_ST_1       (0b1010)      //!< Bits must be `0b1010`
#define MODE_CH_OF_ST_2       (0b1110)      //!< Bits must be `0b1110`

extern OS_EVENT *registerMutex;

uint8_t   temporaryCtrlReg;           //!< Temporary control-register (only for milestone 1b)
uint32_t  temporaryStepsReg;          //!< Temporary steps-register (only for milestone 1b)
uint8_t   temporarySpeedReg;          //!< Temporary speed-register (only for milestone 1b)

/**
 * @brief   Overwrites the complete CtrlReg
 * @details CtrlReg content is stored in external register interface
 * @param   newCtrlReg The new register-content to set
 */
static __inline__ void ctrlRegSet(uint8_t newCtrlReg) {
  uint8_t err;
  OSMutexPend(registerMutex, 0, &err);
  if (OS_NO_ERR == err) {
    temporaryCtrlReg = newCtrlReg;
  } else {
    error("CTRL_REG_MUT_PEND_ERR: %i\n", &err);
  }
  err = OSMutexPost(registerMutex);
  if (OS_NO_ERR != err) {
    error("CTRL_REG_MUT_POST_ERR: %i\n", &err);
  }
}

/**
 * @brief   Returns the actual content of the control-register.
 * @details CtrlReg content is stored in external register interface
 * @return  The actual content of the control-register
 */
static __inline__ uint8_t ctrlRegGet(void) {
  uint8_t err;
  uint8_t ctrlReg;
  OSMutexPend(registerMutex, 0, &err);
  if (OS_NO_ERR == err) {
    ctrlReg = temporaryCtrlReg;
  } else {
    error("CTRL_REG_MUT_PEND_ERR: %i\n", &err);
  }
  err = OSMutexPost(registerMutex);
  if (OS_NO_ERR != err) {
    error("CTRL_REG_MUT_POST_ERR: %i\n", &err);
  }
  return ctrlReg;
}

/**
 * @brief   Sets the CtrlReg bitwise
 * @details Writes into ctrlSetReg in register interface which modifies the
 *          ctrlReg accordingly.
 * @param   bitsToSet Bits to set in CtrlReg
 */
static __inline__ void ctrlRegBitSet(uint8_t bitsToSet) {
  uint8_t err;
  OSMutexPend(registerMutex, 0, &err);
  if (OS_NO_ERR == err) {
    temporaryCtrlReg |= bitsToSet;
  } else {
    error("CTRL_REG_MUT_PEND_ERR: %i\n", &err);
  }
  err = OSMutexPost(registerMutex);
  if (OS_NO_ERR != err) {
    error("CTRL_REG_MUT_POST_ERR: %i\n", &err);
  }
}

/**
 * @brief   Clears the CtrlReg bitwise
 * @details Writes into ctrlClrReg in register interface which modifies the
 *          ctrlReg accordingly.
 * @param   bitsToSet Bits to set in CtrlReg
 */
static __inline__ void ctrlRegBitClr(uint8_t bitsToClr) {
  uint8_t err;
  OSMutexPend(registerMutex, 0, &err);
  if (OS_NO_ERR == err) {
    temporaryCtrlReg &= ~(bitsToClr);
  } else {
    error("CTRL_REG_MUT_PEND_ERR: %i\n", &err);
  }
  err = OSMutexPost(registerMutex);
  if (OS_NO_ERR != err) {
    error("CTRL_REG_MUT_POST_ERR: %i\n", &err);
  }
}

/**
 * @brief   Sets the given steps for the Stepper-Motor-Control VHDL-component.
 * @details The VHDL-component moves the motor according to this step-count.
 *
 * @param   newStepCount The number of steps, the motor should turn.
 */
static __inline__ void stepsRegSet(uint32_t newStepCount) {
  uint8_t err;
  OSMutexPend(registerMutex, 0, &err);
  if (OS_NO_ERR == err) {
    temporaryStepsReg = newStepCount;
  } else {
    error("STEPS_REG_MUT_PEND_ERR: %i\n", &err);
  }
  err = OSMutexPost(registerMutex);
  if (OS_NO_ERR != err) {
    error("STEPS_REG_MUT_POST_ERR: %i\n", &err);
  }
}

/**
 * @brief   Returns the actual content of the steps-register.
 * @details The register contains a 32-bit integer value since the last start of the motor.
 * @return  The actual content of steps left.
 */
static __inline__ uint32_t stepsRegGet(void) {
  uint8_t err;
  uint32_t stepsReg;
  OSMutexPend(registerMutex, 0, &err);
  if (OS_NO_ERR == err) {
    stepsReg = temporaryStepsReg;
  } else {
    error("STEPS_REG_MUT_PEND_ERR: %i\n", &err);
  }
  err = OSMutexPost(registerMutex);
  if (OS_NO_ERR != err) {
    error("STEPS_REG_MUT_POST_ERR: %i\n", &err);
  }
  return stepsReg;
}

/**
 * @brief   Sets the speed, how fast the Stepper-Motor-Control turns the motor.
 * @details The speed ranges from 0 (very slow, used for debugging, each step can be
 *          monitored with the LEDs) to 7 (maximum speed). See the following table for
 *          more information:
 *  | speed | pulse-width (t_pulse) |
 *  | :---: | :-------------------: |
 *  | 0     | 2 s                   |
 *  | 1     | 1 s                   |
 *  | 2     | 500 ms                |
 *  | 3     | 250 ms                |
 *  | 4     | 100 ms                |
 *  | 5     | 50 ms                 |
 *  | 6     | 25 ms                 |
 *  | 7     | 10 ms                 |
 *
 * @param newSpeed The new speed from 0 to 7 (only the first 3 bits are used!).
 */
static __inline__ void speedRegSet(uint8_t newSpeed) {
  uint8_t err;
  OSMutexPend(registerMutex, 0, &err);
  if (OS_NO_ERR == err) {
    temporarySpeedReg = newSpeed;
  } else {
    error("STEPS_REG_MUT_PEND_ERR: %i\n", &err);
  }
  err = OSMutexPost(registerMutex);
  if (OS_NO_ERR != err) {
    error("STEPS_REG_MUT_POST_ERR: %i\n", &err);
  }
}

/**
 * @brief   Returns the actual content of the speed-register.
 * @details The speed-step is used accordingly to the speedRegSet()-function.
 * @return  The actual content of the speed-step which is set (only the first 3 bits
 *          are used ,the rest is reserved!).
 */
static __inline__ uint8_t speedRegGet(void) {
  uint8_t err;
  uint8_t speedReg;
  OSMutexPend(registerMutex, 0, &err);
  if (OS_NO_ERR == err) {
    speedReg = temporarySpeedReg;
  } else {
    error("STEPS_REG_MUT_PEND_ERR: %i\n", &err);
  }
  err = OSMutexPost(registerMutex);
  if (OS_NO_ERR != err) {
    error("STEPS_REG_MUT_POST_ERR: %i\n", &err);
  }
  return speedReg;
}

#endif // __REGISTER_ACCESS_H__
