/**
  ******************************************************************************
  * @file    	interfaceRegs.h
  * @author  	Michael Riedel
  * @author  	Marc Kossmann
  * @version   	V0.1
  * @date      	21.10.2014
  * @brief   	Register file for interface-component
  * @details 	definition of interface
  * @verbatim
    Register:
     ADDR  width  access   structure                  				function
      0    8_Bit    RW     IR IE MODE3 MODE2 MODE1 MODE0 L/R R/S	ctrlReg
      1    8_Bit    RW     IR IE MODE3 MODE2 MODE1 MODE0 L/R R/S	ctrlSetReg
      2    8_Bit    RW     IR IE MODE3 MODE2 MODE1 MODE0 L/R R/S	ctrlClearReg
      3    3_Bit    RW     SPEED2 SPEED1 SPEED0						speedReg
      4    32_Bit   RW     step										stepReg
      5    10_Bit   RW     red LEDs                  				red LEDs 
      6    8_Bit    RW     green LEDs                 				green LEDs
  @endverbatim
  ******************************************************************************
  * @par History:
  * @details V0.1 Riedel & Kossmann
  *			- first draft for milestone 1b
  ********************************************************************************
  */

#ifndef __INTERFACE_REGS_H__
#define __INTERFACE_REGS_H__
#include <io.h>

/**
  * @brief base address of the complete component
  */
#define IOWR_INTERFACE_ADDR(base, addr, data)  IOWR(base, addr, data)

/**
  * @name Key-register
  */
/** @brief address offset Key-register  */
#define INTERFACE_KEY_REG    0

/** @brief Macro to calculate the address of the key register */
#define IOADDR_INTERFACE_KEY(base)       \
                              __IO_CALC_ADDRESS_NATIVE(base, INTERFACE_KEY_REG)

/** @brief Macro to read key register */
#define IORD_INTERFACE_KEY(base)         IORD(base, INTERFACE_KEY_REG)
/** @brief  Macro to write key register  (Set IE, Clr IR) */
#define IOWR_INTERFACE_KEY(base, data)   IOWR(base, INTERFACE_KEY_REG, data)

/**
  * @name Key-register: interrupt request defines
  */
#define INTERFACE_KEY_IR0_MSK          (0x1) /*!< Mask   IR0 */
#define INTERFACE_KEY_IR0_OFST         (0)   /*!< Offset IR0 */
#define INTERFACE_KEY_IR1_MSK          (0x2) /*!< Mask   IR1 */
#define INTERFACE_KEY_IR1_OFST         (1)   /*!< Offset IR1 */
#define INTERFACE_KEY_IR2_MSK          (0x4) /*!< Mask   IR2 */
#define INTERFACE_KEY_IR2_OFST         (2)   /*!< Offset IR2 */

/**
  * @name Key-register: interrupt enable defines
  */
#define INTERFACE_KEY_IE0_MSK          (0x8)  /*!< Mask   IE0 */
#define INTERFACE_KEY_IE0_OFST         (3)    /*!< Offset IE0 */
#define INTERFACE_KEY_IE1_MSK          (0x10) /*!< Mask   IE1 */
#define INTERFACE_KEY_IE1_OFST         (4)    /*!< Offset IE1 */
#define INTERFACE_KEY_IE2_MSK          (0x20) /*!< Mask   IE2 */
#define INTERFACE_KEY_IE2_OFST         (5)    /*!< Offset IE2 */

/**
  * @name green LEDs
  */
/** @brief Address offset register for green LEDs  */
#define INTERFACE_GREENLED_REG               1

/** @brief Macro to calculate the address of register for green LEDs */
#define IOADDR_INTERFACE_GREENLED(base)   \
                         __IO_CALC_ADDRESS_NATIVE(base, INTERFACE_GREENLED_REG)

/** @brief Macro to read green LEDs register */
#define IORD_INTERFACE_GREENLED(base)      IORD(base, INTERFACE_GREENLED_REG)
/** @brief Macro to write key to green LEDS register */
#define IOWR_INTERFACE_GREENLED(base, data) \
                                       IOWR(base, INTERFACE_GREENLED_REG, data)
/** @brief Define to mask used bits in green led register */
#define INTERFACE_GREENLED_MSK          (0xFF)

/**
  * @name red LEDs
  */
/** @brief Address offset register for red LEDs   */
#define INTERFACE_REDLED_REG               2

/** @brief Macro to calculate the address of register for red LEDs */
#define IOADDR_INTERFACE_REDLED(base)   \
                          __IO_CALC_ADDRESS_NATIVE(base, INTERFACE_REDLED_REG)
/** @brief Macro to read red LEDs register */
#define IORD_INTERFACE_REDLED(base)       IORD(base, INTERFACE_REDLED_REG)
/** @brief Macro to write key to red LEDS register */
#define IOWR_INTERFACE_REDLED(base, data) IOWR(base, INTERFACE_REDLED_REG, data)
/** @brief Define to mask used bits in red led register */
#define INTERFACE_REDLED_MSK          (0xFF)

/**
  * @name sliding switches
  */
/** @brief Address offset register for sliding switches  */
#define INTERFACE_SWITCH_REG               3

/** @briefMacro to calculate the address of register for sliding switches  */
#define IOADDR_INTERFACE_SWITCH(base)    \
                           __IO_CALC_ADDRESS_NATIVE(base, INTERFACE_SWITCH_REG)

/** @brief Macro to read register for sliding switches */
#define IORD_INTERFACE_SWITCH(base)         IORD(base, INTERFACE_SWITCH_REG)
/** @brief Define to mask used bits in sliding switch register */
#define INTERFACE_SWITCH_MSK          (0xFF)

#endif /*__INTERFACE_TUT_REGS_H__*/
