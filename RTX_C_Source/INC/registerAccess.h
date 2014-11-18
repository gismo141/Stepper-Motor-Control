/**
 *****************************************************************************
 * @file       registerAccess.h
 * @author     Michael Riedel
 * @author     Marc Kossmann
 * @version    v2.0.0
 * @date       18.11.2014
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
 * @details    v0.1.0 02.11.2014 Riedel
 *             - first draft for milestone 1b
 * @details    v0.1.1 03.11.2014 Kossmann
 *             - moved all register masks in this file
 *             - added registerMutex for save access
 * @details    v0.1.2 04.11.2014 Kossmann
 *             - removed switches masks defines. They already exist in
 *             hardwareAccess.h
 * @details    v1.0.0 11.11.2014 Riedel & Kossmann
 *             - Moved register masks to headers' documentation
 *             - Added ctrlRegBitClr and ctrlRegBitSet functions for bitwise control
 * @details    v1.0.1 15.11.2014 Kossmann
 *             - adopted all functions to use real register interface
 * @details    v2.0.0 18.11.2014 Riedel & Kossmann
 *             - fixed mistake in register addressing offset
 *             - verified functionality -> release MS2
 *****************************************************************************
 */

#ifndef __REGISTER_ACCESS_H__
#define __REGISTER_ACCESS_H__

#include <stdint.h>
#include <io.h>
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


/**
  * @brief base address of the complete register interface component
  */
#define IOWR_REGS_ADDR(base, addr, data)  IOWR(base, addr, data)

/**
  * @name Ctrl-Register
  */
/** @brief address offset Ctrl-Register  */
#define REGS_CTRL    0b000

/** @brief Macro to calculate the address of the Ctrl-Register */
#define IOADDR_REGS_CTRL(base)       \
                              __IO_CALC_ADDRESS_NATIVE(base, REGS_CTRL)
/** @brief Macro to read Ctrl-Register */
#define IORD_REGS_CTRL(base)         IORD(base, REGS_CTRL)
/** @brief  Macro to write Ctrl-Register  */
#define IOWR_REGS_CTRL(base, data)   IOWR(base, REGS_CTRL, data)

/**
 * @brief   Overwrites the complete CtrlReg
 * @details CtrlReg content is stored in external register interface
 * @param   newCtrlReg The new register-content to set
 */
static __inline__ void ctrlRegSet(uint8_t newCtrlReg) {
  IOWR_REGS_CTRL(REGISTERS_BASE , newCtrlReg);
}

/**
 * @brief   Returns the actual content of the control-register.
 * @details CtrlReg content is stored in external register interface
 * @return  The actual content of the control-register
 */
static __inline__ uint8_t ctrlRegGet(void) {
  return IORD_REGS_CTRL(REGISTERS_BASE);
}

/**
  * @name CtrlSet-Register
  */
/** @brief address offset CtrlSet-Register  */
#define REGS_CTRL_SET    0b001

/** @brief Macro to calculate the address of the CtrlSet-Register */
#define IOADDR_REGS_CTRL_SET(base)       \
                              __IO_CALC_ADDRESS_NATIVE(base, REGS_CTRL_SET)
/** @brief Macro to read CtrlSet-Register */
#define IORD_REGS_CTRL_SET(base)         IORD(base, REGS_CTRL_SET)
/** @brief  Macro to write CtrlSet-Register  */
#define IOWR_REGS_CTRL_SET(base, data)   IOWR(base, REGS_CTRL_SET, data)

/**
 * @brief   Sets the CtrlReg bitwise
 * @details Writes into ctrlSetReg in register interface which modifies the
 *          ctrlReg accordingly.
 * @param   bitsToSet Bits to set in CtrlReg
 */
static __inline__ void ctrlRegBitSet(uint8_t bitsToSet) {
  IOWR_REGS_CTRL_SET(REGISTERS_BASE, bitsToSet);
}

/**
  * @name CtrlClr-Register
  */
/** @brief address offset CtrlClr-Register  */
#define REGS_CTRL_CLR    0b010

/** @brief Macro to calculate the address of the CtrlClr-Register */
#define IOADDR_REGS_CTRL_CLR(base)       \
                              __IO_CALC_ADDRESS_NATIVE(base, REGS_CTRL_CLR)
/** @brief Macro to read CtrlClr-Register */
#define IORD_REGS_CTRL_CLR(base)         IORD(base, REGS_CTRL_CLR)
/** @brief  Macro to write CtrlClr-Register  */
#define IOWR_REGS_CTRL_CLR(base, data)   IOWR(base, REGS_CTRL_CLR, data)

/**
 * @brief   Clears the CtrlReg bitwise
 * @details Writes into ctrlClrReg in register interface which modifies the
 *          ctrlReg accordingly.
 * @param   bitsToClr Bits to clear in CtrlReg
 */
static __inline__ void ctrlRegBitClr(uint8_t bitsToClr) {
  IOWR_REGS_CTRL_CLR(REGISTERS_BASE, bitsToClr);
}

/**
  * @name Speed-Register
  */
/** @brief address offset Speed-Register  */
#define REGS_SPEED    0b011

/** @brief Macro to calculate the address of the Speed-Register */
#define IOADDR_REGS_SPEED(base)       \
                              __IO_CALC_ADDRESS_NATIVE(base, REGS_SPEED)
/** @brief Macro to read Speed-Register */
#define IORD_REGS_SPEED(base)         IORD(base, REGS_SPEED)
/** @brief  Macro to write Speed-Register  */
#define IOWR_REGS_SPEED(base, data)   IOWR(base, REGS_SPEED, data)

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
  IOWR_REGS_SPEED(REGISTERS_BASE, newSpeed);
}

/**
 * @brief   Returns the actual content of the speed-register.
 * @details The speed-step is used accordingly to the speedRegSet()-function.
 * @return  The actual content of the speed-step which is set (only the first 3 bits
 *          are used ,the rest is reserved!).
 */
static __inline__ uint8_t speedRegGet(void) {
  return IORD_REGS_SPEED(REGISTERS_BASE);
}

/**
  * @name Steps-Register
  */
/** @brief address offset Steps-Register  */
#define REGS_STEPS    0b100

/** @brief Macro to calculate the address of the Steps-Register */
#define IOADDR_REGS_STEPS(base)       \
                              __IO_CALC_ADDRESS_NATIVE(base, REGS_STEPS)
/** @brief Macro to read Steps-Register */
#define IORD_REGS_STEPS(base)         IORD(base, REGS_STEPS)
/** @brief  Macro to write Steps-Register  */
#define IOWR_REGS_STEPS(base, data)   IOWR(base, REGS_STEPS, data)

/**
 * @brief   Sets the given steps for the Stepper-Motor-Control VHDL-component.
 * @details The VHDL-component moves the motor according to this step-count.
 *
 * @param   newStepCount The number of steps, the motor should turn.
 */
static __inline__ void stepsRegSet(uint32_t newStepCount) {
  IOWR_REGS_STEPS(REGISTERS_BASE, newStepCount);
}

/**
 * @brief   Returns the actual content of the steps-register.
 * @details The register contains a 32-bit integer value since the last start of the motor.
 * @return  The actual content of steps left.
 */
static __inline__ uint32_t stepsRegGet(void) {
  return IORD_REGS_STEPS(REGISTERS_BASE);
}

#endif // __REGISTER_ACCESS_H__
