/**
 *****************************************************************************
 * @file       userOutputTask.h
 * @author     Michael Riedel
 * @author     Marc Kossmann
 * @version    v1.0.0
 * @date       11.11.2014
 * @brief      Header file for userOutputTask.c
 * @details    Contains defines, includes, typedefs and declarations needed
 *             for this task.
 *****************************************************************************
 * @par History:
 * @details    v0.1.0 21.10.2014 Kossmann
 *             - first draft for milestone 1b
 * @details    v1.0.0 30.10.2014 Kossmann
 *             - added debug and error handling header
 *****************************************************************************
 */

#ifndef __USER_OUTPUT_TASK_H__
#define __USER_OUTPUT_TASK_H__

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>

#include "includes.h"
#include "hardwareAccess.h"
#include "debugAndErrorOutput.h"
#include "userInputTask.h"

#define HEX_ZERO  (0b0111111) //!< number `0` on HEX-segments
#define HEX_ONE   (0b0000110) //!< number `1` on HEX-segments
#define HEX_TWO   (0b1011011) //!< number `2` on HEX-segments
#define HEX_THREE (0b1001111) //!< number `3` on HEX-segments
#define HEX_FOUR  (0b1100110) //!< number `4` on HEX-segments
#define HEX_FIVE  (0b1101101) //!< number `5` on HEX-segments
#define HEX_SIX   (0b1111101) //!< number `6` on HEX-segments
#define HEX_SEVEN (0b0000111) //!< number `7` on HEX-segments
#define HEX_EIGHT (0b1111111) //!< number `8` on HEX-segments
#define HEX_NINE  (0b1101111) //!< number `9` on HEX-segments
#define HEX_LEFT  (0b0111000) //!< `L` for left on HEX-segments
#define HEX_RIGHT (0b1010000) //!< `r` for right on HEX-segments
#define HEX_LINE  (0b1000000) //!< middle line on HEX-segments
/**
 * @brief   UserOutputTask
 * @details Shows the user information about the system.
 *          On the lc-display are general information shown.
 *          The 7-segment displays show additional information to to lcd.
 *          The terminal is a litte bit more specific and shows complete motor
 *          behavior.
 * @param   pdata : Pointer to parameter structure (not used)
 * @retval  None
 */
void UserOutputTask(void *pdata);

/**
 * @brief   Prints Motor information on the terminal
 * @details Shows all available information about the motor.
 * @param   [in] outputTaskMboxContentPtr : Pointer to all data which is available
 *          for UserOuputTask()
 * @param   [in] termMsgCounterPtr : Pointer to actual message counter
 * @retval  None
 */
void printTerminalInfo(outputTaskMailbox_t *outputTaskMboxContentPtr,
    uint32_t *termMsgCounterPtr);

#endif // __USER_OUTPUT_TASK_H__
