/**
  *****************************************************************************
  * @file       keysIRQhandler
  * @author     Michael Riedel
  * @author     Marc Kossmann
  * @version    v0.1
  * @date       21.10.2014
  * @brief      IRQ-handler for keys
  *****************************************************************************
  * @par History:
  * @details    v0.1 Riedel & Kossmann
  *             - first draft for milestone 1b
  *****************************************************************************
  */

#include <system.h>
#include <sys/alt_irq.h>
#include <stdint.h>
#include "includes.h"
#include "../INC/hardwareAccess.h"


/**
  * @brief  IRQ-Handler for keys
  * @details set an event, depending on pressed key
  * @param  context : pointer to context variable (not used)
  * @retval none
  */
void keysIRQhandler(void *context)
{
}