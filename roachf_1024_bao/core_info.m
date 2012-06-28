% roachf_1024_bao/XSG core config
roachf_1024_bao_XSG_core_config_type         = 'xps_xsg';
roachf_1024_bao_XSG_core_config_param        = '';

% roachf_1024_bao/ /ant_base
roachf_1024_bao_ant_base_type         = 'xps_sw_reg';
roachf_1024_bao_ant_base_param        = 'in';
roachf_1024_bao_ant_base_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_ant_base_addr_start   = hex2dec('01000000');
roachf_1024_bao_ant_base_addr_end     = hex2dec('010000FF');

% roachf_1024_bao/ /feng_ctl
roachf_1024_bao_feng_ctl_type         = 'xps_sw_reg';
roachf_1024_bao_feng_ctl_param        = 'in';
roachf_1024_bao_feng_ctl_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_feng_ctl_addr_start   = hex2dec('01000100');
roachf_1024_bao_feng_ctl_addr_end     = hex2dec('010001FF');

% roachf_1024_bao/ /fft_shift
roachf_1024_bao_fft_shift_type         = 'xps_sw_reg';
roachf_1024_bao_fft_shift_param        = 'in';
roachf_1024_bao_fft_shift_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_fft_shift_addr_start   = hex2dec('01000200');
roachf_1024_bao_fft_shift_addr_end     = hex2dec('010002FF');

% roachf_1024_bao/ /gbe_sw_port
roachf_1024_bao_gbe_sw_port_type         = 'xps_sw_reg';
roachf_1024_bao_gbe_sw_port_param        = 'in';
roachf_1024_bao_gbe_sw_port_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_gbe_sw_port_addr_start   = hex2dec('01000300');
roachf_1024_bao_gbe_sw_port_addr_end     = hex2dec('010003FF');

% roachf_1024_bao/ /gpu_ip
roachf_1024_bao_gpu_ip_type         = 'xps_sw_reg';
roachf_1024_bao_gpu_ip_param        = 'in';
roachf_1024_bao_gpu_ip_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_gpu_ip_addr_start   = hex2dec('01000400');
roachf_1024_bao_gpu_ip_addr_end     = hex2dec('010004FF');

% roachf_1024_bao/ /gpu_port
roachf_1024_bao_gpu_port_type         = 'xps_sw_reg';
roachf_1024_bao_gpu_port_param        = 'in';
roachf_1024_bao_gpu_port_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_gpu_port_addr_start   = hex2dec('01000500');
roachf_1024_bao_gpu_port_addr_end     = hex2dec('010005FF');

% roachf_1024_bao/ /ip_base
roachf_1024_bao_ip_base_type         = 'xps_sw_reg';
roachf_1024_bao_ip_base_param        = 'in';
roachf_1024_bao_ip_base_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_ip_base_addr_start   = hex2dec('01000600');
roachf_1024_bao_ip_base_addr_end     = hex2dec('010006FF');

% roachf_1024_bao/ /my_ip
roachf_1024_bao_my_ip_type         = 'xps_sw_reg';
roachf_1024_bao_my_ip_param        = 'in';
roachf_1024_bao_my_ip_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_my_ip_addr_start   = hex2dec('01000700');
roachf_1024_bao_my_ip_addr_end     = hex2dec('010007FF');

% roachf_1024_bao/ADC's/adc
roachf_1024_bao_ADC_s_adc_type         = 'xps_adc';
roachf_1024_bao_ADC_s_adc_param        = 'adc = adc0 / interleave = off';
roachf_1024_bao_ADC_s_adc_ip_name      = 'adc_interface';

% roachf_1024_bao/ADC's/adc1
roachf_1024_bao_ADC_s_adc1_type         = 'xps_adc';
roachf_1024_bao_ADC_s_adc1_param        = 'adc = adc1 / interleave = off';
roachf_1024_bao_ADC_s_adc1_ip_name      = 'adc_interface';

