/**
  *****************************************************************************
  * @file       switchesIRQhandler
  * @author     Michael Riedel
  * @author     Marc Kossmann
  * @version    v0.1
  * @date       21.10.2014
  * @brief      Header for IRQ-Handler for switches
  *****************************************************************************
  * @par History:
  * @details    v0.1 Riedel & Kossmann
  *             - first draft for milestone 1b
  *****************************************************************************
  */

#ifndef __SWITCHES_IRQ_HANDLER_H__
#define __SWITCHES_IRQ_HANDLER_H__

#include "includes.h"
#include "hardwareAccess.h"

/* IRQ-handler declaration */
void switchesIRQhandler(void *context);

#endif /*__SWITCHES_IRQ_HANDLER_H__*/