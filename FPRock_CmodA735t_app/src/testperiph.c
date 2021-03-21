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

#define _BME280_
#define _VERBOSE_

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
#include "xcompensator.h"

XUartLite UartXbee;	/* Instance of the UartLite device */
XuartLite UartGPS;
#define INTC_DEVICE_ID	XPAR_INTC_0_DEVICE_ID
#define INTC_HANDLER	XIntc_InterruptHandler
XCompensator CompInst;
//Interrupt Controller Instance
static XIntc InterruptController; /* Instance of the Interrupt Controller */
int ResultAvail_CompInst;

static volatile int TotalRecvCount;
static volatile int TotalSentCount;

#define GPS_INT_IRQ_ID     XPAR_INTC_0_UARTLITE_0_VEC_ID

int Compensator_init(XCompensator *CompInst, u16 CompId){
	 XCompensator_Config *cfg_ptr;
	 int status;

	 cfg_ptr = XCompensator_LookupConfig(CompId);
	 if (!cfg_ptr) {
	       print("ERROR: Lookup of cfg_ptr configuration failed.\n\r");
	       return XST_FAILURE;
	 }

	 status = XCompensator_CfgInitialize(CompInst, cfg_ptr);
	 if (status != XST_SUCCESS) {
	       print("ERROR: Could not initialize BME280_Compensate.\n\r");
	       return XST_FAILURE;
	 }

	 return status;
}

void Compensator_isr(void *InstancePtr)
{
	 XCompensator *pAccelerator = (XCompensator *)InstancePtr;

 	   // clear the local interrupt
	 XCompensator_InterruptClear(pAccelerator,1);
	 //print("INTERRUPT!\r\n");
 	 ResultAvail_CompInst = 1;
}

void GPSSendHandler(void *CallBackRef, unsigned int EventData)
{
	TotalSentCount = EventData;
}

void GPSRecvHandler(void *CallBackRef, unsigned int EventData)
{
	TotalRecvCount = EventData;
}

int SetupInterruptSystem(XIntc *IntcInstancePtr, XCompensator *CompInstPtr, u16 CompIntrId, XUartLite *UartLitePtr, u16 GPSIntrId)
 {

 	int Status;

 	/*
 	 * Initialize the interrupt controller driver so that it is
 	 * ready to use.
 	 */
 	Status = XIntc_Initialize(IntcInstancePtr, INTC_DEVICE_ID);
 	if (Status != XST_SUCCESS) {
 		print("Error: XInct_Initialize FAILED!\r\n");
 		return XST_FAILURE;
 	}

 	/*
 	 * Perform a self-test to ensure that the hardware was built  correctly.
 	 */
 	Status = XIntc_SelfTest(IntcInstancePtr);
 	if (Status != XST_SUCCESS) {
 		print("Error: XInct_SelfTest FAILED!\r\n");
 		return XST_FAILURE;
 	}

 	/*
 		 * Connect a device driver handler that will be called when an interrupt
 		 * for the device occurs, the device driver handler performs the specific
 		 * interrupt processing for the device.
 		 */
	Status = XIntc_Connect(IntcInstancePtr, CompIntrId, (XInterruptHandler)Compensator_isr, (void *)CompInstPtr);
	if (Status != XST_SUCCESS) {
		print("Error: XInct_Connect FAILED!\r\n");
		return XST_FAILURE;
	}
	/*
	 * Connect a device driver handler that will be called when an interrupt
	 * for the device occurs, the device driver handler performs the
	 * specific interrupt processing for the device.
	 */
	Status = XIntc_Connect(IntcInstancePtr, GPSIntrId,
			   (XInterruptHandler)XUartLite_InterruptHandler,
			   (void *)UartLitePtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Start the interrupt controller such that interrupts are enabled for
	 * all devices that cause interrupts.
	 */
	Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	XIntc_Enable(IntcInstancePtr, CompIntrId);
 	/*
	 * Initialize the exception table.
	 */
	Xil_ExceptionInit();
 	/*
 	 * Register the interrupt controller handler with the exception table.
 	 */
 	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
 			(Xil_ExceptionHandler)XIntc_DeviceInterruptHandler,
 			(void*) 0);
 	/*
 	 * Enable exceptions.
 	 */
 	Xil_ExceptionEnable();

	XCompensator_InterruptEnable(CompInstPtr, 1);
	XCompensator_InterruptGlobalEnable(CompInstPtr);
	XUartLite_SetSendHandler(UartLitePtr, GPSSendHandler, UartLitePtr);
	XUartLite_SetRecvHandler(UartLitePtr, GPSRecvHandler, UartLitePtr);
	return XST_SUCCESS;

 }

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

union u_type{
	u32 i;
	float f;
};

#ifdef _VERBOSE_
void print_float(float input){

	int whole, thousandths;

	whole = input;
	thousandths = (input - whole) * 100;
	xil_printf("%d.%02d\n", whole, thousandths);
}
#endif

float FloatAltitudeMeters(float currPres, float refPres)
{
	float heightOutput = 0;
	heightOutput = ((float)-44330.77)*(pow((currPres/refPres), 0.190263) - (float)1); //Corrected, see issue 30
	return heightOutput;
}