% roachf_1024_bao/EQ/quant0/addr
roachf_1024_bao_EQ_quant0_addr_type         = 'xps_sw_reg';
roachf_1024_bao_EQ_quant0_addr_param        = 'in';
roachf_1024_bao_EQ_quant0_addr_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_EQ_quant0_addr_addr_start   = hex2dec('01000800');
roachf_1024_bao_EQ_quant0_addr_addr_end     = hex2dec('010008FF');

% roachf_1024_bao/EQ/quant0/gain
roachf_1024_bao_EQ_quant0_gain_type         = 'xps_sw_reg';
roachf_1024_bao_EQ_quant0_gain_param        = 'in';
roachf_1024_bao_EQ_quant0_gain_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_EQ_quant0_gain_addr_start   = hex2dec('01000900');
roachf_1024_bao_EQ_quant0_gain_addr_end     = hex2dec('010009FF');

% roachf_1024_bao/EQ/quant1/addr
roachf_1024_bao_EQ_quant1_addr_type         = 'xps_sw_reg';
roachf_1024_bao_EQ_quant1_addr_param        = 'in';
roachf_1024_bao_EQ_quant1_addr_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_EQ_quant1_addr_addr_start   = hex2dec('01000A00');
roachf_1024_bao_EQ_quant1_addr_addr_end     = hex2dec('01000AFF');

% roachf_1024_bao/EQ/quant1/gain
roachf_1024_bao_EQ_quant1_gain_type         = 'xps_sw_reg';
roachf_1024_bao_EQ_quant1_gain_param        = 'in';
roachf_1024_bao_EQ_quant1_gain_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_EQ_quant1_gain_addr_start   = hex2dec('01000B00');
roachf_1024_bao_EQ_quant1_gain_addr_end     = hex2dec('01000BFF');

% roachf_1024_bao/EQ/quant2/addr
roachf_1024_bao_EQ_quant2_addr_type         = 'xps_sw_reg';
roachf_1024_bao_EQ_quant2_addr_param        = 'in';
roachf_1024_bao_EQ_quant2_addr_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_EQ_quant2_addr_addr_start   = hex2dec('01000C00');
roachf_1024_bao_EQ_quant2_addr_addr_end     = hex2dec('01000CFF');

% roachf_1024_bao/EQ/quant2/gain
roachf_1024_bao_EQ_quant2_gain_type         = 'xps_sw_reg';
roachf_1024_bao_EQ_quant2_gain_param        = 'in';
roachf_1024_bao_EQ_quant2_gain_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_EQ_quant2_gain_addr_start   = hex2dec('01000D00');
roachf_1024_bao_EQ_quant2_gain_addr_end     = hex2dec('01000DFF');

% roachf_1024_bao/EQ/quant3/addr
roachf_1024_bao_EQ_quant3_addr_type         = 'xps_sw_reg';
roachf_1024_bao_EQ_quant3_addr_param        = 'in';
roachf_1024_bao_EQ_quant3_addr_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_EQ_quant3_addr_addr_start   = hex2dec('01000E00');
roachf_1024_bao_EQ_quant3_addr_addr_end     = hex2dec('01000EFF');

% roachf_1024_bao/EQ/quant3/gain
roachf_1024_bao_EQ_quant3_gain_type         = 'xps_sw_reg';
roachf_1024_bao_EQ_quant3_gain_param        = 'in';
roachf_1024_bao_EQ_quant3_gain_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_EQ_quant3_gain_addr_start   = hex2dec('01000F00');
roachf_1024_bao_EQ_quant3_gain_addr_end     = hex2dec('01000FFF');

% roachf_1024_bao/LEDs/led1_arm
roachf_1024_bao_LEDs_led1_arm_type         = 'xps_gpio';
roachf_1024_bao_LEDs_led1_arm_param        = '';
roachf_1024_bao_LEDs_led1_arm_ip_name      = 'gpio_simulink2ext';

