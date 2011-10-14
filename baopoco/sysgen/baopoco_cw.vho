
-------------------------------------------------------------------
-- System Generator version 11.4 VHDL source file.
--
-- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
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
-- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- The following code must appear in the VHDL architecture header:

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component baopoco_cw  port (
    baopoco_acc_len_user_data_out: in std_logic_vector(31 downto 0); 
    baopoco_adc1_user_data_valid: in std_logic; 
    baopoco_adc1_user_datai0: in std_logic_vector(7 downto 0); 
    baopoco_adc1_user_datai1: in std_logic_vector(7 downto 0); 
    baopoco_adc1_user_datai2: in std_logic_vector(7 downto 0); 
    baopoco_adc1_user_datai3: in std_logic_vector(7 downto 0); 
    baopoco_adc1_user_dataq0: in std_logic_vector(7 downto 0); 
    baopoco_adc1_user_dataq1: in std_logic_vector(7 downto 0); 
    baopoco_adc1_user_dataq2: in std_logic_vector(7 downto 0); 
    baopoco_adc1_user_dataq3: in std_logic_vector(7 downto 0); 
    baopoco_adc1_user_outofrangei0: in std_logic; 
    baopoco_adc1_user_outofrangei1: in std_logic; 
    baopoco_adc1_user_outofrangeq0: in std_logic; 
    baopoco_adc1_user_outofrangeq1: in std_logic; 
    baopoco_adc1_user_sync0: in std_logic; 
    baopoco_adc1_user_sync1: in std_logic; 
    baopoco_adc1_user_sync2: in std_logic; 
    baopoco_adc1_user_sync3: in std_logic; 
    baopoco_adc_user_data_valid: in std_logic; 
    baopoco_adc_user_datai0: in std_logic_vector(7 downto 0); 
    baopoco_adc_user_datai1: in std_logic_vector(7 downto 0); 
    baopoco_adc_user_datai2: in std_logic_vector(7 downto 0); 
    baopoco_adc_user_datai3: in std_logic_vector(7 downto 0); 
    baopoco_adc_user_dataq0: in std_logic_vector(7 downto 0); 
    baopoco_adc_user_dataq1: in std_logic_vector(7 downto 0); 
    baopoco_adc_user_dataq2: in std_logic_vector(7 downto 0); 
    baopoco_adc_user_dataq3: in std_logic_vector(7 downto 0); 
    baopoco_adc_user_outofrangei0: in std_logic; 
    baopoco_adc_user_outofrangei1: in std_logic; 
    baopoco_adc_user_outofrangeq0: in std_logic; 
    baopoco_adc_user_outofrangeq1: in std_logic; 
    baopoco_adc_user_sync0: in std_logic; 
    baopoco_adc_user_sync1: in std_logic; 
    baopoco_adc_user_sync2: in std_logic; 
    baopoco_adc_user_sync3: in std_logic; 
    baopoco_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x0_aa1_real_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x0_aa2_real_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x0_aa3_real_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x0_aa_real_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ab_imag_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ab_real_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ac1_imag_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ac1_real_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ac2_imag_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ac2_real_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ac3_imag_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ac3_real_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ac_imag_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ac_real_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ad_imag_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ad_real_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x1_aa1_real_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x1_aa2_real_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x1_aa3_real_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x1_aa_real_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ab_imag_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ab_real_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ac1_imag_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ac1_real_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ac2_imag_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ac2_real_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ac3_imag_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ac3_real_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ac_imag_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ac_real_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ad_imag_data_out: in std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ad_real_data_out: in std_logic_vector(31 downto 0); 
    baopoco_fft_shift_user_data_out: in std_logic_vector(31 downto 0); 
    baopoco_quant0_addr_user_data_out: in std_logic_vector(31 downto 0); 
    baopoco_quant0_gain_user_data_out: in std_logic_vector(31 downto 0); 
    baopoco_quant1_addr_user_data_out: in std_logic_vector(31 downto 0); 
    baopoco_quant1_gain_user_data_out: in std_logic_vector(31 downto 0); 
    baopoco_quant2_addr_user_data_out: in std_logic_vector(31 downto 0); 
    baopoco_quant2_gain_user_data_out: in std_logic_vector(31 downto 0); 
    baopoco_quant3_addr_user_data_out: in std_logic_vector(31 downto 0); 
    baopoco_quant3_gain_user_data_out: in std_logic_vector(31 downto 0); 
    ce: in std_logic := '1'; 
    clk: in std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    baopoco_acc_num_user_data_in: out std_logic_vector(31 downto 0); 
    baopoco_adc_sum0_user_data_in: out std_logic_vector(31 downto 0); 
    baopoco_adc_sum1_user_data_in: out std_logic_vector(31 downto 0); 
    baopoco_adc_sum2_user_data_in: out std_logic_vector(31 downto 0); 
    baopoco_adc_sum3_user_data_in: out std_logic_vector(31 downto 0); 
    baopoco_adc_sum_sq0_user_data_in: out std_logic_vector(31 downto 0); 
    baopoco_adc_sum_sq1_user_data_in: out std_logic_vector(31 downto 0); 
    baopoco_adc_sum_sq2_user_data_in: out std_logic_vector(31 downto 0); 
    baopoco_adc_sum_sq3_user_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x0_aa1_real_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x0_aa1_real_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x0_aa1_real_we: out std_logic; 
    baopoco_dir_x0_aa2_real_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x0_aa2_real_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x0_aa2_real_we: out std_logic; 
    baopoco_dir_x0_aa3_real_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x0_aa3_real_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x0_aa3_real_we: out std_logic; 
    baopoco_dir_x0_aa_real_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x0_aa_real_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x0_aa_real_we: out std_logic; 
    baopoco_dir_x0_ab_imag_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x0_ab_imag_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ab_imag_we: out std_logic; 
    baopoco_dir_x0_ab_real_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x0_ab_real_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ab_real_we: out std_logic; 
    baopoco_dir_x0_ac1_imag_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x0_ac1_imag_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ac1_imag_we: out std_logic; 
    baopoco_dir_x0_ac1_real_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x0_ac1_real_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ac1_real_we: out std_logic; 
    baopoco_dir_x0_ac2_imag_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x0_ac2_imag_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ac2_imag_we: out std_logic; 
    baopoco_dir_x0_ac2_real_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x0_ac2_real_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ac2_real_we: out std_logic; 
    baopoco_dir_x0_ac3_imag_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x0_ac3_imag_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ac3_imag_we: out std_logic; 
    baopoco_dir_x0_ac3_real_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x0_ac3_real_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ac3_real_we: out std_logic; 
    baopoco_dir_x0_ac_imag_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x0_ac_imag_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ac_imag_we: out std_logic; 
    baopoco_dir_x0_ac_real_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x0_ac_real_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ac_real_we: out std_logic; 
    baopoco_dir_x0_ad_imag_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x0_ad_imag_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ad_imag_we: out std_logic; 
    baopoco_dir_x0_ad_real_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x0_ad_real_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x0_ad_real_we: out std_logic; 
    baopoco_dir_x1_aa1_real_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x1_aa1_real_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x1_aa1_real_we: out std_logic; 
    baopoco_dir_x1_aa2_real_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x1_aa2_real_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x1_aa2_real_we: out std_logic; 
    baopoco_dir_x1_aa3_real_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x1_aa3_real_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x1_aa3_real_we: out std_logic; 
    baopoco_dir_x1_aa_real_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x1_aa_real_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x1_aa_real_we: out std_logic; 
    baopoco_dir_x1_ab_imag_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x1_ab_imag_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ab_imag_we: out std_logic; 
    baopoco_dir_x1_ab_real_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x1_ab_real_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ab_real_we: out std_logic; 
    baopoco_dir_x1_ac1_imag_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x1_ac1_imag_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ac1_imag_we: out std_logic; 
    baopoco_dir_x1_ac1_real_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x1_ac1_real_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ac1_real_we: out std_logic; 
    baopoco_dir_x1_ac2_imag_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x1_ac2_imag_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ac2_imag_we: out std_logic; 
    baopoco_dir_x1_ac2_real_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x1_ac2_real_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ac2_real_we: out std_logic; 
    baopoco_dir_x1_ac3_imag_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x1_ac3_imag_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ac3_imag_we: out std_logic; 
    baopoco_dir_x1_ac3_real_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x1_ac3_real_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ac3_real_we: out std_logic; 
    baopoco_dir_x1_ac_imag_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x1_ac_imag_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ac_imag_we: out std_logic; 
    baopoco_dir_x1_ac_real_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x1_ac_real_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ac_real_we: out std_logic; 
    baopoco_dir_x1_ad_imag_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x1_ad_imag_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ad_imag_we: out std_logic; 
    baopoco_dir_x1_ad_real_addr: out std_logic_vector(9 downto 0); 
    baopoco_dir_x1_ad_real_data_in: out std_logic_vector(31 downto 0); 
    baopoco_dir_x1_ad_real_we: out std_logic; 
    baopoco_led0_adc_clip_gateway: out std_logic; 
    baopoco_led1_mrst_gateway: out std_logic; 
    baopoco_led2_sync_gateway: out std_logic; 
    baopoco_led3_new_acc_gateway: out std_logic; 
    baopoco_status_user_data_in: out std_logic_vector(31 downto 0); 
    gateway_out: out std_logic_vector(8 downto 0); 
    gateway_out1: out std_logic_vector(31 downto 0); 
    gateway_out1_x0: out std_logic_vector(31 downto 0); 
    gateway_out1_x1: out std_logic_vector(31 downto 0); 
    gateway_out1_x2: out std_logic_vector(31 downto 0); 
    gateway_out1_x3: out std_logic_vector(31 downto 0); 
    gateway_out1_x4: out std_logic_vector(31 downto 0); 
    gateway_out1_x5: out std_logic_vector(31 downto 0); 
    gateway_out1_x6: out std_logic_vector(31 downto 0); 
    gateway_out2: out std_logic; 
    gateway_out2_x0: out std_logic; 
    gateway_out2_x1: out std_logic; 
    gateway_out2_x2: out std_logic; 
    gateway_out2_x3: out std_logic; 
    gateway_out2_x4: out std_logic; 
    gateway_out2_x5: out std_logic; 
    gateway_out2_x6: out std_logic; 
    gateway_out3: out std_logic; 
    gateway_out3_x0: out std_logic; 
    gateway_out3_x1: out std_logic; 
    gateway_out3_x2: out std_logic; 
    gateway_out3_x3: out std_logic; 
    gateway_out3_x4: out std_logic; 
    gateway_out3_x5: out std_logic; 
    gateway_out3_x6: out std_logic; 
    gateway_out_x0: out std_logic_vector(8 downto 0); 
    gateway_out_x1: out std_logic_vector(8 downto 0); 
    gateway_out_x2: out std_logic_vector(8 downto 0); 
    gateway_out_x3: out std_logic_vector(8 downto 0); 
    gateway_out_x4: out std_logic_vector(8 downto 0); 
    gateway_out_x5: out std_logic_vector(8 downto 0); 
    gateway_out_x6: out std_logic_vector(8 downto 0)
  );
