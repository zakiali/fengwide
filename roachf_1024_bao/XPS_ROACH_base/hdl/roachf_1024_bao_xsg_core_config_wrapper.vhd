-------------------------------------------------------------------------------
-- roachf_1024_bao_xsg_core_config_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity roachf_1024_bao_xsg_core_config_wrapper is
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
end roachf_1024_bao_xsg_core_config_wrapper;

architecture STRUCTURE of roachf_1024_bao_xsg_core_config_wrapper is

  component roachf_1024_bao is
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

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of roachf_1024_bao : component is "user_black_box";

begin

  roachf_1024_bao_XSG_core_config : roachf_1024_bao
    port map (
      clk => clk,
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
      roachf_1024_bao_LEDs_led1_arm_gateway => roachf_1024_bao_LEDs_led1_arm_gateway,
      roachf_1024_bao_LEDs_led2_sync_gateway => roachf_1024_bao_LEDs_led2_sync_gateway,
      roachf_1024_bao_LEDs_led4_eq_clip_gateway => roachf_1024_bao_LEDs_led4_eq_clip_gateway,
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

end architecture STRUCTURE;