% roachf_1024_bao/LEDs/led2_sync
roachf_1024_bao_LEDs_led2_sync_type         = 'xps_gpio';
roachf_1024_bao_LEDs_led2_sync_param        = '';
roachf_1024_bao_LEDs_led2_sync_ip_name      = 'gpio_simulink2ext';

% roachf_1024_bao/LEDs/led4_eq_clip
roachf_1024_bao_LEDs_led4_eq_clip_type         = 'xps_gpio';
roachf_1024_bao_LEDs_led4_eq_clip_param        = '';
roachf_1024_bao_LEDs_led4_eq_clip_ip_name      = 'gpio_simulink2ext';

% roachf_1024_bao/delay/values
roachf_1024_bao_delay_values_type         = 'xps_sw_reg';
roachf_1024_bao_delay_values_param        = 'in';
roachf_1024_bao_delay_values_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_delay_values_addr_start   = hex2dec('01001000');
roachf_1024_bao_delay_values_addr_end     = hex2dec('010010FF');

% roachf_1024_bao/gpu/10gbetxsnap/addr
roachf_1024_bao_gpu_10gbetxsnap_addr_type         = 'xps_sw_reg';
roachf_1024_bao_gpu_10gbetxsnap_addr_param        = 'out';
roachf_1024_bao_gpu_10gbetxsnap_addr_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_gpu_10gbetxsnap_addr_addr_start   = hex2dec('01001100');
roachf_1024_bao_gpu_10gbetxsnap_addr_addr_end     = hex2dec('010011FF');

% roachf_1024_bao/gpu/10gbetxsnap/bram_lsb
roachf_1024_bao_gpu_10gbetxsnap_bram_lsb_type         = 'xps_bram';
roachf_1024_bao_gpu_10gbetxsnap_bram_lsb_param        = '2048';
roachf_1024_bao_gpu_10gbetxsnap_bram_lsb_ip_name      = 'bram_if';
roachf_1024_bao_gpu_10gbetxsnap_bram_lsb_addr_start   = hex2dec('01002000');
roachf_1024_bao_gpu_10gbetxsnap_bram_lsb_addr_end     = hex2dec('01003FFF');

% roachf_1024_bao/gpu/10gbetxsnap/bram_msb
roachf_1024_bao_gpu_10gbetxsnap_bram_msb_type         = 'xps_bram';
roachf_1024_bao_gpu_10gbetxsnap_bram_msb_param        = '2048';
roachf_1024_bao_gpu_10gbetxsnap_bram_msb_ip_name      = 'bram_if';
roachf_1024_bao_gpu_10gbetxsnap_bram_msb_addr_start   = hex2dec('01004000');
roachf_1024_bao_gpu_10gbetxsnap_bram_msb_addr_end     = hex2dec('01005FFF');

% roachf_1024_bao/gpu/10gbetxsnap/bram_oob
roachf_1024_bao_gpu_10gbetxsnap_bram_oob_type         = 'xps_bram';
roachf_1024_bao_gpu_10gbetxsnap_bram_oob_param        = '2048';
roachf_1024_bao_gpu_10gbetxsnap_bram_oob_ip_name      = 'bram_if';
roachf_1024_bao_gpu_10gbetxsnap_bram_oob_addr_start   = hex2dec('01006000');
roachf_1024_bao_gpu_10gbetxsnap_bram_oob_addr_end     = hex2dec('01007FFF');

% roachf_1024_bao/gpu/10gbetxsnap/ctrl
roachf_1024_bao_gpu_10gbetxsnap_ctrl_type         = 'xps_sw_reg';
roachf_1024_bao_gpu_10gbetxsnap_ctrl_param        = 'in';
roachf_1024_bao_gpu_10gbetxsnap_ctrl_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_gpu_10gbetxsnap_ctrl_addr_start   = hex2dec('01008000');
roachf_1024_bao_gpu_10gbetxsnap_ctrl_addr_end     = hex2dec('010080FF');

