#ifndef __ALT_HOOKS_H__
#define __ALT_HOOKS_H__

/******************************************************************************
*                                                                             *
* License Agreement                                                           *
*                                                                             *
* Copyright (c) 2009 Altera Corporation, San Jose, California, USA.           *
* All rights reserved.                                                        *
*                                                                             *
* Permission is hereby granted, free of charge, to any person obtaining a     *
* copy of this software and associated documentation files (the "Software"),  *
* to deal in the Software without restriction, including without limitation   *
* the rights to use, copy, modify, merge, publish, distribute, sublicense,    *
* and/or sell copies of the Software, and to permit persons to whom the       *
* Software is furnished to do so, subject to the following conditions:        *
*                                                                             *
* The above copyright notice and this permission notice shall be included in  *
* all copies or substantial portions of the Software.                         *
*                                                                             *
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  *
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,    *
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE *
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER      *
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING     *
* FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER         *
* DEALINGS IN THE SOFTWARE.                                                   *
*                                                                             *
* This agreement shall be governed in all respects by the laws of the State   *
* of California and by the laws of the United States of America.              *
*                                                                             *
******************************************************************************/

/*
 * This file is included by the Altera Vectored Interrpt Controller's 
 * interrpt funnel assembly code. Only those macros relevant to the funnel 
 * should be seen by the assembler. The funnel code defines the ALT_ASM_SRC 
 * macro. 
 */
#ifndef ALT_ASM_SRC

#include "includes.h"

/*
 * Semaphores used to protect the heap and environment
 */
extern OS_EVENT *alt_envsem;
extern OS_EVENT *alt_heapsem;

/*
 * This header provides definitions for the operating system hooks used by the
 * HAL.
 */

#define ALT_OS_TIME_TICK OSTimeTick
#define ALT_OS_INIT()    OSInit();                     \
                         alt_envsem  = OSSemCreate(1); \
                         alt_heapsem = OSSemCreate(1)
#define ALT_OS_STOP()    OSRunning = OS_FALSE
#define ALT_OS_INT_ENTER OSIntEnter
#define ALT_OS_INT_EXIT  OSIntExit

#endif /* ALT_ASM_SRC */

/* These macros are used by the VIC funnel assembly code */
#define ALT_OS_INT_ENTER_ASM    call OSIntEnter
#define ALT_OS_INT_EXIT_ASM     call OSIntExit

#endif /* __ALT_HOOKS_H__ */
