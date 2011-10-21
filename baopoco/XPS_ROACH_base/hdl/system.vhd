-------------------------------------------------------------------------------
-- system.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system is
  port (
    sys_clk_n : in std_logic;
    sys_clk_p : in std_logic;
    dly_clk_n : in std_logic;
    dly_clk_p : in std_logic;
    aux0_clk_n : in std_logic;
    aux0_clk_p : in std_logic;
    aux1_clk_n : in std_logic;
    aux1_clk_p : in std_logic;
    epb_clk_in : in std_logic;
    epb_data : inout std_logic_vector(15 downto 0);
    epb_addr : in std_logic_vector(22 downto 0);
    epb_addr_gp : in std_logic_vector(5 downto 0);
    epb_cs_n : in std_logic;
    epb_be_n : in std_logic_vector(1 downto 0);
    epb_r_w_n : in std_logic;
    epb_oe_n : in std_logic;
    epb_rdy : out std_logic;
    ppc_irq_n : out std_logic;
    adc0_adc3wire_clk : out std_logic;
    adc0_adc3wire_data : out std_logic;
    adc0_adc3wire_strobe : out std_logic;
    adc0_modepin : out std_logic;
    adc1_adc3wire_clk : out std_logic;
    adc1_adc3wire_data : out std_logic;
    adc1_adc3wire_strobe : out std_logic;
    adc1_modepin : out std_logic;
    adc0clk_p : in std_logic;
    adc0clk_n : in std_logic;
    adc0sync_p : in std_logic;
    adc0sync_n : in std_logic;
    adc0outofrangei_p : in std_logic;
    adc0outofrangei_n : in std_logic;
    adc0outofrangeq_p : in std_logic;
    adc0outofrangeq_n : in std_logic;
    adc0dataeveni_p : in std_logic_vector(7 downto 0);
    adc0dataeveni_n : in std_logic_vector(7 downto 0);
    adc0dataoddi_p : in std_logic_vector(7 downto 0);
    adc0dataoddi_n : in std_logic_vector(7 downto 0);
    adc0dataevenq_p : in std_logic_vector(7 downto 0);
    adc0dataevenq_n : in std_logic_vector(7 downto 0);
    adc0dataoddq_p : in std_logic_vector(7 downto 0);
    adc0dataoddq_n : in std_logic_vector(7 downto 0);
    adc0ddrb_p : out std_logic;
    adc0ddrb_n : out std_logic;
    adc1clk_p : in std_logic;
    adc1clk_n : in std_logic;
    adc1sync_p : in std_logic;
    adc1sync_n : in std_logic;
    adc1outofrangei_p : in std_logic;
    adc1outofrangei_n : in std_logic;
    adc1outofrangeq_p : in std_logic;
    adc1outofrangeq_n : in std_logic;
    adc1dataeveni_p : in std_logic_vector(7 downto 0);
    adc1dataeveni_n : in std_logic_vector(7 downto 0);
    adc1dataoddi_p : in std_logic_vector(7 downto 0);
    adc1dataoddi_n : in std_logic_vector(7 downto 0);
    adc1dataevenq_p : in std_logic_vector(7 downto 0);
    adc1dataevenq_n : in std_logic_vector(7 downto 0);
    adc1dataoddq_p : in std_logic_vector(7 downto 0);
    adc1dataoddq_n : in std_logic_vector(7 downto 0);
    adc1ddrb_p : out std_logic;
    adc1ddrb_n : out std_logic;
    baopoco_led0_adc_clip_ext : out std_logic_vector(0 to 0);
    baopoco_led1_mrst_ext : out std_logic_vector(0 to 0);
    baopoco_led2_sync_ext : out std_logic_vector(0 to 0);
    baopoco_led3_new_acc_ext : out std_logic_vector(0 to 0)
  );
end system;