% roachf_1024_bao/gpu/gbe2
roachf_1024_bao_gpu_gbe2_type         = 'xps_tengbe';
roachf_1024_bao_gpu_gbe2_param        = '';
roachf_1024_bao_gpu_gbe2_ip_name      = 'ten_gb_eth';
roachf_1024_bao_gpu_gbe2_addr_start   = hex2dec('0100C000');
roachf_1024_bao_gpu_gbe2_addr_end     = hex2dec('0100FFFF');

% roachf_1024_bao/gpu/mcnt/lsb
roachf_1024_bao_gpu_mcnt_lsb_type         = 'xps_sw_reg';
roachf_1024_bao_gpu_mcnt_lsb_param        = 'out';
roachf_1024_bao_gpu_mcnt_lsb_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_gpu_mcnt_lsb_addr_start   = hex2dec('01010000');
roachf_1024_bao_gpu_mcnt_lsb_addr_end     = hex2dec('010100FF');

% roachf_1024_bao/gpu/mcnt/msb
roachf_1024_bao_gpu_mcnt_msb_type         = 'xps_sw_reg';
roachf_1024_bao_gpu_mcnt_msb_param        = 'out';
roachf_1024_bao_gpu_mcnt_msb_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_gpu_mcnt_msb_addr_start   = hex2dec('01010100');
roachf_1024_bao_gpu_mcnt_msb_addr_end     = hex2dec('010101FF');

% roachf_1024_bao/input/selector
roachf_1024_bao_input_selector_type         = 'xps_sw_reg';
roachf_1024_bao_input_selector_param        = 'in';
roachf_1024_bao_input_selector_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_input_selector_addr_start   = hex2dec('01010200');
roachf_1024_bao_input_selector_addr_end     = hex2dec('010102FF');

% roachf_1024_bao/loopback/cnts/data_lsb
roachf_1024_bao_loopback_cnts_data_lsb_type         = 'xps_bram';
roachf_1024_bao_loopback_cnts_data_lsb_param        = '1024';
roachf_1024_bao_loopback_cnts_data_lsb_ip_name      = 'bram_if';
roachf_1024_bao_loopback_cnts_data_lsb_addr_start   = hex2dec('01011000');
roachf_1024_bao_loopback_cnts_data_lsb_addr_end     = hex2dec('01011FFF');

% roachf_1024_bao/loopback/cnts/data_msb
roachf_1024_bao_loopback_cnts_data_msb_type         = 'xps_bram';
roachf_1024_bao_loopback_cnts_data_msb_param        = '1024';
roachf_1024_bao_loopback_cnts_data_msb_ip_name      = 'bram_if';
roachf_1024_bao_loopback_cnts_data_msb_addr_start   = hex2dec('01012000');
roachf_1024_bao_loopback_cnts_data_msb_addr_end     = hex2dec('01012FFF');

% roachf_1024_bao/loopback/loop_cnt
roachf_1024_bao_loopback_loop_cnt_type         = 'xps_sw_reg';
roachf_1024_bao_loopback_loop_cnt_param        = 'out';
roachf_1024_bao_loopback_loop_cnt_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_loopback_loop_cnt_addr_start   = hex2dec('01013000');
roachf_1024_bao_loopback_loop_cnt_addr_end     = hex2dec('010130FF');

% roachf_1024_bao/loopback/loop_err_cnt
roachf_1024_bao_loopback_loop_err_cnt_type         = 'xps_sw_reg';
roachf_1024_bao_loopback_loop_err_cnt_param        = 'out';
roachf_1024_bao_loopback_loop_err_cnt_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_loopback_loop_err_cnt_addr_start   = hex2dec('01013100');
roachf_1024_bao_loopback_loop_err_cnt_addr_end     = hex2dec('010131FF');

