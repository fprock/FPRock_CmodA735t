/*
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A 
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR 
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION 
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE 
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO 
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO 
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE 
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY 
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 */

/*
 * 
 *
 * This file is a generated sample test application.
 *
 * This application is intended to test and/or illustrate some 
 * functionality of your system.  The contents of this file may
 * vary depending on the IP in your system and may use existing
 * IP driver functions.  These drivers will be generated in your
 * SDK application project when you run the "Generate Libraries" menu item.
 *
 */

#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xintc.h"
#include "intc_header.h"
#include "xgpio.h"
#include "gpio_header.h"
#include "iic_header.h"
#include "xspi.h"
#include "spi_header.h"
#include "xuartlite.h"
#include "uartlite_header.h"
#include "uartlite_intr_header.h"
#include "xil_types.h"
#include "xiic_l.h"
#include "xil_printf.h"
#include "sleep.h"
#include "BME280_Sensor.h"
#include "xuartlite.h"
#include "math.h"

XUartLite UartXbee;	/* Instance of the UartLite device */

int BME280_RegSet(u8 RegAddr, u8 RegMask, u8 RegData){
	u8 controlData, sendArray[2];
	int byteCount;
	byteCount = XIic_Send(XPAR_AXI_IIC_0_BASEADDR, BME280_IIC_ADDR, &RegAddr, 1, XIIC_REPEATED_START);
	byteCount = XIic_Recv(XPAR_AXI_IIC_0_BASEADDR, BME280_IIC_ADDR, &controlData, 1, XIIC_STOP);
	if(byteCount != 1){
		return XST_FAILURE;
	}
	controlData &= RegMask;
	controlData |= RegData;
	sendArray[0] = RegAddr;
	sendArray[1] = controlData;
	byteCount = XIic_Send(XPAR_AXI_IIC_0_BASEADDR, BME280_IIC_ADDR, &sendArray, 2, XIIC_STOP);
	if(byteCount != 2){
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}

#define TBLEN 8
u8 *testbuff = "hello!\n\r";

int main () 
{
   static XIntc intc;
   //static XUartLite axi_uartlite_1_UartLite;
   Xil_ICacheEnable();
   Xil_DCacheEnable();

   print("---Entering main---\n\r");



   int Status;
   u32 Busy;
   uint8_t data[6];
   u32 pres_data, temp_data, hum_data;
   u8 retData;
   float inA = 2.2;
   float inB = 1.5;
   float out;


   //u32 refPres = 0x00018BCD;

   //u32 P, T, H;
   u8 measureAddr = BME280_MEASUREMENTS_REG;
   u8 ctrlRegAddr;
   int ByteCount;

   print("---Initialization Starting---\r\n");
   sleep(1);

	Status = XUartLite_Initialize(&UartXbee, XPAR_UARTLITE_1_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

   Status = BME280_RegSet(BME280_RST_REG,
   			~(BME280_RESET_MASK),
   			(BME280_SOFT_RESET));
   	if (Status != XST_SUCCESS) {
   		print("Error: BME280_SetReg - BME280_RST_REG\t\t\tFAILED!\r\n");
   	}
   	else{
   		print("BME280_SetReg - BME280_RST_REG\t\t\tSUCCESSFUL!\r\n");
   	}

   	Status = BME280_RegSet(BME280_CONFIG_REG,
   			~(BME280_CONFIG_T_SB_MASK | BME280_CONFIG_FILTER_MASK),
   			(BME280_T_STANDBY_0_5_MS | BME280_FILTER_COEFF_8));
   	if (Status != XST_SUCCESS) {
   		print("Error: BME280_SetReg - BME280_CONFIG_REG\t\t\tFAILED!\r\n");
   	}
   	else{
   		print("BME280_SetReg - BME280_CONFIG_REG\t\t\tSUCCESSFUL!\r\n");
   	}

   	Status = BME280_RegSet(BME280_CTRL_HUMIDITY_REG,
   			~(BME280_CTRL_HUM_MASK),
   			BME280_H_OVERSAMPLE_X8);
   	if (Status != XST_SUCCESS) {
   		print("Error: BME280_SetReg - BME280_CTRL_HUMIDITY_REG\t\t\tFAILED!\r\n");
   	}
   	else{
   		print("BME280_SetReg - BME280_CTRL_HUMIDITY_REG\t\t\tSUCCESSFUL!\r\n");
   	}

   	Status = BME280_RegSet(BME280_CTRL_MEAS_REG,
   			~(BME280_CTRL_MEAS_MODE_MASK | BME280_CTRL_MEAS_OSRS_P_MASK | BME280_CTRL_MEAS_OSRS_T_MASK),
   			(BME280_CTRL_MEAS_MODE_NORMAL | BME280_P_OVERSAMPLE_X8 | BME280_T_OVERSAMPLE_X8));
   	if (Status != XST_SUCCESS) {
   		print("Error: BME280_SetReg - BME280_CTRL_MEAS_REG\t\t\tFAILED!\r\n");
   	}
   	else{
   		print("BME280_SetReg - BME280_CTRL_MEAS_REG\t\t\tSUCCESSFUL!\r\n");
   	}

   	ctrlRegAddr = BME280_CTRL_MEAS_REG;
   	ByteCount = XIic_Send(XPAR_AXI_IIC_0_BASEADDR, BME280_IIC_ADDR, &ctrlRegAddr, 1, XIIC_REPEATED_START);
   	ByteCount = XIic_Recv(XPAR_AXI_IIC_0_BASEADDR, BME280_IIC_ADDR, &retData, 1, XIIC_STOP);
   	//xil_printf("retData = 0x%x%\r\n", retData);
   	if(retData != (BME280_CTRL_MEAS_MODE_NORMAL | BME280_P_OVERSAMPLE_X8 | BME280_T_OVERSAMPLE_X8)){
   		print("BME280_CTRL_MEAS_REG Set Incorrectly!\r\n");
   	}
   	else{
   		print("Mode Correct!\r\n");
   	}
   	sleep(1);
   	print("---Initialization Complete---\r\n");



   	//print("\r\nRawPres(uint32_t), CompPres(IEEE 754)(Pa), RawTemp(uint32_t), CompTemp(IEEE 754)(C), RawHum(uint32_t), CompHum(IEEE 754)(%)\r\n\r\n");

   	while(1){
   		measureAddr = BME280_MEASUREMENTS_REG;
   		ByteCount = XIic_Send(XPAR_AXI_IIC_0_BASEADDR, BME280_IIC_ADDR, &measureAddr, 1, XIIC_REPEATED_START);
   		ByteCount = XIic_Recv(XPAR_AXI_IIC_0_BASEADDR, BME280_IIC_ADDR, &data, 8, XIIC_STOP);


   		pres_data = ((u32)data[0] << 12) | ((u32)data[1] << 4) | ((data[2] >> 4) & 0x0F);
   		temp_data = ((u32)data[3] << 12) | ((u32)data[4] << 4) | ((data[5] >> 4) & 0x0F);
   		hum_data = ((u32)data[6] << 8) | ((u32)data[7]);


   		//xil_printf("0x%x% , 0x%x% , 0x%x% , 0x%x% , 0x%x% , 0x%x% , 0x%x% \r\n", pres_data, P, temp_data, T, hum_data, H, &A);
   	//	xil_printf("0x%x% , 0x%x% , 0x%x% , 0x%x% , 0x%x% , 0x%x% \r\n", pres_data, P, temp_data, T, hum_data, H);
//   	ByteCount = XUartLite_Send(&UartXbee, &data, 8);
   		ByteCount = XUartLite_Send(&UartXbee, testbuff, TBLEN);
   		while(XUartLite_IsSending(&UartXbee)){
   			usleep(100);
   		}
   		if(inB > 10.0){
   			inB = 1.5;
   		}
   		out = pow(inA,inB);
   		inB = inB + 1.0;
   		xil_printf("(%x% )^%x%  = %x% \r\n",inA,inB,out);
   		//xil_printf("%x%x%x%x%x%x%x%x%\r\n",data[0],data[1],data[2],data[3],data[4],data[5],data[6],data[7]);
   		xil_printf("pres_data: %x%     ", pres_data);
   		xil_printf("temp_data: %x%     ", temp_data);
   		xil_printf("hum_data: %x% \r\n", hum_data);
   //		xil_printf("T = %d% C    ", T);
   //		xil_printf("P = 0x%x%     ", P);
   //		xil_printf("H = 0x%x%     ", H);


   		sleep(1);
   	}

   print("---Exiting main---\n\r");
   Xil_DCacheDisable();
   Xil_ICacheDisable();
   return 0;
}