#include "BME280_Compensation.h"


void compensator(BME280_float *temp_comp, BME280_float *pres_comp, BME280_float *hum_comp,
		BME280_s32 temp_raw, BME280_s32 pres_raw, BME280_s32 hum_raw){
#pragma HLS INTERFACE s_axilite port=hum_raw bundle=compensator_io
#pragma HLS INTERFACE s_axilite port=pres_raw bundle=compensator_io
#pragma HLS INTERFACE s_axilite port=temp_raw bundle=compensator_io
#pragma HLS INTERFACE s_axilite port=hum_comp bundle=compensator_io
#pragma HLS INTERFACE s_axilite port=pres_comp bundle=compensator_io
#pragma HLS INTERFACE s_axilite port=temp_comp bundle=compensator_io
#pragma HLS INTERFACE s_axilite port=return bundle=compensator_io

	const BME280_s16 compensation[18] = {
		#include "BME280_comp_vals_h.dat"
	};

	BME280_s32 t_fine;
	BME280_s32 var1_s32, var2_s32;
	BME280_s64 var1_s64, var2_s64, p_fine;
	BME280_float pres_comp_var, hum_comp_var, temp_comp_var;


	//temp compensate
	var1_s32 = ((((temp_raw>>3) - ((BME280_s32)((BME280_u16)compensation[DIG_T1])<<1))) * ((BME280_s32)compensation[DIG_T2])) >> 11;
	var2_s32 = (((((temp_raw>>4) - ((BME280_s32)((BME280_u16)compensation[DIG_T1]))) * ((temp_raw>>4) - ((BME280_s32)((BME280_u16)compensation[DIG_T1])))) >> 12) * ((BME280_s32)compensation[DIG_T3])) >> 14;
	t_fine = var1_s32 + var2_s32;
	temp_comp_var = (BME280_float)(((t_fine * 5 + 128) >> 8)/100.0);

	//pres_Compensate
	var1_s64 = ((BME280_s64)t_fine) - 128000;
	var2_s64 = var1_s64 * var1_s64 * (BME280_s64)compensation[DIG_P6];
	var2_s64 = var2_s64 + ((var1_s64 * (BME280_s64)compensation[DIG_P5])<<17);
	var2_s64 = var2_s64 + (((BME280_s64)compensation[DIG_P4])<<35);
	var1_s64 = ((var1_s64 * var1_s64 * (BME280_s64)compensation[DIG_P3])>>8) + ((var1_s64 * (BME280_s64)compensation[DIG_P2])<<12);
	var1_s64 = (((((BME280_s64)1)<<47)+var1_s64))*((BME280_s64)((BME280_u16)compensation[DIG_P1]))>>33;
	if(var1_s64 == 0){
		pres_comp_var = 0.0;
	}
	else{
		p_fine = 1048576 - pres_raw;
		p_fine = (((p_fine<<31) - var2_s64)*3125)/var1_s64;
		var1_s64 = (((BME280_s64)compensation[DIG_P9]) * (p_fine>>13) * (p_fine>>13)) >> 25;
		var2_s64 = (((BME280_s64)compensation[DIG_P8]) * p_fine) >> 19;
		pres_comp_var = (BME280_float)((((p_fine + var1_s64 + var2_s64) >> 8) + (((BME280_s64)compensation[DIG_P7])<<4))/256.0);
	}

	//hum_Compensate
	var1_s32 = (t_fine - ((BME280_s32)76800));
	var1_s32 = (((((hum_raw << 14) - (((BME280_s32)compensation[DIG_H4]) << 20) - (((BME280_s32)compensation[DIG_H5]) * var1_s32)) +
	((BME280_s32)16384)) >> 15) * (((((((var1_s32 * ((BME280_s32)compensation[DIG_H6])) >> 10) * (((var1_s32 * ((BME280_s32)compensation[DIG_H3])) >> 11) + ((BME280_s32)32768))) >> 10) + ((BME280_s32)2097152)) *
	((BME280_s32)compensation[DIG_H2]) + 8192) >> 14));
	var1_s32 = (var1_s32 - (((((var1_s32 >> 15) * (var1_s32 >> 15)) >> 7) * ((BME280_s32)compensation[DIG_H1])) >> 4));
	var1_s32 = (var1_s32 < 0 ? 0 : var1_s32);
	var1_s32 = (var1_s32 > 419430400 ? 419430400 : var1_s32);
	hum_comp_var = (BME280_float)((var1_s32>>12)/1024.0);

	*temp_comp = temp_comp_var;
	*pres_comp = pres_comp_var;
	*hum_comp = hum_comp_var;
}
