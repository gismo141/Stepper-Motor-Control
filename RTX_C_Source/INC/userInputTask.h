/**
 *****************************************************************************
 * @file       userInputTask.h
 * @author     Michael Riedel
 * @author     Marc Kossmann
 * @version    v1.1
 * @date       13.11.2014
 * @brief      Header file for userInputTask.c
 * @details    Contains defines, includes, typedefs and declarations needed
 *             for this task.
 *****************************************************************************
 * @par History:
 * @details    22.10. Riedel & Kossmann
 *             - first draft for milestone 1b
 * @details    27.10. Riedel
 *             - moved events to events.h for better handling
 * @details    30.10. Kossmann
 *             - removed hardwareAccess.h include
 * @details    30.10. Kossmann
 *             - added debug and error handling header
 *             30.10. Riedel
 *             - cleaned includes
 * @details    31.10. Riedel & Kossmann
 *             - added hardwareTest() declaration
 * @details    03.11. Kossmann
 *             - moved all register masks in registerAccess.h
 * @details    13.11. Kossmann
 *             - moved all own data types to dataTypes.h
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
