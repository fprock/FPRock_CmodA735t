

#define _BME280_
#define _NEOM9N_
#define _XBEE_
//#define _VERBOSE_
#define _INTERRUPTS_



#include <stdio.h>
#include <stdlib.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xintc.h"
#include "xgpio.h"
#include "xspi.h"
#include "xuartlite.h"
#include "xil_types.h"
#include "xiic_l.h"
#include "xiic.h"
#include "xil_printf.h"
#include "sleep.h"
#include "BME280_Sensor.h"
#include "xuartlite.h"
#include "math.h"
#include "xcompensator.h"

#define NEOM9N_STATUS_REG 0xFD
#define NEOM9N_STREAM_REG 0xFF
#define NEOM9N_IIC_ADDR 0x42

#define XBEE_UARTLITE_DEVICE_ID		XPAR_UARTLITE_1_DEVICE_ID
#define GPS_UARTLITE_DEVICE_ID		XPAR_UARTLITE_2_DEVICE_ID
#define XBEE_UARTLITE_INTR_ID     	XPAR_INTC_0_UARTLITE_1_VEC_ID
#define GPS_UARTLITE_INTR_ID     	XPAR_INTC_0_UARTLITE_2_VEC_ID
#define COMPENSATOR_INTR_ID			XPAR_INTC_0_COMPENSATOR_0_VEC_ID

#define STRT_CHAR_1 0xBB
#define STRT_CHAR_2 0xAE
#define MSG_CLASS_BARO 0x01
#define MSG_BARO_PAYLOAD_LEN 28
#define MSG_BARO_PAYLOAD_LEN_MSB 0x1C
//#define MSG_BARO_PAYLOAD_LEN_LSB 0x00
#define MSG_STRUCTURE_LEN 6
#define MSG_BARO_TOTAL_LEN MSG_BARO_PAYLOAD_LEN + MSG_STRUCTURE_LEN
#define MSG_PAYLOAD_OFFSET 4

#define MSG_GPS_TOTAL_LEN 128


XUartLite UartXbee;	/* Instance of the UartLite device */

XCompensator CompInst;

#define INTC_DEVICE_ID	XPAR_INTC_0_DEVICE_ID
#define INTC_HANDLER	XIntc_InterruptHandler
//Interrupt Controller Instance
static XIntc InterruptController; /* Instance of the Interrupt Controller */
int ResultAvail_CompInst;

static volatile int TotalRecvCount;
static volatile int TotalSentCount;



#define GPS_MSG_LEN 21

u8 GPSBuffer[GPS_MSG_LEN];

int GPSMsgReady;

int iicBusStatus;

XIic iic_ctrl;
XIic_Config *iic_ctrlCfg;


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

//void iicStatusHandler(void *CallBackRef, int StatusEvent)
//{
//	iicBusStatus = StatusEvent;
//}