end component;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body.  Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : baopoco_cw
  port map (
    baopoco_acc_len_user_data_out => baopoco_acc_len_user_data_out,
    baopoco_adc1_user_data_valid => baopoco_adc1_user_data_valid,
    baopoco_adc1_user_datai0 => baopoco_adc1_user_datai0,
    baopoco_adc1_user_datai1 => baopoco_adc1_user_datai1,
    baopoco_adc1_user_datai2 => baopoco_adc1_user_datai2,
    baopoco_adc1_user_datai3 => baopoco_adc1_user_datai3,
    baopoco_adc1_user_dataq0 => baopoco_adc1_user_dataq0,
    baopoco_adc1_user_dataq1 => baopoco_adc1_user_dataq1,
    baopoco_adc1_user_dataq2 => baopoco_adc1_user_dataq2,
    baopoco_adc1_user_dataq3 => baopoco_adc1_user_dataq3,
    baopoco_adc1_user_outofrangei0 => baopoco_adc1_user_outofrangei0,
    baopoco_adc1_user_outofrangei1 => baopoco_adc1_user_outofrangei1,
    baopoco_adc1_user_outofrangeq0 => baopoco_adc1_user_outofrangeq0,
    baopoco_adc1_user_outofrangeq1 => baopoco_adc1_user_outofrangeq1,
    baopoco_adc1_user_sync0 => baopoco_adc1_user_sync0,
    baopoco_adc1_user_sync1 => baopoco_adc1_user_sync1,
    baopoco_adc1_user_sync2 => baopoco_adc1_user_sync2,
    baopoco_adc1_user_sync3 => baopoco_adc1_user_sync3,
    baopoco_adc_user_data_valid => baopoco_adc_user_data_valid,
    baopoco_adc_user_datai0 => baopoco_adc_user_datai0,
    baopoco_adc_user_datai1 => baopoco_adc_user_datai1,
    baopoco_adc_user_datai2 => baopoco_adc_user_datai2,
    baopoco_adc_user_datai3 => baopoco_adc_user_datai3,
    baopoco_adc_user_dataq0 => baopoco_adc_user_dataq0,
    baopoco_adc_user_dataq1 => baopoco_adc_user_dataq1,
    baopoco_adc_user_dataq2 => baopoco_adc_user_dataq2,
    baopoco_adc_user_dataq3 => baopoco_adc_user_dataq3,
    baopoco_adc_user_outofrangei0 => baopoco_adc_user_outofrangei0,
    baopoco_adc_user_outofrangei1 => baopoco_adc_user_outofrangei1,
    baopoco_adc_user_outofrangeq0 => baopoco_adc_user_outofrangeq0,
    baopoco_adc_user_outofrangeq1 => baopoco_adc_user_outofrangeq1,
    baopoco_adc_user_sync0 => baopoco_adc_user_sync0,
    baopoco_adc_user_sync1 => baopoco_adc_user_sync1,
    baopoco_adc_user_sync2 => baopoco_adc_user_sync2,
    baopoco_adc_user_sync3 => baopoco_adc_user_sync3,
    baopoco_ctrl_user_data_out => baopoco_ctrl_user_data_out,
    baopoco_dir_x0_aa1_real_data_out => baopoco_dir_x0_aa1_real_data_out,
    baopoco_dir_x0_aa2_real_data_out => baopoco_dir_x0_aa2_real_data_out,
    baopoco_dir_x0_aa3_real_data_out => baopoco_dir_x0_aa3_real_data_out,
    baopoco_dir_x0_aa_real_data_out => baopoco_dir_x0_aa_real_data_out,
    baopoco_dir_x0_ab_imag_data_out => baopoco_dir_x0_ab_imag_data_out,
    baopoco_dir_x0_ab_real_data_out => baopoco_dir_x0_ab_real_data_out,
    baopoco_dir_x0_ac1_imag_data_out => baopoco_dir_x0_ac1_imag_data_out,
    baopoco_dir_x0_ac1_real_data_out => baopoco_dir_x0_ac1_real_data_out,
    baopoco_dir_x0_ac2_imag_data_out => baopoco_dir_x0_ac2_imag_data_out,
    baopoco_dir_x0_ac2_real_data_out => baopoco_dir_x0_ac2_real_data_out,
    baopoco_dir_x0_ac3_imag_data_out => baopoco_dir_x0_ac3_imag_data_out,
    baopoco_dir_x0_ac3_real_data_out => baopoco_dir_x0_ac3_real_data_out,
    baopoco_dir_x0_ac_imag_data_out => baopoco_dir_x0_ac_imag_data_out,
    baopoco_dir_x0_ac_real_data_out => baopoco_dir_x0_ac_real_data_out,
    baopoco_dir_x0_ad_imag_data_out => baopoco_dir_x0_ad_imag_data_out,
    baopoco_dir_x0_ad_real_data_out => baopoco_dir_x0_ad_real_data_out,
    baopoco_dir_x1_aa1_real_data_out => baopoco_dir_x1_aa1_real_data_out,
    baopoco_dir_x1_aa2_real_data_out => baopoco_dir_x1_aa2_real_data_out,
    baopoco_dir_x1_aa3_real_data_out => baopoco_dir_x1_aa3_real_data_out,
    baopoco_dir_x1_aa_real_data_out => baopoco_dir_x1_aa_real_data_out,
    baopoco_dir_x1_ab_imag_data_out => baopoco_dir_x1_ab_imag_data_out,
    baopoco_dir_x1_ab_real_data_out => baopoco_dir_x1_ab_real_data_out,
    baopoco_dir_x1_ac1_imag_data_out => baopoco_dir_x1_ac1_imag_data_out,
    baopoco_dir_x1_ac1_real_data_out => baopoco_dir_x1_ac1_real_data_out,
    baopoco_dir_x1_ac2_imag_data_out => baopoco_dir_x1_ac2_imag_data_out,
    baopoco_dir_x1_ac2_real_data_out => baopoco_dir_x1_ac2_real_data_out,
    baopoco_dir_x1_ac3_imag_data_out => baopoco_dir_x1_ac3_imag_data_out,
    baopoco_dir_x1_ac3_real_data_out => baopoco_dir_x1_ac3_real_data_out,
    baopoco_dir_x1_ac_imag_data_out => baopoco_dir_x1_ac_imag_data_out,
    baopoco_dir_x1_ac_real_data_out => baopoco_dir_x1_ac_real_data_out,
    baopoco_dir_x1_ad_imag_data_out => baopoco_dir_x1_ad_imag_data_out,
    baopoco_dir_x1_ad_real_data_out => baopoco_dir_x1_ad_real_data_out,
    baopoco_fft_shift_user_data_out => baopoco_fft_shift_user_data_out,
    baopoco_quant0_addr_user_data_out => baopoco_quant0_addr_user_data_out,
    baopoco_quant0_gain_user_data_out => baopoco_quant0_gain_user_data_out,
    baopoco_quant1_addr_user_data_out => baopoco_quant1_addr_user_data_out,
    baopoco_quant1_gain_user_data_out => baopoco_quant1_gain_user_data_out,
    baopoco_quant2_addr_user_data_out => baopoco_quant2_addr_user_data_out,
    baopoco_quant2_gain_user_data_out => baopoco_quant2_gain_user_data_out,
    baopoco_quant3_addr_user_data_out => baopoco_quant3_addr_user_data_out,
    baopoco_quant3_gain_user_data_out => baopoco_quant3_gain_user_data_out,
    ce => ce,
    clk => clk,
    baopoco_acc_num_user_data_in => baopoco_acc_num_user_data_in,
    baopoco_adc_sum0_user_data_in => baopoco_adc_sum0_user_data_in,
    baopoco_adc_sum1_user_data_in => baopoco_adc_sum1_user_data_in,
    baopoco_adc_sum2_user_data_in => baopoco_adc_sum2_user_data_in,
    baopoco_adc_sum3_user_data_in => baopoco_adc_sum3_user_data_in,
    baopoco_adc_sum_sq0_user_data_in => baopoco_adc_sum_sq0_user_data_in,
    baopoco_adc_sum_sq1_user_data_in => baopoco_adc_sum_sq1_user_data_in,
    baopoco_adc_sum_sq2_user_data_in => baopoco_adc_sum_sq2_user_data_in,
    baopoco_adc_sum_sq3_user_data_in => baopoco_adc_sum_sq3_user_data_in,
    baopoco_dir_x0_aa1_real_addr => baopoco_dir_x0_aa1_real_addr,
    baopoco_dir_x0_aa1_real_data_in => baopoco_dir_x0_aa1_real_data_in,
    baopoco_dir_x0_aa1_real_we => baopoco_dir_x0_aa1_real_we,
    baopoco_dir_x0_aa2_real_addr => baopoco_dir_x0_aa2_real_addr,
    baopoco_dir_x0_aa2_real_data_in => baopoco_dir_x0_aa2_real_data_in,
    baopoco_dir_x0_aa2_real_we => baopoco_dir_x0_aa2_real_we,
    baopoco_dir_x0_aa3_real_addr => baopoco_dir_x0_aa3_real_addr,
    baopoco_dir_x0_aa3_real_data_in => baopoco_dir_x0_aa3_real_data_in,
    baopoco_dir_x0_aa3_real_we => baopoco_dir_x0_aa3_real_we,
    baopoco_dir_x0_aa_real_addr => baopoco_dir_x0_aa_real_addr,
    baopoco_dir_x0_aa_real_data_in => baopoco_dir_x0_aa_real_data_in,
    baopoco_dir_x0_aa_real_we => baopoco_dir_x0_aa_real_we,
    baopoco_dir_x0_ab_imag_addr => baopoco_dir_x0_ab_imag_addr,
    baopoco_dir_x0_ab_imag_data_in => baopoco_dir_x0_ab_imag_data_in,
    baopoco_dir_x0_ab_imag_we => baopoco_dir_x0_ab_imag_we,
    baopoco_dir_x0_ab_real_addr => baopoco_dir_x0_ab_real_addr,
    baopoco_dir_x0_ab_real_data_in => baopoco_dir_x0_ab_real_data_in,
    baopoco_dir_x0_ab_real_we => baopoco_dir_x0_ab_real_we,
    baopoco_dir_x0_ac1_imag_addr => baopoco_dir_x0_ac1_imag_addr,
    baopoco_dir_x0_ac1_imag_data_in => baopoco_dir_x0_ac1_imag_data_in,
    baopoco_dir_x0_ac1_imag_we => baopoco_dir_x0_ac1_imag_we,
    baopoco_dir_x0_ac1_real_addr => baopoco_dir_x0_ac1_real_addr,
    baopoco_dir_x0_ac1_real_data_in => baopoco_dir_x0_ac1_real_data_in,
    baopoco_dir_x0_ac1_real_we => baopoco_dir_x0_ac1_real_we,
    baopoco_dir_x0_ac2_imag_addr => baopoco_dir_x0_ac2_imag_addr,
    baopoco_dir_x0_ac2_imag_data_in => baopoco_dir_x0_ac2_imag_data_in,
    baopoco_dir_x0_ac2_imag_we => baopoco_dir_x0_ac2_imag_we,
    baopoco_dir_x0_ac2_real_addr => baopoco_dir_x0_ac2_real_addr,
    baopoco_dir_x0_ac2_real_data_in => baopoco_dir_x0_ac2_real_data_in,
    baopoco_dir_x0_ac2_real_we => baopoco_dir_x0_ac2_real_we,
    baopoco_dir_x0_ac3_imag_addr => baopoco_dir_x0_ac3_imag_addr,
    baopoco_dir_x0_ac3_imag_data_in => baopoco_dir_x0_ac3_imag_data_in,
    baopoco_dir_x0_ac3_imag_we => baopoco_dir_x0_ac3_imag_we,
    baopoco_dir_x0_ac3_real_addr => baopoco_dir_x0_ac3_real_addr,
    baopoco_dir_x0_ac3_real_data_in => baopoco_dir_x0_ac3_real_data_in,
    baopoco_dir_x0_ac3_real_we => baopoco_dir_x0_ac3_real_we,
    baopoco_dir_x0_ac_imag_addr => baopoco_dir_x0_ac_imag_addr,
    baopoco_dir_x0_ac_imag_data_in => baopoco_dir_x0_ac_imag_data_in,
    baopoco_dir_x0_ac_imag_we => baopoco_dir_x0_ac_imag_we,
    baopoco_dir_x0_ac_real_addr => baopoco_dir_x0_ac_real_addr,
    baopoco_dir_x0_ac_real_data_in => baopoco_dir_x0_ac_real_data_in,
    baopoco_dir_x0_ac_real_we => baopoco_dir_x0_ac_real_we,
    baopoco_dir_x0_ad_imag_addr => baopoco_dir_x0_ad_imag_addr,
    baopoco_dir_x0_ad_imag_data_in => baopoco_dir_x0_ad_imag_data_in,
    baopoco_dir_x0_ad_imag_we => baopoco_dir_x0_ad_imag_we,
    baopoco_dir_x0_ad_real_addr => baopoco_dir_x0_ad_real_addr,
    baopoco_dir_x0_ad_real_data_in => baopoco_dir_x0_ad_real_data_in,
    baopoco_dir_x0_ad_real_we => baopoco_dir_x0_ad_real_we,
    baopoco_dir_x1_aa1_real_addr => baopoco_dir_x1_aa1_real_addr,
    baopoco_dir_x1_aa1_real_data_in => baopoco_dir_x1_aa1_real_data_in,
    baopoco_dir_x1_aa1_real_we => baopoco_dir_x1_aa1_real_we,
    baopoco_dir_x1_aa2_real_addr => baopoco_dir_x1_aa2_real_addr,
    baopoco_dir_x1_aa2_real_data_in => baopoco_dir_x1_aa2_real_data_in,
    baopoco_dir_x1_aa2_real_we => baopoco_dir_x1_aa2_real_we,
    baopoco_dir_x1_aa3_real_addr => baopoco_dir_x1_aa3_real_addr,
    baopoco_dir_x1_aa3_real_data_in => baopoco_dir_x1_aa3_real_data_in,
    baopoco_dir_x1_aa3_real_we => baopoco_dir_x1_aa3_real_we,
    baopoco_dir_x1_aa_real_addr => baopoco_dir_x1_aa_real_addr,
    baopoco_dir_x1_aa_real_data_in => baopoco_dir_x1_aa_real_data_in,
    baopoco_dir_x1_aa_real_we => baopoco_dir_x1_aa_real_we,
    baopoco_dir_x1_ab_imag_addr => baopoco_dir_x1_ab_imag_addr,
    baopoco_dir_x1_ab_imag_data_in => baopoco_dir_x1_ab_imag_data_in,
    baopoco_dir_x1_ab_imag_we => baopoco_dir_x1_ab_imag_we,
    baopoco_dir_x1_ab_real_addr => baopoco_dir_x1_ab_real_addr,
    baopoco_dir_x1_ab_real_data_in => baopoco_dir_x1_ab_real_data_in,
    baopoco_dir_x1_ab_real_we => baopoco_dir_x1_ab_real_we,
    baopoco_dir_x1_ac1_imag_addr => baopoco_dir_x1_ac1_imag_addr,
    baopoco_dir_x1_ac1_imag_data_in => baopoco_dir_x1_ac1_imag_data_in,
    baopoco_dir_x1_ac1_imag_we => baopoco_dir_x1_ac1_imag_we,
    baopoco_dir_x1_ac1_real_addr => baopoco_dir_x1_ac1_real_addr,
    baopoco_dir_x1_ac1_real_data_in => baopoco_dir_x1_ac1_real_data_in,
    baopoco_dir_x1_ac1_real_we => baopoco_dir_x1_ac1_real_we,
    baopoco_dir_x1_ac2_imag_addr => baopoco_dir_x1_ac2_imag_addr,
    baopoco_dir_x1_ac2_imag_data_in => baopoco_dir_x1_ac2_imag_data_in,
    baopoco_dir_x1_ac2_imag_we => baopoco_dir_x1_ac2_imag_we,
    baopoco_dir_x1_ac2_real_addr => baopoco_dir_x1_ac2_real_addr,
    baopoco_dir_x1_ac2_real_data_in => baopoco_dir_x1_ac2_real_data_in,
    baopoco_dir_x1_ac2_real_we => baopoco_dir_x1_ac2_real_we,
    baopoco_dir_x1_ac3_imag_addr => baopoco_dir_x1_ac3_imag_addr,
    baopoco_dir_x1_ac3_imag_data_in => baopoco_dir_x1_ac3_imag_data_in,
    baopoco_dir_x1_ac3_imag_we => baopoco_dir_x1_ac3_imag_we,
    baopoco_dir_x1_ac3_real_addr => baopoco_dir_x1_ac3_real_addr,
    baopoco_dir_x1_ac3_real_data_in => baopoco_dir_x1_ac3_real_data_in,
    baopoco_dir_x1_ac3_real_we => baopoco_dir_x1_ac3_real_we,
    baopoco_dir_x1_ac_imag_addr => baopoco_dir_x1_ac_imag_addr,
    baopoco_dir_x1_ac_imag_data_in => baopoco_dir_x1_ac_imag_data_in,
    baopoco_dir_x1_ac_imag_we => baopoco_dir_x1_ac_imag_we,
    baopoco_dir_x1_ac_real_addr => baopoco_dir_x1_ac_real_addr,
    baopoco_dir_x1_ac_real_data_in => baopoco_dir_x1_ac_real_data_in,
    baopoco_dir_x1_ac_real_we => baopoco_dir_x1_ac_real_we,
    baopoco_dir_x1_ad_imag_addr => baopoco_dir_x1_ad_imag_addr,
    baopoco_dir_x1_ad_imag_data_in => baopoco_dir_x1_ad_imag_data_in,
    baopoco_dir_x1_ad_imag_we => baopoco_dir_x1_ad_imag_we,
    baopoco_dir_x1_ad_real_addr => baopoco_dir_x1_ad_real_addr,
    baopoco_dir_x1_ad_real_data_in => baopoco_dir_x1_ad_real_data_in,
    baopoco_dir_x1_ad_real_we => baopoco_dir_x1_ad_real_we,
    baopoco_led0_adc_clip_gateway => baopoco_led0_adc_clip_gateway,
    baopoco_led1_mrst_gateway => baopoco_led1_mrst_gateway,
    baopoco_led2_sync_gateway => baopoco_led2_sync_gateway,
    baopoco_led3_new_acc_gateway => baopoco_led3_new_acc_gateway,
    baopoco_status_user_data_in => baopoco_status_user_data_in,
    gateway_out => gateway_out,
    gateway_out1 => gateway_out1,
    gateway_out1_x0 => gateway_out1_x0,
    gateway_out1_x1 => gateway_out1_x1,
    gateway_out1_x2 => gateway_out1_x2,
    gateway_out1_x3 => gateway_out1_x3,
    gateway_out1_x4 => gateway_out1_x4,
    gateway_out1_x5 => gateway_out1_x5,
    gateway_out1_x6 => gateway_out1_x6,
    gateway_out2 => gateway_out2,
    gateway_out2_x0 => gateway_out2_x0,
    gateway_out2_x1 => gateway_out2_x1,
    gateway_out2_x2 => gateway_out2_x2,
    gateway_out2_x3 => gateway_out2_x3,
    gateway_out2_x4 => gateway_out2_x4,
    gateway_out2_x5 => gateway_out2_x5,
    gateway_out2_x6 => gateway_out2_x6,
    gateway_out3 => gateway_out3,
    gateway_out3_x0 => gateway_out3_x0,
    gateway_out3_x1 => gateway_out3_x1,
    gateway_out3_x2 => gateway_out3_x2,
    gateway_out3_x3 => gateway_out3_x3,
    gateway_out3_x4 => gateway_out3_x4,
    gateway_out3_x5 => gateway_out3_x5,
    gateway_out3_x6 => gateway_out3_x6,
    gateway_out_x0 => gateway_out_x0,
    gateway_out_x1 => gateway_out_x1,
    gateway_out_x2 => gateway_out_x2,
    gateway_out_x3 => gateway_out_x3,
    gateway_out_x4 => gateway_out_x4,
    gateway_out_x5 => gateway_out_x5,
    gateway_out_x6 => gateway_out_x6);
-- INST_TAG_END ------ End INSTANTIATION Template ------------
