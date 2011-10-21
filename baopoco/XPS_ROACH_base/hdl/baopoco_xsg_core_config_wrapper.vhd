-------------------------------------------------------------------------------
-- baopoco_xsg_core_config_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity baopoco_xsg_core_config_wrapper is
  port (
    clk : in std_logic;
    baopoco_ADC_s_adc_user_data_valid : in std_logic;
    baopoco_ADC_s_adc_user_datai0 : in std_logic_vector(7 downto 0);
    baopoco_ADC_s_adc_user_datai1 : in std_logic_vector(7 downto 0);
    baopoco_ADC_s_adc_user_datai2 : in std_logic_vector(7 downto 0);
    baopoco_ADC_s_adc_user_datai3 : in std_logic_vector(7 downto 0);
    baopoco_ADC_s_adc_user_dataq0 : in std_logic_vector(7 downto 0);
    baopoco_ADC_s_adc_user_dataq1 : in std_logic_vector(7 downto 0);
    baopoco_ADC_s_adc_user_dataq2 : in std_logic_vector(7 downto 0);
    baopoco_ADC_s_adc_user_dataq3 : in std_logic_vector(7 downto 0);
    baopoco_ADC_s_adc_user_outofrangei0 : in std_logic;
    baopoco_ADC_s_adc_user_outofrangei1 : in std_logic;
    baopoco_ADC_s_adc_user_outofrangeq0 : in std_logic;
    baopoco_ADC_s_adc_user_outofrangeq1 : in std_logic;
    baopoco_ADC_s_adc_user_sync0 : in std_logic;
    baopoco_ADC_s_adc_user_sync1 : in std_logic;
    baopoco_ADC_s_adc_user_sync2 : in std_logic;
    baopoco_ADC_s_adc_user_sync3 : in std_logic;
    baopoco_ADC_s_adc1_user_data_valid : in std_logic;
    baopoco_ADC_s_adc1_user_datai0 : in std_logic_vector(7 downto 0);
    baopoco_ADC_s_adc1_user_datai1 : in std_logic_vector(7 downto 0);
    baopoco_ADC_s_adc1_user_datai2 : in std_logic_vector(7 downto 0);
    baopoco_ADC_s_adc1_user_datai3 : in std_logic_vector(7 downto 0);
    baopoco_ADC_s_adc1_user_dataq0 : in std_logic_vector(7 downto 0);
    baopoco_ADC_s_adc1_user_dataq1 : in std_logic_vector(7 downto 0);
    baopoco_ADC_s_adc1_user_dataq2 : in std_logic_vector(7 downto 0);
    baopoco_ADC_s_adc1_user_dataq3 : in std_logic_vector(7 downto 0);
    baopoco_ADC_s_adc1_user_outofrangei0 : in std_logic;
    baopoco_ADC_s_adc1_user_outofrangei1 : in std_logic;
    baopoco_ADC_s_adc1_user_outofrangeq0 : in std_logic;
    baopoco_ADC_s_adc1_user_outofrangeq1 : in std_logic;
    baopoco_ADC_s_adc1_user_sync0 : in std_logic;
    baopoco_ADC_s_adc1_user_sync1 : in std_logic;
    baopoco_ADC_s_adc1_user_sync2 : in std_logic;
    baopoco_ADC_s_adc1_user_sync3 : in std_logic;
    baopoco_acc_len_user_data_out : in std_logic_vector(31 downto 0);
    baopoco_acc_num_user_data_in : out std_logic_vector(31 downto 0);
    baopoco_adc_capture_user_data_out : in std_logic_vector(31 downto 0);
    baopoco_adc_sum0_user_data_in : out std_logic_vector(31 downto 0);
    baopoco_adc_sum1_user_data_in : out std_logic_vector(31 downto 0);
    baopoco_adc_sum2_user_data_in : out std_logic_vector(31 downto 0);
    baopoco_adc_sum3_user_data_in : out std_logic_vector(31 downto 0);
    baopoco_adc_sum_sq0_user_data_in : out std_logic_vector(31 downto 0);
    baopoco_adc_sum_sq1_user_data_in : out std_logic_vector(31 downto 0);
    baopoco_adc_sum_sq2_user_data_in : out std_logic_vector(31 downto 0);
    baopoco_adc_sum_sq3_user_data_in : out std_logic_vector(31 downto 0);
    baopoco_ctrl_user_data_out : in std_logic_vector(31 downto 0);
    baopoco_delay_delay_data_user_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x0_aa_real_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x0_aa_real_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x0_aa_real_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x0_aa_real_we : out std_logic;
    baopoco_dir_x0_ab_imag_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x0_ab_imag_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x0_ab_imag_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x0_ab_imag_we : out std_logic;
    baopoco_dir_x0_ab_real_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x0_ab_real_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x0_ab_real_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x0_ab_real_we : out std_logic;
    baopoco_dir_x0_ac_imag_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x0_ac_imag_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x0_ac_imag_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x0_ac_imag_we : out std_logic;
    baopoco_dir_x0_ac_real_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x0_ac_real_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x0_ac_real_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x0_ac_real_we : out std_logic;
    baopoco_dir_x0_ad_imag_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x0_ad_imag_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x0_ad_imag_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x0_ad_imag_we : out std_logic;
    baopoco_dir_x0_ad_real_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x0_ad_real_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x0_ad_real_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x0_ad_real_we : out std_logic;
    baopoco_dir_x0_bb_real_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x0_bb_real_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x0_bb_real_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x0_bb_real_we : out std_logic;
    baopoco_dir_x0_bc_imag_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x0_bc_imag_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x0_bc_imag_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x0_bc_imag_we : out std_logic;
    baopoco_dir_x0_bc_real_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x0_bc_real_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x0_bc_real_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x0_bc_real_we : out std_logic;
    baopoco_dir_x0_bd_imag_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x0_bd_imag_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x0_bd_imag_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x0_bd_imag_we : out std_logic;
    baopoco_dir_x0_bd_real_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x0_bd_real_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x0_bd_real_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x0_bd_real_we : out std_logic;
    baopoco_dir_x0_cc_real_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x0_cc_real_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x0_cc_real_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x0_cc_real_we : out std_logic;
    baopoco_dir_x0_cd_imag_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x0_cd_imag_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x0_cd_imag_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x0_cd_imag_we : out std_logic;
    baopoco_dir_x0_cd_real_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x0_cd_real_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x0_cd_real_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x0_cd_real_we : out std_logic;
    baopoco_dir_x0_dd_real_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x0_dd_real_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x0_dd_real_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x0_dd_real_we : out std_logic;
    baopoco_dir_x1_aa_real_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x1_aa_real_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x1_aa_real_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x1_aa_real_we : out std_logic;
    baopoco_dir_x1_ab_imag_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x1_ab_imag_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x1_ab_imag_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x1_ab_imag_we : out std_logic;
    baopoco_dir_x1_ab_real_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x1_ab_real_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x1_ab_real_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x1_ab_real_we : out std_logic;
    baopoco_dir_x1_ac_imag_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x1_ac_imag_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x1_ac_imag_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x1_ac_imag_we : out std_logic;
    baopoco_dir_x1_ac_real_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x1_ac_real_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x1_ac_real_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x1_ac_real_we : out std_logic;
    baopoco_dir_x1_ad_imag_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x1_ad_imag_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x1_ad_imag_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x1_ad_imag_we : out std_logic;
    baopoco_dir_x1_ad_real_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x1_ad_real_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x1_ad_real_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x1_ad_real_we : out std_logic;
    baopoco_dir_x1_bb_real_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x1_bb_real_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x1_bb_real_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x1_bb_real_we : out std_logic;
    baopoco_dir_x1_bc_imag_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x1_bc_imag_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x1_bc_imag_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x1_bc_imag_we : out std_logic;
    baopoco_dir_x1_bc_real_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x1_bc_real_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x1_bc_real_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x1_bc_real_we : out std_logic;
    baopoco_dir_x1_bd_imag_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x1_bd_imag_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x1_bd_imag_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x1_bd_imag_we : out std_logic;
    baopoco_dir_x1_bd_real_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x1_bd_real_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x1_bd_real_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x1_bd_real_we : out std_logic;
    baopoco_dir_x1_cc_real_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x1_cc_real_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x1_cc_real_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x1_cc_real_we : out std_logic;
    baopoco_dir_x1_cd_imag_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x1_cd_imag_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x1_cd_imag_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x1_cd_imag_we : out std_logic;
    baopoco_dir_x1_cd_real_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x1_cd_real_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x1_cd_real_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x1_cd_real_we : out std_logic;
    baopoco_dir_x1_dd_real_data_out : in std_logic_vector(31 downto 0);
    baopoco_dir_x1_dd_real_addr : out std_logic_vector(9 downto 0);
    baopoco_dir_x1_dd_real_data_in : out std_logic_vector(31 downto 0);
    baopoco_dir_x1_dd_real_we : out std_logic;
    baopoco_fft_shift_user_data_out : in std_logic_vector(31 downto 0);
    baopoco_insel_insel_data_user_data_out : in std_logic_vector(31 downto 0);
    baopoco_led0_adc_clip_gateway : out std_logic;
    baopoco_led1_mrst_gateway : out std_logic;
    baopoco_led2_sync_gateway : out std_logic;
    baopoco_led3_new_acc_gateway : out std_logic;
    baopoco_quant0_addr_user_data_out : in std_logic_vector(31 downto 0);
    baopoco_quant0_gain_user_data_out : in std_logic_vector(31 downto 0);
    baopoco_quant1_addr_user_data_out : in std_logic_vector(31 downto 0);
    baopoco_quant1_gain_user_data_out : in std_logic_vector(31 downto 0);
    baopoco_quant2_addr_user_data_out : in std_logic_vector(31 downto 0);
    baopoco_quant2_gain_user_data_out : in std_logic_vector(31 downto 0);
    baopoco_quant3_addr_user_data_out : in std_logic_vector(31 downto 0);
    baopoco_quant3_gain_user_data_out : in std_logic_vector(31 downto 0);
    baopoco_seed_seed_data_user_data_out : in std_logic_vector(31 downto 0);
    baopoco_status_user_data_in : out std_logic_vector(31 downto 0)
  );

  attribute x_core_info : STRING;
  attribute x_core_info of baopoco_xsg_core_config_wrapper : entity is "baopoco_v1_00_a";

