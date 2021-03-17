// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcompensator.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCompensator_CfgInitialize(XCompensator *InstancePtr, XCompensator_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Compensator_io_BaseAddress = ConfigPtr->Compensator_io_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCompensator_Start(XCompensator *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompensator_ReadReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_AP_CTRL) & 0x80;
    XCompensator_WriteReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCompensator_IsDone(XCompensator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompensator_ReadReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCompensator_IsIdle(XCompensator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompensator_ReadReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCompensator_IsReady(XCompensator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompensator_ReadReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCompensator_EnableAutoRestart(XCompensator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompensator_WriteReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_AP_CTRL, 0x80);
}

void XCompensator_DisableAutoRestart(XCompensator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompensator_WriteReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_AP_CTRL, 0);
}

u32 XCompensator_Get_temp_comp(XCompensator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompensator_ReadReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_TEMP_COMP_DATA);
    return Data;
}

u32 XCompensator_Get_temp_comp_vld(XCompensator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompensator_ReadReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_TEMP_COMP_CTRL);
    return Data & 0x1;
}

u32 XCompensator_Get_pres_comp(XCompensator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompensator_ReadReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_PRES_COMP_DATA);
    return Data;
}

u32 XCompensator_Get_pres_comp_vld(XCompensator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompensator_ReadReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_PRES_COMP_CTRL);
    return Data & 0x1;
}

u32 XCompensator_Get_hum_comp(XCompensator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompensator_ReadReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_HUM_COMP_DATA);
    return Data;
}

u32 XCompensator_Get_hum_comp_vld(XCompensator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompensator_ReadReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_HUM_COMP_CTRL);
    return Data & 0x1;
}

void XCompensator_Set_temp_raw(XCompensator *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompensator_WriteReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_TEMP_RAW_DATA, Data);
}

u32 XCompensator_Get_temp_raw(XCompensator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompensator_ReadReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_TEMP_RAW_DATA);
    return Data;
}

void XCompensator_Set_pres_raw(XCompensator *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompensator_WriteReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_PRES_RAW_DATA, Data);
}

u32 XCompensator_Get_pres_raw(XCompensator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompensator_ReadReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_PRES_RAW_DATA);
    return Data;
}

void XCompensator_Set_hum_raw(XCompensator *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompensator_WriteReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_HUM_RAW_DATA, Data);
}

u32 XCompensator_Get_hum_raw(XCompensator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompensator_ReadReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_HUM_RAW_DATA);
    return Data;
}

void XCompensator_InterruptGlobalEnable(XCompensator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompensator_WriteReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_GIE, 1);
}

void XCompensator_InterruptGlobalDisable(XCompensator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompensator_WriteReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_GIE, 0);
}

void XCompensator_InterruptEnable(XCompensator *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCompensator_ReadReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_IER);
    XCompensator_WriteReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_IER, Register | Mask);
}

void XCompensator_InterruptDisable(XCompensator *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCompensator_ReadReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_IER);
    XCompensator_WriteReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_IER, Register & (~Mask));
}

void XCompensator_InterruptClear(XCompensator *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompensator_WriteReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_ISR, Mask);
}

u32 XCompensator_InterruptGetEnabled(XCompensator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCompensator_ReadReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_IER);
}

u32 XCompensator_InterruptGetStatus(XCompensator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCompensator_ReadReg(InstancePtr->Compensator_io_BaseAddress, XCOMPENSATOR_COMPENSATOR_IO_ADDR_ISR);
}

