/**
  ***************************************************************************
  * @file       keysIRQhandler.h
  * @author   	Michael Riedel
  * @author  	  Marc Kossmann
  * @version   	V0.1
  * @date      	21.10.2014
  * @brief  	  Header file for keysIRQhandler.c
  ***************************************************************************
  * @par History:
  * @details V0.1 Riedel & Kossmann
  *			- first draft for milestone 1b
  ****************************************************************************
  */

#ifndef __KEYS_IRQ_HANDLER_H__
#define __KEYS_IRQ_HANDLER_H__

#include "includes.h"
#include "hardwareAccess.h"

/* IRQ-handler declaration */
void keysIRQhandler(void * context);

#endif
