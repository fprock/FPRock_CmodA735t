// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __compensator_sitodeOg__HH__
#define __compensator_sitodeOg__HH__
#include "ACMP_sitodp.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int dout_WIDTH>
SC_MODULE(compensator_sitodeOg) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_sitodp<ID, 6, din0_WIDTH, dout_WIDTH> ACMP_sitodp_U;

    SC_CTOR(compensator_sitodeOg):  ACMP_sitodp_U ("ACMP_sitodp_U") {
        ACMP_sitodp_U.clk(clk);
        ACMP_sitodp_U.reset(reset);
        ACMP_sitodp_U.ce(ce);
        ACMP_sitodp_U.din0(din0);
        ACMP_sitodp_U.dout(dout);

    }

};

#endif //