architecture STRUCTURE of system is

  component infrastructure_inst_wrapper is
    port (
      sys_clk_n : in std_logic;
      sys_clk_p : in std_logic;
      dly_clk_n : in std_logic;
      dly_clk_p : in std_logic;
      aux0_clk_n : in std_logic;
      aux0_clk_p : in std_logic;
      aux1_clk_n : in std_logic;
      aux1_clk_p : in std_logic;
      epb_clk_in : in std_logic;
      sys_clk : out std_logic;
      sys_clk90 : out std_logic;
      sys_clk180 : out std_logic;
      sys_clk270 : out std_logic;
      sys_clk_lock : out std_logic;
      sys_clk2x : out std_logic;
      sys_clk2x90 : out std_logic;
      sys_clk2x180 : out std_logic;
      sys_clk2x270 : out std_logic;
      dly_clk : out std_logic;
      aux0_clk : out std_logic;
      aux0_clk90 : out std_logic;
      aux0_clk180 : out std_logic;
      aux0_clk270 : out std_logic;
      aux1_clk : out std_logic;
      aux1_clk90 : out std_logic;
      aux1_clk180 : out std_logic;
      aux1_clk270 : out std_logic;
      aux0_clk2x : out std_logic;
      aux0_clk2x90 : out std_logic;
      aux0_clk2x180 : out std_logic;
      aux0_clk2x270 : out std_logic;
      epb_clk : out std_logic;
      idelay_rst : in std_logic;
      idelay_rdy : out std_logic
    );
  end component;

  component reset_block_inst_wrapper is
    port (
      clk : in std_logic;
      async_reset_i : in std_logic;
      reset_i : in std_logic;
      reset_o : out std_logic
    );
  end component;

  component opb0_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : out std_logic;
      SYS_Rst : in std_logic;
      Debug_SYS_Rst : in std_logic;
      WDT_Rst : in std_logic;
      M_ABus : in std_logic_vector(0 to 31);
      M_BE : in std_logic_vector(0 to 3);
      M_beXfer : in std_logic_vector(0 to 0);
      M_busLock : in std_logic_vector(0 to 0);
      M_DBus : in std_logic_vector(0 to 31);
      M_DBusEn : in std_logic_vector(0 to 0);
      M_DBusEn32_63 : in std_logic_vector(0 to 0);
      M_dwXfer : in std_logic_vector(0 to 0);
      M_fwXfer : in std_logic_vector(0 to 0);
      M_hwXfer : in std_logic_vector(0 to 0);
      M_request : in std_logic_vector(0 to 0);
      M_RNW : in std_logic_vector(0 to 0);
      M_select : in std_logic_vector(0 to 0);
      M_seqAddr : in std_logic_vector(0 to 0);
      Sl_beAck : in std_logic_vector(0 to 32);
      Sl_DBus : in std_logic_vector(0 to 1055);
      Sl_DBusEn : in std_logic_vector(0 to 32);
      Sl_DBusEn32_63 : in std_logic_vector(0 to 32);
      Sl_errAck : in std_logic_vector(0 to 32);
      Sl_dwAck : in std_logic_vector(0 to 32);
      Sl_fwAck : in std_logic_vector(0 to 32);
      Sl_hwAck : in std_logic_vector(0 to 32);
      Sl_retry : in std_logic_vector(0 to 32);
      Sl_toutSup : in std_logic_vector(0 to 32);
      Sl_xferAck : in std_logic_vector(0 to 32);
      OPB_MRequest : out std_logic_vector(0 to 0);
      OPB_ABus : out std_logic_vector(0 to 31);
      OPB_BE : out std_logic_vector(0 to 3);
      OPB_beXfer : out std_logic;
      OPB_beAck : out std_logic;
      OPB_busLock : out std_logic;
      OPB_rdDBus : out std_logic_vector(0 to 31);
      OPB_wrDBus : out std_logic_vector(0 to 31);
      OPB_DBus : out std_logic_vector(0 to 31);
      OPB_errAck : out std_logic;
      OPB_dwAck : out std_logic;
      OPB_dwXfer : out std_logic;
      OPB_fwAck : out std_logic;
      OPB_fwXfer : out std_logic;
      OPB_hwAck : out std_logic;
      OPB_hwXfer : out std_logic;
      OPB_MGrant : out std_logic_vector(0 to 0);
      OPB_pendReq : out std_logic_vector(0 to 0);
      OPB_retry : out std_logic;
      OPB_RNW : out std_logic;
      OPB_select : out std_logic;
      OPB_seqAddr : out std_logic;
      OPB_timeout : out std_logic;
      OPB_toutSup : out std_logic;
      OPB_xferAck : out std_logic
    );
  end component;

  component epb_opb_bridge_inst_wrapper is
    port (
      sys_reset : in std_logic;
      epb_data_oe_n : out std_logic;
      epb_cs_n : in std_logic;
      epb_oe_n : in std_logic;
      epb_r_w_n : in std_logic;
      epb_be_n : in std_logic_vector(1 downto 0);
      epb_addr : in std_logic_vector(22 downto 0);
      epb_addr_gp : in std_logic_vector(5 downto 0);
      epb_data_i : in std_logic_vector(15 downto 0);
      epb_data_o : out std_logic_vector(15 downto 0);
      epb_rdy : out std_logic;
      epb_rdy_oe : out std_logic;
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      M_request : out std_logic;
      M_busLock : out std_logic;
      M_select : out std_logic;
      M_RNW : out std_logic;
      M_BE : out std_logic_vector(0 to 3);
      M_seqAddr : out std_logic;
      M_DBus : out std_logic_vector(0 to 31);
      M_ABus : out std_logic_vector(0 to 31);
      OPB_MGrant : in std_logic;
      OPB_xferAck : in std_logic;
      OPB_errAck : in std_logic;
      OPB_retry : in std_logic;
      OPB_timeout : in std_logic;
      OPB_DBus : in std_logic_vector(0 to 31)
    );
  end component;

  component epb_infrastructure_inst_wrapper is
    port (
      epb_data_buf : inout std_logic_vector(15 downto 0);
      epb_data_oe_n_i : in std_logic;
      epb_data_out_i : in std_logic_vector(15 downto 0);
      epb_data_in_o : out std_logic_vector(15 downto 0);
      epb_oe_n_buf : in std_logic;
      epb_oe_n : out std_logic;
      epb_cs_n_buf : in std_logic;
      epb_cs_n : out std_logic;
      epb_r_w_n_buf : in std_logic;
      epb_r_w_n : out std_logic;
      epb_be_n_buf : in std_logic_vector(1 downto 0);
      epb_be_n : out std_logic_vector(1 downto 0);
      epb_addr_buf : in std_logic_vector(22 downto 0);
      epb_addr : out std_logic_vector(22 downto 0);
      epb_addr_gp_buf : in std_logic_vector(5 downto 0);
      epb_addr_gp : out std_logic_vector(5 downto 0);
      epb_rdy_buf : out std_logic;
      epb_rdy : in std_logic;
      epb_rdy_oe : in std_logic
    );
  end component;

  component sys_block_inst_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      soft_reset : out std_logic;
      irq_n : out std_logic;
      app_irq : in std_logic_vector(15 downto 0);
      fab_clk : in std_logic
    );
  end component;

  component opb_adccontroller_0_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      adc0_adc3wire_clk : out std_logic;
      adc0_adc3wire_data : out std_logic;
      adc0_adc3wire_strobe : out std_logic;
      adc0_modepin : out std_logic;
      adc0_ddrb : out std_logic;
      adc0_dcm_reset : out std_logic;
      adc0_psclk : out std_logic;
      adc0_psen : out std_logic;
      adc0_psincdec : out std_logic;
      adc0_psdone : in std_logic;
      adc0_clk : in std_logic;
      adc1_adc3wire_clk : out std_logic;
      adc1_adc3wire_data : out std_logic;
      adc1_adc3wire_strobe : out std_logic;
      adc1_modepin : out std_logic;
      adc1_ddrb : out std_logic;
      adc1_dcm_reset : out std_logic;
      adc1_psclk : out std_logic;
      adc1_psen : out std_logic;
      adc1_psincdec : out std_logic;
      adc1_psdone : in std_logic;
      adc1_clk : in std_logic
    );
  end component;

  component baopoco_xsg_core_config_wrapper is
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

  component baopoco_adc_s_adc_wrapper is
    port (
      adc_clk_p : in std_logic;
      adc_clk_n : in std_logic;
      adc_sync_p : in std_logic;
      adc_sync_n : in std_logic;
      adc_outofrangei_p : in std_logic;
      adc_outofrangei_n : in std_logic;
      adc_outofrangeq_p : in std_logic;
      adc_outofrangeq_n : in std_logic;
      adc_dataeveni_p : in std_logic_vector(7 downto 0);
      adc_dataeveni_n : in std_logic_vector(7 downto 0);
      adc_dataoddi_p : in std_logic_vector(7 downto 0);
      adc_dataoddi_n : in std_logic_vector(7 downto 0);
      adc_dataevenq_p : in std_logic_vector(7 downto 0);
      adc_dataevenq_n : in std_logic_vector(7 downto 0);
      adc_dataoddq_p : in std_logic_vector(7 downto 0);
      adc_dataoddq_n : in std_logic_vector(7 downto 0);
      adc_ddrb_p : out std_logic;
      adc_ddrb_n : out std_logic;
      user_datai0 : out std_logic_vector(7 downto 0);
      user_datai1 : out std_logic_vector(7 downto 0);
      user_datai2 : out std_logic_vector(7 downto 0);
      user_datai3 : out std_logic_vector(7 downto 0);
      user_dataq0 : out std_logic_vector(7 downto 0);
      user_dataq1 : out std_logic_vector(7 downto 0);
      user_dataq2 : out std_logic_vector(7 downto 0);
      user_dataq3 : out std_logic_vector(7 downto 0);
      user_outofrangei0 : out std_logic;
      user_outofrangei1 : out std_logic;
      user_outofrangeq0 : out std_logic;
      user_outofrangeq1 : out std_logic;
      user_sync0 : out std_logic;
      user_sync1 : out std_logic;
      user_sync2 : out std_logic;
      user_sync3 : out std_logic;
      user_data_valid : out std_logic;
      dcm_reset : in std_logic;
      ctrl_reset : in std_logic;
      ctrl_clk_in : in std_logic;
      ctrl_clk_out : out std_logic;
      ctrl_clk90_out : out std_logic;
      ctrl_clk180_out : out std_logic;
      ctrl_clk270_out : out std_logic;
      ctrl_dcm_locked : out std_logic;
      dcm_psclk : in std_logic;
      dcm_psen : in std_logic;
      dcm_psincdec : in std_logic;
      dcm_psdone : out std_logic
    );
  end component;

  component baopoco_adc_s_adc1_wrapper is
    port (
      adc_clk_p : in std_logic;
      adc_clk_n : in std_logic;
      adc_sync_p : in std_logic;
      adc_sync_n : in std_logic;
      adc_outofrangei_p : in std_logic;
      adc_outofrangei_n : in std_logic;
      adc_outofrangeq_p : in std_logic;
      adc_outofrangeq_n : in std_logic;
      adc_dataeveni_p : in std_logic_vector(7 downto 0);
      adc_dataeveni_n : in std_logic_vector(7 downto 0);
      adc_dataoddi_p : in std_logic_vector(7 downto 0);
      adc_dataoddi_n : in std_logic_vector(7 downto 0);
      adc_dataevenq_p : in std_logic_vector(7 downto 0);
      adc_dataevenq_n : in std_logic_vector(7 downto 0);
      adc_dataoddq_p : in std_logic_vector(7 downto 0);
      adc_dataoddq_n : in std_logic_vector(7 downto 0);
      adc_ddrb_p : out std_logic;
      adc_ddrb_n : out std_logic;
      user_datai0 : out std_logic_vector(7 downto 0);
      user_datai1 : out std_logic_vector(7 downto 0);
      user_datai2 : out std_logic_vector(7 downto 0);
      user_datai3 : out std_logic_vector(7 downto 0);
      user_dataq0 : out std_logic_vector(7 downto 0);
      user_dataq1 : out std_logic_vector(7 downto 0);
      user_dataq2 : out std_logic_vector(7 downto 0);
      user_dataq3 : out std_logic_vector(7 downto 0);
      user_outofrangei0 : out std_logic;
      user_outofrangei1 : out std_logic;
      user_outofrangeq0 : out std_logic;
      user_outofrangeq1 : out std_logic;
      user_sync0 : out std_logic;
      user_sync1 : out std_logic;
      user_sync2 : out std_logic;
      user_sync3 : out std_logic;
      user_data_valid : out std_logic;
      dcm_reset : in std_logic;
      ctrl_reset : in std_logic;
      ctrl_clk_in : in std_logic;
      ctrl_clk_out : out std_logic;
      ctrl_clk90_out : out std_logic;
      ctrl_clk180_out : out std_logic;
      ctrl_clk270_out : out std_logic;
      ctrl_dcm_locked : out std_logic;
      dcm_psclk : in std_logic;
      dcm_psen : in std_logic;
      dcm_psincdec : in std_logic;
      dcm_psdone : out std_logic
    );
  end component;

  component baopoco_acc_len_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_acc_num_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_adc_capture_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_adc_sum0_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_adc_sum1_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_adc_sum2_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_adc_sum3_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_adc_sum_sq0_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_adc_sum_sq1_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_adc_sum_sq2_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_adc_sum_sq3_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_ctrl_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_delay_delay_data_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_dir_x0_aa_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x0_aa_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_aa_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_ab_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x0_ab_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_ab_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_ab_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x0_ab_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_ab_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_ac_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x0_ac_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_ac_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_ac_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x0_ac_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_ac_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_ad_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x0_ad_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_ad_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_ad_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x0_ad_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_ad_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_bb_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x0_bb_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_bb_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_bc_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x0_bc_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_bc_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_bc_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x0_bc_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_bc_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_bd_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x0_bd_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_bd_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_bd_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x0_bd_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_bd_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_cc_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x0_cc_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_cc_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_cd_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x0_cd_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_cd_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_cd_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x0_cd_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_cd_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_dd_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x0_dd_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x0_dd_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_aa_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x1_aa_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_aa_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_ab_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x1_ab_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_ab_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_ab_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x1_ab_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_ab_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_ac_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x1_ac_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_ac_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_ac_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x1_ac_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_ac_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_ad_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x1_ad_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_ad_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_ad_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x1_ad_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_ad_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_bb_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x1_bb_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_bb_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_bc_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x1_bc_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_bc_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_bc_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x1_bc_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_bc_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_bd_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x1_bd_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_bd_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_bd_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x1_bd_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_bd_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_cc_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x1_cc_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_cc_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_cd_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x1_cd_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_cd_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_cd_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x1_cd_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_cd_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_dd_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component baopoco_dir_x1_dd_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_dir_x1_dd_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component baopoco_fft_shift_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_insel_insel_data_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_led0_adc_clip_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component baopoco_led1_mrst_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component baopoco_led2_sync_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component baopoco_led3_new_acc_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component baopoco_quant0_addr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_quant0_gain_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_quant1_addr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_quant1_gain_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_quant2_addr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_quant2_gain_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_quant3_addr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_quant3_gain_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_seed_seed_data_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component baopoco_status_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component opb1_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : out std_logic;
      SYS_Rst : in std_logic;
      Debug_SYS_Rst : in std_logic;
      WDT_Rst : in std_logic;
      M_ABus : in std_logic_vector(0 to 31);
      M_BE : in std_logic_vector(0 to 3);
      M_beXfer : in std_logic_vector(0 to 0);
      M_busLock : in std_logic_vector(0 to 0);
      M_DBus : in std_logic_vector(0 to 31);
      M_DBusEn : in std_logic_vector(0 to 0);
      M_DBusEn32_63 : in std_logic_vector(0 to 0);
      M_dwXfer : in std_logic_vector(0 to 0);
      M_fwXfer : in std_logic_vector(0 to 0);
      M_hwXfer : in std_logic_vector(0 to 0);
      M_request : in std_logic_vector(0 to 0);
      M_RNW : in std_logic_vector(0 to 0);
      M_select : in std_logic_vector(0 to 0);
      M_seqAddr : in std_logic_vector(0 to 0);
      Sl_beAck : in std_logic_vector(0 to 26);
      Sl_DBus : in std_logic_vector(0 to 863);
      Sl_DBusEn : in std_logic_vector(0 to 26);
      Sl_DBusEn32_63 : in std_logic_vector(0 to 26);
      Sl_errAck : in std_logic_vector(0 to 26);
      Sl_dwAck : in std_logic_vector(0 to 26);
      Sl_fwAck : in std_logic_vector(0 to 26);
      Sl_hwAck : in std_logic_vector(0 to 26);
      Sl_retry : in std_logic_vector(0 to 26);
      Sl_toutSup : in std_logic_vector(0 to 26);
      Sl_xferAck : in std_logic_vector(0 to 26);
      OPB_MRequest : out std_logic_vector(0 to 0);
      OPB_ABus : out std_logic_vector(0 to 31);
      OPB_BE : out std_logic_vector(0 to 3);
      OPB_beXfer : out std_logic;
      OPB_beAck : out std_logic;
      OPB_busLock : out std_logic;
      OPB_rdDBus : out std_logic_vector(0 to 31);
      OPB_wrDBus : out std_logic_vector(0 to 31);
      OPB_DBus : out std_logic_vector(0 to 31);
      OPB_errAck : out std_logic;
      OPB_dwAck : out std_logic;
      OPB_dwXfer : out std_logic;
      OPB_fwAck : out std_logic;
      OPB_fwXfer : out std_logic;
      OPB_hwAck : out std_logic;
      OPB_hwXfer : out std_logic;
      OPB_MGrant : out std_logic_vector(0 to 0);
      OPB_pendReq : out std_logic_vector(0 to 0);
      OPB_retry : out std_logic;
      OPB_RNW : out std_logic;
      OPB_select : out std_logic;
      OPB_seqAddr : out std_logic;
      OPB_timeout : out std_logic;
      OPB_toutSup : out std_logic;
      OPB_xferAck : out std_logic
    );
  end component;

  component opb2opb_bridge_opb1_wrapper is
    port (
      MOPB_Clk : in std_logic;
      SOPB_Clk : in std_logic;
      MOPB_Rst : in std_logic;
      SOPB_Rst : in std_logic;
      SOPB_ABus : in std_logic_vector(0 to 31);
      SOPB_BE : in std_logic_vector(0 to 3);
      SOPB_DBus : in std_logic_vector(0 to 31);
      SOPB_RNW : in std_logic;
      SOPB_select : in std_logic;
      SOPB_seqAddr : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      M_ABus : out std_logic_vector(0 to 31);
      M_BE : out std_logic_vector(0 to 3);
      M_busLock : out std_logic;
      M_DBus : out std_logic_vector(0 to 31);
      M_request : out std_logic;
      M_RNW : out std_logic;
      M_select : out std_logic;
      M_seqAddr : out std_logic;
      MOPB_DBus : in std_logic_vector(0 to 31);
      MOPB_errAck : in std_logic;
      MOPB_MGrant : in std_logic;
      MOPB_retry : in std_logic;
      MOPB_timeout : in std_logic;
      MOPB_xferAck : in std_logic
    );
  end component;

  -- Internal signals

  signal adc0_clk : std_logic;
  signal adc0_clk90 : std_logic;
  signal adc0_dcm_reset : std_logic;
  signal adc0_ddrb : std_logic;
  signal adc0_psclk : std_logic;
  signal adc0_psdone : std_logic;
  signal adc0_psen : std_logic;
  signal adc0_psincdec : std_logic;
  signal adc1_clk : std_logic;
  signal adc1_dcm_reset : std_logic;
  signal adc1_ddrb : std_logic;
  signal adc1_psclk : std_logic;
  signal adc1_psdone : std_logic;
  signal adc1_psen : std_logic;
  signal adc1_psincdec : std_logic;
  signal baopoco_ADC_s_adc1_user_data_valid : std_logic;
  signal baopoco_ADC_s_adc1_user_datai0 : std_logic_vector(7 downto 0);
  signal baopoco_ADC_s_adc1_user_datai1 : std_logic_vector(7 downto 0);
  signal baopoco_ADC_s_adc1_user_datai2 : std_logic_vector(7 downto 0);
  signal baopoco_ADC_s_adc1_user_datai3 : std_logic_vector(7 downto 0);
  signal baopoco_ADC_s_adc1_user_dataq0 : std_logic_vector(7 downto 0);
  signal baopoco_ADC_s_adc1_user_dataq1 : std_logic_vector(7 downto 0);
  signal baopoco_ADC_s_adc1_user_dataq2 : std_logic_vector(7 downto 0);
  signal baopoco_ADC_s_adc1_user_dataq3 : std_logic_vector(7 downto 0);
  signal baopoco_ADC_s_adc1_user_outofrangei0 : std_logic;
  signal baopoco_ADC_s_adc1_user_outofrangei1 : std_logic;
  signal baopoco_ADC_s_adc1_user_outofrangeq0 : std_logic;
  signal baopoco_ADC_s_adc1_user_outofrangeq1 : std_logic;
  signal baopoco_ADC_s_adc1_user_sync0 : std_logic;
  signal baopoco_ADC_s_adc1_user_sync1 : std_logic;
  signal baopoco_ADC_s_adc1_user_sync2 : std_logic;
  signal baopoco_ADC_s_adc1_user_sync3 : std_logic;
  signal baopoco_ADC_s_adc_user_data_valid : std_logic;
  signal baopoco_ADC_s_adc_user_datai0 : std_logic_vector(7 downto 0);
  signal baopoco_ADC_s_adc_user_datai1 : std_logic_vector(7 downto 0);
  signal baopoco_ADC_s_adc_user_datai2 : std_logic_vector(7 downto 0);
  signal baopoco_ADC_s_adc_user_datai3 : std_logic_vector(7 downto 0);
  signal baopoco_ADC_s_adc_user_dataq0 : std_logic_vector(7 downto 0);
  signal baopoco_ADC_s_adc_user_dataq1 : std_logic_vector(7 downto 0);
  signal baopoco_ADC_s_adc_user_dataq2 : std_logic_vector(7 downto 0);
  signal baopoco_ADC_s_adc_user_dataq3 : std_logic_vector(7 downto 0);
  signal baopoco_ADC_s_adc_user_outofrangei0 : std_logic;
  signal baopoco_ADC_s_adc_user_outofrangei1 : std_logic;
  signal baopoco_ADC_s_adc_user_outofrangeq0 : std_logic;
  signal baopoco_ADC_s_adc_user_outofrangeq1 : std_logic;
  signal baopoco_ADC_s_adc_user_sync0 : std_logic;
  signal baopoco_ADC_s_adc_user_sync1 : std_logic;
  signal baopoco_ADC_s_adc_user_sync2 : std_logic;
  signal baopoco_ADC_s_adc_user_sync3 : std_logic;
  signal baopoco_acc_len_user_data_out : std_logic_vector(31 downto 0);
  signal baopoco_acc_num_user_data_in : std_logic_vector(31 downto 0);
  signal baopoco_adc_capture_user_data_out : std_logic_vector(31 downto 0);
  signal baopoco_adc_sum0_user_data_in : std_logic_vector(31 downto 0);
  signal baopoco_adc_sum1_user_data_in : std_logic_vector(31 downto 0);
  signal baopoco_adc_sum2_user_data_in : std_logic_vector(31 downto 0);
  signal baopoco_adc_sum3_user_data_in : std_logic_vector(31 downto 0);
  signal baopoco_adc_sum_sq0_user_data_in : std_logic_vector(31 downto 0);
  signal baopoco_adc_sum_sq1_user_data_in : std_logic_vector(31 downto 0);
  signal baopoco_adc_sum_sq2_user_data_in : std_logic_vector(31 downto 0);
  signal baopoco_adc_sum_sq3_user_data_in : std_logic_vector(31 downto 0);
  signal baopoco_ctrl_user_data_out : std_logic_vector(31 downto 0);
  signal baopoco_delay_delay_data_user_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_aa_real_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x0_aa_real_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_aa_real_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_aa_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_aa_real_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_aa_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_aa_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_aa_real_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x0_aa_real_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_aa_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_aa_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_aa_real_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_aa_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_aa_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_aa_real_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x0_aa_real_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_aa_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_aa_real_we : std_logic;
  signal baopoco_dir_x0_ab_imag_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x0_ab_imag_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_ab_imag_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_ab_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ab_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_ab_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ab_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ab_imag_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x0_ab_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_ab_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_ab_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ab_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_ab_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ab_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ab_imag_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x0_ab_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_ab_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_ab_imag_we : std_logic;
  signal baopoco_dir_x0_ab_real_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x0_ab_real_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_ab_real_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_ab_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ab_real_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_ab_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ab_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ab_real_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x0_ab_real_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_ab_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_ab_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ab_real_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_ab_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ab_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ab_real_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x0_ab_real_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_ab_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_ab_real_we : std_logic;
  signal baopoco_dir_x0_ac_imag_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x0_ac_imag_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_ac_imag_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_ac_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ac_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_ac_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ac_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ac_imag_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x0_ac_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_ac_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_ac_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ac_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_ac_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ac_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ac_imag_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x0_ac_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_ac_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_ac_imag_we : std_logic;
  signal baopoco_dir_x0_ac_real_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x0_ac_real_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_ac_real_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_ac_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ac_real_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_ac_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ac_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ac_real_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x0_ac_real_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_ac_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_ac_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ac_real_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_ac_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ac_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ac_real_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x0_ac_real_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_ac_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_ac_real_we : std_logic;
  signal baopoco_dir_x0_ad_imag_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x0_ad_imag_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_ad_imag_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_ad_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ad_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_ad_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ad_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ad_imag_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x0_ad_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_ad_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_ad_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ad_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_ad_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ad_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ad_imag_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x0_ad_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_ad_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_ad_imag_we : std_logic;
  signal baopoco_dir_x0_ad_real_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x0_ad_real_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_ad_real_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_ad_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ad_real_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_ad_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ad_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ad_real_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x0_ad_real_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_ad_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_ad_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ad_real_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_ad_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ad_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_ad_real_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x0_ad_real_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_ad_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_ad_real_we : std_logic;
  signal baopoco_dir_x0_bb_real_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x0_bb_real_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_bb_real_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_bb_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bb_real_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_bb_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bb_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bb_real_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x0_bb_real_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_bb_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_bb_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bb_real_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_bb_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bb_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bb_real_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x0_bb_real_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_bb_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_bb_real_we : std_logic;
  signal baopoco_dir_x0_bc_imag_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x0_bc_imag_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_bc_imag_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_bc_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bc_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_bc_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bc_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bc_imag_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x0_bc_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_bc_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_bc_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bc_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_bc_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bc_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bc_imag_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x0_bc_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_bc_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_bc_imag_we : std_logic;
  signal baopoco_dir_x0_bc_real_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x0_bc_real_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_bc_real_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_bc_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bc_real_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_bc_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bc_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bc_real_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x0_bc_real_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_bc_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_bc_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bc_real_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_bc_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bc_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bc_real_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x0_bc_real_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_bc_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_bc_real_we : std_logic;
  signal baopoco_dir_x0_bd_imag_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x0_bd_imag_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_bd_imag_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_bd_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bd_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_bd_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bd_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bd_imag_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x0_bd_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_bd_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_bd_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bd_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_bd_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bd_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bd_imag_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x0_bd_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_bd_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_bd_imag_we : std_logic;
  signal baopoco_dir_x0_bd_real_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x0_bd_real_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_bd_real_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_bd_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bd_real_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_bd_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bd_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bd_real_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x0_bd_real_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_bd_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_bd_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bd_real_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_bd_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bd_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_bd_real_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x0_bd_real_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_bd_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_bd_real_we : std_logic;
  signal baopoco_dir_x0_cc_real_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x0_cc_real_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_cc_real_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_cc_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_cc_real_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_cc_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_cc_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_cc_real_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x0_cc_real_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_cc_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_cc_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_cc_real_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_cc_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_cc_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_cc_real_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x0_cc_real_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_cc_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_cc_real_we : std_logic;
  signal baopoco_dir_x0_cd_imag_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x0_cd_imag_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_cd_imag_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_cd_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_cd_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_cd_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_cd_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_cd_imag_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x0_cd_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_cd_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_cd_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_cd_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_cd_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_cd_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_cd_imag_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x0_cd_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_cd_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_cd_imag_we : std_logic;
  signal baopoco_dir_x0_cd_real_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x0_cd_real_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_cd_real_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_cd_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_cd_real_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_cd_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_cd_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_cd_real_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x0_cd_real_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_cd_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_cd_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_cd_real_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_cd_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_cd_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_cd_real_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x0_cd_real_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_cd_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_cd_real_we : std_logic;
  signal baopoco_dir_x0_dd_real_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x0_dd_real_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_dd_real_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x0_dd_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_dd_real_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_dd_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_dd_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_dd_real_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x0_dd_real_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_dd_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_dd_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_dd_real_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x0_dd_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_dd_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x0_dd_real_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x0_dd_real_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x0_dd_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x0_dd_real_we : std_logic;
  signal baopoco_dir_x1_aa_real_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x1_aa_real_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_aa_real_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_aa_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_aa_real_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_aa_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_aa_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_aa_real_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x1_aa_real_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_aa_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_aa_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_aa_real_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_aa_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_aa_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_aa_real_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x1_aa_real_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_aa_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_aa_real_we : std_logic;
  signal baopoco_dir_x1_ab_imag_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x1_ab_imag_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_ab_imag_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_ab_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ab_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_ab_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ab_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ab_imag_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x1_ab_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_ab_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_ab_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ab_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_ab_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ab_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ab_imag_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x1_ab_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_ab_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_ab_imag_we : std_logic;
  signal baopoco_dir_x1_ab_real_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x1_ab_real_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_ab_real_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_ab_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ab_real_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_ab_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ab_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ab_real_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x1_ab_real_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_ab_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_ab_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ab_real_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_ab_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ab_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ab_real_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x1_ab_real_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_ab_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_ab_real_we : std_logic;
  signal baopoco_dir_x1_ac_imag_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x1_ac_imag_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_ac_imag_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_ac_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ac_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_ac_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ac_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ac_imag_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x1_ac_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_ac_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_ac_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ac_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_ac_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ac_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ac_imag_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x1_ac_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_ac_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_ac_imag_we : std_logic;
  signal baopoco_dir_x1_ac_real_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x1_ac_real_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_ac_real_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_ac_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ac_real_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_ac_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ac_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ac_real_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x1_ac_real_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_ac_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_ac_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ac_real_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_ac_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ac_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ac_real_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x1_ac_real_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_ac_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_ac_real_we : std_logic;
  signal baopoco_dir_x1_ad_imag_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x1_ad_imag_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_ad_imag_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_ad_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ad_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_ad_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ad_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ad_imag_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x1_ad_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_ad_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_ad_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ad_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_ad_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ad_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ad_imag_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x1_ad_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_ad_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_ad_imag_we : std_logic;
  signal baopoco_dir_x1_ad_real_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x1_ad_real_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_ad_real_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_ad_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ad_real_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_ad_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ad_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ad_real_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x1_ad_real_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_ad_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_ad_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ad_real_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_ad_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ad_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_ad_real_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x1_ad_real_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_ad_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_ad_real_we : std_logic;
  signal baopoco_dir_x1_bb_real_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x1_bb_real_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_bb_real_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_bb_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bb_real_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_bb_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bb_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bb_real_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x1_bb_real_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_bb_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_bb_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bb_real_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_bb_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bb_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bb_real_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x1_bb_real_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_bb_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_bb_real_we : std_logic;
  signal baopoco_dir_x1_bc_imag_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x1_bc_imag_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_bc_imag_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_bc_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bc_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_bc_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bc_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bc_imag_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x1_bc_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_bc_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_bc_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bc_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_bc_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bc_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bc_imag_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x1_bc_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_bc_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_bc_imag_we : std_logic;
  signal baopoco_dir_x1_bc_real_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x1_bc_real_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_bc_real_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_bc_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bc_real_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_bc_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bc_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bc_real_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x1_bc_real_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_bc_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_bc_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bc_real_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_bc_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bc_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bc_real_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x1_bc_real_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_bc_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_bc_real_we : std_logic;
  signal baopoco_dir_x1_bd_imag_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x1_bd_imag_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_bd_imag_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_bd_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bd_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_bd_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bd_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bd_imag_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x1_bd_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_bd_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_bd_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bd_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_bd_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bd_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bd_imag_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x1_bd_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_bd_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_bd_imag_we : std_logic;
  signal baopoco_dir_x1_bd_real_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x1_bd_real_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_bd_real_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_bd_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bd_real_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_bd_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bd_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bd_real_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x1_bd_real_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_bd_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_bd_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bd_real_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_bd_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bd_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_bd_real_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x1_bd_real_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_bd_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_bd_real_we : std_logic;
  signal baopoco_dir_x1_cc_real_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x1_cc_real_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_cc_real_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_cc_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_cc_real_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_cc_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_cc_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_cc_real_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x1_cc_real_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_cc_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_cc_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_cc_real_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_cc_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_cc_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_cc_real_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x1_cc_real_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_cc_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_cc_real_we : std_logic;
  signal baopoco_dir_x1_cd_imag_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x1_cd_imag_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_cd_imag_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_cd_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_cd_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_cd_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_cd_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_cd_imag_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x1_cd_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_cd_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_cd_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_cd_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_cd_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_cd_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_cd_imag_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x1_cd_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_cd_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_cd_imag_we : std_logic;
  signal baopoco_dir_x1_cd_real_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x1_cd_real_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_cd_real_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_cd_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_cd_real_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_cd_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_cd_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_cd_real_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x1_cd_real_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_cd_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_cd_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_cd_real_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_cd_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_cd_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_cd_real_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x1_cd_real_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_cd_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_cd_real_we : std_logic;
  signal baopoco_dir_x1_dd_real_addr : std_logic_vector(9 downto 0);
  signal baopoco_dir_x1_dd_real_data_in : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_dd_real_data_out : std_logic_vector(31 downto 0);
  signal baopoco_dir_x1_dd_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_dd_real_ramblk_porta_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_dd_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_dd_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_dd_real_ramblk_porta_BRAM_EN : std_logic;
  signal baopoco_dir_x1_dd_real_ramblk_porta_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_dd_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_dd_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_dd_real_ramblk_portb_BRAM_Clk : std_logic;
  signal baopoco_dir_x1_dd_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_dd_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal baopoco_dir_x1_dd_real_ramblk_portb_BRAM_EN : std_logic;
  signal baopoco_dir_x1_dd_real_ramblk_portb_BRAM_Rst : std_logic;
  signal baopoco_dir_x1_dd_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal baopoco_dir_x1_dd_real_we : std_logic;
  signal baopoco_fft_shift_user_data_out : std_logic_vector(31 downto 0);
  signal baopoco_insel_insel_data_user_data_out : std_logic_vector(31 downto 0);
  signal baopoco_led0_adc_clip_gateway : std_logic_vector(0 to 0);
  signal baopoco_led1_mrst_gateway : std_logic_vector(0 to 0);
  signal baopoco_led2_sync_gateway : std_logic_vector(0 to 0);
  signal baopoco_led3_new_acc_gateway : std_logic_vector(0 to 0);
  signal baopoco_quant0_addr_user_data_out : std_logic_vector(31 downto 0);
  signal baopoco_quant0_gain_user_data_out : std_logic_vector(31 downto 0);
  signal baopoco_quant1_addr_user_data_out : std_logic_vector(31 downto 0);
  signal baopoco_quant1_gain_user_data_out : std_logic_vector(31 downto 0);
  signal baopoco_quant2_addr_user_data_out : std_logic_vector(31 downto 0);
  signal baopoco_quant2_gain_user_data_out : std_logic_vector(31 downto 0);
  signal baopoco_quant3_addr_user_data_out : std_logic_vector(31 downto 0);
  signal baopoco_quant3_gain_user_data_out : std_logic_vector(31 downto 0);
  signal baopoco_seed_seed_data_user_data_out : std_logic_vector(31 downto 0);
  signal baopoco_status_user_data_in : std_logic_vector(31 downto 0);
  signal epb_addr_gp_int : std_logic_vector(5 downto 0);
  signal epb_addr_int : std_logic_vector(22 downto 0);
  signal epb_be_n_int : std_logic_vector(1 downto 0);
  signal epb_clk : std_logic;
  signal epb_cs_n_int : std_logic;
  signal epb_data_i : std_logic_vector(15 downto 0);
  signal epb_data_o : std_logic_vector(15 downto 0);
  signal epb_data_oe_n : std_logic;
  signal epb_oe_n_int : std_logic;
  signal epb_r_w_n_int : std_logic;
  signal epb_rdy_buf : std_logic;
  signal epb_rdy_oe : std_logic;
  signal net_gnd0 : std_logic;
  signal net_gnd1 : std_logic_vector(0 to 0);
  signal net_gnd27 : std_logic_vector(0 to 26);
  signal net_gnd33 : std_logic_vector(0 to 32);
  signal net_vcc1 : std_logic_vector(0 to 0);
  signal net_vcc27 : std_logic_vector(0 to 26);
  signal net_vcc33 : std_logic_vector(0 to 32);
  signal opb0_M_ABus : std_logic_vector(0 to 31);
  signal opb0_M_BE : std_logic_vector(0 to 3);
  signal opb0_M_DBus : std_logic_vector(0 to 31);
  signal opb0_M_RNW : std_logic_vector(0 to 0);
  signal opb0_M_busLock : std_logic_vector(0 to 0);
  signal opb0_M_request : std_logic_vector(0 to 0);
  signal opb0_M_select : std_logic_vector(0 to 0);
  signal opb0_M_seqAddr : std_logic_vector(0 to 0);
  signal opb0_OPB_ABus : std_logic_vector(0 to 31);
  signal opb0_OPB_BE : std_logic_vector(0 to 3);
  signal opb0_OPB_DBus : std_logic_vector(0 to 31);
  signal opb0_OPB_MGrant : std_logic_vector(0 to 0);
  signal opb0_OPB_RNW : std_logic;
  signal opb0_OPB_Rst : std_logic;
  signal opb0_OPB_errAck : std_logic;
  signal opb0_OPB_retry : std_logic;
  signal opb0_OPB_select : std_logic;
  signal opb0_OPB_seqAddr : std_logic;
  signal opb0_OPB_timeout : std_logic;
  signal opb0_OPB_xferAck : std_logic;
  signal opb0_Sl_DBus : std_logic_vector(0 to 1055);
  signal opb0_Sl_errAck : std_logic_vector(0 to 32);
  signal opb0_Sl_retry : std_logic_vector(0 to 32);
  signal opb0_Sl_toutSup : std_logic_vector(0 to 32);
  signal opb0_Sl_xferAck : std_logic_vector(0 to 32);
  signal opb1_M_ABus : std_logic_vector(0 to 31);
  signal opb1_M_BE : std_logic_vector(0 to 3);
  signal opb1_M_DBus : std_logic_vector(0 to 31);
  signal opb1_M_RNW : std_logic_vector(0 to 0);
  signal opb1_M_busLock : std_logic_vector(0 to 0);
  signal opb1_M_request : std_logic_vector(0 to 0);
  signal opb1_M_select : std_logic_vector(0 to 0);
  signal opb1_M_seqAddr : std_logic_vector(0 to 0);
  signal opb1_OPB_ABus : std_logic_vector(0 to 31);
  signal opb1_OPB_BE : std_logic_vector(0 to 3);
  signal opb1_OPB_DBus : std_logic_vector(0 to 31);
  signal opb1_OPB_MGrant : std_logic_vector(0 to 0);
  signal opb1_OPB_RNW : std_logic;
  signal opb1_OPB_Rst : std_logic;
  signal opb1_OPB_errAck : std_logic;
  signal opb1_OPB_retry : std_logic;
  signal opb1_OPB_select : std_logic;
  signal opb1_OPB_seqAddr : std_logic;
  signal opb1_OPB_timeout : std_logic;
  signal opb1_OPB_xferAck : std_logic;
  signal opb1_Sl_DBus : std_logic_vector(0 to 863);
  signal opb1_Sl_errAck : std_logic_vector(0 to 26);
  signal opb1_Sl_retry : std_logic_vector(0 to 26);
  signal opb1_Sl_toutSup : std_logic_vector(0 to 26);
  signal opb1_Sl_xferAck : std_logic_vector(0 to 26);
  signal pgassign1 : std_logic;
  signal pgassign2 : std_logic_vector(15 downto 0);
  signal sys_reset : std_logic;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of infrastructure_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of reset_block_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of opb0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of epb_opb_bridge_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of epb_infrastructure_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of sys_block_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of opb_adccontroller_0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_xsg_core_config_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_adc_s_adc_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_adc_s_adc1_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_acc_len_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_acc_num_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_adc_capture_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_adc_sum0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_adc_sum1_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_adc_sum2_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_adc_sum3_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_adc_sum_sq0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_adc_sum_sq1_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_adc_sum_sq2_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_adc_sum_sq3_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_ctrl_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_delay_delay_data_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_aa_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_aa_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_aa_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_ab_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_ab_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_ab_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_ab_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_ab_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_ab_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_ac_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_ac_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_ac_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_ac_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_ac_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_ac_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_ad_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_ad_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_ad_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_ad_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_ad_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_ad_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_bb_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_bb_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_bb_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_bc_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_bc_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_bc_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_bc_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_bc_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_bc_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_bd_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_bd_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_bd_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_bd_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_bd_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_bd_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_cc_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_cc_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_cc_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_cd_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_cd_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_cd_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_cd_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_cd_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_cd_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_dd_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_dd_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x0_dd_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_aa_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_aa_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_aa_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_ab_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_ab_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_ab_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_ab_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_ab_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_ab_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_ac_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_ac_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_ac_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_ac_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_ac_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_ac_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_ad_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_ad_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_ad_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_ad_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_ad_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_ad_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_bb_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_bb_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_bb_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_bc_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_bc_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_bc_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_bc_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_bc_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_bc_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_bd_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_bd_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_bd_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_bd_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_bd_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_bd_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_cc_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_cc_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_cc_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_cd_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_cd_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_cd_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_cd_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_cd_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_cd_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_dd_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_dd_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_dir_x1_dd_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_fft_shift_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_insel_insel_data_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_led0_adc_clip_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_led1_mrst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_led2_sync_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_led3_new_acc_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_quant0_addr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_quant0_gain_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_quant1_addr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_quant1_gain_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_quant2_addr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_quant2_gain_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_quant3_addr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_quant3_gain_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_seed_seed_data_wrapper : component is "user_black_box";
  attribute BOX_TYPE of baopoco_status_wrapper : component is "user_black_box";
  attribute BOX_TYPE of opb1_wrapper : component is "user_black_box";
  attribute BOX_TYPE of opb2opb_bridge_opb1_wrapper : component is "user_black_box";

