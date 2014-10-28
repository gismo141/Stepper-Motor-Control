/**
  *****************************************************************************
  * @file       keysIRQhandler.h
  * @author     Michael Riedel
  * @author     Marc Kossmann
  * @version    v0.1
  * @date       21.10.2014
  * @brief      Header file for keysIRQhandler.c
  *****************************************************************************
  * @par History:
  * @details    v0.1 Riedel & Kossmann
  *             - first draft for milestone 1b
  * @details    2014-10-27 by Riedel:
  *             - added function-documentation
  *****************************************************************************
  */

#ifndef __KEYS_IRQ_HANDLER_H__
#define __KEYS_IRQ_HANDLER_H__

#include "includes.h"
#include "hardwareAccess.h"

/**
  * @brief  IRQ-Handler for key-input
  * @details sets an event, when key is pressed
  * @param  context : pointer to context variable (not used)
  * @retval none
  */
void keysIRQhandler(void *context);

#endif /*__KEYS_IRQ_HANDLER_H__*/
