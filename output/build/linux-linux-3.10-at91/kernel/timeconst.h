/* Automatically generated by kernel/timeconst.bc */
/* Time conversion constants for HZ == 128 */

#ifndef KERNEL_TIMECONST_H
#define KERNEL_TIMECONST_H

#include <linux/param.h>
#include <linux/types.h>

#if HZ != 128
#error "kernel/timeconst.h has the wrong HZ value!"
#endif

#define HZ_TO_MSEC_MUL32	U64_C(0xFA000000)
#define HZ_TO_MSEC_ADJ32	U64_C(0x1E000000)
#define HZ_TO_MSEC_SHR32	29
#define MSEC_TO_HZ_MUL32	U64_C(0x83126E98)
#define MSEC_TO_HZ_ADJ32	U64_C(0x3F7CED916)
#define MSEC_TO_HZ_SHR32	34
#define HZ_TO_MSEC_NUM		125
#define HZ_TO_MSEC_DEN		16
#define MSEC_TO_HZ_NUM		16
#define MSEC_TO_HZ_DEN		125

#define HZ_TO_USEC_MUL32	U64_C(0xF4240000)
#define HZ_TO_USEC_ADJ32	U64_C(0x40000)
#define HZ_TO_USEC_SHR32	19
#define USEC_TO_HZ_MUL32	U64_C(0x8637BD06)
#define USEC_TO_HZ_ADJ32	U64_C(0xFFFBCE4217D)
#define USEC_TO_HZ_SHR32	44
#define HZ_TO_USEC_NUM		15625
#define HZ_TO_USEC_DEN		2
#define USEC_TO_HZ_NUM		2
#define USEC_TO_HZ_DEN		15625

#endif /* KERNEL_TIMECONST_H */
