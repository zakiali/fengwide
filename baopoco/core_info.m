% baopoco/XSG core config
baopoco_XSG_core_config_type         = 'xps_xsg';
baopoco_XSG_core_config_param        = '';

% baopoco/ADC's/adc
baopoco_ADC_s_adc_type         = 'xps_adc';
baopoco_ADC_s_adc_param        = 'adc = adc0 / interleave = off';
baopoco_ADC_s_adc_ip_name      = 'adc_interface';

% baopoco/ADC's/adc1
baopoco_ADC_s_adc1_type         = 'xps_adc';
baopoco_ADC_s_adc1_param        = 'adc = adc1 / interleave = off';
baopoco_ADC_s_adc1_ip_name      = 'adc_interface';

% baopoco/acc_len
baopoco_acc_len_type         = 'xps_sw_reg';
baopoco_acc_len_param        = 'in';
baopoco_acc_len_ip_name      = 'opb_register_ppc2simulink';
baopoco_acc_len_addr_start   = hex2dec('01000000');
baopoco_acc_len_addr_end     = hex2dec('010000FF');

% baopoco/acc_num
baopoco_acc_num_type         = 'xps_sw_reg';
baopoco_acc_num_param        = 'out';
baopoco_acc_num_ip_name      = 'opb_register_simulink2ppc';
baopoco_acc_num_addr_start   = hex2dec('01000100');
baopoco_acc_num_addr_end     = hex2dec('010001FF');

% baopoco/adc_sum0
baopoco_adc_sum0_type         = 'xps_sw_reg';
baopoco_adc_sum0_param        = 'out';
baopoco_adc_sum0_ip_name      = 'opb_register_simulink2ppc';
baopoco_adc_sum0_addr_start   = hex2dec('01000200');
baopoco_adc_sum0_addr_end     = hex2dec('010002FF');

% baopoco/adc_sum1
baopoco_adc_sum1_type         = 'xps_sw_reg';
baopoco_adc_sum1_param        = 'out';
baopoco_adc_sum1_ip_name      = 'opb_register_simulink2ppc';
baopoco_adc_sum1_addr_start   = hex2dec('01000300');
baopoco_adc_sum1_addr_end     = hex2dec('010003FF');

% baopoco/adc_sum2
baopoco_adc_sum2_type         = 'xps_sw_reg';
baopoco_adc_sum2_param        = 'out';
baopoco_adc_sum2_ip_name      = 'opb_register_simulink2ppc';
baopoco_adc_sum2_addr_start   = hex2dec('01000400');
baopoco_adc_sum2_addr_end     = hex2dec('010004FF');

% baopoco/adc_sum3
baopoco_adc_sum3_type         = 'xps_sw_reg';
baopoco_adc_sum3_param        = 'out';
baopoco_adc_sum3_ip_name      = 'opb_register_simulink2ppc';
baopoco_adc_sum3_addr_start   = hex2dec('01000500');
baopoco_adc_sum3_addr_end     = hex2dec('010005FF');

% baopoco/adc_sum_sq0
baopoco_adc_sum_sq0_type         = 'xps_sw_reg';
baopoco_adc_sum_sq0_param        = 'out';
baopoco_adc_sum_sq0_ip_name      = 'opb_register_simulink2ppc';
baopoco_adc_sum_sq0_addr_start   = hex2dec('01000600');
baopoco_adc_sum_sq0_addr_end     = hex2dec('010006FF');

% baopoco/adc_sum_sq1
baopoco_adc_sum_sq1_type         = 'xps_sw_reg';
baopoco_adc_sum_sq1_param        = 'out';
baopoco_adc_sum_sq1_ip_name      = 'opb_register_simulink2ppc';
baopoco_adc_sum_sq1_addr_start   = hex2dec('01000700');
baopoco_adc_sum_sq1_addr_end     = hex2dec('010007FF');

% baopoco/adc_sum_sq2
baopoco_adc_sum_sq2_type         = 'xps_sw_reg';
baopoco_adc_sum_sq2_param        = 'out';
baopoco_adc_sum_sq2_ip_name      = 'opb_register_simulink2ppc';
baopoco_adc_sum_sq2_addr_start   = hex2dec('01000800');
baopoco_adc_sum_sq2_addr_end     = hex2dec('010008FF');

