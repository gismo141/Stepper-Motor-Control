/**
  *****************************************************************************
  * @file       events.h
  * @author     Michael Riedel
  * @author     Marc Kossmann
  * @version    v0.1
  * @date       27.10.2014
  * @brief      definitions for used events
  *****************************************************************************
  * @par History:
  * @details    v0.1 Riedel & Kossmann
  *             - first draft for milestone 1b
  *****************************************************************************
  */

#ifndef __EVENTS_H__
#define __EVENTS_H__

#define KEY0_RS_EVENT       (0x1)   //!< runs or stops the motor via key_0
#define KEY2_MINUS_EVENT    (0x2)   //!< decreases the steps to turn via key_2
#define KEY3_PLUS_EVENT     (0x4)   //!< increases the steps to turn via key_3
#define SWITCH_UPDATE_EVENT (0x8)   //!< something changed, needs to be identified manually
#define MOTOR_STOP_EVENT    (0x10)  //!< the interrupt is sent via VHDL-Component, when the motor reached its end-position

#endif /*__EVENTS_H__*/