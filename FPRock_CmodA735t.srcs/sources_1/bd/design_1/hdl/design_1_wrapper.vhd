--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
--Date        : Wed Mar 17 01:21:27 2021
--Host        : chrispy-desktop running 64-bit Ubuntu 20.04.2 LTS
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    cellular_ram_addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    cellular_ram_ce_n : out STD_LOGIC;
    cellular_ram_dq_io : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    cellular_ram_oen : out STD_LOGIC;
    cellular_ram_wen : out STD_LOGIC;
    iic_rtl_scl_io : inout STD_LOGIC;
    iic_rtl_sda_io : inout STD_LOGIC;
    qspi_flash_io0_io : inout STD_LOGIC;
    qspi_flash_io1_io : inout STD_LOGIC;
    qspi_flash_io2_io : inout STD_LOGIC;
    qspi_flash_io3_io : inout STD_LOGIC;
    qspi_flash_ss_io : inout STD_LOGIC;
    reset : in STD_LOGIC;
    rgb_led_tri_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sys_clock : in STD_LOGIC;
    uart_rtl_0_rxd : in STD_LOGIC;
    uart_rtl_0_txd : out STD_LOGIC;
    uart_rtl_rxd : in STD_LOGIC;
    uart_rtl_txd : out STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    cellular_ram_addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    cellular_ram_ce_n : out STD_LOGIC;
    cellular_ram_dq_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cellular_ram_dq_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cellular_ram_dq_t : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cellular_ram_oen : out STD_LOGIC;
    cellular_ram_wen : out STD_LOGIC;
    qspi_flash_io0_i : in STD_LOGIC;
    qspi_flash_io0_o : out STD_LOGIC;
    qspi_flash_io0_t : out STD_LOGIC;
    qspi_flash_io1_i : in STD_LOGIC;
    qspi_flash_io1_o : out STD_LOGIC;
    qspi_flash_io1_t : out STD_LOGIC;
    qspi_flash_io2_i : in STD_LOGIC;
    qspi_flash_io2_o : out STD_LOGIC;
    qspi_flash_io2_t : out STD_LOGIC;
    qspi_flash_io3_i : in STD_LOGIC;
    qspi_flash_io3_o : out STD_LOGIC;
    qspi_flash_io3_t : out STD_LOGIC;
    qspi_flash_ss_i : in STD_LOGIC;
    qspi_flash_ss_o : out STD_LOGIC;
    qspi_flash_ss_t : out STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    rgb_led_tri_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    iic_rtl_scl_i : in STD_LOGIC;
    iic_rtl_scl_o : out STD_LOGIC;
    iic_rtl_scl_t : out STD_LOGIC;
    iic_rtl_sda_i : in STD_LOGIC;
    iic_rtl_sda_o : out STD_LOGIC;
    iic_rtl_sda_t : out STD_LOGIC;
    uart_rtl_rxd : in STD_LOGIC;
    uart_rtl_txd : out STD_LOGIC;
    uart_rtl_0_rxd : in STD_LOGIC;
    uart_rtl_0_txd : out STD_LOGIC
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal cellular_ram_dq_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cellular_ram_dq_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal cellular_ram_dq_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal cellular_ram_dq_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal cellular_ram_dq_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal cellular_ram_dq_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal cellular_ram_dq_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal cellular_ram_dq_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal cellular_ram_dq_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cellular_ram_dq_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal cellular_ram_dq_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal cellular_ram_dq_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal cellular_ram_dq_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal cellular_ram_dq_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal cellular_ram_dq_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal cellular_ram_dq_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal cellular_ram_dq_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cellular_ram_dq_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal cellular_ram_dq_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal cellular_ram_dq_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal cellular_ram_dq_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal cellular_ram_dq_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal cellular_ram_dq_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal cellular_ram_dq_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal cellular_ram_dq_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cellular_ram_dq_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal cellular_ram_dq_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal cellular_ram_dq_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal cellular_ram_dq_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal cellular_ram_dq_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal cellular_ram_dq_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal cellular_ram_dq_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal iic_rtl_scl_i : STD_LOGIC;
  signal iic_rtl_scl_o : STD_LOGIC;
  signal iic_rtl_scl_t : STD_LOGIC;
  signal iic_rtl_sda_i : STD_LOGIC;
  signal iic_rtl_sda_o : STD_LOGIC;
  signal iic_rtl_sda_t : STD_LOGIC;
  signal qspi_flash_io0_i : STD_LOGIC;
  signal qspi_flash_io0_o : STD_LOGIC;
  signal qspi_flash_io0_t : STD_LOGIC;
  signal qspi_flash_io1_i : STD_LOGIC;
  signal qspi_flash_io1_o : STD_LOGIC;
  signal qspi_flash_io1_t : STD_LOGIC;
  signal qspi_flash_io2_i : STD_LOGIC;
  signal qspi_flash_io2_o : STD_LOGIC;
  signal qspi_flash_io2_t : STD_LOGIC;
  signal qspi_flash_io3_i : STD_LOGIC;
  signal qspi_flash_io3_o : STD_LOGIC;
  signal qspi_flash_io3_t : STD_LOGIC;
  signal qspi_flash_ss_i : STD_LOGIC;
  signal qspi_flash_ss_o : STD_LOGIC;
  signal qspi_flash_ss_t : STD_LOGIC;