% roachf_1024_bao/loopback/loopback mux/gbe_over
roachf_1024_bao_loopback_loopback_mux_gbe_over_type         = 'xps_sw_reg';
roachf_1024_bao_loopback_loopback_mux_gbe_over_param        = 'out';
roachf_1024_bao_loopback_loopback_mux_gbe_over_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_loopback_loopback_mux_gbe_over_addr_start   = hex2dec('01080000');
roachf_1024_bao_loopback_loopback_mux_gbe_over_addr_end     = hex2dec('010800FF');

% roachf_1024_bao/loopback/loopback mux/gbe_und
roachf_1024_bao_loopback_loopback_mux_gbe_und_type         = 'xps_sw_reg';
roachf_1024_bao_loopback_loopback_mux_gbe_und_param        = 'out';
roachf_1024_bao_loopback_loopback_mux_gbe_und_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_loopback_loopback_mux_gbe_und_addr_start   = hex2dec('01080100');
roachf_1024_bao_loopback_loopback_mux_gbe_und_addr_end     = hex2dec('010801FF');

% roachf_1024_bao/loopback/loopback mux/lb_over
roachf_1024_bao_loopback_loopback_mux_lb_over_type         = 'xps_sw_reg';
roachf_1024_bao_loopback_loopback_mux_lb_over_param        = 'out';
roachf_1024_bao_loopback_loopback_mux_lb_over_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_loopback_loopback_mux_lb_over_addr_start   = hex2dec('01080200');
roachf_1024_bao_loopback_loopback_mux_lb_over_addr_end     = hex2dec('010802FF');

% roachf_1024_bao/loopback/loopback mux/lb_und
roachf_1024_bao_loopback_loopback_mux_lb_und_type         = 'xps_sw_reg';
roachf_1024_bao_loopback_loopback_mux_lb_und_param        = 'out';
roachf_1024_bao_loopback_loopback_mux_lb_und_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_loopback_loopback_mux_lb_und_addr_start   = hex2dec('01080300');
roachf_1024_bao_loopback_loopback_mux_lb_und_addr_end     = hex2dec('010803FF');

% roachf_1024_bao/loopback/loopback_fifo/lb_err_cnt
roachf_1024_bao_loopback_loopback_fifo_lb_err_cnt_type         = 'xps_sw_reg';
roachf_1024_bao_loopback_loopback_fifo_lb_err_cnt_param        = 'out';
roachf_1024_bao_loopback_loopback_fifo_lb_err_cnt_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_loopback_loopback_fifo_lb_err_cnt_addr_start   = hex2dec('01080400');
roachf_1024_bao_loopback_loopback_fifo_lb_err_cnt_addr_end     = hex2dec('010804FF');

% roachf_1024_bao/loopback/rx_cnt
roachf_1024_bao_loopback_rx_cnt_type         = 'xps_sw_reg';
roachf_1024_bao_loopback_rx_cnt_param        = 'out';
roachf_1024_bao_loopback_rx_cnt_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_loopback_rx_cnt_addr_start   = hex2dec('01080500');
roachf_1024_bao_loopback_rx_cnt_addr_end     = hex2dec('010805FF');

% roachf_1024_bao/loopback/rx_err_cnt
roachf_1024_bao_loopback_rx_err_cnt_type         = 'xps_sw_reg';
roachf_1024_bao_loopback_rx_err_cnt_param        = 'out';
roachf_1024_bao_loopback_rx_err_cnt_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_loopback_rx_err_cnt_addr_start   = hex2dec('01080600');
roachf_1024_bao_loopback_rx_err_cnt_addr_end     = hex2dec('010806FF');

% roachf_1024_bao/loopback/rx_pkt_fifo/Santa/2big
roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2big_type         = 'xps_sw_reg';
roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2big_param        = 'out';
roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2big_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2big_addr_start   = hex2dec('01080700');
roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2big_addr_end     = hex2dec('010807FF');

% roachf_1024_bao/loopback/rx_pkt_fifo/Santa/2small
roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2small_type         = 'xps_sw_reg';
roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2small_param        = 'out';
roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2small_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2small_addr_start   = hex2dec('01080800');
roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2small_addr_end     = hex2dec('010808FF');

