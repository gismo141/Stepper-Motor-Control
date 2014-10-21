#ifndef __INCLUDES_H__
#define __INCLUDES_H__

/*
*********************************************************************************************************
*                                                uC/OS-II
*                                          The Real-Time Kernel
*
*                        (c) Copyright 1992-1998, Jean J. Labrosse, Plantation, FL
*                                           All Rights Reserved
*
*                                           MASTER INCLUDE FILE
*********************************************************************************************************
*/

#ifdef __cplusplus
extern "C"
{
#endif /* __cplusplus */

#include    "os_cpu.h"
#include    "os_cfg.h"
#include    "ucos_ii.h"

#ifdef      ONT_GLOBALS
#define     ONT_EXT
#else
#define     ONT_EXT  extern
#endif

/*
*********************************************************************************************************
*                                             DATA TYPES
*********************************************************************************************************
*/

typedef struct {
    char    TaskName[30];
    INT16U  TaskCtr;
    INT16U  TaskExecTime;
    INT32U  TaskTotExecTime;
} TASK_USER_DATA;

/*
*********************************************************************************************************
*                                              VARIABLES
*********************************************************************************************************
*/

ONT_EXT  TASK_USER_DATA  TaskUserData[10];

/*
*********************************************************************************************************
*                                         FUNCTION PROTOTYPES
*********************************************************************************************************
*/

void   DispTaskStat(INT8U id);

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* __INCLUDES_H__ */