% baopoco/adc_sum_sq3
baopoco_adc_sum_sq3_type         = 'xps_sw_reg';
baopoco_adc_sum_sq3_param        = 'out';
baopoco_adc_sum_sq3_ip_name      = 'opb_register_simulink2ppc';
baopoco_adc_sum_sq3_addr_start   = hex2dec('01000900');
baopoco_adc_sum_sq3_addr_end     = hex2dec('010009FF');

% baopoco/ctrl
baopoco_ctrl_type         = 'xps_sw_reg';
baopoco_ctrl_param        = 'in';
baopoco_ctrl_ip_name      = 'opb_register_ppc2simulink';
baopoco_ctrl_addr_start   = hex2dec('01000A00');
baopoco_ctrl_addr_end     = hex2dec('01000AFF');

% baopoco/delay/delay_data
baopoco_delay_delay_data_type         = 'xps_sw_reg';
baopoco_delay_delay_data_param        = 'in';
baopoco_delay_delay_data_ip_name      = 'opb_register_ppc2simulink';
baopoco_delay_delay_data_addr_start   = hex2dec('01000B00');
baopoco_delay_delay_data_addr_end     = hex2dec('01000BFF');

% baopoco/dir_x0/aa/real
baopoco_dir_x0_aa_real_type         = 'xps_bram';
baopoco_dir_x0_aa_real_param        = '1024';
baopoco_dir_x0_aa_real_ip_name      = 'bram_if';
baopoco_dir_x0_aa_real_addr_start   = hex2dec('01001000');
baopoco_dir_x0_aa_real_addr_end     = hex2dec('01001FFF');

% baopoco/dir_x0/ab/imag
baopoco_dir_x0_ab_imag_type         = 'xps_bram';
baopoco_dir_x0_ab_imag_param        = '1024';
baopoco_dir_x0_ab_imag_ip_name      = 'bram_if';
baopoco_dir_x0_ab_imag_addr_start   = hex2dec('01002000');
baopoco_dir_x0_ab_imag_addr_end     = hex2dec('01002FFF');

% baopoco/dir_x0/ab/real
baopoco_dir_x0_ab_real_type         = 'xps_bram';
baopoco_dir_x0_ab_real_param        = '1024';
baopoco_dir_x0_ab_real_ip_name      = 'bram_if';
baopoco_dir_x0_ab_real_addr_start   = hex2dec('01003000');
baopoco_dir_x0_ab_real_addr_end     = hex2dec('01003FFF');

% baopoco/dir_x0/ac/imag
baopoco_dir_x0_ac_imag_type         = 'xps_bram';
baopoco_dir_x0_ac_imag_param        = '1024';
baopoco_dir_x0_ac_imag_ip_name      = 'bram_if';
baopoco_dir_x0_ac_imag_addr_start   = hex2dec('01004000');
baopoco_dir_x0_ac_imag_addr_end     = hex2dec('01004FFF');

% baopoco/dir_x0/ac/real
baopoco_dir_x0_ac_real_type         = 'xps_bram';
baopoco_dir_x0_ac_real_param        = '1024';
baopoco_dir_x0_ac_real_ip_name      = 'bram_if';
baopoco_dir_x0_ac_real_addr_start   = hex2dec('01005000');
baopoco_dir_x0_ac_real_addr_end     = hex2dec('01005FFF');

% baopoco/dir_x0/ad/imag
baopoco_dir_x0_ad_imag_type         = 'xps_bram';
baopoco_dir_x0_ad_imag_param        = '1024';
baopoco_dir_x0_ad_imag_ip_name      = 'bram_if';
baopoco_dir_x0_ad_imag_addr_start   = hex2dec('01006000');
baopoco_dir_x0_ad_imag_addr_end     = hex2dec('01006FFF');

% baopoco/dir_x0/ad/real
baopoco_dir_x0_ad_real_type         = 'xps_bram';
baopoco_dir_x0_ad_real_param        = '1024';
baopoco_dir_x0_ad_real_ip_name      = 'bram_if';
baopoco_dir_x0_ad_real_addr_start   = hex2dec('01007000');
baopoco_dir_x0_ad_real_addr_end     = hex2dec('01007FFF');

