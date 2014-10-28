/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'CPU' in SOPC Builder design 'StepperMotorControl'
 * SOPC Builder design path: ../../StepperMotorControl.sopcinfo
 *
 * Generated: Tue Oct 28 10:51:02 CET 2014
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_qsys"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00100820
#define ALT_CPU_CPU_FREQ 100000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "tiny"
#define ALT_CPU_DATA_ADDR_WIDTH 0x15
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x00080020
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 100000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0x15
#define ALT_CPU_NAME "CPU"
#define ALT_CPU_RESET_ADDR 0x00080000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00100820
#define NIOS2_CPU_FREQ 100000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "tiny"
#define NIOS2_DATA_ADDR_WIDTH 0x15
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x00080020
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE_LOG2 0
#define NIOS2_ICACHE_SIZE 0
#define NIOS2_INST_ADDR_WIDTH 0x15
#define NIOS2_RESET_ADDR 0x00080000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_LCD_16207
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_AVALON_TIMER
#define __ALTERA_GENERIC_TRISTATE_CONTROLLER
#define __ALTERA_NIOS2_QSYS


/*
 * RTX_Timer configuration
 *
 */

#define ALT_MODULE_CLASS_RTX_Timer altera_avalon_timer
#define RTX_TIMER_ALWAYS_RUN 0
#define RTX_TIMER_BASE 0x1010a0
#define RTX_TIMER_COUNTER_SIZE 32
#define RTX_TIMER_FIXED_PERIOD 0
#define RTX_TIMER_FREQ 100000000
#define RTX_TIMER_IRQ 31
#define RTX_TIMER_IRQ_INTERRUPT_CONTROLLER_ID 0
#define RTX_TIMER_LOAD_VALUE 999999
#define RTX_TIMER_MULT 0.0010
#define RTX_TIMER_NAME "/dev/RTX_Timer"
#define RTX_TIMER_PERIOD 10
#define RTX_TIMER_PERIOD_UNITS "ms"
#define RTX_TIMER_RESET_OUTPUT 0
#define RTX_TIMER_SNAPSHOT 1
#define RTX_TIMER_SPAN 32
#define RTX_TIMER_TICKS_PER_SEC 100
#define RTX_TIMER_TIMEOUT_PULSE_OUTPUT 0
#define RTX_TIMER_TYPE "altera_avalon_timer"


/*
 * SRAM_CVGX configuration
 *
 */

#define ALT_MODULE_CLASS_SRAM_CVGX altera_generic_tristate_controller
#define SRAM_CVGX_BASE 0x80000
#define SRAM_CVGX_IRQ -1
#define SRAM_CVGX_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SRAM_CVGX_NAME "/dev/SRAM_CVGX"
#define SRAM_CVGX_SPAN 524288
#define SRAM_CVGX_SRAM_DATA_WIDTH 16
#define SRAM_CVGX_SRAM_MEMORY_SIZE 524288
#define SRAM_CVGX_SRAM_MEMORY_UNITS 1
#define SRAM_CVGX_TYPE "altera_generic_tristate_controller"


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone V"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart"
#define ALT_STDERR_BASE 0x1010f8
#define ALT_STDERR_DEV jtag_uart
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart"
#define ALT_STDIN_BASE 0x1010f8
#define ALT_STDIN_DEV jtag_uart
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart"
#define ALT_STDOUT_BASE 0x1010f8
#define ALT_STDOUT_DEV jtag_uart
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "StepperMotorControl"


/*
 * hal configuration
 *
 */

#define ALT_MAX_FD 32
#define ALT_SYS_CLK RTX_TIMER
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart altera_avalon_jtag_uart
#define JTAG_UART_BASE 0x1010f8
#define JTAG_UART_IRQ 2
#define JTAG_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_NAME "/dev/jtag_uart"
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_SPAN 8
#define JTAG_UART_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8


/*
 * lcd configuration
 *
 */

#define ALT_MODULE_CLASS_lcd altera_avalon_lcd_16207
#define LCD_BASE 0x1010e0
#define LCD_IRQ -1
#define LCD_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LCD_NAME "/dev/lcd"
#define LCD_SPAN 16
#define LCD_TYPE "altera_avalon_lcd_16207"


