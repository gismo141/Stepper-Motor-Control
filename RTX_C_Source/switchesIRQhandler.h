/**
  ***************************************************************************
  * @file      	switchesIRQhandler
  * @author  	Michael Riedel
  * @author  	Marc Kossmann
  * @version   	V0.1
  * @date      	21.10.2014
  * @brief  	Header for IRQ-Handler for switches
  ***************************************************************************
  * @par History:
  * @details V0.1 Riedel & Kossmann
  *			- first draft for milestone 1b
  ****************************************************************************
  */

#ifndef SWITCHES_IRQ_HANDLER_H_
#define SWITCHES_IRQ_HANDLER_H_

#include "includes.h"
#include "hardwareAccess.h"

/* IRQ-handler declaration */
void switchesIRQhandler(void * context);

#define EVT_KEY_KEY0  INTERFACE_KEY_IR0_MSK /*!< Event: Key 0 */
#define EVT_KEY_KEY1  INTERFACE_KEY_IR1_MSK /*!< Event: Key 1 */
#define EVT_KEY_KEY2  INTERFACE_KEY_IR2_MSK /*!< Event: Key 2 */

#endif /* SWITCHES_IRQ_HANDLER_H_ */