% baopoco/dir_x0/bb/real
baopoco_dir_x0_bb_real_type         = 'xps_bram';
baopoco_dir_x0_bb_real_param        = '1024';
baopoco_dir_x0_bb_real_ip_name      = 'bram_if';
baopoco_dir_x0_bb_real_addr_start   = hex2dec('01008000');
baopoco_dir_x0_bb_real_addr_end     = hex2dec('01008FFF');

% baopoco/dir_x0/bc/imag
baopoco_dir_x0_bc_imag_type         = 'xps_bram';
baopoco_dir_x0_bc_imag_param        = '1024';
baopoco_dir_x0_bc_imag_ip_name      = 'bram_if';
baopoco_dir_x0_bc_imag_addr_start   = hex2dec('01009000');
baopoco_dir_x0_bc_imag_addr_end     = hex2dec('01009FFF');

% baopoco/dir_x0/bc/real
baopoco_dir_x0_bc_real_type         = 'xps_bram';
baopoco_dir_x0_bc_real_param        = '1024';
baopoco_dir_x0_bc_real_ip_name      = 'bram_if';
baopoco_dir_x0_bc_real_addr_start   = hex2dec('0100A000');
baopoco_dir_x0_bc_real_addr_end     = hex2dec('0100AFFF');

% baopoco/dir_x0/bd/imag
baopoco_dir_x0_bd_imag_type         = 'xps_bram';
baopoco_dir_x0_bd_imag_param        = '1024';
baopoco_dir_x0_bd_imag_ip_name      = 'bram_if';
baopoco_dir_x0_bd_imag_addr_start   = hex2dec('0100B000');
baopoco_dir_x0_bd_imag_addr_end     = hex2dec('0100BFFF');

% baopoco/dir_x0/bd/real
baopoco_dir_x0_bd_real_type         = 'xps_bram';
baopoco_dir_x0_bd_real_param        = '1024';
baopoco_dir_x0_bd_real_ip_name      = 'bram_if';
baopoco_dir_x0_bd_real_addr_start   = hex2dec('0100C000');
baopoco_dir_x0_bd_real_addr_end     = hex2dec('0100CFFF');

% baopoco/dir_x0/cc/real
baopoco_dir_x0_cc_real_type         = 'xps_bram';
baopoco_dir_x0_cc_real_param        = '1024';
baopoco_dir_x0_cc_real_ip_name      = 'bram_if';
baopoco_dir_x0_cc_real_addr_start   = hex2dec('0100D000');
baopoco_dir_x0_cc_real_addr_end     = hex2dec('0100DFFF');

% baopoco/dir_x0/cd/imag
baopoco_dir_x0_cd_imag_type         = 'xps_bram';
baopoco_dir_x0_cd_imag_param        = '1024';
baopoco_dir_x0_cd_imag_ip_name      = 'bram_if';
baopoco_dir_x0_cd_imag_addr_start   = hex2dec('0100E000');
baopoco_dir_x0_cd_imag_addr_end     = hex2dec('0100EFFF');

% baopoco/dir_x0/cd/real
baopoco_dir_x0_cd_real_type         = 'xps_bram';
baopoco_dir_x0_cd_real_param        = '1024';
baopoco_dir_x0_cd_real_ip_name      = 'bram_if';
baopoco_dir_x0_cd_real_addr_start   = hex2dec('0100F000');
baopoco_dir_x0_cd_real_addr_end     = hex2dec('0100FFFF');

% baopoco/dir_x0/dd/real
baopoco_dir_x0_dd_real_type         = 'xps_bram';
baopoco_dir_x0_dd_real_param        = '1024';
baopoco_dir_x0_dd_real_ip_name      = 'bram_if';
baopoco_dir_x0_dd_real_addr_start   = hex2dec('01010000');
baopoco_dir_x0_dd_real_addr_end     = hex2dec('01010FFF');

