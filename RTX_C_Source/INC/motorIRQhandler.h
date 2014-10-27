/**
  *****************************************************************************
  * @file       motorIRQhandler.h
  * @author     Michael Riedel
  * @author     Marc Kossmann
  * @version    v0.1
  * @date       21.10.2014
  * @brief      Header file for motorIRQhandler.c
  *****************************************************************************
  * @par History:
  * @details    v0.1 Riedel & Kossmann
  *             - first draft for milestone 1b
  * @details    2014-10-27 by Riedel:
  *             - added function-documentation
  *****************************************************************************
  */

#ifndef __MOTOR_IRQ_HANDLER_H__
#define __MOTOR_IRQ_HANDLER_H__

#include "includes.h"
#include "hardwareAccess.h"

/**
  * @brief  IRQ-Handler for motor stopped
  * @details sets an event, when motor stopped
  * @param  context : pointer to context variable (not used)
  * @retval none
  */
void motorIRQhandler(void *context);

#endif /*__MOTOR_IRQ_HANDLER_H__*/
