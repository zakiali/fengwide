
-------------------------------------------------------------------
-- System Generator version 13.2 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- The following code must appear in the VHDL architecture header:

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component roachf_1024_bao_cw  port (
    ce: in std_logic := '1'; 
    clk: in std_logic; -- clock period = 6.6667 ns (149.99925000374998 Mhz)
    roachf_1024_bao_adc_s_adc1_user_data_valid: in std_logic; 
    roachf_1024_bao_adc_s_adc1_user_datai0: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_datai1: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_datai2: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_datai3: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_dataq0: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_dataq1: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_dataq2: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_dataq3: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_outofrangei0: in std_logic; 
    roachf_1024_bao_adc_s_adc1_user_outofrangei1: in std_logic; 
    roachf_1024_bao_adc_s_adc1_user_outofrangeq0: in std_logic; 
    roachf_1024_bao_adc_s_adc1_user_outofrangeq1: in std_logic; 
    roachf_1024_bao_adc_s_adc1_user_sync0: in std_logic; 
    roachf_1024_bao_adc_s_adc1_user_sync1: in std_logic; 
    roachf_1024_bao_adc_s_adc1_user_sync2: in std_logic; 
    roachf_1024_bao_adc_s_adc1_user_sync3: in std_logic; 
    roachf_1024_bao_adc_s_adc_user_data_valid: in std_logic; 
    roachf_1024_bao_adc_s_adc_user_datai0: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_datai1: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_datai2: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_datai3: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_dataq0: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_dataq1: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_dataq2: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_dataq3: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_outofrangei0: in std_logic; 
    roachf_1024_bao_adc_s_adc_user_outofrangei1: in std_logic; 
    roachf_1024_bao_adc_s_adc_user_outofrangeq0: in std_logic; 
    roachf_1024_bao_adc_s_adc_user_outofrangeq1: in std_logic; 
    roachf_1024_bao_adc_s_adc_user_sync0: in std_logic; 
    roachf_1024_bao_adc_s_adc_user_sync1: in std_logic; 
    roachf_1024_bao_adc_s_adc_user_sync2: in std_logic; 
    roachf_1024_bao_adc_s_adc_user_sync3: in std_logic; 
    roachf_1024_bao_ant_base_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_delay_values_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_eq_quant0_addr_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_eq_quant0_gain_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_eq_quant1_addr_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_eq_quant1_gain_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_eq_quant2_addr_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_eq_quant2_gain_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_eq_quant3_addr_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_eq_quant3_gain_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_feng_ctl_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_fft_shift_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_gbe_sw_port_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_gpu_gbe2_led_rx: in std_logic; 
    roachf_1024_bao_gpu_gbe2_led_tx: in std_logic; 
    roachf_1024_bao_gpu_gbe2_led_up: in std_logic; 
    roachf_1024_bao_gpu_gbe2_rx_bad_frame: in std_logic; 
    roachf_1024_bao_gpu_gbe2_rx_data: in std_logic_vector(63 downto 0); 
    roachf_1024_bao_gpu_gbe2_rx_end_of_frame: in std_logic; 
    roachf_1024_bao_gpu_gbe2_rx_overrun: in std_logic; 
    roachf_1024_bao_gpu_gbe2_rx_source_ip: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_gpu_gbe2_rx_source_port: in std_logic_vector(15 downto 0); 
    roachf_1024_bao_gpu_gbe2_rx_valid: in std_logic; 
    roachf_1024_bao_gpu_gbe2_tx_afull: in std_logic; 
    roachf_1024_bao_gpu_gbe2_tx_overflow: in std_logic; 
    roachf_1024_bao_gpu_ip_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_gpu_port_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_input_selector_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_ip_base_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_my_ip_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_seed_data_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_switch_gbe3_led_rx: in std_logic; 
    roachf_1024_bao_switch_gbe3_led_tx: in std_logic; 
    roachf_1024_bao_switch_gbe3_led_up: in std_logic; 
    roachf_1024_bao_switch_gbe3_rx_bad_frame: in std_logic; 
    roachf_1024_bao_switch_gbe3_rx_data: in std_logic_vector(63 downto 0); 
    roachf_1024_bao_switch_gbe3_rx_end_of_frame: in std_logic; 
    roachf_1024_bao_switch_gbe3_rx_overrun: in std_logic; 
    roachf_1024_bao_switch_gbe3_rx_source_ip: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_switch_gbe3_rx_source_port: in std_logic_vector(15 downto 0); 
    roachf_1024_bao_switch_gbe3_rx_valid: in std_logic; 
    roachf_1024_bao_switch_gbe3_tx_afull: in std_logic; 
    roachf_1024_bao_switch_gbe3_tx_overflow: in std_logic; 
    roachf_1024_bao_transpose_qdr_reorder1_qdr_ack: in std_logic; 
    roachf_1024_bao_transpose_qdr_reorder1_qdr_cal_fail: in std_logic; 
    roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out: in std_logic_vector(35 downto 0); 
    roachf_1024_bao_transpose_qdr_reorder1_qdr_phy_ready: in std_logic; 
    roachf_1024_bao_transpose_qdr_reorder_qdr_ack: in std_logic; 
    roachf_1024_bao_transpose_qdr_reorder_qdr_cal_fail: in std_logic; 
    roachf_1024_bao_transpose_qdr_reorder_qdr_data_out: in std_logic_vector(35 downto 0); 
    roachf_1024_bao_transpose_qdr_reorder_qdr_phy_ready: in std_logic; 
    roachf_1024_bao_gpu_gbe2_rst: out std_logic; 
    roachf_1024_bao_gpu_gbe2_rx_ack: out std_logic; 
    roachf_1024_bao_gpu_gbe2_rx_overrun_ack: out std_logic; 
    roachf_1024_bao_gpu_gbe2_tx_data: out std_logic_vector(63 downto 0); 
    roachf_1024_bao_gpu_gbe2_tx_dest_ip: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_gpu_gbe2_tx_dest_port: out std_logic_vector(15 downto 0); 
    roachf_1024_bao_gpu_gbe2_tx_end_of_frame: out std_logic; 
    roachf_1024_bao_gpu_gbe2_tx_valid: out std_logic; 
    roachf_1024_bao_gpu_mcnt_lsb_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_gpu_mcnt_msb_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_leds_led1_arm_gateway: out std_logic; 
    roachf_1024_bao_leds_led2_sync_gateway: out std_logic; 
    roachf_1024_bao_leds_led4_eq_clip_gateway: out std_logic; 
    roachf_1024_bao_loopback_loop_cnt_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_loopback_loop_err_cnt_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_loopback_loopback_fifo_lb_err_cnt_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_loopback_loopback_mux_gbe_over_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_loopback_loopback_mux_gbe_und_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_loopback_loopback_mux_lb_over_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_loopback_loopback_mux_lb_und_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_loopback_rx_cnt_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_loopback_rx_err_cnt_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_loopback_rx_pkt_fifo_gbe_err_cnt_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_loopback_rx_pkt_fifo_santa_2big_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_loopback_rx_pkt_fifo_santa_2small_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_status_gbe_gpu_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_status_gbe_sw_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_status_swgbe_bframe_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_status_swgbe_oflow_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_status_swgbe_orun_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_switch_10gbetxsnap_addr_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_switch_10gbetxsnap_bram_lsb_addr: out std_logic_vector(9 downto 0); 
    roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_switch_10gbetxsnap_bram_lsb_we: out std_logic; 
    roachf_1024_bao_switch_10gbetxsnap_bram_msb_addr: out std_logic_vector(9 downto 0); 
    roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_switch_10gbetxsnap_bram_msb_we: out std_logic; 
    roachf_1024_bao_switch_10gbetxsnap_bram_oob_addr: out std_logic_vector(9 downto 0); 
    roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_in: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_switch_10gbetxsnap_bram_oob_we: out std_logic; 
    roachf_1024_bao_switch_gbe3_rst: out std_logic; 
    roachf_1024_bao_switch_gbe3_rx_ack: out std_logic; 
    roachf_1024_bao_switch_gbe3_rx_overrun_ack: out std_logic; 
    roachf_1024_bao_switch_gbe3_tx_data: out std_logic_vector(63 downto 0); 
    roachf_1024_bao_switch_gbe3_tx_dest_ip: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_switch_gbe3_tx_dest_port: out std_logic_vector(15 downto 0); 
    roachf_1024_bao_switch_gbe3_tx_end_of_frame: out std_logic; 
    roachf_1024_bao_switch_gbe3_tx_valid: out std_logic; 
    roachf_1024_bao_transpose_qdr_reorder1_qdr_address: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_transpose_qdr_reorder1_qdr_be: out std_logic_vector(3 downto 0); 
    roachf_1024_bao_transpose_qdr_reorder1_qdr_data_in: out std_logic_vector(35 downto 0); 
    roachf_1024_bao_transpose_qdr_reorder1_qdr_rd_en: out std_logic; 
    roachf_1024_bao_transpose_qdr_reorder1_qdr_wr_en: out std_logic; 
    roachf_1024_bao_transpose_qdr_reorder_qdr_address: out std_logic_vector(31 downto 0); 
    roachf_1024_bao_transpose_qdr_reorder_qdr_be: out std_logic_vector(3 downto 0); 
    roachf_1024_bao_transpose_qdr_reorder_qdr_data_in: out std_logic_vector(35 downto 0); 
    roachf_1024_bao_transpose_qdr_reorder_qdr_rd_en: out std_logic; 
    roachf_1024_bao_transpose_qdr_reorder_qdr_wr_en: out std_logic
  );