begin
cellular_ram_dq_iobuf_0: component IOBUF
     port map (
      I => cellular_ram_dq_o_0(0),
      IO => cellular_ram_dq_io(0),
      O => cellular_ram_dq_i_0(0),
      T => cellular_ram_dq_t_0(0)
    );
cellular_ram_dq_iobuf_1: component IOBUF
     port map (
      I => cellular_ram_dq_o_1(1),
      IO => cellular_ram_dq_io(1),
      O => cellular_ram_dq_i_1(1),
      T => cellular_ram_dq_t_1(1)
    );
cellular_ram_dq_iobuf_2: component IOBUF
     port map (
      I => cellular_ram_dq_o_2(2),
      IO => cellular_ram_dq_io(2),
      O => cellular_ram_dq_i_2(2),
      T => cellular_ram_dq_t_2(2)
    );
cellular_ram_dq_iobuf_3: component IOBUF
     port map (
      I => cellular_ram_dq_o_3(3),
      IO => cellular_ram_dq_io(3),
      O => cellular_ram_dq_i_3(3),
      T => cellular_ram_dq_t_3(3)
    );
cellular_ram_dq_iobuf_4: component IOBUF
     port map (
      I => cellular_ram_dq_o_4(4),
      IO => cellular_ram_dq_io(4),
      O => cellular_ram_dq_i_4(4),
      T => cellular_ram_dq_t_4(4)
    );
cellular_ram_dq_iobuf_5: component IOBUF
     port map (
      I => cellular_ram_dq_o_5(5),
      IO => cellular_ram_dq_io(5),
      O => cellular_ram_dq_i_5(5),
      T => cellular_ram_dq_t_5(5)
    );
cellular_ram_dq_iobuf_6: component IOBUF
     port map (
      I => cellular_ram_dq_o_6(6),
      IO => cellular_ram_dq_io(6),
      O => cellular_ram_dq_i_6(6),
      T => cellular_ram_dq_t_6(6)
    );
cellular_ram_dq_iobuf_7: component IOBUF
     port map (
      I => cellular_ram_dq_o_7(7),
      IO => cellular_ram_dq_io(7),
      O => cellular_ram_dq_i_7(7),
      T => cellular_ram_dq_t_7(7)
    );
