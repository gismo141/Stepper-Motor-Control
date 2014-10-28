/**
  *****************************************************************************
  * @file       motorIRQhandler.c
  * @author     Michael Riedel
  * @author     Marc Kossmann
  * @version    v0.1
  * @date       21.10.2014
  * @brief      IRQ-handler for motor stopped
  *****************************************************************************
  * @par History:
  * @details    v0.1 Riedel & Kossmann
  *             - first draft for milestone 1b
  * @details    2014-10-27 by Riedel:
  *             - basic implementation
  *             - moved function-documentation to header-file
  *****************************************************************************
  */

#include <sys/alt_irq.h>
#include "includes.h"
#include "../INC/motorIRQhandler.h"
//#include "../INC/hardwareAccess.h"
#include "../INC/events.h"

void motorIRQhandler(void *context)
{}
