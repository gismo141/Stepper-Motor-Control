/**
 *****************************************************************************
 * @file       debugAndErrorOutput.h
 * @author     Michael Riedel
 * @author     Marc Kossmann
 * @version    v1.0
 * @date       11.11.2014
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

/** @brief Generates extra debug output on terminal */
#define SOC2014_DEBUG

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
#define debug(...) printf_term(__VA_ARGS__)
#else
#define debug(...)
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
