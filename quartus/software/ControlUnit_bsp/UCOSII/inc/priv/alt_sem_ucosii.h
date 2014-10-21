#ifndef __ALT_SEM_UCOSII_H__
#define __ALT_SEM_UCOSII_H__

/******************************************************************************
*                                                                             *
* License Agreement                                                           *
*                                                                             *
* Copyright (c) 2003 Altera Corporation, San Jose, California, USA.           *
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
 * This file provides the uC/OS-II specific functions used to implement the 
 * macros in alt_sem.h. These functions are simply wrappers for the uc/OS-II
 * semaphore API.
 *
 * These functions are considered to be part of the internal implementation of
 * the HAL, and should not be called directly by application code or device
 * drivers. They are not guaranteed to be preserved in future versions of the
 * HAL. 
 */

#include "includes.h"
#include "alt_types.h"

#ifdef __cplusplus
extern "C"
{
#endif /* __cplusplus */

/*
 * alt_sem_create() is a wrapper for OSSemCreate(). The return value is 0 if 
 * the semaphore has been successfully created, or non-zero otherwise.
 */

static ALT_INLINE int ALT_ALWAYS_INLINE alt_sem_create (OS_EVENT** sem, 
              INT16U value)
{
  *sem = OSSemCreate (value);
  return *sem ? 0 : -1;
} 

/*
 * alt_sem_pend() is a wrapper for OSSemPend(), with the error code 
 * converted into the functions return value.
 */

static ALT_INLINE int ALT_ALWAYS_INLINE alt_sem_pend (OS_EVENT* sem, 
                  INT16U timeout)
{
  INT8U err;
  OSSemPend (sem, timeout, &err);
  return err;
}

#ifdef __cplusplus
}
#endif

#endif /* __ALT_SEM_UCOSII_H__ */