% roachf_1024_bao/loopback/rx_pkt_fifo/gbe_err_cnt
roachf_1024_bao_loopback_rx_pkt_fifo_gbe_err_cnt_type         = 'xps_sw_reg';
roachf_1024_bao_loopback_rx_pkt_fifo_gbe_err_cnt_param        = 'out';
roachf_1024_bao_loopback_rx_pkt_fifo_gbe_err_cnt_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_loopback_rx_pkt_fifo_gbe_err_cnt_addr_start   = hex2dec('01080900');
roachf_1024_bao_loopback_rx_pkt_fifo_gbe_err_cnt_addr_end     = hex2dec('010809FF');

% roachf_1024_bao/seed/data
roachf_1024_bao_seed_data_type         = 'xps_sw_reg';
roachf_1024_bao_seed_data_param        = 'in';
roachf_1024_bao_seed_data_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_seed_data_addr_start   = hex2dec('01080A00');
roachf_1024_bao_seed_data_addr_end     = hex2dec('01080AFF');

% roachf_1024_bao/status/gbe_gpu
roachf_1024_bao_status_gbe_gpu_type         = 'xps_sw_reg';
roachf_1024_bao_status_gbe_gpu_param        = 'out';
roachf_1024_bao_status_gbe_gpu_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_status_gbe_gpu_addr_start   = hex2dec('01080B00');
roachf_1024_bao_status_gbe_gpu_addr_end     = hex2dec('01080BFF');

% roachf_1024_bao/status/gbe_sw
roachf_1024_bao_status_gbe_sw_type         = 'xps_sw_reg';
roachf_1024_bao_status_gbe_sw_param        = 'out';
roachf_1024_bao_status_gbe_sw_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_status_gbe_sw_addr_start   = hex2dec('01080C00');
roachf_1024_bao_status_gbe_sw_addr_end     = hex2dec('01080CFF');

% roachf_1024_bao/status/swgbe_bframe
roachf_1024_bao_status_swgbe_bframe_type         = 'xps_sw_reg';
roachf_1024_bao_status_swgbe_bframe_param        = 'out';
roachf_1024_bao_status_swgbe_bframe_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_status_swgbe_bframe_addr_start   = hex2dec('01080D00');
roachf_1024_bao_status_swgbe_bframe_addr_end     = hex2dec('01080DFF');

% roachf_1024_bao/status/swgbe_oflow
roachf_1024_bao_status_swgbe_oflow_type         = 'xps_sw_reg';
roachf_1024_bao_status_swgbe_oflow_param        = 'out';
roachf_1024_bao_status_swgbe_oflow_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_status_swgbe_oflow_addr_start   = hex2dec('01080E00');
roachf_1024_bao_status_swgbe_oflow_addr_end     = hex2dec('01080EFF');

% roachf_1024_bao/status/swgbe_orun
roachf_1024_bao_status_swgbe_orun_type         = 'xps_sw_reg';
roachf_1024_bao_status_swgbe_orun_param        = 'out';
roachf_1024_bao_status_swgbe_orun_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_status_swgbe_orun_addr_start   = hex2dec('01080F00');
roachf_1024_bao_status_swgbe_orun_addr_end     = hex2dec('01080FFF');

% roachf_1024_bao/switch/10gberxsnap/addr
roachf_1024_bao_switch_10gberxsnap_addr_type         = 'xps_sw_reg';
roachf_1024_bao_switch_10gberxsnap_addr_param        = 'out';
roachf_1024_bao_switch_10gberxsnap_addr_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_switch_10gberxsnap_addr_addr_start   = hex2dec('01081000');
roachf_1024_bao_switch_10gberxsnap_addr_addr_end     = hex2dec('010810FF');