end baopoco_xsg_core_config_wrapper;

architecture STRUCTURE of baopoco_xsg_core_config_wrapper is

  component baopoco is
    port (
      clk : in std_logic;
      baopoco_ADC_s_adc_user_data_valid : in std_logic;
      baopoco_ADC_s_adc_user_datai0 : in std_logic_vector(7 downto 0);
      baopoco_ADC_s_adc_user_datai1 : in std_logic_vector(7 downto 0);
      baopoco_ADC_s_adc_user_datai2 : in std_logic_vector(7 downto 0);
      baopoco_ADC_s_adc_user_datai3 : in std_logic_vector(7 downto 0);
      baopoco_ADC_s_adc_user_dataq0 : in std_logic_vector(7 downto 0);
      baopoco_ADC_s_adc_user_dataq1 : in std_logic_vector(7 downto 0);
      baopoco_ADC_s_adc_user_dataq2 : in std_logic_vector(7 downto 0);
      baopoco_ADC_s_adc_user_dataq3 : in std_logic_vector(7 downto 0);
      baopoco_ADC_s_adc_user_outofrangei0 : in std_logic;
      baopoco_ADC_s_adc_user_outofrangei1 : in std_logic;
      baopoco_ADC_s_adc_user_outofrangeq0 : in std_logic;
      baopoco_ADC_s_adc_user_outofrangeq1 : in std_logic;
      baopoco_ADC_s_adc_user_sync0 : in std_logic;
      baopoco_ADC_s_adc_user_sync1 : in std_logic;
      baopoco_ADC_s_adc_user_sync2 : in std_logic;
      baopoco_ADC_s_adc_user_sync3 : in std_logic;
      baopoco_ADC_s_adc1_user_data_valid : in std_logic;
      baopoco_ADC_s_adc1_user_datai0 : in std_logic_vector(7 downto 0);
      baopoco_ADC_s_adc1_user_datai1 : in std_logic_vector(7 downto 0);
      baopoco_ADC_s_adc1_user_datai2 : in std_logic_vector(7 downto 0);
      baopoco_ADC_s_adc1_user_datai3 : in std_logic_vector(7 downto 0);
      baopoco_ADC_s_adc1_user_dataq0 : in std_logic_vector(7 downto 0);
      baopoco_ADC_s_adc1_user_dataq1 : in std_logic_vector(7 downto 0);
      baopoco_ADC_s_adc1_user_dataq2 : in std_logic_vector(7 downto 0);
      baopoco_ADC_s_adc1_user_dataq3 : in std_logic_vector(7 downto 0);
      baopoco_ADC_s_adc1_user_outofrangei0 : in std_logic;
      baopoco_ADC_s_adc1_user_outofrangei1 : in std_logic;
      baopoco_ADC_s_adc1_user_outofrangeq0 : in std_logic;
      baopoco_ADC_s_adc1_user_outofrangeq1 : in std_logic;
      baopoco_ADC_s_adc1_user_sync0 : in std_logic;
      baopoco_ADC_s_adc1_user_sync1 : in std_logic;
      baopoco_ADC_s_adc1_user_sync2 : in std_logic;
      baopoco_ADC_s_adc1_user_sync3 : in std_logic;
      baopoco_acc_len_user_data_out : in std_logic_vector(31 downto 0);
      baopoco_acc_num_user_data_in : out std_logic_vector(31 downto 0);
      baopoco_adc_capture_user_data_out : in std_logic_vector(31 downto 0);
      baopoco_adc_sum0_user_data_in : out std_logic_vector(31 downto 0);
      baopoco_adc_sum1_user_data_in : out std_logic_vector(31 downto 0);
      baopoco_adc_sum2_user_data_in : out std_logic_vector(31 downto 0);
      baopoco_adc_sum3_user_data_in : out std_logic_vector(31 downto 0);
      baopoco_adc_sum_sq0_user_data_in : out std_logic_vector(31 downto 0);
      baopoco_adc_sum_sq1_user_data_in : out std_logic_vector(31 downto 0);
      baopoco_adc_sum_sq2_user_data_in : out std_logic_vector(31 downto 0);
      baopoco_adc_sum_sq3_user_data_in : out std_logic_vector(31 downto 0);
      baopoco_ctrl_user_data_out : in std_logic_vector(31 downto 0);
      baopoco_delay_delay_data_user_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x0_aa_real_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x0_aa_real_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x0_aa_real_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x0_aa_real_we : out std_logic;
      baopoco_dir_x0_ab_imag_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x0_ab_imag_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x0_ab_imag_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x0_ab_imag_we : out std_logic;
      baopoco_dir_x0_ab_real_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x0_ab_real_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x0_ab_real_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x0_ab_real_we : out std_logic;
      baopoco_dir_x0_ac_imag_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x0_ac_imag_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x0_ac_imag_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x0_ac_imag_we : out std_logic;
      baopoco_dir_x0_ac_real_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x0_ac_real_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x0_ac_real_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x0_ac_real_we : out std_logic;
      baopoco_dir_x0_ad_imag_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x0_ad_imag_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x0_ad_imag_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x0_ad_imag_we : out std_logic;
      baopoco_dir_x0_ad_real_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x0_ad_real_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x0_ad_real_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x0_ad_real_we : out std_logic;
      baopoco_dir_x0_bb_real_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x0_bb_real_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x0_bb_real_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x0_bb_real_we : out std_logic;
      baopoco_dir_x0_bc_imag_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x0_bc_imag_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x0_bc_imag_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x0_bc_imag_we : out std_logic;
      baopoco_dir_x0_bc_real_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x0_bc_real_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x0_bc_real_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x0_bc_real_we : out std_logic;
      baopoco_dir_x0_bd_imag_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x0_bd_imag_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x0_bd_imag_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x0_bd_imag_we : out std_logic;
      baopoco_dir_x0_bd_real_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x0_bd_real_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x0_bd_real_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x0_bd_real_we : out std_logic;
      baopoco_dir_x0_cc_real_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x0_cc_real_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x0_cc_real_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x0_cc_real_we : out std_logic;
      baopoco_dir_x0_cd_imag_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x0_cd_imag_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x0_cd_imag_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x0_cd_imag_we : out std_logic;
      baopoco_dir_x0_cd_real_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x0_cd_real_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x0_cd_real_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x0_cd_real_we : out std_logic;
      baopoco_dir_x0_dd_real_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x0_dd_real_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x0_dd_real_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x0_dd_real_we : out std_logic;
      baopoco_dir_x1_aa_real_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x1_aa_real_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x1_aa_real_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x1_aa_real_we : out std_logic;
      baopoco_dir_x1_ab_imag_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x1_ab_imag_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x1_ab_imag_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x1_ab_imag_we : out std_logic;
      baopoco_dir_x1_ab_real_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x1_ab_real_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x1_ab_real_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x1_ab_real_we : out std_logic;
      baopoco_dir_x1_ac_imag_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x1_ac_imag_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x1_ac_imag_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x1_ac_imag_we : out std_logic;
      baopoco_dir_x1_ac_real_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x1_ac_real_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x1_ac_real_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x1_ac_real_we : out std_logic;
      baopoco_dir_x1_ad_imag_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x1_ad_imag_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x1_ad_imag_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x1_ad_imag_we : out std_logic;
      baopoco_dir_x1_ad_real_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x1_ad_real_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x1_ad_real_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x1_ad_real_we : out std_logic;
      baopoco_dir_x1_bb_real_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x1_bb_real_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x1_bb_real_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x1_bb_real_we : out std_logic;
      baopoco_dir_x1_bc_imag_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x1_bc_imag_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x1_bc_imag_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x1_bc_imag_we : out std_logic;
      baopoco_dir_x1_bc_real_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x1_bc_real_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x1_bc_real_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x1_bc_real_we : out std_logic;
      baopoco_dir_x1_bd_imag_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x1_bd_imag_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x1_bd_imag_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x1_bd_imag_we : out std_logic;
      baopoco_dir_x1_bd_real_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x1_bd_real_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x1_bd_real_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x1_bd_real_we : out std_logic;
      baopoco_dir_x1_cc_real_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x1_cc_real_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x1_cc_real_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x1_cc_real_we : out std_logic;
      baopoco_dir_x1_cd_imag_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x1_cd_imag_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x1_cd_imag_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x1_cd_imag_we : out std_logic;
      baopoco_dir_x1_cd_real_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x1_cd_real_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x1_cd_real_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x1_cd_real_we : out std_logic;
      baopoco_dir_x1_dd_real_data_out : in std_logic_vector(31 downto 0);
      baopoco_dir_x1_dd_real_addr : out std_logic_vector(9 downto 0);
      baopoco_dir_x1_dd_real_data_in : out std_logic_vector(31 downto 0);
      baopoco_dir_x1_dd_real_we : out std_logic;
      baopoco_fft_shift_user_data_out : in std_logic_vector(31 downto 0);
      baopoco_insel_insel_data_user_data_out : in std_logic_vector(31 downto 0);
      baopoco_led0_adc_clip_gateway : out std_logic;
      baopoco_led1_mrst_gateway : out std_logic;
      baopoco_led2_sync_gateway : out std_logic;
      baopoco_led3_new_acc_gateway : out std_logic;
      baopoco_quant0_addr_user_data_out : in std_logic_vector(31 downto 0);
      baopoco_quant0_gain_user_data_out : in std_logic_vector(31 downto 0);
      baopoco_quant1_addr_user_data_out : in std_logic_vector(31 downto 0);
      baopoco_quant1_gain_user_data_out : in std_logic_vector(31 downto 0);
      baopoco_quant2_addr_user_data_out : in std_logic_vector(31 downto 0);
      baopoco_quant2_gain_user_data_out : in std_logic_vector(31 downto 0);
      baopoco_quant3_addr_user_data_out : in std_logic_vector(31 downto 0);
      baopoco_quant3_gain_user_data_out : in std_logic_vector(31 downto 0);
      baopoco_seed_seed_data_user_data_out : in std_logic_vector(31 downto 0);
      baopoco_status_user_data_in : out std_logic_vector(31 downto 0)
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of baopoco : component is "user_black_box";

begin

  baopoco_XSG_core_config : baopoco
    port map (
      clk => clk,
      baopoco_ADC_s_adc_user_data_valid => baopoco_ADC_s_adc_user_data_valid,
      baopoco_ADC_s_adc_user_datai0 => baopoco_ADC_s_adc_user_datai0,
      baopoco_ADC_s_adc_user_datai1 => baopoco_ADC_s_adc_user_datai1,
      baopoco_ADC_s_adc_user_datai2 => baopoco_ADC_s_adc_user_datai2,
      baopoco_ADC_s_adc_user_datai3 => baopoco_ADC_s_adc_user_datai3,
      baopoco_ADC_s_adc_user_dataq0 => baopoco_ADC_s_adc_user_dataq0,
      baopoco_ADC_s_adc_user_dataq1 => baopoco_ADC_s_adc_user_dataq1,
      baopoco_ADC_s_adc_user_dataq2 => baopoco_ADC_s_adc_user_dataq2,
      baopoco_ADC_s_adc_user_dataq3 => baopoco_ADC_s_adc_user_dataq3,
      baopoco_ADC_s_adc_user_outofrangei0 => baopoco_ADC_s_adc_user_outofrangei0,
      baopoco_ADC_s_adc_user_outofrangei1 => baopoco_ADC_s_adc_user_outofrangei1,
      baopoco_ADC_s_adc_user_outofrangeq0 => baopoco_ADC_s_adc_user_outofrangeq0,
      baopoco_ADC_s_adc_user_outofrangeq1 => baopoco_ADC_s_adc_user_outofrangeq1,
      baopoco_ADC_s_adc_user_sync0 => baopoco_ADC_s_adc_user_sync0,
      baopoco_ADC_s_adc_user_sync1 => baopoco_ADC_s_adc_user_sync1,
      baopoco_ADC_s_adc_user_sync2 => baopoco_ADC_s_adc_user_sync2,
      baopoco_ADC_s_adc_user_sync3 => baopoco_ADC_s_adc_user_sync3,
      baopoco_ADC_s_adc1_user_data_valid => baopoco_ADC_s_adc1_user_data_valid,
      baopoco_ADC_s_adc1_user_datai0 => baopoco_ADC_s_adc1_user_datai0,
      baopoco_ADC_s_adc1_user_datai1 => baopoco_ADC_s_adc1_user_datai1,
      baopoco_ADC_s_adc1_user_datai2 => baopoco_ADC_s_adc1_user_datai2,
      baopoco_ADC_s_adc1_user_datai3 => baopoco_ADC_s_adc1_user_datai3,
      baopoco_ADC_s_adc1_user_dataq0 => baopoco_ADC_s_adc1_user_dataq0,
      baopoco_ADC_s_adc1_user_dataq1 => baopoco_ADC_s_adc1_user_dataq1,
      baopoco_ADC_s_adc1_user_dataq2 => baopoco_ADC_s_adc1_user_dataq2,
      baopoco_ADC_s_adc1_user_dataq3 => baopoco_ADC_s_adc1_user_dataq3,
      baopoco_ADC_s_adc1_user_outofrangei0 => baopoco_ADC_s_adc1_user_outofrangei0,
      baopoco_ADC_s_adc1_user_outofrangei1 => baopoco_ADC_s_adc1_user_outofrangei1,
      baopoco_ADC_s_adc1_user_outofrangeq0 => baopoco_ADC_s_adc1_user_outofrangeq0,
      baopoco_ADC_s_adc1_user_outofrangeq1 => baopoco_ADC_s_adc1_user_outofrangeq1,
      baopoco_ADC_s_adc1_user_sync0 => baopoco_ADC_s_adc1_user_sync0,
      baopoco_ADC_s_adc1_user_sync1 => baopoco_ADC_s_adc1_user_sync1,
      baopoco_ADC_s_adc1_user_sync2 => baopoco_ADC_s_adc1_user_sync2,
      baopoco_ADC_s_adc1_user_sync3 => baopoco_ADC_s_adc1_user_sync3,
      baopoco_acc_len_user_data_out => baopoco_acc_len_user_data_out,
      baopoco_acc_num_user_data_in => baopoco_acc_num_user_data_in,
      baopoco_adc_capture_user_data_out => baopoco_adc_capture_user_data_out,
      baopoco_adc_sum0_user_data_in => baopoco_adc_sum0_user_data_in,
      baopoco_adc_sum1_user_data_in => baopoco_adc_sum1_user_data_in,
      baopoco_adc_sum2_user_data_in => baopoco_adc_sum2_user_data_in,
      baopoco_adc_sum3_user_data_in => baopoco_adc_sum3_user_data_in,
      baopoco_adc_sum_sq0_user_data_in => baopoco_adc_sum_sq0_user_data_in,
      baopoco_adc_sum_sq1_user_data_in => baopoco_adc_sum_sq1_user_data_in,
      baopoco_adc_sum_sq2_user_data_in => baopoco_adc_sum_sq2_user_data_in,
      baopoco_adc_sum_sq3_user_data_in => baopoco_adc_sum_sq3_user_data_in,
      baopoco_ctrl_user_data_out => baopoco_ctrl_user_data_out,
      baopoco_delay_delay_data_user_data_out => baopoco_delay_delay_data_user_data_out,
      baopoco_dir_x0_aa_real_data_out => baopoco_dir_x0_aa_real_data_out,
      baopoco_dir_x0_aa_real_addr => baopoco_dir_x0_aa_real_addr,
      baopoco_dir_x0_aa_real_data_in => baopoco_dir_x0_aa_real_data_in,
      baopoco_dir_x0_aa_real_we => baopoco_dir_x0_aa_real_we,
      baopoco_dir_x0_ab_imag_data_out => baopoco_dir_x0_ab_imag_data_out,
      baopoco_dir_x0_ab_imag_addr => baopoco_dir_x0_ab_imag_addr,
      baopoco_dir_x0_ab_imag_data_in => baopoco_dir_x0_ab_imag_data_in,
      baopoco_dir_x0_ab_imag_we => baopoco_dir_x0_ab_imag_we,
      baopoco_dir_x0_ab_real_data_out => baopoco_dir_x0_ab_real_data_out,
      baopoco_dir_x0_ab_real_addr => baopoco_dir_x0_ab_real_addr,
      baopoco_dir_x0_ab_real_data_in => baopoco_dir_x0_ab_real_data_in,
      baopoco_dir_x0_ab_real_we => baopoco_dir_x0_ab_real_we,
      baopoco_dir_x0_ac_imag_data_out => baopoco_dir_x0_ac_imag_data_out,
      baopoco_dir_x0_ac_imag_addr => baopoco_dir_x0_ac_imag_addr,
      baopoco_dir_x0_ac_imag_data_in => baopoco_dir_x0_ac_imag_data_in,
      baopoco_dir_x0_ac_imag_we => baopoco_dir_x0_ac_imag_we,
      baopoco_dir_x0_ac_real_data_out => baopoco_dir_x0_ac_real_data_out,
      baopoco_dir_x0_ac_real_addr => baopoco_dir_x0_ac_real_addr,
      baopoco_dir_x0_ac_real_data_in => baopoco_dir_x0_ac_real_data_in,
      baopoco_dir_x0_ac_real_we => baopoco_dir_x0_ac_real_we,
      baopoco_dir_x0_ad_imag_data_out => baopoco_dir_x0_ad_imag_data_out,
      baopoco_dir_x0_ad_imag_addr => baopoco_dir_x0_ad_imag_addr,
      baopoco_dir_x0_ad_imag_data_in => baopoco_dir_x0_ad_imag_data_in,
      baopoco_dir_x0_ad_imag_we => baopoco_dir_x0_ad_imag_we,
      baopoco_dir_x0_ad_real_data_out => baopoco_dir_x0_ad_real_data_out,
      baopoco_dir_x0_ad_real_addr => baopoco_dir_x0_ad_real_addr,
      baopoco_dir_x0_ad_real_data_in => baopoco_dir_x0_ad_real_data_in,
      baopoco_dir_x0_ad_real_we => baopoco_dir_x0_ad_real_we,
      baopoco_dir_x0_bb_real_data_out => baopoco_dir_x0_bb_real_data_out,
      baopoco_dir_x0_bb_real_addr => baopoco_dir_x0_bb_real_addr,
      baopoco_dir_x0_bb_real_data_in => baopoco_dir_x0_bb_real_data_in,
      baopoco_dir_x0_bb_real_we => baopoco_dir_x0_bb_real_we,
      baopoco_dir_x0_bc_imag_data_out => baopoco_dir_x0_bc_imag_data_out,
      baopoco_dir_x0_bc_imag_addr => baopoco_dir_x0_bc_imag_addr,
      baopoco_dir_x0_bc_imag_data_in => baopoco_dir_x0_bc_imag_data_in,
      baopoco_dir_x0_bc_imag_we => baopoco_dir_x0_bc_imag_we,
      baopoco_dir_x0_bc_real_data_out => baopoco_dir_x0_bc_real_data_out,
      baopoco_dir_x0_bc_real_addr => baopoco_dir_x0_bc_real_addr,
      baopoco_dir_x0_bc_real_data_in => baopoco_dir_x0_bc_real_data_in,
      baopoco_dir_x0_bc_real_we => baopoco_dir_x0_bc_real_we,
      baopoco_dir_x0_bd_imag_data_out => baopoco_dir_x0_bd_imag_data_out,
      baopoco_dir_x0_bd_imag_addr => baopoco_dir_x0_bd_imag_addr,
      baopoco_dir_x0_bd_imag_data_in => baopoco_dir_x0_bd_imag_data_in,
      baopoco_dir_x0_bd_imag_we => baopoco_dir_x0_bd_imag_we,
      baopoco_dir_x0_bd_real_data_out => baopoco_dir_x0_bd_real_data_out,
      baopoco_dir_x0_bd_real_addr => baopoco_dir_x0_bd_real_addr,
      baopoco_dir_x0_bd_real_data_in => baopoco_dir_x0_bd_real_data_in,
      baopoco_dir_x0_bd_real_we => baopoco_dir_x0_bd_real_we,
      baopoco_dir_x0_cc_real_data_out => baopoco_dir_x0_cc_real_data_out,
      baopoco_dir_x0_cc_real_addr => baopoco_dir_x0_cc_real_addr,
      baopoco_dir_x0_cc_real_data_in => baopoco_dir_x0_cc_real_data_in,
      baopoco_dir_x0_cc_real_we => baopoco_dir_x0_cc_real_we,
      baopoco_dir_x0_cd_imag_data_out => baopoco_dir_x0_cd_imag_data_out,
      baopoco_dir_x0_cd_imag_addr => baopoco_dir_x0_cd_imag_addr,
      baopoco_dir_x0_cd_imag_data_in => baopoco_dir_x0_cd_imag_data_in,
      baopoco_dir_x0_cd_imag_we => baopoco_dir_x0_cd_imag_we,
      baopoco_dir_x0_cd_real_data_out => baopoco_dir_x0_cd_real_data_out,
      baopoco_dir_x0_cd_real_addr => baopoco_dir_x0_cd_real_addr,
      baopoco_dir_x0_cd_real_data_in => baopoco_dir_x0_cd_real_data_in,
      baopoco_dir_x0_cd_real_we => baopoco_dir_x0_cd_real_we,
      baopoco_dir_x0_dd_real_data_out => baopoco_dir_x0_dd_real_data_out,
      baopoco_dir_x0_dd_real_addr => baopoco_dir_x0_dd_real_addr,
      baopoco_dir_x0_dd_real_data_in => baopoco_dir_x0_dd_real_data_in,
      baopoco_dir_x0_dd_real_we => baopoco_dir_x0_dd_real_we,
      baopoco_dir_x1_aa_real_data_out => baopoco_dir_x1_aa_real_data_out,
      baopoco_dir_x1_aa_real_addr => baopoco_dir_x1_aa_real_addr,
      baopoco_dir_x1_aa_real_data_in => baopoco_dir_x1_aa_real_data_in,
      baopoco_dir_x1_aa_real_we => baopoco_dir_x1_aa_real_we,
      baopoco_dir_x1_ab_imag_data_out => baopoco_dir_x1_ab_imag_data_out,
      baopoco_dir_x1_ab_imag_addr => baopoco_dir_x1_ab_imag_addr,
      baopoco_dir_x1_ab_imag_data_in => baopoco_dir_x1_ab_imag_data_in,
      baopoco_dir_x1_ab_imag_we => baopoco_dir_x1_ab_imag_we,
      baopoco_dir_x1_ab_real_data_out => baopoco_dir_x1_ab_real_data_out,
      baopoco_dir_x1_ab_real_addr => baopoco_dir_x1_ab_real_addr,
      baopoco_dir_x1_ab_real_data_in => baopoco_dir_x1_ab_real_data_in,
      baopoco_dir_x1_ab_real_we => baopoco_dir_x1_ab_real_we,
      baopoco_dir_x1_ac_imag_data_out => baopoco_dir_x1_ac_imag_data_out,
      baopoco_dir_x1_ac_imag_addr => baopoco_dir_x1_ac_imag_addr,
      baopoco_dir_x1_ac_imag_data_in => baopoco_dir_x1_ac_imag_data_in,
      baopoco_dir_x1_ac_imag_we => baopoco_dir_x1_ac_imag_we,
      baopoco_dir_x1_ac_real_data_out => baopoco_dir_x1_ac_real_data_out,
      baopoco_dir_x1_ac_real_addr => baopoco_dir_x1_ac_real_addr,
      baopoco_dir_x1_ac_real_data_in => baopoco_dir_x1_ac_real_data_in,
      baopoco_dir_x1_ac_real_we => baopoco_dir_x1_ac_real_we,
      baopoco_dir_x1_ad_imag_data_out => baopoco_dir_x1_ad_imag_data_out,
      baopoco_dir_x1_ad_imag_addr => baopoco_dir_x1_ad_imag_addr,
      baopoco_dir_x1_ad_imag_data_in => baopoco_dir_x1_ad_imag_data_in,
      baopoco_dir_x1_ad_imag_we => baopoco_dir_x1_ad_imag_we,
      baopoco_dir_x1_ad_real_data_out => baopoco_dir_x1_ad_real_data_out,
      baopoco_dir_x1_ad_real_addr => baopoco_dir_x1_ad_real_addr,
      baopoco_dir_x1_ad_real_data_in => baopoco_dir_x1_ad_real_data_in,
      baopoco_dir_x1_ad_real_we => baopoco_dir_x1_ad_real_we,
      baopoco_dir_x1_bb_real_data_out => baopoco_dir_x1_bb_real_data_out,
      baopoco_dir_x1_bb_real_addr => baopoco_dir_x1_bb_real_addr,
      baopoco_dir_x1_bb_real_data_in => baopoco_dir_x1_bb_real_data_in,
      baopoco_dir_x1_bb_real_we => baopoco_dir_x1_bb_real_we,
      baopoco_dir_x1_bc_imag_data_out => baopoco_dir_x1_bc_imag_data_out,
      baopoco_dir_x1_bc_imag_addr => baopoco_dir_x1_bc_imag_addr,
      baopoco_dir_x1_bc_imag_data_in => baopoco_dir_x1_bc_imag_data_in,
      baopoco_dir_x1_bc_imag_we => baopoco_dir_x1_bc_imag_we,
      baopoco_dir_x1_bc_real_data_out => baopoco_dir_x1_bc_real_data_out,
      baopoco_dir_x1_bc_real_addr => baopoco_dir_x1_bc_real_addr,
      baopoco_dir_x1_bc_real_data_in => baopoco_dir_x1_bc_real_data_in,
      baopoco_dir_x1_bc_real_we => baopoco_dir_x1_bc_real_we,
      baopoco_dir_x1_bd_imag_data_out => baopoco_dir_x1_bd_imag_data_out,
      baopoco_dir_x1_bd_imag_addr => baopoco_dir_x1_bd_imag_addr,
      baopoco_dir_x1_bd_imag_data_in => baopoco_dir_x1_bd_imag_data_in,
      baopoco_dir_x1_bd_imag_we => baopoco_dir_x1_bd_imag_we,
      baopoco_dir_x1_bd_real_data_out => baopoco_dir_x1_bd_real_data_out,
      baopoco_dir_x1_bd_real_addr => baopoco_dir_x1_bd_real_addr,
      baopoco_dir_x1_bd_real_data_in => baopoco_dir_x1_bd_real_data_in,
      baopoco_dir_x1_bd_real_we => baopoco_dir_x1_bd_real_we,
      baopoco_dir_x1_cc_real_data_out => baopoco_dir_x1_cc_real_data_out,
      baopoco_dir_x1_cc_real_addr => baopoco_dir_x1_cc_real_addr,
      baopoco_dir_x1_cc_real_data_in => baopoco_dir_x1_cc_real_data_in,
      baopoco_dir_x1_cc_real_we => baopoco_dir_x1_cc_real_we,
      baopoco_dir_x1_cd_imag_data_out => baopoco_dir_x1_cd_imag_data_out,
      baopoco_dir_x1_cd_imag_addr => baopoco_dir_x1_cd_imag_addr,
      baopoco_dir_x1_cd_imag_data_in => baopoco_dir_x1_cd_imag_data_in,
      baopoco_dir_x1_cd_imag_we => baopoco_dir_x1_cd_imag_we,
      baopoco_dir_x1_cd_real_data_out => baopoco_dir_x1_cd_real_data_out,
      baopoco_dir_x1_cd_real_addr => baopoco_dir_x1_cd_real_addr,
      baopoco_dir_x1_cd_real_data_in => baopoco_dir_x1_cd_real_data_in,
      baopoco_dir_x1_cd_real_we => baopoco_dir_x1_cd_real_we,
      baopoco_dir_x1_dd_real_data_out => baopoco_dir_x1_dd_real_data_out,
      baopoco_dir_x1_dd_real_addr => baopoco_dir_x1_dd_real_addr,
      baopoco_dir_x1_dd_real_data_in => baopoco_dir_x1_dd_real_data_in,
      baopoco_dir_x1_dd_real_we => baopoco_dir_x1_dd_real_we,
      baopoco_fft_shift_user_data_out => baopoco_fft_shift_user_data_out,
      baopoco_insel_insel_data_user_data_out => baopoco_insel_insel_data_user_data_out,
      baopoco_led0_adc_clip_gateway => baopoco_led0_adc_clip_gateway,
      baopoco_led1_mrst_gateway => baopoco_led1_mrst_gateway,
      baopoco_led2_sync_gateway => baopoco_led2_sync_gateway,
      baopoco_led3_new_acc_gateway => baopoco_led3_new_acc_gateway,
      baopoco_quant0_addr_user_data_out => baopoco_quant0_addr_user_data_out,
      baopoco_quant0_gain_user_data_out => baopoco_quant0_gain_user_data_out,
      baopoco_quant1_addr_user_data_out => baopoco_quant1_addr_user_data_out,
      baopoco_quant1_gain_user_data_out => baopoco_quant1_gain_user_data_out,
      baopoco_quant2_addr_user_data_out => baopoco_quant2_addr_user_data_out,
      baopoco_quant2_gain_user_data_out => baopoco_quant2_gain_user_data_out,
      baopoco_quant3_addr_user_data_out => baopoco_quant3_addr_user_data_out,
      baopoco_quant3_gain_user_data_out => baopoco_quant3_gain_user_data_out,
      baopoco_seed_seed_data_user_data_out => baopoco_seed_seed_data_user_data_out,
      baopoco_status_user_data_in => baopoco_status_user_data_in
    );

end architecture STRUCTURE;