float setRefPresFromAlt(float currPres, float currAlt){
	float referencePres;
	referencePres = currPres / pow((1 + (-0.000022558 * currAlt)), 5.255882647);
	return referencePres;
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

   float referencePressure = 103400.0;

   u32 P, T, H;
   float A;
   u8 measureAddr = BME280_MEASUREMENTS_REG;
   u8 ctrlRegAddr;
   int ByteCount;
   union u_type cnvrt;

   print("---Initialization Starting---\r\n");
   sleep(1);

	Status = Compensator_init(&CompInst, XPAR_COMPENSATOR_0_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		print("Error: bme280_compensate_init\t\t\tFAILED!\r\n");
	}
	else{
		print("bme280_compensate_init\t\t\tSUCCESSFUL!\r\n");
	}

	Status = Compensator_IntrSetup(&InterruptController, &CompInst, XPAR_INTC_0_COMPENSATOR_0_VEC_ID);
	if (Status != XST_SUCCESS) {
		print("Error: BME280InterruptSetup\t\t\tFAILED!\r\n");
	}
	else{
		print("BME280InterruptSetup\t\t\tSUCCESSFUL!\r\n");
	}



#ifdef _XBEE_
	Status = XUartLite_Initialize(&UartXbee, XPAR_UARTLITE_1_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
#endif

#ifdef _BME280_
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


#endif
   	sleep(1);
   	print("---Initialization Complete---\r\n");
   	measureAddr = BME280_MEASUREMENTS_REG;
	ByteCount = XIic_Send(XPAR_AXI_IIC_0_BASEADDR, BME280_IIC_ADDR, &measureAddr, 1, XIIC_REPEATED_START);
	ByteCount = XIic_Recv(XPAR_AXI_IIC_0_BASEADDR, BME280_IIC_ADDR, &data, 8, XIIC_STOP);
	ResultAvail_CompInst = 0;
	pres_data = ((u32)data[0] << 12) | ((u32)data[1] << 4) | ((data[2] >> 4) & 0x0F);
	temp_data = ((u32)data[3] << 12) | ((u32)data[4] << 4) | ((data[5] >> 4) & 0x0F);
	hum_data = ((u32)data[6] << 8) | ((u32)data[7]);
	XCompensator_Set_temp_raw(&CompInst, temp_data);
	XCompensator_Set_pres_raw(&CompInst, pres_data);
	XCompensator_Set_hum_raw(&CompInst, hum_data);
	XCompensator_Start(&CompInst);
	while(!ResultAvail_CompInst){
						usleep(500); //having issues with this loop when there is nothing in it or
									//before it. the loop gets hung even when it is not satisfied.
									// maybe do;while?
	}
	T = XCompensator_Get_temp_comp(&CompInst);
	cnvrt.i = XCompensator_Get_pres_comp(&CompInst);
	H = XCompensator_Get_hum_comp(&CompInst);
	referencePressure = getRefPres(cnvrt.f, 13.0);
	xil_printf("refPres:  ");
	print_float(referencePressure);


   	//print("\r\nRawPres(uint32_t), CompPres(IEEE 754)(Pa), RawTemp(uint32_t), CompTemp(IEEE 754)(C), RawHum(uint32_t), CompHum(IEEE 754)(%)\r\n\r\n");
   	while(1){
   		measureAddr = BME280_MEASUREMENTS_REG;
   		ByteCount = XIic_Send(XPAR_AXI_IIC_0_BASEADDR, BME280_IIC_ADDR, &measureAddr, 1, XIIC_REPEATED_START);
   		ByteCount = XIic_Recv(XPAR_AXI_IIC_0_BASEADDR, BME280_IIC_ADDR, &data, 8, XIIC_STOP);

   		ResultAvail_CompInst = 0;
   		pres_data = ((u32)data[0] << 12) | ((u32)data[1] << 4) | ((data[2] >> 4) & 0x0F);
   		temp_data = ((u32)data[3] << 12) | ((u32)data[4] << 4) | ((data[5] >> 4) & 0x0F);
   		hum_data = ((u32)data[6] << 8) | ((u32)data[7]);


   		//xil_printf("0x%x% , 0x%x% , 0x%x% , 0x%x% , 0x%x% , 0x%x% , 0x%x% \r\n", pres_data, P, temp_data, T, hum_data, H, &A);
   	//	xil_printf("0x%x% , 0x%x% , 0x%x% , 0x%x% , 0x%x% , 0x%x% \r\n", pres_data, P, temp_data, T, hum_data, H);
//   	ByteCount = XUartLite_Send(&UartXbee, &data, 8);
   		XCompensator_Set_temp_raw(&CompInst, temp_data);
		XCompensator_Set_pres_raw(&CompInst, pres_data);
		XCompensator_Set_hum_raw(&CompInst, hum_data);

		XCompensator_Start(&CompInst);
//   		ByteCount = XUartLite_Send(&UartXbee, testbuff, TBLEN);
//   		while(XUartLite_IsSending(&UartXbee)){
//   			usleep(100);
//   		}
   		while(!ResultAvail_CompInst){
   					usleep(500); //having issues with this loop when there is nothing in it or
   								//before it. the loop gets hung even when it is not satisfied.
   								// maybe do;while?
		}

   		T = XCompensator_Get_temp_comp(&CompInst);
		P = XCompensator_Get_pres_comp(&CompInst);
		H = XCompensator_Get_hum_comp(&CompInst);

		cnvrt.i = P;
		A = FloatAltitudeMeters(cnvrt.f, referencePressure);

   		xil_printf("pres_data: %x%     ", pres_data);
   		xil_printf("temp_data: %x%     ", temp_data);
   		xil_printf("hum_data: %x% \r\n", hum_data);
   		xil_printf("T = 0x%x%     ", T);
   		xil_printf("P = 0x%x%     ", P);
   		xil_printf("H = 0x%x% \r\n", H);
   		cnvrt.i = T;
   		print_float(cnvrt.f);
   		cnvrt.i = P;
		print_float(cnvrt.f);
   		cnvrt.i = H;
		print_float(cnvrt.f);
   		print_float(A);
   		xil_printf("\r\n");


   		sleep(1);
   	}

   print("---Exiting main---\n\r");
   Xil_DCacheDisable();
   Xil_ICacheDisable();
   return 0;
}