/*
 * pio_hex0 configuration
 *
 */

#define ALT_MODULE_CLASS_pio_hex0 altera_avalon_pio
#define PIO_HEX0_BASE 0x101060
#define PIO_HEX0_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_HEX0_BIT_MODIFYING_OUTPUT_REGISTER 1
#define PIO_HEX0_CAPTURE 0
#define PIO_HEX0_DATA_WIDTH 7
#define PIO_HEX0_DO_TEST_BENCH_WIRING 0
#define PIO_HEX0_DRIVEN_SIM_VALUE 0
#define PIO_HEX0_EDGE_TYPE "NONE"
#define PIO_HEX0_FREQ 100000000
#define PIO_HEX0_HAS_IN 0
#define PIO_HEX0_HAS_OUT 1
#define PIO_HEX0_HAS_TRI 0
#define PIO_HEX0_IRQ -1
#define PIO_HEX0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_HEX0_IRQ_TYPE "NONE"
#define PIO_HEX0_NAME "/dev/pio_hex0"
#define PIO_HEX0_RESET_VALUE 0
#define PIO_HEX0_SPAN 32
#define PIO_HEX0_TYPE "altera_avalon_pio"


/*
 * pio_hex1 configuration
 *
 */

#define ALT_MODULE_CLASS_pio_hex1 altera_avalon_pio
#define PIO_HEX1_BASE 0x101040
#define PIO_HEX1_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_HEX1_BIT_MODIFYING_OUTPUT_REGISTER 1
#define PIO_HEX1_CAPTURE 0
#define PIO_HEX1_DATA_WIDTH 7
#define PIO_HEX1_DO_TEST_BENCH_WIRING 0
#define PIO_HEX1_DRIVEN_SIM_VALUE 0
#define PIO_HEX1_EDGE_TYPE "NONE"
#define PIO_HEX1_FREQ 100000000
#define PIO_HEX1_HAS_IN 0
#define PIO_HEX1_HAS_OUT 1
#define PIO_HEX1_HAS_TRI 0
#define PIO_HEX1_IRQ -1
#define PIO_HEX1_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_HEX1_IRQ_TYPE "NONE"
#define PIO_HEX1_NAME "/dev/pio_hex1"
#define PIO_HEX1_RESET_VALUE 0
#define PIO_HEX1_SPAN 32
#define PIO_HEX1_TYPE "altera_avalon_pio"


/*
 * pio_hex2 configuration
 *
 */

#define ALT_MODULE_CLASS_pio_hex2 altera_avalon_pio
#define PIO_HEX2_BASE 0x101020
#define PIO_HEX2_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_HEX2_BIT_MODIFYING_OUTPUT_REGISTER 1
#define PIO_HEX2_CAPTURE 0
#define PIO_HEX2_DATA_WIDTH 7
#define PIO_HEX2_DO_TEST_BENCH_WIRING 0
#define PIO_HEX2_DRIVEN_SIM_VALUE 0
#define PIO_HEX2_EDGE_TYPE "NONE"
#define PIO_HEX2_FREQ 100000000
#define PIO_HEX2_HAS_IN 0
#define PIO_HEX2_HAS_OUT 1
#define PIO_HEX2_HAS_TRI 0
#define PIO_HEX2_IRQ -1
#define PIO_HEX2_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_HEX2_IRQ_TYPE "NONE"
#define PIO_HEX2_NAME "/dev/pio_hex2"
#define PIO_HEX2_RESET_VALUE 0
#define PIO_HEX2_SPAN 32
#define PIO_HEX2_TYPE "altera_avalon_pio"


/*
 * pio_hex3 configuration
 *
 */

