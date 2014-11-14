/**
 *****************************************************************************
 * @file       switchesIRQhandler.h
 * @author     Michael Riedel
 * @author     Marc Kossmann
 * @version    v1.0.0
 * @date       11.11.2014
 * @brief      Header for IRQ-Handler for switches
 *****************************************************************************
 * @par History:
 * @details    v0.1.0 21.10.2014 Riedel & Kossmann
 *             - first draft for milestone 1b
 * @details    v0.1.1 27.10.2014 Riedel
 *             - added function-documentation
 * @details    v0.1.2 29.10.2014 Kossmann
 *             - moved all belonging includes in this file
 * @details    v1.0.0 30.10.2014 Kossmann
 *             - added debug and error handling header
 *****************************************************************************
 */

#ifndef __SWITCHES_IRQ_HANDLER_H__
#define __SWITCHES_IRQ_HANDLER_H__

#include <sys/alt_irq.h>
#include "includes.h"
#include "hardwareAccess.h"
#include "events.h"
#include "debugAndErrorOutput.h"

/**
 * @brief      IRQ-Handler for switches
 * @details    sends a mailbox-message containing the switches-positions
 * @param      context : pointer to context variable (not used)
 * @retval none
 */
void switchesIRQhandler(void *context);

#endif // __SWITCHES_IRQ_HANDLER_H__
