/**
  *****************************************************************************
  * @file       registerAccess.h
  * @author     Michael Riedel
  * @author     Marc Kossmann
  * @version    v0.1
  * @date       02.11.2014
  * @brief      Header file with inline functions to access the registers that
  *             are used by the Stepper-Motor-Control VHDL-component.
  *****************************************************************************
  * @par History:
  * @details    02.11. Riedel
  *             - first draft for milestone 1b
  *****************************************************************************
  */

#ifndef REGISTER_ACCESS_H
#define REGISTER_ACCESS_H

#define CTRL_REG_RS_MSK   (0x1)   //!< Run (1) or Stop (0)-Bit
#define CTRL_REG_LR_MSK   (0x2)   //!< Left (0) or Right (1)-Bit 
#define CTRL_REG_MODE_MSK (0x3C)  //!< Mode-combination according to ctrlRegSet()-function
#define CTRL_REG_IE_MSK   (0x40)  //!< Interrupt-Enable Bit
#define CTRL_REG_IR_MSK   (0x80)  //!< Interrupt-Request Bit

uint8_t   temporaryCtrlReg;       //!< Temporary control-register (only for milestone 1b)
uint32_t  temporaryStepsReg;      //!< Temporary steps-register (only for milestone 1b)
uint8_t   temporarySpeedReg;      //!< Temporary speed-register (only for milestone 1b)

/**
 * @brief   Sets the control-register with the given bits
 * @details The bitmask is as follows:
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
 *
 * @param   newCtrlReg The new register-content to set
 */
static __inline__ void ctrlRegSet(uint8_t newCtrlReg) {
  temporaryCtrlReg = newCtrlReg;
}

/**
 * @brief   Returns the actual content of the control-register.
 * @details The bitmask is used accordingly to the ctrlRegSet()-function
 * @return  The actual content of the control-register
 */
static __inline__ uint8_t ctrlRegGet(void) {
  return temporaryCtrlReg;
}

/**
 * @brief   Sets the given steps for the Stepper-Motor-Control VHDL-component.
 * @details The VHDL-component moves the motor according to this step-count.
 *
 * @param   newStepCount The number of steps, the motor should turn.
 */
static __inline__ void stepsRegSet(uint32_t newStepCount) {
  temporaryStepsReg = newStepCount;
}

/**
 * @brief   Returns the actual content of the steps-register.
 * @details The register contains a 32-bit integer value since the last start of the motor.
 * @return  The actual content of steps left.
 */
static __inline__ uint32_t stepsRegGet(void) {
  return temporaryStepsReg;
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
  temporarySpeedReg = newSpeed;
}

/**
 * @brief   Returns the actual content of the speed-register.
 * @details The speed-step is used accordingly to the speedRegSet()-function.
 * @return  The actual content of the speed-step which is set (only the first 3 bits
 *          are used ,the rest is reserved!).
 */
static __inline__ uint8_t speedRegGet(void) {
  return temporarySpeedReg;
}

#endif // REGISTER_ACCESS_H