#define ALT_MODULE_CLASS_pio_hex3 altera_avalon_pio
#define PIO_HEX3_BASE 0x101000
#define PIO_HEX3_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_HEX3_BIT_MODIFYING_OUTPUT_REGISTER 1
#define PIO_HEX3_CAPTURE 0
#define PIO_HEX3_DATA_WIDTH 7
#define PIO_HEX3_DO_TEST_BENCH_WIRING 0
#define PIO_HEX3_DRIVEN_SIM_VALUE 0
#define PIO_HEX3_EDGE_TYPE "NONE"
#define PIO_HEX3_FREQ 100000000
#define PIO_HEX3_HAS_IN 0
#define PIO_HEX3_HAS_OUT 1
#define PIO_HEX3_HAS_TRI 0
#define PIO_HEX3_IRQ -1
#define PIO_HEX3_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_HEX3_IRQ_TYPE "NONE"
#define PIO_HEX3_NAME "/dev/pio_hex3"
#define PIO_HEX3_RESET_VALUE 0
#define PIO_HEX3_SPAN 32
#define PIO_HEX3_TYPE "altera_avalon_pio"


/*
 * pio_key configuration
 *
 */

#define ALT_MODULE_CLASS_pio_key altera_avalon_pio
#define PIO_KEY_BASE 0x1010c0
#define PIO_KEY_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_KEY_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_KEY_CAPTURE 1
#define PIO_KEY_DATA_WIDTH 4
#define PIO_KEY_DO_TEST_BENCH_WIRING 0
#define PIO_KEY_DRIVEN_SIM_VALUE 0
#define PIO_KEY_EDGE_TYPE "FALLING"
#define PIO_KEY_FREQ 100000000
#define PIO_KEY_HAS_IN 1
#define PIO_KEY_HAS_OUT 0
#define PIO_KEY_HAS_TRI 0
#define PIO_KEY_IRQ 0
#define PIO_KEY_IRQ_INTERRUPT_CONTROLLER_ID 0
#define PIO_KEY_IRQ_TYPE "EDGE"
#define PIO_KEY_NAME "/dev/pio_key"
#define PIO_KEY_RESET_VALUE 0
#define PIO_KEY_SPAN 16
#define PIO_KEY_TYPE "altera_avalon_pio"


/*
 * pio_led9 configuration
 *
 */

#define ALT_MODULE_CLASS_pio_led9 altera_avalon_pio
#define PIO_LED9_BASE 0x1010d0
#define PIO_LED9_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_LED9_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_LED9_CAPTURE 0
#define PIO_LED9_DATA_WIDTH 1
#define PIO_LED9_DO_TEST_BENCH_WIRING 0
#define PIO_LED9_DRIVEN_SIM_VALUE 0
#define PIO_LED9_EDGE_TYPE "NONE"
#define PIO_LED9_FREQ 100000000
#define PIO_LED9_HAS_IN 0
#define PIO_LED9_HAS_OUT 1
#define PIO_LED9_HAS_TRI 0
#define PIO_LED9_IRQ -1
#define PIO_LED9_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_LED9_IRQ_TYPE "NONE"
#define PIO_LED9_NAME "/dev/pio_led9"
#define PIO_LED9_RESET_VALUE 0
#define PIO_LED9_SPAN 16
#define PIO_LED9_TYPE "altera_avalon_pio"


/*
 * pio_sw configuration
 *
 */

#define ALT_MODULE_CLASS_pio_sw altera_avalon_pio
#define PIO_SW_BASE 0x101080
#define PIO_SW_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_SW_BIT_MODIFYING_OUTPUT_REGISTER 1
#define PIO_SW_CAPTURE 1
#define PIO_SW_DATA_WIDTH 10
#define PIO_SW_DO_TEST_BENCH_WIRING 0
#define PIO_SW_DRIVEN_SIM_VALUE 0
#define PIO_SW_EDGE_TYPE "ANY"
#define PIO_SW_FREQ 100000000
#define PIO_SW_HAS_IN 1
#define PIO_SW_HAS_OUT 0
#define PIO_SW_HAS_TRI 0
#define PIO_SW_IRQ 1
#define PIO_SW_IRQ_INTERRUPT_CONTROLLER_ID 0
#define PIO_SW_IRQ_TYPE "EDGE"
#define PIO_SW_NAME "/dev/pio_sw"
#define PIO_SW_RESET_VALUE 0
#define PIO_SW_SPAN 32
#define PIO_SW_TYPE "altera_avalon_pio"


/*
 * sysid_qsys_0 configuration
 *
 */

