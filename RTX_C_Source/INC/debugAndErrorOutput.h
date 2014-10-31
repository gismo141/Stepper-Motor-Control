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
  *****************************************************************************
  */

#include "../INC/auxilaryFunctions.h"

#ifdef SOC2014_DEBUG
#ifndef debug
#define debug(...) printf_term(__VA_ARGS__)
#endif // debug
#else
#ifndef debug
#define debug(...)
#endif // debug
#endif // SOC2014_DEBUG

#ifndef error
#define error(...) printf_term(__VA_ARGS__)
#endif // error