design_1_i: component design_1
     port map (
      cellular_ram_addr(18 downto 0) => cellular_ram_addr(18 downto 0),
      cellular_ram_ce_n => cellular_ram_ce_n,
      cellular_ram_dq_i(7) => cellular_ram_dq_i_7(7),
      cellular_ram_dq_i(6) => cellular_ram_dq_i_6(6),
      cellular_ram_dq_i(5) => cellular_ram_dq_i_5(5),
      cellular_ram_dq_i(4) => cellular_ram_dq_i_4(4),
      cellular_ram_dq_i(3) => cellular_ram_dq_i_3(3),
      cellular_ram_dq_i(2) => cellular_ram_dq_i_2(2),
      cellular_ram_dq_i(1) => cellular_ram_dq_i_1(1),
      cellular_ram_dq_i(0) => cellular_ram_dq_i_0(0),
      cellular_ram_dq_o(7) => cellular_ram_dq_o_7(7),
      cellular_ram_dq_o(6) => cellular_ram_dq_o_6(6),
      cellular_ram_dq_o(5) => cellular_ram_dq_o_5(5),
      cellular_ram_dq_o(4) => cellular_ram_dq_o_4(4),
      cellular_ram_dq_o(3) => cellular_ram_dq_o_3(3),
      cellular_ram_dq_o(2) => cellular_ram_dq_o_2(2),
      cellular_ram_dq_o(1) => cellular_ram_dq_o_1(1),
      cellular_ram_dq_o(0) => cellular_ram_dq_o_0(0),
      cellular_ram_dq_t(7) => cellular_ram_dq_t_7(7),
      cellular_ram_dq_t(6) => cellular_ram_dq_t_6(6),
      cellular_ram_dq_t(5) => cellular_ram_dq_t_5(5),
      cellular_ram_dq_t(4) => cellular_ram_dq_t_4(4),
      cellular_ram_dq_t(3) => cellular_ram_dq_t_3(3),
      cellular_ram_dq_t(2) => cellular_ram_dq_t_2(2),
      cellular_ram_dq_t(1) => cellular_ram_dq_t_1(1),
      cellular_ram_dq_t(0) => cellular_ram_dq_t_0(0),
      cellular_ram_oen => cellular_ram_oen,
      cellular_ram_wen => cellular_ram_wen,
      iic_rtl_scl_i => iic_rtl_scl_i,
      iic_rtl_scl_o => iic_rtl_scl_o,
      iic_rtl_scl_t => iic_rtl_scl_t,
      iic_rtl_sda_i => iic_rtl_sda_i,
      iic_rtl_sda_o => iic_rtl_sda_o,
      iic_rtl_sda_t => iic_rtl_sda_t,
      qspi_flash_io0_i => qspi_flash_io0_i,
      qspi_flash_io0_o => qspi_flash_io0_o,
      qspi_flash_io0_t => qspi_flash_io0_t,
      qspi_flash_io1_i => qspi_flash_io1_i,
      qspi_flash_io1_o => qspi_flash_io1_o,
      qspi_flash_io1_t => qspi_flash_io1_t,
      qspi_flash_io2_i => qspi_flash_io2_i,
      qspi_flash_io2_o => qspi_flash_io2_o,
      qspi_flash_io2_t => qspi_flash_io2_t,
      qspi_flash_io3_i => qspi_flash_io3_i,
      qspi_flash_io3_o => qspi_flash_io3_o,
      qspi_flash_io3_t => qspi_flash_io3_t,
      qspi_flash_ss_i => qspi_flash_ss_i,
      qspi_flash_ss_o => qspi_flash_ss_o,
      qspi_flash_ss_t => qspi_flash_ss_t,
      reset => reset,
      rgb_led_tri_o(2 downto 0) => rgb_led_tri_o(2 downto 0),
      sys_clock => sys_clock,
      uart_rtl_0_rxd => uart_rtl_0_rxd,
      uart_rtl_0_txd => uart_rtl_0_txd,
      uart_rtl_rxd => uart_rtl_rxd,
      uart_rtl_txd => uart_rtl_txd,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
iic_rtl_scl_iobuf: component IOBUF
     port map (
      I => iic_rtl_scl_o,
      IO => iic_rtl_scl_io,
      O => iic_rtl_scl_i,
      T => iic_rtl_scl_t
    );
iic_rtl_sda_iobuf: component IOBUF
     port map (
      I => iic_rtl_sda_o,
      IO => iic_rtl_sda_io,
      O => iic_rtl_sda_i,
      T => iic_rtl_sda_t
    );
qspi_flash_io0_iobuf: component IOBUF
     port map (
      I => qspi_flash_io0_o,
      IO => qspi_flash_io0_io,
      O => qspi_flash_io0_i,
      T => qspi_flash_io0_t
    );
qspi_flash_io1_iobuf: component IOBUF
     port map (
      I => qspi_flash_io1_o,
      IO => qspi_flash_io1_io,
      O => qspi_flash_io1_i,
      T => qspi_flash_io1_t
    );
qspi_flash_io2_iobuf: component IOBUF
     port map (
      I => qspi_flash_io2_o,
      IO => qspi_flash_io2_io,
      O => qspi_flash_io2_i,
      T => qspi_flash_io2_t
    );
qspi_flash_io3_iobuf: component IOBUF
     port map (
      I => qspi_flash_io3_o,
      IO => qspi_flash_io3_io,
      O => qspi_flash_io3_i,
      T => qspi_flash_io3_t
    );
qspi_flash_ss_iobuf: component IOBUF
     port map (
      I => qspi_flash_ss_o,
      IO => qspi_flash_ss_io,
      O => qspi_flash_ss_i,
      T => qspi_flash_ss_t
    );
end STRUCTURE;
