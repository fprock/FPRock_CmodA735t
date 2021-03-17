// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcompensator.h"

extern XCompensator_Config XCompensator_ConfigTable[];

XCompensator_Config *XCompensator_LookupConfig(u16 DeviceId) {
	XCompensator_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCOMPENSATOR_NUM_INSTANCES; Index++) {
		if (XCompensator_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCompensator_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCompensator_Initialize(XCompensator *InstancePtr, u16 DeviceId) {
	XCompensator_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCompensator_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCompensator_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

