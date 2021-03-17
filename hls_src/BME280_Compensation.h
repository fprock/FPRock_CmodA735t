#ifndef _BME280_COMP_H_
#define _BME280_COMP_H_
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <ap_cint.h>
//#include <math.h>

#define DIG_T1	0
#define DIG_T2	1
#define DIG_T3	2
#define DIG_P1	3
#define DIG_P2	4
#define DIG_P3	5
#define DIG_P4	6
#define DIG_P5	7
#define DIG_P6	8
#define DIG_P7	9
#define DIG_P8	10
#define DIG_P9	11
#define DIG_H1	12
#define DIG_H2	13
#define DIG_H3	14
#define DIG_H4	15
#define DIG_H5	16
#define DIG_H6	17


typedef uint16 BME280_u16;
typedef int16 BME280_s16;
typedef uint32 BME280_u32;
typedef int32 BME280_s32;
typedef uint64 BME280_u64;
typedef int64 BME280_s64;
typedef float BME280_float;

void compensator(BME280_float *temp_comp, BME280_float *pres_comp, BME280_float *hum_comp,
			BME280_s32 temp_raw, BME280_s32 pres_raw, BME280_s32 hum_raw);

#endif