begin

  -- Internal assignments

  pgassign1 <= '0';
  pgassign2(15 downto 0) <= X"0000";
  net_gnd0 <= '0';
  net_gnd1(0 to 0) <= B"0";
  net_gnd27(0 to 26) <= B"000000000000000000000000000";
  net_gnd33(0 to 32) <= B"000000000000000000000000000000000";
  net_vcc1(0 to 0) <= B"1";
  net_vcc27(0 to 26) <= B"111111111111111111111111111";
  net_vcc33(0 to 32) <= B"111111111111111111111111111111111";

  infrastructure_inst : infrastructure_inst_wrapper
    port map (
      sys_clk_n => sys_clk_n,
      sys_clk_p => sys_clk_p,
      dly_clk_n => dly_clk_n,
      dly_clk_p => dly_clk_p,
      aux0_clk_n => aux0_clk_n,
      aux0_clk_p => aux0_clk_p,
      aux1_clk_n => aux1_clk_n,
      aux1_clk_p => aux1_clk_p,
      epb_clk_in => epb_clk_in,
      sys_clk => open,
      sys_clk90 => open,
      sys_clk180 => open,
      sys_clk270 => open,
      sys_clk_lock => open,
      sys_clk2x => open,
      sys_clk2x90 => open,
      sys_clk2x180 => open,
      sys_clk2x270 => open,
      dly_clk => open,
      aux0_clk => open,
      aux0_clk90 => open,
      aux0_clk180 => open,
      aux0_clk270 => open,
      aux1_clk => open,
      aux1_clk90 => open,
      aux1_clk180 => open,
      aux1_clk270 => open,
      aux0_clk2x => open,
      aux0_clk2x90 => open,
      aux0_clk2x180 => open,
      aux0_clk2x270 => open,
      epb_clk => epb_clk,
      idelay_rst => sys_reset,
      idelay_rdy => open
    );

  reset_block_inst : reset_block_inst_wrapper
    port map (
      clk => epb_clk,
      async_reset_i => pgassign1,
      reset_i => pgassign1,
      reset_o => sys_reset
    );

  opb0 : opb0_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      SYS_Rst => pgassign1,
      Debug_SYS_Rst => net_gnd0,
      WDT_Rst => net_gnd0,
      M_ABus => opb0_M_ABus,
      M_BE => opb0_M_BE,
      M_beXfer => net_gnd1(0 to 0),
      M_busLock => opb0_M_busLock(0 to 0),
      M_DBus => opb0_M_DBus,
      M_DBusEn => net_gnd1(0 to 0),
      M_DBusEn32_63 => net_vcc1(0 to 0),
      M_dwXfer => net_gnd1(0 to 0),
      M_fwXfer => net_gnd1(0 to 0),
      M_hwXfer => net_gnd1(0 to 0),
      M_request => opb0_M_request(0 to 0),
      M_RNW => opb0_M_RNW(0 to 0),
      M_select => opb0_M_select(0 to 0),
      M_seqAddr => opb0_M_seqAddr(0 to 0),
      Sl_beAck => net_gnd33,
      Sl_DBus => opb0_Sl_DBus,
      Sl_DBusEn => net_vcc33,
      Sl_DBusEn32_63 => net_vcc33,
      Sl_errAck => opb0_Sl_errAck,
      Sl_dwAck => net_gnd33,
      Sl_fwAck => net_gnd33,
      Sl_hwAck => net_gnd33,
      Sl_retry => opb0_Sl_retry,
      Sl_toutSup => opb0_Sl_toutSup,
      Sl_xferAck => opb0_Sl_xferAck,
      OPB_MRequest => open,
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_beXfer => open,
      OPB_beAck => open,
      OPB_busLock => open,
      OPB_rdDBus => open,
      OPB_wrDBus => open,
      OPB_DBus => opb0_OPB_DBus,
      OPB_errAck => opb0_OPB_errAck,
      OPB_dwAck => open,
      OPB_dwXfer => open,
      OPB_fwAck => open,
      OPB_fwXfer => open,
      OPB_hwAck => open,
      OPB_hwXfer => open,
      OPB_MGrant => opb0_OPB_MGrant(0 to 0),
      OPB_pendReq => open,
      OPB_retry => opb0_OPB_retry,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      OPB_timeout => opb0_OPB_timeout,
      OPB_toutSup => open,
      OPB_xferAck => opb0_OPB_xferAck
    );

  epb_opb_bridge_inst : epb_opb_bridge_inst_wrapper
    port map (
      sys_reset => pgassign1,
      epb_data_oe_n => epb_data_oe_n,
      epb_cs_n => epb_cs_n_int,
      epb_oe_n => epb_oe_n_int,
      epb_r_w_n => epb_r_w_n_int,
      epb_be_n => epb_be_n_int,
      epb_addr => epb_addr_int,
      epb_addr_gp => epb_addr_gp_int,
      epb_data_i => epb_data_i,
      epb_data_o => epb_data_o,
      epb_rdy => epb_rdy_buf,
      epb_rdy_oe => epb_rdy_oe,
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      M_request => opb0_M_request(0),
      M_busLock => opb0_M_busLock(0),
      M_select => opb0_M_select(0),
      M_RNW => opb0_M_RNW(0),
      M_BE => opb0_M_BE,
      M_seqAddr => opb0_M_seqAddr(0),
      M_DBus => opb0_M_DBus,
      M_ABus => opb0_M_ABus,
      OPB_MGrant => opb0_OPB_MGrant(0),
      OPB_xferAck => opb0_OPB_xferAck,
      OPB_errAck => opb0_OPB_errAck,
      OPB_retry => opb0_OPB_retry,
      OPB_timeout => opb0_OPB_timeout,
      OPB_DBus => opb0_OPB_DBus
    );

  epb_infrastructure_inst : epb_infrastructure_inst_wrapper
    port map (
      epb_data_buf => epb_data,
      epb_data_oe_n_i => epb_data_oe_n,
      epb_data_out_i => epb_data_o,
      epb_data_in_o => epb_data_i,
      epb_oe_n_buf => epb_oe_n,
      epb_oe_n => epb_oe_n_int,
      epb_cs_n_buf => epb_cs_n,
      epb_cs_n => epb_cs_n_int,
      epb_r_w_n_buf => epb_r_w_n,
      epb_r_w_n => epb_r_w_n_int,
      epb_be_n_buf => epb_be_n,
      epb_be_n => epb_be_n_int,
      epb_addr_buf => epb_addr,
      epb_addr => epb_addr_int,
      epb_addr_gp_buf => epb_addr_gp,
      epb_addr_gp => epb_addr_gp_int,
      epb_rdy_buf => epb_rdy,
      epb_rdy => epb_rdy_buf,
      epb_rdy_oe => epb_rdy_oe
    );

  sys_block_inst : sys_block_inst_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(0 to 31),
      Sl_errAck => opb0_Sl_errAck(0),
      Sl_retry => opb0_Sl_retry(0),
      Sl_toutSup => opb0_Sl_toutSup(0),
      Sl_xferAck => opb0_Sl_xferAck(0),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      soft_reset => open,
      irq_n => ppc_irq_n,
      app_irq => pgassign2,
      fab_clk => adc0_clk
    );

  opb_adccontroller_0 : opb_adccontroller_0_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(32 to 63),
      Sl_errAck => opb0_Sl_errAck(1),
      Sl_retry => opb0_Sl_retry(1),
      Sl_toutSup => opb0_Sl_toutSup(1),
      Sl_xferAck => opb0_Sl_xferAck(1),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      adc0_adc3wire_clk => adc0_adc3wire_clk,
      adc0_adc3wire_data => adc0_adc3wire_data,
      adc0_adc3wire_strobe => adc0_adc3wire_strobe,
      adc0_modepin => adc0_modepin,
      adc0_ddrb => adc0_ddrb,
      adc0_dcm_reset => adc0_dcm_reset,
      adc0_psclk => adc0_psclk,
      adc0_psen => adc0_psen,
      adc0_psincdec => adc0_psincdec,
      adc0_psdone => adc0_psdone,
      adc0_clk => adc0_clk,
      adc1_adc3wire_clk => adc1_adc3wire_clk,
      adc1_adc3wire_data => adc1_adc3wire_data,
      adc1_adc3wire_strobe => adc1_adc3wire_strobe,
      adc1_modepin => adc1_modepin,
      adc1_ddrb => adc1_ddrb,
      adc1_dcm_reset => adc1_dcm_reset,
      adc1_psclk => adc1_psclk,
      adc1_psen => adc1_psen,
      adc1_psincdec => adc1_psincdec,
      adc1_psdone => adc1_psdone,
      adc1_clk => adc1_clk
    );

  baopoco_XSG_core_config : baopoco_xsg_core_config_wrapper
    port map (
      clk => adc0_clk,
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
      baopoco_led0_adc_clip_gateway => baopoco_led0_adc_clip_gateway(0),
      baopoco_led1_mrst_gateway => baopoco_led1_mrst_gateway(0),
      baopoco_led2_sync_gateway => baopoco_led2_sync_gateway(0),
      baopoco_led3_new_acc_gateway => baopoco_led3_new_acc_gateway(0),
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

  baopoco_ADC_s_adc : baopoco_adc_s_adc_wrapper
    port map (
      adc_clk_p => adc0clk_p,
      adc_clk_n => adc0clk_n,
      adc_sync_p => adc0sync_p,
      adc_sync_n => adc0sync_n,
      adc_outofrangei_p => adc0outofrangei_p,
      adc_outofrangei_n => adc0outofrangei_n,
      adc_outofrangeq_p => adc0outofrangeq_p,
      adc_outofrangeq_n => adc0outofrangeq_n,
      adc_dataeveni_p => adc0dataeveni_p,
      adc_dataeveni_n => adc0dataeveni_n,
      adc_dataoddi_p => adc0dataoddi_p,
      adc_dataoddi_n => adc0dataoddi_n,
      adc_dataevenq_p => adc0dataevenq_p,
      adc_dataevenq_n => adc0dataevenq_n,
      adc_dataoddq_p => adc0dataoddq_p,
      adc_dataoddq_n => adc0dataoddq_n,
      adc_ddrb_p => adc0ddrb_p,
      adc_ddrb_n => adc0ddrb_n,
      user_datai0 => baopoco_ADC_s_adc_user_datai0,
      user_datai1 => baopoco_ADC_s_adc_user_datai1,
      user_datai2 => baopoco_ADC_s_adc_user_datai2,
      user_datai3 => baopoco_ADC_s_adc_user_datai3,
      user_dataq0 => baopoco_ADC_s_adc_user_dataq0,
      user_dataq1 => baopoco_ADC_s_adc_user_dataq1,
      user_dataq2 => baopoco_ADC_s_adc_user_dataq2,
      user_dataq3 => baopoco_ADC_s_adc_user_dataq3,
      user_outofrangei0 => baopoco_ADC_s_adc_user_outofrangei0,
      user_outofrangei1 => baopoco_ADC_s_adc_user_outofrangei1,
      user_outofrangeq0 => baopoco_ADC_s_adc_user_outofrangeq0,
      user_outofrangeq1 => baopoco_ADC_s_adc_user_outofrangeq1,
      user_sync0 => baopoco_ADC_s_adc_user_sync0,
      user_sync1 => baopoco_ADC_s_adc_user_sync1,
      user_sync2 => baopoco_ADC_s_adc_user_sync2,
      user_sync3 => baopoco_ADC_s_adc_user_sync3,
      user_data_valid => baopoco_ADC_s_adc_user_data_valid,
      dcm_reset => adc0_dcm_reset,
      ctrl_reset => adc0_ddrb,
      ctrl_clk_in => adc0_clk,
      ctrl_clk_out => adc0_clk,
      ctrl_clk90_out => adc0_clk90,
      ctrl_clk180_out => open,
      ctrl_clk270_out => open,
      ctrl_dcm_locked => open,
      dcm_psclk => adc0_psclk,
      dcm_psen => adc0_psen,
      dcm_psincdec => adc0_psincdec,
      dcm_psdone => adc0_psdone
    );

  baopoco_ADC_s_adc1 : baopoco_adc_s_adc1_wrapper
    port map (
      adc_clk_p => adc1clk_p,
      adc_clk_n => adc1clk_n,
      adc_sync_p => adc1sync_p,
      adc_sync_n => adc1sync_n,
      adc_outofrangei_p => adc1outofrangei_p,
      adc_outofrangei_n => adc1outofrangei_n,
      adc_outofrangeq_p => adc1outofrangeq_p,
      adc_outofrangeq_n => adc1outofrangeq_n,
      adc_dataeveni_p => adc1dataeveni_p,
      adc_dataeveni_n => adc1dataeveni_n,
      adc_dataoddi_p => adc1dataoddi_p,
      adc_dataoddi_n => adc1dataoddi_n,
      adc_dataevenq_p => adc1dataevenq_p,
      adc_dataevenq_n => adc1dataevenq_n,
      adc_dataoddq_p => adc1dataoddq_p,
      adc_dataoddq_n => adc1dataoddq_n,
      adc_ddrb_p => adc1ddrb_p,
      adc_ddrb_n => adc1ddrb_n,
      user_datai0 => baopoco_ADC_s_adc1_user_datai0,
      user_datai1 => baopoco_ADC_s_adc1_user_datai1,
      user_datai2 => baopoco_ADC_s_adc1_user_datai2,
      user_datai3 => baopoco_ADC_s_adc1_user_datai3,
      user_dataq0 => baopoco_ADC_s_adc1_user_dataq0,
      user_dataq1 => baopoco_ADC_s_adc1_user_dataq1,
      user_dataq2 => baopoco_ADC_s_adc1_user_dataq2,
      user_dataq3 => baopoco_ADC_s_adc1_user_dataq3,
      user_outofrangei0 => baopoco_ADC_s_adc1_user_outofrangei0,
      user_outofrangei1 => baopoco_ADC_s_adc1_user_outofrangei1,
      user_outofrangeq0 => baopoco_ADC_s_adc1_user_outofrangeq0,
      user_outofrangeq1 => baopoco_ADC_s_adc1_user_outofrangeq1,
      user_sync0 => baopoco_ADC_s_adc1_user_sync0,
      user_sync1 => baopoco_ADC_s_adc1_user_sync1,
      user_sync2 => baopoco_ADC_s_adc1_user_sync2,
      user_sync3 => baopoco_ADC_s_adc1_user_sync3,
      user_data_valid => baopoco_ADC_s_adc1_user_data_valid,
      dcm_reset => adc1_dcm_reset,
      ctrl_reset => adc1_ddrb,
      ctrl_clk_in => adc0_clk,
      ctrl_clk_out => adc1_clk,
      ctrl_clk90_out => open,
      ctrl_clk180_out => open,
      ctrl_clk270_out => open,
      ctrl_dcm_locked => open,
      dcm_psclk => adc1_psclk,
      dcm_psen => adc1_psen,
      dcm_psincdec => adc1_psincdec,
      dcm_psdone => adc1_psdone
    );

  baopoco_acc_len : baopoco_acc_len_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(64 to 95),
      Sl_errAck => opb0_Sl_errAck(2),
      Sl_retry => opb0_Sl_retry(2),
      Sl_toutSup => opb0_Sl_toutSup(2),
      Sl_xferAck => opb0_Sl_xferAck(2),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => baopoco_acc_len_user_data_out,
      user_clk => adc0_clk
    );

  baopoco_acc_num : baopoco_acc_num_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(96 to 127),
      Sl_errAck => opb0_Sl_errAck(3),
      Sl_retry => opb0_Sl_retry(3),
      Sl_toutSup => opb0_Sl_toutSup(3),
      Sl_xferAck => opb0_Sl_xferAck(3),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => baopoco_acc_num_user_data_in,
      user_clk => adc0_clk
    );

  baopoco_adc_capture : baopoco_adc_capture_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(128 to 159),
      Sl_errAck => opb0_Sl_errAck(4),
      Sl_retry => opb0_Sl_retry(4),
      Sl_toutSup => opb0_Sl_toutSup(4),
      Sl_xferAck => opb0_Sl_xferAck(4),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => baopoco_adc_capture_user_data_out,
      user_clk => adc0_clk
    );

  baopoco_adc_sum0 : baopoco_adc_sum0_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(160 to 191),
      Sl_errAck => opb0_Sl_errAck(5),
      Sl_retry => opb0_Sl_retry(5),
      Sl_toutSup => opb0_Sl_toutSup(5),
      Sl_xferAck => opb0_Sl_xferAck(5),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => baopoco_adc_sum0_user_data_in,
      user_clk => adc0_clk
    );

  baopoco_adc_sum1 : baopoco_adc_sum1_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(192 to 223),
      Sl_errAck => opb0_Sl_errAck(6),
      Sl_retry => opb0_Sl_retry(6),
      Sl_toutSup => opb0_Sl_toutSup(6),
      Sl_xferAck => opb0_Sl_xferAck(6),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => baopoco_adc_sum1_user_data_in,
      user_clk => adc0_clk
    );

  baopoco_adc_sum2 : baopoco_adc_sum2_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(224 to 255),
      Sl_errAck => opb0_Sl_errAck(7),
      Sl_retry => opb0_Sl_retry(7),
      Sl_toutSup => opb0_Sl_toutSup(7),
      Sl_xferAck => opb0_Sl_xferAck(7),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => baopoco_adc_sum2_user_data_in,
      user_clk => adc0_clk
    );

  baopoco_adc_sum3 : baopoco_adc_sum3_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(256 to 287),
      Sl_errAck => opb0_Sl_errAck(8),
      Sl_retry => opb0_Sl_retry(8),
      Sl_toutSup => opb0_Sl_toutSup(8),
      Sl_xferAck => opb0_Sl_xferAck(8),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => baopoco_adc_sum3_user_data_in,
      user_clk => adc0_clk
    );

  baopoco_adc_sum_sq0 : baopoco_adc_sum_sq0_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(288 to 319),
      Sl_errAck => opb0_Sl_errAck(9),
      Sl_retry => opb0_Sl_retry(9),
      Sl_toutSup => opb0_Sl_toutSup(9),
      Sl_xferAck => opb0_Sl_xferAck(9),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => baopoco_adc_sum_sq0_user_data_in,
      user_clk => adc0_clk
    );

  baopoco_adc_sum_sq1 : baopoco_adc_sum_sq1_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(320 to 351),
      Sl_errAck => opb0_Sl_errAck(10),
      Sl_retry => opb0_Sl_retry(10),
      Sl_toutSup => opb0_Sl_toutSup(10),
      Sl_xferAck => opb0_Sl_xferAck(10),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => baopoco_adc_sum_sq1_user_data_in,
      user_clk => adc0_clk
    );

  baopoco_adc_sum_sq2 : baopoco_adc_sum_sq2_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(352 to 383),
      Sl_errAck => opb0_Sl_errAck(11),
      Sl_retry => opb0_Sl_retry(11),
      Sl_toutSup => opb0_Sl_toutSup(11),
      Sl_xferAck => opb0_Sl_xferAck(11),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => baopoco_adc_sum_sq2_user_data_in,
      user_clk => adc0_clk
    );

  baopoco_adc_sum_sq3 : baopoco_adc_sum_sq3_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(384 to 415),
      Sl_errAck => opb0_Sl_errAck(12),
      Sl_retry => opb0_Sl_retry(12),
      Sl_toutSup => opb0_Sl_toutSup(12),
      Sl_xferAck => opb0_Sl_xferAck(12),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => baopoco_adc_sum_sq3_user_data_in,
      user_clk => adc0_clk
    );

  baopoco_ctrl : baopoco_ctrl_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(416 to 447),
      Sl_errAck => opb0_Sl_errAck(13),
      Sl_retry => opb0_Sl_retry(13),
      Sl_toutSup => opb0_Sl_toutSup(13),
      Sl_xferAck => opb0_Sl_xferAck(13),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => baopoco_ctrl_user_data_out,
      user_clk => adc0_clk
    );

  baopoco_delay_delay_data : baopoco_delay_delay_data_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(448 to 479),
      Sl_errAck => opb0_Sl_errAck(14),
      Sl_retry => opb0_Sl_retry(14),
      Sl_toutSup => opb0_Sl_toutSup(14),
      Sl_xferAck => opb0_Sl_xferAck(14),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => baopoco_delay_delay_data_user_data_out,
      user_clk => adc0_clk
    );

  baopoco_dir_x0_aa_real_ramif : baopoco_dir_x0_aa_real_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x0_aa_real_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x0_aa_real_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x0_aa_real_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x0_aa_real_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x0_aa_real_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x0_aa_real_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x0_aa_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x0_aa_real_addr,
      data_in => baopoco_dir_x0_aa_real_data_in,
      data_out => baopoco_dir_x0_aa_real_data_out,
      we => baopoco_dir_x0_aa_real_we
    );

  baopoco_dir_x0_aa_real_ramblk : baopoco_dir_x0_aa_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x0_aa_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x0_aa_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x0_aa_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x0_aa_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x0_aa_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x0_aa_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x0_aa_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x0_aa_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x0_aa_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x0_aa_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x0_aa_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x0_aa_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x0_aa_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x0_aa_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_aa_real : baopoco_dir_x0_aa_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(480 to 511),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(15),
      sln_errack => opb0_Sl_errAck(15),
      sln_toutsup => opb0_Sl_toutSup(15),
      sln_retry => opb0_Sl_retry(15),
      bram_rst => baopoco_dir_x0_aa_real_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x0_aa_real_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x0_aa_real_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x0_aa_real_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x0_aa_real_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x0_aa_real_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x0_aa_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_ab_imag_ramif : baopoco_dir_x0_ab_imag_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x0_ab_imag_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x0_ab_imag_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x0_ab_imag_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x0_ab_imag_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x0_ab_imag_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x0_ab_imag_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x0_ab_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x0_ab_imag_addr,
      data_in => baopoco_dir_x0_ab_imag_data_in,
      data_out => baopoco_dir_x0_ab_imag_data_out,
      we => baopoco_dir_x0_ab_imag_we
    );

  baopoco_dir_x0_ab_imag_ramblk : baopoco_dir_x0_ab_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x0_ab_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x0_ab_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x0_ab_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x0_ab_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x0_ab_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x0_ab_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x0_ab_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x0_ab_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x0_ab_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x0_ab_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x0_ab_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x0_ab_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x0_ab_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x0_ab_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_ab_imag : baopoco_dir_x0_ab_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(512 to 543),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(16),
      sln_errack => opb0_Sl_errAck(16),
      sln_toutsup => opb0_Sl_toutSup(16),
      sln_retry => opb0_Sl_retry(16),
      bram_rst => baopoco_dir_x0_ab_imag_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x0_ab_imag_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x0_ab_imag_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x0_ab_imag_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x0_ab_imag_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x0_ab_imag_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x0_ab_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_ab_real_ramif : baopoco_dir_x0_ab_real_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x0_ab_real_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x0_ab_real_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x0_ab_real_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x0_ab_real_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x0_ab_real_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x0_ab_real_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x0_ab_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x0_ab_real_addr,
      data_in => baopoco_dir_x0_ab_real_data_in,
      data_out => baopoco_dir_x0_ab_real_data_out,
      we => baopoco_dir_x0_ab_real_we
    );

  baopoco_dir_x0_ab_real_ramblk : baopoco_dir_x0_ab_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x0_ab_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x0_ab_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x0_ab_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x0_ab_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x0_ab_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x0_ab_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x0_ab_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x0_ab_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x0_ab_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x0_ab_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x0_ab_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x0_ab_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x0_ab_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x0_ab_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_ab_real : baopoco_dir_x0_ab_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(544 to 575),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(17),
      sln_errack => opb0_Sl_errAck(17),
      sln_toutsup => opb0_Sl_toutSup(17),
      sln_retry => opb0_Sl_retry(17),
      bram_rst => baopoco_dir_x0_ab_real_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x0_ab_real_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x0_ab_real_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x0_ab_real_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x0_ab_real_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x0_ab_real_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x0_ab_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_ac_imag_ramif : baopoco_dir_x0_ac_imag_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x0_ac_imag_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x0_ac_imag_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x0_ac_imag_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x0_ac_imag_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x0_ac_imag_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x0_ac_imag_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x0_ac_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x0_ac_imag_addr,
      data_in => baopoco_dir_x0_ac_imag_data_in,
      data_out => baopoco_dir_x0_ac_imag_data_out,
      we => baopoco_dir_x0_ac_imag_we
    );

  baopoco_dir_x0_ac_imag_ramblk : baopoco_dir_x0_ac_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x0_ac_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x0_ac_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x0_ac_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x0_ac_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x0_ac_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x0_ac_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x0_ac_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x0_ac_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x0_ac_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x0_ac_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x0_ac_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x0_ac_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x0_ac_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x0_ac_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_ac_imag : baopoco_dir_x0_ac_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(576 to 607),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(18),
      sln_errack => opb0_Sl_errAck(18),
      sln_toutsup => opb0_Sl_toutSup(18),
      sln_retry => opb0_Sl_retry(18),
      bram_rst => baopoco_dir_x0_ac_imag_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x0_ac_imag_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x0_ac_imag_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x0_ac_imag_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x0_ac_imag_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x0_ac_imag_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x0_ac_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_ac_real_ramif : baopoco_dir_x0_ac_real_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x0_ac_real_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x0_ac_real_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x0_ac_real_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x0_ac_real_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x0_ac_real_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x0_ac_real_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x0_ac_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x0_ac_real_addr,
      data_in => baopoco_dir_x0_ac_real_data_in,
      data_out => baopoco_dir_x0_ac_real_data_out,
      we => baopoco_dir_x0_ac_real_we
    );

  baopoco_dir_x0_ac_real_ramblk : baopoco_dir_x0_ac_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x0_ac_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x0_ac_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x0_ac_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x0_ac_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x0_ac_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x0_ac_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x0_ac_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x0_ac_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x0_ac_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x0_ac_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x0_ac_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x0_ac_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x0_ac_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x0_ac_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_ac_real : baopoco_dir_x0_ac_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(608 to 639),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(19),
      sln_errack => opb0_Sl_errAck(19),
      sln_toutsup => opb0_Sl_toutSup(19),
      sln_retry => opb0_Sl_retry(19),
      bram_rst => baopoco_dir_x0_ac_real_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x0_ac_real_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x0_ac_real_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x0_ac_real_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x0_ac_real_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x0_ac_real_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x0_ac_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_ad_imag_ramif : baopoco_dir_x0_ad_imag_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x0_ad_imag_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x0_ad_imag_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x0_ad_imag_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x0_ad_imag_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x0_ad_imag_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x0_ad_imag_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x0_ad_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x0_ad_imag_addr,
      data_in => baopoco_dir_x0_ad_imag_data_in,
      data_out => baopoco_dir_x0_ad_imag_data_out,
      we => baopoco_dir_x0_ad_imag_we
    );

  baopoco_dir_x0_ad_imag_ramblk : baopoco_dir_x0_ad_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x0_ad_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x0_ad_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x0_ad_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x0_ad_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x0_ad_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x0_ad_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x0_ad_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x0_ad_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x0_ad_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x0_ad_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x0_ad_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x0_ad_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x0_ad_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x0_ad_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_ad_imag : baopoco_dir_x0_ad_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(640 to 671),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(20),
      sln_errack => opb0_Sl_errAck(20),
      sln_toutsup => opb0_Sl_toutSup(20),
      sln_retry => opb0_Sl_retry(20),
      bram_rst => baopoco_dir_x0_ad_imag_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x0_ad_imag_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x0_ad_imag_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x0_ad_imag_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x0_ad_imag_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x0_ad_imag_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x0_ad_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_ad_real_ramif : baopoco_dir_x0_ad_real_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x0_ad_real_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x0_ad_real_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x0_ad_real_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x0_ad_real_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x0_ad_real_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x0_ad_real_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x0_ad_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x0_ad_real_addr,
      data_in => baopoco_dir_x0_ad_real_data_in,
      data_out => baopoco_dir_x0_ad_real_data_out,
      we => baopoco_dir_x0_ad_real_we
    );

  baopoco_dir_x0_ad_real_ramblk : baopoco_dir_x0_ad_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x0_ad_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x0_ad_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x0_ad_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x0_ad_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x0_ad_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x0_ad_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x0_ad_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x0_ad_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x0_ad_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x0_ad_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x0_ad_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x0_ad_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x0_ad_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x0_ad_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_ad_real : baopoco_dir_x0_ad_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(672 to 703),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(21),
      sln_errack => opb0_Sl_errAck(21),
      sln_toutsup => opb0_Sl_toutSup(21),
      sln_retry => opb0_Sl_retry(21),
      bram_rst => baopoco_dir_x0_ad_real_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x0_ad_real_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x0_ad_real_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x0_ad_real_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x0_ad_real_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x0_ad_real_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x0_ad_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_bb_real_ramif : baopoco_dir_x0_bb_real_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x0_bb_real_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x0_bb_real_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x0_bb_real_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x0_bb_real_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x0_bb_real_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x0_bb_real_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x0_bb_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x0_bb_real_addr,
      data_in => baopoco_dir_x0_bb_real_data_in,
      data_out => baopoco_dir_x0_bb_real_data_out,
      we => baopoco_dir_x0_bb_real_we
    );

  baopoco_dir_x0_bb_real_ramblk : baopoco_dir_x0_bb_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x0_bb_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x0_bb_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x0_bb_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x0_bb_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x0_bb_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x0_bb_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x0_bb_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x0_bb_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x0_bb_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x0_bb_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x0_bb_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x0_bb_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x0_bb_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x0_bb_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_bb_real : baopoco_dir_x0_bb_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(704 to 735),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(22),
      sln_errack => opb0_Sl_errAck(22),
      sln_toutsup => opb0_Sl_toutSup(22),
      sln_retry => opb0_Sl_retry(22),
      bram_rst => baopoco_dir_x0_bb_real_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x0_bb_real_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x0_bb_real_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x0_bb_real_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x0_bb_real_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x0_bb_real_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x0_bb_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_bc_imag_ramif : baopoco_dir_x0_bc_imag_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x0_bc_imag_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x0_bc_imag_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x0_bc_imag_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x0_bc_imag_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x0_bc_imag_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x0_bc_imag_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x0_bc_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x0_bc_imag_addr,
      data_in => baopoco_dir_x0_bc_imag_data_in,
      data_out => baopoco_dir_x0_bc_imag_data_out,
      we => baopoco_dir_x0_bc_imag_we
    );

  baopoco_dir_x0_bc_imag_ramblk : baopoco_dir_x0_bc_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x0_bc_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x0_bc_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x0_bc_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x0_bc_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x0_bc_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x0_bc_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x0_bc_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x0_bc_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x0_bc_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x0_bc_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x0_bc_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x0_bc_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x0_bc_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x0_bc_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_bc_imag : baopoco_dir_x0_bc_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(736 to 767),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(23),
      sln_errack => opb0_Sl_errAck(23),
      sln_toutsup => opb0_Sl_toutSup(23),
      sln_retry => opb0_Sl_retry(23),
      bram_rst => baopoco_dir_x0_bc_imag_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x0_bc_imag_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x0_bc_imag_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x0_bc_imag_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x0_bc_imag_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x0_bc_imag_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x0_bc_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_bc_real_ramif : baopoco_dir_x0_bc_real_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x0_bc_real_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x0_bc_real_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x0_bc_real_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x0_bc_real_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x0_bc_real_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x0_bc_real_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x0_bc_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x0_bc_real_addr,
      data_in => baopoco_dir_x0_bc_real_data_in,
      data_out => baopoco_dir_x0_bc_real_data_out,
      we => baopoco_dir_x0_bc_real_we
    );

  baopoco_dir_x0_bc_real_ramblk : baopoco_dir_x0_bc_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x0_bc_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x0_bc_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x0_bc_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x0_bc_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x0_bc_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x0_bc_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x0_bc_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x0_bc_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x0_bc_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x0_bc_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x0_bc_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x0_bc_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x0_bc_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x0_bc_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_bc_real : baopoco_dir_x0_bc_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(768 to 799),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(24),
      sln_errack => opb0_Sl_errAck(24),
      sln_toutsup => opb0_Sl_toutSup(24),
      sln_retry => opb0_Sl_retry(24),
      bram_rst => baopoco_dir_x0_bc_real_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x0_bc_real_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x0_bc_real_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x0_bc_real_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x0_bc_real_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x0_bc_real_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x0_bc_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_bd_imag_ramif : baopoco_dir_x0_bd_imag_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x0_bd_imag_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x0_bd_imag_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x0_bd_imag_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x0_bd_imag_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x0_bd_imag_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x0_bd_imag_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x0_bd_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x0_bd_imag_addr,
      data_in => baopoco_dir_x0_bd_imag_data_in,
      data_out => baopoco_dir_x0_bd_imag_data_out,
      we => baopoco_dir_x0_bd_imag_we
    );

  baopoco_dir_x0_bd_imag_ramblk : baopoco_dir_x0_bd_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x0_bd_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x0_bd_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x0_bd_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x0_bd_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x0_bd_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x0_bd_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x0_bd_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x0_bd_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x0_bd_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x0_bd_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x0_bd_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x0_bd_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x0_bd_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x0_bd_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_bd_imag : baopoco_dir_x0_bd_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(800 to 831),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(25),
      sln_errack => opb0_Sl_errAck(25),
      sln_toutsup => opb0_Sl_toutSup(25),
      sln_retry => opb0_Sl_retry(25),
      bram_rst => baopoco_dir_x0_bd_imag_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x0_bd_imag_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x0_bd_imag_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x0_bd_imag_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x0_bd_imag_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x0_bd_imag_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x0_bd_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_bd_real_ramif : baopoco_dir_x0_bd_real_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x0_bd_real_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x0_bd_real_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x0_bd_real_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x0_bd_real_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x0_bd_real_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x0_bd_real_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x0_bd_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x0_bd_real_addr,
      data_in => baopoco_dir_x0_bd_real_data_in,
      data_out => baopoco_dir_x0_bd_real_data_out,
      we => baopoco_dir_x0_bd_real_we
    );

  baopoco_dir_x0_bd_real_ramblk : baopoco_dir_x0_bd_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x0_bd_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x0_bd_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x0_bd_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x0_bd_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x0_bd_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x0_bd_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x0_bd_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x0_bd_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x0_bd_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x0_bd_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x0_bd_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x0_bd_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x0_bd_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x0_bd_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_bd_real : baopoco_dir_x0_bd_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(832 to 863),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(26),
      sln_errack => opb0_Sl_errAck(26),
      sln_toutsup => opb0_Sl_toutSup(26),
      sln_retry => opb0_Sl_retry(26),
      bram_rst => baopoco_dir_x0_bd_real_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x0_bd_real_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x0_bd_real_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x0_bd_real_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x0_bd_real_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x0_bd_real_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x0_bd_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_cc_real_ramif : baopoco_dir_x0_cc_real_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x0_cc_real_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x0_cc_real_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x0_cc_real_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x0_cc_real_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x0_cc_real_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x0_cc_real_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x0_cc_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x0_cc_real_addr,
      data_in => baopoco_dir_x0_cc_real_data_in,
      data_out => baopoco_dir_x0_cc_real_data_out,
      we => baopoco_dir_x0_cc_real_we
    );

  baopoco_dir_x0_cc_real_ramblk : baopoco_dir_x0_cc_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x0_cc_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x0_cc_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x0_cc_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x0_cc_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x0_cc_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x0_cc_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x0_cc_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x0_cc_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x0_cc_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x0_cc_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x0_cc_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x0_cc_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x0_cc_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x0_cc_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_cc_real : baopoco_dir_x0_cc_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(864 to 895),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(27),
      sln_errack => opb0_Sl_errAck(27),
      sln_toutsup => opb0_Sl_toutSup(27),
      sln_retry => opb0_Sl_retry(27),
      bram_rst => baopoco_dir_x0_cc_real_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x0_cc_real_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x0_cc_real_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x0_cc_real_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x0_cc_real_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x0_cc_real_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x0_cc_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_cd_imag_ramif : baopoco_dir_x0_cd_imag_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x0_cd_imag_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x0_cd_imag_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x0_cd_imag_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x0_cd_imag_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x0_cd_imag_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x0_cd_imag_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x0_cd_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x0_cd_imag_addr,
      data_in => baopoco_dir_x0_cd_imag_data_in,
      data_out => baopoco_dir_x0_cd_imag_data_out,
      we => baopoco_dir_x0_cd_imag_we
    );

  baopoco_dir_x0_cd_imag_ramblk : baopoco_dir_x0_cd_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x0_cd_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x0_cd_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x0_cd_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x0_cd_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x0_cd_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x0_cd_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x0_cd_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x0_cd_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x0_cd_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x0_cd_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x0_cd_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x0_cd_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x0_cd_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x0_cd_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_cd_imag : baopoco_dir_x0_cd_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(896 to 927),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(28),
      sln_errack => opb0_Sl_errAck(28),
      sln_toutsup => opb0_Sl_toutSup(28),
      sln_retry => opb0_Sl_retry(28),
      bram_rst => baopoco_dir_x0_cd_imag_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x0_cd_imag_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x0_cd_imag_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x0_cd_imag_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x0_cd_imag_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x0_cd_imag_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x0_cd_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_cd_real_ramif : baopoco_dir_x0_cd_real_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x0_cd_real_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x0_cd_real_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x0_cd_real_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x0_cd_real_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x0_cd_real_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x0_cd_real_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x0_cd_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x0_cd_real_addr,
      data_in => baopoco_dir_x0_cd_real_data_in,
      data_out => baopoco_dir_x0_cd_real_data_out,
      we => baopoco_dir_x0_cd_real_we
    );

  baopoco_dir_x0_cd_real_ramblk : baopoco_dir_x0_cd_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x0_cd_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x0_cd_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x0_cd_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x0_cd_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x0_cd_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x0_cd_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x0_cd_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x0_cd_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x0_cd_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x0_cd_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x0_cd_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x0_cd_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x0_cd_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x0_cd_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_cd_real : baopoco_dir_x0_cd_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(928 to 959),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(29),
      sln_errack => opb0_Sl_errAck(29),
      sln_toutsup => opb0_Sl_toutSup(29),
      sln_retry => opb0_Sl_retry(29),
      bram_rst => baopoco_dir_x0_cd_real_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x0_cd_real_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x0_cd_real_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x0_cd_real_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x0_cd_real_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x0_cd_real_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x0_cd_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_dd_real_ramif : baopoco_dir_x0_dd_real_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x0_dd_real_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x0_dd_real_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x0_dd_real_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x0_dd_real_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x0_dd_real_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x0_dd_real_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x0_dd_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x0_dd_real_addr,
      data_in => baopoco_dir_x0_dd_real_data_in,
      data_out => baopoco_dir_x0_dd_real_data_out,
      we => baopoco_dir_x0_dd_real_we
    );

  baopoco_dir_x0_dd_real_ramblk : baopoco_dir_x0_dd_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x0_dd_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x0_dd_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x0_dd_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x0_dd_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x0_dd_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x0_dd_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x0_dd_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x0_dd_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x0_dd_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x0_dd_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x0_dd_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x0_dd_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x0_dd_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x0_dd_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x0_dd_real : baopoco_dir_x0_dd_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(960 to 991),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(30),
      sln_errack => opb0_Sl_errAck(30),
      sln_toutsup => opb0_Sl_toutSup(30),
      sln_retry => opb0_Sl_retry(30),
      bram_rst => baopoco_dir_x0_dd_real_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x0_dd_real_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x0_dd_real_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x0_dd_real_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x0_dd_real_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x0_dd_real_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x0_dd_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_aa_real_ramif : baopoco_dir_x1_aa_real_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x1_aa_real_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x1_aa_real_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x1_aa_real_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x1_aa_real_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x1_aa_real_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x1_aa_real_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x1_aa_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x1_aa_real_addr,
      data_in => baopoco_dir_x1_aa_real_data_in,
      data_out => baopoco_dir_x1_aa_real_data_out,
      we => baopoco_dir_x1_aa_real_we
    );

  baopoco_dir_x1_aa_real_ramblk : baopoco_dir_x1_aa_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x1_aa_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x1_aa_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x1_aa_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x1_aa_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x1_aa_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x1_aa_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x1_aa_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x1_aa_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x1_aa_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x1_aa_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x1_aa_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x1_aa_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x1_aa_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x1_aa_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_aa_real : baopoco_dir_x1_aa_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(992 to 1023),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(31),
      sln_errack => opb0_Sl_errAck(31),
      sln_toutsup => opb0_Sl_toutSup(31),
      sln_retry => opb0_Sl_retry(31),
      bram_rst => baopoco_dir_x1_aa_real_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x1_aa_real_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x1_aa_real_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x1_aa_real_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x1_aa_real_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x1_aa_real_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x1_aa_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_ab_imag_ramif : baopoco_dir_x1_ab_imag_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x1_ab_imag_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x1_ab_imag_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x1_ab_imag_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x1_ab_imag_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x1_ab_imag_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x1_ab_imag_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x1_ab_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x1_ab_imag_addr,
      data_in => baopoco_dir_x1_ab_imag_data_in,
      data_out => baopoco_dir_x1_ab_imag_data_out,
      we => baopoco_dir_x1_ab_imag_we
    );

  baopoco_dir_x1_ab_imag_ramblk : baopoco_dir_x1_ab_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x1_ab_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x1_ab_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x1_ab_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x1_ab_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x1_ab_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x1_ab_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x1_ab_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x1_ab_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x1_ab_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x1_ab_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x1_ab_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x1_ab_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x1_ab_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x1_ab_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_ab_imag : baopoco_dir_x1_ab_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(0 to 31),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(0),
      sln_errack => opb1_Sl_errAck(0),
      sln_toutsup => opb1_Sl_toutSup(0),
      sln_retry => opb1_Sl_retry(0),
      bram_rst => baopoco_dir_x1_ab_imag_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x1_ab_imag_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x1_ab_imag_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x1_ab_imag_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x1_ab_imag_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x1_ab_imag_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x1_ab_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_ab_real_ramif : baopoco_dir_x1_ab_real_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x1_ab_real_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x1_ab_real_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x1_ab_real_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x1_ab_real_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x1_ab_real_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x1_ab_real_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x1_ab_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x1_ab_real_addr,
      data_in => baopoco_dir_x1_ab_real_data_in,
      data_out => baopoco_dir_x1_ab_real_data_out,
      we => baopoco_dir_x1_ab_real_we
    );

  baopoco_dir_x1_ab_real_ramblk : baopoco_dir_x1_ab_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x1_ab_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x1_ab_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x1_ab_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x1_ab_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x1_ab_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x1_ab_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x1_ab_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x1_ab_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x1_ab_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x1_ab_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x1_ab_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x1_ab_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x1_ab_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x1_ab_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_ab_real : baopoco_dir_x1_ab_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(32 to 63),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(1),
      sln_errack => opb1_Sl_errAck(1),
      sln_toutsup => opb1_Sl_toutSup(1),
      sln_retry => opb1_Sl_retry(1),
      bram_rst => baopoco_dir_x1_ab_real_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x1_ab_real_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x1_ab_real_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x1_ab_real_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x1_ab_real_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x1_ab_real_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x1_ab_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_ac_imag_ramif : baopoco_dir_x1_ac_imag_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x1_ac_imag_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x1_ac_imag_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x1_ac_imag_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x1_ac_imag_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x1_ac_imag_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x1_ac_imag_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x1_ac_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x1_ac_imag_addr,
      data_in => baopoco_dir_x1_ac_imag_data_in,
      data_out => baopoco_dir_x1_ac_imag_data_out,
      we => baopoco_dir_x1_ac_imag_we
    );

  baopoco_dir_x1_ac_imag_ramblk : baopoco_dir_x1_ac_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x1_ac_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x1_ac_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x1_ac_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x1_ac_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x1_ac_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x1_ac_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x1_ac_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x1_ac_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x1_ac_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x1_ac_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x1_ac_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x1_ac_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x1_ac_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x1_ac_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_ac_imag : baopoco_dir_x1_ac_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(64 to 95),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(2),
      sln_errack => opb1_Sl_errAck(2),
      sln_toutsup => opb1_Sl_toutSup(2),
      sln_retry => opb1_Sl_retry(2),
      bram_rst => baopoco_dir_x1_ac_imag_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x1_ac_imag_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x1_ac_imag_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x1_ac_imag_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x1_ac_imag_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x1_ac_imag_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x1_ac_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_ac_real_ramif : baopoco_dir_x1_ac_real_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x1_ac_real_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x1_ac_real_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x1_ac_real_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x1_ac_real_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x1_ac_real_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x1_ac_real_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x1_ac_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x1_ac_real_addr,
      data_in => baopoco_dir_x1_ac_real_data_in,
      data_out => baopoco_dir_x1_ac_real_data_out,
      we => baopoco_dir_x1_ac_real_we
    );

  baopoco_dir_x1_ac_real_ramblk : baopoco_dir_x1_ac_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x1_ac_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x1_ac_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x1_ac_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x1_ac_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x1_ac_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x1_ac_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x1_ac_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x1_ac_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x1_ac_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x1_ac_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x1_ac_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x1_ac_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x1_ac_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x1_ac_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_ac_real : baopoco_dir_x1_ac_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(96 to 127),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(3),
      sln_errack => opb1_Sl_errAck(3),
      sln_toutsup => opb1_Sl_toutSup(3),
      sln_retry => opb1_Sl_retry(3),
      bram_rst => baopoco_dir_x1_ac_real_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x1_ac_real_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x1_ac_real_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x1_ac_real_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x1_ac_real_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x1_ac_real_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x1_ac_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_ad_imag_ramif : baopoco_dir_x1_ad_imag_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x1_ad_imag_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x1_ad_imag_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x1_ad_imag_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x1_ad_imag_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x1_ad_imag_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x1_ad_imag_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x1_ad_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x1_ad_imag_addr,
      data_in => baopoco_dir_x1_ad_imag_data_in,
      data_out => baopoco_dir_x1_ad_imag_data_out,
      we => baopoco_dir_x1_ad_imag_we
    );

  baopoco_dir_x1_ad_imag_ramblk : baopoco_dir_x1_ad_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x1_ad_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x1_ad_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x1_ad_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x1_ad_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x1_ad_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x1_ad_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x1_ad_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x1_ad_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x1_ad_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x1_ad_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x1_ad_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x1_ad_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x1_ad_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x1_ad_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_ad_imag : baopoco_dir_x1_ad_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(128 to 159),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(4),
      sln_errack => opb1_Sl_errAck(4),
      sln_toutsup => opb1_Sl_toutSup(4),
      sln_retry => opb1_Sl_retry(4),
      bram_rst => baopoco_dir_x1_ad_imag_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x1_ad_imag_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x1_ad_imag_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x1_ad_imag_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x1_ad_imag_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x1_ad_imag_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x1_ad_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_ad_real_ramif : baopoco_dir_x1_ad_real_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x1_ad_real_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x1_ad_real_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x1_ad_real_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x1_ad_real_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x1_ad_real_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x1_ad_real_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x1_ad_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x1_ad_real_addr,
      data_in => baopoco_dir_x1_ad_real_data_in,
      data_out => baopoco_dir_x1_ad_real_data_out,
      we => baopoco_dir_x1_ad_real_we
    );

  baopoco_dir_x1_ad_real_ramblk : baopoco_dir_x1_ad_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x1_ad_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x1_ad_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x1_ad_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x1_ad_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x1_ad_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x1_ad_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x1_ad_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x1_ad_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x1_ad_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x1_ad_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x1_ad_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x1_ad_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x1_ad_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x1_ad_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_ad_real : baopoco_dir_x1_ad_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(160 to 191),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(5),
      sln_errack => opb1_Sl_errAck(5),
      sln_toutsup => opb1_Sl_toutSup(5),
      sln_retry => opb1_Sl_retry(5),
      bram_rst => baopoco_dir_x1_ad_real_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x1_ad_real_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x1_ad_real_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x1_ad_real_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x1_ad_real_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x1_ad_real_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x1_ad_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_bb_real_ramif : baopoco_dir_x1_bb_real_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x1_bb_real_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x1_bb_real_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x1_bb_real_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x1_bb_real_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x1_bb_real_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x1_bb_real_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x1_bb_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x1_bb_real_addr,
      data_in => baopoco_dir_x1_bb_real_data_in,
      data_out => baopoco_dir_x1_bb_real_data_out,
      we => baopoco_dir_x1_bb_real_we
    );

  baopoco_dir_x1_bb_real_ramblk : baopoco_dir_x1_bb_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x1_bb_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x1_bb_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x1_bb_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x1_bb_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x1_bb_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x1_bb_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x1_bb_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x1_bb_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x1_bb_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x1_bb_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x1_bb_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x1_bb_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x1_bb_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x1_bb_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_bb_real : baopoco_dir_x1_bb_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(192 to 223),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(6),
      sln_errack => opb1_Sl_errAck(6),
      sln_toutsup => opb1_Sl_toutSup(6),
      sln_retry => opb1_Sl_retry(6),
      bram_rst => baopoco_dir_x1_bb_real_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x1_bb_real_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x1_bb_real_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x1_bb_real_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x1_bb_real_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x1_bb_real_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x1_bb_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_bc_imag_ramif : baopoco_dir_x1_bc_imag_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x1_bc_imag_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x1_bc_imag_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x1_bc_imag_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x1_bc_imag_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x1_bc_imag_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x1_bc_imag_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x1_bc_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x1_bc_imag_addr,
      data_in => baopoco_dir_x1_bc_imag_data_in,
      data_out => baopoco_dir_x1_bc_imag_data_out,
      we => baopoco_dir_x1_bc_imag_we
    );

  baopoco_dir_x1_bc_imag_ramblk : baopoco_dir_x1_bc_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x1_bc_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x1_bc_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x1_bc_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x1_bc_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x1_bc_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x1_bc_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x1_bc_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x1_bc_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x1_bc_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x1_bc_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x1_bc_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x1_bc_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x1_bc_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x1_bc_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_bc_imag : baopoco_dir_x1_bc_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(224 to 255),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(7),
      sln_errack => opb1_Sl_errAck(7),
      sln_toutsup => opb1_Sl_toutSup(7),
      sln_retry => opb1_Sl_retry(7),
      bram_rst => baopoco_dir_x1_bc_imag_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x1_bc_imag_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x1_bc_imag_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x1_bc_imag_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x1_bc_imag_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x1_bc_imag_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x1_bc_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_bc_real_ramif : baopoco_dir_x1_bc_real_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x1_bc_real_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x1_bc_real_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x1_bc_real_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x1_bc_real_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x1_bc_real_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x1_bc_real_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x1_bc_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x1_bc_real_addr,
      data_in => baopoco_dir_x1_bc_real_data_in,
      data_out => baopoco_dir_x1_bc_real_data_out,
      we => baopoco_dir_x1_bc_real_we
    );

  baopoco_dir_x1_bc_real_ramblk : baopoco_dir_x1_bc_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x1_bc_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x1_bc_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x1_bc_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x1_bc_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x1_bc_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x1_bc_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x1_bc_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x1_bc_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x1_bc_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x1_bc_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x1_bc_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x1_bc_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x1_bc_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x1_bc_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_bc_real : baopoco_dir_x1_bc_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(256 to 287),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(8),
      sln_errack => opb1_Sl_errAck(8),
      sln_toutsup => opb1_Sl_toutSup(8),
      sln_retry => opb1_Sl_retry(8),
      bram_rst => baopoco_dir_x1_bc_real_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x1_bc_real_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x1_bc_real_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x1_bc_real_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x1_bc_real_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x1_bc_real_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x1_bc_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_bd_imag_ramif : baopoco_dir_x1_bd_imag_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x1_bd_imag_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x1_bd_imag_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x1_bd_imag_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x1_bd_imag_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x1_bd_imag_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x1_bd_imag_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x1_bd_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x1_bd_imag_addr,
      data_in => baopoco_dir_x1_bd_imag_data_in,
      data_out => baopoco_dir_x1_bd_imag_data_out,
      we => baopoco_dir_x1_bd_imag_we
    );

  baopoco_dir_x1_bd_imag_ramblk : baopoco_dir_x1_bd_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x1_bd_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x1_bd_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x1_bd_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x1_bd_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x1_bd_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x1_bd_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x1_bd_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x1_bd_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x1_bd_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x1_bd_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x1_bd_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x1_bd_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x1_bd_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x1_bd_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_bd_imag : baopoco_dir_x1_bd_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(288 to 319),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(9),
      sln_errack => opb1_Sl_errAck(9),
      sln_toutsup => opb1_Sl_toutSup(9),
      sln_retry => opb1_Sl_retry(9),
      bram_rst => baopoco_dir_x1_bd_imag_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x1_bd_imag_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x1_bd_imag_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x1_bd_imag_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x1_bd_imag_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x1_bd_imag_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x1_bd_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_bd_real_ramif : baopoco_dir_x1_bd_real_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x1_bd_real_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x1_bd_real_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x1_bd_real_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x1_bd_real_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x1_bd_real_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x1_bd_real_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x1_bd_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x1_bd_real_addr,
      data_in => baopoco_dir_x1_bd_real_data_in,
      data_out => baopoco_dir_x1_bd_real_data_out,
      we => baopoco_dir_x1_bd_real_we
    );

  baopoco_dir_x1_bd_real_ramblk : baopoco_dir_x1_bd_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x1_bd_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x1_bd_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x1_bd_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x1_bd_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x1_bd_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x1_bd_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x1_bd_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x1_bd_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x1_bd_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x1_bd_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x1_bd_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x1_bd_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x1_bd_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x1_bd_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_bd_real : baopoco_dir_x1_bd_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(320 to 351),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(10),
      sln_errack => opb1_Sl_errAck(10),
      sln_toutsup => opb1_Sl_toutSup(10),
      sln_retry => opb1_Sl_retry(10),
      bram_rst => baopoco_dir_x1_bd_real_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x1_bd_real_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x1_bd_real_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x1_bd_real_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x1_bd_real_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x1_bd_real_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x1_bd_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_cc_real_ramif : baopoco_dir_x1_cc_real_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x1_cc_real_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x1_cc_real_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x1_cc_real_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x1_cc_real_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x1_cc_real_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x1_cc_real_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x1_cc_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x1_cc_real_addr,
      data_in => baopoco_dir_x1_cc_real_data_in,
      data_out => baopoco_dir_x1_cc_real_data_out,
      we => baopoco_dir_x1_cc_real_we
    );

  baopoco_dir_x1_cc_real_ramblk : baopoco_dir_x1_cc_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x1_cc_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x1_cc_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x1_cc_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x1_cc_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x1_cc_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x1_cc_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x1_cc_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x1_cc_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x1_cc_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x1_cc_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x1_cc_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x1_cc_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x1_cc_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x1_cc_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_cc_real : baopoco_dir_x1_cc_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(352 to 383),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(11),
      sln_errack => opb1_Sl_errAck(11),
      sln_toutsup => opb1_Sl_toutSup(11),
      sln_retry => opb1_Sl_retry(11),
      bram_rst => baopoco_dir_x1_cc_real_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x1_cc_real_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x1_cc_real_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x1_cc_real_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x1_cc_real_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x1_cc_real_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x1_cc_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_cd_imag_ramif : baopoco_dir_x1_cd_imag_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x1_cd_imag_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x1_cd_imag_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x1_cd_imag_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x1_cd_imag_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x1_cd_imag_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x1_cd_imag_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x1_cd_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x1_cd_imag_addr,
      data_in => baopoco_dir_x1_cd_imag_data_in,
      data_out => baopoco_dir_x1_cd_imag_data_out,
      we => baopoco_dir_x1_cd_imag_we
    );

  baopoco_dir_x1_cd_imag_ramblk : baopoco_dir_x1_cd_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x1_cd_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x1_cd_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x1_cd_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x1_cd_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x1_cd_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x1_cd_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x1_cd_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x1_cd_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x1_cd_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x1_cd_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x1_cd_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x1_cd_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x1_cd_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x1_cd_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_cd_imag : baopoco_dir_x1_cd_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(384 to 415),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(12),
      sln_errack => opb1_Sl_errAck(12),
      sln_toutsup => opb1_Sl_toutSup(12),
      sln_retry => opb1_Sl_retry(12),
      bram_rst => baopoco_dir_x1_cd_imag_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x1_cd_imag_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x1_cd_imag_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x1_cd_imag_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x1_cd_imag_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x1_cd_imag_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x1_cd_imag_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_cd_real_ramif : baopoco_dir_x1_cd_real_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x1_cd_real_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x1_cd_real_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x1_cd_real_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x1_cd_real_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x1_cd_real_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x1_cd_real_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x1_cd_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x1_cd_real_addr,
      data_in => baopoco_dir_x1_cd_real_data_in,
      data_out => baopoco_dir_x1_cd_real_data_out,
      we => baopoco_dir_x1_cd_real_we
    );

  baopoco_dir_x1_cd_real_ramblk : baopoco_dir_x1_cd_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x1_cd_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x1_cd_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x1_cd_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x1_cd_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x1_cd_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x1_cd_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x1_cd_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x1_cd_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x1_cd_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x1_cd_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x1_cd_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x1_cd_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x1_cd_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x1_cd_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_cd_real : baopoco_dir_x1_cd_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(416 to 447),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(13),
      sln_errack => opb1_Sl_errAck(13),
      sln_toutsup => opb1_Sl_toutSup(13),
      sln_retry => opb1_Sl_retry(13),
      bram_rst => baopoco_dir_x1_cd_real_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x1_cd_real_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x1_cd_real_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x1_cd_real_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x1_cd_real_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x1_cd_real_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x1_cd_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_dd_real_ramif : baopoco_dir_x1_dd_real_ramif_wrapper
    port map (
      bram_rst => baopoco_dir_x1_dd_real_ramblk_porta_BRAM_Rst,
      bram_clk => baopoco_dir_x1_dd_real_ramblk_porta_BRAM_Clk,
      bram_en => baopoco_dir_x1_dd_real_ramblk_porta_BRAM_EN,
      bram_wen => baopoco_dir_x1_dd_real_ramblk_porta_BRAM_WEN,
      bram_addr => baopoco_dir_x1_dd_real_ramblk_porta_BRAM_Addr,
      bram_din => baopoco_dir_x1_dd_real_ramblk_porta_BRAM_Din,
      bram_dout => baopoco_dir_x1_dd_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => baopoco_dir_x1_dd_real_addr,
      data_in => baopoco_dir_x1_dd_real_data_in,
      data_out => baopoco_dir_x1_dd_real_data_out,
      we => baopoco_dir_x1_dd_real_we
    );

  baopoco_dir_x1_dd_real_ramblk : baopoco_dir_x1_dd_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => baopoco_dir_x1_dd_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => baopoco_dir_x1_dd_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => baopoco_dir_x1_dd_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => baopoco_dir_x1_dd_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => baopoco_dir_x1_dd_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => baopoco_dir_x1_dd_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => baopoco_dir_x1_dd_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => baopoco_dir_x1_dd_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => baopoco_dir_x1_dd_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => baopoco_dir_x1_dd_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => baopoco_dir_x1_dd_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => baopoco_dir_x1_dd_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => baopoco_dir_x1_dd_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => baopoco_dir_x1_dd_real_ramblk_portb_BRAM_Dout
    );

  baopoco_dir_x1_dd_real : baopoco_dir_x1_dd_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(448 to 479),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(14),
      sln_errack => opb1_Sl_errAck(14),
      sln_toutsup => opb1_Sl_toutSup(14),
      sln_retry => opb1_Sl_retry(14),
      bram_rst => baopoco_dir_x1_dd_real_ramblk_portb_BRAM_Rst,
      bram_clk => baopoco_dir_x1_dd_real_ramblk_portb_BRAM_Clk,
      bram_en => baopoco_dir_x1_dd_real_ramblk_portb_BRAM_EN,
      bram_wen => baopoco_dir_x1_dd_real_ramblk_portb_BRAM_WEN,
      bram_addr => baopoco_dir_x1_dd_real_ramblk_portb_BRAM_Addr,
      bram_din => baopoco_dir_x1_dd_real_ramblk_portb_BRAM_Din,
      bram_dout => baopoco_dir_x1_dd_real_ramblk_portb_BRAM_Dout
    );

  baopoco_fft_shift : baopoco_fft_shift_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(480 to 511),
      Sl_errAck => opb1_Sl_errAck(15),
      Sl_retry => opb1_Sl_retry(15),
      Sl_toutSup => opb1_Sl_toutSup(15),
      Sl_xferAck => opb1_Sl_xferAck(15),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_out => baopoco_fft_shift_user_data_out,
      user_clk => adc0_clk
    );

  baopoco_insel_insel_data : baopoco_insel_insel_data_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(512 to 543),
      Sl_errAck => opb1_Sl_errAck(16),
      Sl_retry => opb1_Sl_retry(16),
      Sl_toutSup => opb1_Sl_toutSup(16),
      Sl_xferAck => opb1_Sl_xferAck(16),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_out => baopoco_insel_insel_data_user_data_out,
      user_clk => adc0_clk
    );

  baopoco_led0_adc_clip : baopoco_led0_adc_clip_wrapper
    port map (
      gateway => baopoco_led0_adc_clip_gateway(0 to 0),
      io_pad => baopoco_led0_adc_clip_ext(0 to 0),
      clk => adc0_clk,
      clk90 => adc0_clk90
    );

  baopoco_led1_mrst : baopoco_led1_mrst_wrapper
    port map (
      gateway => baopoco_led1_mrst_gateway(0 to 0),
      io_pad => baopoco_led1_mrst_ext(0 to 0),
      clk => adc0_clk,
      clk90 => adc0_clk90
    );

  baopoco_led2_sync : baopoco_led2_sync_wrapper
    port map (
      gateway => baopoco_led2_sync_gateway(0 to 0),
      io_pad => baopoco_led2_sync_ext(0 to 0),
      clk => adc0_clk,
      clk90 => adc0_clk90
    );

  baopoco_led3_new_acc : baopoco_led3_new_acc_wrapper
    port map (
      gateway => baopoco_led3_new_acc_gateway(0 to 0),
      io_pad => baopoco_led3_new_acc_ext(0 to 0),
      clk => adc0_clk,
      clk90 => adc0_clk90
    );

  baopoco_quant0_addr : baopoco_quant0_addr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(544 to 575),
      Sl_errAck => opb1_Sl_errAck(17),
      Sl_retry => opb1_Sl_retry(17),
      Sl_toutSup => opb1_Sl_toutSup(17),
      Sl_xferAck => opb1_Sl_xferAck(17),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_out => baopoco_quant0_addr_user_data_out,
      user_clk => adc0_clk
    );

  baopoco_quant0_gain : baopoco_quant0_gain_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(576 to 607),
      Sl_errAck => opb1_Sl_errAck(18),
      Sl_retry => opb1_Sl_retry(18),
      Sl_toutSup => opb1_Sl_toutSup(18),
      Sl_xferAck => opb1_Sl_xferAck(18),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_out => baopoco_quant0_gain_user_data_out,
      user_clk => adc0_clk
    );

  baopoco_quant1_addr : baopoco_quant1_addr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(608 to 639),
      Sl_errAck => opb1_Sl_errAck(19),
      Sl_retry => opb1_Sl_retry(19),
      Sl_toutSup => opb1_Sl_toutSup(19),
      Sl_xferAck => opb1_Sl_xferAck(19),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_out => baopoco_quant1_addr_user_data_out,
      user_clk => adc0_clk
    );

  baopoco_quant1_gain : baopoco_quant1_gain_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(640 to 671),
      Sl_errAck => opb1_Sl_errAck(20),
      Sl_retry => opb1_Sl_retry(20),
      Sl_toutSup => opb1_Sl_toutSup(20),
      Sl_xferAck => opb1_Sl_xferAck(20),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_out => baopoco_quant1_gain_user_data_out,
      user_clk => adc0_clk
    );

  baopoco_quant2_addr : baopoco_quant2_addr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(672 to 703),
      Sl_errAck => opb1_Sl_errAck(21),
      Sl_retry => opb1_Sl_retry(21),
      Sl_toutSup => opb1_Sl_toutSup(21),
      Sl_xferAck => opb1_Sl_xferAck(21),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_out => baopoco_quant2_addr_user_data_out,
      user_clk => adc0_clk
    );

  baopoco_quant2_gain : baopoco_quant2_gain_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(704 to 735),
      Sl_errAck => opb1_Sl_errAck(22),
      Sl_retry => opb1_Sl_retry(22),
      Sl_toutSup => opb1_Sl_toutSup(22),
      Sl_xferAck => opb1_Sl_xferAck(22),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_out => baopoco_quant2_gain_user_data_out,
      user_clk => adc0_clk
    );

  baopoco_quant3_addr : baopoco_quant3_addr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(736 to 767),
      Sl_errAck => opb1_Sl_errAck(23),
      Sl_retry => opb1_Sl_retry(23),
      Sl_toutSup => opb1_Sl_toutSup(23),
      Sl_xferAck => opb1_Sl_xferAck(23),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_out => baopoco_quant3_addr_user_data_out,
      user_clk => adc0_clk
    );

  baopoco_quant3_gain : baopoco_quant3_gain_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(768 to 799),
      Sl_errAck => opb1_Sl_errAck(24),
      Sl_retry => opb1_Sl_retry(24),
      Sl_toutSup => opb1_Sl_toutSup(24),
      Sl_xferAck => opb1_Sl_xferAck(24),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_out => baopoco_quant3_gain_user_data_out,
      user_clk => adc0_clk
    );

  baopoco_seed_seed_data : baopoco_seed_seed_data_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(800 to 831),
      Sl_errAck => opb1_Sl_errAck(25),
      Sl_retry => opb1_Sl_retry(25),
      Sl_toutSup => opb1_Sl_toutSup(25),
      Sl_xferAck => opb1_Sl_xferAck(25),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_out => baopoco_seed_seed_data_user_data_out,
      user_clk => adc0_clk
    );

  baopoco_status : baopoco_status_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(832 to 863),
      Sl_errAck => opb1_Sl_errAck(26),
      Sl_retry => opb1_Sl_retry(26),
      Sl_toutSup => opb1_Sl_toutSup(26),
      Sl_xferAck => opb1_Sl_xferAck(26),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_in => baopoco_status_user_data_in,
      user_clk => adc0_clk
    );

  opb1 : opb1_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      SYS_Rst => sys_reset,
      Debug_SYS_Rst => net_gnd0,
      WDT_Rst => net_gnd0,
      M_ABus => opb1_M_ABus,
      M_BE => opb1_M_BE,
      M_beXfer => net_gnd1(0 to 0),
      M_busLock => opb1_M_busLock(0 to 0),
      M_DBus => opb1_M_DBus,
      M_DBusEn => net_gnd1(0 to 0),
      M_DBusEn32_63 => net_vcc1(0 to 0),
      M_dwXfer => net_gnd1(0 to 0),
      M_fwXfer => net_gnd1(0 to 0),
      M_hwXfer => net_gnd1(0 to 0),
      M_request => opb1_M_request(0 to 0),
      M_RNW => opb1_M_RNW(0 to 0),
      M_select => opb1_M_select(0 to 0),
      M_seqAddr => opb1_M_seqAddr(0 to 0),
      Sl_beAck => net_gnd27,
      Sl_DBus => opb1_Sl_DBus,
      Sl_DBusEn => net_vcc27,
      Sl_DBusEn32_63 => net_vcc27,
      Sl_errAck => opb1_Sl_errAck,
      Sl_dwAck => net_gnd27,
      Sl_fwAck => net_gnd27,
      Sl_hwAck => net_gnd27,
      Sl_retry => opb1_Sl_retry,
      Sl_toutSup => opb1_Sl_toutSup,
      Sl_xferAck => opb1_Sl_xferAck,
      OPB_MRequest => open,
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_beXfer => open,
      OPB_beAck => open,
      OPB_busLock => open,
      OPB_rdDBus => open,
      OPB_wrDBus => open,
      OPB_DBus => opb1_OPB_DBus,
      OPB_errAck => opb1_OPB_errAck,
      OPB_dwAck => open,
      OPB_dwXfer => open,
      OPB_fwAck => open,
      OPB_fwXfer => open,
      OPB_hwAck => open,
      OPB_hwXfer => open,
      OPB_MGrant => opb1_OPB_MGrant(0 to 0),
      OPB_pendReq => open,
      OPB_retry => opb1_OPB_retry,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      OPB_timeout => opb1_OPB_timeout,
      OPB_toutSup => open,
      OPB_xferAck => opb1_OPB_xferAck
    );

  opb2opb_bridge_opb1 : opb2opb_bridge_opb1_wrapper
    port map (
      MOPB_Clk => epb_clk,
      SOPB_Clk => epb_clk,
      MOPB_Rst => opb1_OPB_Rst,
      SOPB_Rst => opb0_OPB_Rst,
      SOPB_ABus => opb0_OPB_ABus,
      SOPB_BE => opb0_OPB_BE,
      SOPB_DBus => opb0_OPB_DBus,
      SOPB_RNW => opb0_OPB_RNW,
      SOPB_select => opb0_OPB_select,
      SOPB_seqAddr => opb0_OPB_seqAddr,
      Sl_DBus => opb0_Sl_DBus(1024 to 1055),
      Sl_errAck => opb0_Sl_errAck(32),
      Sl_retry => opb0_Sl_retry(32),
      Sl_toutSup => opb0_Sl_toutSup(32),
      Sl_xferAck => opb0_Sl_xferAck(32),
      M_ABus => opb1_M_ABus,
      M_BE => opb1_M_BE,
      M_busLock => opb1_M_busLock(0),
      M_DBus => opb1_M_DBus,
      M_request => opb1_M_request(0),
      M_RNW => opb1_M_RNW(0),
      M_select => opb1_M_select(0),
      M_seqAddr => opb1_M_seqAddr(0),
      MOPB_DBus => opb1_OPB_DBus,
      MOPB_errAck => opb1_OPB_errAck,
      MOPB_MGrant => opb1_OPB_MGrant(0),
      MOPB_retry => opb1_OPB_retry,
      MOPB_timeout => opb1_OPB_timeout,
      MOPB_xferAck => opb1_OPB_xferAck
    );

end architecture STRUCTURE;