end component;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body.  Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : roachf_1024_bao_cw
  port map (
    ce => ce,
    clk => clk,
    roachf_1024_bao_adc_s_adc1_user_data_valid => roachf_1024_bao_adc_s_adc1_user_data_valid,
    roachf_1024_bao_adc_s_adc1_user_datai0 => roachf_1024_bao_adc_s_adc1_user_datai0,
    roachf_1024_bao_adc_s_adc1_user_datai1 => roachf_1024_bao_adc_s_adc1_user_datai1,
    roachf_1024_bao_adc_s_adc1_user_datai2 => roachf_1024_bao_adc_s_adc1_user_datai2,
    roachf_1024_bao_adc_s_adc1_user_datai3 => roachf_1024_bao_adc_s_adc1_user_datai3,
    roachf_1024_bao_adc_s_adc1_user_dataq0 => roachf_1024_bao_adc_s_adc1_user_dataq0,
    roachf_1024_bao_adc_s_adc1_user_dataq1 => roachf_1024_bao_adc_s_adc1_user_dataq1,
    roachf_1024_bao_adc_s_adc1_user_dataq2 => roachf_1024_bao_adc_s_adc1_user_dataq2,
    roachf_1024_bao_adc_s_adc1_user_dataq3 => roachf_1024_bao_adc_s_adc1_user_dataq3,
    roachf_1024_bao_adc_s_adc1_user_outofrangei0 => roachf_1024_bao_adc_s_adc1_user_outofrangei0,
    roachf_1024_bao_adc_s_adc1_user_outofrangei1 => roachf_1024_bao_adc_s_adc1_user_outofrangei1,
    roachf_1024_bao_adc_s_adc1_user_outofrangeq0 => roachf_1024_bao_adc_s_adc1_user_outofrangeq0,
    roachf_1024_bao_adc_s_adc1_user_outofrangeq1 => roachf_1024_bao_adc_s_adc1_user_outofrangeq1,
    roachf_1024_bao_adc_s_adc1_user_sync0 => roachf_1024_bao_adc_s_adc1_user_sync0,
    roachf_1024_bao_adc_s_adc1_user_sync1 => roachf_1024_bao_adc_s_adc1_user_sync1,
    roachf_1024_bao_adc_s_adc1_user_sync2 => roachf_1024_bao_adc_s_adc1_user_sync2,
    roachf_1024_bao_adc_s_adc1_user_sync3 => roachf_1024_bao_adc_s_adc1_user_sync3,
    roachf_1024_bao_adc_s_adc_user_data_valid => roachf_1024_bao_adc_s_adc_user_data_valid,
    roachf_1024_bao_adc_s_adc_user_datai0 => roachf_1024_bao_adc_s_adc_user_datai0,
    roachf_1024_bao_adc_s_adc_user_datai1 => roachf_1024_bao_adc_s_adc_user_datai1,
    roachf_1024_bao_adc_s_adc_user_datai2 => roachf_1024_bao_adc_s_adc_user_datai2,
    roachf_1024_bao_adc_s_adc_user_datai3 => roachf_1024_bao_adc_s_adc_user_datai3,
    roachf_1024_bao_adc_s_adc_user_dataq0 => roachf_1024_bao_adc_s_adc_user_dataq0,
    roachf_1024_bao_adc_s_adc_user_dataq1 => roachf_1024_bao_adc_s_adc_user_dataq1,
    roachf_1024_bao_adc_s_adc_user_dataq2 => roachf_1024_bao_adc_s_adc_user_dataq2,
    roachf_1024_bao_adc_s_adc_user_dataq3 => roachf_1024_bao_adc_s_adc_user_dataq3,
    roachf_1024_bao_adc_s_adc_user_outofrangei0 => roachf_1024_bao_adc_s_adc_user_outofrangei0,
    roachf_1024_bao_adc_s_adc_user_outofrangei1 => roachf_1024_bao_adc_s_adc_user_outofrangei1,
    roachf_1024_bao_adc_s_adc_user_outofrangeq0 => roachf_1024_bao_adc_s_adc_user_outofrangeq0,
    roachf_1024_bao_adc_s_adc_user_outofrangeq1 => roachf_1024_bao_adc_s_adc_user_outofrangeq1,
    roachf_1024_bao_adc_s_adc_user_sync0 => roachf_1024_bao_adc_s_adc_user_sync0,
    roachf_1024_bao_adc_s_adc_user_sync1 => roachf_1024_bao_adc_s_adc_user_sync1,
    roachf_1024_bao_adc_s_adc_user_sync2 => roachf_1024_bao_adc_s_adc_user_sync2,
    roachf_1024_bao_adc_s_adc_user_sync3 => roachf_1024_bao_adc_s_adc_user_sync3,
    roachf_1024_bao_ant_base_user_data_out => roachf_1024_bao_ant_base_user_data_out,
    roachf_1024_bao_delay_values_user_data_out => roachf_1024_bao_delay_values_user_data_out,
    roachf_1024_bao_eq_quant0_addr_user_data_out => roachf_1024_bao_eq_quant0_addr_user_data_out,
    roachf_1024_bao_eq_quant0_gain_user_data_out => roachf_1024_bao_eq_quant0_gain_user_data_out,
    roachf_1024_bao_eq_quant1_addr_user_data_out => roachf_1024_bao_eq_quant1_addr_user_data_out,
    roachf_1024_bao_eq_quant1_gain_user_data_out => roachf_1024_bao_eq_quant1_gain_user_data_out,
    roachf_1024_bao_eq_quant2_addr_user_data_out => roachf_1024_bao_eq_quant2_addr_user_data_out,
    roachf_1024_bao_eq_quant2_gain_user_data_out => roachf_1024_bao_eq_quant2_gain_user_data_out,
    roachf_1024_bao_eq_quant3_addr_user_data_out => roachf_1024_bao_eq_quant3_addr_user_data_out,
    roachf_1024_bao_eq_quant3_gain_user_data_out => roachf_1024_bao_eq_quant3_gain_user_data_out,
    roachf_1024_bao_feng_ctl_user_data_out => roachf_1024_bao_feng_ctl_user_data_out,
    roachf_1024_bao_fft_shift_user_data_out => roachf_1024_bao_fft_shift_user_data_out,
    roachf_1024_bao_gbe_sw_port_user_data_out => roachf_1024_bao_gbe_sw_port_user_data_out,
    roachf_1024_bao_gpu_gbe2_led_rx => roachf_1024_bao_gpu_gbe2_led_rx,
    roachf_1024_bao_gpu_gbe2_led_tx => roachf_1024_bao_gpu_gbe2_led_tx,
    roachf_1024_bao_gpu_gbe2_led_up => roachf_1024_bao_gpu_gbe2_led_up,
    roachf_1024_bao_gpu_gbe2_rx_bad_frame => roachf_1024_bao_gpu_gbe2_rx_bad_frame,
    roachf_1024_bao_gpu_gbe2_rx_data => roachf_1024_bao_gpu_gbe2_rx_data,
    roachf_1024_bao_gpu_gbe2_rx_end_of_frame => roachf_1024_bao_gpu_gbe2_rx_end_of_frame,
    roachf_1024_bao_gpu_gbe2_rx_overrun => roachf_1024_bao_gpu_gbe2_rx_overrun,
    roachf_1024_bao_gpu_gbe2_rx_source_ip => roachf_1024_bao_gpu_gbe2_rx_source_ip,
    roachf_1024_bao_gpu_gbe2_rx_source_port => roachf_1024_bao_gpu_gbe2_rx_source_port,
    roachf_1024_bao_gpu_gbe2_rx_valid => roachf_1024_bao_gpu_gbe2_rx_valid,
    roachf_1024_bao_gpu_gbe2_tx_afull => roachf_1024_bao_gpu_gbe2_tx_afull,
    roachf_1024_bao_gpu_gbe2_tx_overflow => roachf_1024_bao_gpu_gbe2_tx_overflow,
    roachf_1024_bao_gpu_ip_user_data_out => roachf_1024_bao_gpu_ip_user_data_out,
    roachf_1024_bao_gpu_port_user_data_out => roachf_1024_bao_gpu_port_user_data_out,
    roachf_1024_bao_input_selector_user_data_out => roachf_1024_bao_input_selector_user_data_out,
    roachf_1024_bao_ip_base_user_data_out => roachf_1024_bao_ip_base_user_data_out,
    roachf_1024_bao_my_ip_user_data_out => roachf_1024_bao_my_ip_user_data_out,
    roachf_1024_bao_seed_data_user_data_out => roachf_1024_bao_seed_data_user_data_out,
    roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_out => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_out,
    roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_out => roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_out,
    roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_out => roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_out,
    roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out => roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out,
    roachf_1024_bao_switch_gbe3_led_rx => roachf_1024_bao_switch_gbe3_led_rx,
    roachf_1024_bao_switch_gbe3_led_tx => roachf_1024_bao_switch_gbe3_led_tx,
    roachf_1024_bao_switch_gbe3_led_up => roachf_1024_bao_switch_gbe3_led_up,
    roachf_1024_bao_switch_gbe3_rx_bad_frame => roachf_1024_bao_switch_gbe3_rx_bad_frame,
    roachf_1024_bao_switch_gbe3_rx_data => roachf_1024_bao_switch_gbe3_rx_data,
    roachf_1024_bao_switch_gbe3_rx_end_of_frame => roachf_1024_bao_switch_gbe3_rx_end_of_frame,
    roachf_1024_bao_switch_gbe3_rx_overrun => roachf_1024_bao_switch_gbe3_rx_overrun,
    roachf_1024_bao_switch_gbe3_rx_source_ip => roachf_1024_bao_switch_gbe3_rx_source_ip,
    roachf_1024_bao_switch_gbe3_rx_source_port => roachf_1024_bao_switch_gbe3_rx_source_port,
    roachf_1024_bao_switch_gbe3_rx_valid => roachf_1024_bao_switch_gbe3_rx_valid,
    roachf_1024_bao_switch_gbe3_tx_afull => roachf_1024_bao_switch_gbe3_tx_afull,
    roachf_1024_bao_switch_gbe3_tx_overflow => roachf_1024_bao_switch_gbe3_tx_overflow,
    roachf_1024_bao_transpose_qdr_reorder1_qdr_ack => roachf_1024_bao_transpose_qdr_reorder1_qdr_ack,
    roachf_1024_bao_transpose_qdr_reorder1_qdr_cal_fail => roachf_1024_bao_transpose_qdr_reorder1_qdr_cal_fail,
    roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out => roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out,
    roachf_1024_bao_transpose_qdr_reorder1_qdr_phy_ready => roachf_1024_bao_transpose_qdr_reorder1_qdr_phy_ready,
    roachf_1024_bao_transpose_qdr_reorder_qdr_ack => roachf_1024_bao_transpose_qdr_reorder_qdr_ack,
    roachf_1024_bao_transpose_qdr_reorder_qdr_cal_fail => roachf_1024_bao_transpose_qdr_reorder_qdr_cal_fail,
    roachf_1024_bao_transpose_qdr_reorder_qdr_data_out => roachf_1024_bao_transpose_qdr_reorder_qdr_data_out,
    roachf_1024_bao_transpose_qdr_reorder_qdr_phy_ready => roachf_1024_bao_transpose_qdr_reorder_qdr_phy_ready,
    roachf_1024_bao_gpu_gbe2_rst => roachf_1024_bao_gpu_gbe2_rst,
    roachf_1024_bao_gpu_gbe2_rx_ack => roachf_1024_bao_gpu_gbe2_rx_ack,
    roachf_1024_bao_gpu_gbe2_rx_overrun_ack => roachf_1024_bao_gpu_gbe2_rx_overrun_ack,
    roachf_1024_bao_gpu_gbe2_tx_data => roachf_1024_bao_gpu_gbe2_tx_data,
    roachf_1024_bao_gpu_gbe2_tx_dest_ip => roachf_1024_bao_gpu_gbe2_tx_dest_ip,
    roachf_1024_bao_gpu_gbe2_tx_dest_port => roachf_1024_bao_gpu_gbe2_tx_dest_port,
    roachf_1024_bao_gpu_gbe2_tx_end_of_frame => roachf_1024_bao_gpu_gbe2_tx_end_of_frame,
    roachf_1024_bao_gpu_gbe2_tx_valid => roachf_1024_bao_gpu_gbe2_tx_valid,
    roachf_1024_bao_gpu_mcnt_lsb_user_data_in => roachf_1024_bao_gpu_mcnt_lsb_user_data_in,
    roachf_1024_bao_gpu_mcnt_msb_user_data_in => roachf_1024_bao_gpu_mcnt_msb_user_data_in,
    roachf_1024_bao_leds_led1_arm_gateway => roachf_1024_bao_leds_led1_arm_gateway,
    roachf_1024_bao_leds_led2_sync_gateway => roachf_1024_bao_leds_led2_sync_gateway,
    roachf_1024_bao_leds_led4_eq_clip_gateway => roachf_1024_bao_leds_led4_eq_clip_gateway,
    roachf_1024_bao_loopback_loop_cnt_user_data_in => roachf_1024_bao_loopback_loop_cnt_user_data_in,
    roachf_1024_bao_loopback_loop_err_cnt_user_data_in => roachf_1024_bao_loopback_loop_err_cnt_user_data_in,
    roachf_1024_bao_loopback_loopback_fifo_lb_err_cnt_user_data_in => roachf_1024_bao_loopback_loopback_fifo_lb_err_cnt_user_data_in,
    roachf_1024_bao_loopback_loopback_mux_gbe_over_user_data_in => roachf_1024_bao_loopback_loopback_mux_gbe_over_user_data_in,
    roachf_1024_bao_loopback_loopback_mux_gbe_und_user_data_in => roachf_1024_bao_loopback_loopback_mux_gbe_und_user_data_in,
    roachf_1024_bao_loopback_loopback_mux_lb_over_user_data_in => roachf_1024_bao_loopback_loopback_mux_lb_over_user_data_in,
    roachf_1024_bao_loopback_loopback_mux_lb_und_user_data_in => roachf_1024_bao_loopback_loopback_mux_lb_und_user_data_in,
    roachf_1024_bao_loopback_rx_cnt_user_data_in => roachf_1024_bao_loopback_rx_cnt_user_data_in,
    roachf_1024_bao_loopback_rx_err_cnt_user_data_in => roachf_1024_bao_loopback_rx_err_cnt_user_data_in,
    roachf_1024_bao_loopback_rx_pkt_fifo_gbe_err_cnt_user_data_in => roachf_1024_bao_loopback_rx_pkt_fifo_gbe_err_cnt_user_data_in,
    roachf_1024_bao_loopback_rx_pkt_fifo_santa_2big_user_data_in => roachf_1024_bao_loopback_rx_pkt_fifo_santa_2big_user_data_in,
    roachf_1024_bao_loopback_rx_pkt_fifo_santa_2small_user_data_in => roachf_1024_bao_loopback_rx_pkt_fifo_santa_2small_user_data_in,
    roachf_1024_bao_status_gbe_gpu_user_data_in => roachf_1024_bao_status_gbe_gpu_user_data_in,
    roachf_1024_bao_status_gbe_sw_user_data_in => roachf_1024_bao_status_gbe_sw_user_data_in,
    roachf_1024_bao_status_swgbe_bframe_user_data_in => roachf_1024_bao_status_swgbe_bframe_user_data_in,
    roachf_1024_bao_status_swgbe_oflow_user_data_in => roachf_1024_bao_status_swgbe_oflow_user_data_in,
    roachf_1024_bao_status_swgbe_orun_user_data_in => roachf_1024_bao_status_swgbe_orun_user_data_in,
    roachf_1024_bao_switch_10gbetxsnap_addr_user_data_in => roachf_1024_bao_switch_10gbetxsnap_addr_user_data_in,
    roachf_1024_bao_switch_10gbetxsnap_bram_lsb_addr => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_addr,
    roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_in => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_in,
    roachf_1024_bao_switch_10gbetxsnap_bram_lsb_we => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_we,
    roachf_1024_bao_switch_10gbetxsnap_bram_msb_addr => roachf_1024_bao_switch_10gbetxsnap_bram_msb_addr,
    roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_in => roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_in,
    roachf_1024_bao_switch_10gbetxsnap_bram_msb_we => roachf_1024_bao_switch_10gbetxsnap_bram_msb_we,
    roachf_1024_bao_switch_10gbetxsnap_bram_oob_addr => roachf_1024_bao_switch_10gbetxsnap_bram_oob_addr,
    roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_in => roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_in,
    roachf_1024_bao_switch_10gbetxsnap_bram_oob_we => roachf_1024_bao_switch_10gbetxsnap_bram_oob_we,
    roachf_1024_bao_switch_gbe3_rst => roachf_1024_bao_switch_gbe3_rst,
    roachf_1024_bao_switch_gbe3_rx_ack => roachf_1024_bao_switch_gbe3_rx_ack,
    roachf_1024_bao_switch_gbe3_rx_overrun_ack => roachf_1024_bao_switch_gbe3_rx_overrun_ack,
    roachf_1024_bao_switch_gbe3_tx_data => roachf_1024_bao_switch_gbe3_tx_data,
    roachf_1024_bao_switch_gbe3_tx_dest_ip => roachf_1024_bao_switch_gbe3_tx_dest_ip,
    roachf_1024_bao_switch_gbe3_tx_dest_port => roachf_1024_bao_switch_gbe3_tx_dest_port,
    roachf_1024_bao_switch_gbe3_tx_end_of_frame => roachf_1024_bao_switch_gbe3_tx_end_of_frame,
    roachf_1024_bao_switch_gbe3_tx_valid => roachf_1024_bao_switch_gbe3_tx_valid,
    roachf_1024_bao_transpose_qdr_reorder1_qdr_address => roachf_1024_bao_transpose_qdr_reorder1_qdr_address,
    roachf_1024_bao_transpose_qdr_reorder1_qdr_be => roachf_1024_bao_transpose_qdr_reorder1_qdr_be,
    roachf_1024_bao_transpose_qdr_reorder1_qdr_data_in => roachf_1024_bao_transpose_qdr_reorder1_qdr_data_in,
    roachf_1024_bao_transpose_qdr_reorder1_qdr_rd_en => roachf_1024_bao_transpose_qdr_reorder1_qdr_rd_en,
    roachf_1024_bao_transpose_qdr_reorder1_qdr_wr_en => roachf_1024_bao_transpose_qdr_reorder1_qdr_wr_en,
    roachf_1024_bao_transpose_qdr_reorder_qdr_address => roachf_1024_bao_transpose_qdr_reorder_qdr_address,
    roachf_1024_bao_transpose_qdr_reorder_qdr_be => roachf_1024_bao_transpose_qdr_reorder_qdr_be,
    roachf_1024_bao_transpose_qdr_reorder_qdr_data_in => roachf_1024_bao_transpose_qdr_reorder_qdr_data_in,
    roachf_1024_bao_transpose_qdr_reorder_qdr_rd_en => roachf_1024_bao_transpose_qdr_reorder_qdr_rd_en,
    roachf_1024_bao_transpose_qdr_reorder_qdr_wr_en => roachf_1024_bao_transpose_qdr_reorder_qdr_wr_en);
-- INST_TAG_END ------ End INSTANTIATION Template ------------