#define ALT_MODULE_CLASS_sysid_qsys_0 altera_avalon_sysid_qsys
#define SYSID_QSYS_0_BASE 0x1010f0
#define SYSID_QSYS_0_ID 67108864
#define SYSID_QSYS_0_IRQ -1
#define SYSID_QSYS_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_QSYS_0_NAME "/dev/sysid_qsys_0"
#define SYSID_QSYS_0_SPAN 8
#define SYSID_QSYS_0_TIMESTAMP 1414487720
#define SYSID_QSYS_0_TYPE "altera_avalon_sysid_qsys"


/*
 * ucosii configuration
 *
 */

#define OS_ARG_CHK_EN 1
#define OS_CPU_HOOKS_EN 1
#define OS_DEBUG_EN 1
#define OS_EVENT_NAME_SIZE 32
#define OS_FLAGS_NBITS 16
#define OS_FLAG_ACCEPT_EN 1
#define OS_FLAG_DEL_EN 1
#define OS_FLAG_EN 1
#define OS_FLAG_NAME_SIZE 32
#define OS_FLAG_QUERY_EN 1
#define OS_FLAG_WAIT_CLR_EN 1
#define OS_LOWEST_PRIO 20
#define OS_MAX_EVENTS 60
#define OS_MAX_FLAGS 20
#define OS_MAX_MEM_PART 60
#define OS_MAX_QS 20
#define OS_MAX_TASKS 10
#define OS_MBOX_ACCEPT_EN 1
#define OS_MBOX_DEL_EN 1
#define OS_MBOX_EN 1
#define OS_MBOX_POST_EN 1
#define OS_MBOX_POST_OPT_EN 1
#define OS_MBOX_QUERY_EN 1
#define OS_MEM_EN 1
#define OS_MEM_NAME_SIZE 32
#define OS_MEM_QUERY_EN 1
#define OS_MUTEX_ACCEPT_EN 1
#define OS_MUTEX_DEL_EN 1
#define OS_MUTEX_EN 1
#define OS_MUTEX_QUERY_EN 1
#define OS_Q_ACCEPT_EN 1
#define OS_Q_DEL_EN 1
#define OS_Q_EN 1
#define OS_Q_FLUSH_EN 1
#define OS_Q_POST_EN 1
#define OS_Q_POST_FRONT_EN 1
#define OS_Q_POST_OPT_EN 1
#define OS_Q_QUERY_EN 1
#define OS_SCHED_LOCK_EN 1
#define OS_SEM_ACCEPT_EN 1
#define OS_SEM_DEL_EN 1
#define OS_SEM_EN 1
#define OS_SEM_QUERY_EN 1
#define OS_SEM_SET_EN 1
#define OS_TASK_CHANGE_PRIO_EN 1
#define OS_TASK_CREATE_EN 1
#define OS_TASK_CREATE_EXT_EN 1
#define OS_TASK_DEL_EN 1
#define OS_TASK_IDLE_STK_SIZE 512
#define OS_TASK_NAME_SIZE 32
#define OS_TASK_PROFILE_EN 1
#define OS_TASK_QUERY_EN 1
#define OS_TASK_STAT_EN 1
#define OS_TASK_STAT_STK_CHK_EN 1
#define OS_TASK_STAT_STK_SIZE 512
#define OS_TASK_SUSPEND_EN 1
#define OS_TASK_SW_HOOK_EN 1
#define OS_TASK_TMR_PRIO 0
#define OS_TASK_TMR_STK_SIZE 512
#define OS_THREAD_SAFE_NEWLIB 1
#define OS_TICKS_PER_SEC RTX_TIMER_TICKS_PER_SEC
#define OS_TICK_STEP_EN 1
#define OS_TIME_DLY_HMSM_EN 1
#define OS_TIME_DLY_RESUME_EN 1
#define OS_TIME_GET_SET_EN 1
#define OS_TIME_TICK_HOOK_EN 1
#define OS_TMR_CFG_MAX 16
#define OS_TMR_CFG_NAME_SIZE 16
#define OS_TMR_CFG_TICKS_PER_SEC 10
#define OS_TMR_CFG_WHEEL_SIZE 2
#define OS_TMR_EN 0

#endif /* __SYSTEM_H_ */
