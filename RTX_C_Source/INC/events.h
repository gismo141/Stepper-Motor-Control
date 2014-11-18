/**
 *****************************************************************************
 * @file       events.h
 * @author     Michael Riedel
 * @author     Marc Kossmann
 * @version    v2.0.0
 * @date       18.11.2014
 * @brief      definitions for used events
 *****************************************************************************
 * @par History:
 * @details    v0.1.0 27.10.2014 Riedel
 *             - first draft for milestone 1b
 * @details    v0.1.1 30.10.2014 Riedel
 *             - Moved DEBUG_ON_EVENT from heartbeatTask.h to this header
 * @details    v1.0.0 07.11.2014 Kossmann
 *             - added DEBUG_OFF_EVENT
 * @details    v2.0.0 18.11.2014 Riedel & Kossmann
 *             - introduced userOutputTaskFlagsGrp and GLOB_VAR_UPDATE event for
 *             signaling changed data in global IPC variable
 *             - verified functionality -> release MS2
 *****************************************************************************
 */

#ifndef __EVENTS_H__
#define __EVENTS_H__

/**
 * @brief The flags group used in the user-input-task.
 * @details This group contains all possibly events, which can be triggered
 *          by the user.
 */
OS_FLAG_GRP *userInputTaskFlagsGrp;
#define KEY0_RS_EVENT       (0b00001) //!< runs or stops the motor via `key_0`
#define KEY2_MINUS_EVENT    (0b00010) //!< decreases the steps to turn via `key_2`
#define KEY3_PLUS_EVENT     (0b00100) //!< increases the steps to turn via `key_3`
#define MOTOR_STOP_EVENT    (0b01000) //!< the interrupt is sent via VHDL-Component, when the motor reached its end-position
#define SW_UPDATE_EVENT     (0b10000) //!< signalizes that switches changed
/**
 * @brief The flags group used in the heartbeat-task and user-input-task.
 * @details This group contains the debug-event that can be triggered via `sw_9`.
 */
OS_FLAG_GRP *heartbeatTaskFlagsGrp;
#define DEBUG_ON_EVENT      (0x1) //!< activates the debug-mode via `sw_9`
#define DEBUG_OFF_EVENT     (0x2) //!< deactivates the debug-mode via `sw_9`
#endif // __EVENTS_H__

/**
 * @brief The flags group used in the user-output-task.
 * @details This group contains all possibly events.
 */
OS_FLAG_GRP *userOutputTaskFlagsGrp;
#define MOTOR_STOP_EVENT    (0b01000) //!< the interrupt is sent via VHDL-Component, when the motor reached its end-position
#define GLOB_VAR_UPDATE     (0b00001) //!< signals that data changed