% baopoco/dir_x1/aa/real
baopoco_dir_x1_aa_real_type         = 'xps_bram';
baopoco_dir_x1_aa_real_param        = '1024';
baopoco_dir_x1_aa_real_ip_name      = 'bram_if';
baopoco_dir_x1_aa_real_addr_start   = hex2dec('01011000');
baopoco_dir_x1_aa_real_addr_end     = hex2dec('01011FFF');

% baopoco/dir_x1/ab/imag
baopoco_dir_x1_ab_imag_type         = 'xps_bram';
baopoco_dir_x1_ab_imag_param        = '1024';
baopoco_dir_x1_ab_imag_ip_name      = 'bram_if';
baopoco_dir_x1_ab_imag_addr_start   = hex2dec('01012000');
baopoco_dir_x1_ab_imag_addr_end     = hex2dec('01012FFF');

% baopoco/dir_x1/ab/real
baopoco_dir_x1_ab_real_type         = 'xps_bram';
baopoco_dir_x1_ab_real_param        = '1024';
baopoco_dir_x1_ab_real_ip_name      = 'bram_if';
baopoco_dir_x1_ab_real_addr_start   = hex2dec('01080000');
baopoco_dir_x1_ab_real_addr_end     = hex2dec('01080FFF');

% baopoco/dir_x1/ac/imag
baopoco_dir_x1_ac_imag_type         = 'xps_bram';
baopoco_dir_x1_ac_imag_param        = '1024';
baopoco_dir_x1_ac_imag_ip_name      = 'bram_if';
baopoco_dir_x1_ac_imag_addr_start   = hex2dec('01081000');
baopoco_dir_x1_ac_imag_addr_end     = hex2dec('01081FFF');

% baopoco/dir_x1/ac/real
baopoco_dir_x1_ac_real_type         = 'xps_bram';
baopoco_dir_x1_ac_real_param        = '1024';
baopoco_dir_x1_ac_real_ip_name      = 'bram_if';
baopoco_dir_x1_ac_real_addr_start   = hex2dec('01082000');
baopoco_dir_x1_ac_real_addr_end     = hex2dec('01082FFF');

% baopoco/dir_x1/ad/imag
baopoco_dir_x1_ad_imag_type         = 'xps_bram';
baopoco_dir_x1_ad_imag_param        = '1024';
baopoco_dir_x1_ad_imag_ip_name      = 'bram_if';
baopoco_dir_x1_ad_imag_addr_start   = hex2dec('01083000');
baopoco_dir_x1_ad_imag_addr_end     = hex2dec('01083FFF');

% baopoco/dir_x1/ad/real
baopoco_dir_x1_ad_real_type         = 'xps_bram';
baopoco_dir_x1_ad_real_param        = '1024';
baopoco_dir_x1_ad_real_ip_name      = 'bram_if';
baopoco_dir_x1_ad_real_addr_start   = hex2dec('01084000');
baopoco_dir_x1_ad_real_addr_end     = hex2dec('01084FFF');

% baopoco/dir_x1/bb/real
baopoco_dir_x1_bb_real_type         = 'xps_bram';
baopoco_dir_x1_bb_real_param        = '1024';
baopoco_dir_x1_bb_real_ip_name      = 'bram_if';
baopoco_dir_x1_bb_real_addr_start   = hex2dec('01085000');
baopoco_dir_x1_bb_real_addr_end     = hex2dec('01085FFF');

% baopoco/dir_x1/bc/imag
baopoco_dir_x1_bc_imag_type         = 'xps_bram';
baopoco_dir_x1_bc_imag_param        = '1024';
baopoco_dir_x1_bc_imag_ip_name      = 'bram_if';
baopoco_dir_x1_bc_imag_addr_start   = hex2dec('01086000');
baopoco_dir_x1_bc_imag_addr_end     = hex2dec('01086FFF');

% baopoco/dir_x1/bc/real
baopoco_dir_x1_bc_real_type         = 'xps_bram';
baopoco_dir_x1_bc_real_param        = '1024';
baopoco_dir_x1_bc_real_ip_name      = 'bram_if';
baopoco_dir_x1_bc_real_addr_start   = hex2dec('01087000');
baopoco_dir_x1_bc_real_addr_end     = hex2dec('01087FFF');