% roachf_1024_bao/switch/10gberxsnap/bram_lsb
roachf_1024_bao_switch_10gberxsnap_bram_lsb_type         = 'xps_bram';
roachf_1024_bao_switch_10gberxsnap_bram_lsb_param        = '1024';
roachf_1024_bao_switch_10gberxsnap_bram_lsb_ip_name      = 'bram_if';
roachf_1024_bao_switch_10gberxsnap_bram_lsb_addr_start   = hex2dec('01082000');
roachf_1024_bao_switch_10gberxsnap_bram_lsb_addr_end     = hex2dec('01082FFF');

% roachf_1024_bao/switch/10gberxsnap/bram_msb
roachf_1024_bao_switch_10gberxsnap_bram_msb_type         = 'xps_bram';
roachf_1024_bao_switch_10gberxsnap_bram_msb_param        = '1024';
roachf_1024_bao_switch_10gberxsnap_bram_msb_ip_name      = 'bram_if';
roachf_1024_bao_switch_10gberxsnap_bram_msb_addr_start   = hex2dec('01083000');
roachf_1024_bao_switch_10gberxsnap_bram_msb_addr_end     = hex2dec('01083FFF');

% roachf_1024_bao/switch/10gberxsnap/bram_oob
roachf_1024_bao_switch_10gberxsnap_bram_oob_type         = 'xps_bram';
roachf_1024_bao_switch_10gberxsnap_bram_oob_param        = '1024';
roachf_1024_bao_switch_10gberxsnap_bram_oob_ip_name      = 'bram_if';
roachf_1024_bao_switch_10gberxsnap_bram_oob_addr_start   = hex2dec('01084000');
roachf_1024_bao_switch_10gberxsnap_bram_oob_addr_end     = hex2dec('01084FFF');

% roachf_1024_bao/switch/10gberxsnap/ctrl
roachf_1024_bao_switch_10gberxsnap_ctrl_type         = 'xps_sw_reg';
roachf_1024_bao_switch_10gberxsnap_ctrl_param        = 'in';
roachf_1024_bao_switch_10gberxsnap_ctrl_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_switch_10gberxsnap_ctrl_addr_start   = hex2dec('01085000');
roachf_1024_bao_switch_10gberxsnap_ctrl_addr_end     = hex2dec('010850FF');

% roachf_1024_bao/switch/10gbetxsnap/addr
roachf_1024_bao_switch_10gbetxsnap_addr_type         = 'xps_sw_reg';
roachf_1024_bao_switch_10gbetxsnap_addr_param        = 'out';
roachf_1024_bao_switch_10gbetxsnap_addr_ip_name      = 'opb_register_simulink2ppc';
roachf_1024_bao_switch_10gbetxsnap_addr_addr_start   = hex2dec('01085100');
roachf_1024_bao_switch_10gbetxsnap_addr_addr_end     = hex2dec('010851FF');

% roachf_1024_bao/switch/10gbetxsnap/bram_lsb
roachf_1024_bao_switch_10gbetxsnap_bram_lsb_type         = 'xps_bram';
roachf_1024_bao_switch_10gbetxsnap_bram_lsb_param        = '1024';
roachf_1024_bao_switch_10gbetxsnap_bram_lsb_ip_name      = 'bram_if';
roachf_1024_bao_switch_10gbetxsnap_bram_lsb_addr_start   = hex2dec('01086000');
roachf_1024_bao_switch_10gbetxsnap_bram_lsb_addr_end     = hex2dec('01086FFF');

% roachf_1024_bao/switch/10gbetxsnap/bram_msb
roachf_1024_bao_switch_10gbetxsnap_bram_msb_type         = 'xps_bram';
roachf_1024_bao_switch_10gbetxsnap_bram_msb_param        = '1024';
roachf_1024_bao_switch_10gbetxsnap_bram_msb_ip_name      = 'bram_if';
roachf_1024_bao_switch_10gbetxsnap_bram_msb_addr_start   = hex2dec('01087000');
roachf_1024_bao_switch_10gbetxsnap_bram_msb_addr_end     = hex2dec('01087FFF');

