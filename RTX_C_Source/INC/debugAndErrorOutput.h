/**
 *****************************************************************************
 * @file       debugAndErrorOutput.h
 * @author     Michael Riedel
 * @author     Marc Kossmann
 * @version    v0.1
 * @date       30.10.2014
 * @brief      Defines for Error and Debug-Output Management.
 * @details    Include this header for simplified logging-features.
 *****************************************************************************
 * @par History:
 * @details    30.10. Riedel
 *             - first draft for milestone 1b
 * @details    02.11. Riedel
 *             - added documentation for defines
 *****************************************************************************
 */

#ifndef __DEBUG_AND_ERROR_OUTPUT_H__
#define __DEBUG_AND_ERROR_OUTPUT_H__

#include "auxilaryFunctions.h"

/**
 * @brief   Prints Debug-messages in the terminal.
 * @details This define only works if switch SOC2014_DEBUG is set.
 *          Otherwise all debug(...)-statements are deleted from the codebase,
 *          while compilation.
 * 
 * @param   ... Sends the given string directly to the terminal (printf_term()).
 */
#ifdef SOC2014_DEBUG
#ifndef debug
#define debug(...) printf_term(__VA_ARGS__)
#endif // debug
#else
#ifndef debug
#define debug(...)
#endif // debug
#endif // SOC2014_DEBUG

/**
 * @brief Prints the Error-messages in the terminal.
 * 
 * @param ... Sends the given string directly to the terminal (printf_term()).
 */
#ifndef error
#define error(...) printf_term(__VA_ARGS__)
#endif // error

#endif // __DEBUG_AND_ERROR_OUTPUT_H__