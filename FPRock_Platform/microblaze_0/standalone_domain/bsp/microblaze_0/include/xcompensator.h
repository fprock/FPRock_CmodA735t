// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCOMPENSATOR_H
#define XCOMPENSATOR_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xcompensator_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Compensator_io_BaseAddress;
} XCompensator_Config;
#endif

typedef struct {
    u32 Compensator_io_BaseAddress;
    u32 IsReady;
} XCompensator;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCompensator_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCompensator_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCompensator_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCompensator_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XCompensator_Initialize(XCompensator *InstancePtr, u16 DeviceId);
XCompensator_Config* XCompensator_LookupConfig(u16 DeviceId);
int XCompensator_CfgInitialize(XCompensator *InstancePtr, XCompensator_Config *ConfigPtr);
#else
int XCompensator_Initialize(XCompensator *InstancePtr, const char* InstanceName);
int XCompensator_Release(XCompensator *InstancePtr);
#endif

void XCompensator_Start(XCompensator *InstancePtr);
u32 XCompensator_IsDone(XCompensator *InstancePtr);
u32 XCompensator_IsIdle(XCompensator *InstancePtr);
u32 XCompensator_IsReady(XCompensator *InstancePtr);
void XCompensator_EnableAutoRestart(XCompensator *InstancePtr);
void XCompensator_DisableAutoRestart(XCompensator *InstancePtr);

u32 XCompensator_Get_temp_comp(XCompensator *InstancePtr);
u32 XCompensator_Get_temp_comp_vld(XCompensator *InstancePtr);
u32 XCompensator_Get_pres_comp(XCompensator *InstancePtr);
u32 XCompensator_Get_pres_comp_vld(XCompensator *InstancePtr);
u32 XCompensator_Get_hum_comp(XCompensator *InstancePtr);
u32 XCompensator_Get_hum_comp_vld(XCompensator *InstancePtr);
void XCompensator_Set_temp_raw(XCompensator *InstancePtr, u32 Data);
u32 XCompensator_Get_temp_raw(XCompensator *InstancePtr);
void XCompensator_Set_pres_raw(XCompensator *InstancePtr, u32 Data);
u32 XCompensator_Get_pres_raw(XCompensator *InstancePtr);
void XCompensator_Set_hum_raw(XCompensator *InstancePtr, u32 Data);
u32 XCompensator_Get_hum_raw(XCompensator *InstancePtr);

void XCompensator_InterruptGlobalEnable(XCompensator *InstancePtr);
void XCompensator_InterruptGlobalDisable(XCompensator *InstancePtr);
void XCompensator_InterruptEnable(XCompensator *InstancePtr, u32 Mask);
void XCompensator_InterruptDisable(XCompensator *InstancePtr, u32 Mask);
void XCompensator_InterruptClear(XCompensator *InstancePtr, u32 Mask);
u32 XCompensator_InterruptGetEnabled(XCompensator *InstancePtr);
u32 XCompensator_InterruptGetStatus(XCompensator *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
