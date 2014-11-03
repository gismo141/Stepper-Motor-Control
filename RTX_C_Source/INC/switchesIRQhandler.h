/**
  *****************************************************************************
  * @file       switchesIRQhandler.h
  * @author     Michael Riedel
  * @author     Marc Kossmann
  * @version    v0.1
  * @date       21.10.2014
  * @brief      Header for IRQ-Handler for switches
  *****************************************************************************
  * @par History:
  * @details    21.10. Riedel & Kossmann
  *             - first draft for milestone 1b
  * @details    27.10. Riedel
  *             - added function-documentation
  * @details    29.10. Kossmann
  *             - moved all belonging includes in this file
  * @details    30.10. Kossmann
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

#endif /*__SWITCHES_IRQ_HANDLER_H__*/
