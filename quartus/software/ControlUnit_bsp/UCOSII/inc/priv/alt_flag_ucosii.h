#ifndef __ALT_FLAG_UCOSII_H__
#define __ALT_FLAG_UCOSII_H__

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
 * macros in alt_flag.h. These functions are simply wrappers for the uc/OS-II
 * flags API.
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
 * alt_flag_create() is a wrapper for OSFlagCreate(), with the error code 
 * converted into the functions return value.
 */

static ALT_INLINE int ALT_ALWAYS_INLINE alt_flag_create (OS_FLAG_GRP** pgroup, 
               OS_FLAGS flags)
{
  INT8U err;
  *pgroup = OSFlagCreate (flags, &err);
  return err;
}

/*
 * alt_flag_pend() is a wrapper for OSFlagPend(), with the error code 
 * converted into the functions return value.
 */

static ALT_INLINE int ALT_ALWAYS_INLINE alt_flag_pend (OS_FLAG_GRP* group, 
                   OS_FLAGS flags, 
                   INT8U wait_type, 
                   INT16U timeout)
{
  INT8U err;
  if (OSRunning)
  {
    OSFlagPend (group, flags, wait_type, timeout, &err);
    return err;
  }
  return OS_ERR_PEND_ISR;
}


/*
 * alt_flag_post() is a wrapper for OSFlagPost(), with the error code 
 * converted into the functions return value.
 */

static ALT_INLINE int ALT_ALWAYS_INLINE alt_flag_post (OS_FLAG_GRP* group, 
                   OS_FLAGS     flags, 
                   INT8U        opt)
{
  INT8U err;

  if (OSRunning)
  {
    OSFlagPost (group, flags, opt, &err);
    return err;
  }
  return OS_ERR_PEND_ISR;
}

#ifdef __cplusplus
}
#endif

#endif /* __ALT_FLAG_UCOSII_H__ */
