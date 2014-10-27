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
  * @details    v0.1 Riedel & Kossmann
  *             - first draft for milestone 1b
  * @details    2014-10-27 by Riedel:
  *             - added function-documentation
  *****************************************************************************
  */

#ifndef __SWITCHES_IRQ_HANDLER_H__
#define __SWITCHES_IRQ_HANDLER_H__

#include "includes.h"
#include "hardwareAccess.h"

/**
  * @brief      IRQ-Handler for switches
  * @details    sets an event, when an switch changed and stores all switch values
  *             in message queue
  * @param      context : pointer to context variable (not used)
  * @retval none
  */
void switchesIRQhandler(void *context);

#endif /*__SWITCHES_IRQ_HANDLER_H__*/