% baopoco/dir_x1/bd/imag
baopoco_dir_x1_bd_imag_type         = 'xps_bram';
baopoco_dir_x1_bd_imag_param        = '1024';
baopoco_dir_x1_bd_imag_ip_name      = 'bram_if';
baopoco_dir_x1_bd_imag_addr_start   = hex2dec('01088000');
baopoco_dir_x1_bd_imag_addr_end     = hex2dec('01088FFF');

% baopoco/dir_x1/bd/real
baopoco_dir_x1_bd_real_type         = 'xps_bram';
baopoco_dir_x1_bd_real_param        = '1024';
baopoco_dir_x1_bd_real_ip_name      = 'bram_if';
baopoco_dir_x1_bd_real_addr_start   = hex2dec('01089000');
baopoco_dir_x1_bd_real_addr_end     = hex2dec('01089FFF');

% baopoco/dir_x1/cc/real
baopoco_dir_x1_cc_real_type         = 'xps_bram';
baopoco_dir_x1_cc_real_param        = '1024';
baopoco_dir_x1_cc_real_ip_name      = 'bram_if';
baopoco_dir_x1_cc_real_addr_start   = hex2dec('0108A000');
baopoco_dir_x1_cc_real_addr_end     = hex2dec('0108AFFF');

% baopoco/dir_x1/cd/imag
baopoco_dir_x1_cd_imag_type         = 'xps_bram';
baopoco_dir_x1_cd_imag_param        = '1024';
baopoco_dir_x1_cd_imag_ip_name      = 'bram_if';
baopoco_dir_x1_cd_imag_addr_start   = hex2dec('0108B000');
baopoco_dir_x1_cd_imag_addr_end     = hex2dec('0108BFFF');

% baopoco/dir_x1/cd/real
baopoco_dir_x1_cd_real_type         = 'xps_bram';
baopoco_dir_x1_cd_real_param        = '1024';
baopoco_dir_x1_cd_real_ip_name      = 'bram_if';
baopoco_dir_x1_cd_real_addr_start   = hex2dec('0108C000');
baopoco_dir_x1_cd_real_addr_end     = hex2dec('0108CFFF');

% baopoco/dir_x1/dd/real
baopoco_dir_x1_dd_real_type         = 'xps_bram';
baopoco_dir_x1_dd_real_param        = '1024';
baopoco_dir_x1_dd_real_ip_name      = 'bram_if';
baopoco_dir_x1_dd_real_addr_start   = hex2dec('0108D000');
baopoco_dir_x1_dd_real_addr_end     = hex2dec('0108DFFF');

% baopoco/fft_shift
baopoco_fft_shift_type         = 'xps_sw_reg';
baopoco_fft_shift_param        = 'in';
baopoco_fft_shift_ip_name      = 'opb_register_ppc2simulink';
baopoco_fft_shift_addr_start   = hex2dec('0108E000');
baopoco_fft_shift_addr_end     = hex2dec('0108E0FF');

% baopoco/insel/insel_data
baopoco_insel_insel_data_type         = 'xps_sw_reg';
baopoco_insel_insel_data_param        = 'in';
baopoco_insel_insel_data_ip_name      = 'opb_register_ppc2simulink';
baopoco_insel_insel_data_addr_start   = hex2dec('0108E100');
baopoco_insel_insel_data_addr_end     = hex2dec('0108E1FF');

% baopoco/led0_adc_clip
baopoco_led0_adc_clip_type         = 'xps_gpio';
baopoco_led0_adc_clip_param        = '';
baopoco_led0_adc_clip_ip_name      = 'gpio_simulink2ext';

% baopoco/led1_mrst
baopoco_led1_mrst_type         = 'xps_gpio';
baopoco_led1_mrst_param        = '';
baopoco_led1_mrst_ip_name      = 'gpio_simulink2ext';

% baopoco/led2_sync
baopoco_led2_sync_type         = 'xps_gpio';
baopoco_led2_sync_param        = '';
baopoco_led2_sync_ip_name      = 'gpio_simulink2ext';

% baopoco/led3_new_acc
baopoco_led3_new_acc_type         = 'xps_gpio';
baopoco_led3_new_acc_param        = '';
baopoco_led3_new_acc_ip_name      = 'gpio_simulink2ext';

