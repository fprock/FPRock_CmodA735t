// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// compensator_io
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of temp_comp
//        bit 31~0 - temp_comp[31:0] (Read)
// 0x14 : Control signal of temp_comp
//        bit 0  - temp_comp_ap_vld (Read/COR)
//        others - reserved
// 0x18 : Data signal of pres_comp
//        bit 31~0 - pres_comp[31:0] (Read)
// 0x1c : Control signal of pres_comp
//        bit 0  - pres_comp_ap_vld (Read/COR)
//        others - reserved
// 0x20 : Data signal of hum_comp
//        bit 31~0 - hum_comp[31:0] (Read)
// 0x24 : Control signal of hum_comp
//        bit 0  - hum_comp_ap_vld (Read/COR)
//        others - reserved
// 0x28 : Data signal of temp_raw
//        bit 31~0 - temp_raw[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of pres_raw
//        bit 31~0 - pres_raw[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of hum_raw
//        bit 31~0 - hum_raw[31:0] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCOMPENSATOR_COMPENSATOR_IO_ADDR_AP_CTRL        0x00
#define XCOMPENSATOR_COMPENSATOR_IO_ADDR_GIE            0x04
#define XCOMPENSATOR_COMPENSATOR_IO_ADDR_IER            0x08
#define XCOMPENSATOR_COMPENSATOR_IO_ADDR_ISR            0x0c
#define XCOMPENSATOR_COMPENSATOR_IO_ADDR_TEMP_COMP_DATA 0x10
#define XCOMPENSATOR_COMPENSATOR_IO_BITS_TEMP_COMP_DATA 32
#define XCOMPENSATOR_COMPENSATOR_IO_ADDR_TEMP_COMP_CTRL 0x14
#define XCOMPENSATOR_COMPENSATOR_IO_ADDR_PRES_COMP_DATA 0x18
#define XCOMPENSATOR_COMPENSATOR_IO_BITS_PRES_COMP_DATA 32
#define XCOMPENSATOR_COMPENSATOR_IO_ADDR_PRES_COMP_CTRL 0x1c
#define XCOMPENSATOR_COMPENSATOR_IO_ADDR_HUM_COMP_DATA  0x20
#define XCOMPENSATOR_COMPENSATOR_IO_BITS_HUM_COMP_DATA  32
#define XCOMPENSATOR_COMPENSATOR_IO_ADDR_HUM_COMP_CTRL  0x24
#define XCOMPENSATOR_COMPENSATOR_IO_ADDR_TEMP_RAW_DATA  0x28
#define XCOMPENSATOR_COMPENSATOR_IO_BITS_TEMP_RAW_DATA  32
#define XCOMPENSATOR_COMPENSATOR_IO_ADDR_PRES_RAW_DATA  0x30
#define XCOMPENSATOR_COMPENSATOR_IO_BITS_PRES_RAW_DATA  32
#define XCOMPENSATOR_COMPENSATOR_IO_ADDR_HUM_RAW_DATA   0x38
#define XCOMPENSATOR_COMPENSATOR_IO_BITS_HUM_RAW_DATA   32