% roachf_1024_bao/switch/10gbetxsnap/bram_oob
roachf_1024_bao_switch_10gbetxsnap_bram_oob_type         = 'xps_bram';
roachf_1024_bao_switch_10gbetxsnap_bram_oob_param        = '1024';
roachf_1024_bao_switch_10gbetxsnap_bram_oob_ip_name      = 'bram_if';
roachf_1024_bao_switch_10gbetxsnap_bram_oob_addr_start   = hex2dec('01088000');
roachf_1024_bao_switch_10gbetxsnap_bram_oob_addr_end     = hex2dec('01088FFF');

% roachf_1024_bao/switch/10gbetxsnap/ctrl
roachf_1024_bao_switch_10gbetxsnap_ctrl_type         = 'xps_sw_reg';
roachf_1024_bao_switch_10gbetxsnap_ctrl_param        = 'in';
roachf_1024_bao_switch_10gbetxsnap_ctrl_ip_name      = 'opb_register_ppc2simulink';
roachf_1024_bao_switch_10gbetxsnap_ctrl_addr_start   = hex2dec('01089000');
roachf_1024_bao_switch_10gbetxsnap_ctrl_addr_end     = hex2dec('010890FF');

% roachf_1024_bao/switch/cnts/data_lsb
roachf_1024_bao_switch_cnts_data_lsb_type         = 'xps_bram';
roachf_1024_bao_switch_cnts_data_lsb_param        = '1024';
roachf_1024_bao_switch_cnts_data_lsb_ip_name      = 'bram_if';
roachf_1024_bao_switch_cnts_data_lsb_addr_start   = hex2dec('0108A000');
roachf_1024_bao_switch_cnts_data_lsb_addr_end     = hex2dec('0108AFFF');

% roachf_1024_bao/switch/cnts/data_msb
roachf_1024_bao_switch_cnts_data_msb_type         = 'xps_bram';
roachf_1024_bao_switch_cnts_data_msb_param        = '1024';
roachf_1024_bao_switch_cnts_data_msb_ip_name      = 'bram_if';
roachf_1024_bao_switch_cnts_data_msb_addr_start   = hex2dec('0108B000');
roachf_1024_bao_switch_cnts_data_msb_addr_end     = hex2dec('0108BFFF');

% roachf_1024_bao/switch/gbe3
roachf_1024_bao_switch_gbe3_type         = 'xps_tengbe_v2';
roachf_1024_bao_switch_gbe3_param        = '';
roachf_1024_bao_switch_gbe3_ip_name      = 'kat_ten_gb_eth';
roachf_1024_bao_switch_gbe3_addr_start   = hex2dec('0108C000');
roachf_1024_bao_switch_gbe3_addr_end     = hex2dec('0108FFFF');

% roachf_1024_bao/transpose/qdr_reorder/qdr
roachf_1024_bao_transpose_qdr_reorder_qdr_type         = 'xps_qdr';
roachf_1024_bao_transpose_qdr_reorder_qdr_param        = '';
roachf_1024_bao_transpose_qdr_reorder_qdr_addr_start   = hex2dec('02000000');
roachf_1024_bao_transpose_qdr_reorder_qdr_addr_end     = hex2dec('02ffffff');

% roachf_1024_bao/transpose/qdr_reorder1/qdr
roachf_1024_bao_transpose_qdr_reorder1_qdr_type         = 'xps_qdr';
roachf_1024_bao_transpose_qdr_reorder1_qdr_param        = '';
roachf_1024_bao_transpose_qdr_reorder1_qdr_addr_start   = hex2dec('03000000');
roachf_1024_bao_transpose_qdr_reorder1_qdr_addr_end     = hex2dec('03ffffff');

% OPB to OPB bridge added at 0x1080000
OPB_to_OPB_bridge_added_at_0x1080000_type         = 'xps_opb2opb';
OPB_to_OPB_bridge_added_at_0x1080000_param        = '';