% baopoco/quant0/addr
baopoco_quant0_addr_type         = 'xps_sw_reg';
baopoco_quant0_addr_param        = 'in';
baopoco_quant0_addr_ip_name      = 'opb_register_ppc2simulink';
baopoco_quant0_addr_addr_start   = hex2dec('0108E200');
baopoco_quant0_addr_addr_end     = hex2dec('0108E2FF');

% baopoco/quant0/gain
baopoco_quant0_gain_type         = 'xps_sw_reg';
baopoco_quant0_gain_param        = 'in';
baopoco_quant0_gain_ip_name      = 'opb_register_ppc2simulink';
baopoco_quant0_gain_addr_start   = hex2dec('0108E300');
baopoco_quant0_gain_addr_end     = hex2dec('0108E3FF');

% baopoco/quant1/addr
baopoco_quant1_addr_type         = 'xps_sw_reg';
baopoco_quant1_addr_param        = 'in';
baopoco_quant1_addr_ip_name      = 'opb_register_ppc2simulink';
baopoco_quant1_addr_addr_start   = hex2dec('0108E400');
baopoco_quant1_addr_addr_end     = hex2dec('0108E4FF');

% baopoco/quant1/gain
baopoco_quant1_gain_type         = 'xps_sw_reg';
baopoco_quant1_gain_param        = 'in';
baopoco_quant1_gain_ip_name      = 'opb_register_ppc2simulink';
baopoco_quant1_gain_addr_start   = hex2dec('0108E500');
baopoco_quant1_gain_addr_end     = hex2dec('0108E5FF');

% baopoco/quant2/addr
baopoco_quant2_addr_type         = 'xps_sw_reg';
baopoco_quant2_addr_param        = 'in';
baopoco_quant2_addr_ip_name      = 'opb_register_ppc2simulink';
baopoco_quant2_addr_addr_start   = hex2dec('0108E600');
baopoco_quant2_addr_addr_end     = hex2dec('0108E6FF');

% baopoco/quant2/gain
baopoco_quant2_gain_type         = 'xps_sw_reg';
baopoco_quant2_gain_param        = 'in';
baopoco_quant2_gain_ip_name      = 'opb_register_ppc2simulink';
baopoco_quant2_gain_addr_start   = hex2dec('0108E700');
baopoco_quant2_gain_addr_end     = hex2dec('0108E7FF');

% baopoco/quant3/addr
baopoco_quant3_addr_type         = 'xps_sw_reg';
baopoco_quant3_addr_param        = 'in';
baopoco_quant3_addr_ip_name      = 'opb_register_ppc2simulink';
baopoco_quant3_addr_addr_start   = hex2dec('0108E800');
baopoco_quant3_addr_addr_end     = hex2dec('0108E8FF');

% baopoco/quant3/gain
baopoco_quant3_gain_type         = 'xps_sw_reg';
baopoco_quant3_gain_param        = 'in';
baopoco_quant3_gain_ip_name      = 'opb_register_ppc2simulink';
baopoco_quant3_gain_addr_start   = hex2dec('0108E900');
baopoco_quant3_gain_addr_end     = hex2dec('0108E9FF');

% baopoco/seed/seed_data
baopoco_seed_seed_data_type         = 'xps_sw_reg';
baopoco_seed_seed_data_param        = 'in';
baopoco_seed_seed_data_ip_name      = 'opb_register_ppc2simulink';
baopoco_seed_seed_data_addr_start   = hex2dec('0108EA00');
baopoco_seed_seed_data_addr_end     = hex2dec('0108EAFF');

% baopoco/status
baopoco_status_type         = 'xps_sw_reg';
baopoco_status_param        = 'out';
baopoco_status_ip_name      = 'opb_register_simulink2ppc';
baopoco_status_addr_start   = hex2dec('0108EB00');
baopoco_status_addr_end     = hex2dec('0108EBFF');

% OPB to OPB bridge added at 0x1080000
OPB_to_OPB_bridge_added_at_0x1080000_type         = 'xps_opb2opb';
OPB_to_OPB_bridge_added_at_0x1080000_param        = '';

