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
    mgt_ref_clk_top_n : in std_logic;
    mgt_ref_clk_top_p : in std_logic;
    mgt_ref_clk_bottom_n : in std_logic;
    mgt_ref_clk_bottom_p : in std_logic;
    mgt_rx_top_1_n : in std_logic_vector(3 downto 0);
    mgt_rx_top_1_p : in std_logic_vector(3 downto 0);
    mgt_tx_top_1_n : out std_logic_vector(3 downto 0);
    mgt_tx_top_1_p : out std_logic_vector(3 downto 0);
    mgt_rx_top_0_n : in std_logic_vector(3 downto 0);
    mgt_rx_top_0_p : in std_logic_vector(3 downto 0);
    mgt_tx_top_0_n : out std_logic_vector(3 downto 0);
    mgt_tx_top_0_p : out std_logic_vector(3 downto 0);
    mgt_rx_bottom_1_n : in std_logic_vector(3 downto 0);
    mgt_rx_bottom_1_p : in std_logic_vector(3 downto 0);
    mgt_tx_bottom_1_n : out std_logic_vector(3 downto 0);
    mgt_tx_bottom_1_p : out std_logic_vector(3 downto 0);
    mgt_rx_bottom_0_n : in std_logic_vector(3 downto 0);
    mgt_rx_bottom_0_p : in std_logic_vector(3 downto 0);
    mgt_tx_bottom_0_n : out std_logic_vector(3 downto 0);
    mgt_tx_bottom_0_p : out std_logic_vector(3 downto 0);
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
    roachf_1024_bao_LEDs_led1_arm_ext : out std_logic_vector(0 to 0);
    roachf_1024_bao_LEDs_led2_sync_ext : out std_logic_vector(0 to 0);
    roachf_1024_bao_LEDs_led4_eq_clip_ext : out std_logic_vector(0 to 0);
    qdr0_k_n : out std_logic;
    qdr0_k : out std_logic;
    qdr0_d : out std_logic_vector(17 downto 0);
    qdr0_bw_n : out std_logic_vector(1 downto 0);
    qdr0_sa : out std_logic_vector(21 downto 0);
    qdr0_w_n : out std_logic;
    qdr0_r_n : out std_logic;
    qdr0_q : in std_logic_vector(17 downto 0);
    qdr0_cq_n : in std_logic;
    qdr0_cq : in std_logic;
    qdr0_qvld : in std_logic;
    qdr0_dll_off_n : out std_logic;
    qdr1_k_n : out std_logic;
    qdr1_k : out std_logic;
    qdr1_d : out std_logic_vector(17 downto 0);
    qdr1_bw_n : out std_logic_vector(1 downto 0);
    qdr1_sa : out std_logic_vector(21 downto 0);
    qdr1_w_n : out std_logic;
    qdr1_r_n : out std_logic;
    qdr1_q : in std_logic_vector(17 downto 0);
    qdr1_cq_n : in std_logic;
    qdr1_cq : in std_logic;
    qdr1_qvld : in std_logic;
    qdr1_dll_off_n : out std_logic
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
      Sl_beAck : in std_logic_vector(0 to 36);
      Sl_DBus : in std_logic_vector(0 to 1183);
      Sl_DBusEn : in std_logic_vector(0 to 36);
      Sl_DBusEn32_63 : in std_logic_vector(0 to 36);
      Sl_errAck : in std_logic_vector(0 to 36);
      Sl_dwAck : in std_logic_vector(0 to 36);
      Sl_fwAck : in std_logic_vector(0 to 36);
      Sl_hwAck : in std_logic_vector(0 to 36);
      Sl_retry : in std_logic_vector(0 to 36);
      Sl_toutSup : in std_logic_vector(0 to 36);
      Sl_xferAck : in std_logic_vector(0 to 36);
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

  component xaui_infrastructure_inst_wrapper is
    port (
      mgt_refclk_t_n : in std_logic;
      mgt_refclk_t_p : in std_logic;
      mgt_refclk_b_n : in std_logic;
      mgt_refclk_b_p : in std_logic;
      mgt_rx_t1_n : in std_logic_vector(3 downto 0);
      mgt_rx_t1_p : in std_logic_vector(3 downto 0);
      mgt_tx_t1_n : out std_logic_vector(3 downto 0);
      mgt_tx_t1_p : out std_logic_vector(3 downto 0);
      mgt_rx_t0_n : in std_logic_vector(3 downto 0);
      mgt_rx_t0_p : in std_logic_vector(3 downto 0);
      mgt_tx_t0_n : out std_logic_vector(3 downto 0);
      mgt_tx_t0_p : out std_logic_vector(3 downto 0);
      mgt_rx_b1_n : in std_logic_vector(3 downto 0);
      mgt_rx_b1_p : in std_logic_vector(3 downto 0);
      mgt_tx_b1_n : out std_logic_vector(3 downto 0);
      mgt_tx_b1_p : out std_logic_vector(3 downto 0);
      mgt_rx_b0_n : in std_logic_vector(3 downto 0);
      mgt_rx_b0_p : in std_logic_vector(3 downto 0);
      mgt_tx_b0_n : out std_logic_vector(3 downto 0);
      mgt_tx_b0_p : out std_logic_vector(3 downto 0);
      reset : in std_logic;
      mgt_clk_1 : out std_logic;
      mgt_clk_0 : out std_logic;
      mgt_tx_reset_3 : in std_logic_vector(3 downto 0);
      mgt_rx_reset_3 : in std_logic_vector(3 downto 0);
      mgt_rxdata_3 : out std_logic_vector(63 downto 0);
      mgt_rxcharisk_3 : out std_logic_vector(7 downto 0);
      mgt_txdata_3 : in std_logic_vector(63 downto 0);
      mgt_txcharisk_3 : in std_logic_vector(7 downto 0);
      mgt_code_comma_3 : out std_logic_vector(7 downto 0);
      mgt_enchansync_3 : in std_logic;
      mgt_enable_align_3 : in std_logic_vector(3 downto 0);
      mgt_loopback_3 : in std_logic;
      mgt_powerdown_3 : in std_logic;
      mgt_rxlock_3 : out std_logic_vector(3 downto 0);
      mgt_syncok_3 : out std_logic_vector(3 downto 0);
      mgt_codevalid_3 : out std_logic_vector(7 downto 0);
      mgt_rxbufferr_3 : out std_logic_vector(3 downto 0);
      mgt_rxeqmix_3 : in std_logic_vector(1 downto 0);
      mgt_rxeqpole_3 : in std_logic_vector(3 downto 0);
      mgt_txpreemphasis_3 : in std_logic_vector(2 downto 0);
      mgt_txdiffctrl_3 : in std_logic_vector(2 downto 0);
      mgt_tx_reset_2 : in std_logic_vector(3 downto 0);
      mgt_rx_reset_2 : in std_logic_vector(3 downto 0);
      mgt_rxdata_2 : out std_logic_vector(63 downto 0);
      mgt_rxcharisk_2 : out std_logic_vector(7 downto 0);
      mgt_txdata_2 : in std_logic_vector(63 downto 0);
      mgt_txcharisk_2 : in std_logic_vector(7 downto 0);
      mgt_code_comma_2 : out std_logic_vector(7 downto 0);
      mgt_enchansync_2 : in std_logic;
      mgt_enable_align_2 : in std_logic_vector(3 downto 0);
      mgt_loopback_2 : in std_logic;
      mgt_powerdown_2 : in std_logic;
      mgt_rxlock_2 : out std_logic_vector(3 downto 0);
      mgt_syncok_2 : out std_logic_vector(3 downto 0);
      mgt_codevalid_2 : out std_logic_vector(7 downto 0);
      mgt_rxbufferr_2 : out std_logic_vector(3 downto 0);
      mgt_rxeqmix_2 : in std_logic_vector(1 downto 0);
      mgt_rxeqpole_2 : in std_logic_vector(3 downto 0);
      mgt_txpreemphasis_2 : in std_logic_vector(2 downto 0);
      mgt_txdiffctrl_2 : in std_logic_vector(2 downto 0);
      mgt_tx_reset_1 : in std_logic_vector(3 downto 0);
      mgt_rx_reset_1 : in std_logic_vector(3 downto 0);
      mgt_rxdata_1 : out std_logic_vector(63 downto 0);
      mgt_rxcharisk_1 : out std_logic_vector(7 downto 0);
      mgt_txdata_1 : in std_logic_vector(63 downto 0);
      mgt_txcharisk_1 : in std_logic_vector(7 downto 0);
      mgt_code_comma_1 : out std_logic_vector(7 downto 0);
      mgt_enchansync_1 : in std_logic;
      mgt_enable_align_1 : in std_logic_vector(3 downto 0);
      mgt_loopback_1 : in std_logic;
      mgt_powerdown_1 : in std_logic;
      mgt_rxlock_1 : out std_logic_vector(3 downto 0);
      mgt_syncok_1 : out std_logic_vector(3 downto 0);
      mgt_codevalid_1 : out std_logic_vector(7 downto 0);
      mgt_rxbufferr_1 : out std_logic_vector(3 downto 0);
      mgt_rxeqmix_1 : in std_logic_vector(1 downto 0);
      mgt_rxeqpole_1 : in std_logic_vector(3 downto 0);
      mgt_txpreemphasis_1 : in std_logic_vector(2 downto 0);
      mgt_txdiffctrl_1 : in std_logic_vector(2 downto 0);
      mgt_tx_reset_0 : in std_logic_vector(3 downto 0);
      mgt_rx_reset_0 : in std_logic_vector(3 downto 0);
      mgt_rxdata_0 : out std_logic_vector(63 downto 0);
      mgt_rxcharisk_0 : out std_logic_vector(7 downto 0);
      mgt_txdata_0 : in std_logic_vector(63 downto 0);
      mgt_txcharisk_0 : in std_logic_vector(7 downto 0);
      mgt_code_comma_0 : out std_logic_vector(7 downto 0);
      mgt_enchansync_0 : in std_logic;
      mgt_enable_align_0 : in std_logic_vector(3 downto 0);
      mgt_loopback_0 : in std_logic;
      mgt_powerdown_0 : in std_logic;
      mgt_rxlock_0 : out std_logic_vector(3 downto 0);
      mgt_syncok_0 : out std_logic_vector(3 downto 0);
      mgt_codevalid_0 : out std_logic_vector(7 downto 0);
      mgt_rxbufferr_0 : out std_logic_vector(3 downto 0);
      mgt_rxeqmix_0 : in std_logic_vector(1 downto 0);
      mgt_rxeqpole_0 : in std_logic_vector(3 downto 0);
      mgt_txpreemphasis_0 : in std_logic_vector(2 downto 0);
      mgt_txdiffctrl_0 : in std_logic_vector(2 downto 0)
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

  component roachf_1024_bao_xsg_core_config_wrapper is
    port (
      clk : in std_logic;
      roachf_1024_bao_ant_base_user_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_feng_ctl_user_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_fft_shift_user_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_gbe_sw_port_user_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_gpu_ip_user_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_gpu_port_user_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_ip_base_user_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_my_ip_user_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_ADC_s_adc_user_data_valid : in std_logic;
      roachf_1024_bao_ADC_s_adc_user_datai0 : in std_logic_vector(7 downto 0);
      roachf_1024_bao_ADC_s_adc_user_datai1 : in std_logic_vector(7 downto 0);
      roachf_1024_bao_ADC_s_adc_user_datai2 : in std_logic_vector(7 downto 0);
      roachf_1024_bao_ADC_s_adc_user_datai3 : in std_logic_vector(7 downto 0);
      roachf_1024_bao_ADC_s_adc_user_dataq0 : in std_logic_vector(7 downto 0);
      roachf_1024_bao_ADC_s_adc_user_dataq1 : in std_logic_vector(7 downto 0);
      roachf_1024_bao_ADC_s_adc_user_dataq2 : in std_logic_vector(7 downto 0);
      roachf_1024_bao_ADC_s_adc_user_dataq3 : in std_logic_vector(7 downto 0);
      roachf_1024_bao_ADC_s_adc_user_outofrangei0 : in std_logic;
      roachf_1024_bao_ADC_s_adc_user_outofrangei1 : in std_logic;
      roachf_1024_bao_ADC_s_adc_user_outofrangeq0 : in std_logic;
      roachf_1024_bao_ADC_s_adc_user_outofrangeq1 : in std_logic;
      roachf_1024_bao_ADC_s_adc_user_sync0 : in std_logic;
      roachf_1024_bao_ADC_s_adc_user_sync1 : in std_logic;
      roachf_1024_bao_ADC_s_adc_user_sync2 : in std_logic;
      roachf_1024_bao_ADC_s_adc_user_sync3 : in std_logic;
      roachf_1024_bao_ADC_s_adc1_user_data_valid : in std_logic;
      roachf_1024_bao_ADC_s_adc1_user_datai0 : in std_logic_vector(7 downto 0);
      roachf_1024_bao_ADC_s_adc1_user_datai1 : in std_logic_vector(7 downto 0);
      roachf_1024_bao_ADC_s_adc1_user_datai2 : in std_logic_vector(7 downto 0);
      roachf_1024_bao_ADC_s_adc1_user_datai3 : in std_logic_vector(7 downto 0);
      roachf_1024_bao_ADC_s_adc1_user_dataq0 : in std_logic_vector(7 downto 0);
      roachf_1024_bao_ADC_s_adc1_user_dataq1 : in std_logic_vector(7 downto 0);
      roachf_1024_bao_ADC_s_adc1_user_dataq2 : in std_logic_vector(7 downto 0);
      roachf_1024_bao_ADC_s_adc1_user_dataq3 : in std_logic_vector(7 downto 0);
      roachf_1024_bao_ADC_s_adc1_user_outofrangei0 : in std_logic;
      roachf_1024_bao_ADC_s_adc1_user_outofrangei1 : in std_logic;
      roachf_1024_bao_ADC_s_adc1_user_outofrangeq0 : in std_logic;
      roachf_1024_bao_ADC_s_adc1_user_outofrangeq1 : in std_logic;
      roachf_1024_bao_ADC_s_adc1_user_sync0 : in std_logic;
      roachf_1024_bao_ADC_s_adc1_user_sync1 : in std_logic;
      roachf_1024_bao_ADC_s_adc1_user_sync2 : in std_logic;
      roachf_1024_bao_ADC_s_adc1_user_sync3 : in std_logic;
      roachf_1024_bao_EQ_quant0_addr_user_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_EQ_quant0_gain_user_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_EQ_quant1_addr_user_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_EQ_quant1_gain_user_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_EQ_quant2_addr_user_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_EQ_quant2_gain_user_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_EQ_quant3_addr_user_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_EQ_quant3_gain_user_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_LEDs_led1_arm_gateway : out std_logic;
      roachf_1024_bao_LEDs_led2_sync_gateway : out std_logic;
      roachf_1024_bao_LEDs_led4_eq_clip_gateway : out std_logic;
      roachf_1024_bao_delay_values_user_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_gpu_gbe2_led_rx : in std_logic;
      roachf_1024_bao_gpu_gbe2_led_tx : in std_logic;
      roachf_1024_bao_gpu_gbe2_led_up : in std_logic;
      roachf_1024_bao_gpu_gbe2_rx_bad_frame : in std_logic;
      roachf_1024_bao_gpu_gbe2_rx_data : in std_logic_vector(63 downto 0);
      roachf_1024_bao_gpu_gbe2_rx_end_of_frame : in std_logic;
      roachf_1024_bao_gpu_gbe2_rx_overrun : in std_logic;
      roachf_1024_bao_gpu_gbe2_rx_source_ip : in std_logic_vector(31 downto 0);
      roachf_1024_bao_gpu_gbe2_rx_source_port : in std_logic_vector(15 downto 0);
      roachf_1024_bao_gpu_gbe2_rx_valid : in std_logic;
      roachf_1024_bao_gpu_gbe2_tx_afull : in std_logic;
      roachf_1024_bao_gpu_gbe2_tx_overflow : in std_logic;
      roachf_1024_bao_gpu_gbe2_rst : out std_logic;
      roachf_1024_bao_gpu_gbe2_rx_ack : out std_logic;
      roachf_1024_bao_gpu_gbe2_rx_overrun_ack : out std_logic;
      roachf_1024_bao_gpu_gbe2_tx_data : out std_logic_vector(63 downto 0);
      roachf_1024_bao_gpu_gbe2_tx_dest_ip : out std_logic_vector(31 downto 0);
      roachf_1024_bao_gpu_gbe2_tx_dest_port : out std_logic_vector(15 downto 0);
      roachf_1024_bao_gpu_gbe2_tx_end_of_frame : out std_logic;
      roachf_1024_bao_gpu_gbe2_tx_valid : out std_logic;
      roachf_1024_bao_input_selector_user_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_loopback_loop_cnt_user_data_in : out std_logic_vector(31 downto 0);
      roachf_1024_bao_loopback_loop_err_cnt_user_data_in : out std_logic_vector(31 downto 0);
      roachf_1024_bao_loopback_loopback_mux_gbe_over_user_data_in : out std_logic_vector(31 downto 0);
      roachf_1024_bao_loopback_loopback_mux_gbe_und_user_data_in : out std_logic_vector(31 downto 0);
      roachf_1024_bao_loopback_loopback_mux_lb_over_user_data_in : out std_logic_vector(31 downto 0);
      roachf_1024_bao_loopback_loopback_mux_lb_und_user_data_in : out std_logic_vector(31 downto 0);
      roachf_1024_bao_loopback_loopback_fifo_lb_err_cnt_user_data_in : out std_logic_vector(31 downto 0);
      roachf_1024_bao_loopback_rx_cnt_user_data_in : out std_logic_vector(31 downto 0);
      roachf_1024_bao_loopback_rx_err_cnt_user_data_in : out std_logic_vector(31 downto 0);
      roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2big_user_data_in : out std_logic_vector(31 downto 0);
      roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2small_user_data_in : out std_logic_vector(31 downto 0);
      roachf_1024_bao_seed_data_user_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_status_gbe_gpu_user_data_in : out std_logic_vector(31 downto 0);
      roachf_1024_bao_status_gbe_sw_user_data_in : out std_logic_vector(31 downto 0);
      roachf_1024_bao_status_swgbe_bframe_user_data_in : out std_logic_vector(31 downto 0);
      roachf_1024_bao_status_swgbe_oflow_user_data_in : out std_logic_vector(31 downto 0);
      roachf_1024_bao_status_swgbe_orun_user_data_in : out std_logic_vector(31 downto 0);
      roachf_1024_bao_switch_10gbetxsnap_addr_user_data_in : out std_logic_vector(31 downto 0);
      roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_switch_10gbetxsnap_bram_lsb_addr : out std_logic_vector(9 downto 0);
      roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_in : out std_logic_vector(31 downto 0);
      roachf_1024_bao_switch_10gbetxsnap_bram_lsb_we : out std_logic;
      roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_switch_10gbetxsnap_bram_msb_addr : out std_logic_vector(9 downto 0);
      roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_in : out std_logic_vector(31 downto 0);
      roachf_1024_bao_switch_10gbetxsnap_bram_msb_we : out std_logic;
      roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_switch_10gbetxsnap_bram_oob_addr : out std_logic_vector(9 downto 0);
      roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_in : out std_logic_vector(31 downto 0);
      roachf_1024_bao_switch_10gbetxsnap_bram_oob_we : out std_logic;
      roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out : in std_logic_vector(31 downto 0);
      roachf_1024_bao_switch_gbe3_led_rx : in std_logic;
      roachf_1024_bao_switch_gbe3_led_tx : in std_logic;
      roachf_1024_bao_switch_gbe3_led_up : in std_logic;
      roachf_1024_bao_switch_gbe3_rx_bad_frame : in std_logic;
      roachf_1024_bao_switch_gbe3_rx_data : in std_logic_vector(63 downto 0);
      roachf_1024_bao_switch_gbe3_rx_end_of_frame : in std_logic;
      roachf_1024_bao_switch_gbe3_rx_overrun : in std_logic;
      roachf_1024_bao_switch_gbe3_rx_source_ip : in std_logic_vector(31 downto 0);
      roachf_1024_bao_switch_gbe3_rx_source_port : in std_logic_vector(15 downto 0);
      roachf_1024_bao_switch_gbe3_rx_valid : in std_logic;
      roachf_1024_bao_switch_gbe3_tx_afull : in std_logic;
      roachf_1024_bao_switch_gbe3_tx_overflow : in std_logic;
      roachf_1024_bao_switch_gbe3_rst : out std_logic;
      roachf_1024_bao_switch_gbe3_rx_ack : out std_logic;
      roachf_1024_bao_switch_gbe3_rx_overrun_ack : out std_logic;
      roachf_1024_bao_switch_gbe3_tx_data : out std_logic_vector(63 downto 0);
      roachf_1024_bao_switch_gbe3_tx_dest_ip : out std_logic_vector(31 downto 0);
      roachf_1024_bao_switch_gbe3_tx_dest_port : out std_logic_vector(15 downto 0);
      roachf_1024_bao_switch_gbe3_tx_end_of_frame : out std_logic;
      roachf_1024_bao_switch_gbe3_tx_valid : out std_logic;
      roachf_1024_bao_transpose_qdr_reorder_qdr_ack : in std_logic;
      roachf_1024_bao_transpose_qdr_reorder_qdr_cal_fail : in std_logic;
      roachf_1024_bao_transpose_qdr_reorder_qdr_data_out : in std_logic_vector(35 downto 0);
      roachf_1024_bao_transpose_qdr_reorder_qdr_phy_ready : in std_logic;
      roachf_1024_bao_transpose_qdr_reorder_qdr_address : out std_logic_vector(31 downto 0);
      roachf_1024_bao_transpose_qdr_reorder_qdr_be : out std_logic_vector(3 downto 0);
      roachf_1024_bao_transpose_qdr_reorder_qdr_data_in : out std_logic_vector(35 downto 0);
      roachf_1024_bao_transpose_qdr_reorder_qdr_rd_en : out std_logic;
      roachf_1024_bao_transpose_qdr_reorder_qdr_wr_en : out std_logic;
      roachf_1024_bao_transpose_qdr_reorder1_qdr_ack : in std_logic;
      roachf_1024_bao_transpose_qdr_reorder1_qdr_cal_fail : in std_logic;
      roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out : in std_logic_vector(35 downto 0);
      roachf_1024_bao_transpose_qdr_reorder1_qdr_phy_ready : in std_logic;
      roachf_1024_bao_transpose_qdr_reorder1_qdr_address : out std_logic_vector(31 downto 0);
      roachf_1024_bao_transpose_qdr_reorder1_qdr_be : out std_logic_vector(3 downto 0);
      roachf_1024_bao_transpose_qdr_reorder1_qdr_data_in : out std_logic_vector(35 downto 0);
      roachf_1024_bao_transpose_qdr_reorder1_qdr_rd_en : out std_logic;
      roachf_1024_bao_transpose_qdr_reorder1_qdr_wr_en : out std_logic
    );
  end component;

  component roachf_1024_bao_ant_base_wrapper is
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

  component roachf_1024_bao_feng_ctl_wrapper is
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

  component roachf_1024_bao_fft_shift_wrapper is
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

  component roachf_1024_bao_gbe_sw_port_wrapper is
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

  component roachf_1024_bao_gpu_ip_wrapper is
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

  component roachf_1024_bao_gpu_port_wrapper is
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

  component roachf_1024_bao_ip_base_wrapper is
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

  component roachf_1024_bao_my_ip_wrapper is
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

  component roachf_1024_bao_adc_s_adc_wrapper is
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

  component roachf_1024_bao_adc_s_adc1_wrapper is
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

  component roachf_1024_bao_eq_quant0_addr_wrapper is
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

  component roachf_1024_bao_eq_quant0_gain_wrapper is
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

  component roachf_1024_bao_eq_quant1_addr_wrapper is
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

  component roachf_1024_bao_eq_quant1_gain_wrapper is
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

  component roachf_1024_bao_eq_quant2_addr_wrapper is
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

  component roachf_1024_bao_eq_quant2_gain_wrapper is
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

  component roachf_1024_bao_eq_quant3_addr_wrapper is
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

  component roachf_1024_bao_eq_quant3_gain_wrapper is
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

  component roachf_1024_bao_leds_led1_arm_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component roachf_1024_bao_leds_led2_sync_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component roachf_1024_bao_leds_led4_eq_clip_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component roachf_1024_bao_delay_values_wrapper is
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

  component roachf_1024_bao_gpu_gbe2_wrapper is
    port (
      clk : in std_logic;
      rst : in std_logic;
      tx_valid : in std_logic;
      tx_afull : out std_logic;
      tx_overflow : out std_logic;
      tx_end_of_frame : in std_logic;
      tx_data : in std_logic_vector(63 downto 0);
      tx_dest_ip : in std_logic_vector(31 downto 0);
      tx_dest_port : in std_logic_vector(15 downto 0);
      rx_valid : out std_logic;
      rx_end_of_frame : out std_logic;
      rx_data : out std_logic_vector(63 downto 0);
      rx_source_ip : out std_logic_vector(31 downto 0);
      rx_source_port : out std_logic_vector(15 downto 0);
      rx_bad_frame : out std_logic;
      rx_overrun : out std_logic;
      rx_overrun_ack : in std_logic;
      rx_ack : in std_logic;
      led_up : out std_logic;
      led_rx : out std_logic;
      led_tx : out std_logic;
      xaui_clk : in std_logic;
      xgmii_txd : out std_logic_vector(63 downto 0);
      xgmii_txc : out std_logic_vector(7 downto 0);
      xgmii_rxd : in std_logic_vector(63 downto 0);
      xgmii_rxc : in std_logic_vector(7 downto 0);
      xaui_reset : in std_logic;
      xaui_status : in std_logic_vector(7 downto 0);
      mgt_rxeqmix : out std_logic_vector(1 downto 0);
      mgt_rxeqpole : out std_logic_vector(3 downto 0);
      mgt_txpreemphasis : out std_logic_vector(2 downto 0);
      mgt_txdiffctrl : out std_logic_vector(2 downto 0);
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
      OPB_seqAddr : in std_logic
    );
  end component;

  component xaui_phy_2_wrapper is
    port (
      reset : in std_logic;
      mgt_clk : in std_logic;
      mgt_txdata : out std_logic_vector(63 downto 0);
      mgt_txcharisk : out std_logic_vector(7 downto 0);
      mgt_rxdata : in std_logic_vector(63 downto 0);
      mgt_rxcharisk : in std_logic_vector(7 downto 0);
      mgt_enable_align : out std_logic_vector(3 downto 0);
      mgt_code_valid : in std_logic_vector(7 downto 0);
      mgt_code_comma : in std_logic_vector(7 downto 0);
      mgt_rxlock : in std_logic_vector(3 downto 0);
      mgt_rxbufferr : in std_logic_vector(3 downto 0);
      mgt_loopback : out std_logic;
      mgt_syncok : in std_logic_vector(3 downto 0);
      mgt_en_chan_sync : out std_logic;
      mgt_powerdown : out std_logic;
      mgt_rx_reset : out std_logic_vector(3 downto 0);
      mgt_tx_reset : out std_logic_vector(3 downto 0);
      xgmii_txd : in std_logic_vector(63 downto 0);
      xgmii_txc : in std_logic_vector(7 downto 0);
      xgmii_rxd : out std_logic_vector(63 downto 0);
      xgmii_rxc : out std_logic_vector(7 downto 0);
      xaui_reset : in std_logic;
      xaui_status : out std_logic_vector(7 downto 0)
    );
  end component;

  component roachf_1024_bao_input_selector_wrapper is
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

  component roachf_1024_bao_loopback_loop_cnt_wrapper is
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

  component roachf_1024_bao_loopback_loop_err_cnt_wrapper is
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

  component roachf_1024_bao_loopback_loopback_mux_gbe_over_wrapper is
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

  component roachf_1024_bao_loopback_loopback_mux_gbe_und_wrapper is
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

  component roachf_1024_bao_loopback_loopback_mux_lb_over_wrapper is
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

  component roachf_1024_bao_loopback_loopback_mux_lb_und_wrapper is
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

  component roachf_1024_bao_loopback_loopback_fifo_lb_err_cnt_wrapper is
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

  component roachf_1024_bao_loopback_rx_cnt_wrapper is
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

  component roachf_1024_bao_loopback_rx_err_cnt_wrapper is
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

  component roachf_1024_bao_loopback_rx_pkt_fifo_santa_2big_wrapper is
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

  component roachf_1024_bao_loopback_rx_pkt_fifo_santa_2small_wrapper is
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

  component roachf_1024_bao_seed_data_wrapper is
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

  component roachf_1024_bao_status_gbe_gpu_wrapper is
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

  component roachf_1024_bao_status_gbe_sw_wrapper is
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

  component roachf_1024_bao_status_swgbe_bframe_wrapper is
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

  component roachf_1024_bao_status_swgbe_oflow_wrapper is
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

  component roachf_1024_bao_status_swgbe_orun_wrapper is
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

  component roachf_1024_bao_switch_10gbetxsnap_addr_wrapper is
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

  component roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramif_wrapper is
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

  component roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_wrapper is
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

  component roachf_1024_bao_switch_10gbetxsnap_bram_lsb_wrapper is
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

  component roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramif_wrapper is
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

  component roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_wrapper is
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

  component roachf_1024_bao_switch_10gbetxsnap_bram_msb_wrapper is
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

  component roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramif_wrapper is
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

  component roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_wrapper is
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

  component roachf_1024_bao_switch_10gbetxsnap_bram_oob_wrapper is
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

  component roachf_1024_bao_switch_10gbetxsnap_ctrl_wrapper is
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

  component roachf_1024_bao_switch_gbe3_wrapper is
    port (
      clk : in std_logic;
      rst : in std_logic;
      tx_valid : in std_logic;
      tx_afull : out std_logic;
      tx_overflow : out std_logic;
      tx_end_of_frame : in std_logic;
      tx_data : in std_logic_vector(63 downto 0);
      tx_dest_ip : in std_logic_vector(31 downto 0);
      tx_dest_port : in std_logic_vector(15 downto 0);
      rx_valid : out std_logic;
      rx_end_of_frame : out std_logic;
      rx_data : out std_logic_vector(63 downto 0);
      rx_source_ip : out std_logic_vector(31 downto 0);
      rx_source_port : out std_logic_vector(15 downto 0);
      rx_bad_frame : out std_logic;
      rx_overrun : out std_logic;
      rx_overrun_ack : in std_logic;
      rx_ack : in std_logic;
      led_up : out std_logic;
      led_rx : out std_logic;
      led_tx : out std_logic;
      xaui_clk : in std_logic;
      xgmii_txd : out std_logic_vector(63 downto 0);
      xgmii_txc : out std_logic_vector(7 downto 0);
      xgmii_rxd : in std_logic_vector(63 downto 0);
      xgmii_rxc : in std_logic_vector(7 downto 0);
      xaui_reset : in std_logic;
      xaui_status : in std_logic_vector(7 downto 0);
      mgt_rxeqmix : out std_logic_vector(1 downto 0);
      mgt_rxeqpole : out std_logic_vector(3 downto 0);
      mgt_txpreemphasis : out std_logic_vector(2 downto 0);
      mgt_txdiffctrl : out std_logic_vector(2 downto 0);
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
      OPB_seqAddr : in std_logic
    );
  end component;

  component xaui_phy_3_wrapper is
    port (
      reset : in std_logic;
      mgt_clk : in std_logic;
      mgt_txdata : out std_logic_vector(63 downto 0);
      mgt_txcharisk : out std_logic_vector(7 downto 0);
      mgt_rxdata : in std_logic_vector(63 downto 0);
      mgt_rxcharisk : in std_logic_vector(7 downto 0);
      mgt_enable_align : out std_logic_vector(3 downto 0);
      mgt_code_valid : in std_logic_vector(7 downto 0);
      mgt_code_comma : in std_logic_vector(7 downto 0);
      mgt_rxlock : in std_logic_vector(3 downto 0);
      mgt_rxbufferr : in std_logic_vector(3 downto 0);
      mgt_loopback : out std_logic;
      mgt_syncok : in std_logic_vector(3 downto 0);
      mgt_en_chan_sync : out std_logic;
      mgt_powerdown : out std_logic;
      mgt_rx_reset : out std_logic_vector(3 downto 0);
      mgt_tx_reset : out std_logic_vector(3 downto 0);
      xgmii_txd : in std_logic_vector(63 downto 0);
      xgmii_txc : in std_logic_vector(7 downto 0);
      xgmii_rxd : out std_logic_vector(63 downto 0);
      xgmii_rxc : out std_logic_vector(7 downto 0);
      xaui_reset : in std_logic;
      xaui_status : out std_logic_vector(7 downto 0)
    );
  end component;

  component qdr0_controller_wrapper is
    port (
      clk0 : in std_logic;
      clk180 : in std_logic;
      clk270 : in std_logic;
      div_clk : in std_logic;
      reset : in std_logic;
      qdr_k_n : out std_logic;
      qdr_k : out std_logic;
      qdr_d : out std_logic_vector(17 downto 0);
      qdr_bw_n : out std_logic_vector(1 downto 0);
      qdr_sa : out std_logic_vector(21 downto 0);
      qdr_w_n : out std_logic;
      qdr_r_n : out std_logic;
      qdr_q : in std_logic_vector(17 downto 0);
      qdr_cq_n : in std_logic;
      qdr_cq : in std_logic;
      qdr_qvld : in std_logic;
      qdr_dll_off_n : out std_logic;
      phy_rdy : out std_logic;
      cal_fail : out std_logic;
      usr_addr : in std_logic_vector(21 downto 0);
      usr_wr_strb : in std_logic;
      usr_wr_data : in std_logic_vector(35 downto 0);
      usr_wr_be : in std_logic_vector(3 downto 0);
      usr_rd_strb : in std_logic;
      usr_rd_data : out std_logic_vector(35 downto 0);
      usr_rd_dvld : out std_logic
    );
  end component;

  component qdr0_sniffer_wrapper is
    port (
      OPB_Clk_config : in std_logic;
      OPB_Rst_config : in std_logic;
      Sl_DBus_config : out std_logic_vector(0 to 31);
      Sl_errAck_config : out std_logic;
      Sl_retry_config : out std_logic;
      Sl_toutSup_config : out std_logic;
      Sl_xferAck_config : out std_logic;
      OPB_ABus_config : in std_logic_vector(0 to 31);
      OPB_BE_config : in std_logic_vector(0 to 3);
      OPB_DBus_config : in std_logic_vector(0 to 31);
      OPB_RNW_config : in std_logic;
      OPB_select_config : in std_logic;
      OPB_seqAddr_config : in std_logic;
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
      qdr_clk : in std_logic;
      master_addr : out std_logic_vector(21 downto 0);
      master_wr_strb : out std_logic;
      master_wr_data : out std_logic_vector(35 downto 0);
      master_wr_be : out std_logic_vector(3 downto 0);
      master_rd_strb : out std_logic;
      master_rd_data : in std_logic_vector(35 downto 0);
      master_rd_dvld : in std_logic;
      slave_addr : in std_logic_vector(31 downto 0);
      slave_wr_strb : in std_logic;
      slave_wr_data : in std_logic_vector(35 downto 0);
      slave_wr_be : in std_logic_vector(3 downto 0);
      slave_rd_strb : in std_logic;
      slave_rd_data : out std_logic_vector(35 downto 0);
      slave_rd_dvld : out std_logic;
      slave_ack : out std_logic;
      phy_rdy : in std_logic;
      cal_fail : in std_logic;
      qdr_reset : out std_logic
    );
  end component;

  component qdr1_controller_wrapper is
    port (
      clk0 : in std_logic;
      clk180 : in std_logic;
      clk270 : in std_logic;
      div_clk : in std_logic;
      reset : in std_logic;
      qdr_k_n : out std_logic;
      qdr_k : out std_logic;
      qdr_d : out std_logic_vector(17 downto 0);
      qdr_bw_n : out std_logic_vector(1 downto 0);
      qdr_sa : out std_logic_vector(21 downto 0);
      qdr_w_n : out std_logic;
      qdr_r_n : out std_logic;
      qdr_q : in std_logic_vector(17 downto 0);
      qdr_cq_n : in std_logic;
      qdr_cq : in std_logic;
      qdr_qvld : in std_logic;
      qdr_dll_off_n : out std_logic;
      phy_rdy : out std_logic;
      cal_fail : out std_logic;
      usr_addr : in std_logic_vector(21 downto 0);
      usr_wr_strb : in std_logic;
      usr_wr_data : in std_logic_vector(35 downto 0);
      usr_wr_be : in std_logic_vector(3 downto 0);
      usr_rd_strb : in std_logic;
      usr_rd_data : out std_logic_vector(35 downto 0);
      usr_rd_dvld : out std_logic
    );
  end component;

  component qdr1_sniffer_wrapper is
    port (
      OPB_Clk_config : in std_logic;
      OPB_Rst_config : in std_logic;
      Sl_DBus_config : out std_logic_vector(0 to 31);
      Sl_errAck_config : out std_logic;
      Sl_retry_config : out std_logic;
      Sl_toutSup_config : out std_logic;
      Sl_xferAck_config : out std_logic;
      OPB_ABus_config : in std_logic_vector(0 to 31);
      OPB_BE_config : in std_logic_vector(0 to 3);
      OPB_DBus_config : in std_logic_vector(0 to 31);
      OPB_RNW_config : in std_logic;
      OPB_select_config : in std_logic;
      OPB_seqAddr_config : in std_logic;
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
      qdr_clk : in std_logic;
      master_addr : out std_logic_vector(21 downto 0);
      master_wr_strb : out std_logic;
      master_wr_data : out std_logic_vector(35 downto 0);
      master_wr_be : out std_logic_vector(3 downto 0);
      master_rd_strb : out std_logic;
      master_rd_data : in std_logic_vector(35 downto 0);
      master_rd_dvld : in std_logic;
      slave_addr : in std_logic_vector(31 downto 0);
      slave_wr_strb : in std_logic;
      slave_wr_data : in std_logic_vector(35 downto 0);
      slave_wr_be : in std_logic_vector(3 downto 0);
      slave_rd_strb : in std_logic;
      slave_rd_data : out std_logic_vector(35 downto 0);
      slave_rd_dvld : out std_logic;
      slave_ack : out std_logic;
      phy_rdy : in std_logic;
      cal_fail : in std_logic;
      qdr_reset : out std_logic
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
      Sl_beAck : in std_logic_vector(0 to 11);
      Sl_DBus : in std_logic_vector(0 to 383);
      Sl_DBusEn : in std_logic_vector(0 to 11);
      Sl_DBusEn32_63 : in std_logic_vector(0 to 11);
      Sl_errAck : in std_logic_vector(0 to 11);
      Sl_dwAck : in std_logic_vector(0 to 11);
      Sl_fwAck : in std_logic_vector(0 to 11);
      Sl_hwAck : in std_logic_vector(0 to 11);
      Sl_retry : in std_logic_vector(0 to 11);
      Sl_toutSup : in std_logic_vector(0 to 11);
      Sl_xferAck : in std_logic_vector(0 to 11);
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
  signal adc0_clk180 : std_logic;
  signal adc0_clk270 : std_logic;
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
  signal mgt_clk_1 : std_logic;
  signal net_gnd0 : std_logic;
  signal net_gnd1 : std_logic_vector(0 to 0);
  signal net_gnd2 : std_logic_vector(1 downto 0);
  signal net_gnd3 : std_logic_vector(2 downto 0);
  signal net_gnd4 : std_logic_vector(3 downto 0);
  signal net_gnd8 : std_logic_vector(7 downto 0);
  signal net_gnd12 : std_logic_vector(0 to 11);
  signal net_gnd37 : std_logic_vector(0 to 36);
  signal net_gnd64 : std_logic_vector(63 downto 0);
  signal net_vcc1 : std_logic_vector(0 to 0);
  signal net_vcc12 : std_logic_vector(0 to 11);
  signal net_vcc37 : std_logic_vector(0 to 36);
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
  signal opb0_Sl_DBus : std_logic_vector(0 to 1183);
  signal opb0_Sl_errAck : std_logic_vector(0 to 36);
  signal opb0_Sl_retry : std_logic_vector(0 to 36);
  signal opb0_Sl_toutSup : std_logic_vector(0 to 36);
  signal opb0_Sl_xferAck : std_logic_vector(0 to 36);
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
  signal opb1_Sl_DBus : std_logic_vector(0 to 383);
  signal opb1_Sl_errAck : std_logic_vector(0 to 11);
  signal opb1_Sl_retry : std_logic_vector(0 to 11);
  signal opb1_Sl_toutSup : std_logic_vector(0 to 11);
  signal opb1_Sl_xferAck : std_logic_vector(0 to 11);
  signal pgassign1 : std_logic;
  signal pgassign2 : std_logic_vector(15 downto 0);
  signal roachf_1024_bao_ADC_s_adc1_user_data_valid : std_logic;
  signal roachf_1024_bao_ADC_s_adc1_user_datai0 : std_logic_vector(7 downto 0);
  signal roachf_1024_bao_ADC_s_adc1_user_datai1 : std_logic_vector(7 downto 0);
  signal roachf_1024_bao_ADC_s_adc1_user_datai2 : std_logic_vector(7 downto 0);
  signal roachf_1024_bao_ADC_s_adc1_user_datai3 : std_logic_vector(7 downto 0);
  signal roachf_1024_bao_ADC_s_adc1_user_dataq0 : std_logic_vector(7 downto 0);
  signal roachf_1024_bao_ADC_s_adc1_user_dataq1 : std_logic_vector(7 downto 0);
  signal roachf_1024_bao_ADC_s_adc1_user_dataq2 : std_logic_vector(7 downto 0);
  signal roachf_1024_bao_ADC_s_adc1_user_dataq3 : std_logic_vector(7 downto 0);
  signal roachf_1024_bao_ADC_s_adc1_user_outofrangei0 : std_logic;
  signal roachf_1024_bao_ADC_s_adc1_user_outofrangei1 : std_logic;
  signal roachf_1024_bao_ADC_s_adc1_user_outofrangeq0 : std_logic;
  signal roachf_1024_bao_ADC_s_adc1_user_outofrangeq1 : std_logic;
  signal roachf_1024_bao_ADC_s_adc1_user_sync0 : std_logic;
  signal roachf_1024_bao_ADC_s_adc1_user_sync1 : std_logic;
  signal roachf_1024_bao_ADC_s_adc1_user_sync2 : std_logic;
  signal roachf_1024_bao_ADC_s_adc1_user_sync3 : std_logic;
  signal roachf_1024_bao_ADC_s_adc_user_data_valid : std_logic;
  signal roachf_1024_bao_ADC_s_adc_user_datai0 : std_logic_vector(7 downto 0);
  signal roachf_1024_bao_ADC_s_adc_user_datai1 : std_logic_vector(7 downto 0);
  signal roachf_1024_bao_ADC_s_adc_user_datai2 : std_logic_vector(7 downto 0);
  signal roachf_1024_bao_ADC_s_adc_user_datai3 : std_logic_vector(7 downto 0);
  signal roachf_1024_bao_ADC_s_adc_user_dataq0 : std_logic_vector(7 downto 0);
  signal roachf_1024_bao_ADC_s_adc_user_dataq1 : std_logic_vector(7 downto 0);
  signal roachf_1024_bao_ADC_s_adc_user_dataq2 : std_logic_vector(7 downto 0);
  signal roachf_1024_bao_ADC_s_adc_user_dataq3 : std_logic_vector(7 downto 0);
  signal roachf_1024_bao_ADC_s_adc_user_outofrangei0 : std_logic;
  signal roachf_1024_bao_ADC_s_adc_user_outofrangei1 : std_logic;
  signal roachf_1024_bao_ADC_s_adc_user_outofrangeq0 : std_logic;
  signal roachf_1024_bao_ADC_s_adc_user_outofrangeq1 : std_logic;
  signal roachf_1024_bao_ADC_s_adc_user_sync0 : std_logic;
  signal roachf_1024_bao_ADC_s_adc_user_sync1 : std_logic;
  signal roachf_1024_bao_ADC_s_adc_user_sync2 : std_logic;
  signal roachf_1024_bao_ADC_s_adc_user_sync3 : std_logic;
  signal roachf_1024_bao_EQ_quant0_addr_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_EQ_quant0_gain_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_EQ_quant1_addr_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_EQ_quant1_gain_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_EQ_quant2_addr_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_EQ_quant2_gain_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_EQ_quant3_addr_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_EQ_quant3_gain_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_LEDs_led1_arm_gateway : std_logic_vector(0 to 0);
  signal roachf_1024_bao_LEDs_led2_sync_gateway : std_logic_vector(0 to 0);
  signal roachf_1024_bao_LEDs_led4_eq_clip_gateway : std_logic_vector(0 to 0);
  signal roachf_1024_bao_ant_base_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_delay_values_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_feng_ctl_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_fft_shift_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_gbe_sw_port_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_gpu_gbe2_led_rx : std_logic;
  signal roachf_1024_bao_gpu_gbe2_led_tx : std_logic;
  signal roachf_1024_bao_gpu_gbe2_led_up : std_logic;
  signal roachf_1024_bao_gpu_gbe2_rst : std_logic;
  signal roachf_1024_bao_gpu_gbe2_rx_ack : std_logic;
  signal roachf_1024_bao_gpu_gbe2_rx_bad_frame : std_logic;
  signal roachf_1024_bao_gpu_gbe2_rx_data : std_logic_vector(63 downto 0);
  signal roachf_1024_bao_gpu_gbe2_rx_end_of_frame : std_logic;
  signal roachf_1024_bao_gpu_gbe2_rx_overrun : std_logic;
  signal roachf_1024_bao_gpu_gbe2_rx_overrun_ack : std_logic;
  signal roachf_1024_bao_gpu_gbe2_rx_source_ip : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_gpu_gbe2_rx_source_port : std_logic_vector(15 downto 0);
  signal roachf_1024_bao_gpu_gbe2_rx_valid : std_logic;
  signal roachf_1024_bao_gpu_gbe2_tx_afull : std_logic;
  signal roachf_1024_bao_gpu_gbe2_tx_data : std_logic_vector(63 downto 0);
  signal roachf_1024_bao_gpu_gbe2_tx_dest_ip : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_gpu_gbe2_tx_dest_port : std_logic_vector(15 downto 0);
  signal roachf_1024_bao_gpu_gbe2_tx_end_of_frame : std_logic;
  signal roachf_1024_bao_gpu_gbe2_tx_overflow : std_logic;
  signal roachf_1024_bao_gpu_gbe2_tx_valid : std_logic;
  signal roachf_1024_bao_gpu_ip_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_gpu_port_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_input_selector_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_ip_base_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_loopback_loop_cnt_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_loopback_loop_err_cnt_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_loopback_loopback_fifo_lb_err_cnt_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_loopback_loopback_mux_gbe_over_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_loopback_loopback_mux_gbe_und_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_loopback_loopback_mux_lb_over_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_loopback_loopback_mux_lb_und_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_loopback_rx_cnt_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_loopback_rx_err_cnt_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2big_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2small_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_my_ip_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_seed_data_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_status_gbe_gpu_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_status_gbe_sw_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_status_swgbe_bframe_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_status_swgbe_oflow_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_status_swgbe_orun_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_addr_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_addr : std_logic_vector(9 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_in : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_porta_BRAM_Clk : std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_porta_BRAM_EN : std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_porta_BRAM_Rst : std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_portb_BRAM_Clk : std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_portb_BRAM_EN : std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_portb_BRAM_Rst : std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_we : std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_addr : std_logic_vector(9 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_in : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_porta_BRAM_Clk : std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_porta_BRAM_EN : std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_porta_BRAM_Rst : std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_portb_BRAM_Clk : std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_portb_BRAM_EN : std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_portb_BRAM_Rst : std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_we : std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_addr : std_logic_vector(9 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_in : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_porta_BRAM_Clk : std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_porta_BRAM_EN : std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_porta_BRAM_Rst : std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_portb_BRAM_Clk : std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_portb_BRAM_EN : std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_portb_BRAM_Rst : std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_we : std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_gbe3_led_rx : std_logic;
  signal roachf_1024_bao_switch_gbe3_led_tx : std_logic;
  signal roachf_1024_bao_switch_gbe3_led_up : std_logic;
  signal roachf_1024_bao_switch_gbe3_rst : std_logic;
  signal roachf_1024_bao_switch_gbe3_rx_ack : std_logic;
  signal roachf_1024_bao_switch_gbe3_rx_bad_frame : std_logic;
  signal roachf_1024_bao_switch_gbe3_rx_data : std_logic_vector(63 downto 0);
  signal roachf_1024_bao_switch_gbe3_rx_end_of_frame : std_logic;
  signal roachf_1024_bao_switch_gbe3_rx_overrun : std_logic;
  signal roachf_1024_bao_switch_gbe3_rx_overrun_ack : std_logic;
  signal roachf_1024_bao_switch_gbe3_rx_source_ip : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_gbe3_rx_source_port : std_logic_vector(15 downto 0);
  signal roachf_1024_bao_switch_gbe3_rx_valid : std_logic;
  signal roachf_1024_bao_switch_gbe3_tx_afull : std_logic;
  signal roachf_1024_bao_switch_gbe3_tx_data : std_logic_vector(63 downto 0);
  signal roachf_1024_bao_switch_gbe3_tx_dest_ip : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_gbe3_tx_dest_port : std_logic_vector(15 downto 0);
  signal roachf_1024_bao_switch_gbe3_tx_end_of_frame : std_logic;
  signal roachf_1024_bao_switch_gbe3_tx_overflow : std_logic;
  signal roachf_1024_bao_switch_gbe3_tx_valid : std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_ack : std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_address : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_be : std_logic_vector(3 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_cal_fail : std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_data_in : std_logic_vector(35 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out : std_logic_vector(35 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_phy_ready : std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_qdr_addr : std_logic_vector(21 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_qdr_rd_data : std_logic_vector(35 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_qdr_rd_dvld : std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_qdr_rd_strb : std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_qdr_wr_be : std_logic_vector(3 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_qdr_wr_data : std_logic_vector(35 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_qdr_wr_strb : std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_rd_en : std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_reset : std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_wr_en : std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_ack : std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_address : std_logic_vector(31 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_be : std_logic_vector(3 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_cal_fail : std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_data_in : std_logic_vector(35 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_data_out : std_logic_vector(35 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_phy_ready : std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_qdr_addr : std_logic_vector(21 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_qdr_rd_data : std_logic_vector(35 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_qdr_rd_dvld : std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_qdr_rd_strb : std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_qdr_wr_be : std_logic_vector(3 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_qdr_wr_data : std_logic_vector(35 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_qdr_wr_strb : std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_rd_en : std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_reset : std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_wr_en : std_logic;
  signal sys_reset : std_logic;
  signal xaui0_mgt_rx_n : std_logic_vector(3 downto 0);
  signal xaui0_mgt_rx_p : std_logic_vector(3 downto 0);
  signal xaui0_mgt_tx_n : std_logic_vector(3 downto 0);
  signal xaui0_mgt_tx_p : std_logic_vector(3 downto 0);
  signal xaui0_ref_clk_n : std_logic;
  signal xaui0_ref_clk_p : std_logic;
  signal xaui1_mgt_rx_n : std_logic_vector(3 downto 0);
  signal xaui1_mgt_rx_p : std_logic_vector(3 downto 0);
  signal xaui1_mgt_tx_n : std_logic_vector(3 downto 0);
  signal xaui1_mgt_tx_p : std_logic_vector(3 downto 0);
  signal xaui2_mgt_rx_n : std_logic_vector(3 downto 0);
  signal xaui2_mgt_rx_p : std_logic_vector(3 downto 0);
  signal xaui2_mgt_tx_n : std_logic_vector(3 downto 0);
  signal xaui2_mgt_tx_p : std_logic_vector(3 downto 0);
  signal xaui2_ref_clk_n : std_logic;
  signal xaui2_ref_clk_p : std_logic;
  signal xaui3_mgt_rx_n : std_logic_vector(3 downto 0);
  signal xaui3_mgt_rx_p : std_logic_vector(3 downto 0);
  signal xaui3_mgt_tx_n : std_logic_vector(3 downto 0);
  signal xaui3_mgt_tx_p : std_logic_vector(3 downto 0);
  signal xaui_conf2_mgt_rxeqmix : std_logic_vector(1 downto 0);
  signal xaui_conf2_mgt_rxeqpole : std_logic_vector(3 downto 0);
  signal xaui_conf2_mgt_txdiffctrl : std_logic_vector(2 downto 0);
  signal xaui_conf2_mgt_txpreemphasis : std_logic_vector(2 downto 0);
  signal xaui_conf3_mgt_rxeqmix : std_logic_vector(1 downto 0);
  signal xaui_conf3_mgt_rxeqpole : std_logic_vector(3 downto 0);
  signal xaui_conf3_mgt_txdiffctrl : std_logic_vector(2 downto 0);
  signal xaui_conf3_mgt_txpreemphasis : std_logic_vector(2 downto 0);
  signal xaui_sys2_mgt_code_comma : std_logic_vector(7 downto 0);
  signal xaui_sys2_mgt_code_valid : std_logic_vector(7 downto 0);
  signal xaui_sys2_mgt_en_chan_sync : std_logic;
  signal xaui_sys2_mgt_enable_align : std_logic_vector(3 downto 0);
  signal xaui_sys2_mgt_loopback : std_logic;
  signal xaui_sys2_mgt_powerdown : std_logic;
  signal xaui_sys2_mgt_rx_charisk : std_logic_vector(7 downto 0);
  signal xaui_sys2_mgt_rx_data : std_logic_vector(63 downto 0);
  signal xaui_sys2_mgt_rx_reset : std_logic_vector(3 downto 0);
  signal xaui_sys2_mgt_rxbufferr : std_logic_vector(3 downto 0);
  signal xaui_sys2_mgt_rxlock : std_logic_vector(3 downto 0);
  signal xaui_sys2_mgt_syncok : std_logic_vector(3 downto 0);
  signal xaui_sys2_mgt_tx_charisk : std_logic_vector(7 downto 0);
  signal xaui_sys2_mgt_tx_data : std_logic_vector(63 downto 0);
  signal xaui_sys2_mgt_tx_reset : std_logic_vector(3 downto 0);
  signal xaui_sys3_mgt_code_comma : std_logic_vector(7 downto 0);
  signal xaui_sys3_mgt_code_valid : std_logic_vector(7 downto 0);
  signal xaui_sys3_mgt_en_chan_sync : std_logic;
  signal xaui_sys3_mgt_enable_align : std_logic_vector(3 downto 0);
  signal xaui_sys3_mgt_loopback : std_logic;
  signal xaui_sys3_mgt_powerdown : std_logic;
  signal xaui_sys3_mgt_rx_charisk : std_logic_vector(7 downto 0);
  signal xaui_sys3_mgt_rx_data : std_logic_vector(63 downto 0);
  signal xaui_sys3_mgt_rx_reset : std_logic_vector(3 downto 0);
  signal xaui_sys3_mgt_rxbufferr : std_logic_vector(3 downto 0);
  signal xaui_sys3_mgt_rxlock : std_logic_vector(3 downto 0);
  signal xaui_sys3_mgt_syncok : std_logic_vector(3 downto 0);
  signal xaui_sys3_mgt_tx_charisk : std_logic_vector(7 downto 0);
  signal xaui_sys3_mgt_tx_data : std_logic_vector(63 downto 0);
  signal xaui_sys3_mgt_tx_reset : std_logic_vector(3 downto 0);
  signal xgmii2_xaui_status : std_logic_vector(7 downto 0);
  signal xgmii2_xgmii_rxc : std_logic_vector(7 downto 0);
  signal xgmii2_xgmii_rxd : std_logic_vector(63 downto 0);
  signal xgmii2_xgmii_txc : std_logic_vector(7 downto 0);
  signal xgmii2_xgmii_txd : std_logic_vector(63 downto 0);
  signal xgmii3_xaui_status : std_logic_vector(7 downto 0);
  signal xgmii3_xgmii_rxc : std_logic_vector(7 downto 0);
  signal xgmii3_xgmii_rxd : std_logic_vector(63 downto 0);
  signal xgmii3_xgmii_txc : std_logic_vector(7 downto 0);
  signal xgmii3_xgmii_txd : std_logic_vector(63 downto 0);

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of infrastructure_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of reset_block_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of opb0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of epb_opb_bridge_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of epb_infrastructure_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of sys_block_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of xaui_infrastructure_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of opb_adccontroller_0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_xsg_core_config_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_ant_base_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_feng_ctl_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_fft_shift_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_gbe_sw_port_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_gpu_ip_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_gpu_port_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_ip_base_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_my_ip_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_adc_s_adc_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_adc_s_adc1_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_eq_quant0_addr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_eq_quant0_gain_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_eq_quant1_addr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_eq_quant1_gain_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_eq_quant2_addr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_eq_quant2_gain_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_eq_quant3_addr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_eq_quant3_gain_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_leds_led1_arm_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_leds_led2_sync_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_leds_led4_eq_clip_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_delay_values_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_gpu_gbe2_wrapper : component is "user_black_box";
  attribute BOX_TYPE of xaui_phy_2_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_input_selector_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_loopback_loop_cnt_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_loopback_loop_err_cnt_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_loopback_loopback_mux_gbe_over_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_loopback_loopback_mux_gbe_und_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_loopback_loopback_mux_lb_over_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_loopback_loopback_mux_lb_und_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_loopback_loopback_fifo_lb_err_cnt_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_loopback_rx_cnt_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_loopback_rx_err_cnt_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_loopback_rx_pkt_fifo_santa_2big_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_loopback_rx_pkt_fifo_santa_2small_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_seed_data_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_status_gbe_gpu_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_status_gbe_sw_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_status_swgbe_bframe_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_status_swgbe_oflow_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_status_swgbe_orun_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_switch_10gbetxsnap_addr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_switch_10gbetxsnap_bram_lsb_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_switch_10gbetxsnap_bram_msb_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_switch_10gbetxsnap_bram_oob_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_switch_10gbetxsnap_ctrl_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_1024_bao_switch_gbe3_wrapper : component is "user_black_box";
  attribute BOX_TYPE of xaui_phy_3_wrapper : component is "user_black_box";
  attribute BOX_TYPE of qdr0_controller_wrapper : component is "user_black_box";
  attribute BOX_TYPE of qdr0_sniffer_wrapper : component is "user_black_box";
  attribute BOX_TYPE of qdr1_controller_wrapper : component is "user_black_box";
  attribute BOX_TYPE of qdr1_sniffer_wrapper : component is "user_black_box";
  attribute BOX_TYPE of opb1_wrapper : component is "user_black_box";
  attribute BOX_TYPE of opb2opb_bridge_opb1_wrapper : component is "user_black_box";

begin

  -- Internal assignments

  xaui2_ref_clk_n <= mgt_ref_clk_top_n;
  xaui2_ref_clk_p <= mgt_ref_clk_top_p;
  xaui0_ref_clk_n <= mgt_ref_clk_bottom_n;
  xaui0_ref_clk_p <= mgt_ref_clk_bottom_p;
  xaui3_mgt_rx_n <= mgt_rx_top_1_n;
  xaui3_mgt_rx_p <= mgt_rx_top_1_p;
  mgt_tx_top_1_n <= xaui3_mgt_tx_n;
  mgt_tx_top_1_p <= xaui3_mgt_tx_p;
  xaui2_mgt_rx_n <= mgt_rx_top_0_n;
  xaui2_mgt_rx_p <= mgt_rx_top_0_p;
  mgt_tx_top_0_n <= xaui2_mgt_tx_n;
  mgt_tx_top_0_p <= xaui2_mgt_tx_p;
  xaui1_mgt_rx_n <= mgt_rx_bottom_1_n;
  xaui1_mgt_rx_p <= mgt_rx_bottom_1_p;
  mgt_tx_bottom_1_n <= xaui1_mgt_tx_n;
  mgt_tx_bottom_1_p <= xaui1_mgt_tx_p;
  xaui0_mgt_rx_n <= mgt_rx_bottom_0_n;
  xaui0_mgt_rx_p <= mgt_rx_bottom_0_p;
  mgt_tx_bottom_0_n <= xaui0_mgt_tx_n;
  mgt_tx_bottom_0_p <= xaui0_mgt_tx_p;
  pgassign1 <= '0';
  pgassign2(15 downto 0) <= X"0000";
  net_gnd0 <= '0';
  net_gnd1(0 to 0) <= B"0";
  net_gnd12(0 to 11) <= B"000000000000";
  net_gnd2(1 downto 0) <= B"00";
  net_gnd3(2 downto 0) <= B"000";
  net_gnd37(0 to 36) <= B"0000000000000000000000000000000000000";
  net_gnd4(3 downto 0) <= B"0000";
  net_gnd64(63 downto 0) <= B"0000000000000000000000000000000000000000000000000000000000000000";
  net_gnd8(7 downto 0) <= B"00000000";
  net_vcc1(0 to 0) <= B"1";
  net_vcc12(0 to 11) <= B"111111111111";
  net_vcc37(0 to 36) <= B"1111111111111111111111111111111111111";

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
      Sl_beAck => net_gnd37,
      Sl_DBus => opb0_Sl_DBus,
      Sl_DBusEn => net_vcc37,
      Sl_DBusEn32_63 => net_vcc37,
      Sl_errAck => opb0_Sl_errAck,
      Sl_dwAck => net_gnd37,
      Sl_fwAck => net_gnd37,
      Sl_hwAck => net_gnd37,
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

  xaui_infrastructure_inst : xaui_infrastructure_inst_wrapper
    port map (
      mgt_refclk_t_n => xaui2_ref_clk_n,
      mgt_refclk_t_p => xaui2_ref_clk_p,
      mgt_refclk_b_n => xaui0_ref_clk_n,
      mgt_refclk_b_p => xaui0_ref_clk_p,
      mgt_rx_t1_n => xaui3_mgt_rx_n,
      mgt_rx_t1_p => xaui3_mgt_rx_p,
      mgt_tx_t1_n => xaui3_mgt_tx_n,
      mgt_tx_t1_p => xaui3_mgt_tx_p,
      mgt_rx_t0_n => xaui2_mgt_rx_n,
      mgt_rx_t0_p => xaui2_mgt_rx_p,
      mgt_tx_t0_n => xaui2_mgt_tx_n,
      mgt_tx_t0_p => xaui2_mgt_tx_p,
      mgt_rx_b1_n => xaui1_mgt_rx_n,
      mgt_rx_b1_p => xaui1_mgt_rx_p,
      mgt_tx_b1_n => xaui1_mgt_tx_n,
      mgt_tx_b1_p => xaui1_mgt_tx_p,
      mgt_rx_b0_n => xaui0_mgt_rx_n,
      mgt_rx_b0_p => xaui0_mgt_rx_p,
      mgt_tx_b0_n => xaui0_mgt_tx_n,
      mgt_tx_b0_p => xaui0_mgt_tx_p,
      reset => sys_reset,
      mgt_clk_1 => mgt_clk_1,
      mgt_clk_0 => open,
      mgt_tx_reset_3 => xaui_sys3_mgt_tx_reset,
      mgt_rx_reset_3 => xaui_sys3_mgt_rx_reset,
      mgt_rxdata_3 => xaui_sys3_mgt_rx_data,
      mgt_rxcharisk_3 => xaui_sys3_mgt_rx_charisk,
      mgt_txdata_3 => xaui_sys3_mgt_tx_data,
      mgt_txcharisk_3 => xaui_sys3_mgt_tx_charisk,
      mgt_code_comma_3 => xaui_sys3_mgt_code_comma,
      mgt_enchansync_3 => xaui_sys3_mgt_en_chan_sync,
      mgt_enable_align_3 => xaui_sys3_mgt_enable_align,
      mgt_loopback_3 => xaui_sys3_mgt_loopback,
      mgt_powerdown_3 => xaui_sys3_mgt_powerdown,
      mgt_rxlock_3 => xaui_sys3_mgt_rxlock,
      mgt_syncok_3 => xaui_sys3_mgt_syncok,
      mgt_codevalid_3 => xaui_sys3_mgt_code_valid,
      mgt_rxbufferr_3 => xaui_sys3_mgt_rxbufferr,
      mgt_rxeqmix_3 => xaui_conf3_mgt_rxeqmix,
      mgt_rxeqpole_3 => xaui_conf3_mgt_rxeqpole,
      mgt_txpreemphasis_3 => xaui_conf3_mgt_txpreemphasis,
      mgt_txdiffctrl_3 => xaui_conf3_mgt_txdiffctrl,
      mgt_tx_reset_2 => xaui_sys2_mgt_tx_reset,
      mgt_rx_reset_2 => xaui_sys2_mgt_rx_reset,
      mgt_rxdata_2 => xaui_sys2_mgt_rx_data,
      mgt_rxcharisk_2 => xaui_sys2_mgt_rx_charisk,
      mgt_txdata_2 => xaui_sys2_mgt_tx_data,
      mgt_txcharisk_2 => xaui_sys2_mgt_tx_charisk,
      mgt_code_comma_2 => xaui_sys2_mgt_code_comma,
      mgt_enchansync_2 => xaui_sys2_mgt_en_chan_sync,
      mgt_enable_align_2 => xaui_sys2_mgt_enable_align,
      mgt_loopback_2 => xaui_sys2_mgt_loopback,
      mgt_powerdown_2 => xaui_sys2_mgt_powerdown,
      mgt_rxlock_2 => xaui_sys2_mgt_rxlock,
      mgt_syncok_2 => xaui_sys2_mgt_syncok,
      mgt_codevalid_2 => xaui_sys2_mgt_code_valid,
      mgt_rxbufferr_2 => xaui_sys2_mgt_rxbufferr,
      mgt_rxeqmix_2 => xaui_conf2_mgt_rxeqmix,
      mgt_rxeqpole_2 => xaui_conf2_mgt_rxeqpole,
      mgt_txpreemphasis_2 => xaui_conf2_mgt_txpreemphasis,
      mgt_txdiffctrl_2 => xaui_conf2_mgt_txdiffctrl,
      mgt_tx_reset_1 => net_gnd4,
      mgt_rx_reset_1 => net_gnd4,
      mgt_rxdata_1 => open,
      mgt_rxcharisk_1 => open,
      mgt_txdata_1 => net_gnd64,
      mgt_txcharisk_1 => net_gnd8,
      mgt_code_comma_1 => open,
      mgt_enchansync_1 => net_gnd0,
      mgt_enable_align_1 => net_gnd4,
      mgt_loopback_1 => net_gnd0,
      mgt_powerdown_1 => net_gnd0,
      mgt_rxlock_1 => open,
      mgt_syncok_1 => open,
      mgt_codevalid_1 => open,
      mgt_rxbufferr_1 => open,
      mgt_rxeqmix_1 => net_gnd2,
      mgt_rxeqpole_1 => net_gnd4,
      mgt_txpreemphasis_1 => net_gnd3,
      mgt_txdiffctrl_1 => net_gnd3,
      mgt_tx_reset_0 => net_gnd4,
      mgt_rx_reset_0 => net_gnd4,
      mgt_rxdata_0 => open,
      mgt_rxcharisk_0 => open,
      mgt_txdata_0 => net_gnd64,
      mgt_txcharisk_0 => net_gnd8,
      mgt_code_comma_0 => open,
      mgt_enchansync_0 => net_gnd0,
      mgt_enable_align_0 => net_gnd4,
      mgt_loopback_0 => net_gnd0,
      mgt_powerdown_0 => net_gnd0,
      mgt_rxlock_0 => open,
      mgt_syncok_0 => open,
      mgt_codevalid_0 => open,
      mgt_rxbufferr_0 => open,
      mgt_rxeqmix_0 => net_gnd2,
      mgt_rxeqpole_0 => net_gnd4,
      mgt_txpreemphasis_0 => net_gnd3,
      mgt_txdiffctrl_0 => net_gnd3
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

  roachf_1024_bao_XSG_core_config : roachf_1024_bao_xsg_core_config_wrapper
    port map (
      clk => adc0_clk,
      roachf_1024_bao_ant_base_user_data_out => roachf_1024_bao_ant_base_user_data_out,
      roachf_1024_bao_feng_ctl_user_data_out => roachf_1024_bao_feng_ctl_user_data_out,
      roachf_1024_bao_fft_shift_user_data_out => roachf_1024_bao_fft_shift_user_data_out,
      roachf_1024_bao_gbe_sw_port_user_data_out => roachf_1024_bao_gbe_sw_port_user_data_out,
      roachf_1024_bao_gpu_ip_user_data_out => roachf_1024_bao_gpu_ip_user_data_out,
      roachf_1024_bao_gpu_port_user_data_out => roachf_1024_bao_gpu_port_user_data_out,
      roachf_1024_bao_ip_base_user_data_out => roachf_1024_bao_ip_base_user_data_out,
      roachf_1024_bao_my_ip_user_data_out => roachf_1024_bao_my_ip_user_data_out,
      roachf_1024_bao_ADC_s_adc_user_data_valid => roachf_1024_bao_ADC_s_adc_user_data_valid,
      roachf_1024_bao_ADC_s_adc_user_datai0 => roachf_1024_bao_ADC_s_adc_user_datai0,
      roachf_1024_bao_ADC_s_adc_user_datai1 => roachf_1024_bao_ADC_s_adc_user_datai1,
      roachf_1024_bao_ADC_s_adc_user_datai2 => roachf_1024_bao_ADC_s_adc_user_datai2,
      roachf_1024_bao_ADC_s_adc_user_datai3 => roachf_1024_bao_ADC_s_adc_user_datai3,
      roachf_1024_bao_ADC_s_adc_user_dataq0 => roachf_1024_bao_ADC_s_adc_user_dataq0,
      roachf_1024_bao_ADC_s_adc_user_dataq1 => roachf_1024_bao_ADC_s_adc_user_dataq1,
      roachf_1024_bao_ADC_s_adc_user_dataq2 => roachf_1024_bao_ADC_s_adc_user_dataq2,
      roachf_1024_bao_ADC_s_adc_user_dataq3 => roachf_1024_bao_ADC_s_adc_user_dataq3,
      roachf_1024_bao_ADC_s_adc_user_outofrangei0 => roachf_1024_bao_ADC_s_adc_user_outofrangei0,
      roachf_1024_bao_ADC_s_adc_user_outofrangei1 => roachf_1024_bao_ADC_s_adc_user_outofrangei1,
      roachf_1024_bao_ADC_s_adc_user_outofrangeq0 => roachf_1024_bao_ADC_s_adc_user_outofrangeq0,
      roachf_1024_bao_ADC_s_adc_user_outofrangeq1 => roachf_1024_bao_ADC_s_adc_user_outofrangeq1,
      roachf_1024_bao_ADC_s_adc_user_sync0 => roachf_1024_bao_ADC_s_adc_user_sync0,
      roachf_1024_bao_ADC_s_adc_user_sync1 => roachf_1024_bao_ADC_s_adc_user_sync1,
      roachf_1024_bao_ADC_s_adc_user_sync2 => roachf_1024_bao_ADC_s_adc_user_sync2,
      roachf_1024_bao_ADC_s_adc_user_sync3 => roachf_1024_bao_ADC_s_adc_user_sync3,
      roachf_1024_bao_ADC_s_adc1_user_data_valid => roachf_1024_bao_ADC_s_adc1_user_data_valid,
      roachf_1024_bao_ADC_s_adc1_user_datai0 => roachf_1024_bao_ADC_s_adc1_user_datai0,
      roachf_1024_bao_ADC_s_adc1_user_datai1 => roachf_1024_bao_ADC_s_adc1_user_datai1,
      roachf_1024_bao_ADC_s_adc1_user_datai2 => roachf_1024_bao_ADC_s_adc1_user_datai2,
      roachf_1024_bao_ADC_s_adc1_user_datai3 => roachf_1024_bao_ADC_s_adc1_user_datai3,
      roachf_1024_bao_ADC_s_adc1_user_dataq0 => roachf_1024_bao_ADC_s_adc1_user_dataq0,
      roachf_1024_bao_ADC_s_adc1_user_dataq1 => roachf_1024_bao_ADC_s_adc1_user_dataq1,
      roachf_1024_bao_ADC_s_adc1_user_dataq2 => roachf_1024_bao_ADC_s_adc1_user_dataq2,
      roachf_1024_bao_ADC_s_adc1_user_dataq3 => roachf_1024_bao_ADC_s_adc1_user_dataq3,
      roachf_1024_bao_ADC_s_adc1_user_outofrangei0 => roachf_1024_bao_ADC_s_adc1_user_outofrangei0,
      roachf_1024_bao_ADC_s_adc1_user_outofrangei1 => roachf_1024_bao_ADC_s_adc1_user_outofrangei1,
      roachf_1024_bao_ADC_s_adc1_user_outofrangeq0 => roachf_1024_bao_ADC_s_adc1_user_outofrangeq0,
      roachf_1024_bao_ADC_s_adc1_user_outofrangeq1 => roachf_1024_bao_ADC_s_adc1_user_outofrangeq1,
      roachf_1024_bao_ADC_s_adc1_user_sync0 => roachf_1024_bao_ADC_s_adc1_user_sync0,
      roachf_1024_bao_ADC_s_adc1_user_sync1 => roachf_1024_bao_ADC_s_adc1_user_sync1,
      roachf_1024_bao_ADC_s_adc1_user_sync2 => roachf_1024_bao_ADC_s_adc1_user_sync2,
      roachf_1024_bao_ADC_s_adc1_user_sync3 => roachf_1024_bao_ADC_s_adc1_user_sync3,
      roachf_1024_bao_EQ_quant0_addr_user_data_out => roachf_1024_bao_EQ_quant0_addr_user_data_out,
      roachf_1024_bao_EQ_quant0_gain_user_data_out => roachf_1024_bao_EQ_quant0_gain_user_data_out,
      roachf_1024_bao_EQ_quant1_addr_user_data_out => roachf_1024_bao_EQ_quant1_addr_user_data_out,
      roachf_1024_bao_EQ_quant1_gain_user_data_out => roachf_1024_bao_EQ_quant1_gain_user_data_out,
      roachf_1024_bao_EQ_quant2_addr_user_data_out => roachf_1024_bao_EQ_quant2_addr_user_data_out,
      roachf_1024_bao_EQ_quant2_gain_user_data_out => roachf_1024_bao_EQ_quant2_gain_user_data_out,
      roachf_1024_bao_EQ_quant3_addr_user_data_out => roachf_1024_bao_EQ_quant3_addr_user_data_out,
      roachf_1024_bao_EQ_quant3_gain_user_data_out => roachf_1024_bao_EQ_quant3_gain_user_data_out,
      roachf_1024_bao_LEDs_led1_arm_gateway => roachf_1024_bao_LEDs_led1_arm_gateway(0),
      roachf_1024_bao_LEDs_led2_sync_gateway => roachf_1024_bao_LEDs_led2_sync_gateway(0),
      roachf_1024_bao_LEDs_led4_eq_clip_gateway => roachf_1024_bao_LEDs_led4_eq_clip_gateway(0),
      roachf_1024_bao_delay_values_user_data_out => roachf_1024_bao_delay_values_user_data_out,
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
      roachf_1024_bao_gpu_gbe2_rst => roachf_1024_bao_gpu_gbe2_rst,
      roachf_1024_bao_gpu_gbe2_rx_ack => roachf_1024_bao_gpu_gbe2_rx_ack,
      roachf_1024_bao_gpu_gbe2_rx_overrun_ack => roachf_1024_bao_gpu_gbe2_rx_overrun_ack,
      roachf_1024_bao_gpu_gbe2_tx_data => roachf_1024_bao_gpu_gbe2_tx_data,
      roachf_1024_bao_gpu_gbe2_tx_dest_ip => roachf_1024_bao_gpu_gbe2_tx_dest_ip,
      roachf_1024_bao_gpu_gbe2_tx_dest_port => roachf_1024_bao_gpu_gbe2_tx_dest_port,
      roachf_1024_bao_gpu_gbe2_tx_end_of_frame => roachf_1024_bao_gpu_gbe2_tx_end_of_frame,
      roachf_1024_bao_gpu_gbe2_tx_valid => roachf_1024_bao_gpu_gbe2_tx_valid,
      roachf_1024_bao_input_selector_user_data_out => roachf_1024_bao_input_selector_user_data_out,
      roachf_1024_bao_loopback_loop_cnt_user_data_in => roachf_1024_bao_loopback_loop_cnt_user_data_in,
      roachf_1024_bao_loopback_loop_err_cnt_user_data_in => roachf_1024_bao_loopback_loop_err_cnt_user_data_in,
      roachf_1024_bao_loopback_loopback_mux_gbe_over_user_data_in => roachf_1024_bao_loopback_loopback_mux_gbe_over_user_data_in,
      roachf_1024_bao_loopback_loopback_mux_gbe_und_user_data_in => roachf_1024_bao_loopback_loopback_mux_gbe_und_user_data_in,
      roachf_1024_bao_loopback_loopback_mux_lb_over_user_data_in => roachf_1024_bao_loopback_loopback_mux_lb_over_user_data_in,
      roachf_1024_bao_loopback_loopback_mux_lb_und_user_data_in => roachf_1024_bao_loopback_loopback_mux_lb_und_user_data_in,
      roachf_1024_bao_loopback_loopback_fifo_lb_err_cnt_user_data_in => roachf_1024_bao_loopback_loopback_fifo_lb_err_cnt_user_data_in,
      roachf_1024_bao_loopback_rx_cnt_user_data_in => roachf_1024_bao_loopback_rx_cnt_user_data_in,
      roachf_1024_bao_loopback_rx_err_cnt_user_data_in => roachf_1024_bao_loopback_rx_err_cnt_user_data_in,
      roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2big_user_data_in => roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2big_user_data_in,
      roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2small_user_data_in => roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2small_user_data_in,
      roachf_1024_bao_seed_data_user_data_out => roachf_1024_bao_seed_data_user_data_out,
      roachf_1024_bao_status_gbe_gpu_user_data_in => roachf_1024_bao_status_gbe_gpu_user_data_in,
      roachf_1024_bao_status_gbe_sw_user_data_in => roachf_1024_bao_status_gbe_sw_user_data_in,
      roachf_1024_bao_status_swgbe_bframe_user_data_in => roachf_1024_bao_status_swgbe_bframe_user_data_in,
      roachf_1024_bao_status_swgbe_oflow_user_data_in => roachf_1024_bao_status_swgbe_oflow_user_data_in,
      roachf_1024_bao_status_swgbe_orun_user_data_in => roachf_1024_bao_status_swgbe_orun_user_data_in,
      roachf_1024_bao_switch_10gbetxsnap_addr_user_data_in => roachf_1024_bao_switch_10gbetxsnap_addr_user_data_in,
      roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_out => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_out,
      roachf_1024_bao_switch_10gbetxsnap_bram_lsb_addr => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_addr,
      roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_in => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_in,
      roachf_1024_bao_switch_10gbetxsnap_bram_lsb_we => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_we,
      roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_out => roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_out,
      roachf_1024_bao_switch_10gbetxsnap_bram_msb_addr => roachf_1024_bao_switch_10gbetxsnap_bram_msb_addr,
      roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_in => roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_in,
      roachf_1024_bao_switch_10gbetxsnap_bram_msb_we => roachf_1024_bao_switch_10gbetxsnap_bram_msb_we,
      roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_out => roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_out,
      roachf_1024_bao_switch_10gbetxsnap_bram_oob_addr => roachf_1024_bao_switch_10gbetxsnap_bram_oob_addr,
      roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_in => roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_in,
      roachf_1024_bao_switch_10gbetxsnap_bram_oob_we => roachf_1024_bao_switch_10gbetxsnap_bram_oob_we,
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
      roachf_1024_bao_switch_gbe3_rst => roachf_1024_bao_switch_gbe3_rst,
      roachf_1024_bao_switch_gbe3_rx_ack => roachf_1024_bao_switch_gbe3_rx_ack,
      roachf_1024_bao_switch_gbe3_rx_overrun_ack => roachf_1024_bao_switch_gbe3_rx_overrun_ack,
      roachf_1024_bao_switch_gbe3_tx_data => roachf_1024_bao_switch_gbe3_tx_data,
      roachf_1024_bao_switch_gbe3_tx_dest_ip => roachf_1024_bao_switch_gbe3_tx_dest_ip,
      roachf_1024_bao_switch_gbe3_tx_dest_port => roachf_1024_bao_switch_gbe3_tx_dest_port,
      roachf_1024_bao_switch_gbe3_tx_end_of_frame => roachf_1024_bao_switch_gbe3_tx_end_of_frame,
      roachf_1024_bao_switch_gbe3_tx_valid => roachf_1024_bao_switch_gbe3_tx_valid,
      roachf_1024_bao_transpose_qdr_reorder_qdr_ack => roachf_1024_bao_transpose_qdr_reorder_qdr_ack,
      roachf_1024_bao_transpose_qdr_reorder_qdr_cal_fail => roachf_1024_bao_transpose_qdr_reorder_qdr_cal_fail,
      roachf_1024_bao_transpose_qdr_reorder_qdr_data_out => roachf_1024_bao_transpose_qdr_reorder_qdr_data_out,
      roachf_1024_bao_transpose_qdr_reorder_qdr_phy_ready => roachf_1024_bao_transpose_qdr_reorder_qdr_phy_ready,
      roachf_1024_bao_transpose_qdr_reorder_qdr_address => roachf_1024_bao_transpose_qdr_reorder_qdr_address,
      roachf_1024_bao_transpose_qdr_reorder_qdr_be => roachf_1024_bao_transpose_qdr_reorder_qdr_be,
      roachf_1024_bao_transpose_qdr_reorder_qdr_data_in => roachf_1024_bao_transpose_qdr_reorder_qdr_data_in,
      roachf_1024_bao_transpose_qdr_reorder_qdr_rd_en => roachf_1024_bao_transpose_qdr_reorder_qdr_rd_en,
      roachf_1024_bao_transpose_qdr_reorder_qdr_wr_en => roachf_1024_bao_transpose_qdr_reorder_qdr_wr_en,
      roachf_1024_bao_transpose_qdr_reorder1_qdr_ack => roachf_1024_bao_transpose_qdr_reorder1_qdr_ack,
      roachf_1024_bao_transpose_qdr_reorder1_qdr_cal_fail => roachf_1024_bao_transpose_qdr_reorder1_qdr_cal_fail,
      roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out => roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out,
      roachf_1024_bao_transpose_qdr_reorder1_qdr_phy_ready => roachf_1024_bao_transpose_qdr_reorder1_qdr_phy_ready,
      roachf_1024_bao_transpose_qdr_reorder1_qdr_address => roachf_1024_bao_transpose_qdr_reorder1_qdr_address,
      roachf_1024_bao_transpose_qdr_reorder1_qdr_be => roachf_1024_bao_transpose_qdr_reorder1_qdr_be,
      roachf_1024_bao_transpose_qdr_reorder1_qdr_data_in => roachf_1024_bao_transpose_qdr_reorder1_qdr_data_in,
      roachf_1024_bao_transpose_qdr_reorder1_qdr_rd_en => roachf_1024_bao_transpose_qdr_reorder1_qdr_rd_en,
      roachf_1024_bao_transpose_qdr_reorder1_qdr_wr_en => roachf_1024_bao_transpose_qdr_reorder1_qdr_wr_en
    );

  roachf_1024_bao_ant_base : roachf_1024_bao_ant_base_wrapper
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
      user_data_out => roachf_1024_bao_ant_base_user_data_out,
      user_clk => adc0_clk
    );

  roachf_1024_bao_feng_ctl : roachf_1024_bao_feng_ctl_wrapper
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
      user_data_out => roachf_1024_bao_feng_ctl_user_data_out,
      user_clk => adc0_clk
    );

  roachf_1024_bao_fft_shift : roachf_1024_bao_fft_shift_wrapper
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
      user_data_out => roachf_1024_bao_fft_shift_user_data_out,
      user_clk => adc0_clk
    );

  roachf_1024_bao_gbe_sw_port : roachf_1024_bao_gbe_sw_port_wrapper
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
      user_data_out => roachf_1024_bao_gbe_sw_port_user_data_out,
      user_clk => adc0_clk
    );

  roachf_1024_bao_gpu_ip : roachf_1024_bao_gpu_ip_wrapper
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
      user_data_out => roachf_1024_bao_gpu_ip_user_data_out,
      user_clk => adc0_clk
    );

  roachf_1024_bao_gpu_port : roachf_1024_bao_gpu_port_wrapper
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
      user_data_out => roachf_1024_bao_gpu_port_user_data_out,
      user_clk => adc0_clk
    );

  roachf_1024_bao_ip_base : roachf_1024_bao_ip_base_wrapper
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
      user_data_out => roachf_1024_bao_ip_base_user_data_out,
      user_clk => adc0_clk
    );

  roachf_1024_bao_my_ip : roachf_1024_bao_my_ip_wrapper
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
      user_data_out => roachf_1024_bao_my_ip_user_data_out,
      user_clk => adc0_clk
    );

  roachf_1024_bao_ADC_s_adc : roachf_1024_bao_adc_s_adc_wrapper
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
      user_datai0 => roachf_1024_bao_ADC_s_adc_user_datai0,
      user_datai1 => roachf_1024_bao_ADC_s_adc_user_datai1,
      user_datai2 => roachf_1024_bao_ADC_s_adc_user_datai2,
      user_datai3 => roachf_1024_bao_ADC_s_adc_user_datai3,
      user_dataq0 => roachf_1024_bao_ADC_s_adc_user_dataq0,
      user_dataq1 => roachf_1024_bao_ADC_s_adc_user_dataq1,
      user_dataq2 => roachf_1024_bao_ADC_s_adc_user_dataq2,
      user_dataq3 => roachf_1024_bao_ADC_s_adc_user_dataq3,
      user_outofrangei0 => roachf_1024_bao_ADC_s_adc_user_outofrangei0,
      user_outofrangei1 => roachf_1024_bao_ADC_s_adc_user_outofrangei1,
      user_outofrangeq0 => roachf_1024_bao_ADC_s_adc_user_outofrangeq0,
      user_outofrangeq1 => roachf_1024_bao_ADC_s_adc_user_outofrangeq1,
      user_sync0 => roachf_1024_bao_ADC_s_adc_user_sync0,
      user_sync1 => roachf_1024_bao_ADC_s_adc_user_sync1,
      user_sync2 => roachf_1024_bao_ADC_s_adc_user_sync2,
      user_sync3 => roachf_1024_bao_ADC_s_adc_user_sync3,
      user_data_valid => roachf_1024_bao_ADC_s_adc_user_data_valid,
      dcm_reset => adc0_dcm_reset,
      ctrl_reset => adc0_ddrb,
      ctrl_clk_in => adc0_clk,
      ctrl_clk_out => adc0_clk,
      ctrl_clk90_out => adc0_clk90,
      ctrl_clk180_out => adc0_clk180,
      ctrl_clk270_out => adc0_clk270,
      ctrl_dcm_locked => open,
      dcm_psclk => adc0_psclk,
      dcm_psen => adc0_psen,
      dcm_psincdec => adc0_psincdec,
      dcm_psdone => adc0_psdone
    );

  roachf_1024_bao_ADC_s_adc1 : roachf_1024_bao_adc_s_adc1_wrapper
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
      user_datai0 => roachf_1024_bao_ADC_s_adc1_user_datai0,
      user_datai1 => roachf_1024_bao_ADC_s_adc1_user_datai1,
      user_datai2 => roachf_1024_bao_ADC_s_adc1_user_datai2,
      user_datai3 => roachf_1024_bao_ADC_s_adc1_user_datai3,
      user_dataq0 => roachf_1024_bao_ADC_s_adc1_user_dataq0,
      user_dataq1 => roachf_1024_bao_ADC_s_adc1_user_dataq1,
      user_dataq2 => roachf_1024_bao_ADC_s_adc1_user_dataq2,
      user_dataq3 => roachf_1024_bao_ADC_s_adc1_user_dataq3,
      user_outofrangei0 => roachf_1024_bao_ADC_s_adc1_user_outofrangei0,
      user_outofrangei1 => roachf_1024_bao_ADC_s_adc1_user_outofrangei1,
      user_outofrangeq0 => roachf_1024_bao_ADC_s_adc1_user_outofrangeq0,
      user_outofrangeq1 => roachf_1024_bao_ADC_s_adc1_user_outofrangeq1,
      user_sync0 => roachf_1024_bao_ADC_s_adc1_user_sync0,
      user_sync1 => roachf_1024_bao_ADC_s_adc1_user_sync1,
      user_sync2 => roachf_1024_bao_ADC_s_adc1_user_sync2,
      user_sync3 => roachf_1024_bao_ADC_s_adc1_user_sync3,
      user_data_valid => roachf_1024_bao_ADC_s_adc1_user_data_valid,
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

  roachf_1024_bao_EQ_quant0_addr : roachf_1024_bao_eq_quant0_addr_wrapper
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
      user_data_out => roachf_1024_bao_EQ_quant0_addr_user_data_out,
      user_clk => adc0_clk
    );

  roachf_1024_bao_EQ_quant0_gain : roachf_1024_bao_eq_quant0_gain_wrapper
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
      user_data_out => roachf_1024_bao_EQ_quant0_gain_user_data_out,
      user_clk => adc0_clk
    );

  roachf_1024_bao_EQ_quant1_addr : roachf_1024_bao_eq_quant1_addr_wrapper
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
      user_data_out => roachf_1024_bao_EQ_quant1_addr_user_data_out,
      user_clk => adc0_clk
    );

  roachf_1024_bao_EQ_quant1_gain : roachf_1024_bao_eq_quant1_gain_wrapper
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
      user_data_out => roachf_1024_bao_EQ_quant1_gain_user_data_out,
      user_clk => adc0_clk
    );

  roachf_1024_bao_EQ_quant2_addr : roachf_1024_bao_eq_quant2_addr_wrapper
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
      user_data_out => roachf_1024_bao_EQ_quant2_addr_user_data_out,
      user_clk => adc0_clk
    );

  roachf_1024_bao_EQ_quant2_gain : roachf_1024_bao_eq_quant2_gain_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(480 to 511),
      Sl_errAck => opb0_Sl_errAck(15),
      Sl_retry => opb0_Sl_retry(15),
      Sl_toutSup => opb0_Sl_toutSup(15),
      Sl_xferAck => opb0_Sl_xferAck(15),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roachf_1024_bao_EQ_quant2_gain_user_data_out,
      user_clk => adc0_clk
    );

  roachf_1024_bao_EQ_quant3_addr : roachf_1024_bao_eq_quant3_addr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(512 to 543),
      Sl_errAck => opb0_Sl_errAck(16),
      Sl_retry => opb0_Sl_retry(16),
      Sl_toutSup => opb0_Sl_toutSup(16),
      Sl_xferAck => opb0_Sl_xferAck(16),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roachf_1024_bao_EQ_quant3_addr_user_data_out,
      user_clk => adc0_clk
    );

  roachf_1024_bao_EQ_quant3_gain : roachf_1024_bao_eq_quant3_gain_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(544 to 575),
      Sl_errAck => opb0_Sl_errAck(17),
      Sl_retry => opb0_Sl_retry(17),
      Sl_toutSup => opb0_Sl_toutSup(17),
      Sl_xferAck => opb0_Sl_xferAck(17),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roachf_1024_bao_EQ_quant3_gain_user_data_out,
      user_clk => adc0_clk
    );

  roachf_1024_bao_LEDs_led1_arm : roachf_1024_bao_leds_led1_arm_wrapper
    port map (
      gateway => roachf_1024_bao_LEDs_led1_arm_gateway(0 to 0),
      io_pad => roachf_1024_bao_LEDs_led1_arm_ext(0 to 0),
      clk => adc0_clk,
      clk90 => adc0_clk90
    );

  roachf_1024_bao_LEDs_led2_sync : roachf_1024_bao_leds_led2_sync_wrapper
    port map (
      gateway => roachf_1024_bao_LEDs_led2_sync_gateway(0 to 0),
      io_pad => roachf_1024_bao_LEDs_led2_sync_ext(0 to 0),
      clk => adc0_clk,
      clk90 => adc0_clk90
    );

  roachf_1024_bao_LEDs_led4_eq_clip : roachf_1024_bao_leds_led4_eq_clip_wrapper
    port map (
      gateway => roachf_1024_bao_LEDs_led4_eq_clip_gateway(0 to 0),
      io_pad => roachf_1024_bao_LEDs_led4_eq_clip_ext(0 to 0),
      clk => adc0_clk,
      clk90 => adc0_clk90
    );

  roachf_1024_bao_delay_values : roachf_1024_bao_delay_values_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(576 to 607),
      Sl_errAck => opb0_Sl_errAck(18),
      Sl_retry => opb0_Sl_retry(18),
      Sl_toutSup => opb0_Sl_toutSup(18),
      Sl_xferAck => opb0_Sl_xferAck(18),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roachf_1024_bao_delay_values_user_data_out,
      user_clk => adc0_clk
    );

  roachf_1024_bao_gpu_gbe2 : roachf_1024_bao_gpu_gbe2_wrapper
    port map (
      clk => adc0_clk,
      rst => roachf_1024_bao_gpu_gbe2_rst,
      tx_valid => roachf_1024_bao_gpu_gbe2_tx_valid,
      tx_afull => roachf_1024_bao_gpu_gbe2_tx_afull,
      tx_overflow => roachf_1024_bao_gpu_gbe2_tx_overflow,
      tx_end_of_frame => roachf_1024_bao_gpu_gbe2_tx_end_of_frame,
      tx_data => roachf_1024_bao_gpu_gbe2_tx_data,
      tx_dest_ip => roachf_1024_bao_gpu_gbe2_tx_dest_ip,
      tx_dest_port => roachf_1024_bao_gpu_gbe2_tx_dest_port,
      rx_valid => roachf_1024_bao_gpu_gbe2_rx_valid,
      rx_end_of_frame => roachf_1024_bao_gpu_gbe2_rx_end_of_frame,
      rx_data => roachf_1024_bao_gpu_gbe2_rx_data,
      rx_source_ip => roachf_1024_bao_gpu_gbe2_rx_source_ip,
      rx_source_port => roachf_1024_bao_gpu_gbe2_rx_source_port,
      rx_bad_frame => roachf_1024_bao_gpu_gbe2_rx_bad_frame,
      rx_overrun => roachf_1024_bao_gpu_gbe2_rx_overrun,
      rx_overrun_ack => roachf_1024_bao_gpu_gbe2_rx_overrun_ack,
      rx_ack => roachf_1024_bao_gpu_gbe2_rx_ack,
      led_up => roachf_1024_bao_gpu_gbe2_led_up,
      led_rx => roachf_1024_bao_gpu_gbe2_led_rx,
      led_tx => roachf_1024_bao_gpu_gbe2_led_tx,
      xaui_clk => mgt_clk_1,
      xgmii_txd => xgmii2_xgmii_txd,
      xgmii_txc => xgmii2_xgmii_txc,
      xgmii_rxd => xgmii2_xgmii_rxd,
      xgmii_rxc => xgmii2_xgmii_rxc,
      xaui_reset => net_gnd0,
      xaui_status => xgmii2_xaui_status,
      mgt_rxeqmix => xaui_conf2_mgt_rxeqmix,
      mgt_rxeqpole => xaui_conf2_mgt_rxeqpole,
      mgt_txpreemphasis => xaui_conf2_mgt_txpreemphasis,
      mgt_txdiffctrl => xaui_conf2_mgt_txdiffctrl,
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(608 to 639),
      Sl_errAck => opb0_Sl_errAck(19),
      Sl_retry => opb0_Sl_retry(19),
      Sl_toutSup => opb0_Sl_toutSup(19),
      Sl_xferAck => opb0_Sl_xferAck(19),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr
    );

  xaui_phy_2 : xaui_phy_2_wrapper
    port map (
      reset => sys_reset,
      mgt_clk => mgt_clk_1,
      mgt_txdata => xaui_sys2_mgt_tx_data,
      mgt_txcharisk => xaui_sys2_mgt_tx_charisk,
      mgt_rxdata => xaui_sys2_mgt_rx_data,
      mgt_rxcharisk => xaui_sys2_mgt_rx_charisk,
      mgt_enable_align => xaui_sys2_mgt_enable_align,
      mgt_code_valid => xaui_sys2_mgt_code_valid,
      mgt_code_comma => xaui_sys2_mgt_code_comma,
      mgt_rxlock => xaui_sys2_mgt_rxlock,
      mgt_rxbufferr => xaui_sys2_mgt_rxbufferr,
      mgt_loopback => xaui_sys2_mgt_loopback,
      mgt_syncok => xaui_sys2_mgt_syncok,
      mgt_en_chan_sync => xaui_sys2_mgt_en_chan_sync,
      mgt_powerdown => xaui_sys2_mgt_powerdown,
      mgt_rx_reset => xaui_sys2_mgt_rx_reset,
      mgt_tx_reset => xaui_sys2_mgt_tx_reset,
      xgmii_txd => xgmii2_xgmii_txd,
      xgmii_txc => xgmii2_xgmii_txc,
      xgmii_rxd => xgmii2_xgmii_rxd,
      xgmii_rxc => xgmii2_xgmii_rxc,
      xaui_reset => net_gnd0,
      xaui_status => xgmii2_xaui_status
    );

  roachf_1024_bao_input_selector : roachf_1024_bao_input_selector_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(640 to 671),
      Sl_errAck => opb0_Sl_errAck(20),
      Sl_retry => opb0_Sl_retry(20),
      Sl_toutSup => opb0_Sl_toutSup(20),
      Sl_xferAck => opb0_Sl_xferAck(20),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roachf_1024_bao_input_selector_user_data_out,
      user_clk => adc0_clk
    );

  roachf_1024_bao_loopback_loop_cnt : roachf_1024_bao_loopback_loop_cnt_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(672 to 703),
      Sl_errAck => opb0_Sl_errAck(21),
      Sl_retry => opb0_Sl_retry(21),
      Sl_toutSup => opb0_Sl_toutSup(21),
      Sl_xferAck => opb0_Sl_xferAck(21),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roachf_1024_bao_loopback_loop_cnt_user_data_in,
      user_clk => adc0_clk
    );

  roachf_1024_bao_loopback_loop_err_cnt : roachf_1024_bao_loopback_loop_err_cnt_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(704 to 735),
      Sl_errAck => opb0_Sl_errAck(22),
      Sl_retry => opb0_Sl_retry(22),
      Sl_toutSup => opb0_Sl_toutSup(22),
      Sl_xferAck => opb0_Sl_xferAck(22),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roachf_1024_bao_loopback_loop_err_cnt_user_data_in,
      user_clk => adc0_clk
    );

  roachf_1024_bao_loopback_loopback_mux_gbe_over : roachf_1024_bao_loopback_loopback_mux_gbe_over_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(736 to 767),
      Sl_errAck => opb0_Sl_errAck(23),
      Sl_retry => opb0_Sl_retry(23),
      Sl_toutSup => opb0_Sl_toutSup(23),
      Sl_xferAck => opb0_Sl_xferAck(23),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roachf_1024_bao_loopback_loopback_mux_gbe_over_user_data_in,
      user_clk => adc0_clk
    );

  roachf_1024_bao_loopback_loopback_mux_gbe_und : roachf_1024_bao_loopback_loopback_mux_gbe_und_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(768 to 799),
      Sl_errAck => opb0_Sl_errAck(24),
      Sl_retry => opb0_Sl_retry(24),
      Sl_toutSup => opb0_Sl_toutSup(24),
      Sl_xferAck => opb0_Sl_xferAck(24),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roachf_1024_bao_loopback_loopback_mux_gbe_und_user_data_in,
      user_clk => adc0_clk
    );

  roachf_1024_bao_loopback_loopback_mux_lb_over : roachf_1024_bao_loopback_loopback_mux_lb_over_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(800 to 831),
      Sl_errAck => opb0_Sl_errAck(25),
      Sl_retry => opb0_Sl_retry(25),
      Sl_toutSup => opb0_Sl_toutSup(25),
      Sl_xferAck => opb0_Sl_xferAck(25),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roachf_1024_bao_loopback_loopback_mux_lb_over_user_data_in,
      user_clk => adc0_clk
    );

  roachf_1024_bao_loopback_loopback_mux_lb_und : roachf_1024_bao_loopback_loopback_mux_lb_und_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(832 to 863),
      Sl_errAck => opb0_Sl_errAck(26),
      Sl_retry => opb0_Sl_retry(26),
      Sl_toutSup => opb0_Sl_toutSup(26),
      Sl_xferAck => opb0_Sl_xferAck(26),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roachf_1024_bao_loopback_loopback_mux_lb_und_user_data_in,
      user_clk => adc0_clk
    );

  roachf_1024_bao_loopback_loopback_fifo_lb_err_cnt : roachf_1024_bao_loopback_loopback_fifo_lb_err_cnt_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(864 to 895),
      Sl_errAck => opb0_Sl_errAck(27),
      Sl_retry => opb0_Sl_retry(27),
      Sl_toutSup => opb0_Sl_toutSup(27),
      Sl_xferAck => opb0_Sl_xferAck(27),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roachf_1024_bao_loopback_loopback_fifo_lb_err_cnt_user_data_in,
      user_clk => adc0_clk
    );

  roachf_1024_bao_loopback_rx_cnt : roachf_1024_bao_loopback_rx_cnt_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(896 to 927),
      Sl_errAck => opb0_Sl_errAck(28),
      Sl_retry => opb0_Sl_retry(28),
      Sl_toutSup => opb0_Sl_toutSup(28),
      Sl_xferAck => opb0_Sl_xferAck(28),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roachf_1024_bao_loopback_rx_cnt_user_data_in,
      user_clk => adc0_clk
    );

  roachf_1024_bao_loopback_rx_err_cnt : roachf_1024_bao_loopback_rx_err_cnt_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(928 to 959),
      Sl_errAck => opb0_Sl_errAck(29),
      Sl_retry => opb0_Sl_retry(29),
      Sl_toutSup => opb0_Sl_toutSup(29),
      Sl_xferAck => opb0_Sl_xferAck(29),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roachf_1024_bao_loopback_rx_err_cnt_user_data_in,
      user_clk => adc0_clk
    );

  roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2big : roachf_1024_bao_loopback_rx_pkt_fifo_santa_2big_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(960 to 991),
      Sl_errAck => opb0_Sl_errAck(30),
      Sl_retry => opb0_Sl_retry(30),
      Sl_toutSup => opb0_Sl_toutSup(30),
      Sl_xferAck => opb0_Sl_xferAck(30),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2big_user_data_in,
      user_clk => adc0_clk
    );

  roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2small : roachf_1024_bao_loopback_rx_pkt_fifo_santa_2small_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(992 to 1023),
      Sl_errAck => opb0_Sl_errAck(31),
      Sl_retry => opb0_Sl_retry(31),
      Sl_toutSup => opb0_Sl_toutSup(31),
      Sl_xferAck => opb0_Sl_xferAck(31),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2small_user_data_in,
      user_clk => adc0_clk
    );

  roachf_1024_bao_seed_data : roachf_1024_bao_seed_data_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(0 to 31),
      Sl_errAck => opb1_Sl_errAck(0),
      Sl_retry => opb1_Sl_retry(0),
      Sl_toutSup => opb1_Sl_toutSup(0),
      Sl_xferAck => opb1_Sl_xferAck(0),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_out => roachf_1024_bao_seed_data_user_data_out,
      user_clk => adc0_clk
    );

  roachf_1024_bao_status_gbe_gpu : roachf_1024_bao_status_gbe_gpu_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(32 to 63),
      Sl_errAck => opb1_Sl_errAck(1),
      Sl_retry => opb1_Sl_retry(1),
      Sl_toutSup => opb1_Sl_toutSup(1),
      Sl_xferAck => opb1_Sl_xferAck(1),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_in => roachf_1024_bao_status_gbe_gpu_user_data_in,
      user_clk => adc0_clk
    );

  roachf_1024_bao_status_gbe_sw : roachf_1024_bao_status_gbe_sw_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(64 to 95),
      Sl_errAck => opb1_Sl_errAck(2),
      Sl_retry => opb1_Sl_retry(2),
      Sl_toutSup => opb1_Sl_toutSup(2),
      Sl_xferAck => opb1_Sl_xferAck(2),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_in => roachf_1024_bao_status_gbe_sw_user_data_in,
      user_clk => adc0_clk
    );

  roachf_1024_bao_status_swgbe_bframe : roachf_1024_bao_status_swgbe_bframe_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(96 to 127),
      Sl_errAck => opb1_Sl_errAck(3),
      Sl_retry => opb1_Sl_retry(3),
      Sl_toutSup => opb1_Sl_toutSup(3),
      Sl_xferAck => opb1_Sl_xferAck(3),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_in => roachf_1024_bao_status_swgbe_bframe_user_data_in,
      user_clk => adc0_clk
    );

  roachf_1024_bao_status_swgbe_oflow : roachf_1024_bao_status_swgbe_oflow_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(128 to 159),
      Sl_errAck => opb1_Sl_errAck(4),
      Sl_retry => opb1_Sl_retry(4),
      Sl_toutSup => opb1_Sl_toutSup(4),
      Sl_xferAck => opb1_Sl_xferAck(4),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_in => roachf_1024_bao_status_swgbe_oflow_user_data_in,
      user_clk => adc0_clk
    );

  roachf_1024_bao_status_swgbe_orun : roachf_1024_bao_status_swgbe_orun_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(160 to 191),
      Sl_errAck => opb1_Sl_errAck(5),
      Sl_retry => opb1_Sl_retry(5),
      Sl_toutSup => opb1_Sl_toutSup(5),
      Sl_xferAck => opb1_Sl_xferAck(5),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_in => roachf_1024_bao_status_swgbe_orun_user_data_in,
      user_clk => adc0_clk
    );

  roachf_1024_bao_switch_10gbetxsnap_addr : roachf_1024_bao_switch_10gbetxsnap_addr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(192 to 223),
      Sl_errAck => opb1_Sl_errAck(6),
      Sl_retry => opb1_Sl_retry(6),
      Sl_toutSup => opb1_Sl_toutSup(6),
      Sl_xferAck => opb1_Sl_xferAck(6),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_in => roachf_1024_bao_switch_10gbetxsnap_addr_user_data_in,
      user_clk => adc0_clk
    );

  roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramif : roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramif_wrapper
    port map (
      bram_rst => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_porta_BRAM_Rst,
      bram_clk => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_porta_BRAM_Clk,
      bram_en => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_porta_BRAM_EN,
      bram_wen => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_porta_BRAM_WEN,
      bram_addr => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_porta_BRAM_Addr,
      bram_din => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_porta_BRAM_Din,
      bram_dout => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_addr,
      data_in => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_in,
      data_out => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_out,
      we => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_we
    );

  roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk : roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_wrapper
    port map (
      BRAM_Rst_A => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_portb_BRAM_Dout
    );

  roachf_1024_bao_switch_10gbetxsnap_bram_lsb : roachf_1024_bao_switch_10gbetxsnap_bram_lsb_wrapper
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
      bram_rst => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_portb_BRAM_Rst,
      bram_clk => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_portb_BRAM_Clk,
      bram_en => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_portb_BRAM_EN,
      bram_wen => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_portb_BRAM_WEN,
      bram_addr => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_portb_BRAM_Addr,
      bram_din => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_portb_BRAM_Din,
      bram_dout => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ramblk_portb_BRAM_Dout
    );

  roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramif : roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramif_wrapper
    port map (
      bram_rst => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_porta_BRAM_Rst,
      bram_clk => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_porta_BRAM_Clk,
      bram_en => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_porta_BRAM_EN,
      bram_wen => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_porta_BRAM_WEN,
      bram_addr => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_porta_BRAM_Addr,
      bram_din => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_porta_BRAM_Din,
      bram_dout => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => roachf_1024_bao_switch_10gbetxsnap_bram_msb_addr,
      data_in => roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_in,
      data_out => roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_out,
      we => roachf_1024_bao_switch_10gbetxsnap_bram_msb_we
    );

  roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk : roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_wrapper
    port map (
      BRAM_Rst_A => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_portb_BRAM_Dout
    );

  roachf_1024_bao_switch_10gbetxsnap_bram_msb : roachf_1024_bao_switch_10gbetxsnap_bram_msb_wrapper
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
      bram_rst => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_portb_BRAM_Rst,
      bram_clk => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_portb_BRAM_Clk,
      bram_en => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_portb_BRAM_EN,
      bram_wen => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_portb_BRAM_WEN,
      bram_addr => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_portb_BRAM_Addr,
      bram_din => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_portb_BRAM_Din,
      bram_dout => roachf_1024_bao_switch_10gbetxsnap_bram_msb_ramblk_portb_BRAM_Dout
    );

  roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramif : roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramif_wrapper
    port map (
      bram_rst => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_porta_BRAM_Rst,
      bram_clk => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_porta_BRAM_Clk,
      bram_en => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_porta_BRAM_EN,
      bram_wen => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_porta_BRAM_WEN,
      bram_addr => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_porta_BRAM_Addr,
      bram_din => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_porta_BRAM_Din,
      bram_dout => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => roachf_1024_bao_switch_10gbetxsnap_bram_oob_addr,
      data_in => roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_in,
      data_out => roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_out,
      we => roachf_1024_bao_switch_10gbetxsnap_bram_oob_we
    );

  roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk : roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_wrapper
    port map (
      BRAM_Rst_A => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_portb_BRAM_Dout
    );

  roachf_1024_bao_switch_10gbetxsnap_bram_oob : roachf_1024_bao_switch_10gbetxsnap_bram_oob_wrapper
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
      bram_rst => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_portb_BRAM_Rst,
      bram_clk => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_portb_BRAM_Clk,
      bram_en => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_portb_BRAM_EN,
      bram_wen => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_portb_BRAM_WEN,
      bram_addr => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_portb_BRAM_Addr,
      bram_din => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_portb_BRAM_Din,
      bram_dout => roachf_1024_bao_switch_10gbetxsnap_bram_oob_ramblk_portb_BRAM_Dout
    );

  roachf_1024_bao_switch_10gbetxsnap_ctrl : roachf_1024_bao_switch_10gbetxsnap_ctrl_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(320 to 351),
      Sl_errAck => opb1_Sl_errAck(10),
      Sl_retry => opb1_Sl_retry(10),
      Sl_toutSup => opb1_Sl_toutSup(10),
      Sl_xferAck => opb1_Sl_xferAck(10),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_out => roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out,
      user_clk => adc0_clk
    );

  roachf_1024_bao_switch_gbe3 : roachf_1024_bao_switch_gbe3_wrapper
    port map (
      clk => adc0_clk,
      rst => roachf_1024_bao_switch_gbe3_rst,
      tx_valid => roachf_1024_bao_switch_gbe3_tx_valid,
      tx_afull => roachf_1024_bao_switch_gbe3_tx_afull,
      tx_overflow => roachf_1024_bao_switch_gbe3_tx_overflow,
      tx_end_of_frame => roachf_1024_bao_switch_gbe3_tx_end_of_frame,
      tx_data => roachf_1024_bao_switch_gbe3_tx_data,
      tx_dest_ip => roachf_1024_bao_switch_gbe3_tx_dest_ip,
      tx_dest_port => roachf_1024_bao_switch_gbe3_tx_dest_port,
      rx_valid => roachf_1024_bao_switch_gbe3_rx_valid,
      rx_end_of_frame => roachf_1024_bao_switch_gbe3_rx_end_of_frame,
      rx_data => roachf_1024_bao_switch_gbe3_rx_data,
      rx_source_ip => roachf_1024_bao_switch_gbe3_rx_source_ip,
      rx_source_port => roachf_1024_bao_switch_gbe3_rx_source_port,
      rx_bad_frame => roachf_1024_bao_switch_gbe3_rx_bad_frame,
      rx_overrun => roachf_1024_bao_switch_gbe3_rx_overrun,
      rx_overrun_ack => roachf_1024_bao_switch_gbe3_rx_overrun_ack,
      rx_ack => roachf_1024_bao_switch_gbe3_rx_ack,
      led_up => roachf_1024_bao_switch_gbe3_led_up,
      led_rx => roachf_1024_bao_switch_gbe3_led_rx,
      led_tx => roachf_1024_bao_switch_gbe3_led_tx,
      xaui_clk => mgt_clk_1,
      xgmii_txd => xgmii3_xgmii_txd,
      xgmii_txc => xgmii3_xgmii_txc,
      xgmii_rxd => xgmii3_xgmii_rxd,
      xgmii_rxc => xgmii3_xgmii_rxc,
      xaui_reset => net_gnd0,
      xaui_status => xgmii3_xaui_status,
      mgt_rxeqmix => xaui_conf3_mgt_rxeqmix,
      mgt_rxeqpole => xaui_conf3_mgt_rxeqpole,
      mgt_txpreemphasis => xaui_conf3_mgt_txpreemphasis,
      mgt_txdiffctrl => xaui_conf3_mgt_txdiffctrl,
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(352 to 383),
      Sl_errAck => opb1_Sl_errAck(11),
      Sl_retry => opb1_Sl_retry(11),
      Sl_toutSup => opb1_Sl_toutSup(11),
      Sl_xferAck => opb1_Sl_xferAck(11),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr
    );

  xaui_phy_3 : xaui_phy_3_wrapper
    port map (
      reset => sys_reset,
      mgt_clk => mgt_clk_1,
      mgt_txdata => xaui_sys3_mgt_tx_data,
      mgt_txcharisk => xaui_sys3_mgt_tx_charisk,
      mgt_rxdata => xaui_sys3_mgt_rx_data,
      mgt_rxcharisk => xaui_sys3_mgt_rx_charisk,
      mgt_enable_align => xaui_sys3_mgt_enable_align,
      mgt_code_valid => xaui_sys3_mgt_code_valid,
      mgt_code_comma => xaui_sys3_mgt_code_comma,
      mgt_rxlock => xaui_sys3_mgt_rxlock,
      mgt_rxbufferr => xaui_sys3_mgt_rxbufferr,
      mgt_loopback => xaui_sys3_mgt_loopback,
      mgt_syncok => xaui_sys3_mgt_syncok,
      mgt_en_chan_sync => xaui_sys3_mgt_en_chan_sync,
      mgt_powerdown => xaui_sys3_mgt_powerdown,
      mgt_rx_reset => xaui_sys3_mgt_rx_reset,
      mgt_tx_reset => xaui_sys3_mgt_tx_reset,
      xgmii_txd => xgmii3_xgmii_txd,
      xgmii_txc => xgmii3_xgmii_txc,
      xgmii_rxd => xgmii3_xgmii_rxd,
      xgmii_rxc => xgmii3_xgmii_rxc,
      xaui_reset => net_gnd0,
      xaui_status => xgmii3_xaui_status
    );

  qdr0_controller : qdr0_controller_wrapper
    port map (
      clk0 => adc0_clk,
      clk180 => adc0_clk180,
      clk270 => adc0_clk270,
      div_clk => epb_clk,
      reset => roachf_1024_bao_transpose_qdr_reorder_qdr_reset,
      qdr_k_n => qdr0_k_n,
      qdr_k => qdr0_k,
      qdr_d => qdr0_d,
      qdr_bw_n => qdr0_bw_n,
      qdr_sa => qdr0_sa,
      qdr_w_n => qdr0_w_n,
      qdr_r_n => qdr0_r_n,
      qdr_q => qdr0_q,
      qdr_cq_n => qdr0_cq_n,
      qdr_cq => qdr0_cq,
      qdr_qvld => qdr0_qvld,
      qdr_dll_off_n => qdr0_dll_off_n,
      phy_rdy => roachf_1024_bao_transpose_qdr_reorder_qdr_phy_ready,
      cal_fail => roachf_1024_bao_transpose_qdr_reorder_qdr_cal_fail,
      usr_addr => roachf_1024_bao_transpose_qdr_reorder_qdr_qdr_addr,
      usr_wr_strb => roachf_1024_bao_transpose_qdr_reorder_qdr_qdr_wr_strb,
      usr_wr_data => roachf_1024_bao_transpose_qdr_reorder_qdr_qdr_wr_data,
      usr_wr_be => roachf_1024_bao_transpose_qdr_reorder_qdr_qdr_wr_be,
      usr_rd_strb => roachf_1024_bao_transpose_qdr_reorder_qdr_qdr_rd_strb,
      usr_rd_data => roachf_1024_bao_transpose_qdr_reorder_qdr_qdr_rd_data,
      usr_rd_dvld => roachf_1024_bao_transpose_qdr_reorder_qdr_qdr_rd_dvld
    );

  qdr0_sniffer : qdr0_sniffer_wrapper
    port map (
      OPB_Clk_config => epb_clk,
      OPB_Rst_config => opb0_OPB_Rst,
      Sl_DBus_config => opb0_Sl_DBus(1056 to 1087),
      Sl_errAck_config => opb0_Sl_errAck(33),
      Sl_retry_config => opb0_Sl_retry(33),
      Sl_toutSup_config => opb0_Sl_toutSup(33),
      Sl_xferAck_config => opb0_Sl_xferAck(33),
      OPB_ABus_config => opb0_OPB_ABus,
      OPB_BE_config => opb0_OPB_BE,
      OPB_DBus_config => opb0_OPB_DBus,
      OPB_RNW_config => opb0_OPB_RNW,
      OPB_select_config => opb0_OPB_select,
      OPB_seqAddr_config => opb0_OPB_seqAddr,
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(1024 to 1055),
      Sl_errAck => opb0_Sl_errAck(32),
      Sl_retry => opb0_Sl_retry(32),
      Sl_toutSup => opb0_Sl_toutSup(32),
      Sl_xferAck => opb0_Sl_xferAck(32),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      qdr_clk => adc0_clk,
      master_addr => roachf_1024_bao_transpose_qdr_reorder_qdr_qdr_addr,
      master_wr_strb => roachf_1024_bao_transpose_qdr_reorder_qdr_qdr_wr_strb,
      master_wr_data => roachf_1024_bao_transpose_qdr_reorder_qdr_qdr_wr_data,
      master_wr_be => roachf_1024_bao_transpose_qdr_reorder_qdr_qdr_wr_be,
      master_rd_strb => roachf_1024_bao_transpose_qdr_reorder_qdr_qdr_rd_strb,
      master_rd_data => roachf_1024_bao_transpose_qdr_reorder_qdr_qdr_rd_data,
      master_rd_dvld => roachf_1024_bao_transpose_qdr_reorder_qdr_qdr_rd_dvld,
      slave_addr => roachf_1024_bao_transpose_qdr_reorder_qdr_address,
      slave_wr_strb => roachf_1024_bao_transpose_qdr_reorder_qdr_wr_en,
      slave_wr_data => roachf_1024_bao_transpose_qdr_reorder_qdr_data_in,
      slave_wr_be => roachf_1024_bao_transpose_qdr_reorder_qdr_be,
      slave_rd_strb => roachf_1024_bao_transpose_qdr_reorder_qdr_rd_en,
      slave_rd_data => roachf_1024_bao_transpose_qdr_reorder_qdr_data_out,
      slave_rd_dvld => open,
      slave_ack => roachf_1024_bao_transpose_qdr_reorder_qdr_ack,
      phy_rdy => roachf_1024_bao_transpose_qdr_reorder_qdr_phy_ready,
      cal_fail => roachf_1024_bao_transpose_qdr_reorder_qdr_cal_fail,
      qdr_reset => roachf_1024_bao_transpose_qdr_reorder_qdr_reset
    );

  qdr1_controller : qdr1_controller_wrapper
    port map (
      clk0 => adc0_clk,
      clk180 => adc0_clk180,
      clk270 => adc0_clk270,
      div_clk => epb_clk,
      reset => roachf_1024_bao_transpose_qdr_reorder1_qdr_reset,
      qdr_k_n => qdr1_k_n,
      qdr_k => qdr1_k,
      qdr_d => qdr1_d,
      qdr_bw_n => qdr1_bw_n,
      qdr_sa => qdr1_sa,
      qdr_w_n => qdr1_w_n,
      qdr_r_n => qdr1_r_n,
      qdr_q => qdr1_q,
      qdr_cq_n => qdr1_cq_n,
      qdr_cq => qdr1_cq,
      qdr_qvld => qdr1_qvld,
      qdr_dll_off_n => qdr1_dll_off_n,
      phy_rdy => roachf_1024_bao_transpose_qdr_reorder1_qdr_phy_ready,
      cal_fail => roachf_1024_bao_transpose_qdr_reorder1_qdr_cal_fail,
      usr_addr => roachf_1024_bao_transpose_qdr_reorder1_qdr_qdr_addr,
      usr_wr_strb => roachf_1024_bao_transpose_qdr_reorder1_qdr_qdr_wr_strb,
      usr_wr_data => roachf_1024_bao_transpose_qdr_reorder1_qdr_qdr_wr_data,
      usr_wr_be => roachf_1024_bao_transpose_qdr_reorder1_qdr_qdr_wr_be,
      usr_rd_strb => roachf_1024_bao_transpose_qdr_reorder1_qdr_qdr_rd_strb,
      usr_rd_data => roachf_1024_bao_transpose_qdr_reorder1_qdr_qdr_rd_data,
      usr_rd_dvld => roachf_1024_bao_transpose_qdr_reorder1_qdr_qdr_rd_dvld
    );

  qdr1_sniffer : qdr1_sniffer_wrapper
    port map (
      OPB_Clk_config => epb_clk,
      OPB_Rst_config => opb0_OPB_Rst,
      Sl_DBus_config => opb0_Sl_DBus(1120 to 1151),
      Sl_errAck_config => opb0_Sl_errAck(35),
      Sl_retry_config => opb0_Sl_retry(35),
      Sl_toutSup_config => opb0_Sl_toutSup(35),
      Sl_xferAck_config => opb0_Sl_xferAck(35),
      OPB_ABus_config => opb0_OPB_ABus,
      OPB_BE_config => opb0_OPB_BE,
      OPB_DBus_config => opb0_OPB_DBus,
      OPB_RNW_config => opb0_OPB_RNW,
      OPB_select_config => opb0_OPB_select,
      OPB_seqAddr_config => opb0_OPB_seqAddr,
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(1088 to 1119),
      Sl_errAck => opb0_Sl_errAck(34),
      Sl_retry => opb0_Sl_retry(34),
      Sl_toutSup => opb0_Sl_toutSup(34),
      Sl_xferAck => opb0_Sl_xferAck(34),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      qdr_clk => adc0_clk,
      master_addr => roachf_1024_bao_transpose_qdr_reorder1_qdr_qdr_addr,
      master_wr_strb => roachf_1024_bao_transpose_qdr_reorder1_qdr_qdr_wr_strb,
      master_wr_data => roachf_1024_bao_transpose_qdr_reorder1_qdr_qdr_wr_data,
      master_wr_be => roachf_1024_bao_transpose_qdr_reorder1_qdr_qdr_wr_be,
      master_rd_strb => roachf_1024_bao_transpose_qdr_reorder1_qdr_qdr_rd_strb,
      master_rd_data => roachf_1024_bao_transpose_qdr_reorder1_qdr_qdr_rd_data,
      master_rd_dvld => roachf_1024_bao_transpose_qdr_reorder1_qdr_qdr_rd_dvld,
      slave_addr => roachf_1024_bao_transpose_qdr_reorder1_qdr_address,
      slave_wr_strb => roachf_1024_bao_transpose_qdr_reorder1_qdr_wr_en,
      slave_wr_data => roachf_1024_bao_transpose_qdr_reorder1_qdr_data_in,
      slave_wr_be => roachf_1024_bao_transpose_qdr_reorder1_qdr_be,
      slave_rd_strb => roachf_1024_bao_transpose_qdr_reorder1_qdr_rd_en,
      slave_rd_data => roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out,
      slave_rd_dvld => open,
      slave_ack => roachf_1024_bao_transpose_qdr_reorder1_qdr_ack,
      phy_rdy => roachf_1024_bao_transpose_qdr_reorder1_qdr_phy_ready,
      cal_fail => roachf_1024_bao_transpose_qdr_reorder1_qdr_cal_fail,
      qdr_reset => roachf_1024_bao_transpose_qdr_reorder1_qdr_reset
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
      Sl_beAck => net_gnd12,
      Sl_DBus => opb1_Sl_DBus,
      Sl_DBusEn => net_vcc12,
      Sl_DBusEn32_63 => net_vcc12,
      Sl_errAck => opb1_Sl_errAck,
      Sl_dwAck => net_gnd12,
      Sl_fwAck => net_gnd12,
      Sl_hwAck => net_gnd12,
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
      Sl_DBus => opb0_Sl_DBus(1152 to 1183),
      Sl_errAck => opb0_Sl_errAck(36),
      Sl_retry => opb0_Sl_retry(36),
      Sl_toutSup => opb0_Sl_toutSup(36),
      Sl_xferAck => opb0_Sl_xferAck(36),
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