int SetupInterruptSystem(void)
 {

 	int Status;

 	/*
 	 * Initialize the interrupt controller driver so that it is
 	 * ready to use.
 	 */
 	Status = XIntc_Initialize(&InterruptController, INTC_DEVICE_ID);
 	if (Status != XST_SUCCESS) {
 		print("Error: XInct_Initialize FAILED!\r\n");
 		return XST_FAILURE;
 	}

 	/*
 	 * Perform a self-test to ensure that the hardware was built  correctly.
 	 */
 	Status = XIntc_SelfTest(&InterruptController);
 	if (Status != XST_SUCCESS) {
 		print("Error: XInct_SelfTest FAILED!\r\n");
 		return XST_FAILURE;
 	}



#ifdef _BME280_
	Status = XIntc_Connect(&InterruptController, COMPENSATOR_INTR_ID, (XInterruptHandler)Compensator_isr, (void *)&CompInst);
	if (Status != XST_SUCCESS) {
		print("Error: XInct_Connect-Compensator FAILED!\r\n");
		return XST_FAILURE;
	}
#endif
//	Status = XIntc_Connect(&InterruptController, XPAR_INTC_0_IIC_0_VEC_ID, (XInterruptHandler)XIic_InterruptHandler, (void *)&iic_ctrl);
//	if (Status != XST_SUCCESS) {
//		print("Error: XInct_Connect-Compensator FAILED!\r\n");
//		return XST_FAILURE;
//	}

	/*
	 * Start the interrupt controller such that interrupts are enabled for
	 * all devices that cause interrupts.
	 */
	Status = XIntc_Start(&InterruptController, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

#ifdef _BME280_
	XIntc_Enable(&InterruptController, COMPENSATOR_INTR_ID);
#endif
//	XIntc_Enable(&InterruptController, XPAR_INTC_0_IIC_0_VEC_ID);

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

#ifdef _BME280_
	XCompensator_InterruptEnable(&CompInst, 1);
	XCompensator_InterruptGlobalEnable(&CompInst);
#endif
//	XIic_SetStatusHandler(&iic_ctrl, &iic_ctrl,
//				   iicStatusHandler);
//	XIic_Start(&iic_ctrl);
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


void print_float(float input){

	int whole, thousandths;

	whole = input;
	thousandths = (input - whole) * 100;
	xil_printf("%d.%02d\n", whole, thousandths);
}


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

void fletcher(u8 *ckAptr, u8 *ckBptr, u8 *buffptr, int N){
	*ckAptr = 0;
	*ckBptr = 0;
	int i;
	for(i = 0; i < N; i++){
		*ckAptr = *ckAptr + buffptr[i];
		*ckBptr = *ckBptr + *ckAptr;
	}
}



u8 *testBuffer = "hello world\r\n";

/*******************************MAIN**********************************************************/
int main () 
{
   static XIntc intc;
   //static XUartLite axi_uartlite_1_UartLite;
   Xil_ICacheEnable();
   Xil_DCacheEnable();

   //print("---Entering main---\n\r");



   int Status;
   u32 Busy;
   uint8_t data[6];
   u32 pres_data, temp_data, hum_data;
   u8 retData;
   //GPSBuffer = (u8 *) malloc(GPS_BUFF_LEN);
   float referencePressure = 103400.0;

   u32 P, T, H, Alt;
   float A;

   u8 measureAddr = BME280_MEASUREMENTS_REG;
   u8 ctrlRegAddr;
   int ByteCount;
   union u_type cnvrt;

   u8 GPS_Status[2];
   u16 GPS_BAvail;
   u32 *baro_msg;
   baro_msg = (u32 *) malloc(MSG_BARO_TOTAL_LEN);
   u8 *baro_msg_u8 = (u8*)baro_msg;

   u8 *gps_msg;
   gps_msg = (u8 *) malloc(MSG_GPS_TOTAL_LEN);

   baro_msg_u8[0] = STRT_CHAR_1;
   baro_msg_u8[1] = STRT_CHAR_2;
   baro_msg_u8[2] = MSG_CLASS_BARO;
   baro_msg_u8[3] = MSG_BARO_PAYLOAD_LEN_MSB;

	u8 *ckaAddr;
	u8 *ckbAddr;
	u8 *plAddr;



	int messageReady = 0;

   //print("---Initialization Starting---\r\n");
   sleep(1);




#ifdef _XBEE_
	Status = XUartLite_Initialize(&UartXbee, XBEE_UARTLITE_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
#endif

//	iic_ctrlCfg = XIic_LookupConfig(XPAR_AXI_IIC_0_DEVICE_ID);
//	Status = XIic_CfgInitialize(&iic_ctrl, iic_ctrlCfg, iic_ctrlCfg->BaseAddress);
//	if (Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}



#ifdef _BME280_

	/*
	 * Initialize the barometer data compensator
	 */
	Status = Compensator_init(&CompInst, XPAR_COMPENSATOR_0_DEVICE_ID);
#ifdef _VERBOSE_
	if (Status != XST_SUCCESS) {
		print("FAILURE: Compensator_init()\n");
	}
	else{
		print("SUCCESS: Compensator_init()\n");
	}
#endif
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Perform soft reset on the barometer
	 */
	Status = BME280_RegSet(BME280_RST_REG,
   			~(BME280_RESET_MASK),
   			(BME280_SOFT_RESET));
#ifdef _VERBOSE_
	if (Status != XST_SUCCESS) {
		print("FAILURE: Compensator_init()\n");
	}
	else{
		print("SUCCESS: Compensator_init()\n");
	}
#endif
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

/*
 * Set barometer standby time and hardware filter amount
 */
   	Status = BME280_RegSet(BME280_CONFIG_REG,
   			~(BME280_CONFIG_T_SB_MASK | BME280_CONFIG_FILTER_MASK),
   			(BME280_T_STANDBY_0_5_MS | BME280_FILTER_COEFF_8));
#ifdef _VERBOSE_
	if (Status != XST_SUCCESS) {
		print("FAILURE: Compensator_init()\n");
	}
	else{
		print("SUCCESS: Compensator_init()\n");
	}
#endif
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

/*
 * Set barometer humidity oversample amount
 */
   	Status = BME280_RegSet(BME280_CTRL_HUMIDITY_REG,
   			~(BME280_CTRL_HUM_MASK),
   			BME280_H_OVERSAMPLE_X8);
#ifdef _VERBOSE_
	if (Status != XST_SUCCESS) {
		print("FAILURE: Compensator Initialization\n");
	}
	else{
		print("SUCCESS: Compensator Initialization\n");
	}
#endif
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

/*
 * Set barometer mode, pressure and temperature oversample amounts
 */
   	Status = BME280_RegSet(BME280_CTRL_MEAS_REG,
   			~(BME280_CTRL_MEAS_MODE_MASK | BME280_CTRL_MEAS_OSRS_P_MASK | BME280_CTRL_MEAS_OSRS_T_MASK),
   			(BME280_CTRL_MEAS_MODE_NORMAL | BME280_P_OVERSAMPLE_X8 | BME280_T_OVERSAMPLE_X8));
#ifdef _VERBOSE_
	if (Status != XST_SUCCESS) {
		print("FAILURE: BME280 set ctrl_meas\n");
	}
	else{
		print("SUCCESS: BME280 set ctrl_meas\n");
	}
#endif
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

   	ctrlRegAddr = BME280_CTRL_MEAS_REG;
   	ByteCount = XIic_Send(XPAR_AXI_IIC_0_BASEADDR, BME280_IIC_ADDR, &ctrlRegAddr, 1, XIIC_REPEATED_START);
   	ByteCount = XIic_Recv(XPAR_AXI_IIC_0_BASEADDR, BME280_IIC_ADDR, &retData, 1, XIIC_STOP);
#ifdef _VERBOSE_
	if (Status != XST_SUCCESS) {
		print("FAILURE: Compensator_init()\n");
	}
	else{
		print("SUCCESS: Compensator_init()\n");
	}
#endif
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
#endif

#ifdef _INTERRUPTS_

   	Status = SetupInterruptSystem();
#ifdef _VERBOSE_
	if (Status != XST_SUCCESS) {
		print("FAILURE: Interrupt Initialization\n");
	}
	else{
		print("SUCCESS: Interrupt Initialization\n");
	}
#endif
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

   	sleep(1);
   //	print("---Initialization Complete---\r\n");
#endif

#ifdef _BME280_

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
	referencePressure = setRefPresFromAlt(cnvrt.f, 13.0);
#endif

	u8 printData;
	ResultAvail_CompInst = 0; //reset the compensator interrupt flag
	int do_not_update = 0;




   	while(1){
#ifdef _NEOM9N_
   		measureAddr = NEOM9N_STATUS_REG;
		ByteCount = XIic_Send(XPAR_AXI_IIC_0_BASEADDR, NEOM9N_IIC_ADDR, &measureAddr, 1, XIIC_REPEATED_START);
		ByteCount = XIic_Recv(XPAR_AXI_IIC_0_BASEADDR, NEOM9N_IIC_ADDR, &GPS_Status, 2, XIIC_STOP);
		GPS_BAvail = (GPS_Status[0] << 8) | GPS_Status[1];
#endif
#ifdef _BME280_
		/*
		 * get data from the barometer and start the compensator
		 */
   		if(!do_not_update){
			measureAddr = BME280_MEASUREMENTS_REG;
			ByteCount = XIic_Send(XPAR_AXI_IIC_0_BASEADDR, BME280_IIC_ADDR, &measureAddr, 1, XIIC_REPEATED_START);
			ByteCount = XIic_Recv(XPAR_AXI_IIC_0_BASEADDR, BME280_IIC_ADDR, &data, 8, XIIC_STOP);
			baro_msg[1] = ((u32)data[0] << 12) | ((u32)data[1] << 4) | ((data[2] >> 4) & 0x0F);
			baro_msg[2] = ((u32)data[3] << 12) | ((u32)data[4] << 4) | ((data[5] >> 4) & 0x0F);
			baro_msg[3] = ((u32)data[6] << 8) | ((u32)data[7]);
			XCompensator_Set_pres_raw(&CompInst, baro_msg[1]); //send p_raw to compensator
			XCompensator_Set_temp_raw(&CompInst, baro_msg[2]); //send t_raw to compensator
			XCompensator_Set_hum_raw(&CompInst, baro_msg[3]);	 //send h_raw to compensator
			XCompensator_Start(&CompInst); // start the compensator

			do_not_update = 1;
   		}

   		if(ResultAvail_CompInst){
   			baro_msg[4] = XCompensator_Get_pres_comp(&CompInst);
   			baro_msg[5] = XCompensator_Get_temp_comp(&CompInst);
   			baro_msg[6] = XCompensator_Get_hum_comp(&CompInst);
			cnvrt.i = baro_msg[4];
			A = FloatAltitudeMeters(cnvrt.f, referencePressure);
			cnvrt.f = A;
			baro_msg[7] = cnvrt.i;
			ckaAddr = &baro_msg_u8[MSG_PAYLOAD_OFFSET + MSG_BARO_PAYLOAD_LEN];
			ckbAddr = &baro_msg_u8[MSG_PAYLOAD_OFFSET + MSG_BARO_PAYLOAD_LEN + 1];
			plAddr = &baro_msg_u8[MSG_PAYLOAD_OFFSET];
			fletcher(ckaAddr, ckbAddr, plAddr, MSG_BARO_PAYLOAD_LEN);
			ResultAvail_CompInst = 0; //reset the compensator interrupt flag

			messageReady = 1;
   		}


#endif
#ifdef _NEOM9N_
		if(GPS_BAvail > 0x0000){
			//xil_printf("bytes available: %d \r\n", GPS_BAvail);
			measureAddr = NEOM9N_STREAM_REG;
			ByteCount = XIic_Send(XPAR_AXI_IIC_0_BASEADDR, NEOM9N_IIC_ADDR, &measureAddr, 1, XIIC_REPEATED_START);
			ByteCount = XIic_Recv(XPAR_AXI_IIC_0_BASEADDR, NEOM9N_IIC_ADDR, gps_msg, GPS_BAvail, XIIC_STOP);
#ifdef _VERBOSE_
			for(int i = 0; i < GPS_BAvail; i++){
				printData = GPSBuffer[i];
				xil_printf("%c", printData);

			}
			print("\r\n");

#endif
			messageReady = 2;
			//GPS_BAvail = 0x0000;
		}
#endif

   		if((messageReady > 0) & !XUartLite_IsSending(&UartXbee)){

#ifdef _VERBOSE_
			xil_printf("p_raw = %x% \n", baro_msg[1]);
			xil_printf("t_raw = %x% \n", baro_msg[2]);
			xil_printf("h_raw = %x% \n", baro_msg[3]);

			print("p_comp = ");
			cnvrt.i = baro_msg[4];
			print_float(cnvrt.f);

			print("t_comp = ");
			cnvrt.i = baro_msg[5];
			print_float(cnvrt.f);

			print("h_comp = ");
			cnvrt.i = baro_msg[6];
			print_float(cnvrt.f);

			print("alt_b = ");
			cnvrt.i = baro_msg[7];
			print_float(cnvrt.f);
			xil_printf("CK_A = 0x%02x \n", *ckaAddr);
			xil_printf("CK_B = 0x%02x \n\n", *ckbAddr);
#endif
#ifdef _XBEE_
			if(messageReady == 1){
				ByteCount = XUartLite_Send(&UartXbee, baro_msg_u8, MSG_BARO_TOTAL_LEN);
				while(XUartLite_IsSending(&UartXbee)){
					usleep(10);
				}
				for(int i = 0; i < MSG_BARO_TOTAL_LEN; i++){
					xil_printf("%02x", baro_msg_u8[i]);
				}
				//print("\n");
			}
			else if(messageReady == 2){
				ByteCount = XUartLite_Send(&UartXbee, gps_msg, GPS_BAvail);
				while(XUartLite_IsSending(&UartXbee)){
					usleep(10);
				}
				for(int i = 0; i < GPS_BAvail; i++){
					xil_printf("%02x", gps_msg[i]);
				}
				//print("\n");
			}
			//ByteCount = XUartLite_Send(&UartXbee, testBuffer, 13);
#endif
			//ByteCount = XUartLite_Send(&UartXbee, testBuffer, 13);
			messageReady = 0;
			do_not_update = 0;
   		}

   		//usleep(500000);
		//sleep(1);
   	}

   print("---Exiting main---\n\r");
   Xil_DCacheDisable();
   Xil_ICacheDisable();
   return 0;
}
