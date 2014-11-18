/**
 *****************************************************************************
 * @file       userInputTask.h
 * @author     Michael Riedel
 * @author     Marc Kossmann
 * @version    v2.0.0
 * @date       18.11.2014
 * @brief      Header file for userInputTask.c
 * @details    Contains defines, includes, typedefs and declarations needed
 *             for this task.
 *****************************************************************************
 * @par History:
 * @details    v0.1.0 22.10.2014 Riedel & Kossmann
 *             - first draft for milestone 1b
 * @details    v0.1.1 27.10.2014 Riedel
 *             - moved events to events.h for better handling
 * @details    v0.1.2 30.10.2014 Kossmann
 *             - removed hardwareAccess.h include
 * @details    v0.1.3 30.10.2014 Kossmann
 *             - added debug and error handling header
 * @details    v0.1.4 30.10.2014 Riedel
 *             - cleaned includes
 * @details    v0.1.5 31.10.2014 Riedel & Kossmann
 *             - added hardwareTest() declaration
 * @details    v1.0.0 03.11.2014 Kossmann
 *             - moved all register masks in registerAccess.h
 * @details    v1.0.1 13.11.2014 Kossmann
 *             - moved all own data types to dataTypes.h
 * @details    v1.0.2 14.11.2014 Riedel & Kossmann
 *             - added define for register mutex (see registerAccess.h)
 * @details    v2.0.0 18.11.2014 Riedel & Kossmann
 *             - removed define for register mutex for real register_interface
 *             - verified functionality -> release MS2
 *****************************************************************************
 */

#ifndef __USER_INPUT_TASK_H__
#define __USER_INPUT_TASK_H__

#include <sys/alt_irq.h>
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <math.h>

#include "includes.h"
#include "events.h"
#include "hardwareAccess.h"
#include "registerAccess.h"
#include "dataTypes.h"

#include "auxilaryFunctions.h"
#include "debugAndErrorOutput.h"

#define INTERRUPT_ENABLE //!< global interrupts are enabled

#define CTRL_REG_0_6_MSK     (0b01111111)  //!< Bits 0..6 in ctrlReg

/**
 * @brief    UserInputTask
 * @details  This task is the control instance for the whole system.
 *           All register access is done in this Task. It reacts to user input,
 *           sets needed flags and delivers needed informatino to other tasks.
 * @param    pdata : Pointer to parameter structure (not used)
 * @retval   None
 */
void UserInputTask(void *pdata);

/**
 * @brief    Tests hardware
 * @details  A functions for just test some hardware features. Has no needed
 *           functionality for any Milestone
 * @retval   None
 */
void hardwareTest(void);

#endif // __USER_INPUT_TASK_H__
