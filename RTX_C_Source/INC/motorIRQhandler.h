/**
 *****************************************************************************
 * @file       motorIRQhandler.h
 * @author     Michael Riedel
 * @author     Marc Kossmann
 * @version    v1.0.0
 * @date       11.11.2014
 * @brief      Header file for motorIRQhandler.c
 *****************************************************************************
 * @par History:
 * @details    v0.1.0 21.10.2014 Riedel & Kossmann
 *             - first draft for milestone 1b
 * @details    v0.1.1 27.10.2014 Riedel
 *             - added function-documentation
 * @details    v0.1.2 29.10.2014 Kossmann
 *             - moved all belonging includes in this file
 *             v1.0.0 02.11.2014 Riedel
 *             - finalized ISR-functionality
 *****************************************************************************
 */

#ifndef __MOTOR_IRQ_HANDLER_H__
#define __MOTOR_IRQ_HANDLER_H__

#include <sys/alt_irq.h>
#include "includes.h"
#include "registerAccess.h"
#include "events.h"
#include "debugAndErrorOutput.h"

/**
 * @brief   IRQ-Handler for motor stopped
 * @details sets an event, when motor stopped
 * @param   context : pointer to context variable (not used)
 * @retval  none
 */
void motorIRQhandler(void *context);

#endif // __MOTOR_IRQ_HANDLER_H__
