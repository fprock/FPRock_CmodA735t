
T
Command: %s
53*	vivadotcl2#
phys_opt_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3354.7422default:default2
0.0002default:default2
203492default:default2
262122default:defaultZ17-722h px? 
a

Starting %s Task
103*constraints2&
Physical Synthesis2default:defaultZ18-103h px? 
?

Phase %s%s
101*constraints2
1 2default:default25
!Physical Synthesis Initialization2default:defaultZ18-101h px? 
?
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
82default:defaultZ32-721h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.4702default:default2
-11.3372default:defaultZ32-619h px? 
U
@Phase 1 Physical Synthesis Initialization | Checksum: 119164384
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:07 ; elapsed = 00:00:02 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20352 ; free virtual = 262152default:defaulth px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.4702default:default2
-11.3372default:defaultZ32-619h px? 
z

Phase %s%s
101*constraints2
2 2default:default2-
DSP Register Optimization2default:defaultZ18-101h px? 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
M
8Phase 2 DSP Register Optimization | Checksum: 119164384
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:08 ; elapsed = 00:00:02 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20350 ; free virtual = 262132default:defaulth px? 
{

Phase %s%s
101*constraints2
3 2default:default2.
Critical Path Optimization2default:defaultZ18-101h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.4702default:default2
-11.3372default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0_local_memory/lmb_bram/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[2].ram.r/prim_noinit.ram/doutb[0]?design_1_i/microblaze_0_local_memory/lmb_bram/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[2].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/DOADO[9]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/DOADO[9]2default:default8Z32-702h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg2default:default8Z32-572h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg2default:default2?
design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_1	design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_12default:default8Z32-662h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[8]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[8]2default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[23]_INST_0_comp	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[23]_INST_0_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.4622default:default2
-10.1312default:defaultZ32-619h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg2default:default2
12default:default8Z32-81h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.4072default:default2
-11.1092default:defaultZ32-619h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg_repN_1?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg_repN_12default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_1_replica	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_1_replica2default:default8Z32-662h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[6]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[6]2default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[25]_INST_0_comp	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[25]_INST_0_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg_repN_1?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg_repN_12default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.3572default:default2
-10.3772default:defaultZ32-619h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg2default:default8Z32-572h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg2default:default2?
design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_1	design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_12default:default8Z32-662h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[9]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[9]2default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[22]_INST_0_comp	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[22]_INST_0_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.3532default:default2
-9.7492default:defaultZ32-619h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg2default:default2?
design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_1	design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_12default:default8Z32-662h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[4]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[4]2default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[27]_INST_0_comp	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[27]_INST_0_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.3282default:default2
-8.9642default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0_local_memory/lmb_bram/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[13].ram.r/prim_noinit.ram/doutb[0]?design_1_i/microblaze_0_local_memory/lmb_bram/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[13].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg2default:default2?
design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_1	design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_12default:default8Z32-662h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[13]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[13]2default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[18]_INST_0_comp	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[18]_INST_0_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.3262default:default2
-7.8742default:defaultZ32-619h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg2default:default2?
design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_1	design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_12default:default8Z32-662h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[7]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[7]2default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[24]_INST_0_comp	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[24]_INST_0_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.3032default:default2
-7.2632default:defaultZ32-619h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg2default:default2?
design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_1	design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_12default:default8Z32-662h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[10]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[10]2default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[21]_INST_0_comp	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[21]_INST_0_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.2952default:default2
-6.4492default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Stream.stream_cache_I1/stream_addr_reg_n_0_[1]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Stream.stream_cache_I1/stream_addr_reg_n_0_[1]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Stream.stream_cache_I1/Addr_Handler[6].MUXCY_XOR_I/lopt_7?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Stream.stream_cache_I1/Addr_Handler[6].MUXCY_XOR_I/lopt_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Stream.stream_cache_I1/Addr_Handler[10].MUXCY_XOR_I/lopt_7?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Stream.stream_cache_I1/Addr_Handler[10].MUXCY_XOR_I/lopt_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Stream.stream_cache_I1/Addr_Handler[14].MUXCY_XOR_I/lopt_7?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Stream.stream_cache_I1/Addr_Handler[14].MUXCY_XOR_I/lopt_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Stream.stream_cache_I1/Addr_Handler[18].MUXCY_XOR_I/lopt_7?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Stream.stream_cache_I1/Addr_Handler[18].MUXCY_XOR_I/lopt_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Stream.stream_cache_I1/Addr_Handler[22].MUXCY_XOR_I/lopt_7?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Stream.stream_cache_I1/Addr_Handler[22].MUXCY_XOR_I/lopt_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Stream.stream_cache_I1/Addr_Handler[26].MUXCY_XOR_I/lopt_7?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Stream.stream_cache_I1/Addr_Handler[26].MUXCY_XOR_I/lopt_72default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
zdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/CIzdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/CI2default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/Using_FPGA.Native_I1_i_2__1	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/Using_FPGA.Native_I1_i_2__12default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
zdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/CIzdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/CI2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.2912default:default2
-6.4132default:defaultZ32-619h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2?
zdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/CIzdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/CI2default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/Using_FPGA.Native_I1_i_2__1	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/Using_FPGA.Native_I1_i_2__12default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
zdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/CIzdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/CI2default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2?
|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/E[0]|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/E[0]2default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/Using_FPGA.Native_I1_i_2	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/Using_FPGA.Native_I1_i_22default:default8Z32-662h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
zdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/CIzdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/CI2default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/Using_FPGA.Native_I1_i_2__1_comp	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/Using_FPGA.Native_I1_i_2__1_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/E[0]|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_Victim_Cache.victim_cache_I1/E[0]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.2882default:default2
-5.7012default:defaultZ32-619h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg2default:default2?
design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_1	design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_12default:default8Z32-662h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[5]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[5]2default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[26]_INST_0_comp	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[26]_INST_0_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.2842default:default2
-5.1342default:defaultZ32-619h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg2default:default2?
design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_1	design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_12default:default8Z32-662h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg2default:default8Z32-572h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/Using_ICache_Carry_Chain.ib_addr_strobe_i_carry_and/MUXCY_I/Using_FPGA.Native_0?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/Using_ICache_Carry_Chain.ib_addr_strobe_i_carry_and/MUXCY_I/Using_FPGA.Native_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_Debug.Using_ICache.debug_combinded_carry_or_I/MUXCY_I/lopt_7?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_Debug.Using_ICache.debug_combinded_carry_or_I/MUXCY_I/lopt_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/cache_valid_bit_detect_I1/Valid_check_with_8word_cacheline.valid_check_cacheline[0].valid_check_carry_and_I/MUXCY_I/lopt_7?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/cache_valid_bit_detect_I1/Valid_check_with_8word_cacheline.valid_check_cacheline[0].valid_check_carry_and_I/MUXCY_I/lopt_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_FPGA_FSL_1.tag_hit_comparator/Comp_Carry_Chain[7].MUXCY_I/lopt_7?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_FPGA_FSL_1.tag_hit_comparator/Comp_Carry_Chain[7].MUXCY_I/lopt_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_FPGA_FSL_1.tag_hit_comparator/Comp_Carry_Chain[3].MUXCY_I/lopt_7?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_FPGA_FSL_1.tag_hit_comparator/Comp_Carry_Chain[3].MUXCY_I/lopt_72default:default8Z32-702h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/Comp_Carry_Chain[4].carry_sel_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/Comp_Carry_Chain[4].carry_sel_reg2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.2562default:default2
-4.1532default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/D[0]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/D[0]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_FPGA_FSL_1.tag_hit_comparator/Using_Extra_Carry.MUXCY_EXTRA_I/lopt_7?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Using_FPGA_FSL_1.tag_hit_comparator/Using_Extra_Carry.MUXCY_EXTRA_I/lopt_72default:default8Z32-702h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/S?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/S2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.2542default:default2
-4.0872default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/DOADO[3]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/DOADO[3]2default:default8Z32-702h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/Comp_Carry_Chain[2].carry_sel_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/Comp_Carry_Chain[2].carry_sel_reg2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.2342default:default2
-3.4422default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/DOADO[0]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/DOADO[0]2default:default8Z32-702h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/Comp_Carry_Chain[1].carry_sel_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/Comp_Carry_Chain[1].carry_sel_reg2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.1842default:default2
-2.0062default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/DOADO[18]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/DOADO[18]2default:default8Z32-702h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/Comp_Carry_Chain[7].carry_sel_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/Comp_Carry_Chain[7].carry_sel_reg2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.1412default:default2
-1.1582default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/DOADO[15]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/DOADO[15]2default:default8Z32-702h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/Comp_Carry_Chain[6].carry_sel_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/Comp_Carry_Chain[6].carry_sel_reg2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.1242default:default2
-0.8962default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/DOADO[6]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/DOADO[6]2default:default8Z32-702h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/Comp_Carry_Chain[3].carry_sel_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/Comp_Carry_Chain[3].carry_sel_reg2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.1062default:default2
-0.6442default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/DOADO[12]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/DOADO[12]2default:default8Z32-702h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/Comp_Carry_Chain[5].carry_sel_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/Comp_Carry_Chain[5].carry_sel_reg2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.0262default:default2
-0.0752default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/Valid_Data_Bits[1]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/Valid_Data_Bits[1]2default:default8Z32-702h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/Using_FPGA.Native_0?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/Using_FPGA.Native_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.0192default:default2
-0.0542default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/Comp_Carry_Chain[3].carry_sel_reg?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_ICache.ICache_I1/Tag_RAM_Module/Not_Using_XPM.Using_B36_S36.The_BRAMs[0].RAMB36_I1/Comp_Carry_Chain[3].carry_sel_reg2default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[2]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[2]2default:default2?
|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[29]_INST_0	|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[29]_INST_02default:default8Z32-662h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[2]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[2]2default:default8Z32-572h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[2]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[2]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.0192default:default2
-0.0352default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2?
?design_1_i/microblaze_0_local_memory/lmb_bram/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/doutb[0]?design_1_i/microblaze_0_local_memory/lmb_bram/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/doutb[0]2default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg_repN_1?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg_repN_12default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_1_replica	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_1_replica2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg_repN_1?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg_repN_12default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.0172default:default2
-0.0292default:defaultZ32-619h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[11]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[11]2default:default2?
|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[20]_INST_0	|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[20]_INST_02default:default8Z32-662h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[11]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[11]2default:default8Z32-572h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[11]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[11]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.0132default:default2
-0.0132default:defaultZ32-619h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg_repN_1?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg_repN_12default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_1_replica	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[0]_INST_0_i_1_replica2default:default8Z32-662h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[14]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[14]2default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[17]_INST_0_comp	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[17]_INST_0_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg_repN_1?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_MMU_Protect.ib_vmode_MMU_keep_reg_repN_12default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
0.0212default:default2
0.0002default:defaultZ32-619h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
0.0212default:default2
0.0002default:defaultZ32-619h px? 
N
9Phase 3 Critical Path Optimization | Checksum: 119164384
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:18 ; elapsed = 00:00:05 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20344 ; free virtual = 262072default:defaulth px? 
{

Phase %s%s
101*constraints2
4 2default:default2.
Critical Path Optimization2default:defaultZ18-101h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
0.0212default:default2
0.0002default:defaultZ32-619h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
0.0212default:default2
0.0002default:defaultZ32-619h px? 
N
9Phase 4 Critical Path Optimization | Checksum: 119164384
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:18 ; elapsed = 00:00:05 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20344 ; free virtual = 262072default:defaulth px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.022default:default2
00:00:00.022default:default2
3354.7422default:default2
0.0002default:default2
203462default:default2
262092default:defaultZ17-722h px? 
?
>Post Physical Optimization Timing Summary | WNS=%s | TNS=%s |
318*physynth2
0.0212default:default2
0.0002default:defaultZ32-603h px? 
B
-
Summary of Physical Synthesis Optimizations
*commonh px? 
B
-============================================
*commonh px? 


*commonh px? 


*commonh px? 
?
?-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization   |  WNS Gain (ns)  |  TNS Gain (ns)  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  DSP Register   |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Critical Path  |          0.491  |         11.337  |            1  |              0  |                    24  |           0  |           2  |  00:00:03  |
|  Total          |          0.491  |         11.337  |            1  |              0  |                    24  |           0  |           3  |  00:00:03  |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3354.7422default:default2
0.0002default:default2
203462default:default2
262092default:defaultZ17-722h px? 
J
5Ending Physical Synthesis Task | Checksum: 119164384
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:18 ; elapsed = 00:00:05 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20346 ; free virtual = 262092default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2762default:default2
192default:default2
02default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
phys_opt_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2%
phys_opt_design: 2default:default2
00:00:262default:default2
00:00:072default:default2
3354.7422default:default2
0.0002default:default2
203622default:default2
262252default:defaultZ17-722h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3354.7422default:default2
0.0002default:default2
203622default:default2
262252default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:032default:default2
00:00:012default:default2
3354.7422default:default2
0.0002default:default2
202992default:default2
262062default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2v
b/home/chrispy/workspace/FPRock_CmodA735t/FPRock_CmodA735t.runs/impl_1/design_1_wrapper_physopt.dcp2default:defaultZ17-1381h px? 


End Record