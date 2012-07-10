library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/"

entity x_entity_5fb5868062 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    roachf_1024_bao_ant_base_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_feng_ctl_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_fft_shift_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_gbe_sw_port_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_gpu_ip_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_gpu_port_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_ip_base_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_my_ip_user_data_out: in std_logic_vector(31 downto 0); 
    ant_base_offset: out std_logic_vector(31 downto 0); 
    arm_rst: out std_logic; 
    cnt_rst: out std_logic; 
    fft_shift: out std_logic_vector(12 downto 0); 
    gbe_gpu_disable: out std_logic; 
    gbe_gpu_rst: out std_logic; 
    gbe_sw_disable: out std_logic; 
    gbe_sw_rst: out std_logic; 
    gpu_ip: out std_logic_vector(31 downto 0); 
    gpu_port: out std_logic_vector(31 downto 0); 
    ip_base: out std_logic_vector(31 downto 0); 
    my_ip: out std_logic_vector(31 downto 0); 
    port_x0: out std_logic_vector(31 downto 0); 
    sync_rst: out std_logic
  );
end x_entity_5fb5868062;

architecture structural of x_entity_5fb5868062 is
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal delay1_q_net: std_logic_vector(31 downto 0);
  signal delay2_q_net_x0: std_logic_vector(31 downto 0);
  signal delay3_q_net_x0: std_logic_vector(31 downto 0);
  signal delay4_q_net_x0: std_logic_vector(31 downto 0);
  signal delay5_q_net_x0: std_logic_vector(31 downto 0);
  signal delay6_q_net_x0: std_logic_vector(31 downto 0);
  signal delay7_q_net_x0: std_logic_vector(31 downto 0);
  signal delay8_q_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_ant_base_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_feng_ctl_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_fft_shift_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_gbe_sw_port_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_gpu_ip_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_gpu_port_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_ip_base_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_my_ip_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice10_y_net_x0: std_logic;
  signal slice11_y_net_x0: std_logic;
  signal slice12_y_net_x0: std_logic;
  signal slice21_y_net_x0: std_logic_vector(12 downto 0);
  signal slice4_y_net_x0: std_logic;
  signal slice5_y_net_x0: std_logic;
  signal slice6_y_net_x0: std_logic;
  signal slice7_y_net_x0: std_logic;

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  roachf_1024_bao_ant_base_user_data_out_net_x0 <= roachf_1024_bao_ant_base_user_data_out;
  roachf_1024_bao_feng_ctl_user_data_out_net_x0 <= roachf_1024_bao_feng_ctl_user_data_out;
  roachf_1024_bao_fft_shift_user_data_out_net_x0 <= roachf_1024_bao_fft_shift_user_data_out;
  roachf_1024_bao_gbe_sw_port_user_data_out_net_x0 <= roachf_1024_bao_gbe_sw_port_user_data_out;
  roachf_1024_bao_gpu_ip_user_data_out_net_x0 <= roachf_1024_bao_gpu_ip_user_data_out;
  roachf_1024_bao_gpu_port_user_data_out_net_x0 <= roachf_1024_bao_gpu_port_user_data_out;
  roachf_1024_bao_ip_base_user_data_out_net_x0 <= roachf_1024_bao_ip_base_user_data_out;
  roachf_1024_bao_my_ip_user_data_out_net_x0 <= roachf_1024_bao_my_ip_user_data_out;
  ant_base_offset <= delay2_q_net_x0;
  arm_rst <= slice7_y_net_x0;
  cnt_rst <= slice4_y_net_x0;
  fft_shift <= slice21_y_net_x0;
  gbe_gpu_disable <= slice12_y_net_x0;
  gbe_gpu_rst <= slice10_y_net_x0;
  gbe_sw_disable <= slice11_y_net_x0;
  gbe_sw_rst <= slice5_y_net_x0;
  gpu_ip <= delay6_q_net_x0;
  gpu_port <= delay7_q_net_x0;
  ip_base <= delay3_q_net_x0;
  my_ip <= delay4_q_net_x0;
  port_x0 <= delay5_q_net_x0;
  sync_rst <= slice6_y_net_x0;

  delay1: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      d => roachf_1024_bao_feng_ctl_user_data_out_net_x0,
      q => delay1_q_net
    );

  delay2: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      d => roachf_1024_bao_ant_base_user_data_out_net_x0,
      q => delay2_q_net_x0
    );

  delay3: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      d => roachf_1024_bao_ip_base_user_data_out_net_x0,
      q => delay3_q_net_x0
    );

  delay4: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      d => roachf_1024_bao_my_ip_user_data_out_net_x0,
      q => delay4_q_net_x0
    );

  delay5: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      d => roachf_1024_bao_gbe_sw_port_user_data_out_net_x0,
      q => delay5_q_net_x0
    );

  delay6: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      d => roachf_1024_bao_gpu_ip_user_data_out_net_x0,
      q => delay6_q_net_x0
    );

  delay7: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      d => roachf_1024_bao_gpu_port_user_data_out_net_x0,
      q => delay7_q_net_x0
    );

  delay8: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      d => roachf_1024_bao_fft_shift_user_data_out_net_x0,
      q => delay8_q_net
    );

  slice10: entity work.xlslice
    generic map (
      new_lsb => 31,
      new_msb => 31,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay1_q_net,
      y(0) => slice10_y_net_x0
    );

  slice11: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 18,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay1_q_net,
      y(0) => slice11_y_net_x0
    );

  slice12: entity work.xlslice
    generic map (
      new_lsb => 20,
      new_msb => 20,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay1_q_net,
      y(0) => slice12_y_net_x0
    );

  slice21: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 12,
      x_width => 32,
      y_width => 13
    )
    port map (
      x => delay8_q_net,
      y => slice21_y_net_x0
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 28,
      new_msb => 28,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay1_q_net,
      y(0) => slice4_y_net_x0
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 30,
      new_msb => 30,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay1_q_net,
      y(0) => slice5_y_net_x0
    );

  slice6: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 16,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay1_q_net,
      y(0) => slice6_y_net_x0
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 17,
      new_msb => 17,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay1_q_net,
      y(0) => slice7_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/ADC's/adc/conv"

entity conv_entity_e9ddda52b5 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(7 downto 0); 
    out1: out std_logic_vector(7 downto 0)
  );
end conv_entity_e9ddda52b5;

architecture structural of conv_entity_e9ddda52b5 is
  signal ce_1_sg_x1: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal concat_y_net: std_logic_vector(7 downto 0);
  signal inverter_op_net: std_logic;
  signal reinterpret_output_port_net_x0: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_datai0_net_x0: std_logic_vector(7 downto 0);
  signal slice1_y_net: std_logic_vector(6 downto 0);
  signal slice_y_net: std_logic;

begin
  ce_1_sg_x1 <= ce_1;
  clk_1_sg_x1 <= clk_1;
  roachf_1024_bao_adc_s_adc_user_datai0_net_x0 <= in1;
  out1 <= reinterpret_output_port_net_x0;

  concat: entity work.concat_83e473517e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => inverter_op_net,
      in1 => slice1_y_net,
      y => concat_y_net
    );

  inverter: entity work.inverter_e2b989a05e
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      ip(0) => slice_y_net,
      op(0) => inverter_op_net
    );

  reinterpret: entity work.reinterpret_4389dc89bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_y_net,
      output_port => reinterpret_output_port_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 7,
      new_msb => 7,
      x_width => 8,
      y_width => 1
    )
    port map (
      x => roachf_1024_bao_adc_s_adc_user_datai0_net_x0,
      y(0) => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 6,
      x_width => 8,
      y_width => 7
    )
    port map (
      x => roachf_1024_bao_adc_s_adc_user_datai0_net_x0,
      y => slice1_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/ADC's/adc"

entity adc_entity_bb24f9e134 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    roachf_1024_bao_adc_s_adc_user_datai0: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_datai1: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_datai2: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_datai3: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_dataq0: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_dataq1: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_dataq2: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_dataq3: in std_logic_vector(7 downto 0); 
    i0: out std_logic_vector(7 downto 0); 
    i1: out std_logic_vector(7 downto 0); 
    i2: out std_logic_vector(7 downto 0); 
    i3: out std_logic_vector(7 downto 0); 
    q0: out std_logic_vector(7 downto 0); 
    q1: out std_logic_vector(7 downto 0); 
    q2: out std_logic_vector(7 downto 0); 
    q3: out std_logic_vector(7 downto 0)
  );
end adc_entity_bb24f9e134;

architecture structural of adc_entity_bb24f9e134 is
  signal ce_1_sg_x9: std_logic;
  signal clk_1_sg_x9: std_logic;
  signal reinterpret_output_port_net_x10: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x11: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x12: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x13: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x14: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x15: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x8: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x9: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_datai0_net_x1: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_datai1_net_x1: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_datai2_net_x1: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_datai3_net_x1: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_dataq0_net_x1: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_dataq1_net_x1: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_dataq2_net_x1: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_dataq3_net_x1: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x9 <= ce_1;
  clk_1_sg_x9 <= clk_1;
  roachf_1024_bao_adc_s_adc_user_datai0_net_x1 <= roachf_1024_bao_adc_s_adc_user_datai0;
  roachf_1024_bao_adc_s_adc_user_datai1_net_x1 <= roachf_1024_bao_adc_s_adc_user_datai1;
  roachf_1024_bao_adc_s_adc_user_datai2_net_x1 <= roachf_1024_bao_adc_s_adc_user_datai2;
  roachf_1024_bao_adc_s_adc_user_datai3_net_x1 <= roachf_1024_bao_adc_s_adc_user_datai3;
  roachf_1024_bao_adc_s_adc_user_dataq0_net_x1 <= roachf_1024_bao_adc_s_adc_user_dataq0;
  roachf_1024_bao_adc_s_adc_user_dataq1_net_x1 <= roachf_1024_bao_adc_s_adc_user_dataq1;
  roachf_1024_bao_adc_s_adc_user_dataq2_net_x1 <= roachf_1024_bao_adc_s_adc_user_dataq2;
  roachf_1024_bao_adc_s_adc_user_dataq3_net_x1 <= roachf_1024_bao_adc_s_adc_user_dataq3;
  i0 <= reinterpret_output_port_net_x8;
  i1 <= reinterpret_output_port_net_x9;
  i2 <= reinterpret_output_port_net_x10;
  i3 <= reinterpret_output_port_net_x11;
  q0 <= reinterpret_output_port_net_x12;
  q1 <= reinterpret_output_port_net_x13;
  q2 <= reinterpret_output_port_net_x14;
  q3 <= reinterpret_output_port_net_x15;

  conv1_9adaff2210: entity work.conv_entity_e9ddda52b5
    port map (
      ce_1 => ce_1_sg_x9,
      clk_1 => clk_1_sg_x9,
      in1 => roachf_1024_bao_adc_s_adc_user_datai1_net_x1,
      out1 => reinterpret_output_port_net_x9
    );

  conv2_65f4a934c3: entity work.conv_entity_e9ddda52b5
    port map (
      ce_1 => ce_1_sg_x9,
      clk_1 => clk_1_sg_x9,
      in1 => roachf_1024_bao_adc_s_adc_user_datai2_net_x1,
      out1 => reinterpret_output_port_net_x10
    );

  conv3_72ab1ebfc0: entity work.conv_entity_e9ddda52b5
    port map (
      ce_1 => ce_1_sg_x9,
      clk_1 => clk_1_sg_x9,
      in1 => roachf_1024_bao_adc_s_adc_user_datai3_net_x1,
      out1 => reinterpret_output_port_net_x11
    );

  conv4_5f3835bb86: entity work.conv_entity_e9ddda52b5
    port map (
      ce_1 => ce_1_sg_x9,
      clk_1 => clk_1_sg_x9,
      in1 => roachf_1024_bao_adc_s_adc_user_dataq0_net_x1,
      out1 => reinterpret_output_port_net_x12
    );

  conv5_8a60e60be9: entity work.conv_entity_e9ddda52b5
    port map (
      ce_1 => ce_1_sg_x9,
      clk_1 => clk_1_sg_x9,
      in1 => roachf_1024_bao_adc_s_adc_user_dataq1_net_x1,
      out1 => reinterpret_output_port_net_x13
    );

  conv6_d640004711: entity work.conv_entity_e9ddda52b5
    port map (
      ce_1 => ce_1_sg_x9,
      clk_1 => clk_1_sg_x9,
      in1 => roachf_1024_bao_adc_s_adc_user_dataq2_net_x1,
      out1 => reinterpret_output_port_net_x14
    );

  conv7_01c706d0d5: entity work.conv_entity_e9ddda52b5
    port map (
      ce_1 => ce_1_sg_x9,
      clk_1 => clk_1_sg_x9,
      in1 => roachf_1024_bao_adc_s_adc_user_dataq3_net_x1,
      out1 => reinterpret_output_port_net_x15
    );

  conv_e9ddda52b5: entity work.conv_entity_e9ddda52b5
    port map (
      ce_1 => ce_1_sg_x9,
      clk_1 => clk_1_sg_x9,
      in1 => roachf_1024_bao_adc_s_adc_user_datai0_net_x1,
      out1 => reinterpret_output_port_net_x8
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/ADC's/adc1"

entity adc1_entity_1286a9963a is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    roachf_1024_bao_adc_s_adc1_user_datai0: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_datai1: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_datai2: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_datai3: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_dataq0: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_dataq1: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_dataq2: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_dataq3: in std_logic_vector(7 downto 0); 
    i0: out std_logic_vector(7 downto 0); 
    i1: out std_logic_vector(7 downto 0); 
    i2: out std_logic_vector(7 downto 0); 
    i3: out std_logic_vector(7 downto 0); 
    q0: out std_logic_vector(7 downto 0); 
    q1: out std_logic_vector(7 downto 0); 
    q2: out std_logic_vector(7 downto 0); 
    q3: out std_logic_vector(7 downto 0)
  );
end adc1_entity_1286a9963a;

architecture structural of adc1_entity_1286a9963a is
  signal ce_1_sg_x18: std_logic;
  signal clk_1_sg_x18: std_logic;
  signal reinterpret_output_port_net_x10: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x11: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x12: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x13: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x14: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x15: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x8: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x9: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_datai0_net_x1: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_datai1_net_x1: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_datai2_net_x1: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_datai3_net_x1: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_dataq0_net_x1: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_dataq1_net_x1: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_dataq2_net_x1: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_dataq3_net_x1: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x18 <= ce_1;
  clk_1_sg_x18 <= clk_1;
  roachf_1024_bao_adc_s_adc1_user_datai0_net_x1 <= roachf_1024_bao_adc_s_adc1_user_datai0;
  roachf_1024_bao_adc_s_adc1_user_datai1_net_x1 <= roachf_1024_bao_adc_s_adc1_user_datai1;
  roachf_1024_bao_adc_s_adc1_user_datai2_net_x1 <= roachf_1024_bao_adc_s_adc1_user_datai2;
  roachf_1024_bao_adc_s_adc1_user_datai3_net_x1 <= roachf_1024_bao_adc_s_adc1_user_datai3;
  roachf_1024_bao_adc_s_adc1_user_dataq0_net_x1 <= roachf_1024_bao_adc_s_adc1_user_dataq0;
  roachf_1024_bao_adc_s_adc1_user_dataq1_net_x1 <= roachf_1024_bao_adc_s_adc1_user_dataq1;
  roachf_1024_bao_adc_s_adc1_user_dataq2_net_x1 <= roachf_1024_bao_adc_s_adc1_user_dataq2;
  roachf_1024_bao_adc_s_adc1_user_dataq3_net_x1 <= roachf_1024_bao_adc_s_adc1_user_dataq3;
  i0 <= reinterpret_output_port_net_x8;
  i1 <= reinterpret_output_port_net_x9;
  i2 <= reinterpret_output_port_net_x10;
  i3 <= reinterpret_output_port_net_x11;
  q0 <= reinterpret_output_port_net_x12;
  q1 <= reinterpret_output_port_net_x13;
  q2 <= reinterpret_output_port_net_x14;
  q3 <= reinterpret_output_port_net_x15;

  conv1_c0433c4386: entity work.conv_entity_e9ddda52b5
    port map (
      ce_1 => ce_1_sg_x18,
      clk_1 => clk_1_sg_x18,
      in1 => roachf_1024_bao_adc_s_adc1_user_datai1_net_x1,
      out1 => reinterpret_output_port_net_x9
    );

  conv2_8d6f676397: entity work.conv_entity_e9ddda52b5
    port map (
      ce_1 => ce_1_sg_x18,
      clk_1 => clk_1_sg_x18,
      in1 => roachf_1024_bao_adc_s_adc1_user_datai2_net_x1,
      out1 => reinterpret_output_port_net_x10
    );

  conv3_67dd2d8099: entity work.conv_entity_e9ddda52b5
    port map (
      ce_1 => ce_1_sg_x18,
      clk_1 => clk_1_sg_x18,
      in1 => roachf_1024_bao_adc_s_adc1_user_datai3_net_x1,
      out1 => reinterpret_output_port_net_x11
    );

  conv4_02a3021157: entity work.conv_entity_e9ddda52b5
    port map (
      ce_1 => ce_1_sg_x18,
      clk_1 => clk_1_sg_x18,
      in1 => roachf_1024_bao_adc_s_adc1_user_dataq0_net_x1,
      out1 => reinterpret_output_port_net_x12
    );

  conv5_6f7d369676: entity work.conv_entity_e9ddda52b5
    port map (
      ce_1 => ce_1_sg_x18,
      clk_1 => clk_1_sg_x18,
      in1 => roachf_1024_bao_adc_s_adc1_user_dataq1_net_x1,
      out1 => reinterpret_output_port_net_x13
    );

  conv6_28ea887c71: entity work.conv_entity_e9ddda52b5
    port map (
      ce_1 => ce_1_sg_x18,
      clk_1 => clk_1_sg_x18,
      in1 => roachf_1024_bao_adc_s_adc1_user_dataq2_net_x1,
      out1 => reinterpret_output_port_net_x14
    );

  conv7_a184a1eb51: entity work.conv_entity_e9ddda52b5
    port map (
      ce_1 => ce_1_sg_x18,
      clk_1 => clk_1_sg_x18,
      in1 => roachf_1024_bao_adc_s_adc1_user_dataq3_net_x1,
      out1 => reinterpret_output_port_net_x15
    );

  conv_8830af6a05: entity work.conv_entity_e9ddda52b5
    port map (
      ce_1 => ce_1_sg_x18,
      clk_1 => clk_1_sg_x18,
      in1 => roachf_1024_bao_adc_s_adc1_user_datai0_net_x1,
      out1 => reinterpret_output_port_net_x8
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/ADC's/pol_pack0"

entity pol_pack0_entity_f12789f01f is
  port (
    in1: in std_logic_vector(7 downto 0); 
    in2: in std_logic_vector(7 downto 0); 
    in3: in std_logic_vector(7 downto 0); 
    in4: in std_logic_vector(7 downto 0); 
    out1: out std_logic_vector(31 downto 0)
  );
end pol_pack0_entity_f12789f01f;

architecture structural of pol_pack0_entity_f12789f01f is
  signal concat3_y_net_x0: std_logic_vector(31 downto 0);
  signal reinterpret4_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret5_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret6_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret7_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x12: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x13: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x14: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x15: std_logic_vector(7 downto 0);

begin
  reinterpret_output_port_net_x12 <= in1;
  reinterpret_output_port_net_x13 <= in2;
  reinterpret_output_port_net_x14 <= in3;
  reinterpret_output_port_net_x15 <= in4;
  out1 <= concat3_y_net_x0;

  concat3: entity work.concat_a1e126f11c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret4_output_port_net,
      in1 => reinterpret5_output_port_net,
      in2 => reinterpret6_output_port_net,
      in3 => reinterpret7_output_port_net,
      y => concat3_y_net_x0
    );

  reinterpret4: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x12,
      output_port => reinterpret4_output_port_net
    );

  reinterpret5: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x13,
      output_port => reinterpret5_output_port_net
    );

  reinterpret6: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x14,
      output_port => reinterpret6_output_port_net
    );

  reinterpret7: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x15,
      output_port => reinterpret7_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/ADC's"

entity adc_s_entity_f0dd80136b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    roachf_1024_bao_adc_s_adc1_user_datai0: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_datai1: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_datai2: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_datai3: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_dataq0: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_dataq1: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_dataq2: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_dataq3: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc1_user_sync0: in std_logic; 
    roachf_1024_bao_adc_s_adc1_user_sync1: in std_logic; 
    roachf_1024_bao_adc_s_adc1_user_sync2: in std_logic; 
    roachf_1024_bao_adc_s_adc1_user_sync3: in std_logic; 
    roachf_1024_bao_adc_s_adc_user_datai0: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_datai1: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_datai2: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_datai3: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_dataq0: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_dataq1: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_dataq2: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_dataq3: in std_logic_vector(7 downto 0); 
    roachf_1024_bao_adc_s_adc_user_sync0: in std_logic; 
    roachf_1024_bao_adc_s_adc_user_sync1: in std_logic; 
    roachf_1024_bao_adc_s_adc_user_sync2: in std_logic; 
    roachf_1024_bao_adc_s_adc_user_sync3: in std_logic; 
    adc0_pol0: out std_logic_vector(31 downto 0); 
    adc0_pol1: out std_logic_vector(31 downto 0); 
    adc0_sync: out std_logic; 
    adc1_pol0: out std_logic_vector(31 downto 0); 
    adc1_pol1: out std_logic_vector(31 downto 0); 
    adc1_sync: out std_logic
  );
end adc_s_entity_f0dd80136b;

architecture structural of adc_s_entity_f0dd80136b is
  signal ce_1_sg_x19: std_logic;
  signal clk_1_sg_x19: std_logic;
  signal concat3_y_net_x0: std_logic_vector(31 downto 0);
  signal concat3_y_net_x1: std_logic_vector(31 downto 0);
  signal concat3_y_net_x2: std_logic_vector(31 downto 0);
  signal concat3_y_net_x3: std_logic_vector(31 downto 0);
  signal delay10_q_net_x0: std_logic_vector(31 downto 0);
  signal delay11_q_net_x0: std_logic_vector(31 downto 0);
  signal delay14_q_net_x0: std_logic;
  signal delay1_q_net_x0: std_logic_vector(31 downto 0);
  signal delay9_q_net_x0: std_logic;
  signal delay_q_net_x0: std_logic_vector(31 downto 0);
  signal logical6_y_net: std_logic;
  signal logical_y_net: std_logic;
  signal reinterpret_output_port_net_x12: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x13: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x14: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x15: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x16: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x17: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x18: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x19: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x20: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x21: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x22: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x23: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x24: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x25: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x26: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x27: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_datai0_net_x2: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_datai1_net_x2: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_datai2_net_x2: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_datai3_net_x2: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_dataq0_net_x2: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_dataq1_net_x2: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_dataq2_net_x2: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_dataq3_net_x2: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_sync0_net_x0: std_logic;
  signal roachf_1024_bao_adc_s_adc1_user_sync1_net_x0: std_logic;
  signal roachf_1024_bao_adc_s_adc1_user_sync2_net_x0: std_logic;
  signal roachf_1024_bao_adc_s_adc1_user_sync3_net_x0: std_logic;
  signal roachf_1024_bao_adc_s_adc_user_datai0_net_x2: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_datai1_net_x2: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_datai2_net_x2: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_datai3_net_x2: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_dataq0_net_x2: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_dataq1_net_x2: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_dataq2_net_x2: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_dataq3_net_x2: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_sync0_net_x0: std_logic;
  signal roachf_1024_bao_adc_s_adc_user_sync1_net_x0: std_logic;
  signal roachf_1024_bao_adc_s_adc_user_sync2_net_x0: std_logic;
  signal roachf_1024_bao_adc_s_adc_user_sync3_net_x0: std_logic;

begin
  ce_1_sg_x19 <= ce_1;
  clk_1_sg_x19 <= clk_1;
  roachf_1024_bao_adc_s_adc1_user_datai0_net_x2 <= roachf_1024_bao_adc_s_adc1_user_datai0;
  roachf_1024_bao_adc_s_adc1_user_datai1_net_x2 <= roachf_1024_bao_adc_s_adc1_user_datai1;
  roachf_1024_bao_adc_s_adc1_user_datai2_net_x2 <= roachf_1024_bao_adc_s_adc1_user_datai2;
  roachf_1024_bao_adc_s_adc1_user_datai3_net_x2 <= roachf_1024_bao_adc_s_adc1_user_datai3;
  roachf_1024_bao_adc_s_adc1_user_dataq0_net_x2 <= roachf_1024_bao_adc_s_adc1_user_dataq0;
  roachf_1024_bao_adc_s_adc1_user_dataq1_net_x2 <= roachf_1024_bao_adc_s_adc1_user_dataq1;
  roachf_1024_bao_adc_s_adc1_user_dataq2_net_x2 <= roachf_1024_bao_adc_s_adc1_user_dataq2;
  roachf_1024_bao_adc_s_adc1_user_dataq3_net_x2 <= roachf_1024_bao_adc_s_adc1_user_dataq3;
  roachf_1024_bao_adc_s_adc1_user_sync0_net_x0 <= roachf_1024_bao_adc_s_adc1_user_sync0;
  roachf_1024_bao_adc_s_adc1_user_sync1_net_x0 <= roachf_1024_bao_adc_s_adc1_user_sync1;
  roachf_1024_bao_adc_s_adc1_user_sync2_net_x0 <= roachf_1024_bao_adc_s_adc1_user_sync2;
  roachf_1024_bao_adc_s_adc1_user_sync3_net_x0 <= roachf_1024_bao_adc_s_adc1_user_sync3;
  roachf_1024_bao_adc_s_adc_user_datai0_net_x2 <= roachf_1024_bao_adc_s_adc_user_datai0;
  roachf_1024_bao_adc_s_adc_user_datai1_net_x2 <= roachf_1024_bao_adc_s_adc_user_datai1;
  roachf_1024_bao_adc_s_adc_user_datai2_net_x2 <= roachf_1024_bao_adc_s_adc_user_datai2;
  roachf_1024_bao_adc_s_adc_user_datai3_net_x2 <= roachf_1024_bao_adc_s_adc_user_datai3;
  roachf_1024_bao_adc_s_adc_user_dataq0_net_x2 <= roachf_1024_bao_adc_s_adc_user_dataq0;
  roachf_1024_bao_adc_s_adc_user_dataq1_net_x2 <= roachf_1024_bao_adc_s_adc_user_dataq1;
  roachf_1024_bao_adc_s_adc_user_dataq2_net_x2 <= roachf_1024_bao_adc_s_adc_user_dataq2;
  roachf_1024_bao_adc_s_adc_user_dataq3_net_x2 <= roachf_1024_bao_adc_s_adc_user_dataq3;
  roachf_1024_bao_adc_s_adc_user_sync0_net_x0 <= roachf_1024_bao_adc_s_adc_user_sync0;
  roachf_1024_bao_adc_s_adc_user_sync1_net_x0 <= roachf_1024_bao_adc_s_adc_user_sync1;
  roachf_1024_bao_adc_s_adc_user_sync2_net_x0 <= roachf_1024_bao_adc_s_adc_user_sync2;
  roachf_1024_bao_adc_s_adc_user_sync3_net_x0 <= roachf_1024_bao_adc_s_adc_user_sync3;
  adc0_pol0 <= delay_q_net_x0;
  adc0_pol1 <= delay1_q_net_x0;
  adc0_sync <= delay9_q_net_x0;
  adc1_pol0 <= delay10_q_net_x0;
  adc1_pol1 <= delay11_q_net_x0;
  adc1_sync <= delay14_q_net_x0;

  adc1_1286a9963a: entity work.adc1_entity_1286a9963a
    port map (
      ce_1 => ce_1_sg_x19,
      clk_1 => clk_1_sg_x19,
      roachf_1024_bao_adc_s_adc1_user_datai0 => roachf_1024_bao_adc_s_adc1_user_datai0_net_x2,
      roachf_1024_bao_adc_s_adc1_user_datai1 => roachf_1024_bao_adc_s_adc1_user_datai1_net_x2,
      roachf_1024_bao_adc_s_adc1_user_datai2 => roachf_1024_bao_adc_s_adc1_user_datai2_net_x2,
      roachf_1024_bao_adc_s_adc1_user_datai3 => roachf_1024_bao_adc_s_adc1_user_datai3_net_x2,
      roachf_1024_bao_adc_s_adc1_user_dataq0 => roachf_1024_bao_adc_s_adc1_user_dataq0_net_x2,
      roachf_1024_bao_adc_s_adc1_user_dataq1 => roachf_1024_bao_adc_s_adc1_user_dataq1_net_x2,
      roachf_1024_bao_adc_s_adc1_user_dataq2 => roachf_1024_bao_adc_s_adc1_user_dataq2_net_x2,
      roachf_1024_bao_adc_s_adc1_user_dataq3 => roachf_1024_bao_adc_s_adc1_user_dataq3_net_x2,
      i0 => reinterpret_output_port_net_x20,
      i1 => reinterpret_output_port_net_x21,
      i2 => reinterpret_output_port_net_x22,
      i3 => reinterpret_output_port_net_x23,
      q0 => reinterpret_output_port_net_x24,
      q1 => reinterpret_output_port_net_x25,
      q2 => reinterpret_output_port_net_x26,
      q3 => reinterpret_output_port_net_x27
    );

  adc_bb24f9e134: entity work.adc_entity_bb24f9e134
    port map (
      ce_1 => ce_1_sg_x19,
      clk_1 => clk_1_sg_x19,
      roachf_1024_bao_adc_s_adc_user_datai0 => roachf_1024_bao_adc_s_adc_user_datai0_net_x2,
      roachf_1024_bao_adc_s_adc_user_datai1 => roachf_1024_bao_adc_s_adc_user_datai1_net_x2,
      roachf_1024_bao_adc_s_adc_user_datai2 => roachf_1024_bao_adc_s_adc_user_datai2_net_x2,
      roachf_1024_bao_adc_s_adc_user_datai3 => roachf_1024_bao_adc_s_adc_user_datai3_net_x2,
      roachf_1024_bao_adc_s_adc_user_dataq0 => roachf_1024_bao_adc_s_adc_user_dataq0_net_x2,
      roachf_1024_bao_adc_s_adc_user_dataq1 => roachf_1024_bao_adc_s_adc_user_dataq1_net_x2,
      roachf_1024_bao_adc_s_adc_user_dataq2 => roachf_1024_bao_adc_s_adc_user_dataq2_net_x2,
      roachf_1024_bao_adc_s_adc_user_dataq3 => roachf_1024_bao_adc_s_adc_user_dataq3_net_x2,
      i0 => reinterpret_output_port_net_x12,
      i1 => reinterpret_output_port_net_x13,
      i2 => reinterpret_output_port_net_x14,
      i3 => reinterpret_output_port_net_x15,
      q0 => reinterpret_output_port_net_x16,
      q1 => reinterpret_output_port_net_x17,
      q2 => reinterpret_output_port_net_x18,
      q3 => reinterpret_output_port_net_x19
    );

  delay: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      clr => '0',
      d => concat3_y_net_x0,
      q => delay_q_net_x0
    );

  delay1: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      clr => '0',
      d => concat3_y_net_x1,
      q => delay1_q_net_x0
    );

  delay10: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      clr => '0',
      d => concat3_y_net_x2,
      q => delay10_q_net_x0
    );

  delay11: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      clr => '0',
      d => concat3_y_net_x3,
      q => delay11_q_net_x0
    );

  delay14: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      clr => '0',
      d(0) => logical6_y_net,
      q(0) => delay14_q_net_x0
    );

  delay9: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      clr => '0',
      d(0) => logical_y_net,
      q(0) => delay9_q_net_x0
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => roachf_1024_bao_adc_s_adc_user_sync0_net_x0,
      d1(0) => roachf_1024_bao_adc_s_adc_user_sync1_net_x0,
      d2(0) => roachf_1024_bao_adc_s_adc_user_sync2_net_x0,
      d3(0) => roachf_1024_bao_adc_s_adc_user_sync3_net_x0,
      y(0) => logical_y_net
    );

  logical6: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => roachf_1024_bao_adc_s_adc1_user_sync0_net_x0,
      d1(0) => roachf_1024_bao_adc_s_adc1_user_sync1_net_x0,
      d2(0) => roachf_1024_bao_adc_s_adc1_user_sync2_net_x0,
      d3(0) => roachf_1024_bao_adc_s_adc1_user_sync3_net_x0,
      y(0) => logical6_y_net
    );

  pol_pack0_f12789f01f: entity work.pol_pack0_entity_f12789f01f
    port map (
      in1 => reinterpret_output_port_net_x12,
      in2 => reinterpret_output_port_net_x13,
      in3 => reinterpret_output_port_net_x14,
      in4 => reinterpret_output_port_net_x15,
      out1 => concat3_y_net_x0
    );

  pol_pack1_65e5274482: entity work.pol_pack0_entity_f12789f01f
    port map (
      in1 => reinterpret_output_port_net_x16,
      in2 => reinterpret_output_port_net_x17,
      in3 => reinterpret_output_port_net_x18,
      in4 => reinterpret_output_port_net_x19,
      out1 => concat3_y_net_x1
    );

  pol_pack2_6b2214e908: entity work.pol_pack0_entity_f12789f01f
    port map (
      in1 => reinterpret_output_port_net_x20,
      in2 => reinterpret_output_port_net_x21,
      in3 => reinterpret_output_port_net_x22,
      in4 => reinterpret_output_port_net_x23,
      out1 => concat3_y_net_x2
    );

  pol_pack3_4ea5c68af0: entity work.pol_pack0_entity_f12789f01f
    port map (
      in1 => reinterpret_output_port_net_x24,
      in2 => reinterpret_output_port_net_x25,
      in3 => reinterpret_output_port_net_x26,
      in4 => reinterpret_output_port_net_x27,
      out1 => concat3_y_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/EQ/quant0/eq_store0"

entity eq_store0_entity_66fb14fa71 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    coeff: in std_logic_vector(17 downto 0); 
    coeff_addr: in std_logic_vector(9 downto 0); 
    sync: in std_logic; 
    scale: out std_logic_vector(35 downto 0)
  );
end eq_store0_entity_66fb14fa71;

architecture structural of eq_store0_entity_66fb14fa71 is
  signal assert1_dout_net: std_logic_vector(17 downto 0);
  signal assert_dout_net: std_logic_vector(9 downto 0);
  signal ce_1_sg_x20: std_logic;
  signal clk_1_sg_x20: std_logic;
  signal constant4_op_net: std_logic_vector(35 downto 0);
  signal constant5_op_net: std_logic;
  signal convert_dout_net_x0: std_logic_vector(17 downto 0);
  signal counter2_op_net: std_logic_vector(8 downto 0);
  signal delay17_q_net_x0: std_logic_vector(9 downto 0);
  signal delay_q_net: std_logic_vector(9 downto 0);
  signal dp_ram_doutb_net_x0: std_logic_vector(35 downto 0);
  signal fft2_2048ch_sync_out_net_x0: std_logic;
  signal reinterpret1_output_port_net: std_logic_vector(17 downto 0);
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x20 <= ce_1;
  clk_1_sg_x20 <= clk_1;
  convert_dout_net_x0 <= coeff;
  delay17_q_net_x0 <= coeff_addr;
  fft2_2048ch_sync_out_net_x0 <= sync;
  scale <= dp_ram_doutb_net_x0;

  assert1: entity work.xlpassthrough
    generic map (
      din_width => 18,
      dout_width => 18
    )
    port map (
      din => convert_dout_net_x0,
      dout => assert1_dout_net
    );

  assert_x0: entity work.xlpassthrough
    generic map (
      din_width => 10,
      dout_width => 10
    )
    port map (
      din => delay17_q_net_x0,
      dout => assert_dout_net
    );

  constant4: entity work.constant_bbd7b31fe5
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant4_op_net
    );

  constant5: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant5_op_net
    );

  counter2: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_b9730cea34623a8b",
      op_arith => xlUnsigned,
      op_width => 9
    )
    port map (
      ce => ce_1_sg_x20,
      clk => clk_1_sg_x20,
      clr => '0',
      en => "1",
      rst(0) => fft2_2048ch_sync_out_net_x0,
      op => counter2_op_net
    );

  delay: entity work.delay_cf4f99539f
    port map (
      ce => ce_1_sg_x20,
      clk => clk_1_sg_x20,
      clr => '0',
      d => assert_dout_net,
      q => delay_q_net
    );

  dp_ram: entity work.xldpram
    generic map (
      c_address_width_a => 10,
      c_address_width_b => 9,
      c_width_a => 18,
      c_width_b => 36,
      core_name0 => "bmg_62_a60cf5549354b619",
      latency => 2
    )
    port map (
      a_ce => ce_1_sg_x20,
      a_clk => clk_1_sg_x20,
      addra => assert_dout_net,
      addrb => counter2_op_net,
      b_ce => ce_1_sg_x20,
      b_clk => clk_1_sg_x20,
      dina => reinterpret1_output_port_net,
      dinb => constant4_op_net,
      ena => "1",
      enb => "1",
      rsta => "0",
      rstb => "0",
      wea(0) => relational_op_net,
      web(0) => constant5_op_net,
      doutb => dp_ram_doutb_net_x0
    );

  reinterpret1: entity work.reinterpret_9306b5127f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => assert1_dout_net,
      output_port => reinterpret1_output_port_net
    );

  relational: entity work.relational_1a5580632c
    port map (
      a => assert_dout_net,
      b => delay_q_net,
      ce => ce_1_sg_x20,
      clk => clk_1_sg_x20,
      clr => '0',
      op(0) => relational_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/EQ/quant0/round1"

entity round1_entity_3a17b4da42 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(35 downto 0); 
    scale: in std_logic_vector(17 downto 0); 
    clip: out std_logic; 
    dout: out std_logic_vector(7 downto 0)
  );
end round1_entity_3a17b4da42;

architecture structural of round1_entity_3a17b4da42 is
  signal ce_1_sg_x21: std_logic;
  signal clk_1_sg_x21: std_logic;
  signal concat1_y_net: std_logic_vector(1 downto 0);
  signal concat2_y_net: std_logic_vector(1 downto 0);
  signal concat_y_net_x0: std_logic_vector(7 downto 0);
  signal constant1_op_net: std_logic_vector(26 downto 0);
  signal constant2_op_net: std_logic_vector(3 downto 0);
  signal constant3_op_net: std_logic_vector(3 downto 0);
  signal constant4_op_net: std_logic_vector(26 downto 0);
  signal constant5_op_net: std_logic_vector(26 downto 0);
  signal constant6_op_net: std_logic_vector(3 downto 0);
  signal constant7_op_net: std_logic_vector(3 downto 0);
  signal constant_op_net: std_logic_vector(26 downto 0);
  signal convert1_dout_net_x0: std_logic_vector(17 downto 0);
  signal convert2_dout_net: std_logic_vector(3 downto 0);
  signal convert3_dout_net: std_logic_vector(3 downto 0);
  signal delay18_q_net_x0: std_logic_vector(35 downto 0);
  signal logical1_y_net_x0: std_logic;
  signal mult1_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal mux1_y_net: std_logic_vector(3 downto 0);
  signal mux_y_net: std_logic_vector(3 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret2_output_port_net: std_logic_vector(3 downto 0);
  signal reinterpret3_output_port_net: std_logic_vector(3 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(17 downto 0);
  signal relational1_op_net: std_logic;
  signal relational2_op_net: std_logic;
  signal relational3_op_net: std_logic;
  signal relational_op_net: std_logic;
  signal slice4_y_net: std_logic_vector(17 downto 0);
  signal slice5_y_net: std_logic_vector(17 downto 0);

begin
  ce_1_sg_x21 <= ce_1;
  clk_1_sg_x21 <= clk_1;
  delay18_q_net_x0 <= din;
  convert1_dout_net_x0 <= scale;
  clip <= logical1_y_net_x0;
  dout <= concat_y_net_x0;

  concat: entity work.concat_1a070f1f35
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret2_output_port_net,
      in1 => reinterpret3_output_port_net,
      y => concat_y_net_x0
    );

  concat1: entity work.concat_32afb77cd2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => relational1_op_net,
      in1(0) => relational_op_net,
      y => concat1_y_net
    );

  concat2: entity work.concat_32afb77cd2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => relational3_op_net,
      in1(0) => relational2_op_net,
      y => concat2_y_net
    );

  constant1: entity work.constant_3d1b04c74c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_a3d619979c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_a629aefb53
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
    );

  constant4: entity work.constant_3ee5f91fcf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant4_op_net
    );

  constant5: entity work.constant_3d1b04c74c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant5_op_net
    );

  constant6: entity work.constant_a3d619979c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant6_op_net
    );

  constant7: entity work.constant_a629aefb53
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant7_op_net
    );

  constant_x0: entity work.constant_3ee5f91fcf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 20,
      din_width => 36,
      dout_arith => 2,
      dout_bin_pt => 3,
      dout_width => 4,
      latency => 2,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      din => mult_p_net,
      en => "1",
      dout => convert2_dout_net
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 20,
      din_width => 36,
      dout_arith => 2,
      dout_bin_pt => 3,
      dout_width => 4,
      latency => 2,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      din => mult1_p_net,
      en => "1",
      dout => convert3_dout_net
    );

  logical1: entity work.logical_127a315f20
    port map (
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      d0(0) => relational_op_net,
      d1(0) => relational1_op_net,
      d2(0) => relational3_op_net,
      d3(0) => relational2_op_net,
      y(0) => logical1_y_net_x0
    );

  mult: entity work.mult_ca473f56c4
    port map (
      a => reinterpret_output_port_net,
      b => convert1_dout_net_x0,
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      p => mult_p_net
    );

  mult1: entity work.mult_ca473f56c4
    port map (
      a => reinterpret1_output_port_net,
      b => convert1_dout_net_x0,
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      p => mult1_p_net
    );

  mux: entity work.mux_9723c3381b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => convert2_dout_net,
      d1 => constant2_op_net,
      d2 => constant3_op_net,
      sel => concat1_y_net,
      y => mux_y_net
    );

  mux1: entity work.mux_9723c3381b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => convert3_dout_net,
      d1 => constant6_op_net,
      d2 => constant7_op_net,
      sel => concat2_y_net,
      y => mux1_y_net
    );

  reinterpret: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice4_y_net,
      output_port => reinterpret_output_port_net
    );

  reinterpret1: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice5_y_net,
      output_port => reinterpret1_output_port_net
    );

  reinterpret2: entity work.reinterpret_df53fd8fe7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux_y_net,
      output_port => reinterpret2_output_port_net
    );

  reinterpret3: entity work.reinterpret_df53fd8fe7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux1_y_net,
      output_port => reinterpret3_output_port_net
    );

  relational: entity work.relational_ecc398b3c4
    port map (
      a => mult_p_net,
      b => constant_op_net,
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_1661032f65
    port map (
      a => mult_p_net,
      b => constant1_op_net,
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      op(0) => relational1_op_net
    );

  relational2: entity work.relational_ecc398b3c4
    port map (
      a => mult1_p_net,
      b => constant4_op_net,
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      op(0) => relational2_op_net
    );

  relational3: entity work.relational_1661032f65
    port map (
      a => mult1_p_net,
      b => constant5_op_net,
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      op(0) => relational3_op_net
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 35,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => delay18_q_net_x0,
      y => slice4_y_net
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => delay18_q_net_x0,
      y => slice5_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/EQ/quant0"

entity quant0_entity_a1ec737c60 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din0: in std_logic_vector(35 downto 0); 
    din1: in std_logic_vector(35 downto 0); 
    roachf_1024_bao_eq_quant0_addr_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_eq_quant0_gain_user_data_out: in std_logic_vector(31 downto 0); 
    sync: in std_logic; 
    clip_out: out std_logic; 
    dout0: out std_logic_vector(7 downto 0); 
    dout1: out std_logic_vector(7 downto 0); 
    sync_out: out std_logic
  );
end quant0_entity_a1ec737c60;

architecture structural of quant0_entity_a1ec737c60 is
  signal ce_1_sg_x23: std_logic;
  signal clk_1_sg_x23: std_logic;
  signal concat_y_net_x2: std_logic_vector(7 downto 0);
  signal concat_y_net_x3: std_logic_vector(7 downto 0);
  signal convert1_dout_net_x0: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x1: std_logic_vector(17 downto 0);
  signal convert_dout_net_x0: std_logic_vector(17 downto 0);
  signal delay15_q_net: std_logic_vector(17 downto 0);
  signal delay17_q_net_x0: std_logic_vector(9 downto 0);
  signal delay18_q_net_x0: std_logic_vector(35 downto 0);
  signal delay19_q_net_x0: std_logic;
  signal delay1_q_net: std_logic;
  signal delay25_q_net_x0: std_logic_vector(35 downto 0);
  signal delay5_q_net_x0: std_logic;
  signal dp_ram_doutb_net_x0: std_logic_vector(35 downto 0);
  signal fft2_2048ch_out0_net_x0: std_logic_vector(35 downto 0);
  signal fft2_2048ch_out1_net_x0: std_logic_vector(35 downto 0);
  signal fft2_2048ch_sync_out_net_x1: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical1_y_net_x1: std_logic;
  signal logical5_y_net: std_logic;
  signal roachf_1024_bao_eq_quant0_addr_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_eq_quant0_gain_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice11_y_net: std_logic_vector(17 downto 0);
  signal slice14_y_net: std_logic_vector(17 downto 0);
  signal slice40_y_net: std_logic_vector(17 downto 0);
  signal slice7_y_net: std_logic_vector(9 downto 0);

begin
  ce_1_sg_x23 <= ce_1;
  clk_1_sg_x23 <= clk_1;
  fft2_2048ch_out0_net_x0 <= din0;
  fft2_2048ch_out1_net_x0 <= din1;
  roachf_1024_bao_eq_quant0_addr_user_data_out_net_x0 <= roachf_1024_bao_eq_quant0_addr_user_data_out;
  roachf_1024_bao_eq_quant0_gain_user_data_out_net_x0 <= roachf_1024_bao_eq_quant0_gain_user_data_out;
  fft2_2048ch_sync_out_net_x1 <= sync;
  clip_out <= delay5_q_net_x0;
  dout0 <= concat_y_net_x2;
  dout1 <= concat_y_net_x3;
  sync_out <= delay19_q_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 1,
      dout_bin_pt => 3,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      din => delay15_q_net,
      en => "1",
      dout => convert_dout_net_x0
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 1,
      dout_bin_pt => 3,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      din => slice14_y_net,
      en => "1",
      dout => convert1_dout_net_x0
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 1,
      dout_bin_pt => 3,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      din => slice11_y_net,
      en => "1",
      dout => convert2_dout_net_x1
    );

  delay1: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      d(0) => fft2_2048ch_sync_out_net_x1,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net
    );

  delay15: entity work.delay_b6092ad150
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      d => slice40_y_net,
      q => delay15_q_net
    );

  delay17: entity work.delay_cf4f99539f
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      d => slice7_y_net,
      q => delay17_q_net_x0
    );

  delay18: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      d => fft2_2048ch_out0_net_x0,
      en => '1',
      rst => '1',
      q => delay18_q_net_x0
    );

  delay19: entity work.xldelay
    generic map (
      latency => 5,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      d(0) => delay1_q_net,
      en => '1',
      rst => '1',
      q(0) => delay19_q_net_x0
    );

  delay25: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      d => fft2_2048ch_out1_net_x0,
      en => '1',
      rst => '1',
      q => delay25_q_net_x0
    );

  delay5: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      d(0) => logical5_y_net,
      q(0) => delay5_q_net_x0
    );

  eq_store0_66fb14fa71: entity work.eq_store0_entity_66fb14fa71
    port map (
      ce_1 => ce_1_sg_x23,
      clk_1 => clk_1_sg_x23,
      coeff => convert_dout_net_x0,
      coeff_addr => delay17_q_net_x0,
      sync => fft2_2048ch_sync_out_net_x1,
      scale => dp_ram_doutb_net_x0
    );

  logical5: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical1_y_net_x0,
      d1(0) => logical1_y_net_x1,
      y(0) => logical5_y_net
    );

  round1_3a17b4da42: entity work.round1_entity_3a17b4da42
    port map (
      ce_1 => ce_1_sg_x23,
      clk_1 => clk_1_sg_x23,
      din => delay18_q_net_x0,
      scale => convert1_dout_net_x0,
      clip => logical1_y_net_x0,
      dout => concat_y_net_x2
    );

  round2_80ce7cac08: entity work.round1_entity_3a17b4da42
    port map (
      ce_1 => ce_1_sg_x23,
      clk_1 => clk_1_sg_x23,
      din => delay25_q_net_x0,
      scale => convert2_dout_net_x1,
      clip => logical1_y_net_x1,
      dout => concat_y_net_x3
    );

  slice11: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => dp_ram_doutb_net_x0,
      y => slice11_y_net
    );

  slice14: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 35,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => dp_ram_doutb_net_x0,
      y => slice14_y_net
    );

  slice40: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 32,
      y_width => 18
    )
    port map (
      x => roachf_1024_bao_eq_quant0_gain_user_data_out_net_x0,
      y => slice40_y_net
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 9,
      x_width => 32,
      y_width => 10
    )
    port map (
      x => roachf_1024_bao_eq_quant0_addr_user_data_out_net_x0,
      y => slice7_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/EQ/quant1"

entity quant1_entity_29594371c6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din0: in std_logic_vector(35 downto 0); 
    din1: in std_logic_vector(35 downto 0); 
    roachf_1024_bao_eq_quant1_addr_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_eq_quant1_gain_user_data_out: in std_logic_vector(31 downto 0); 
    sync: in std_logic; 
    clip_out: out std_logic; 
    dout0: out std_logic_vector(7 downto 0); 
    dout1: out std_logic_vector(7 downto 0)
  );
end quant1_entity_29594371c6;

architecture structural of quant1_entity_29594371c6 is
  signal ce_1_sg_x27: std_logic;
  signal clk_1_sg_x27: std_logic;
  signal concat_y_net_x2: std_logic_vector(7 downto 0);
  signal concat_y_net_x3: std_logic_vector(7 downto 0);
  signal convert1_dout_net_x0: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x1: std_logic_vector(17 downto 0);
  signal convert_dout_net_x0: std_logic_vector(17 downto 0);
  signal delay15_q_net: std_logic_vector(17 downto 0);
  signal delay17_q_net_x0: std_logic_vector(9 downto 0);
  signal delay18_q_net_x0: std_logic_vector(35 downto 0);
  signal delay25_q_net_x0: std_logic_vector(35 downto 0);
  signal delay5_q_net_x0: std_logic;
  signal dp_ram_doutb_net_x0: std_logic_vector(35 downto 0);
  signal fft2_2048ch1_out0_net_x0: std_logic_vector(35 downto 0);
  signal fft2_2048ch1_out1_net_x0: std_logic_vector(35 downto 0);
  signal fft2_2048ch_sync_out_net_x3: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical1_y_net_x1: std_logic;
  signal logical5_y_net: std_logic;
  signal roachf_1024_bao_eq_quant1_addr_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_eq_quant1_gain_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice11_y_net: std_logic_vector(17 downto 0);
  signal slice14_y_net: std_logic_vector(17 downto 0);
  signal slice40_y_net: std_logic_vector(17 downto 0);
  signal slice7_y_net: std_logic_vector(9 downto 0);

begin
  ce_1_sg_x27 <= ce_1;
  clk_1_sg_x27 <= clk_1;
  fft2_2048ch1_out0_net_x0 <= din0;
  fft2_2048ch1_out1_net_x0 <= din1;
  roachf_1024_bao_eq_quant1_addr_user_data_out_net_x0 <= roachf_1024_bao_eq_quant1_addr_user_data_out;
  roachf_1024_bao_eq_quant1_gain_user_data_out_net_x0 <= roachf_1024_bao_eq_quant1_gain_user_data_out;
  fft2_2048ch_sync_out_net_x3 <= sync;
  clip_out <= delay5_q_net_x0;
  dout0 <= concat_y_net_x2;
  dout1 <= concat_y_net_x3;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 1,
      dout_bin_pt => 3,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x27,
      clk => clk_1_sg_x27,
      clr => '0',
      din => delay15_q_net,
      en => "1",
      dout => convert_dout_net_x0
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 1,
      dout_bin_pt => 3,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x27,
      clk => clk_1_sg_x27,
      clr => '0',
      din => slice14_y_net,
      en => "1",
      dout => convert1_dout_net_x0
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 1,
      dout_bin_pt => 3,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x27,
      clk => clk_1_sg_x27,
      clr => '0',
      din => slice11_y_net,
      en => "1",
      dout => convert2_dout_net_x1
    );

  delay15: entity work.delay_b6092ad150
    port map (
      ce => ce_1_sg_x27,
      clk => clk_1_sg_x27,
      clr => '0',
      d => slice40_y_net,
      q => delay15_q_net
    );

  delay17: entity work.delay_cf4f99539f
    port map (
      ce => ce_1_sg_x27,
      clk => clk_1_sg_x27,
      clr => '0',
      d => slice7_y_net,
      q => delay17_q_net_x0
    );

  delay18: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x27,
      clk => clk_1_sg_x27,
      d => fft2_2048ch1_out0_net_x0,
      en => '1',
      rst => '1',
      q => delay18_q_net_x0
    );

  delay25: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x27,
      clk => clk_1_sg_x27,
      d => fft2_2048ch1_out1_net_x0,
      en => '1',
      rst => '1',
      q => delay25_q_net_x0
    );

  delay5: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x27,
      clk => clk_1_sg_x27,
      clr => '0',
      d(0) => logical5_y_net,
      q(0) => delay5_q_net_x0
    );

  eq_store0_d13490a710: entity work.eq_store0_entity_66fb14fa71
    port map (
      ce_1 => ce_1_sg_x27,
      clk_1 => clk_1_sg_x27,
      coeff => convert_dout_net_x0,
      coeff_addr => delay17_q_net_x0,
      sync => fft2_2048ch_sync_out_net_x3,
      scale => dp_ram_doutb_net_x0
    );

  logical5: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical1_y_net_x0,
      d1(0) => logical1_y_net_x1,
      y(0) => logical5_y_net
    );

  round1_2f0737a716: entity work.round1_entity_3a17b4da42
    port map (
      ce_1 => ce_1_sg_x27,
      clk_1 => clk_1_sg_x27,
      din => delay18_q_net_x0,
      scale => convert1_dout_net_x0,
      clip => logical1_y_net_x0,
      dout => concat_y_net_x2
    );

  round2_27572eb46a: entity work.round1_entity_3a17b4da42
    port map (
      ce_1 => ce_1_sg_x27,
      clk_1 => clk_1_sg_x27,
      din => delay25_q_net_x0,
      scale => convert2_dout_net_x1,
      clip => logical1_y_net_x1,
      dout => concat_y_net_x3
    );

  slice11: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => dp_ram_doutb_net_x0,
      y => slice11_y_net
    );

  slice14: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 35,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => dp_ram_doutb_net_x0,
      y => slice14_y_net
    );

  slice40: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 32,
      y_width => 18
    )
    port map (
      x => roachf_1024_bao_eq_quant1_gain_user_data_out_net_x0,
      y => slice40_y_net
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 9,
      x_width => 32,
      y_width => 10
    )
    port map (
      x => roachf_1024_bao_eq_quant1_addr_user_data_out_net_x0,
      y => slice7_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/EQ/quant2"

entity quant2_entity_8d0aee881d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din0: in std_logic_vector(35 downto 0); 
    din1: in std_logic_vector(35 downto 0); 
    roachf_1024_bao_eq_quant2_addr_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_eq_quant2_gain_user_data_out: in std_logic_vector(31 downto 0); 
    sync: in std_logic; 
    clip_out: out std_logic; 
    dout0: out std_logic_vector(7 downto 0); 
    dout1: out std_logic_vector(7 downto 0)
  );
end quant2_entity_8d0aee881d;

architecture structural of quant2_entity_8d0aee881d is
  signal ce_1_sg_x31: std_logic;
  signal clk_1_sg_x31: std_logic;
  signal concat_y_net_x2: std_logic_vector(7 downto 0);
  signal concat_y_net_x3: std_logic_vector(7 downto 0);
  signal convert1_dout_net_x0: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x1: std_logic_vector(17 downto 0);
  signal convert_dout_net_x0: std_logic_vector(17 downto 0);
  signal delay15_q_net: std_logic_vector(17 downto 0);
  signal delay17_q_net_x0: std_logic_vector(9 downto 0);
  signal delay18_q_net_x0: std_logic_vector(35 downto 0);
  signal delay25_q_net_x0: std_logic_vector(35 downto 0);
  signal delay5_q_net_x0: std_logic;
  signal dp_ram_doutb_net_x0: std_logic_vector(35 downto 0);
  signal fft2_2048ch2_out0_net_x0: std_logic_vector(35 downto 0);
  signal fft2_2048ch2_out1_net_x0: std_logic_vector(35 downto 0);
  signal fft2_2048ch_sync_out_net_x5: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical1_y_net_x1: std_logic;
  signal logical5_y_net: std_logic;
  signal roachf_1024_bao_eq_quant2_addr_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_eq_quant2_gain_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice11_y_net: std_logic_vector(17 downto 0);
  signal slice14_y_net: std_logic_vector(17 downto 0);
  signal slice40_y_net: std_logic_vector(17 downto 0);
  signal slice7_y_net: std_logic_vector(9 downto 0);

begin
  ce_1_sg_x31 <= ce_1;
  clk_1_sg_x31 <= clk_1;
  fft2_2048ch2_out0_net_x0 <= din0;
  fft2_2048ch2_out1_net_x0 <= din1;
  roachf_1024_bao_eq_quant2_addr_user_data_out_net_x0 <= roachf_1024_bao_eq_quant2_addr_user_data_out;
  roachf_1024_bao_eq_quant2_gain_user_data_out_net_x0 <= roachf_1024_bao_eq_quant2_gain_user_data_out;
  fft2_2048ch_sync_out_net_x5 <= sync;
  clip_out <= delay5_q_net_x0;
  dout0 <= concat_y_net_x2;
  dout1 <= concat_y_net_x3;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 1,
      dout_bin_pt => 3,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      clr => '0',
      din => delay15_q_net,
      en => "1",
      dout => convert_dout_net_x0
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 1,
      dout_bin_pt => 3,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      clr => '0',
      din => slice14_y_net,
      en => "1",
      dout => convert1_dout_net_x0
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 1,
      dout_bin_pt => 3,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      clr => '0',
      din => slice11_y_net,
      en => "1",
      dout => convert2_dout_net_x1
    );

  delay15: entity work.delay_b6092ad150
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      clr => '0',
      d => slice40_y_net,
      q => delay15_q_net
    );

  delay17: entity work.delay_cf4f99539f
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      clr => '0',
      d => slice7_y_net,
      q => delay17_q_net_x0
    );

  delay18: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      d => fft2_2048ch2_out0_net_x0,
      en => '1',
      rst => '1',
      q => delay18_q_net_x0
    );

  delay25: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      d => fft2_2048ch2_out1_net_x0,
      en => '1',
      rst => '1',
      q => delay25_q_net_x0
    );

  delay5: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      clr => '0',
      d(0) => logical5_y_net,
      q(0) => delay5_q_net_x0
    );

  eq_store0_6fe35eb7bf: entity work.eq_store0_entity_66fb14fa71
    port map (
      ce_1 => ce_1_sg_x31,
      clk_1 => clk_1_sg_x31,
      coeff => convert_dout_net_x0,
      coeff_addr => delay17_q_net_x0,
      sync => fft2_2048ch_sync_out_net_x5,
      scale => dp_ram_doutb_net_x0
    );

  logical5: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical1_y_net_x0,
      d1(0) => logical1_y_net_x1,
      y(0) => logical5_y_net
    );

  round1_36762bff25: entity work.round1_entity_3a17b4da42
    port map (
      ce_1 => ce_1_sg_x31,
      clk_1 => clk_1_sg_x31,
      din => delay18_q_net_x0,
      scale => convert1_dout_net_x0,
      clip => logical1_y_net_x0,
      dout => concat_y_net_x2
    );

  round2_c79e57132e: entity work.round1_entity_3a17b4da42
    port map (
      ce_1 => ce_1_sg_x31,
      clk_1 => clk_1_sg_x31,
      din => delay25_q_net_x0,
      scale => convert2_dout_net_x1,
      clip => logical1_y_net_x1,
      dout => concat_y_net_x3
    );

  slice11: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => dp_ram_doutb_net_x0,
      y => slice11_y_net
    );

  slice14: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 35,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => dp_ram_doutb_net_x0,
      y => slice14_y_net
    );

  slice40: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 32,
      y_width => 18
    )
    port map (
      x => roachf_1024_bao_eq_quant2_gain_user_data_out_net_x0,
      y => slice40_y_net
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 9,
      x_width => 32,
      y_width => 10
    )
    port map (
      x => roachf_1024_bao_eq_quant2_addr_user_data_out_net_x0,
      y => slice7_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/EQ/quant3"

entity quant3_entity_26d02fdb0a is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din0: in std_logic_vector(35 downto 0); 
    din1: in std_logic_vector(35 downto 0); 
    roachf_1024_bao_eq_quant3_addr_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_eq_quant3_gain_user_data_out: in std_logic_vector(31 downto 0); 
    sync: in std_logic; 
    clip_out: out std_logic; 
    dout0: out std_logic_vector(7 downto 0); 
    dout1: out std_logic_vector(7 downto 0)
  );
end quant3_entity_26d02fdb0a;

architecture structural of quant3_entity_26d02fdb0a is
  signal ce_1_sg_x35: std_logic;
  signal clk_1_sg_x35: std_logic;
  signal concat_y_net_x2: std_logic_vector(7 downto 0);
  signal concat_y_net_x3: std_logic_vector(7 downto 0);
  signal convert1_dout_net_x0: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x1: std_logic_vector(17 downto 0);
  signal convert_dout_net_x0: std_logic_vector(17 downto 0);
  signal delay15_q_net: std_logic_vector(17 downto 0);
  signal delay17_q_net_x0: std_logic_vector(9 downto 0);
  signal delay18_q_net_x0: std_logic_vector(35 downto 0);
  signal delay25_q_net_x0: std_logic_vector(35 downto 0);
  signal delay5_q_net_x0: std_logic;
  signal dp_ram_doutb_net_x0: std_logic_vector(35 downto 0);
  signal fft2_2048ch3_out0_net_x0: std_logic_vector(35 downto 0);
  signal fft2_2048ch3_out1_net_x0: std_logic_vector(35 downto 0);
  signal fft2_2048ch_sync_out_net_x7: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical1_y_net_x1: std_logic;
  signal logical5_y_net: std_logic;
  signal roachf_1024_bao_eq_quant3_addr_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_eq_quant3_gain_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice11_y_net: std_logic_vector(17 downto 0);
  signal slice14_y_net: std_logic_vector(17 downto 0);
  signal slice40_y_net: std_logic_vector(17 downto 0);
  signal slice7_y_net: std_logic_vector(9 downto 0);

begin
  ce_1_sg_x35 <= ce_1;
  clk_1_sg_x35 <= clk_1;
  fft2_2048ch3_out0_net_x0 <= din0;
  fft2_2048ch3_out1_net_x0 <= din1;
  roachf_1024_bao_eq_quant3_addr_user_data_out_net_x0 <= roachf_1024_bao_eq_quant3_addr_user_data_out;
  roachf_1024_bao_eq_quant3_gain_user_data_out_net_x0 <= roachf_1024_bao_eq_quant3_gain_user_data_out;
  fft2_2048ch_sync_out_net_x7 <= sync;
  clip_out <= delay5_q_net_x0;
  dout0 <= concat_y_net_x2;
  dout1 <= concat_y_net_x3;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 1,
      dout_bin_pt => 3,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x35,
      clk => clk_1_sg_x35,
      clr => '0',
      din => delay15_q_net,
      en => "1",
      dout => convert_dout_net_x0
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 1,
      dout_bin_pt => 3,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x35,
      clk => clk_1_sg_x35,
      clr => '0',
      din => slice14_y_net,
      en => "1",
      dout => convert1_dout_net_x0
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 1,
      dout_bin_pt => 3,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x35,
      clk => clk_1_sg_x35,
      clr => '0',
      din => slice11_y_net,
      en => "1",
      dout => convert2_dout_net_x1
    );

  delay15: entity work.delay_b6092ad150
    port map (
      ce => ce_1_sg_x35,
      clk => clk_1_sg_x35,
      clr => '0',
      d => slice40_y_net,
      q => delay15_q_net
    );

  delay17: entity work.delay_cf4f99539f
    port map (
      ce => ce_1_sg_x35,
      clk => clk_1_sg_x35,
      clr => '0',
      d => slice7_y_net,
      q => delay17_q_net_x0
    );

  delay18: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x35,
      clk => clk_1_sg_x35,
      d => fft2_2048ch3_out0_net_x0,
      en => '1',
      rst => '1',
      q => delay18_q_net_x0
    );

  delay25: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x35,
      clk => clk_1_sg_x35,
      d => fft2_2048ch3_out1_net_x0,
      en => '1',
      rst => '1',
      q => delay25_q_net_x0
    );

  delay5: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x35,
      clk => clk_1_sg_x35,
      clr => '0',
      d(0) => logical5_y_net,
      q(0) => delay5_q_net_x0
    );

  eq_store0_a7c22b0191: entity work.eq_store0_entity_66fb14fa71
    port map (
      ce_1 => ce_1_sg_x35,
      clk_1 => clk_1_sg_x35,
      coeff => convert_dout_net_x0,
      coeff_addr => delay17_q_net_x0,
      sync => fft2_2048ch_sync_out_net_x7,
      scale => dp_ram_doutb_net_x0
    );

  logical5: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical1_y_net_x0,
      d1(0) => logical1_y_net_x1,
      y(0) => logical5_y_net
    );

  round1_5b67a54b26: entity work.round1_entity_3a17b4da42
    port map (
      ce_1 => ce_1_sg_x35,
      clk_1 => clk_1_sg_x35,
      din => delay18_q_net_x0,
      scale => convert1_dout_net_x0,
      clip => logical1_y_net_x0,
      dout => concat_y_net_x2
    );

  round2_d97de73b9a: entity work.round1_entity_3a17b4da42
    port map (
      ce_1 => ce_1_sg_x35,
      clk_1 => clk_1_sg_x35,
      din => delay25_q_net_x0,
      scale => convert2_dout_net_x1,
      clip => logical1_y_net_x1,
      dout => concat_y_net_x3
    );

  slice11: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => dp_ram_doutb_net_x0,
      y => slice11_y_net
    );

  slice14: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 35,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => dp_ram_doutb_net_x0,
      y => slice14_y_net
    );

  slice40: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 32,
      y_width => 18
    )
    port map (
      x => roachf_1024_bao_eq_quant3_gain_user_data_out_net_x0,
      y => slice40_y_net
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 9,
      x_width => 32,
      y_width => 10
    )
    port map (
      x => roachf_1024_bao_eq_quant3_addr_user_data_out_net_x0,
      y => slice7_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/EQ"

entity eq_entity_f4312da414 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    fft0: in std_logic_vector(35 downto 0); 
    fft1: in std_logic_vector(35 downto 0); 
    fft2: in std_logic_vector(35 downto 0); 
    fft3: in std_logic_vector(35 downto 0); 
    fft4: in std_logic_vector(35 downto 0); 
    fft5: in std_logic_vector(35 downto 0); 
    fft6: in std_logic_vector(35 downto 0); 
    fft7: in std_logic_vector(35 downto 0); 
    roachf_1024_bao_eq_quant0_addr_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_eq_quant0_gain_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_eq_quant1_addr_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_eq_quant1_gain_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_eq_quant2_addr_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_eq_quant2_gain_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_eq_quant3_addr_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_eq_quant3_gain_user_data_out: in std_logic_vector(31 downto 0); 
    sync_fft0: in std_logic; 
    eq_clip: out std_logic; 
    eq_out: out std_logic_vector(63 downto 0); 
    sync_rnd: out std_logic
  );
end eq_entity_f4312da414;

architecture structural of eq_entity_f4312da414 is
  signal ce_1_sg_x36: std_logic;
  signal clk_1_sg_x36: std_logic;
  signal concat3_y_net_x0: std_logic_vector(63 downto 0);
  signal concat_y_net_x2: std_logic_vector(7 downto 0);
  signal concat_y_net_x3: std_logic_vector(7 downto 0);
  signal concat_y_net_x4: std_logic_vector(7 downto 0);
  signal concat_y_net_x5: std_logic_vector(7 downto 0);
  signal concat_y_net_x6: std_logic_vector(7 downto 0);
  signal concat_y_net_x7: std_logic_vector(7 downto 0);
  signal concat_y_net_x8: std_logic_vector(7 downto 0);
  signal concat_y_net_x9: std_logic_vector(7 downto 0);
  signal delay19_q_net_x1: std_logic;
  signal delay5_q_net_x0: std_logic;
  signal delay5_q_net_x1: std_logic;
  signal delay5_q_net_x2: std_logic;
  signal delay5_q_net_x3: std_logic;
  signal fft2_2048ch1_out0_net_x1: std_logic_vector(35 downto 0);
  signal fft2_2048ch1_out1_net_x1: std_logic_vector(35 downto 0);
  signal fft2_2048ch2_out0_net_x1: std_logic_vector(35 downto 0);
  signal fft2_2048ch2_out1_net_x1: std_logic_vector(35 downto 0);
  signal fft2_2048ch3_out0_net_x1: std_logic_vector(35 downto 0);
  signal fft2_2048ch3_out1_net_x1: std_logic_vector(35 downto 0);
  signal fft2_2048ch_out0_net_x1: std_logic_vector(35 downto 0);
  signal fft2_2048ch_out1_net_x1: std_logic_vector(35 downto 0);
  signal fft2_2048ch_sync_out_net_x8: std_logic;
  signal logical5_y_net_x0: std_logic;
  signal roachf_1024_bao_eq_quant0_addr_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_eq_quant0_gain_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_eq_quant1_addr_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_eq_quant1_gain_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_eq_quant2_addr_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_eq_quant2_gain_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_eq_quant3_addr_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_eq_quant3_gain_user_data_out_net_x1: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x36 <= ce_1;
  clk_1_sg_x36 <= clk_1;
  fft2_2048ch_out0_net_x1 <= fft0;
  fft2_2048ch_out1_net_x1 <= fft1;
  fft2_2048ch1_out0_net_x1 <= fft2;
  fft2_2048ch1_out1_net_x1 <= fft3;
  fft2_2048ch2_out0_net_x1 <= fft4;
  fft2_2048ch2_out1_net_x1 <= fft5;
  fft2_2048ch3_out0_net_x1 <= fft6;
  fft2_2048ch3_out1_net_x1 <= fft7;
  roachf_1024_bao_eq_quant0_addr_user_data_out_net_x1 <= roachf_1024_bao_eq_quant0_addr_user_data_out;
  roachf_1024_bao_eq_quant0_gain_user_data_out_net_x1 <= roachf_1024_bao_eq_quant0_gain_user_data_out;
  roachf_1024_bao_eq_quant1_addr_user_data_out_net_x1 <= roachf_1024_bao_eq_quant1_addr_user_data_out;
  roachf_1024_bao_eq_quant1_gain_user_data_out_net_x1 <= roachf_1024_bao_eq_quant1_gain_user_data_out;
  roachf_1024_bao_eq_quant2_addr_user_data_out_net_x1 <= roachf_1024_bao_eq_quant2_addr_user_data_out;
  roachf_1024_bao_eq_quant2_gain_user_data_out_net_x1 <= roachf_1024_bao_eq_quant2_gain_user_data_out;
  roachf_1024_bao_eq_quant3_addr_user_data_out_net_x1 <= roachf_1024_bao_eq_quant3_addr_user_data_out;
  roachf_1024_bao_eq_quant3_gain_user_data_out_net_x1 <= roachf_1024_bao_eq_quant3_gain_user_data_out;
  fft2_2048ch_sync_out_net_x8 <= sync_fft0;
  eq_clip <= logical5_y_net_x0;
  eq_out <= concat3_y_net_x0;
  sync_rnd <= delay19_q_net_x1;

  concat3: entity work.concat_15d98836ad
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => concat_y_net_x2,
      in1 => concat_y_net_x3,
      in2 => concat_y_net_x4,
      in3 => concat_y_net_x5,
      in4 => concat_y_net_x6,
      in5 => concat_y_net_x7,
      in6 => concat_y_net_x8,
      in7 => concat_y_net_x9,
      y => concat3_y_net_x0
    );

  logical5: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay5_q_net_x0,
      d1(0) => delay5_q_net_x1,
      d2(0) => delay5_q_net_x2,
      d3(0) => delay5_q_net_x3,
      y(0) => logical5_y_net_x0
    );

  quant0_a1ec737c60: entity work.quant0_entity_a1ec737c60
    port map (
      ce_1 => ce_1_sg_x36,
      clk_1 => clk_1_sg_x36,
      din0 => fft2_2048ch_out0_net_x1,
      din1 => fft2_2048ch_out1_net_x1,
      roachf_1024_bao_eq_quant0_addr_user_data_out => roachf_1024_bao_eq_quant0_addr_user_data_out_net_x1,
      roachf_1024_bao_eq_quant0_gain_user_data_out => roachf_1024_bao_eq_quant0_gain_user_data_out_net_x1,
      sync => fft2_2048ch_sync_out_net_x8,
      clip_out => delay5_q_net_x0,
      dout0 => concat_y_net_x2,
      dout1 => concat_y_net_x3,
      sync_out => delay19_q_net_x1
    );

  quant1_29594371c6: entity work.quant1_entity_29594371c6
    port map (
      ce_1 => ce_1_sg_x36,
      clk_1 => clk_1_sg_x36,
      din0 => fft2_2048ch1_out0_net_x1,
      din1 => fft2_2048ch1_out1_net_x1,
      roachf_1024_bao_eq_quant1_addr_user_data_out => roachf_1024_bao_eq_quant1_addr_user_data_out_net_x1,
      roachf_1024_bao_eq_quant1_gain_user_data_out => roachf_1024_bao_eq_quant1_gain_user_data_out_net_x1,
      sync => fft2_2048ch_sync_out_net_x8,
      clip_out => delay5_q_net_x1,
      dout0 => concat_y_net_x4,
      dout1 => concat_y_net_x5
    );

  quant2_8d0aee881d: entity work.quant2_entity_8d0aee881d
    port map (
      ce_1 => ce_1_sg_x36,
      clk_1 => clk_1_sg_x36,
      din0 => fft2_2048ch2_out0_net_x1,
      din1 => fft2_2048ch2_out1_net_x1,
      roachf_1024_bao_eq_quant2_addr_user_data_out => roachf_1024_bao_eq_quant2_addr_user_data_out_net_x1,
      roachf_1024_bao_eq_quant2_gain_user_data_out => roachf_1024_bao_eq_quant2_gain_user_data_out_net_x1,
      sync => fft2_2048ch_sync_out_net_x8,
      clip_out => delay5_q_net_x2,
      dout0 => concat_y_net_x6,
      dout1 => concat_y_net_x7
    );

  quant3_26d02fdb0a: entity work.quant3_entity_26d02fdb0a
    port map (
      ce_1 => ce_1_sg_x36,
      clk_1 => clk_1_sg_x36,
      din0 => fft2_2048ch3_out0_net_x1,
      din1 => fft2_2048ch3_out1_net_x1,
      roachf_1024_bao_eq_quant3_addr_user_data_out => roachf_1024_bao_eq_quant3_addr_user_data_out_net_x1,
      roachf_1024_bao_eq_quant3_gain_user_data_out => roachf_1024_bao_eq_quant3_gain_user_data_out_net_x1,
      sync => fft2_2048ch_sync_out_net_x8,
      clip_out => delay5_q_net_x3,
      dout0 => concat_y_net_x8,
      dout1 => concat_y_net_x9
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/LEDs/led1_arm"

entity led1_arm_entity_eb12274228 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    gpio_out: in std_logic; 
    convert_x0: out std_logic
  );
end led1_arm_entity_eb12274228;

architecture structural of led1_arm_entity_eb12274228 is
  signal ce_1_sg_x37: std_logic;
  signal clk_1_sg_x37: std_logic;
  signal convert_dout_net_x0: std_logic;
  signal delay4_q_net_x0: std_logic;

begin
  ce_1_sg_x37 <= ce_1;
  clk_1_sg_x37 <= clk_1;
  delay4_q_net_x0 <= gpio_out;
  convert_x0 <= convert_dout_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      din(0) => delay4_q_net_x0,
      en => "1",
      dout(0) => convert_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/LEDs/pulse_ext2/posedge"

entity posedge_entity_21f484bc47 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end posedge_entity_21f484bc47;

architecture structural of posedge_entity_21f484bc47 is
  signal ce_1_sg_x40: std_logic;
  signal clk_1_sg_x40: std_logic;
  signal delay1_q_net_x0: std_logic;
  signal delay_q_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical_y_net_x0: std_logic;

begin
  ce_1_sg_x40 <= ce_1;
  clk_1_sg_x40 <= clk_1;
  delay1_q_net_x0 <= in_x0;
  out_x0 <= logical_y_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      d(0) => delay1_q_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      ip(0) => delay_q_net,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => delay1_q_net_x0,
      y(0) => logical_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/LEDs/pulse_ext2"

entity pulse_ext2_entity_6e7bbec365 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end pulse_ext2_entity_6e7bbec365;

architecture structural of pulse_ext2_entity_6e7bbec365 is
  signal ce_1_sg_x41: std_logic;
  signal clk_1_sg_x41: std_logic;
  signal constant5_op_net: std_logic_vector(23 downto 0);
  signal counter3_op_net: std_logic_vector(23 downto 0);
  signal delay1_q_net_x1: std_logic;
  signal logical_y_net_x0: std_logic;
  signal relational5_op_net_x0: std_logic;

begin
  ce_1_sg_x41 <= ce_1;
  clk_1_sg_x41 <= clk_1;
  delay1_q_net_x1 <= in_x0;
  out_x0 <= relational5_op_net_x0;

  constant5: entity work.constant_bdd7f47790
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant5_op_net
    );

  counter3: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_06789a19cedc7671",
      op_arith => xlUnsigned,
      op_width => 24
    )
    port map (
      ce => ce_1_sg_x41,
      clk => clk_1_sg_x41,
      clr => '0',
      en(0) => relational5_op_net_x0,
      rst(0) => logical_y_net_x0,
      op => counter3_op_net
    );

  posedge_21f484bc47: entity work.posedge_entity_21f484bc47
    port map (
      ce_1 => ce_1_sg_x41,
      clk_1 => clk_1_sg_x41,
      in_x0 => delay1_q_net_x1,
      out_x0 => logical_y_net_x0
    );

  relational5: entity work.relational_831189b190
    port map (
      a => counter3_op_net,
      b => constant5_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational5_op_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/LEDs/pulse_ext4"

entity pulse_ext4_entity_9928d70aee is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end pulse_ext4_entity_9928d70aee;

architecture structural of pulse_ext4_entity_9928d70aee is
  signal ce_1_sg_x43: std_logic;
  signal clk_1_sg_x43: std_logic;
  signal constant5_op_net: std_logic_vector(18 downto 0);
  signal counter3_op_net: std_logic_vector(18 downto 0);
  signal delay2_q_net_x1: std_logic;
  signal logical_y_net_x0: std_logic;
  signal relational5_op_net_x0: std_logic;

begin
  ce_1_sg_x43 <= ce_1;
  clk_1_sg_x43 <= clk_1;
  delay2_q_net_x1 <= in_x0;
  out_x0 <= relational5_op_net_x0;

  constant5: entity work.constant_b713aad2a7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant5_op_net
    );

  counter3: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_7310fc5156c4342e",
      op_arith => xlUnsigned,
      op_width => 19
    )
    port map (
      ce => ce_1_sg_x43,
      clk => clk_1_sg_x43,
      clr => '0',
      en(0) => relational5_op_net_x0,
      rst(0) => logical_y_net_x0,
      op => counter3_op_net
    );

  posedge_bf45944a6f: entity work.posedge_entity_21f484bc47
    port map (
      ce_1 => ce_1_sg_x43,
      clk_1 => clk_1_sg_x43,
      in_x0 => delay2_q_net_x1,
      out_x0 => logical_y_net_x0
    );

  relational5: entity work.relational_502d6cf7c0
    port map (
      a => counter3_op_net,
      b => constant5_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational5_op_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/LEDs"

entity leds_entity_dca6373a98 is
  port (
    armed: in std_logic; 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    eq_clip: in std_logic; 
    sync_gen: in std_logic; 
    led1_arm: out std_logic; 
    led2_sync: out std_logic; 
    led4_eq_clip: out std_logic
  );
end leds_entity_dca6373a98;

architecture structural of leds_entity_dca6373a98 is
  signal ce_1_sg_x44: std_logic;
  signal clk_1_sg_x44: std_logic;
  signal convert_dout_net_x3: std_logic;
  signal convert_dout_net_x4: std_logic;
  signal convert_dout_net_x5: std_logic;
  signal delay1_q_net_x1: std_logic;
  signal delay2_q_net_x1: std_logic;
  signal delay4_q_net_x0: std_logic;
  signal delay5_q_net_x0: std_logic;
  signal delay6_q_net_x0: std_logic;
  signal delay_q_net: std_logic;
  signal inverter_op_net_x0: std_logic;
  signal logical5_y_net_x1: std_logic;
  signal logical_y_net_x0: std_logic;
  signal relational5_op_net_x0: std_logic;
  signal relational5_op_net_x1: std_logic;

begin
  inverter_op_net_x0 <= armed;
  ce_1_sg_x44 <= ce_1;
  clk_1_sg_x44 <= clk_1;
  logical5_y_net_x1 <= eq_clip;
  logical_y_net_x0 <= sync_gen;
  led1_arm <= convert_dout_net_x3;
  led2_sync <= convert_dout_net_x4;
  led4_eq_clip <= convert_dout_net_x5;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x44,
      clk => clk_1_sg_x44,
      d(0) => inverter_op_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x44,
      clk => clk_1_sg_x44,
      d(0) => logical_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net_x1
    );

  delay2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x44,
      clk => clk_1_sg_x44,
      d(0) => logical5_y_net_x1,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x1
    );

  delay4: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x44,
      clk => clk_1_sg_x44,
      d(0) => delay_q_net,
      en => '1',
      rst => '1',
      q(0) => delay4_q_net_x0
    );

  delay5: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x44,
      clk => clk_1_sg_x44,
      d(0) => relational5_op_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay5_q_net_x0
    );

  delay6: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x44,
      clk => clk_1_sg_x44,
      d(0) => relational5_op_net_x1,
      en => '1',
      rst => '1',
      q(0) => delay6_q_net_x0
    );

  led1_arm_eb12274228: entity work.led1_arm_entity_eb12274228
    port map (
      ce_1 => ce_1_sg_x44,
      clk_1 => clk_1_sg_x44,
      gpio_out => delay4_q_net_x0,
      convert_x0 => convert_dout_net_x3
    );

  led2_sync_db879d154c: entity work.led1_arm_entity_eb12274228
    port map (
      ce_1 => ce_1_sg_x44,
      clk_1 => clk_1_sg_x44,
      gpio_out => delay5_q_net_x0,
      convert_x0 => convert_dout_net_x4
    );

  led4_eq_clip_911dfb78eb: entity work.led1_arm_entity_eb12274228
    port map (
      ce_1 => ce_1_sg_x44,
      clk_1 => clk_1_sg_x44,
      gpio_out => delay6_q_net_x0,
      convert_x0 => convert_dout_net_x5
    );

  pulse_ext2_6e7bbec365: entity work.pulse_ext2_entity_6e7bbec365
    port map (
      ce_1 => ce_1_sg_x44,
      clk_1 => clk_1_sg_x44,
      in_x0 => delay1_q_net_x1,
      out_x0 => relational5_op_net_x0
    );

  pulse_ext4_9928d70aee: entity work.pulse_ext4_entity_9928d70aee
    port map (
      ce_1 => ce_1_sg_x44,
      clk_1 => clk_1_sg_x44,
      in_x0 => delay2_q_net_x1,
      out_x0 => relational5_op_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/PFBs/adc_unpack0"

entity adc_unpack0_entity_e15e6835ac is
  port (
    in1: in std_logic_vector(31 downto 0); 
    out1: out std_logic_vector(7 downto 0); 
    out2: out std_logic_vector(7 downto 0); 
    out3: out std_logic_vector(7 downto 0); 
    out4: out std_logic_vector(7 downto 0)
  );
end adc_unpack0_entity_e15e6835ac;

architecture structural of adc_unpack0_entity_e15e6835ac is
  signal delay1_q_net_x0: std_logic_vector(31 downto 0);
  signal reinterpret1_output_port_net_x0: std_logic_vector(7 downto 0);
  signal reinterpret2_output_port_net_x0: std_logic_vector(7 downto 0);
  signal reinterpret3_output_port_net_x0: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x0: std_logic_vector(7 downto 0);
  signal slice6_y_net: std_logic_vector(7 downto 0);
  signal slice7_y_net: std_logic_vector(7 downto 0);
  signal slice8_y_net: std_logic_vector(7 downto 0);
  signal slice9_y_net: std_logic_vector(7 downto 0);

begin
  delay1_q_net_x0 <= in1;
  out1 <= reinterpret_output_port_net_x0;
  out2 <= reinterpret1_output_port_net_x0;
  out3 <= reinterpret2_output_port_net_x0;
  out4 <= reinterpret3_output_port_net_x0;

  reinterpret: entity work.reinterpret_4389dc89bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice9_y_net,
      output_port => reinterpret_output_port_net_x0
    );

  reinterpret1: entity work.reinterpret_4389dc89bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice8_y_net,
      output_port => reinterpret1_output_port_net_x0
    );

  reinterpret2: entity work.reinterpret_4389dc89bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice7_y_net,
      output_port => reinterpret2_output_port_net_x0
    );

  reinterpret3: entity work.reinterpret_4389dc89bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice6_y_net,
      output_port => reinterpret3_output_port_net_x0
    );

  slice6: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => delay1_q_net_x0,
      y => slice6_y_net
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => delay1_q_net_x0,
      y => slice7_y_net
    );

  slice8: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 23,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => delay1_q_net_x0,
      y => slice8_y_net
    );

  slice9: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 31,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => delay1_q_net_x0,
      y => slice9_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/PFBs"

entity pfbs_entity_5b3a77ef5c is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    fft_shift: in std_logic_vector(12 downto 0); 
    in0: in std_logic_vector(31 downto 0); 
    in1: in std_logic_vector(31 downto 0); 
    in2: in std_logic_vector(31 downto 0); 
    in3: in std_logic_vector(31 downto 0); 
    pfb_sync: in std_logic; 
    fft0: out std_logic_vector(35 downto 0); 
    fft1: out std_logic_vector(35 downto 0); 
    fft2: out std_logic_vector(35 downto 0); 
    fft3: out std_logic_vector(35 downto 0); 
    fft4: out std_logic_vector(35 downto 0); 
    fft5: out std_logic_vector(35 downto 0); 
    fft6: out std_logic_vector(35 downto 0); 
    fft7: out std_logic_vector(35 downto 0); 
    sync_fft0: out std_logic
  );
end pfbs_entity_5b3a77ef5c;

architecture structural of pfbs_entity_5b3a77ef5c is
  signal ce_1_sg_x45: std_logic;
  signal clk_1_sg_x45: std_logic;
  signal delay1_q_net_x1: std_logic_vector(31 downto 0);
  signal delay2_q_net_x1: std_logic_vector(31 downto 0);
  signal delay3_q_net_x1: std_logic_vector(31 downto 0);
  signal delay4_q_net_x1: std_logic_vector(31 downto 0);
  signal delay5_q_net_x0: std_logic;
  signal fft2_2048ch1_of_x0_net: std_logic;
  signal fft2_2048ch1_out0_net_x2: std_logic_vector(35 downto 0);
  signal fft2_2048ch1_out1_net_x2: std_logic_vector(35 downto 0);
  signal fft2_2048ch1_sync_out_net: std_logic;
  signal fft2_2048ch2_of_x0_net: std_logic;
  signal fft2_2048ch2_out0_net_x2: std_logic_vector(35 downto 0);
  signal fft2_2048ch2_out1_net_x2: std_logic_vector(35 downto 0);
  signal fft2_2048ch2_sync_out_net: std_logic;
  signal fft2_2048ch3_of_x0_net: std_logic;
  signal fft2_2048ch3_out0_net_x2: std_logic_vector(35 downto 0);
  signal fft2_2048ch3_out1_net_x2: std_logic_vector(35 downto 0);
  signal fft2_2048ch3_sync_out_net: std_logic;
  signal fft2_2048ch_of_x0_net: std_logic;
  signal fft2_2048ch_out0_net_x2: std_logic_vector(35 downto 0);
  signal fft2_2048ch_out1_net_x2: std_logic_vector(35 downto 0);
  signal fft2_2048ch_sync_out_net_x9: std_logic;
  signal fir1_pol1_out1_net: std_logic_vector(17 downto 0);
  signal fir1_pol1_out2_net: std_logic_vector(17 downto 0);
  signal fir1_pol1_out3_net: std_logic_vector(17 downto 0);
  signal fir1_pol1_out4_net: std_logic_vector(17 downto 0);
  signal fir1_sync_out_net: std_logic;
  signal fir2_pol1_out1_net: std_logic_vector(17 downto 0);
  signal fir2_pol1_out2_net: std_logic_vector(17 downto 0);
  signal fir2_pol1_out3_net: std_logic_vector(17 downto 0);
  signal fir2_pol1_out4_net: std_logic_vector(17 downto 0);
  signal fir2_sync_out_net: std_logic;
  signal fir3_pol1_out1_net: std_logic_vector(17 downto 0);
  signal fir3_pol1_out2_net: std_logic_vector(17 downto 0);
  signal fir3_pol1_out3_net: std_logic_vector(17 downto 0);
  signal fir3_pol1_out4_net: std_logic_vector(17 downto 0);
  signal fir3_sync_out_net: std_logic;
  signal fir_pol1_out1_net: std_logic_vector(17 downto 0);
  signal fir_pol1_out2_net: std_logic_vector(17 downto 0);
  signal fir_pol1_out3_net: std_logic_vector(17 downto 0);
  signal fir_pol1_out4_net: std_logic_vector(17 downto 0);
  signal fir_sync_out_net: std_logic;
  signal reinterpret1_output_port_net_x0: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x1: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x2: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x3: std_logic_vector(7 downto 0);
  signal reinterpret2_output_port_net_x0: std_logic_vector(7 downto 0);
  signal reinterpret2_output_port_net_x1: std_logic_vector(7 downto 0);
  signal reinterpret2_output_port_net_x2: std_logic_vector(7 downto 0);
  signal reinterpret2_output_port_net_x3: std_logic_vector(7 downto 0);
  signal reinterpret3_output_port_net_x0: std_logic_vector(7 downto 0);
  signal reinterpret3_output_port_net_x1: std_logic_vector(7 downto 0);
  signal reinterpret3_output_port_net_x2: std_logic_vector(7 downto 0);
  signal reinterpret3_output_port_net_x3: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x0: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x1: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x2: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x3: std_logic_vector(7 downto 0);
  signal slice21_y_net_x1: std_logic_vector(12 downto 0);

begin
  ce_1_sg_x45 <= ce_1;
  clk_1_sg_x45 <= clk_1;
  slice21_y_net_x1 <= fft_shift;
  delay1_q_net_x1 <= in0;
  delay2_q_net_x1 <= in1;
  delay3_q_net_x1 <= in2;
  delay4_q_net_x1 <= in3;
  delay5_q_net_x0 <= pfb_sync;
  fft0 <= fft2_2048ch_out0_net_x2;
  fft1 <= fft2_2048ch_out1_net_x2;
  fft2 <= fft2_2048ch1_out0_net_x2;
  fft3 <= fft2_2048ch1_out1_net_x2;
  fft4 <= fft2_2048ch2_out0_net_x2;
  fft5 <= fft2_2048ch2_out1_net_x2;
  fft6 <= fft2_2048ch3_out0_net_x2;
  fft7 <= fft2_2048ch3_out1_net_x2;
  sync_fft0 <= fft2_2048ch_sync_out_net_x9;

  adc_unpack0_e15e6835ac: entity work.adc_unpack0_entity_e15e6835ac
    port map (
      in1 => delay1_q_net_x1,
      out1 => reinterpret_output_port_net_x0,
      out2 => reinterpret1_output_port_net_x0,
      out3 => reinterpret2_output_port_net_x0,
      out4 => reinterpret3_output_port_net_x0
    );

  adc_unpack1_99b50e1f2d: entity work.adc_unpack0_entity_e15e6835ac
    port map (
      in1 => delay2_q_net_x1,
      out1 => reinterpret_output_port_net_x1,
      out2 => reinterpret1_output_port_net_x1,
      out3 => reinterpret2_output_port_net_x1,
      out4 => reinterpret3_output_port_net_x1
    );

  adc_unpack2_ad11a5c61f: entity work.adc_unpack0_entity_e15e6835ac
    port map (
      in1 => delay3_q_net_x1,
      out1 => reinterpret_output_port_net_x2,
      out2 => reinterpret1_output_port_net_x2,
      out3 => reinterpret2_output_port_net_x2,
      out4 => reinterpret3_output_port_net_x2
    );

  adc_unpack3_d3f55d3878: entity work.adc_unpack0_entity_e15e6835ac
    port map (
      in1 => delay4_q_net_x1,
      out1 => reinterpret_output_port_net_x3,
      out2 => reinterpret1_output_port_net_x3,
      out3 => reinterpret2_output_port_net_x3,
      out4 => reinterpret3_output_port_net_x3
    );

  fft2_2048ch: entity work.fft_wideband_real_core2
    port map (
      ce_1 => ce_1_sg_x45,
      clk_1 => clk_1_sg_x45,
      in0 => fir_pol1_out1_net,
      in1 => fir_pol1_out2_net,
      in2 => fir_pol1_out3_net,
      in3 => fir_pol1_out4_net,
      shift => slice21_y_net_x1,
      sync => fir_sync_out_net,
      of_x0 => fft2_2048ch_of_x0_net,
      out0 => fft2_2048ch_out0_net_x2,
      out1 => fft2_2048ch_out1_net_x2,
      sync_out => fft2_2048ch_sync_out_net_x9
    );

  fft2_2048ch1: entity work.fft_wideband_real_core2
    port map (
      ce_1 => ce_1_sg_x45,
      clk_1 => clk_1_sg_x45,
      in0 => fir1_pol1_out1_net,
      in1 => fir1_pol1_out2_net,
      in2 => fir1_pol1_out3_net,
      in3 => fir1_pol1_out4_net,
      shift => slice21_y_net_x1,
      sync => fir1_sync_out_net,
      of_x0 => fft2_2048ch1_of_x0_net,
      out0 => fft2_2048ch1_out0_net_x2,
      out1 => fft2_2048ch1_out1_net_x2,
      sync_out => fft2_2048ch1_sync_out_net
    );

  fft2_2048ch2: entity work.fft_wideband_real_core2
    port map (
      ce_1 => ce_1_sg_x45,
      clk_1 => clk_1_sg_x45,
      in0 => fir2_pol1_out1_net,
      in1 => fir2_pol1_out2_net,
      in2 => fir2_pol1_out3_net,
      in3 => fir2_pol1_out4_net,
      shift => slice21_y_net_x1,
      sync => fir2_sync_out_net,
      of_x0 => fft2_2048ch2_of_x0_net,
      out0 => fft2_2048ch2_out0_net_x2,
      out1 => fft2_2048ch2_out1_net_x2,
      sync_out => fft2_2048ch2_sync_out_net
    );

  fft2_2048ch3: entity work.fft_wideband_real_core2
    port map (
      ce_1 => ce_1_sg_x45,
      clk_1 => clk_1_sg_x45,
      in0 => fir3_pol1_out1_net,
      in1 => fir3_pol1_out2_net,
      in2 => fir3_pol1_out3_net,
      in3 => fir3_pol1_out4_net,
      shift => slice21_y_net_x1,
      sync => fir3_sync_out_net,
      of_x0 => fft2_2048ch3_of_x0_net,
      out0 => fft2_2048ch3_out0_net_x2,
      out1 => fft2_2048ch3_out1_net_x2,
      sync_out => fft2_2048ch3_sync_out_net
    );

  fir: entity work.fir_core
    port map (
      ce_1 => ce_1_sg_x45,
      clk_1 => clk_1_sg_x45,
      pol1_in1 => reinterpret_output_port_net_x0,
      pol1_in2 => reinterpret1_output_port_net_x0,
      pol1_in3 => reinterpret2_output_port_net_x0,
      pol1_in4 => reinterpret3_output_port_net_x0,
      sync => delay5_q_net_x0,
      pol1_out1 => fir_pol1_out1_net,
      pol1_out2 => fir_pol1_out2_net,
      pol1_out3 => fir_pol1_out3_net,
      pol1_out4 => fir_pol1_out4_net,
      sync_out => fir_sync_out_net
    );

  fir1: entity work.fir_core
    port map (
      ce_1 => ce_1_sg_x45,
      clk_1 => clk_1_sg_x45,
      pol1_in1 => reinterpret_output_port_net_x1,
      pol1_in2 => reinterpret1_output_port_net_x1,
      pol1_in3 => reinterpret2_output_port_net_x1,
      pol1_in4 => reinterpret3_output_port_net_x1,
      sync => delay5_q_net_x0,
      pol1_out1 => fir1_pol1_out1_net,
      pol1_out2 => fir1_pol1_out2_net,
      pol1_out3 => fir1_pol1_out3_net,
      pol1_out4 => fir1_pol1_out4_net,
      sync_out => fir1_sync_out_net
    );

  fir2: entity work.fir_core
    port map (
      ce_1 => ce_1_sg_x45,
      clk_1 => clk_1_sg_x45,
      pol1_in1 => reinterpret_output_port_net_x2,
      pol1_in2 => reinterpret1_output_port_net_x2,
      pol1_in3 => reinterpret2_output_port_net_x2,
      pol1_in4 => reinterpret3_output_port_net_x2,
      sync => delay5_q_net_x0,
      pol1_out1 => fir2_pol1_out1_net,
      pol1_out2 => fir2_pol1_out2_net,
      pol1_out3 => fir2_pol1_out3_net,
      pol1_out4 => fir2_pol1_out4_net,
      sync_out => fir2_sync_out_net
    );

  fir3: entity work.fir_core
    port map (
      ce_1 => ce_1_sg_x45,
      clk_1 => clk_1_sg_x45,
      pol1_in1 => reinterpret_output_port_net_x3,
      pol1_in2 => reinterpret1_output_port_net_x3,
      pol1_in3 => reinterpret2_output_port_net_x3,
      pol1_in4 => reinterpret3_output_port_net_x3,
      sync => delay5_q_net_x0,
      pol1_out1 => fir3_pol1_out1_net,
      pol1_out2 => fir3_pol1_out2_net,
      pol1_out3 => fir3_pol1_out3_net,
      pol1_out4 => fir3_pol1_out4_net,
      sync_out => fir3_sync_out_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/Timebase/sync_gen/sync_delay"

entity sync_delay_entity_05a8db3bf6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_05a8db3bf6;

architecture structural of sync_delay_entity_05a8db3bf6 is
  signal ce_1_sg_x49: std_logic;
  signal clk_1_sg_x49: std_logic;
  signal constant1_op_net: std_logic_vector(27 downto 0);
  signal constant2_op_net: std_logic_vector(27 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(27 downto 0);
  signal counter_op_net: std_logic_vector(27 downto 0);
  signal logical_y_net: std_logic;
  signal logical_y_net_x1: std_logic;
  signal mux_y_net_x0: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x49 <= ce_1;
  clk_1_sg_x49 <= clk_1;
  logical_y_net_x1 <= in_x0;
  out_x0 <= mux_y_net_x0;

  constant1: entity work.constant_98b461a391
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_904ec37ea9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  constant_x0: entity work.constant_c1bd3afa8c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_0c399983e369864b",
      op_arith => xlUnsigned,
      op_width => 28
    )
    port map (
      ce => ce_1_sg_x49,
      clk => clk_1_sg_x49,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => logical_y_net_x1,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x1,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x1,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x0
    );

  relational: entity work.relational_1ea7543d62
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_8759749125
    port map (
      a => counter_op_net,
      b => constant1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/Timebase/sync_gen"

entity sync_gen_entity_5da19c32c5 is
  port (
    arm: in std_logic; 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    armed: out std_logic; 
    mrst: out std_logic; 
    sync: out std_logic
  );
end sync_gen_entity_5da19c32c5;

architecture structural of sync_gen_entity_5da19c32c5 is
  signal ce_1_sg_x50: std_logic;
  signal clk_1_sg_x50: std_logic;
  signal constant10_op_net: std_logic;
  signal constant1_op_net: std_logic_vector(29 downto 0);
  signal counter_op_net: std_logic_vector(29 downto 0);
  signal inverter_op_net_x1: std_logic;
  signal logical7_y_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x2: std_logic;
  signal logical_y_net_x3: std_logic;
  signal mux_y_net_x1: std_logic;
  signal register_q_net_x0: std_logic;
  signal relational_op_net_x0: std_logic;
  signal slice7_y_net_x2: std_logic;

begin
  slice7_y_net_x2 <= arm;
  ce_1_sg_x50 <= ce_1;
  clk_1_sg_x50 <= clk_1;
  logical7_y_net_x0 <= rst;
  armed <= inverter_op_net_x1;
  mrst <= mux_y_net_x1;
  sync <= logical_y_net_x3;

  constant1: entity work.constant_776fc94a06
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant10: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant10_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_9d1193ca144fd60c",
      op_arith => xlUnsigned,
      op_width => 30
    )
    port map (
      ce => ce_1_sg_x50,
      clk => clk_1_sg_x50,
      clr => '0',
      en => "1",
      rst(0) => logical_y_net,
      op => counter_op_net
    );

  inverter: entity work.inverter_251f82b86b
    port map (
      ce => ce_1_sg_x50,
      clk => clk_1_sg_x50,
      clr => '0',
      ip(0) => register_q_net_x0,
      op(0) => inverter_op_net_x1
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational_op_net_x0,
      d1(0) => logical_y_net_x2,
      y(0) => logical_y_net
    );

  posedge1_e124bac08a: entity work.posedge_entity_21f484bc47
    port map (
      ce_1 => ce_1_sg_x50,
      clk_1 => clk_1_sg_x50,
      in_x0 => register_q_net_x0,
      out_x0 => logical_y_net_x2
    );

  posedge2_2021847ba9: entity work.posedge_entity_21f484bc47
    port map (
      ce_1 => ce_1_sg_x50,
      clk_1 => clk_1_sg_x50,
      in_x0 => slice7_y_net_x2,
      out_x0 => logical_y_net_x0
    );

  posedge_d7f2b04eef: entity work.posedge_entity_21f484bc47
    port map (
      ce_1 => ce_1_sg_x50,
      clk_1 => clk_1_sg_x50,
      in_x0 => relational_op_net_x0,
      out_x0 => logical_y_net_x3
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x50,
      clk => clk_1_sg_x50,
      d(0) => constant10_op_net,
      en(0) => logical7_y_net_x0,
      rst(0) => logical_y_net_x0,
      q(0) => register_q_net_x0
    );

  relational: entity work.relational_5dfdb25be4
    port map (
      a => counter_op_net,
      b => constant1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net_x0
    );

  sync_delay_05a8db3bf6: entity work.sync_delay_entity_05a8db3bf6
    port map (
      ce_1 => ce_1_sg_x50,
      clk_1 => clk_1_sg_x50,
      in_x0 => logical_y_net_x2,
      out_x0 => mux_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/Timebase"

entity timebase_entity_9c465eac4b is
  port (
    adc0_sync: in std_logic; 
    adc1_sync: in std_logic; 
    arm_rst: in std_logic; 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync_rst: in std_logic; 
    armed: out std_logic; 
    mrst: out std_logic; 
    sync_gen: out std_logic
  );
end timebase_entity_9c465eac4b;

architecture structural of timebase_entity_9c465eac4b is
  signal ce_1_sg_x51: std_logic;
  signal clk_1_sg_x51: std_logic;
  signal delay14_q_net_x1: std_logic;
  signal delay9_q_net_x1: std_logic;
  signal inverter_op_net_x2: std_logic;
  signal logical7_y_net_x0: std_logic;
  signal logical_y_net_x4: std_logic;
  signal mux_y_net_x2: std_logic;
  signal slice6_y_net_x1: std_logic;
  signal slice7_y_net_x3: std_logic;

begin
  delay9_q_net_x1 <= adc0_sync;
  delay14_q_net_x1 <= adc1_sync;
  slice7_y_net_x3 <= arm_rst;
  ce_1_sg_x51 <= ce_1;
  clk_1_sg_x51 <= clk_1;
  slice6_y_net_x1 <= sync_rst;
  armed <= inverter_op_net_x2;
  mrst <= mux_y_net_x2;
  sync_gen <= logical_y_net_x4;

  logical7: entity work.logical_5773759131
    port map (
      ce => ce_1_sg_x51,
      clk => clk_1_sg_x51,
      clr => '0',
      d0(0) => delay9_q_net_x1,
      d1(0) => slice6_y_net_x1,
      d2(0) => delay14_q_net_x1,
      y(0) => logical7_y_net_x0
    );

  sync_gen_5da19c32c5: entity work.sync_gen_entity_5da19c32c5
    port map (
      arm => slice7_y_net_x3,
      ce_1 => ce_1_sg_x51,
      clk_1 => clk_1_sg_x51,
      rst => logical7_y_net_x0,
      armed => inverter_op_net_x2,
      mrst => mux_y_net_x2,
      sync => logical_y_net_x4
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/WGNs/noise0/convert"

entity convert_entity_27c790ff6d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(16 downto 0); 
    out_x0: out std_logic_vector(7 downto 0)
  );
end convert_entity_27c790ff6d;

architecture structural of convert_entity_27c790ff6d is
  signal adder_s_net_x0: std_logic_vector(7 downto 0);
  signal almost_half_op_net: std_logic_vector(10 downto 0);
  signal bit_y_net: std_logic;
  signal ce_1_sg_x52: std_logic;
  signal clk_1_sg_x52: std_logic;
  signal concat_y_net: std_logic_vector(17 downto 0);
  signal constant_op_net: std_logic;
  signal force1_output_port_net: std_logic_vector(17 downto 0);
  signal force2_output_port_net: std_logic_vector(10 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(16 downto 0);
  signal scale_op_net_x0: std_logic_vector(16 downto 0);
  signal tweak_op_y_net: std_logic;

begin
  ce_1_sg_x52 <= ce_1;
  clk_1_sg_x52 <= clk_1;
  scale_op_net_x0 <= in_x0;
  out_x0 <= adder_s_net_x0;

  adder: entity work.addsub_542df25df6
    port map (
      a => force1_output_port_net,
      b => force2_output_port_net,
      ce => ce_1_sg_x52,
      clk => clk_1_sg_x52,
      clr => '0',
      s => adder_s_net_x0
    );

  almost_half: entity work.constant_f5d769813d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => almost_half_op_net
    );

  bit: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 16,
      x_width => 17,
      y_width => 1
    )
    port map (
      x => scale_op_net_x0,
      y(0) => bit_y_net
    );

  concat: entity work.concat_66f3e02bd3
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret_output_port_net,
      in1(0) => tweak_op_y_net,
      y => concat_y_net
    );

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  force1: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_y_net,
      output_port => force1_output_port_net
    );

  force2: entity work.reinterpret_6b1adb5d55
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => almost_half_op_net,
      output_port => force2_output_port_net
    );

  reinterpret: entity work.reinterpret_573890e1c0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => scale_op_net_x0,
      output_port => reinterpret_output_port_net
    );

  tweak_op: entity work.logical_9d76333483
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => bit_y_net,
      d1(0) => constant_op_net,
      y(0) => tweak_op_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/WGNs/noise0/wgn/tt800_uprng/tt800_engine/output"

entity output_entity_96ea4ae0c6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(31 downto 0); 
    out_x0: out std_logic_vector(31 downto 0)
  );
end output_entity_96ea4ae0c6;

architecture structural of output_entity_96ea4ae0c6 is
  signal b_op_net: std_logic_vector(31 downto 0);
  signal c_op_net: std_logic_vector(31 downto 0);
  signal ce_1_sg_x54: std_logic;
  signal clk_1_sg_x54: std_logic;
  signal delay1_q_net: std_logic_vector(31 downto 0);
  signal delay_q_net: std_logic_vector(31 downto 0);
  signal logical1_y_net: std_logic_vector(31 downto 0);
  signal logical2_y_net_x0: std_logic_vector(31 downto 0);
  signal logical3_y_net: std_logic_vector(31 downto 0);
  signal logical4_y_net: std_logic_vector(31 downto 0);
  signal lshift_s_op_net: std_logic_vector(31 downto 0);
  signal lshift_t_op_net: std_logic_vector(31 downto 0);
  signal x_l_q_net_x0: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x54 <= ce_1;
  clk_1_sg_x54 <= clk_1;
  x_l_q_net_x0 <= in_x0;
  out_x0 <= logical2_y_net_x0;

  b: entity work.constant_f8d41441cb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => b_op_net
    );

  c: entity work.constant_7a5a41eeb1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => c_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x54,
      clk => clk_1_sg_x54,
      d => x_l_q_net_x0,
      en => '1',
      rst => '1',
      q => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x54,
      clk => clk_1_sg_x54,
      d => logical1_y_net,
      en => '1',
      rst => '1',
      q => delay1_q_net
    );

  logical1: entity work.logical_1e8142cab4
    port map (
      ce => ce_1_sg_x54,
      clk => clk_1_sg_x54,
      clr => '0',
      d0 => delay_q_net,
      d1 => logical3_y_net,
      y => logical1_y_net
    );

  logical2: entity work.logical_1e8142cab4
    port map (
      ce => ce_1_sg_x54,
      clk => clk_1_sg_x54,
      clr => '0',
      d0 => delay1_q_net,
      d1 => logical4_y_net,
      y => logical2_y_net_x0
    );

  logical3: entity work.logical_0fa52c7c40
    port map (
      ce => ce_1_sg_x54,
      clk => clk_1_sg_x54,
      clr => '0',
      d0 => lshift_s_op_net,
      d1 => b_op_net,
      y => logical3_y_net
    );

  logical4: entity work.logical_0fa52c7c40
    port map (
      ce => ce_1_sg_x54,
      clk => clk_1_sg_x54,
      clr => '0',
      d0 => lshift_t_op_net,
      d1 => c_op_net,
      y => logical4_y_net
    );

  lshift_s: entity work.shift_a3d6e8e72f
    port map (
      ce => ce_1_sg_x54,
      clk => clk_1_sg_x54,
      clr => '0',
      ip => x_l_q_net_x0,
      op => lshift_s_op_net
    );

  lshift_t: entity work.shift_9c14cd27bd
    port map (
      ce => ce_1_sg_x54,
      clk => clk_1_sg_x54,
      clr => '0',
      ip => logical1_y_net,
      op => lshift_t_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/WGNs/noise0/wgn/tt800_uprng/tt800_engine"

entity tt800_engine_entity_2098f6d430 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    seed: in std_logic_vector(31 downto 0); 
    seed_en: in std_logic; 
    u: out std_logic_vector(31 downto 0)
  );
end tt800_engine_entity_2098f6d430;

architecture structural of tt800_engine_entity_2098f6d430 is
  signal a_op_net: std_logic_vector(31 downto 0);
  signal ce_1_sg_x55: std_logic;
  signal clk_1_sg_x55: std_logic;
  signal constant3_op_net: std_logic_vector(31 downto 0);
  signal delay_q_net: std_logic_vector(31 downto 0);
  signal expression_dout_net_x0: std_logic;
  signal lfsr_dout_net_x0: std_logic_vector(31 downto 0);
  signal logical2_y_net_x1: std_logic_vector(31 downto 0);
  signal logical_y_net: std_logic_vector(31 downto 0);
  signal lsb_y_net: std_logic;
  signal mux1_y_net: std_logic_vector(31 downto 0);
  signal mux_y_net: std_logic_vector(31 downto 0);
  signal rshift_1_op_net: std_logic_vector(31 downto 0);
  signal x_l_m_q_net: std_logic_vector(31 downto 0);
  signal x_l_q_net_x0: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x55 <= ce_1;
  clk_1_sg_x55 <= clk_1;
  lfsr_dout_net_x0 <= seed;
  expression_dout_net_x0 <= seed_en;
  u <= logical2_y_net_x1;

  a: entity work.constant_79cd191324
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => a_op_net
    );

  constant3: entity work.constant_37567836aa
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      d => x_l_m_q_net,
      en => '1',
      rst => '1',
      q => delay_q_net
    );

  logical: entity work.logical_f1acd27428
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      d0 => delay_q_net,
      d1 => rshift_1_op_net,
      d2 => mux_y_net,
      y => logical_y_net
    );

  lsb: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => x_l_q_net_x0,
      y(0) => lsb_y_net
    );

  mux: entity work.mux_52ae77d946
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      d0 => constant3_op_net,
      d1 => a_op_net,
      sel(0) => lsb_y_net,
      y => mux_y_net
    );

  mux1: entity work.mux_86a34309e7
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      d0 => logical_y_net,
      d1 => lfsr_dout_net_x0,
      sel(0) => expression_dout_net_x0,
      y => mux1_y_net
    );

  output_96ea4ae0c6: entity work.output_entity_96ea4ae0c6
    port map (
      ce_1 => ce_1_sg_x55,
      clk_1 => clk_1_sg_x55,
      in_x0 => x_l_q_net_x0,
      out_x0 => logical2_y_net_x1
    );

  rshift_1: entity work.shift_82822b2849
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      ip => x_l_q_net_x0,
      op => rshift_1_op_net
    );

  x_l: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      reset => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      d => x_l_m_q_net,
      en => '1',
      rst => '1',
      q => x_l_q_net_x0
    );

  x_l_m: entity work.xldelay
    generic map (
      latency => 15,
      reg_retiming => 0,
      reset => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      d => mux1_y_net,
      en => '1',
      rst => '1',
      q => x_l_m_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/WGNs/noise0/wgn/tt800_uprng/tt800_seed_gen/bootstrap"

entity bootstrap_entity_f4ae31524b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    out_x0: out std_logic
  );
end bootstrap_entity_f4ae31524b;

architecture structural of bootstrap_entity_f4ae31524b is
  signal ce_1_sg_x56: std_logic;
  signal clk_1_sg_x56: std_logic;
  signal constant3_op_net: std_logic;
  signal delay_q_net: std_logic;
  signal register_q_net_x0: std_logic;

begin
  ce_1_sg_x56 <= ce_1;
  clk_1_sg_x56 <= clk_1;
  out_x0 <= register_q_net_x0;

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 25,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      d(0) => constant3_op_net,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      d(0) => constant3_op_net,
      en(0) => constant3_op_net,
      rst(0) => delay_q_net,
      q(0) => register_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/WGNs/noise0/wgn/tt800_uprng/tt800_seed_gen/p24_extender"

entity p24_extender_entity_c0f36f30a5 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end p24_extender_entity_c0f36f30a5;

architecture structural of p24_extender_entity_c0f36f30a5 is
  signal ce_1_sg_x57: std_logic;
  signal clk_1_sg_x57: std_logic;
  signal constant3_op_net: std_logic;
  signal delay_q_net: std_logic;
  signal expression_dout_net_x0: std_logic;
  signal register_q_net_x0: std_logic;

begin
  ce_1_sg_x57 <= ce_1;
  clk_1_sg_x57 <= clk_1;
  expression_dout_net_x0 <= in_x0;
  out_x0 <= register_q_net_x0;

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 24,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      d(0) => expression_dout_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      d(0) => constant3_op_net,
      en(0) => expression_dout_net_x0,
      rst(0) => delay_q_net,
      q(0) => register_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/WGNs/noise0/wgn/tt800_uprng/tt800_seed_gen/r_edge_detect"

entity r_edge_detect_entity_42f50804fe is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end r_edge_detect_entity_42f50804fe;

architecture structural of r_edge_detect_entity_42f50804fe is
  signal ce_1_sg_x58: std_logic;
  signal clk_1_sg_x58: std_logic;
  signal delay_q_net: std_logic;
  signal expression_dout_net_x1: std_logic;
  signal logical_y_net_x0: std_logic;

begin
  ce_1_sg_x58 <= ce_1;
  clk_1_sg_x58 <= clk_1;
  logical_y_net_x0 <= in_x0;
  out_x0 <= expression_dout_net_x1;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x58,
      clk => clk_1_sg_x58,
      d(0) => logical_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  expression: entity work.expr_c255d1cf74
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      curr(0) => logical_y_net_x0,
      prev(0) => delay_q_net,
      dout(0) => expression_dout_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/WGNs/noise0/wgn/tt800_uprng/tt800_seed_gen"

entity tt800_seed_gen_entity_d212a92f8e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    ld: in std_logic; 
    seed_in: in std_logic_vector(31 downto 0); 
    seed_en: out std_logic; 
    seed_out: out std_logic_vector(31 downto 0)
  );
end tt800_seed_gen_entity_d212a92f8e;

architecture structural of tt800_seed_gen_entity_d212a92f8e is
  signal bitbasher_seed0_net_x0: std_logic_vector(31 downto 0);
  signal ce_1_sg_x59: std_logic;
  signal clk_1_sg_x59: std_logic;
  signal expression_dout_net_x1: std_logic;
  signal expression_dout_net_x2: std_logic;
  signal lfsr_dout_net_x1: std_logic_vector(31 downto 0);
  signal logical_y_net_x1: std_logic;
  signal register_q_net_x0: std_logic;
  signal register_q_net_x1: std_logic;

begin
  ce_1_sg_x59 <= ce_1;
  clk_1_sg_x59 <= clk_1;
  logical_y_net_x1 <= ld;
  bitbasher_seed0_net_x0 <= seed_in;
  seed_en <= expression_dout_net_x2;
  seed_out <= lfsr_dout_net_x1;

  bootstrap_f4ae31524b: entity work.bootstrap_entity_f4ae31524b
    port map (
      ce_1 => ce_1_sg_x59,
      clk_1 => clk_1_sg_x59,
      out_x0 => register_q_net_x0
    );

  expression: entity work.expr_52ec6336d5
    port map (
      bootstrap(0) => register_q_net_x0,
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      ld(0) => logical_y_net_x1,
      ld_ext(0) => register_q_net_x1,
      dout(0) => expression_dout_net_x2
    );

  lfsr: entity work.lfsr_f82dbd1991
    port map (
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      din => bitbasher_seed0_net_x0,
      load(0) => logical_y_net_x1,
      dout => lfsr_dout_net_x1
    );

  p24_extender_c0f36f30a5: entity work.p24_extender_entity_c0f36f30a5
    port map (
      ce_1 => ce_1_sg_x59,
      clk_1 => clk_1_sg_x59,
      in_x0 => expression_dout_net_x1,
      out_x0 => register_q_net_x1
    );

  r_edge_detect_42f50804fe: entity work.r_edge_detect_entity_42f50804fe
    port map (
      ce_1 => ce_1_sg_x59,
      clk_1 => clk_1_sg_x59,
      in_x0 => logical_y_net_x1,
      out_x0 => expression_dout_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/WGNs/noise0/wgn/tt800_uprng"

entity tt800_uprng_entity_f26ddee7e7 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    ld: in std_logic; 
    seed: in std_logic_vector(31 downto 0); 
    u: out std_logic_vector(31 downto 0)
  );
end tt800_uprng_entity_f26ddee7e7;

architecture structural of tt800_uprng_entity_f26ddee7e7 is
  signal bitbasher_seed0_net_x1: std_logic_vector(31 downto 0);
  signal ce_1_sg_x60: std_logic;
  signal clk_1_sg_x60: std_logic;
  signal expression_dout_net_x2: std_logic;
  signal lfsr_dout_net_x1: std_logic_vector(31 downto 0);
  signal logical2_y_net_x2: std_logic_vector(31 downto 0);
  signal logical_y_net_x2: std_logic;

begin
  ce_1_sg_x60 <= ce_1;
  clk_1_sg_x60 <= clk_1;
  logical_y_net_x2 <= ld;
  bitbasher_seed0_net_x1 <= seed;
  u <= logical2_y_net_x2;

  tt800_engine_2098f6d430: entity work.tt800_engine_entity_2098f6d430
    port map (
      ce_1 => ce_1_sg_x60,
      clk_1 => clk_1_sg_x60,
      seed => lfsr_dout_net_x1,
      seed_en => expression_dout_net_x2,
      u => logical2_y_net_x2
    );

  tt800_seed_gen_d212a92f8e: entity work.tt800_seed_gen_entity_d212a92f8e
    port map (
      ce_1 => ce_1_sg_x60,
      clk_1 => clk_1_sg_x60,
      ld => logical_y_net_x2,
      seed_in => bitbasher_seed0_net_x1,
      seed_en => expression_dout_net_x2,
      seed_out => lfsr_dout_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/WGNs/noise0/wgn/u2n/sincos"

entity sincos_entity_8be6732481 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    theta: in std_logic_vector(10 downto 0); 
    cos: out std_logic_vector(7 downto 0); 
    sine: out std_logic_vector(7 downto 0)
  );
end sincos_entity_8be6732481;

architecture structural of sincos_entity_8be6732481 is
  signal bottom_11_y_net_x0: std_logic_vector(10 downto 0);
  signal ce_1_sg_x61: std_logic;
  signal clk_1_sg_x61: std_logic;
  signal rom0_data_net_x0: std_logic_vector(7 downto 0);
  signal rom1_data_net_x0: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x61 <= ce_1;
  clk_1_sg_x61 <= clk_1;
  bottom_11_y_net_x0 <= theta;
  cos <= rom1_data_net_x0;
  sine <= rom0_data_net_x0;

  rom0: entity work.xlsprom
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_62_61722a40b5652b33",
      latency => 3
    )
    port map (
      addr => bottom_11_y_net_x0,
      ce => ce_1_sg_x61,
      clk => clk_1_sg_x61,
      en => "1",
      rst => "0",
      data => rom0_data_net_x0
    );

  rom1: entity work.xlsprom
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_62_45150160fbf326f2",
      latency => 3
    )
    port map (
      addr => bottom_11_y_net_x0,
      ce => ce_1_sg_x61,
      clk => clk_1_sg_x61,
      en => "1",
      rst => "0",
      data => rom1_data_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/WGNs/noise0/wgn/u2n"

entity u2n_entity_dbd9a311bf is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    u: in std_logic_vector(31 downto 0); 
    n1: out std_logic_vector(16 downto 0); 
    n2: out std_logic_vector(16 downto 0)
  );
end u2n_entity_dbd9a311bf;

architecture structural of u2n_entity_dbd9a311bf is
  signal bottom_11_y_net_x0: std_logic_vector(10 downto 0);
  signal ce_1_sg_x62: std_logic;
  signal clk_1_sg_x62: std_logic;
  signal log_lut_data_net: std_logic_vector(8 downto 0);
  signal logical2_y_net_x3: std_logic_vector(31 downto 0);
  signal r_cos_p_net_x0: std_logic_vector(16 downto 0);
  signal r_sin_p_net_x0: std_logic_vector(16 downto 0);
  signal rom0_data_net_x0: std_logic_vector(7 downto 0);
  signal rom1_data_net_x0: std_logic_vector(7 downto 0);
  signal top_11_y_net: std_logic_vector(10 downto 0);

begin
  ce_1_sg_x62 <= ce_1;
  clk_1_sg_x62 <= clk_1;
  logical2_y_net_x3 <= u;
  n1 <= r_sin_p_net_x0;
  n2 <= r_cos_p_net_x0;

  bottom_11: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 10,
      x_width => 32,
      y_width => 11
    )
    port map (
      x => logical2_y_net_x3,
      y => bottom_11_y_net_x0
    );

  log_lut: entity work.xlsprom
    generic map (
      c_address_width => 11,
      c_width => 9,
      core_name0 => "bmg_62_73edef83fb7839d9",
      latency => 1
    )
    port map (
      addr => top_11_y_net,
      ce => ce_1_sg_x62,
      clk => clk_1_sg_x62,
      en => "1",
      rst => "0",
      data => log_lut_data_net
    );

  r_cos: entity work.xlmult
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 7,
      a_width => 9,
      b_arith => xlSigned,
      b_bin_pt => 7,
      b_width => 8,
      c_a_type => 1,
      c_a_width => 9,
      c_b_type => 0,
      c_b_width => 8,
      c_baat => 9,
      c_output_width => 17,
      c_type => 0,
      core_name0 => "mult_11_2_d745d7ddd0aa234d",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 14,
      p_width => 17,
      quantization => 1
    )
    port map (
      a => log_lut_data_net,
      b => rom1_data_net_x0,
      ce => ce_1_sg_x62,
      clk => clk_1_sg_x62,
      clr => '0',
      core_ce => ce_1_sg_x62,
      core_clk => clk_1_sg_x62,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => r_cos_p_net_x0
    );

  r_sin: entity work.xlmult
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 7,
      a_width => 9,
      b_arith => xlSigned,
      b_bin_pt => 7,
      b_width => 8,
      c_a_type => 1,
      c_a_width => 9,
      c_b_type => 0,
      c_b_width => 8,
      c_baat => 9,
      c_output_width => 17,
      c_type => 0,
      core_name0 => "mult_11_2_d745d7ddd0aa234d",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 14,
      p_width => 17,
      quantization => 1
    )
    port map (
      a => log_lut_data_net,
      b => rom0_data_net_x0,
      ce => ce_1_sg_x62,
      clk => clk_1_sg_x62,
      clr => '0',
      core_ce => ce_1_sg_x62,
      core_clk => clk_1_sg_x62,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => r_sin_p_net_x0
    );

  sincos_8be6732481: entity work.sincos_entity_8be6732481
    port map (
      ce_1 => ce_1_sg_x62,
      clk_1 => clk_1_sg_x62,
      theta => bottom_11_y_net_x0,
      cos => rom1_data_net_x0,
      sine => rom0_data_net_x0
    );

  top_11: entity work.xlslice
    generic map (
      new_lsb => 21,
      new_msb => 31,
      x_width => 32,
      y_width => 11
    )
    port map (
      x => logical2_y_net_x3,
      y => top_11_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/WGNs/noise0/wgn"

entity wgn_entity_5ed77cdf43 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    ld: in std_logic; 
    seed: in std_logic_vector(31 downto 0); 
    n1: out std_logic_vector(16 downto 0); 
    n2: out std_logic_vector(16 downto 0)
  );
end wgn_entity_5ed77cdf43;

architecture structural of wgn_entity_5ed77cdf43 is
  signal bitbasher_seed0_net_x2: std_logic_vector(31 downto 0);
  signal ce_1_sg_x63: std_logic;
  signal clk_1_sg_x63: std_logic;
  signal logical2_y_net_x3: std_logic_vector(31 downto 0);
  signal logical_y_net_x3: std_logic;
  signal r_cos_p_net_x1: std_logic_vector(16 downto 0);
  signal r_sin_p_net_x1: std_logic_vector(16 downto 0);

begin
  ce_1_sg_x63 <= ce_1;
  clk_1_sg_x63 <= clk_1;
  logical_y_net_x3 <= ld;
  bitbasher_seed0_net_x2 <= seed;
  n1 <= r_sin_p_net_x1;
  n2 <= r_cos_p_net_x1;

  tt800_uprng_f26ddee7e7: entity work.tt800_uprng_entity_f26ddee7e7
    port map (
      ce_1 => ce_1_sg_x63,
      clk_1 => clk_1_sg_x63,
      ld => logical_y_net_x3,
      seed => bitbasher_seed0_net_x2,
      u => logical2_y_net_x3
    );

  u2n_dbd9a311bf: entity work.u2n_entity_dbd9a311bf
    port map (
      ce_1 => ce_1_sg_x63,
      clk_1 => clk_1_sg_x63,
      u => logical2_y_net_x3,
      n1 => r_sin_p_net_x1,
      n2 => r_cos_p_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/WGNs/noise0"

entity noise0_entity_e51b957e94 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    ld: in std_logic; 
    seed: in std_logic_vector(31 downto 0); 
    n1: out std_logic_vector(7 downto 0); 
    n2: out std_logic_vector(7 downto 0)
  );
end noise0_entity_e51b957e94;

architecture structural of noise0_entity_e51b957e94 is
  signal adder_s_net_x0: std_logic_vector(7 downto 0);
  signal adder_s_net_x1: std_logic_vector(7 downto 0);
  signal bitbasher_seed0_net_x3: std_logic_vector(31 downto 0);
  signal ce_1_sg_x64: std_logic;
  signal clk_1_sg_x64: std_logic;
  signal logical_y_net_x4: std_logic;
  signal r_cos_p_net_x1: std_logic_vector(16 downto 0);
  signal r_sin_p_net_x1: std_logic_vector(16 downto 0);
  signal reinterpret1_output_port_net_x0: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x0: std_logic_vector(7 downto 0);
  signal scale1_op_net_x0: std_logic_vector(16 downto 0);
  signal scale_op_net_x0: std_logic_vector(16 downto 0);

begin
  ce_1_sg_x64 <= ce_1;
  clk_1_sg_x64 <= clk_1;
  logical_y_net_x4 <= ld;
  bitbasher_seed0_net_x3 <= seed;
  n1 <= reinterpret_output_port_net_x0;
  n2 <= reinterpret1_output_port_net_x0;

  convert1_b2f320bbbb: entity work.convert_entity_27c790ff6d
    port map (
      ce_1 => ce_1_sg_x64,
      clk_1 => clk_1_sg_x64,
      in_x0 => scale1_op_net_x0,
      out_x0 => adder_s_net_x1
    );

  convert_27c790ff6d: entity work.convert_entity_27c790ff6d
    port map (
      ce_1 => ce_1_sg_x64,
      clk_1 => clk_1_sg_x64,
      in_x0 => scale_op_net_x0,
      out_x0 => adder_s_net_x0
    );

  reinterpret: entity work.reinterpret_d9988e3d87
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => adder_s_net_x0,
      output_port => reinterpret_output_port_net_x0
    );

  reinterpret1: entity work.reinterpret_d9988e3d87
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => adder_s_net_x1,
      output_port => reinterpret1_output_port_net_x0
    );

  scale: entity work.scale_b42effccbc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => r_sin_p_net_x1,
      op => scale_op_net_x0
    );

  scale1: entity work.scale_b42effccbc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => r_cos_p_net_x1,
      op => scale1_op_net_x0
    );

  wgn_5ed77cdf43: entity work.wgn_entity_5ed77cdf43
    port map (
      ce_1 => ce_1_sg_x64,
      clk_1 => clk_1_sg_x64,
      ld => logical_y_net_x4,
      seed => bitbasher_seed0_net_x3,
      n1 => r_sin_p_net_x1,
      n2 => r_cos_p_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/WGNs"

entity wgns_entity_141b1491ee is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    seed0: in std_logic_vector(31 downto 0); 
    seed1: in std_logic_vector(31 downto 0); 
    seed2: in std_logic_vector(31 downto 0); 
    seed3: in std_logic_vector(31 downto 0); 
    seed_ld: in std_logic; 
    n0: out std_logic_vector(31 downto 0); 
    n1: out std_logic_vector(31 downto 0)
  );
end wgns_entity_141b1491ee;

architecture structural of wgns_entity_141b1491ee is
  signal bitbasher_seed0_net_x4: std_logic_vector(31 downto 0);
  signal bitbasher_seed1_net_x4: std_logic_vector(31 downto 0);
  signal bitbasher_seed2_net_x4: std_logic_vector(31 downto 0);
  signal bitbasher_seed3_net_x4: std_logic_vector(31 downto 0);
  signal ce_1_sg_x104: std_logic;
  signal clk_1_sg_x104: std_logic;
  signal concat3_y_net_x0: std_logic_vector(31 downto 0);
  signal concat3_y_net_x1: std_logic_vector(31 downto 0);
  signal delay1_q_net_x0: std_logic_vector(31 downto 0);
  signal delay2_q_net_x0: std_logic_vector(31 downto 0);
  signal logical_y_net_x20: std_logic;
  signal reinterpret1_output_port_net_x2: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x3: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x4: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x5: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x2: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x3: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x4: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x5: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x104 <= ce_1;
  clk_1_sg_x104 <= clk_1;
  bitbasher_seed0_net_x4 <= seed0;
  bitbasher_seed1_net_x4 <= seed1;
  bitbasher_seed2_net_x4 <= seed2;
  bitbasher_seed3_net_x4 <= seed3;
  logical_y_net_x20 <= seed_ld;
  n0 <= delay2_q_net_x0;
  n1 <= delay1_q_net_x0;

  delay1: entity work.delay_920dce5cac
    port map (
      ce => ce_1_sg_x104,
      clk => clk_1_sg_x104,
      clr => '0',
      d => concat3_y_net_x1,
      q => delay1_q_net_x0
    );

  delay2: entity work.delay_920dce5cac
    port map (
      ce => ce_1_sg_x104,
      clk => clk_1_sg_x104,
      clr => '0',
      d => concat3_y_net_x0,
      q => delay2_q_net_x0
    );

  noise0_e51b957e94: entity work.noise0_entity_e51b957e94
    port map (
      ce_1 => ce_1_sg_x104,
      clk_1 => clk_1_sg_x104,
      ld => logical_y_net_x20,
      seed => bitbasher_seed0_net_x4,
      n1 => reinterpret_output_port_net_x2,
      n2 => reinterpret1_output_port_net_x2
    );

  noise1_2e7d7488ff: entity work.noise0_entity_e51b957e94
    port map (
      ce_1 => ce_1_sg_x104,
      clk_1 => clk_1_sg_x104,
      ld => logical_y_net_x20,
      seed => bitbasher_seed1_net_x4,
      n1 => reinterpret_output_port_net_x3,
      n2 => reinterpret1_output_port_net_x3
    );

  noise3_bb442d3f11: entity work.noise0_entity_e51b957e94
    port map (
      ce_1 => ce_1_sg_x104,
      clk_1 => clk_1_sg_x104,
      ld => logical_y_net_x20,
      seed => bitbasher_seed2_net_x4,
      n1 => reinterpret_output_port_net_x4,
      n2 => reinterpret1_output_port_net_x4
    );

  noise4_a94b9db367: entity work.noise0_entity_e51b957e94
    port map (
      ce_1 => ce_1_sg_x104,
      clk_1 => clk_1_sg_x104,
      ld => logical_y_net_x20,
      seed => bitbasher_seed3_net_x4,
      n1 => reinterpret_output_port_net_x5,
      n2 => reinterpret1_output_port_net_x5
    );

  pol_pack0_9fd78ae575: entity work.pol_pack0_entity_f12789f01f
    port map (
      in1 => reinterpret_output_port_net_x2,
      in2 => reinterpret1_output_port_net_x2,
      in3 => reinterpret_output_port_net_x3,
      in4 => reinterpret1_output_port_net_x3,
      out1 => concat3_y_net_x0
    );

  pol_pack1_9224aea27b: entity work.pol_pack0_entity_f12789f01f
    port map (
      in1 => reinterpret_output_port_net_x4,
      in2 => reinterpret1_output_port_net_x4,
      in3 => reinterpret_output_port_net_x5,
      in4 => reinterpret1_output_port_net_x5,
      out1 => concat3_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/delay"

entity delay_entity_d3ad252e0c is
  port (
    roachf_1024_bao_delay_values_user_data_out: in std_logic_vector(31 downto 0); 
    delay0: out std_logic_vector(3 downto 0); 
    delay1: out std_logic_vector(3 downto 0); 
    delay2: out std_logic_vector(3 downto 0); 
    delay3: out std_logic_vector(3 downto 0)
  );
end delay_entity_d3ad252e0c;

architecture structural of delay_entity_d3ad252e0c is
  signal bitbasher_delay0_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher_delay1_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher_delay2_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher_delay3_net_x0: std_logic_vector(3 downto 0);
  signal roachf_1024_bao_delay_values_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  roachf_1024_bao_delay_values_user_data_out_net_x0 <= roachf_1024_bao_delay_values_user_data_out;
  delay0 <= bitbasher_delay0_net_x0;
  delay1 <= bitbasher_delay1_net_x0;
  delay2 <= bitbasher_delay2_net_x0;
  delay3 <= bitbasher_delay3_net_x0;

  bitbasher: entity work.bitbasher_a85d9bdfd2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      delay => roachf_1024_bao_delay_values_user_data_out_net_x0,
      delay0 => bitbasher_delay0_net_x0,
      delay1 => bitbasher_delay1_net_x0,
      delay2 => bitbasher_delay2_net_x0,
      delay3 => bitbasher_delay3_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/gpu/gbe2"

entity gbe2_entity_04f1430afd is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    rx_ack: in std_logic; 
    tx_data: in std_logic_vector(63 downto 0); 
    tx_dest_ip: in std_logic_vector(31 downto 0); 
    tx_dest_port: in std_logic_vector(31 downto 0); 
    tx_end_of_frame: in std_logic; 
    tx_valid: in std_logic; 
    convert_rst_x0: out std_logic; 
    convert_rx_ack_x0: out std_logic; 
    convert_rx_overrun_ack_x0: out std_logic; 
    convert_tx_data_x0: out std_logic_vector(63 downto 0); 
    convert_tx_dest_ip_x0: out std_logic_vector(31 downto 0); 
    convert_tx_end_of_frame_x0: out std_logic; 
    convert_tx_port_x0: out std_logic_vector(15 downto 0); 
    convert_tx_valid_x0: out std_logic
  );
end gbe2_entity_04f1430afd;

architecture structural of gbe2_entity_04f1430afd is
  signal ce_1_sg_x105: std_logic;
  signal clk_1_sg_x105: std_logic;
  signal constant2_op_net_x0: std_logic;
  signal convert_rst_dout_net_x0: std_logic;
  signal convert_rx_ack_dout_net_x0: std_logic;
  signal convert_rx_overrun_ack_dout_net_x0: std_logic;
  signal convert_tx_data_dout_net_x0: std_logic_vector(63 downto 0);
  signal convert_tx_dest_ip_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert_tx_end_of_frame_dout_net_x0: std_logic;
  signal convert_tx_port_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert_tx_valid_dout_net_x0: std_logic;
  signal delay2_q_net_x0: std_logic_vector(63 downto 0);
  signal delay3_q_net_x0: std_logic;
  signal delay6_q_net_x1: std_logic_vector(31 downto 0);
  signal delay7_q_net_x1: std_logic_vector(31 downto 0);
  signal logical_y_net_x0: std_logic;
  signal slice10_y_net_x1: std_logic;

begin
  ce_1_sg_x105 <= ce_1;
  clk_1_sg_x105 <= clk_1;
  slice10_y_net_x1 <= rst;
  constant2_op_net_x0 <= rx_ack;
  delay2_q_net_x0 <= tx_data;
  delay6_q_net_x1 <= tx_dest_ip;
  delay7_q_net_x1 <= tx_dest_port;
  delay3_q_net_x0 <= tx_end_of_frame;
  logical_y_net_x0 <= tx_valid;
  convert_rst_x0 <= convert_rst_dout_net_x0;
  convert_rx_ack_x0 <= convert_rx_ack_dout_net_x0;
  convert_rx_overrun_ack_x0 <= convert_rx_overrun_ack_dout_net_x0;
  convert_tx_data_x0 <= convert_tx_data_dout_net_x0;
  convert_tx_dest_ip_x0 <= convert_tx_dest_ip_dout_net_x0;
  convert_tx_end_of_frame_x0 <= convert_tx_end_of_frame_dout_net_x0;
  convert_tx_port_x0 <= convert_tx_port_dout_net_x0;
  convert_tx_valid_x0 <= convert_tx_valid_dout_net_x0;

  convert_rst: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x105,
      clk => clk_1_sg_x105,
      clr => '0',
      din(0) => slice10_y_net_x1,
      en => "1",
      dout(0) => convert_rst_dout_net_x0
    );

  convert_rx_ack: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x105,
      clk => clk_1_sg_x105,
      clr => '0',
      din(0) => constant2_op_net_x0,
      en => "1",
      dout(0) => convert_rx_ack_dout_net_x0
    );

  convert_rx_overrun_ack: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x105,
      clk => clk_1_sg_x105,
      clr => '0',
      din(0) => constant2_op_net_x0,
      en => "1",
      dout(0) => convert_rx_overrun_ack_dout_net_x0
    );

  convert_tx_data: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 64,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 64,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x105,
      clk => clk_1_sg_x105,
      clr => '0',
      din => delay2_q_net_x0,
      en => "1",
      dout => convert_tx_data_dout_net_x0
    );

  convert_tx_dest_ip: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x105,
      clk => clk_1_sg_x105,
      clr => '0',
      din => delay6_q_net_x1,
      en => "1",
      dout => convert_tx_dest_ip_dout_net_x0
    );

  convert_tx_end_of_frame: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x105,
      clk => clk_1_sg_x105,
      clr => '0',
      din(0) => delay3_q_net_x0,
      en => "1",
      dout(0) => convert_tx_end_of_frame_dout_net_x0
    );

  convert_tx_port: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x105,
      clk => clk_1_sg_x105,
      clr => '0',
      din => delay7_q_net_x1,
      en => "1",
      dout => convert_tx_port_dout_net_x0
    );

  convert_tx_valid: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x105,
      clk => clk_1_sg_x105,
      clr => '0',
      din(0) => logical_y_net_x0,
      en => "1",
      dout(0) => convert_tx_valid_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/gpu"

entity gpu_entity_053cfe3f50 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    gbe_gpu_disable: in std_logic; 
    gbe_gpu_rst: in std_logic; 
    gpu_ip: in std_logic_vector(31 downto 0); 
    gpu_port: in std_logic_vector(31 downto 0); 
    lb_mux_data: in std_logic_vector(63 downto 0); 
    lb_mux_eof: in std_logic; 
    lb_mux_valid: in std_logic; 
    gbe2: out std_logic; 
    gbe2_x0: out std_logic; 
    gbe2_x1: out std_logic; 
    gbe2_x2: out std_logic_vector(63 downto 0); 
    gbe2_x3: out std_logic_vector(31 downto 0); 
    gbe2_x4: out std_logic; 
    gbe2_x5: out std_logic_vector(15 downto 0); 
    gbe2_x6: out std_logic
  );
end gpu_entity_053cfe3f50;

architecture structural of gpu_entity_053cfe3f50 is
  signal ce_1_sg_x106: std_logic;
  signal clk_1_sg_x106: std_logic;
  signal constant2_op_net_x0: std_logic;
  signal convert_rst_dout_net_x1: std_logic;
  signal convert_rx_ack_dout_net_x1: std_logic;
  signal convert_rx_overrun_ack_dout_net_x1: std_logic;
  signal convert_tx_data_dout_net_x1: std_logic_vector(63 downto 0);
  signal convert_tx_dest_ip_dout_net_x1: std_logic_vector(31 downto 0);
  signal convert_tx_end_of_frame_dout_net_x1: std_logic;
  signal convert_tx_port_dout_net_x1: std_logic_vector(15 downto 0);
  signal convert_tx_valid_dout_net_x1: std_logic;
  signal delay1_q_net: std_logic;
  signal delay2_q_net_x0: std_logic_vector(63 downto 0);
  signal delay3_q_net_x0: std_logic;
  signal delay6_q_net_x2: std_logic_vector(31 downto 0);
  signal delay7_q_net_x2: std_logic_vector(31 downto 0);
  signal dout_x0: std_logic_vector(63 downto 0);
  signal eof_out_x0: std_logic;
  signal inverter_op_net: std_logic;
  signal logical_y_net_x0: std_logic;
  signal slice10_y_net_x2: std_logic;
  signal slice12_y_net_x1: std_logic;
  signal validout_x0: std_logic;

begin
  ce_1_sg_x106 <= ce_1;
  clk_1_sg_x106 <= clk_1;
  slice12_y_net_x1 <= gbe_gpu_disable;
  slice10_y_net_x2 <= gbe_gpu_rst;
  delay6_q_net_x2 <= gpu_ip;
  delay7_q_net_x2 <= gpu_port;
  dout_x0 <= lb_mux_data;
  eof_out_x0 <= lb_mux_eof;
  validout_x0 <= lb_mux_valid;
  gbe2 <= convert_rst_dout_net_x1;
  gbe2_x0 <= convert_rx_ack_dout_net_x1;
  gbe2_x1 <= convert_rx_overrun_ack_dout_net_x1;
  gbe2_x2 <= convert_tx_data_dout_net_x1;
  gbe2_x3 <= convert_tx_dest_ip_dout_net_x1;
  gbe2_x4 <= convert_tx_end_of_frame_dout_net_x1;
  gbe2_x5 <= convert_tx_port_dout_net_x1;
  gbe2_x6 <= convert_tx_valid_dout_net_x1;

  constant2: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net_x0
    );

  delay1: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x106,
      clk => clk_1_sg_x106,
      d(0) => validout_x0,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net
    );

  delay2: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 64
    )
    port map (
      ce => ce_1_sg_x106,
      clk => clk_1_sg_x106,
      d => dout_x0,
      en => '1',
      rst => '1',
      q => delay2_q_net_x0
    );

  delay3: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x106,
      clk => clk_1_sg_x106,
      d(0) => eof_out_x0,
      en => '1',
      rst => '1',
      q(0) => delay3_q_net_x0
    );

  gbe2_04f1430afd: entity work.gbe2_entity_04f1430afd
    port map (
      ce_1 => ce_1_sg_x106,
      clk_1 => clk_1_sg_x106,
      rst => slice10_y_net_x2,
      rx_ack => constant2_op_net_x0,
      tx_data => delay2_q_net_x0,
      tx_dest_ip => delay6_q_net_x2,
      tx_dest_port => delay7_q_net_x2,
      tx_end_of_frame => delay3_q_net_x0,
      tx_valid => logical_y_net_x0,
      convert_rst_x0 => convert_rst_dout_net_x1,
      convert_rx_ack_x0 => convert_rx_ack_dout_net_x1,
      convert_rx_overrun_ack_x0 => convert_rx_overrun_ack_dout_net_x1,
      convert_tx_data_x0 => convert_tx_data_dout_net_x1,
      convert_tx_dest_ip_x0 => convert_tx_dest_ip_dout_net_x1,
      convert_tx_end_of_frame_x0 => convert_tx_end_of_frame_dout_net_x1,
      convert_tx_port_x0 => convert_tx_port_dout_net_x1,
      convert_tx_valid_x0 => convert_tx_valid_dout_net_x1
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x106,
      clk => clk_1_sg_x106,
      clr => '0',
      ip(0) => slice12_y_net_x1,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => delay1_q_net,
      y(0) => logical_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/input"

entity input_entity_419054c073 is
  port (
    roachf_1024_bao_input_selector_user_data_out: in std_logic_vector(31 downto 0); 
    insel0: out std_logic_vector(1 downto 0); 
    insel1: out std_logic_vector(1 downto 0); 
    insel2: out std_logic_vector(1 downto 0); 
    insel3: out std_logic_vector(1 downto 0)
  );
end input_entity_419054c073;

architecture structural of input_entity_419054c073 is
  signal bitbasher_insel0_net_x0: std_logic_vector(1 downto 0);
  signal bitbasher_insel1_net_x0: std_logic_vector(1 downto 0);
  signal bitbasher_insel2_net_x0: std_logic_vector(1 downto 0);
  signal bitbasher_insel3_net_x0: std_logic_vector(1 downto 0);
  signal roachf_1024_bao_input_selector_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  roachf_1024_bao_input_selector_user_data_out_net_x0 <= roachf_1024_bao_input_selector_user_data_out;
  insel0 <= bitbasher_insel0_net_x0;
  insel1 <= bitbasher_insel1_net_x0;
  insel2 <= bitbasher_insel2_net_x0;
  insel3 <= bitbasher_insel3_net_x0;

  bitbasher: entity work.bitbasher_0b7a692256
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      insel => roachf_1024_bao_input_selector_user_data_out_net_x0,
      insel0 => bitbasher_insel0_net_x0,
      insel1 => bitbasher_insel1_net_x0,
      insel2 => bitbasher_insel2_net_x0,
      insel3 => bitbasher_insel3_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/input_mux/muxin0"

entity muxin0_entity_3eb0ba2729 is
  port (
    adc: in std_logic_vector(31 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    delay: in std_logic_vector(3 downto 0); 
    n0: in std_logic_vector(31 downto 0); 
    n1: in std_logic_vector(31 downto 0); 
    sel: in std_logic_vector(1 downto 0); 
    out_x0: out std_logic_vector(31 downto 0)
  );
end muxin0_entity_3eb0ba2729;

architecture structural of muxin0_entity_3eb0ba2729 is
  signal addressable_shift_register_q_net_x0: std_logic_vector(31 downto 0);
  signal bitbasher_delay0_net_x1: std_logic_vector(3 downto 0);
  signal bitbasher_insel0_net_x1: std_logic_vector(1 downto 0);
  signal ce_1_sg_x107: std_logic;
  signal clk_1_sg_x107: std_logic;
  signal constant_op_net: std_logic_vector(31 downto 0);
  signal delay1_q_net_x1: std_logic_vector(31 downto 0);
  signal delay2_q_net_x1: std_logic_vector(31 downto 0);
  signal delay_q_net_x1: std_logic_vector(31 downto 0);
  signal mux_y_net: std_logic_vector(31 downto 0);

begin
  delay_q_net_x1 <= adc;
  ce_1_sg_x107 <= ce_1;
  clk_1_sg_x107 <= clk_1;
  bitbasher_delay0_net_x1 <= delay;
  delay2_q_net_x1 <= n0;
  delay1_q_net_x1 <= n1;
  bitbasher_insel0_net_x1 <= sel;
  out_x0 <= addressable_shift_register_q_net_x0;

  addressable_shift_register: entity work.xladdrsr
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 4,
      core_addr_width => 4,
      core_name0 => "asr_11_0_baa2205482699974",
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32
    )
    port map (
      addr => bitbasher_delay0_net_x1,
      ce => ce_1_sg_x107,
      clk => clk_1_sg_x107,
      clr => '0',
      d => mux_y_net,
      en => "1",
      q => addressable_shift_register_q_net_x0
    );

  constant_x0: entity work.constant_37567836aa
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mux: entity work.mux_c7fc178374
    port map (
      ce => ce_1_sg_x107,
      clk => clk_1_sg_x107,
      clr => '0',
      d0 => delay_q_net_x1,
      d1 => delay2_q_net_x1,
      d2 => delay1_q_net_x1,
      d3 => constant_op_net,
      sel => bitbasher_insel0_net_x1,
      y => mux_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/input_mux"

entity input_mux_entity_0d9ee34ec0 is
  port (
    adc0_pol0: in std_logic_vector(31 downto 0); 
    adc0_pol1: in std_logic_vector(31 downto 0); 
    adc1_pol0: in std_logic_vector(31 downto 0); 
    adc1_pol1: in std_logic_vector(31 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    delay0: in std_logic_vector(3 downto 0); 
    delay1_x0: in std_logic_vector(3 downto 0); 
    delay2_x0: in std_logic_vector(3 downto 0); 
    delay3_x0: in std_logic_vector(3 downto 0); 
    insel0: in std_logic_vector(1 downto 0); 
    insel1: in std_logic_vector(1 downto 0); 
    insel2: in std_logic_vector(1 downto 0); 
    insel3: in std_logic_vector(1 downto 0); 
    n0: in std_logic_vector(31 downto 0); 
    n1: in std_logic_vector(31 downto 0); 
    sync_gen: in std_logic; 
    in0: out std_logic_vector(31 downto 0); 
    in1: out std_logic_vector(31 downto 0); 
    in2: out std_logic_vector(31 downto 0); 
    in3: out std_logic_vector(31 downto 0); 
    pfb_sync: out std_logic
  );
end input_mux_entity_0d9ee34ec0;

architecture structural of input_mux_entity_0d9ee34ec0 is
  signal addressable_shift_register_q_net_x0: std_logic_vector(31 downto 0);
  signal addressable_shift_register_q_net_x1: std_logic_vector(31 downto 0);
  signal addressable_shift_register_q_net_x2: std_logic_vector(31 downto 0);
  signal addressable_shift_register_q_net_x3: std_logic_vector(31 downto 0);
  signal bitbasher_delay0_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher_delay1_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher_delay2_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher_delay3_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher_insel0_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher_insel1_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher_insel2_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher_insel3_net_x2: std_logic_vector(1 downto 0);
  signal ce_1_sg_x111: std_logic;
  signal clk_1_sg_x111: std_logic;
  signal delay10_q_net_x2: std_logic_vector(31 downto 0);
  signal delay11_q_net_x2: std_logic_vector(31 downto 0);
  signal delay1_q_net_x3: std_logic_vector(31 downto 0);
  signal delay1_q_net_x6: std_logic_vector(31 downto 0);
  signal delay1_q_net_x7: std_logic_vector(31 downto 0);
  signal delay2_q_net_x5: std_logic_vector(31 downto 0);
  signal delay2_q_net_x6: std_logic_vector(31 downto 0);
  signal delay3_q_net_x2: std_logic_vector(31 downto 0);
  signal delay4_q_net_x2: std_logic_vector(31 downto 0);
  signal delay5_q_net_x1: std_logic;
  signal delay_q_net: std_logic;
  signal delay_q_net_x2: std_logic_vector(31 downto 0);
  signal logical_y_net_x5: std_logic;

begin
  delay_q_net_x2 <= adc0_pol0;
  delay1_q_net_x6 <= adc0_pol1;
  delay10_q_net_x2 <= adc1_pol0;
  delay11_q_net_x2 <= adc1_pol1;
  ce_1_sg_x111 <= ce_1;
  clk_1_sg_x111 <= clk_1;
  bitbasher_delay0_net_x2 <= delay0;
  bitbasher_delay1_net_x2 <= delay1_x0;
  bitbasher_delay2_net_x2 <= delay2_x0;
  bitbasher_delay3_net_x2 <= delay3_x0;
  bitbasher_insel0_net_x2 <= insel0;
  bitbasher_insel1_net_x2 <= insel1;
  bitbasher_insel2_net_x2 <= insel2;
  bitbasher_insel3_net_x2 <= insel3;
  delay2_q_net_x5 <= n0;
  delay1_q_net_x7 <= n1;
  logical_y_net_x5 <= sync_gen;
  in0 <= delay1_q_net_x3;
  in1 <= delay2_q_net_x6;
  in2 <= delay3_q_net_x2;
  in3 <= delay4_q_net_x2;
  pfb_sync <= delay5_q_net_x1;

  delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x111,
      clk => clk_1_sg_x111,
      d(0) => logical_y_net_x5,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  delay1: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x111,
      clk => clk_1_sg_x111,
      clr => '0',
      d => addressable_shift_register_q_net_x0,
      q => delay1_q_net_x3
    );

  delay2: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x111,
      clk => clk_1_sg_x111,
      clr => '0',
      d => addressable_shift_register_q_net_x1,
      q => delay2_q_net_x6
    );

  delay3: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x111,
      clk => clk_1_sg_x111,
      clr => '0',
      d => addressable_shift_register_q_net_x2,
      q => delay3_q_net_x2
    );

  delay4: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x111,
      clk => clk_1_sg_x111,
      clr => '0',
      d => addressable_shift_register_q_net_x3,
      q => delay4_q_net_x2
    );

  delay5: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x111,
      clk => clk_1_sg_x111,
      clr => '0',
      d(0) => delay_q_net,
      q(0) => delay5_q_net_x1
    );

  muxin0_3eb0ba2729: entity work.muxin0_entity_3eb0ba2729
    port map (
      adc => delay_q_net_x2,
      ce_1 => ce_1_sg_x111,
      clk_1 => clk_1_sg_x111,
      delay => bitbasher_delay0_net_x2,
      n0 => delay2_q_net_x5,
      n1 => delay1_q_net_x7,
      sel => bitbasher_insel0_net_x2,
      out_x0 => addressable_shift_register_q_net_x0
    );

  muxin1_fdf06c7a3d: entity work.muxin0_entity_3eb0ba2729
    port map (
      adc => delay1_q_net_x6,
      ce_1 => ce_1_sg_x111,
      clk_1 => clk_1_sg_x111,
      delay => bitbasher_delay1_net_x2,
      n0 => delay2_q_net_x5,
      n1 => delay1_q_net_x7,
      sel => bitbasher_insel1_net_x2,
      out_x0 => addressable_shift_register_q_net_x1
    );

  muxin2_d804aef588: entity work.muxin0_entity_3eb0ba2729
    port map (
      adc => delay10_q_net_x2,
      ce_1 => ce_1_sg_x111,
      clk_1 => clk_1_sg_x111,
      delay => bitbasher_delay2_net_x2,
      n0 => delay2_q_net_x5,
      n1 => delay1_q_net_x7,
      sel => bitbasher_insel2_net_x2,
      out_x0 => addressable_shift_register_q_net_x2
    );

  muxin3_760bedf8bc: entity work.muxin0_entity_3eb0ba2729
    port map (
      adc => delay11_q_net_x2,
      ce_1 => ce_1_sg_x111,
      clk_1 => clk_1_sg_x111,
      delay => bitbasher_delay3_net_x2,
      n0 => delay2_q_net_x5,
      n1 => delay1_q_net_x7,
      sel => bitbasher_insel3_net_x2,
      out_x0 => addressable_shift_register_q_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/loopback/Delay14"

entity delay14_entity_5fd1606dd3 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic_vector(63 downto 0); 
    q: out std_logic_vector(63 downto 0)
  );
end delay14_entity_5fd1606dd3;

architecture structural of delay14_entity_5fd1606dd3 is
  signal ce_1_sg_x112: std_logic;
  signal clk_1_sg_x112: std_logic;
  signal register0_q_net: std_logic_vector(63 downto 0);
  signal register1_q_net_x0: std_logic_vector(63 downto 0);
  signal register_q_net_x0: std_logic_vector(63 downto 0);

begin
  ce_1_sg_x112 <= ce_1;
  clk_1_sg_x112 <= clk_1;
  register_q_net_x0 <= d;
  q <= register1_q_net_x0;

  register0: entity work.xlregister
    generic map (
      d_width => 64,
      init_value => b"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x112,
      clk => clk_1_sg_x112,
      d => register_q_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 64,
      init_value => b"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x112,
      clk => clk_1_sg_x112,
      d => register0_q_net,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/loopback/Delay15"

entity delay15_entity_bf4f957bed is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic; 
    q: out std_logic
  );
end delay15_entity_bf4f957bed;

architecture structural of delay15_entity_bf4f957bed is
  signal ce_1_sg_x113: std_logic;
  signal clk_1_sg_x113: std_logic;
  signal logical_y_net_x0: std_logic;
  signal register0_q_net: std_logic;
  signal register1_q_net_x0: std_logic;

begin
  ce_1_sg_x113 <= ce_1;
  clk_1_sg_x113 <= clk_1;
  logical_y_net_x0 <= d;
  q <= register1_q_net_x0;

  register0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x113,
      clk => clk_1_sg_x113,
      d(0) => logical_y_net_x0,
      en => "1",
      rst => "0",
      q(0) => register0_q_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x113,
      clk => clk_1_sg_x113,
      d(0) => register0_q_net,
      en => "1",
      rst => "0",
      q(0) => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/loopback/Delay16"

entity delay16_entity_a12aa4bb98 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic_vector(31 downto 0); 
    q: out std_logic_vector(31 downto 0)
  );
end delay16_entity_a12aa4bb98;

architecture structural of delay16_entity_a12aa4bb98 is
  signal ce_1_sg_x114: std_logic;
  signal clk_1_sg_x114: std_logic;
  signal register0_q_net: std_logic_vector(31 downto 0);
  signal register1_q_net_x0: std_logic_vector(31 downto 0);
  signal slice2_y_net_x0: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x114 <= ce_1;
  clk_1_sg_x114 <= clk_1;
  slice2_y_net_x0 <= d;
  q <= register1_q_net_x0;

  register0: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x114,
      clk => clk_1_sg_x114,
      d => slice2_y_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x114,
      clk => clk_1_sg_x114,
      d => register0_q_net,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/loopback/Delay17"

entity delay17_entity_286e674199 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic; 
    q: out std_logic
  );
end delay17_entity_286e674199;

architecture structural of delay17_entity_286e674199 is
  signal ce_1_sg_x115: std_logic;
  signal clk_1_sg_x115: std_logic;
  signal delay1_q_net_x0: std_logic;
  signal register0_q_net_x0: std_logic;

begin
  ce_1_sg_x115 <= ce_1;
  clk_1_sg_x115 <= clk_1;
  delay1_q_net_x0 <= d;
  q <= register0_q_net_x0;

  register0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x115,
      clk => clk_1_sg_x115,
      d(0) => delay1_q_net_x0,
      en => "1",
      rst => "0",
      q(0) => register0_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/loopback/Delay22"

entity delay22_entity_131dd68804 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic_vector(63 downto 0); 
    q: out std_logic_vector(63 downto 0)
  );
end delay22_entity_131dd68804;

architecture structural of delay22_entity_131dd68804 is
  signal ce_1_sg_x117: std_logic;
  signal clk_1_sg_x117: std_logic;
  signal d_in_x0: std_logic_vector(63 downto 0);
  signal register0_q_net_x0: std_logic_vector(63 downto 0);

begin
  ce_1_sg_x117 <= ce_1;
  clk_1_sg_x117 <= clk_1;
  d_in_x0 <= d;
  q <= register0_q_net_x0;

  register0: entity work.xlregister
    generic map (
      d_width => 64,
      init_value => b"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x117,
      clk => clk_1_sg_x117,
      d => d_in_x0,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/loopback/Subsystem1"

entity subsystem1_entity_c23e69437f is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    eof: in std_logic; 
    overflow: in std_logic; 
    rst: in std_logic; 
    we: in std_logic; 
    err_cnt: out std_logic_vector(31 downto 0); 
    rx_cnt: out std_logic_vector(31 downto 0)
  );
end subsystem1_entity_c23e69437f;

architecture structural of subsystem1_entity_c23e69437f is
  signal ce_1_sg_x127: std_logic;
  signal clk_1_sg_x127: std_logic;
  signal delay1_q_net: std_logic;
  signal delay2_q_net: std_logic;
  signal delay3_q_net: std_logic;
  signal delay40_q_net: std_logic;
  signal delay4_q_net_x0: std_logic;
  signal delay5_q_net_x0: std_logic;
  signal delay6_q_net_x0: std_logic;
  signal delay7_q_net_x0: std_logic;
  signal logical2_y_net_x0: std_logic;
  signal logical_y_net_x0: std_logic;
  signal payload_cnt1_op_net_x0: std_logic_vector(31 downto 0);
  signal payload_cnt2_op_net_x0: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x127 <= ce_1;
  clk_1_sg_x127 <= clk_1;
  delay6_q_net_x0 <= eof;
  delay7_q_net_x0 <= overflow;
  delay4_q_net_x0 <= rst;
  delay5_q_net_x0 <= we;
  err_cnt <= payload_cnt2_op_net_x0;
  rx_cnt <= payload_cnt1_op_net_x0;

  delay1: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x127,
      clk => clk_1_sg_x127,
      clr => '0',
      d(0) => delay6_q_net_x0,
      q(0) => delay1_q_net
    );

  delay2: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x127,
      clk => clk_1_sg_x127,
      clr => '0',
      d(0) => delay4_q_net_x0,
      q(0) => delay2_q_net
    );

  delay3: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x127,
      clk => clk_1_sg_x127,
      clr => '0',
      d(0) => delay7_q_net_x0,
      q(0) => delay3_q_net
    );

  delay40: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x127,
      clk => clk_1_sg_x127,
      clr => '0',
      d(0) => delay5_q_net_x0,
      q(0) => delay40_q_net
    );

  logical2: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay40_q_net,
      d1(0) => delay1_q_net,
      y(0) => logical2_y_net_x0
    );

  payload_cnt1: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_520b146027c1d89b",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x127,
      clk => clk_1_sg_x127,
      clr => '0',
      en(0) => logical_y_net_x0,
      rst(0) => delay2_q_net,
      op => payload_cnt1_op_net_x0
    );

  payload_cnt2: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_520b146027c1d89b",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x127,
      clk => clk_1_sg_x127,
      clr => '0',
      en(0) => delay3_q_net,
      rst(0) => delay2_q_net,
      op => payload_cnt2_op_net_x0
    );

  posedge_2dff6ede0b: entity work.posedge_entity_21f484bc47
    port map (
      ce_1 => ce_1_sg_x127,
      clk_1 => clk_1_sg_x127,
      in_x0 => logical2_y_net_x0,
      out_x0 => logical_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/loopback/loop_cnt"

entity loop_cnt_entity_b073454139 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    reg_out: in std_logic_vector(31 downto 0); 
    convert_x0: out std_logic_vector(31 downto 0)
  );
end loop_cnt_entity_b073454139;

architecture structural of loop_cnt_entity_b073454139 is
  signal ce_1_sg_x130: std_logic;
  signal clk_1_sg_x130: std_logic;
  signal convert_dout_net_x0: std_logic_vector(31 downto 0);
  signal payload_cnt1_op_net_x1: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x130 <= ce_1;
  clk_1_sg_x130 <= clk_1;
  payload_cnt1_op_net_x1 <= reg_out;
  convert_x0 <= convert_dout_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x130,
      clk => clk_1_sg_x130,
      clr => '0',
      din => payload_cnt1_op_net_x1,
      en => "1",
      dout => convert_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/loopback/loopback mux/Moore State Machine"

entity moore_state_machine_entity_0aa912d7d4 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    inputs: in std_logic_vector(2 downto 0); 
    outputs: out std_logic_vector(1 downto 0)
  );
end moore_state_machine_entity_0aa912d7d4;

architecture structural of moore_state_machine_entity_0aa912d7d4 is
  signal ce_1_sg_x132: std_logic;
  signal clk_1_sg_x132: std_logic;
  signal concat_y_net: std_logic_vector(4 downto 0);
  signal input2msm_x0: std_logic_vector(2 downto 0);
  signal next_state_rom_data_net: std_logic_vector(1 downto 0);
  signal output_rom_data_net_x0: std_logic_vector(1 downto 0);

begin
  ce_1_sg_x132 <= ce_1;
  clk_1_sg_x132 <= clk_1;
  input2msm_x0 <= inputs;
  outputs <= output_rom_data_net_x0;

  concat: entity work.concat_8f12c32de0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => next_state_rom_data_net,
      in1 => input2msm_x0,
      y => concat_y_net
    );

  next_state_rom: entity work.xlsprom
    generic map (
      c_address_width => 5,
      c_width => 2,
      core_name0 => "bmg_62_8b6902f70206a636",
      latency => 1
    )
    port map (
      addr => concat_y_net,
      ce => ce_1_sg_x132,
      clk => clk_1_sg_x132,
      en => "1",
      rst => "0",
      data => next_state_rom_data_net
    );

  output_rom: entity work.xlsprom_dist
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 2,
      core_name0 => "dmg_62_d4b1790d74a4992a",
      latency => 0
    )
    port map (
      addr => next_state_rom_data_net,
      ce => ce_1_sg_x132,
      clk => clk_1_sg_x132,
      en => "1",
      data => output_rom_data_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/loopback/loopback mux/gbe_errors"

entity gbe_errors_entity_ba2d32ce40 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    eof_rx: in std_logic; 
    valid_in: in std_logic; 
    over: out std_logic; 
    under: out std_logic
  );
end gbe_errors_entity_ba2d32ce40;

architecture structural of gbe_errors_entity_ba2d32ce40 is
  signal ce_1_sg_x135: std_logic;
  signal clk_1_sg_x135: std_logic;
  signal constant2_op_net: std_logic_vector(10 downto 0);
  signal constant3_op_net: std_logic_vector(10 downto 0);
  signal counter1_op_net: std_logic_vector(19 downto 0);
  signal delay4_q_net_x0: std_logic;
  signal delay5_q_net_x0: std_logic;
  signal logical1_y_net: std_logic;
  signal logical3_y_net_x0: std_logic;
  signal logical4_y_net_x0: std_logic;
  signal logical_y_net_x2: std_logic;
  signal logical_y_net_x3: std_logic;
  signal relational2_op_net: std_logic;
  signal relational3_op_net: std_logic;

begin
  ce_1_sg_x135 <= ce_1;
  clk_1_sg_x135 <= clk_1;
  delay5_q_net_x0 <= eof_rx;
  delay4_q_net_x0 <= valid_in;
  over <= logical_y_net_x2;
  under <= logical_y_net_x3;

  constant2: entity work.constant_0c7d8005f2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_0c7d8005f2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
    );

  counter1: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_2b657e2d1d4c21af",
      op_arith => xlUnsigned,
      op_width => 20
    )
    port map (
      ce => ce_1_sg_x135,
      clk => clk_1_sg_x135,
      clr => '0',
      en(0) => delay4_q_net_x0,
      rst(0) => logical1_y_net,
      op => counter1_op_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay5_q_net_x0,
      d1(0) => delay4_q_net_x0,
      y(0) => logical1_y_net
    );

  logical3: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical1_y_net,
      d1(0) => relational2_op_net,
      y(0) => logical3_y_net_x0
    );

  logical4: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical1_y_net,
      d1(0) => relational3_op_net,
      y(0) => logical4_y_net_x0
    );

  posedge1_1b0d5cbfd1: entity work.posedge_entity_21f484bc47
    port map (
      ce_1 => ce_1_sg_x135,
      clk_1 => clk_1_sg_x135,
      in_x0 => logical3_y_net_x0,
      out_x0 => logical_y_net_x2
    );

  posedge2_66f50b33b3: entity work.posedge_entity_21f484bc47
    port map (
      ce_1 => ce_1_sg_x135,
      clk_1 => clk_1_sg_x135,
      in_x0 => logical4_y_net_x0,
      out_x0 => logical_y_net_x3
    );

  relational2: entity work.relational_b19165022f
    port map (
      a => counter1_op_net,
      b => constant2_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net
    );

  relational3: entity work.relational_0bd6d8bc7a
    port map (
      a => counter1_op_net,
      b => constant3_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational3_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/loopback/loopback mux"

entity loopback_mux_entity_c2598f182e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    cnt_rst: in std_logic; 
    gbe_din: in std_logic_vector(63 downto 0); 
    gbe_empty: in std_logic; 
    gbe_eof: in std_logic; 
    gbe_valid: in std_logic; 
    loop_din: in std_logic_vector(63 downto 0); 
    loop_empty: in std_logic; 
    loop_eof: in std_logic; 
    loop_valid: in std_logic; 
    dout: out std_logic_vector(63 downto 0); 
    eof: out std_logic; 
    gbe_over: out std_logic_vector(31 downto 0); 
    gbe_read_x0: out std_logic; 
    gbe_und: out std_logic_vector(31 downto 0); 
    lb_over: out std_logic_vector(31 downto 0); 
    lb_und: out std_logic_vector(31 downto 0); 
    loop_read_x0: out std_logic; 
    valid_out: out std_logic
  );
end loopback_mux_entity_c2598f182e;

architecture structural of loopback_mux_entity_c2598f182e is
  signal ce_1_sg_x143: std_logic;
  signal clk_1_sg_x143: std_logic;
  signal convert_dout_net_x4: std_logic_vector(31 downto 0);
  signal convert_dout_net_x5: std_logic_vector(31 downto 0);
  signal convert_dout_net_x6: std_logic_vector(31 downto 0);
  signal convert_dout_net_x7: std_logic_vector(31 downto 0);
  signal counter1_op_net: std_logic_vector(31 downto 0);
  signal counter2_op_net: std_logic_vector(31 downto 0);
  signal counter3_op_net: std_logic_vector(31 downto 0);
  signal counter4_op_net: std_logic_vector(31 downto 0);
  signal delay1_q_net_x0: std_logic_vector(31 downto 0);
  signal delay2_q_net_x0: std_logic_vector(31 downto 0);
  signal delay3_q_net_x0: std_logic_vector(31 downto 0);
  signal delay4_q_net_x0: std_logic;
  signal delay5_q_net_x0: std_logic;
  signal delay7_q_net_x0: std_logic;
  signal delay9_q_net_x0: std_logic;
  signal delay_q_net_x0: std_logic_vector(31 downto 0);
  signal dout_x1: std_logic_vector(63 downto 0);
  signal eof_out_x1: std_logic;
  signal gbe_read_x1: std_logic;
  signal gbeineof: std_logic;
  signal input2msm_x0: std_logic_vector(2 downto 0);
  signal logical2_y_net: std_logic;
  signal logical_y_net_x2: std_logic;
  signal logical_y_net_x3: std_logic;
  signal logical_y_net_x4: std_logic;
  signal logical_y_net_x5: std_logic;
  signal loop_read_x1: std_logic;
  signal loopineof: std_logic;
  signal output_rom_data_net_x0: std_logic_vector(1 downto 0);
  signal register0_q_net_x10: std_logic;
  signal register0_q_net_x11: std_logic_vector(63 downto 0);
  signal register0_q_net_x12: std_logic;
  signal register0_q_net_x6: std_logic;
  signal register0_q_net_x7: std_logic;
  signal register0_q_net_x8: std_logic_vector(63 downto 0);
  signal register0_q_net_x9: std_logic;
  signal register1_q_net_x0: std_logic;
  signal slice4_y_net_x1: std_logic;
  signal validout_x1: std_logic;

begin
  ce_1_sg_x143 <= ce_1;
  clk_1_sg_x143 <= clk_1;
  slice4_y_net_x1 <= cnt_rst;
  register0_q_net_x11 <= gbe_din;
  register1_q_net_x0 <= gbe_empty;
  register0_q_net_x7 <= gbe_eof;
  register0_q_net_x6 <= gbe_valid;
  register0_q_net_x8 <= loop_din;
  register0_q_net_x12 <= loop_empty;
  register0_q_net_x10 <= loop_eof;
  register0_q_net_x9 <= loop_valid;
  dout <= dout_x1;
  eof <= eof_out_x1;
  gbe_over <= convert_dout_net_x4;
  gbe_read_x0 <= gbe_read_x1;
  gbe_und <= convert_dout_net_x5;
  lb_over <= convert_dout_net_x6;
  lb_und <= convert_dout_net_x7;
  loop_read_x0 <= loop_read_x1;
  valid_out <= validout_x1;

  concat1: entity work.concat_09e13b86e0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => register0_q_net_x12,
      in1(0) => register1_q_net_x0,
      in2(0) => logical2_y_net,
      y => input2msm_x0
    );

  counter1: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_520b146027c1d89b",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x143,
      clk => clk_1_sg_x143,
      clr => '0',
      en(0) => logical_y_net_x4,
      rst(0) => slice4_y_net_x1,
      op => counter1_op_net
    );

  counter2: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_520b146027c1d89b",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x143,
      clk => clk_1_sg_x143,
      clr => '0',
      en(0) => logical_y_net_x5,
      rst(0) => slice4_y_net_x1,
      op => counter2_op_net
    );

  counter3: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_520b146027c1d89b",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x143,
      clk => clk_1_sg_x143,
      clr => '0',
      en(0) => logical_y_net_x2,
      rst(0) => slice4_y_net_x1,
      op => counter3_op_net
    );

  counter4: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_520b146027c1d89b",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x143,
      clk => clk_1_sg_x143,
      clr => '0',
      en(0) => logical_y_net_x3,
      rst(0) => slice4_y_net_x1,
      op => counter4_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x143,
      clk => clk_1_sg_x143,
      d => counter3_op_net,
      en => '1',
      rst => '1',
      q => delay_q_net_x0
    );

  delay1: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x143,
      clk => clk_1_sg_x143,
      d => counter4_op_net,
      en => '1',
      rst => '1',
      q => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x143,
      clk => clk_1_sg_x143,
      d => counter1_op_net,
      en => '1',
      rst => '1',
      q => delay2_q_net_x0
    );

  delay3: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x143,
      clk => clk_1_sg_x143,
      d => counter2_op_net,
      en => '1',
      rst => '1',
      q => delay3_q_net_x0
    );

  delay4: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x143,
      clk => clk_1_sg_x143,
      d(0) => register0_q_net_x6,
      en => '1',
      rst => '1',
      q(0) => delay4_q_net_x0
    );

  delay5: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x143,
      clk => clk_1_sg_x143,
      d(0) => gbeineof,
      en => '1',
      rst => '1',
      q(0) => delay5_q_net_x0
    );

  delay7: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x143,
      clk => clk_1_sg_x143,
      d(0) => register0_q_net_x9,
      en => '1',
      rst => '1',
      q(0) => delay7_q_net_x0
    );

  delay9: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x143,
      clk => clk_1_sg_x143,
      d(0) => loopineof,
      en => '1',
      rst => '1',
      q(0) => delay9_q_net_x0
    );

  gbe_errors_ba2d32ce40: entity work.gbe_errors_entity_ba2d32ce40
    port map (
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      eof_rx => delay5_q_net_x0,
      valid_in => delay4_q_net_x0,
      over => logical_y_net_x2,
      under => logical_y_net_x3
    );

  gbe_over_e1e7a8b563: entity work.loop_cnt_entity_b073454139
    port map (
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      reg_out => delay_q_net_x0,
      convert_x0 => convert_dout_net_x4
    );

  gbe_und_a0e61524a3: entity work.loop_cnt_entity_b073454139
    port map (
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      reg_out => delay1_q_net_x0,
      convert_x0 => convert_dout_net_x5
    );

  lb_over_4456170f53: entity work.loop_cnt_entity_b073454139
    port map (
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      reg_out => delay2_q_net_x0,
      convert_x0 => convert_dout_net_x6
    );

  lb_und_2996ad352d: entity work.loop_cnt_entity_b073454139
    port map (
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      reg_out => delay3_q_net_x0,
      convert_x0 => convert_dout_net_x7
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register0_q_net_x9,
      d1(0) => register0_q_net_x10,
      y(0) => loopineof
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register0_q_net_x6,
      d1(0) => register0_q_net_x7,
      y(0) => gbeineof
    );

  logical2: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => gbeineof,
      d1(0) => loopineof,
      y(0) => logical2_y_net
    );

  logical5: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register0_q_net_x6,
      d1(0) => register0_q_net_x9,
      y(0) => validout_x1
    );

  loop_errors_d006149ee0: entity work.gbe_errors_entity_ba2d32ce40
    port map (
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      eof_rx => delay9_q_net_x0,
      valid_in => delay7_q_net_x0,
      over => logical_y_net_x4,
      under => logical_y_net_x5
    );

  moore_state_machine_0aa912d7d4: entity work.moore_state_machine_entity_0aa912d7d4
    port map (
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      inputs => input2msm_x0,
      outputs => output_rom_data_net_x0
    );

  mux1: entity work.mux_66e06093b2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => register0_q_net_x11,
      d1 => register0_q_net_x8,
      sel(0) => register0_q_net_x9,
      y => dout_x1
    );

  mux2: entity work.mux_d99e59b6d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => gbeineof,
      d1(0) => loopineof,
      sel(0) => register0_q_net_x9,
      y(0) => eof_out_x1
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 2,
      y_width => 1
    )
    port map (
      x => output_rom_data_net_x0,
      y(0) => gbe_read_x1
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 2,
      y_width => 1
    )
    port map (
      x => output_rom_data_net_x0,
      y(0) => loop_read_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/loopback/loopback_fifo/break and reset"

entity break_and_reset_entity_b8007708e2 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    eof: in std_logic; 
    read: in std_logic; 
    re: out std_logic
  );
end break_and_reset_entity_b8007708e2;

architecture structural of break_and_reset_entity_b8007708e2 is
  signal ce_1_sg_x145: std_logic;
  signal clk_1_sg_x145: std_logic;
  signal delay1_q_net_x1: std_logic;
  signal eofin_x1: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net: std_logic;
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x1: std_logic;

begin
  ce_1_sg_x145 <= ce_1;
  clk_1_sg_x145 <= clk_1;
  eofin_x1 <= eof;
  delay1_q_net_x1 <= read;
  re <= logical_y_net_x1;

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x145,
      clk => clk_1_sg_x145,
      clr => '0',
      ip(0) => eofin_x1,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay1_q_net_x1,
      d1(0) => logical1_y_net,
      y(0) => logical_y_net_x1
    );

  logical1: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => inverter_op_net,
      y(0) => logical1_y_net
    );

  posedge_fb1dbd7beb: entity work.posedge_entity_21f484bc47
    port map (
      ce_1 => ce_1_sg_x145,
      clk_1 => clk_1_sg_x145,
      in_x0 => delay1_q_net_x1,
      out_x0 => logical_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/loopback/loopback_fifo/lb_fifo_error"

entity lb_fifo_error_entity_b6367d63c2 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    count: in std_logic_vector(5 downto 0); 
    rst: in std_logic; 
    errcnt: out std_logic_vector(31 downto 0)
  );
end lb_fifo_error_entity_b6367d63c2;

architecture structural of lb_fifo_error_entity_b6367d63c2 is
  signal ce_1_sg_x149: std_logic;
  signal clk_1_sg_x149: std_logic;
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal constant1_op_net: std_logic_vector(5 downto 0);
  signal constant2_op_net: std_logic_vector(5 downto 0);
  signal counter1_op_net: std_logic_vector(9 downto 0);
  signal counter3_op_net: std_logic_vector(15 downto 0);
  signal counter3_op_net_x1: std_logic_vector(5 downto 0);
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x1: std_logic;
  signal relational1_op_net_x0: std_logic;
  signal relational2_op_net_x0: std_logic;
  signal slice4_y_net_x2: std_logic;

begin
  ce_1_sg_x149 <= ce_1;
  clk_1_sg_x149 <= clk_1;
  counter3_op_net_x1 <= count;
  slice4_y_net_x2 <= rst;
  errcnt <= concat_y_net_x1;

  concat: entity work.concat_eab913768e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => counter3_op_net_x1,
      in1 => counter3_op_net,
      in2 => counter1_op_net,
      y => concat_y_net_x1
    );

  constant1: entity work.constant_7ea0f2fff7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_faaf314423
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  counter1: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_511daee48ac62764",
      op_arith => xlUnsigned,
      op_width => 10
    )
    port map (
      ce => ce_1_sg_x149,
      clk => clk_1_sg_x149,
      clr => '0',
      en(0) => logical_y_net_x1,
      rst(0) => slice4_y_net_x2,
      op => counter1_op_net
    );

  counter3: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_aecd98f86e85228c",
      op_arith => xlUnsigned,
      op_width => 16
    )
    port map (
      ce => ce_1_sg_x149,
      clk => clk_1_sg_x149,
      clr => '0',
      en(0) => logical_y_net_x0,
      rst(0) => slice4_y_net_x2,
      op => counter3_op_net
    );

  posedge1_b268d02bfa: entity work.posedge_entity_21f484bc47
    port map (
      ce_1 => ce_1_sg_x149,
      clk_1 => clk_1_sg_x149,
      in_x0 => relational2_op_net_x0,
      out_x0 => logical_y_net_x0
    );

  posedge2_1a5720e8c7: entity work.posedge_entity_21f484bc47
    port map (
      ce_1 => ce_1_sg_x149,
      clk_1 => clk_1_sg_x149,
      in_x0 => relational1_op_net_x0,
      out_x0 => logical_y_net_x1
    );

  relational1: entity work.relational_47932db5b1
    port map (
      a => counter3_op_net_x1,
      b => constant1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net_x0
    );

  relational2: entity work.relational_a4fe5a77f9
    port map (
      a => counter3_op_net_x1,
      b => constant2_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/loopback/loopback_fifo/loopback_fifo pkt count"

entity loopback_fifo_pkt_count_entity_1b2606d2ca is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    eofin: in std_logic; 
    eofout: in std_logic; 
    rst: in std_logic; 
    pending_count: out std_logic_vector(5 downto 0)
  );
end loopback_fifo_pkt_count_entity_1b2606d2ca;

architecture structural of loopback_fifo_pkt_count_entity_1b2606d2ca is
  signal ce_1_sg_x150: std_logic;
  signal clk_1_sg_x150: std_logic;
  signal counter3_op_net_x2: std_logic_vector(5 downto 0);
  signal delay1_q_net_x0: std_logic;
  signal delay2_q_net_x0: std_logic;
  signal logical12_y_net: std_logic;
  signal slice4_y_net_x3: std_logic;

begin
  ce_1_sg_x150 <= ce_1;
  clk_1_sg_x150 <= clk_1;
  delay1_q_net_x0 <= eofin;
  delay2_q_net_x0 <= eofout;
  slice4_y_net_x3 <= rst;
  pending_count <= counter3_op_net_x2;

  counter3: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_59da7a7e9e683c63",
      op_arith => xlUnsigned,
      op_width => 6
    )
    port map (
      ce => ce_1_sg_x150,
      clk => clk_1_sg_x150,
      clr => '0',
      en(0) => logical12_y_net,
      rst(0) => slice4_y_net_x3,
      up(0) => delay1_q_net_x0,
      op => counter3_op_net_x2
    );

  logical12: entity work.logical_e77c53f8bd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay1_q_net_x0,
      d1(0) => delay2_q_net_x0,
      y(0) => logical12_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/loopback/loopback_fifo/rollback_fifo/set_cnt"

entity set_cnt_entity_0e6bd3622d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    set: in std_logic; 
    undo: in std_logic; 
    cnt: out std_logic_vector(12 downto 0); 
    set_cnt: out std_logic_vector(12 downto 0)
  );
end set_cnt_entity_0e6bd3622d;

architecture structural of set_cnt_entity_0e6bd3622d is
  signal ce_1_sg_x151: std_logic;
  signal clk_1_sg_x151: std_logic;
  signal counter4_op_net_x0: std_logic_vector(12 downto 0);
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net: std_logic;
  signal logical2_y_net_x0: std_logic;
  signal logical3_y_net_x0: std_logic;
  signal logical4_y_net_x0: std_logic;
  signal logical4_y_net_x1: std_logic;
  signal register2_q_net_x0: std_logic_vector(12 downto 0);

begin
  ce_1_sg_x151 <= ce_1;
  clk_1_sg_x151 <= clk_1;
  logical3_y_net_x0 <= en;
  logical4_y_net_x1 <= set;
  logical2_y_net_x0 <= undo;
  cnt <= counter4_op_net_x0;
  set_cnt <= register2_q_net_x0;

  counter4: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_e94528e03054f4e0",
      op_arith => xlUnsigned,
      op_width => 13
    )
    port map (
      ce => ce_1_sg_x151,
      clk => clk_1_sg_x151,
      clr => '0',
      din => register2_q_net_x0,
      en(0) => logical3_y_net_x0,
      load(0) => logical1_y_net,
      rst => "0",
      op => counter4_op_net_x0
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x151,
      clk => clk_1_sg_x151,
      clr => '0',
      ip(0) => logical2_y_net_x0,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x151,
      clk => clk_1_sg_x151,
      clr => '0',
      ip(0) => logical4_y_net_x0,
      op(0) => inverter1_op_net
    );

  logical1: entity work.logical_954ee29728
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical2_y_net_x0,
      d1(0) => logical3_y_net_x0,
      d2(0) => inverter1_op_net,
      y(0) => logical1_y_net
    );

  logical4: entity work.logical_e82b2f8c26
    port map (
      ce => ce_1_sg_x151,
      clk => clk_1_sg_x151,
      clr => '0',
      d0(0) => logical4_y_net_x1,
      d1(0) => logical3_y_net_x0,
      d2(0) => inverter_op_net,
      y(0) => logical4_y_net_x0
    );

  register2: entity work.xlregister
    generic map (
      d_width => 13,
      init_value => b"0000000000000"
    )
    port map (
      ce => ce_1_sg_x151,
      clk => clk_1_sg_x151,
      d => counter4_op_net_x0,
      en(0) => logical4_y_net_x0,
      rst => "0",
      q => register2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/loopback/loopback_fifo/rollback_fifo"

entity rollback_fifo_entity_6ec568e1ad is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    commit: in std_logic; 
    din: in std_logic_vector(64 downto 0); 
    discard: in std_logic; 
    re: in std_logic; 
    we: in std_logic; 
    dout: out std_logic_vector(64 downto 0); 
    empty: out std_logic; 
    full: out std_logic; 
    valid: out std_logic
  );
end rollback_fifo_entity_6ec568e1ad;

architecture structural of rollback_fifo_entity_6ec568e1ad is
  signal ce_1_sg_x152: std_logic;
  signal clk_1_sg_x152: std_logic;
  signal concat_y_net_x0: std_logic_vector(64 downto 0);
  signal constant5_op_net: std_logic;
  signal counter4_op_net_x0: std_logic_vector(12 downto 0);
  signal delay1_q_net_x1: std_logic;
  signal dual_port_ram_doutb_net_x0: std_logic_vector(64 downto 0);
  signal inverter1_op_net: std_logic;
  signal inverter2_op_net: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical2_y_net_x1: std_logic;
  signal logical3_y_net_x0: std_logic;
  signal logical4_y_net: std_logic;
  signal logical4_y_net_x2: std_logic;
  signal logical5_y_net: std_logic;
  signal logical6_y_net_x0: std_logic;
  signal logical_y_net_x2: std_logic;
  signal rd_cnt_op_net: std_logic_vector(12 downto 0);
  signal register1_q_net_x1: std_logic;
  signal register2_q_net_x0: std_logic_vector(12 downto 0);
  signal relational1_op_net: std_logic;
  signal relational2_op_net: std_logic;
  signal slice1_y_net: std_logic;
  signal slice2_y_net: std_logic_vector(11 downto 0);
  signal slice3_y_net: std_logic;
  signal slice_y_net: std_logic_vector(11 downto 0);

begin
  ce_1_sg_x152 <= ce_1;
  clk_1_sg_x152 <= clk_1;
  logical4_y_net_x2 <= commit;
  concat_y_net_x0 <= din;
  logical2_y_net_x1 <= discard;
  logical_y_net_x2 <= re;
  register1_q_net_x1 <= we;
  dout <= dual_port_ram_doutb_net_x0;
  empty <= logical1_y_net_x0;
  full <= logical6_y_net_x0;
  valid <= delay1_q_net_x1;

  constant5: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant5_op_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x152,
      clk => clk_1_sg_x152,
      d(0) => logical4_y_net,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net_x1
    );

  dual_port_ram: entity work.xldpram
    generic map (
      c_address_width_a => 12,
      c_address_width_b => 12,
      c_width_a => 65,
      c_width_b => 65,
      core_name0 => "bmg_62_bd93aafb66935d25",
      latency => 1
    )
    port map (
      a_ce => ce_1_sg_x152,
      a_clk => clk_1_sg_x152,
      addra => slice2_y_net,
      addrb => slice_y_net,
      b_ce => ce_1_sg_x152,
      b_clk => clk_1_sg_x152,
      dina => concat_y_net_x0,
      dinb => concat_y_net_x0,
      ena => "1",
      enb => "1",
      rsta => "0",
      rstb => "0",
      wea(0) => logical3_y_net_x0,
      web(0) => constant5_op_net,
      doutb => dual_port_ram_doutb_net_x0
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x152,
      clk => clk_1_sg_x152,
      clr => '0',
      ip(0) => logical1_y_net_x0,
      op(0) => inverter1_op_net
    );

  inverter2: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x152,
      clk => clk_1_sg_x152,
      clr => '0',
      ip(0) => logical6_y_net_x0,
      op(0) => inverter2_op_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational2_op_net,
      d1(0) => inverter2_op_net,
      y(0) => logical1_y_net_x0
    );

  logical3: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter2_op_net,
      d1(0) => register1_q_net_x1,
      y(0) => logical3_y_net_x0
    );

  logical4: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x2,
      d1(0) => inverter1_op_net,
      y(0) => logical4_y_net
    );

  logical5: entity work.logical_e77c53f8bd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => slice3_y_net,
      d1(0) => slice1_y_net,
      y(0) => logical5_y_net
    );

  logical6: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical5_y_net,
      d1(0) => relational1_op_net,
      y(0) => logical6_y_net_x0
    );

  rd_cnt: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_813142b9460b2f27",
      op_arith => xlUnsigned,
      op_width => 13
    )
    port map (
      ce => ce_1_sg_x152,
      clk => clk_1_sg_x152,
      clr => '0',
      en(0) => logical4_y_net,
      rst => "0",
      op => rd_cnt_op_net
    );

  relational1: entity work.relational_d36fe12c1c
    port map (
      a => slice2_y_net,
      b => slice_y_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

  relational2: entity work.relational_6dfa374756
    port map (
      a => register2_q_net_x0,
      b => rd_cnt_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net
    );

  set_cnt_0e6bd3622d: entity work.set_cnt_entity_0e6bd3622d
    port map (
      ce_1 => ce_1_sg_x152,
      clk_1 => clk_1_sg_x152,
      en => logical3_y_net_x0,
      set => logical4_y_net_x2,
      undo => logical2_y_net_x1,
      cnt => counter4_op_net_x0,
      set_cnt => register2_q_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 11,
      x_width => 13,
      y_width => 12
    )
    port map (
      x => rd_cnt_op_net,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 12,
      new_msb => 12,
      x_width => 13,
      y_width => 1
    )
    port map (
      x => rd_cnt_op_net,
      y(0) => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 11,
      x_width => 13,
      y_width => 12
    )
    port map (
      x => counter4_op_net_x0,
      y => slice2_y_net
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 12,
      new_msb => 12,
      x_width => 13,
      y_width => 1
    )
    port map (
      x => counter4_op_net_x0,
      y(0) => slice3_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/loopback/loopback_fifo"

entity loopback_fifo_entity_12efd103ed is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    cnt_rst: in std_logic; 
    dest_ip: in std_logic_vector(31 downto 0); 
    din: in std_logic_vector(63 downto 0); 
    eof: in std_logic; 
    my_ip: in std_logic_vector(31 downto 0); 
    re: in std_logic; 
    we: in std_logic; 
    dout: out std_logic_vector(63 downto 0); 
    empty: out std_logic; 
    eof_out: out std_logic; 
    full: out std_logic; 
    lb_err_cnt: out std_logic_vector(31 downto 0); 
    valid: out std_logic
  );
end loopback_fifo_entity_12efd103ed;

architecture structural of loopback_fifo_entity_12efd103ed is
  signal ce_1_sg_x153: std_logic;
  signal clk_1_sg_x153: std_logic;
  signal concat_y_net_x0: std_logic_vector(64 downto 0);
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal convert_dout_net: std_logic;
  signal convert_dout_net_x1: std_logic_vector(31 downto 0);
  signal counter3_op_net_x2: std_logic_vector(5 downto 0);
  signal d_in_x1: std_logic_vector(63 downto 0);
  signal delay1_q_net_x0: std_logic;
  signal delay1_q_net_x3: std_logic;
  signal delay1_q_net_x4: std_logic;
  signal delay2_q_net_x0: std_logic;
  signal dual_port_ram_doutb_net_x0: std_logic_vector(64 downto 0);
  signal eofin_x2: std_logic;
  signal inverter1_op_net: std_logic;
  signal logical1_y_net: std_logic;
  signal logical1_y_net_x1: std_logic;
  signal logical2_y_net_x1: std_logic;
  signal logical4_y_net_x2: std_logic;
  signal logical6_y_net_x1: std_logic;
  signal logical_y_net_x2: std_logic;
  signal register1_q_net_x5: std_logic_vector(63 downto 0);
  signal register1_q_net_x6: std_logic;
  signal register1_q_net_x7: std_logic_vector(31 downto 0);
  signal register1_q_net_x8: std_logic;
  signal register1_q_net_x9: std_logic_vector(31 downto 0);
  signal relational1_op_net: std_logic;
  signal slice4_y_net_x4: std_logic;

begin
  ce_1_sg_x153 <= ce_1;
  clk_1_sg_x153 <= clk_1;
  slice4_y_net_x4 <= cnt_rst;
  register1_q_net_x7 <= dest_ip;
  register1_q_net_x5 <= din;
  register1_q_net_x8 <= eof;
  register1_q_net_x9 <= my_ip;
  delay1_q_net_x3 <= re;
  register1_q_net_x6 <= we;
  dout <= d_in_x1;
  empty <= logical1_y_net_x1;
  eof_out <= eofin_x2;
  full <= logical6_y_net_x1;
  lb_err_cnt <= convert_dout_net_x1;
  valid <= delay1_q_net_x4;

  break_and_reset_b8007708e2: entity work.break_and_reset_entity_b8007708e2
    port map (
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
      eof => eofin_x2,
      read => delay1_q_net_x3,
      re => logical_y_net_x2
    );

  concat: entity work.concat_39a9232e16
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => convert_dout_net,
      in1 => register1_q_net_x5,
      y => concat_y_net_x0
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x153,
      clk => clk_1_sg_x153,
      clr => '0',
      din(0) => register1_q_net_x8,
      en => "1",
      dout(0) => convert_dout_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x153,
      clk => clk_1_sg_x153,
      d(0) => logical4_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x153,
      clk => clk_1_sg_x153,
      d(0) => logical1_y_net,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x0
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x153,
      clk => clk_1_sg_x153,
      clr => '0',
      ip(0) => relational1_op_net,
      op(0) => inverter1_op_net
    );

  lb_err_cnt_d44ec14064: entity work.loop_cnt_entity_b073454139
    port map (
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
      reg_out => concat_y_net_x1,
      convert_x0 => convert_dout_net_x1
    );

  lb_fifo_error_b6367d63c2: entity work.lb_fifo_error_entity_b6367d63c2
    port map (
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
      count => counter3_op_net_x2,
      rst => slice4_y_net_x4,
      errcnt => concat_y_net_x1
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay1_q_net_x4,
      d1(0) => eofin_x2,
      y(0) => logical1_y_net
    );

  logical2: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register1_q_net_x8,
      d1(0) => inverter1_op_net,
      y(0) => logical2_y_net_x1
    );

  logical4: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register1_q_net_x8,
      d1(0) => relational1_op_net,
      y(0) => logical4_y_net_x2
    );

  loopback_fifo_pkt_count_1b2606d2ca: entity work.loopback_fifo_pkt_count_entity_1b2606d2ca
    port map (
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
      eofin => delay1_q_net_x0,
      eofout => delay2_q_net_x0,
      rst => slice4_y_net_x4,
      pending_count => counter3_op_net_x2
    );

  relational1: entity work.relational_770e12e4ab
    port map (
      a => register1_q_net_x7,
      b => register1_q_net_x9,
      ce => ce_1_sg_x153,
      clk => clk_1_sg_x153,
      clr => '0',
      op(0) => relational1_op_net
    );

  rollback_fifo_6ec568e1ad: entity work.rollback_fifo_entity_6ec568e1ad
    port map (
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
      commit => logical4_y_net_x2,
      din => concat_y_net_x0,
      discard => logical2_y_net_x1,
      re => logical_y_net_x2,
      we => register1_q_net_x6,
      dout => dual_port_ram_doutb_net_x0,
      empty => logical1_y_net_x1,
      full => logical6_y_net_x1,
      valid => delay1_q_net_x4
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 64,
      new_msb => 64,
      x_width => 65,
      y_width => 1
    )
    port map (
      x => dual_port_ram_doutb_net_x0,
      y(0) => eofin_x2
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 63,
      x_width => 65,
      y_width => 64
    )
    port map (
      x => dual_port_ram_doutb_net_x0,
      y => d_in_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/loopback/rx_pkt_fifo/Santa"

entity santa_entity_d2f1961a14 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    cnt_rst: in std_logic; 
    datain: in std_logic_vector(63 downto 0); 
    eof_rx: in std_logic; 
    valid_in: in std_logic; 
    commit: out std_logic; 
    dataout: out std_logic_vector(64 downto 0); 
    discard: out std_logic; 
    x2big: out std_logic_vector(31 downto 0); 
    x2small: out std_logic_vector(31 downto 0)
  );
end santa_entity_d2f1961a14;

architecture structural of santa_entity_d2f1961a14 is
  signal ce_1_sg_x161: std_logic;
  signal clk_1_sg_x161: std_logic;
  signal concat_y_net_x0: std_logic_vector(64 downto 0);
  signal constant1_op_net: std_logic_vector(10 downto 0);
  signal constant2_op_net: std_logic_vector(10 downto 0);
  signal constant3_op_net: std_logic_vector(10 downto 0);
  signal convert_dout_net: std_logic;
  signal convert_dout_net_x2: std_logic_vector(31 downto 0);
  signal convert_dout_net_x3: std_logic_vector(31 downto 0);
  signal counter1_op_net: std_logic_vector(19 downto 0);
  signal counter2_op_net_x0: std_logic_vector(31 downto 0);
  signal counter3_op_net_x0: std_logic_vector(31 downto 0);
  signal discar_x0: std_logic;
  signal logical1_y_net: std_logic;
  signal logical2_y_net_x0: std_logic;
  signal logical3_y_net_x0: std_logic;
  signal logical4_y_net_x0: std_logic;
  signal logical_y_net_x1: std_logic;
  signal logical_y_net_x2: std_logic;
  signal logical_y_net_x3: std_logic;
  signal register1_q_net_x3: std_logic;
  signal register1_q_net_x4: std_logic;
  signal register1_q_net_x5: std_logic_vector(63 downto 0);
  signal relational1_op_net: std_logic;
  signal relational2_op_net: std_logic;
  signal relational3_op_net: std_logic;
  signal slice4_y_net_x5: std_logic;

begin
  ce_1_sg_x161 <= ce_1;
  clk_1_sg_x161 <= clk_1;
  slice4_y_net_x5 <= cnt_rst;
  register1_q_net_x5 <= datain;
  register1_q_net_x3 <= eof_rx;
  register1_q_net_x4 <= valid_in;
  commit <= logical_y_net_x3;
  dataout <= concat_y_net_x0;
  discard <= discar_x0;
  x2big <= convert_dout_net_x2;
  x2small <= convert_dout_net_x3;

  concat: entity work.concat_39a9232e16
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => convert_dout_net,
      in1 => register1_q_net_x5,
      y => concat_y_net_x0
    );

  constant1: entity work.constant_0c7d8005f2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_0c7d8005f2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_0c7d8005f2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x161,
      clk => clk_1_sg_x161,
      clr => '0',
      din(0) => register1_q_net_x3,
      en => "1",
      dout(0) => convert_dout_net
    );

  counter1: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_2b657e2d1d4c21af",
      op_arith => xlUnsigned,
      op_width => 20
    )
    port map (
      ce => ce_1_sg_x161,
      clk => clk_1_sg_x161,
      clr => '0',
      en(0) => register1_q_net_x4,
      rst(0) => logical1_y_net,
      op => counter1_op_net
    );

  counter2: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_520b146027c1d89b",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x161,
      clk => clk_1_sg_x161,
      clr => '0',
      en(0) => logical_y_net_x1,
      rst(0) => slice4_y_net_x5,
      op => counter2_op_net_x0
    );

  counter3: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_520b146027c1d89b",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x161,
      clk => clk_1_sg_x161,
      clr => '0',
      en(0) => logical_y_net_x2,
      rst(0) => slice4_y_net_x5,
      op => counter3_op_net_x0
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register1_q_net_x3,
      d1(0) => register1_q_net_x4,
      y(0) => logical1_y_net
    );

  logical2: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical1_y_net,
      d1(0) => relational1_op_net,
      y(0) => logical2_y_net_x0
    );

  logical3: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical1_y_net,
      d1(0) => relational2_op_net,
      y(0) => logical3_y_net_x0
    );

  logical4: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical1_y_net,
      d1(0) => relational3_op_net,
      y(0) => logical4_y_net_x0
    );

  logical5: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x1,
      d1(0) => logical_y_net_x2,
      y(0) => discar_x0
    );

  posedge1_7d5ab49716: entity work.posedge_entity_21f484bc47
    port map (
      ce_1 => ce_1_sg_x161,
      clk_1 => clk_1_sg_x161,
      in_x0 => logical3_y_net_x0,
      out_x0 => logical_y_net_x1
    );

  posedge2_e2ac856e28: entity work.posedge_entity_21f484bc47
    port map (
      ce_1 => ce_1_sg_x161,
      clk_1 => clk_1_sg_x161,
      in_x0 => logical4_y_net_x0,
      out_x0 => logical_y_net_x2
    );

  posedge_71bdbddd6c: entity work.posedge_entity_21f484bc47
    port map (
      ce_1 => ce_1_sg_x161,
      clk_1 => clk_1_sg_x161,
      in_x0 => logical2_y_net_x0,
      out_x0 => logical_y_net_x3
    );

  relational1: entity work.relational_8e7646e9fc
    port map (
      a => counter1_op_net,
      b => constant1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

  relational2: entity work.relational_b19165022f
    port map (
      a => counter1_op_net,
      b => constant2_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net
    );

  relational3: entity work.relational_0bd6d8bc7a
    port map (
      a => counter1_op_net,
      b => constant3_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational3_op_net
    );

  x2big_60dd08bcb3: entity work.loop_cnt_entity_b073454139
    port map (
      ce_1 => ce_1_sg_x161,
      clk_1 => clk_1_sg_x161,
      reg_out => counter2_op_net_x0,
      convert_x0 => convert_dout_net_x2
    );

  x2small_d5d0d95d46: entity work.loop_cnt_entity_b073454139
    port map (
      ce_1 => ce_1_sg_x161,
      clk_1 => clk_1_sg_x161,
      reg_out => counter3_op_net_x0,
      convert_x0 => convert_dout_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/loopback/rx_pkt_fifo"

entity rx_pkt_fifo_entity_3b8b649db2 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d_in: in std_logic_vector(63 downto 0); 
    eof_in: in std_logic; 
    re: in std_logic; 
    valid_in: in std_logic; 
    x: in std_logic; 
    data: out std_logic_vector(63 downto 0); 
    empty: out std_logic; 
    eof: out std_logic; 
    full: out std_logic; 
    santa: out std_logic_vector(31 downto 0); 
    santa_x0: out std_logic_vector(31 downto 0); 
    valid: out std_logic
  );
end rx_pkt_fifo_entity_3b8b649db2;

architecture structural of rx_pkt_fifo_entity_3b8b649db2 is
  signal ce_1_sg_x166: std_logic;
  signal clk_1_sg_x166: std_logic;
  signal concat_y_net_x1: std_logic_vector(64 downto 0);
  signal convert_dout_net_x4: std_logic_vector(31 downto 0);
  signal convert_dout_net_x5: std_logic_vector(31 downto 0);
  signal delay1_q_net_x2: std_logic;
  signal delay2_q_net_x2: std_logic;
  signal discar_x2: std_logic;
  signal dual_port_ram_doutb_net_x0: std_logic_vector(64 downto 0);
  signal logical1_y_net_x1: std_logic;
  signal logical6_y_net_x1: std_logic;
  signal logical_y_net_x5: std_logic;
  signal logical_y_net_x6: std_logic;
  signal register1_q_net_x7: std_logic;
  signal register1_q_net_x8: std_logic;
  signal register1_q_net_x9: std_logic_vector(63 downto 0);
  signal slice1_y_net_x1: std_logic_vector(63 downto 0);
  signal slice4_y_net_x6: std_logic;
  signal slice_y_net_x2: std_logic;

begin
  ce_1_sg_x166 <= ce_1;
  clk_1_sg_x166 <= clk_1;
  register1_q_net_x9 <= d_in;
  register1_q_net_x7 <= eof_in;
  delay2_q_net_x2 <= re;
  register1_q_net_x8 <= valid_in;
  slice4_y_net_x6 <= x;
  data <= slice1_y_net_x1;
  empty <= logical1_y_net_x1;
  eof <= slice_y_net_x2;
  full <= logical6_y_net_x1;
  santa <= convert_dout_net_x4;
  santa_x0 <= convert_dout_net_x5;
  valid <= delay1_q_net_x2;

  break_and_reset_bce8cc2a24: entity work.break_and_reset_entity_b8007708e2
    port map (
      ce_1 => ce_1_sg_x166,
      clk_1 => clk_1_sg_x166,
      eof => slice_y_net_x2,
      read => delay2_q_net_x2,
      re => logical_y_net_x6
    );

  rollback_fifo_36f1488cba: entity work.rollback_fifo_entity_6ec568e1ad
    port map (
      ce_1 => ce_1_sg_x166,
      clk_1 => clk_1_sg_x166,
      commit => logical_y_net_x5,
      din => concat_y_net_x1,
      discard => discar_x2,
      re => logical_y_net_x6,
      we => register1_q_net_x8,
      dout => dual_port_ram_doutb_net_x0,
      empty => logical1_y_net_x1,
      full => logical6_y_net_x1,
      valid => delay1_q_net_x2
    );

  santa_d2f1961a14: entity work.santa_entity_d2f1961a14
    port map (
      ce_1 => ce_1_sg_x166,
      clk_1 => clk_1_sg_x166,
      cnt_rst => slice4_y_net_x6,
      datain => register1_q_net_x9,
      eof_rx => register1_q_net_x7,
      valid_in => register1_q_net_x8,
      commit => logical_y_net_x5,
      dataout => concat_y_net_x1,
      discard => discar_x2,
      x2big => convert_dout_net_x4,
      x2small => convert_dout_net_x5
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 64,
      new_msb => 64,
      x_width => 65,
      y_width => 1
    )
    port map (
      x => dual_port_ram_doutb_net_x0,
      y(0) => slice_y_net_x2
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 63,
      x_width => 65,
      y_width => 64
    )
    port map (
      x => dual_port_ram_doutb_net_x0,
      y => slice1_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/loopback"

entity loopback_entity_e3d9044413 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    cnt_rst: in std_logic; 
    gbe_sw_eof: in std_logic; 
    gbe_sw_rx: in std_logic_vector(63 downto 0); 
    gbe_sw_rx_valid: in std_logic; 
    gbe_sw_tx_data: in std_logic_vector(63 downto 0); 
    gbe_sw_tx_eof: in std_logic; 
    gbe_sw_tx_ip: in std_logic_vector(31 downto 0); 
    gbe_sw_valid_tx: in std_logic; 
    my_ip: in std_logic_vector(31 downto 0); 
    lb_mux_data: out std_logic_vector(63 downto 0); 
    lb_mux_eof: out std_logic; 
    lb_mux_valid: out std_logic; 
    loop_cnt: out std_logic_vector(31 downto 0); 
    loop_err_cnt: out std_logic_vector(31 downto 0); 
    loopback_fifo: out std_logic_vector(31 downto 0); 
    loopback_mux: out std_logic_vector(31 downto 0); 
    loopback_mux_x0: out std_logic_vector(31 downto 0); 
    loopback_mux_x1: out std_logic_vector(31 downto 0); 
    loopback_mux_x2: out std_logic_vector(31 downto 0); 
    rx_cnt: out std_logic_vector(31 downto 0); 
    rx_err_cnt: out std_logic_vector(31 downto 0); 
    rx_pkt_fifo: out std_logic_vector(31 downto 0); 
    rx_pkt_fifo_x0: out std_logic_vector(31 downto 0)
  );
end loopback_entity_e3d9044413;

architecture structural of loopback_entity_e3d9044413 is
  signal ce_1_sg_x167: std_logic;
  signal clk_1_sg_x167: std_logic;
  signal convert_dout_net_x13: std_logic_vector(31 downto 0);
  signal convert_dout_net_x14: std_logic_vector(31 downto 0);
  signal convert_dout_net_x15: std_logic_vector(31 downto 0);
  signal convert_dout_net_x16: std_logic_vector(31 downto 0);
  signal convert_dout_net_x17: std_logic_vector(31 downto 0);
  signal convert_dout_net_x18: std_logic_vector(31 downto 0);
  signal convert_dout_net_x19: std_logic_vector(31 downto 0);
  signal convert_dout_net_x20: std_logic_vector(31 downto 0);
  signal convert_dout_net_x21: std_logic_vector(31 downto 0);
  signal convert_dout_net_x22: std_logic_vector(31 downto 0);
  signal convert_dout_net_x23: std_logic_vector(31 downto 0);
  signal d_in_x1: std_logic_vector(63 downto 0);
  signal delay10_q_net_x0: std_logic;
  signal delay11_q_net_x0: std_logic;
  signal delay1_q_net_x2: std_logic;
  signal delay1_q_net_x3: std_logic;
  signal delay1_q_net_x4: std_logic;
  signal delay2_q_net_x2: std_logic;
  signal delay4_q_net_x0: std_logic;
  signal delay4_q_net_x2: std_logic_vector(31 downto 0);
  signal delay5_q_net_x0: std_logic;
  signal delay6_q_net_x0: std_logic;
  signal delay7_q_net_x0: std_logic;
  signal delay8_q_net_x0: std_logic;
  signal delay9_q_net_x0: std_logic;
  signal dout_x2: std_logic_vector(63 downto 0);
  signal eof_out_x2: std_logic;
  signal eofin_x2: std_logic;
  signal gbe_read_x1: std_logic;
  signal logical1_y_net_x1: std_logic;
  signal logical1_y_net_x2: std_logic;
  signal logical6_y_net_x1: std_logic;
  signal logical6_y_net_x2: std_logic;
  signal logical_y_net_x1: std_logic;
  signal loop_read_x1: std_logic;
  signal payload_cnt1_op_net_x1: std_logic_vector(31 downto 0);
  signal payload_cnt1_op_net_x2: std_logic_vector(31 downto 0);
  signal payload_cnt2_op_net_x1: std_logic_vector(31 downto 0);
  signal payload_cnt2_op_net_x2: std_logic_vector(31 downto 0);
  signal register0_q_net_x10: std_logic;
  signal register0_q_net_x11: std_logic_vector(63 downto 0);
  signal register0_q_net_x12: std_logic;
  signal register0_q_net_x6: std_logic;
  signal register0_q_net_x7: std_logic;
  signal register0_q_net_x8: std_logic_vector(63 downto 0);
  signal register0_q_net_x9: std_logic;
  signal register1_q_net_x0: std_logic;
  signal register1_q_net_x10: std_logic_vector(31 downto 0);
  signal register1_q_net_x11: std_logic;
  signal register1_q_net_x12: std_logic_vector(63 downto 0);
  signal register1_q_net_x5: std_logic_vector(63 downto 0);
  signal register1_q_net_x6: std_logic;
  signal register1_q_net_x7: std_logic_vector(31 downto 0);
  signal register1_q_net_x8: std_logic;
  signal register1_q_net_x9: std_logic;
  signal register3_q_net_x1: std_logic;
  signal register_q_net_x1: std_logic_vector(63 downto 0);
  signal roachf_1024_bao_switch_gbe3_rx_data_net_x1: std_logic_vector(63 downto 0);
  signal roachf_1024_bao_switch_gbe3_rx_end_of_frame_net_x1: std_logic;
  signal roachf_1024_bao_switch_gbe3_rx_valid_net_x1: std_logic;
  signal slice1_y_net_x1: std_logic_vector(63 downto 0);
  signal slice2_y_net_x1: std_logic_vector(31 downto 0);
  signal slice4_y_net_x7: std_logic;
  signal slice_y_net_x2: std_logic;
  signal validout_x2: std_logic;

begin
  ce_1_sg_x167 <= ce_1;
  clk_1_sg_x167 <= clk_1;
  slice4_y_net_x7 <= cnt_rst;
  roachf_1024_bao_switch_gbe3_rx_end_of_frame_net_x1 <= gbe_sw_eof;
  roachf_1024_bao_switch_gbe3_rx_data_net_x1 <= gbe_sw_rx;
  roachf_1024_bao_switch_gbe3_rx_valid_net_x1 <= gbe_sw_rx_valid;
  register_q_net_x1 <= gbe_sw_tx_data;
  register3_q_net_x1 <= gbe_sw_tx_eof;
  slice2_y_net_x1 <= gbe_sw_tx_ip;
  logical_y_net_x1 <= gbe_sw_valid_tx;
  delay4_q_net_x2 <= my_ip;
  lb_mux_data <= dout_x2;
  lb_mux_eof <= eof_out_x2;
  lb_mux_valid <= validout_x2;
  loop_cnt <= convert_dout_net_x13;
  loop_err_cnt <= convert_dout_net_x14;
  loopback_fifo <= convert_dout_net_x19;
  loopback_mux <= convert_dout_net_x15;
  loopback_mux_x0 <= convert_dout_net_x16;
  loopback_mux_x1 <= convert_dout_net_x17;
  loopback_mux_x2 <= convert_dout_net_x18;
  rx_cnt <= convert_dout_net_x20;
  rx_err_cnt <= convert_dout_net_x21;
  rx_pkt_fifo <= convert_dout_net_x22;
  rx_pkt_fifo_x0 <= convert_dout_net_x23;

  delay1: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x167,
      clk => clk_1_sg_x167,
      d(0) => loop_read_x1,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net_x3
    );

  delay10: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x167,
      clk => clk_1_sg_x167,
      d(0) => eofin_x2,
      en => '1',
      rst => '1',
      q(0) => delay10_q_net_x0
    );

  delay11: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x167,
      clk => clk_1_sg_x167,
      d(0) => logical6_y_net_x1,
      en => '1',
      rst => '1',
      q(0) => delay11_q_net_x0
    );

  delay14_5fd1606dd3: entity work.delay14_entity_5fd1606dd3
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      d => register_q_net_x1,
      q => register1_q_net_x5
    );

  delay15_bf4f957bed: entity work.delay15_entity_bf4f957bed
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      d => logical_y_net_x1,
      q => register1_q_net_x6
    );

  delay16_a12aa4bb98: entity work.delay16_entity_a12aa4bb98
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      d => slice2_y_net_x1,
      q => register1_q_net_x7
    );

  delay17_286e674199: entity work.delay17_entity_286e674199
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      d => delay1_q_net_x2,
      q => register0_q_net_x6
    );

  delay18_053e647870: entity work.delay17_entity_286e674199
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      d => slice_y_net_x2,
      q => register0_q_net_x7
    );

  delay2: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x167,
      clk => clk_1_sg_x167,
      d(0) => gbe_read_x1,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x2
    );

  delay22_131dd68804: entity work.delay22_entity_131dd68804
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      d => d_in_x1,
      q => register0_q_net_x8
    );

  delay23_7894898250: entity work.delay17_entity_286e674199
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      d => delay1_q_net_x4,
      q => register0_q_net_x9
    );

  delay24_70e7577929: entity work.delay15_entity_bf4f957bed
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      d => roachf_1024_bao_switch_gbe3_rx_end_of_frame_net_x1,
      q => register1_q_net_x8
    );

  delay25_0174a52cfc: entity work.delay17_entity_286e674199
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      d => eofin_x2,
      q => register0_q_net_x10
    );

  delay3_1780ef1921: entity work.delay22_entity_131dd68804
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      d => slice1_y_net_x1,
      q => register0_q_net_x11
    );

  delay4: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x167,
      clk => clk_1_sg_x167,
      d(0) => slice4_y_net_x7,
      en => '1',
      rst => '1',
      q(0) => delay4_q_net_x0
    );

  delay44_babc4c60e3: entity work.delay15_entity_bf4f957bed
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      d => register3_q_net_x1,
      q => register1_q_net_x9
    );

  delay46_9760a83d31: entity work.delay16_entity_a12aa4bb98
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      d => delay4_q_net_x2,
      q => register1_q_net_x10
    );

  delay5: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x167,
      clk => clk_1_sg_x167,
      d(0) => delay1_q_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay5_q_net_x0
    );

  delay6: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x167,
      clk => clk_1_sg_x167,
      d(0) => slice_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay6_q_net_x0
    );

  delay7: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x167,
      clk => clk_1_sg_x167,
      d(0) => logical6_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay7_q_net_x0
    );

  delay76_24cd5b395e: entity work.delay15_entity_bf4f957bed
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      d => roachf_1024_bao_switch_gbe3_rx_valid_net_x1,
      q => register1_q_net_x11
    );

  delay79_e914dfd25d: entity work.delay14_entity_5fd1606dd3
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      d => roachf_1024_bao_switch_gbe3_rx_data_net_x1,
      q => register1_q_net_x12
    );

  delay8: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x167,
      clk => clk_1_sg_x167,
      d(0) => slice4_y_net_x7,
      en => '1',
      rst => '1',
      q(0) => delay8_q_net_x0
    );

  delay9: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x167,
      clk => clk_1_sg_x167,
      d(0) => delay1_q_net_x4,
      en => '1',
      rst => '1',
      q(0) => delay9_q_net_x0
    );

  loop_cnt_b073454139: entity work.loop_cnt_entity_b073454139
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      reg_out => payload_cnt1_op_net_x2,
      convert_x0 => convert_dout_net_x13
    );

  loop_err_cnt_ecd1c8b597: entity work.loop_cnt_entity_b073454139
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      reg_out => payload_cnt2_op_net_x2,
      convert_x0 => convert_dout_net_x14
    );

  loopback_fifo_12efd103ed: entity work.loopback_fifo_entity_12efd103ed
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      cnt_rst => slice4_y_net_x7,
      dest_ip => register1_q_net_x7,
      din => register1_q_net_x5,
      eof => register1_q_net_x9,
      my_ip => register1_q_net_x10,
      re => delay1_q_net_x3,
      we => register1_q_net_x6,
      dout => d_in_x1,
      empty => logical1_y_net_x1,
      eof_out => eofin_x2,
      full => logical6_y_net_x1,
      lb_err_cnt => convert_dout_net_x19,
      valid => delay1_q_net_x4
    );

  loopback_mux_c2598f182e: entity work.loopback_mux_entity_c2598f182e
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      cnt_rst => slice4_y_net_x7,
      gbe_din => register0_q_net_x11,
      gbe_empty => register1_q_net_x0,
      gbe_eof => register0_q_net_x7,
      gbe_valid => register0_q_net_x6,
      loop_din => register0_q_net_x8,
      loop_empty => register0_q_net_x12,
      loop_eof => register0_q_net_x10,
      loop_valid => register0_q_net_x9,
      dout => dout_x2,
      eof => eof_out_x2,
      gbe_over => convert_dout_net_x15,
      gbe_read_x0 => gbe_read_x1,
      gbe_und => convert_dout_net_x16,
      lb_over => convert_dout_net_x17,
      lb_und => convert_dout_net_x18,
      loop_read_x0 => loop_read_x1,
      valid_out => validout_x2
    );

  register0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"1"
    )
    port map (
      ce => ce_1_sg_x167,
      clk => clk_1_sg_x167,
      d(0) => logical1_y_net_x1,
      en => "1",
      rst => "0",
      q(0) => register0_q_net_x12
    );

  register1: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"1"
    )
    port map (
      ce => ce_1_sg_x167,
      clk => clk_1_sg_x167,
      d(0) => logical1_y_net_x2,
      en => "1",
      rst => "0",
      q(0) => register1_q_net_x0
    );

  rx_cnt_f37a3a71fa: entity work.loop_cnt_entity_b073454139
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      reg_out => payload_cnt1_op_net_x1,
      convert_x0 => convert_dout_net_x20
    );

  rx_err_cnt_2ec99a142e: entity work.loop_cnt_entity_b073454139
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      reg_out => payload_cnt2_op_net_x1,
      convert_x0 => convert_dout_net_x21
    );

  rx_pkt_fifo_3b8b649db2: entity work.rx_pkt_fifo_entity_3b8b649db2
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      d_in => register1_q_net_x12,
      eof_in => register1_q_net_x8,
      re => delay2_q_net_x2,
      valid_in => register1_q_net_x11,
      x => slice4_y_net_x7,
      data => slice1_y_net_x1,
      empty => logical1_y_net_x2,
      eof => slice_y_net_x2,
      full => logical6_y_net_x2,
      santa => convert_dout_net_x22,
      santa_x0 => convert_dout_net_x23,
      valid => delay1_q_net_x2
    );

  subsystem12_af265d6ce6: entity work.subsystem1_entity_c23e69437f
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      eof => delay10_q_net_x0,
      overflow => delay11_q_net_x0,
      rst => delay8_q_net_x0,
      we => delay9_q_net_x0,
      err_cnt => payload_cnt2_op_net_x2,
      rx_cnt => payload_cnt1_op_net_x2
    );

  subsystem1_c23e69437f: entity work.subsystem1_entity_c23e69437f
    port map (
      ce_1 => ce_1_sg_x167,
      clk_1 => clk_1_sg_x167,
      eof => delay6_q_net_x0,
      overflow => delay7_q_net_x0,
      rst => delay4_q_net_x0,
      we => delay5_q_net_x0,
      err_cnt => payload_cnt2_op_net_x1,
      rx_cnt => payload_cnt1_op_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/seed/armed_trigger/edge_detect"

entity edge_detect_entity_61764bf456 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end edge_detect_entity_61764bf456;

architecture structural of edge_detect_entity_61764bf456 is
  signal ce_1_sg_x168: std_logic;
  signal clk_1_sg_x168: std_logic;
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal inverter_op_net: std_logic;
  signal slice7_y_net_x4: std_logic;

begin
  ce_1_sg_x168 <= ce_1;
  clk_1_sg_x168 <= clk_1;
  slice7_y_net_x4 <= in_x0;
  out_x0 <= edge_op_y_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x168,
      clk => clk_1_sg_x168,
      d(0) => slice7_y_net_x4,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  edge_op: entity work.logical_dfe2dded7f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => delay_q_net,
      y(0) => edge_op_y_net_x0
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x168,
      clk => clk_1_sg_x168,
      clr => '0',
      ip(0) => slice7_y_net_x4,
      op(0) => inverter_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/seed/armed_trigger"

entity armed_trigger_entity_ba55ceb7d8 is
  port (
    arm: in std_logic; 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    trig_in: in std_logic; 
    trig_out: out std_logic
  );
end armed_trigger_entity_ba55ceb7d8;

architecture structural of armed_trigger_entity_ba55ceb7d8 is
  signal armed_q_net: std_logic;
  signal ce_1_sg_x169: std_logic;
  signal clk_1_sg_x169: std_logic;
  signal constant2_op_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal logical_y_net_x21: std_logic;
  signal logical_y_net_x22: std_logic;
  signal slice7_y_net_x5: std_logic;

begin
  slice7_y_net_x5 <= arm;
  ce_1_sg_x169 <= ce_1;
  clk_1_sg_x169 <= clk_1;
  logical_y_net_x21 <= trig_in;
  trig_out <= logical_y_net_x22;

  armed: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"1"
    )
    port map (
      ce => ce_1_sg_x169,
      clk => clk_1_sg_x169,
      d(0) => constant2_op_net,
      en(0) => logical_y_net_x22,
      rst(0) => edge_op_y_net_x0,
      q(0) => armed_q_net
    );

  constant2: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  edge_detect_61764bf456: entity work.edge_detect_entity_61764bf456
    port map (
      ce_1 => ce_1_sg_x169,
      clk_1 => clk_1_sg_x169,
      in_x0 => slice7_y_net_x5,
      out_x0 => edge_op_y_net_x0
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => armed_q_net,
      d1(0) => logical_y_net_x21,
      y(0) => logical_y_net_x22
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/seed"

entity seed_entity_ed487ed0f0 is
  port (
    arm_rst: in std_logic; 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    roachf_1024_bao_seed_data_user_data_out: in std_logic_vector(31 downto 0); 
    sync_gen: in std_logic; 
    seed0: out std_logic_vector(31 downto 0); 
    seed1: out std_logic_vector(31 downto 0); 
    seed2: out std_logic_vector(31 downto 0); 
    seed3: out std_logic_vector(31 downto 0); 
    seed_ld: out std_logic
  );
end seed_entity_ed487ed0f0;

architecture structural of seed_entity_ed487ed0f0 is
  signal bitbasher_seed0_net_x5: std_logic_vector(31 downto 0);
  signal bitbasher_seed1_net_x5: std_logic_vector(31 downto 0);
  signal bitbasher_seed2_net_x5: std_logic_vector(31 downto 0);
  signal bitbasher_seed3_net_x5: std_logic_vector(31 downto 0);
  signal ce_1_sg_x170: std_logic;
  signal clk_1_sg_x170: std_logic;
  signal logical_y_net_x23: std_logic;
  signal logical_y_net_x24: std_logic;
  signal roachf_1024_bao_seed_data_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice7_y_net_x6: std_logic;

begin
  slice7_y_net_x6 <= arm_rst;
  ce_1_sg_x170 <= ce_1;
  clk_1_sg_x170 <= clk_1;
  roachf_1024_bao_seed_data_user_data_out_net_x0 <= roachf_1024_bao_seed_data_user_data_out;
  logical_y_net_x23 <= sync_gen;
  seed0 <= bitbasher_seed0_net_x5;
  seed1 <= bitbasher_seed1_net_x5;
  seed2 <= bitbasher_seed2_net_x5;
  seed3 <= bitbasher_seed3_net_x5;
  seed_ld <= logical_y_net_x24;

  armed_trigger_ba55ceb7d8: entity work.armed_trigger_entity_ba55ceb7d8
    port map (
      arm => slice7_y_net_x6,
      ce_1 => ce_1_sg_x170,
      clk_1 => clk_1_sg_x170,
      trig_in => logical_y_net_x23,
      trig_out => logical_y_net_x24
    );

  bitbasher: entity work.bitbasher_5b1e76c782
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      seed => roachf_1024_bao_seed_data_user_data_out_net_x0,
      seed0 => bitbasher_seed0_net_x5,
      seed1 => bitbasher_seed1_net_x5,
      seed2 => bitbasher_seed2_net_x5,
      seed3 => bitbasher_seed3_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/status"

entity status_entity_862e12a4dd is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    cnt_rst: in std_logic; 
    gbe_gpu_led_rx: in std_logic; 
    gbe_gpu_led_tx: in std_logic; 
    gbe_gpu_led_up: in std_logic; 
    gbe_gpu_rx_eof: in std_logic; 
    gbe_gpu_rx_valid: in std_logic; 
    gbe_gpu_tx_ack: in std_logic; 
    gbe_sw_led_rx: in std_logic; 
    gbe_sw_led_tx: in std_logic; 
    gbe_sw_led_up: in std_logic; 
    gbe_sw_rx_bfr: in std_logic; 
    gbe_sw_rx_orun: in std_logic; 
    gbe_sw_tx_afull: in std_logic; 
    gbe_sw_tx_oflow: in std_logic; 
    gbe_gpu: out std_logic_vector(31 downto 0); 
    gbe_sw: out std_logic_vector(31 downto 0); 
    swgbe_bframe: out std_logic_vector(31 downto 0); 
    swgbe_oflow: out std_logic_vector(31 downto 0); 
    swgbe_orun: out std_logic_vector(31 downto 0)
  );
end status_entity_862e12a4dd;

architecture structural of status_entity_862e12a4dd is
  signal ce_1_sg_x176: std_logic;
  signal clk_1_sg_x176: std_logic;
  signal concat1_y_net_x0: std_logic_vector(31 downto 0);
  signal concat_y_net_x0: std_logic_vector(31 downto 0);
  signal constant1_op_net: std_logic_vector(24 downto 0);
  signal constant2_op_net: std_logic_vector(24 downto 0);
  signal convert_dout_net_x5: std_logic_vector(31 downto 0);
  signal convert_dout_net_x6: std_logic_vector(31 downto 0);
  signal convert_dout_net_x7: std_logic_vector(31 downto 0);
  signal convert_dout_net_x8: std_logic_vector(31 downto 0);
  signal convert_dout_net_x9: std_logic_vector(31 downto 0);
  signal counter1_op_net_x0: std_logic_vector(31 downto 0);
  signal counter2_op_net_x0: std_logic_vector(31 downto 0);
  signal counter3_op_net_x0: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_gpu_gbe2_led_rx_net_x0: std_logic;
  signal roachf_1024_bao_gpu_gbe2_led_tx_net_x0: std_logic;
  signal roachf_1024_bao_gpu_gbe2_led_up_net_x0: std_logic;
  signal roachf_1024_bao_gpu_gbe2_rx_end_of_frame_net_x0: std_logic;
  signal roachf_1024_bao_gpu_gbe2_rx_valid_net_x0: std_logic;
  signal roachf_1024_bao_gpu_gbe2_tx_afull_net_x0: std_logic;
  signal roachf_1024_bao_switch_gbe3_led_rx_net_x0: std_logic;
  signal roachf_1024_bao_switch_gbe3_led_tx_net_x0: std_logic;
  signal roachf_1024_bao_switch_gbe3_led_up_net_x0: std_logic;
  signal roachf_1024_bao_switch_gbe3_rx_bad_frame_net_x0: std_logic;
  signal roachf_1024_bao_switch_gbe3_rx_overrun_net_x0: std_logic;
  signal roachf_1024_bao_switch_gbe3_tx_afull_net_x0: std_logic;
  signal roachf_1024_bao_switch_gbe3_tx_overflow_net_x0: std_logic;
  signal slice4_y_net_x8: std_logic;

begin
  ce_1_sg_x176 <= ce_1;
  clk_1_sg_x176 <= clk_1;
  slice4_y_net_x8 <= cnt_rst;
  roachf_1024_bao_gpu_gbe2_led_rx_net_x0 <= gbe_gpu_led_rx;
  roachf_1024_bao_gpu_gbe2_led_tx_net_x0 <= gbe_gpu_led_tx;
  roachf_1024_bao_gpu_gbe2_led_up_net_x0 <= gbe_gpu_led_up;
  roachf_1024_bao_gpu_gbe2_rx_end_of_frame_net_x0 <= gbe_gpu_rx_eof;
  roachf_1024_bao_gpu_gbe2_rx_valid_net_x0 <= gbe_gpu_rx_valid;
  roachf_1024_bao_gpu_gbe2_tx_afull_net_x0 <= gbe_gpu_tx_ack;
  roachf_1024_bao_switch_gbe3_led_rx_net_x0 <= gbe_sw_led_rx;
  roachf_1024_bao_switch_gbe3_led_tx_net_x0 <= gbe_sw_led_tx;
  roachf_1024_bao_switch_gbe3_led_up_net_x0 <= gbe_sw_led_up;
  roachf_1024_bao_switch_gbe3_rx_bad_frame_net_x0 <= gbe_sw_rx_bfr;
  roachf_1024_bao_switch_gbe3_rx_overrun_net_x0 <= gbe_sw_rx_orun;
  roachf_1024_bao_switch_gbe3_tx_afull_net_x0 <= gbe_sw_tx_afull;
  roachf_1024_bao_switch_gbe3_tx_overflow_net_x0 <= gbe_sw_tx_oflow;
  gbe_gpu <= convert_dout_net_x5;
  gbe_sw <= convert_dout_net_x6;
  swgbe_bframe <= convert_dout_net_x7;
  swgbe_oflow <= convert_dout_net_x8;
  swgbe_orun <= convert_dout_net_x9;

  concat: entity work.concat_31382efd95
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => constant1_op_net,
      in1(0) => roachf_1024_bao_switch_gbe3_led_up_net_x0,
      in2(0) => roachf_1024_bao_switch_gbe3_led_rx_net_x0,
      in3(0) => roachf_1024_bao_switch_gbe3_led_tx_net_x0,
      in4(0) => roachf_1024_bao_switch_gbe3_tx_afull_net_x0,
      in5(0) => roachf_1024_bao_switch_gbe3_tx_overflow_net_x0,
      in6(0) => roachf_1024_bao_switch_gbe3_rx_bad_frame_net_x0,
      in7(0) => roachf_1024_bao_switch_gbe3_rx_overrun_net_x0,
      y => concat_y_net_x0
    );

  concat1: entity work.concat_31382efd95
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => constant2_op_net,
      in1(0) => roachf_1024_bao_gpu_gbe2_led_up_net_x0,
      in2(0) => roachf_1024_bao_gpu_gbe2_led_rx_net_x0,
      in3(0) => roachf_1024_bao_gpu_gbe2_led_tx_net_x0,
      in4(0) => roachf_1024_bao_gpu_gbe2_tx_afull_net_x0,
      in5(0) => roachf_1024_bao_gpu_gbe2_rx_valid_net_x0,
      in6(0) => roachf_1024_bao_gpu_gbe2_rx_end_of_frame_net_x0,
      in7(0) => roachf_1024_bao_gpu_gbe2_rx_end_of_frame_net_x0,
      y => concat1_y_net_x0
    );

  constant1: entity work.constant_6a1bb6dda6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_6a1bb6dda6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  counter1: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_520b146027c1d89b",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x176,
      clk => clk_1_sg_x176,
      clr => '0',
      en(0) => roachf_1024_bao_switch_gbe3_rx_overrun_net_x0,
      rst(0) => slice4_y_net_x8,
      op => counter1_op_net_x0
    );

  counter2: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_520b146027c1d89b",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x176,
      clk => clk_1_sg_x176,
      clr => '0',
      en(0) => roachf_1024_bao_switch_gbe3_rx_bad_frame_net_x0,
      rst(0) => slice4_y_net_x8,
      op => counter2_op_net_x0
    );

  counter3: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_520b146027c1d89b",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x176,
      clk => clk_1_sg_x176,
      clr => '0',
      en(0) => roachf_1024_bao_switch_gbe3_tx_overflow_net_x0,
      rst(0) => slice4_y_net_x8,
      op => counter3_op_net_x0
    );

  gbe_gpu_9539726a40: entity work.loop_cnt_entity_b073454139
    port map (
      ce_1 => ce_1_sg_x176,
      clk_1 => clk_1_sg_x176,
      reg_out => concat1_y_net_x0,
      convert_x0 => convert_dout_net_x5
    );

  gbe_sw_ffdcb4611c: entity work.loop_cnt_entity_b073454139
    port map (
      ce_1 => ce_1_sg_x176,
      clk_1 => clk_1_sg_x176,
      reg_out => concat_y_net_x0,
      convert_x0 => convert_dout_net_x6
    );

  swgbe_bframe_16eb723031: entity work.loop_cnt_entity_b073454139
    port map (
      ce_1 => ce_1_sg_x176,
      clk_1 => clk_1_sg_x176,
      reg_out => counter2_op_net_x0,
      convert_x0 => convert_dout_net_x7
    );

  swgbe_oflow_819747b839: entity work.loop_cnt_entity_b073454139
    port map (
      ce_1 => ce_1_sg_x176,
      clk_1 => clk_1_sg_x176,
      reg_out => counter3_op_net_x0,
      convert_x0 => convert_dout_net_x8
    );

  swgbe_orun_438311ed2f: entity work.loop_cnt_entity_b073454139
    port map (
      ce_1 => ce_1_sg_x176,
      clk_1 => clk_1_sg_x176,
      reg_out => counter1_op_net_x0,
      convert_x0 => convert_dout_net_x9
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/switch/10gbetxsnap/addr"

entity addr_entity_8e2907ad88 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    reg_out: in std_logic_vector(9 downto 0); 
    convert_x0: out std_logic_vector(31 downto 0)
  );
end addr_entity_8e2907ad88;

architecture structural of addr_entity_8e2907ad88 is
  signal ce_1_sg_x177: std_logic;
  signal clk_1_sg_x177: std_logic;
  signal convert_dout_net_x0: std_logic_vector(31 downto 0);
  signal register1_q_net_x0: std_logic_vector(9 downto 0);

begin
  ce_1_sg_x177 <= ce_1;
  clk_1_sg_x177 <= clk_1;
  register1_q_net_x0 <= reg_out;
  convert_x0 <= convert_dout_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 10,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x177,
      clk => clk_1_sg_x177,
      clr => '0',
      din => register1_q_net_x0,
      en => "1",
      dout => convert_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/switch/10gbetxsnap/bram_lsb/calc_add"

entity calc_add_entity_55831640b4 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(9 downto 0); 
    out_x0: out std_logic_vector(9 downto 0)
  );
end calc_add_entity_55831640b4;

architecture structural of calc_add_entity_55831640b4 is
  signal add_sub_s_net: std_logic;
  signal ce_1_sg_x178: std_logic;
  signal clk_1_sg_x178: std_logic;
  signal concat_y_net: std_logic_vector(9 downto 0);
  signal const_op_net: std_logic;
  signal convert_addr_dout_net: std_logic_vector(9 downto 0);
  signal enable_y_net_x0: std_logic_vector(9 downto 0);
  signal lsw_y_net: std_logic;
  signal manipulate_op_net: std_logic;
  signal msw_y_net: std_logic_vector(8 downto 0);
  signal mux_y_net_x0: std_logic_vector(9 downto 0);

begin
  ce_1_sg_x178 <= ce_1;
  clk_1_sg_x178 <= clk_1;
  enable_y_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x0;

  add_sub: entity work.addsub_c13097e33e
    port map (
      a(0) => const_op_net,
      b(0) => lsw_y_net,
      ce => ce_1_sg_x178,
      clk => clk_1_sg_x178,
      clr => '0',
      s(0) => add_sub_s_net
    );

  concat: entity work.concat_1d98d96b58
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => msw_y_net,
      in1(0) => add_sub_s_net,
      y => concat_y_net
    );

  const: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => const_op_net
    );

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 10,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 10,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x178,
      clk => clk_1_sg_x178,
      clr => '0',
      din => enable_y_net_x0,
      en => "1",
      dout => convert_addr_dout_net
    );

  lsw: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 10,
      y_width => 1
    )
    port map (
      x => convert_addr_dout_net,
      y(0) => lsw_y_net
    );

  manipulate: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => manipulate_op_net
    );

  msw: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 9,
      x_width => 10,
      y_width => 9
    )
    port map (
      x => convert_addr_dout_net,
      y => msw_y_net
    );

  mux: entity work.mux_4fe5face7f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => convert_addr_dout_net,
      d1 => concat_y_net,
      sel(0) => manipulate_op_net,
      y => mux_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/switch/10gbetxsnap/bram_lsb"

entity bram_lsb_entity_5338a180ab is
  port (
    addr: in std_logic_vector(9 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(31 downto 0); 
    we: in std_logic; 
    convert_addr_x0: out std_logic_vector(9 downto 0); 
    convert_din1_x0: out std_logic_vector(31 downto 0); 
    convert_we_x0: out std_logic
  );
end bram_lsb_entity_5338a180ab;

architecture structural of bram_lsb_entity_5338a180ab is
  signal ce_1_sg_x179: std_logic;
  signal clk_1_sg_x179: std_logic;
  signal convert_addr_dout_net_x0: std_logic_vector(9 downto 0);
  signal convert_din1_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert_din_dout_net: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x0: std_logic;
  signal enable_y_net_x1: std_logic_vector(9 downto 0);
  signal logical1_y_net_x0: std_logic;
  signal mux_y_net_x0: std_logic_vector(9 downto 0);
  signal slice5_y_net_x0: std_logic_vector(31 downto 0);

begin
  enable_y_net_x1 <= addr;
  ce_1_sg_x179 <= ce_1;
  clk_1_sg_x179 <= clk_1;
  slice5_y_net_x0 <= data_in;
  logical1_y_net_x0 <= we;
  convert_addr_x0 <= convert_addr_dout_net_x0;
  convert_din1_x0 <= convert_din1_dout_net_x0;
  convert_we_x0 <= convert_we_dout_net_x0;

  calc_add_55831640b4: entity work.calc_add_entity_55831640b4
    port map (
      ce_1 => ce_1_sg_x179,
      clk_1 => clk_1_sg_x179,
      in_x0 => enable_y_net_x1,
      out_x0 => mux_y_net_x0
    );

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 10,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 10,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x179,
      clk => clk_1_sg_x179,
      clr => '0',
      din => mux_y_net_x0,
      en => "1",
      dout => convert_addr_dout_net_x0
    );

  convert_din: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x179,
      clk => clk_1_sg_x179,
      clr => '0',
      din => slice5_y_net_x0,
      en => "1",
      dout => convert_din_dout_net
    );

  convert_din1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x179,
      clk => clk_1_sg_x179,
      clr => '0',
      din => convert_din_dout_net,
      en => "1",
      dout => convert_din1_dout_net_x0
    );

  convert_we: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x179,
      clk => clk_1_sg_x179,
      clr => '0',
      din(0) => logical1_y_net_x0,
      en => "1",
      dout(0) => convert_we_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/switch/10gbetxsnap/freeze_cntr"

entity freeze_cntr_entity_9e6f7163c6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    rst: in std_logic; 
    addr: out std_logic_vector(9 downto 0); 
    we: out std_logic
  );
end freeze_cntr_entity_9e6f7163c6;

architecture structural of freeze_cntr_entity_9e6f7163c6 is
  signal ce_1_sg_x184: std_logic;
  signal clk_1_sg_x184: std_logic;
  signal counter3_op_net: std_logic_vector(10 downto 0);
  signal enable1_y_net: std_logic;
  signal enable_y_net_x6: std_logic_vector(9 downto 0);
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net_x3: std_logic;
  signal logical5_y_net: std_logic;
  signal mux_y_net_x0: std_logic;
  signal register_q_net_x0: std_logic;

begin
  ce_1_sg_x184 <= ce_1;
  clk_1_sg_x184 <= clk_1;
  mux_y_net_x0 <= en;
  register_q_net_x0 <= rst;
  addr <= enable_y_net_x6;
  we <= logical1_y_net_x3;

  counter3: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_92cf1c8e61537910",
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x184,
      clk => clk_1_sg_x184,
      clr => '0',
      en(0) => logical5_y_net,
      rst(0) => register_q_net_x0,
      op => counter3_op_net
    );

  enable: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 9,
      x_width => 11,
      y_width => 10
    )
    port map (
      x => counter3_op_net,
      y => enable_y_net_x6
    );

  enable1: entity work.xlslice
    generic map (
      new_lsb => 10,
      new_msb => 10,
      x_width => 11,
      y_width => 1
    )
    port map (
      x => counter3_op_net,
      y(0) => enable1_y_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x184,
      clk => clk_1_sg_x184,
      clr => '0',
      ip(0) => register_q_net_x0,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x184,
      clk => clk_1_sg_x184,
      clr => '0',
      ip(0) => enable1_y_net,
      op(0) => inverter1_op_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => logical5_y_net,
      y(0) => logical1_y_net_x3
    );

  logical5: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => mux_y_net_x0,
      d1(0) => inverter1_op_net,
      y(0) => logical5_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/switch/10gbetxsnap"

entity x10gbetxsnap_entity_0c32b1f23a is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(63 downto 0); 
    eof_in: in std_logic; 
    ip_in: in std_logic_vector(31 downto 0); 
    led_tx: in std_logic; 
    link_up: in std_logic; 
    roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    tx_full: in std_logic; 
    tx_over: in std_logic; 
    valid_in: in std_logic; 
    addr: out std_logic_vector(31 downto 0); 
    bram_lsb: out std_logic_vector(9 downto 0); 
    bram_lsb_x0: out std_logic_vector(31 downto 0); 
    bram_lsb_x1: out std_logic; 
    bram_msb: out std_logic_vector(9 downto 0); 
    bram_msb_x0: out std_logic_vector(31 downto 0); 
    bram_msb_x1: out std_logic; 
    bram_oob: out std_logic_vector(9 downto 0); 
    bram_oob_x0: out std_logic_vector(31 downto 0); 
    bram_oob_x1: out std_logic
  );
end x10gbetxsnap_entity_0c32b1f23a;

architecture structural of x10gbetxsnap_entity_0c32b1f23a is
  signal ce_1_sg_x186: std_logic;
  signal clk_1_sg_x186: std_logic;
  signal concat_y_net: std_logic_vector(31 downto 0);
  signal constant1_op_net: std_logic;
  signal constant2_op_net: std_logic;
  signal constant_op_net: std_logic;
  signal convert1_dout_net: std_logic;
  signal convert2_dout_net: std_logic;
  signal convert3_dout_net: std_logic;
  signal convert4_dout_net: std_logic;
  signal convert_addr_dout_net_x3: std_logic_vector(9 downto 0);
  signal convert_addr_dout_net_x4: std_logic_vector(9 downto 0);
  signal convert_addr_dout_net_x5: std_logic_vector(9 downto 0);
  signal convert_din1_dout_net_x3: std_logic_vector(31 downto 0);
  signal convert_din1_dout_net_x4: std_logic_vector(31 downto 0);
  signal convert_din1_dout_net_x5: std_logic_vector(31 downto 0);
  signal convert_dout_net: std_logic;
  signal convert_dout_net_x1: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x3: std_logic;
  signal convert_we_dout_net_x4: std_logic;
  signal convert_we_dout_net_x5: std_logic;
  signal delay10_q_net: std_logic;
  signal delay11_q_net: std_logic_vector(63 downto 0);
  signal delay12_q_net: std_logic;
  signal delay13_q_net: std_logic;
  signal delay14_q_net: std_logic_vector(63 downto 0);
  signal delay15_q_net: std_logic;
  signal delay1_q_net: std_logic;
  signal delay2_q_net: std_logic;
  signal delay3_q_net: std_logic;
  signal delay4_q_net: std_logic;
  signal delay5_q_net: std_logic;
  signal delay6_q_net: std_logic_vector(63 downto 0);
  signal delay7_q_net: std_logic;
  signal delay8_q_net: std_logic_vector(26 downto 0);
  signal delay9_q_net_x0: std_logic_vector(31 downto 0);
  signal delay_q_net: std_logic_vector(31 downto 0);
  signal enable_y_net_x6: std_logic_vector(9 downto 0);
  signal inverter_op_net: std_logic;
  signal logical1_y_net: std_logic;
  signal logical1_y_net_x3: std_logic;
  signal logical2_y_net: std_logic;
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x2: std_logic;
  signal mux1_y_net: std_logic;
  signal mux_y_net_x0: std_logic;
  signal register1_q_net_x0: std_logic_vector(9 downto 0);
  signal register3_q_net_x2: std_logic;
  signal register_q_net_x0: std_logic;
  signal register_q_net_x2: std_logic_vector(63 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(63 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_gbe3_led_tx_net_x1: std_logic;
  signal roachf_1024_bao_switch_gbe3_led_up_net_x1: std_logic;
  signal roachf_1024_bao_switch_gbe3_tx_afull_net_x1: std_logic;
  signal roachf_1024_bao_switch_gbe3_tx_overflow_net_x1: std_logic;
  signal slice1_y_net: std_logic;
  signal slice2_y_net_x0: std_logic_vector(31 downto 0);
  signal slice2_y_net_x2: std_logic_vector(31 downto 0);
  signal slice3_y_net_x0: std_logic;
  signal slice4_y_net: std_logic;
  signal slice5_y_net_x0: std_logic_vector(31 downto 0);
  signal slice_y_net: std_logic_vector(26 downto 0);

begin
  ce_1_sg_x186 <= ce_1;
  clk_1_sg_x186 <= clk_1;
  register_q_net_x2 <= data_in;
  register3_q_net_x2 <= eof_in;
  slice2_y_net_x2 <= ip_in;
  roachf_1024_bao_switch_gbe3_led_tx_net_x1 <= led_tx;
  roachf_1024_bao_switch_gbe3_led_up_net_x1 <= link_up;
  roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out_net_x0 <= roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out;
  roachf_1024_bao_switch_gbe3_tx_afull_net_x1 <= tx_full;
  roachf_1024_bao_switch_gbe3_tx_overflow_net_x1 <= tx_over;
  logical_y_net_x2 <= valid_in;
  addr <= convert_dout_net_x1;
  bram_lsb <= convert_addr_dout_net_x3;
  bram_lsb_x0 <= convert_din1_dout_net_x3;
  bram_lsb_x1 <= convert_we_dout_net_x3;
  bram_msb <= convert_addr_dout_net_x4;
  bram_msb_x0 <= convert_din1_dout_net_x4;
  bram_msb_x1 <= convert_we_dout_net_x4;
  bram_oob <= convert_addr_dout_net_x5;
  bram_oob_x0 <= convert_din1_dout_net_x5;
  bram_oob_x1 <= convert_we_dout_net_x5;

  addr_8e2907ad88: entity work.addr_entity_8e2907ad88
    port map (
      ce_1 => ce_1_sg_x186,
      clk_1 => clk_1_sg_x186,
      reg_out => register1_q_net_x0,
      convert_x0 => convert_dout_net_x1
    );

  bram_lsb_5338a180ab: entity work.bram_lsb_entity_5338a180ab
    port map (
      addr => enable_y_net_x6,
      ce_1 => ce_1_sg_x186,
      clk_1 => clk_1_sg_x186,
      data_in => slice5_y_net_x0,
      we => logical1_y_net_x3,
      convert_addr_x0 => convert_addr_dout_net_x3,
      convert_din1_x0 => convert_din1_dout_net_x3,
      convert_we_x0 => convert_we_dout_net_x3
    );

  bram_msb_49bd0385b7: entity work.bram_lsb_entity_5338a180ab
    port map (
      addr => enable_y_net_x6,
      ce_1 => ce_1_sg_x186,
      clk_1 => clk_1_sg_x186,
      data_in => slice2_y_net_x0,
      we => logical1_y_net_x3,
      convert_addr_x0 => convert_addr_dout_net_x4,
      convert_din1_x0 => convert_din1_dout_net_x4,
      convert_we_x0 => convert_we_dout_net_x4
    );

  bram_oob_bf44e4faa7: entity work.bram_lsb_entity_5338a180ab
    port map (
      addr => enable_y_net_x6,
      ce_1 => ce_1_sg_x186,
      clk_1 => clk_1_sg_x186,
      data_in => delay9_q_net_x0,
      we => logical1_y_net_x3,
      convert_addr_x0 => convert_addr_dout_net_x5,
      convert_din1_x0 => convert_din1_dout_net_x5,
      convert_we_x0 => convert_we_dout_net_x5
    );

  concat: entity work.concat_6f0047a4a5
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => delay8_q_net,
      in1(0) => convert_dout_net,
      in2(0) => convert3_dout_net,
      in3(0) => convert4_dout_net,
      in4(0) => convert2_dout_net,
      in5(0) => convert1_dout_net,
      y => concat_y_net
    );

  constant1: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net
    );

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 2,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      clr => '0',
      din(0) => delay1_q_net,
      en => "1",
      dout(0) => convert_dout_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 2,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      clr => '0',
      din(0) => delay4_q_net,
      en => "1",
      dout(0) => convert1_dout_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 2,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      clr => '0',
      din(0) => delay5_q_net,
      en => "1",
      dout(0) => convert2_dout_net
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 2,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      clr => '0',
      din(0) => delay2_q_net,
      en => "1",
      dout(0) => convert3_dout_net
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 2,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      clr => '0',
      din(0) => delay3_q_net,
      en => "1",
      dout(0) => convert4_dout_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      d => slice2_y_net_x2,
      en => '1',
      rst => '1',
      q => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      d(0) => register3_q_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net
    );

  delay10: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      d(0) => delay13_q_net,
      en => '1',
      rst => '1',
      q(0) => delay10_q_net
    );

  delay11: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 64
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      d => delay14_q_net,
      en => '1',
      rst => '1',
      q => delay11_q_net
    );

  delay12: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      d(0) => logical1_y_net,
      en => '1',
      rst => '1',
      q(0) => delay12_q_net
    );

  delay13: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      d(0) => delay7_q_net,
      en => '1',
      rst => '1',
      q(0) => delay13_q_net
    );

  delay14: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 64
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      d => delay6_q_net,
      en => '1',
      rst => '1',
      q => delay14_q_net
    );

  delay15: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      d(0) => delay1_q_net,
      en => '1',
      rst => '1',
      q(0) => delay15_q_net
    );

  delay2: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      d(0) => roachf_1024_bao_switch_gbe3_led_up_net_x1,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net
    );

  delay3: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      d(0) => roachf_1024_bao_switch_gbe3_led_tx_net_x1,
      en => '1',
      rst => '1',
      q(0) => delay3_q_net
    );

  delay4: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      d(0) => roachf_1024_bao_switch_gbe3_tx_overflow_net_x1,
      en => '1',
      rst => '1',
      q(0) => delay4_q_net
    );

  delay5: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      d(0) => roachf_1024_bao_switch_gbe3_tx_afull_net_x1,
      en => '1',
      rst => '1',
      q(0) => delay5_q_net
    );

  delay6: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 64
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      d => register_q_net_x2,
      en => '1',
      rst => '1',
      q => delay6_q_net
    );

  delay7: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      d(0) => logical_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay7_q_net
    );

  delay8: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 27
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      d => slice_y_net,
      en => '1',
      rst => '1',
      q => delay8_q_net
    );

  delay9: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      d => concat_y_net,
      en => '1',
      rst => '1',
      q => delay9_q_net_x0
    );

  freeze_cntr_9e6f7163c6: entity work.freeze_cntr_entity_9e6f7163c6
    port map (
      ce_1 => ce_1_sg_x186,
      clk_1 => clk_1_sg_x186,
      en => mux_y_net_x0,
      rst => register_q_net_x0,
      addr => enable_y_net_x6,
      we => logical1_y_net_x3
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      clr => '0',
      ip(0) => logical_y_net_x0,
      op(0) => inverter_op_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay13_q_net,
      d1(0) => delay15_q_net,
      y(0) => logical1_y_net
    );

  logical2: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => mux1_y_net,
      d1(0) => inverter_op_net,
      y(0) => logical2_y_net
    );

  mux: entity work.mux_d99e59b6d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay10_q_net,
      d1(0) => constant_op_net,
      sel(0) => slice1_y_net,
      y(0) => mux_y_net_x0
    );

  mux1: entity work.mux_d99e59b6d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay12_q_net,
      d1(0) => constant1_op_net,
      sel(0) => slice4_y_net,
      y(0) => mux1_y_net
    );

  posedge_a779003cc1: entity work.posedge_entity_21f484bc47
    port map (
      ce_1 => ce_1_sg_x186,
      clk_1 => clk_1_sg_x186,
      in_x0 => slice3_y_net_x0,
      out_x0 => logical_y_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 10,
      init_value => b"0000000000"
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      d => enable_y_net_x6,
      en(0) => logical1_y_net_x3,
      rst(0) => logical_y_net_x0,
      q => register1_q_net_x0
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      d(0) => constant2_op_net,
      en(0) => logical_y_net_x0,
      rst(0) => logical2_y_net,
      q(0) => register_q_net_x0
    );

  reinterpret: entity work.reinterpret_9a13f6a2a0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => delay11_q_net,
      output_port => reinterpret_output_port_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 26,
      x_width => 32,
      y_width => 27
    )
    port map (
      x => delay_q_net,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out_net_x0,
      y(0) => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 32,
      new_msb => 63,
      x_width => 64,
      y_width => 32
    )
    port map (
      x => reinterpret_output_port_net,
      y => slice2_y_net_x0
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out_net_x0,
      y(0) => slice3_y_net_x0
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out_net_x0,
      y(0) => slice4_y_net
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 64,
      y_width => 32
    )
    port map (
      x => reinterpret_output_port_net,
      y => slice5_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/switch/gbe3"

entity gbe3_entity_284bc3277d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    rx_ack: in std_logic; 
    rx_overrun_ack: in std_logic; 
    tx_data: in std_logic_vector(63 downto 0); 
    tx_dest_ip: in std_logic_vector(31 downto 0); 
    tx_dest_port: in std_logic_vector(31 downto 0); 
    tx_end_of_frame: in std_logic; 
    tx_valid: in std_logic; 
    convert_rst_x0: out std_logic; 
    convert_rx_ack_x0: out std_logic; 
    convert_rx_overrun_ack_x0: out std_logic; 
    convert_tx_data_x0: out std_logic_vector(63 downto 0); 
    convert_tx_dest_ip_x0: out std_logic_vector(31 downto 0); 
    convert_tx_end_of_frame_x0: out std_logic; 
    convert_tx_port_x0: out std_logic_vector(15 downto 0); 
    convert_tx_valid_x0: out std_logic
  );
end gbe3_entity_284bc3277d;

architecture structural of gbe3_entity_284bc3277d is
  signal ce_1_sg_x187: std_logic;
  signal clk_1_sg_x187: std_logic;
  signal constant1_op_net_x0: std_logic;
  signal constant_op_net_x0: std_logic;
  signal convert_rst_dout_net_x0: std_logic;
  signal convert_rx_ack_dout_net_x0: std_logic;
  signal convert_rx_overrun_ack_dout_net_x0: std_logic;
  signal convert_tx_data_dout_net_x0: std_logic_vector(63 downto 0);
  signal convert_tx_dest_ip_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert_tx_end_of_frame_dout_net_x0: std_logic;
  signal convert_tx_port_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert_tx_valid_dout_net_x0: std_logic;
  signal delay5_q_net_x1: std_logic_vector(31 downto 0);
  signal logical_y_net_x3: std_logic;
  signal register3_q_net_x3: std_logic;
  signal register_q_net_x3: std_logic_vector(63 downto 0);
  signal slice2_y_net_x3: std_logic_vector(31 downto 0);
  signal slice5_y_net_x1: std_logic;

begin
  ce_1_sg_x187 <= ce_1;
  clk_1_sg_x187 <= clk_1;
  slice5_y_net_x1 <= rst;
  constant_op_net_x0 <= rx_ack;
  constant1_op_net_x0 <= rx_overrun_ack;
  register_q_net_x3 <= tx_data;
  slice2_y_net_x3 <= tx_dest_ip;
  delay5_q_net_x1 <= tx_dest_port;
  register3_q_net_x3 <= tx_end_of_frame;
  logical_y_net_x3 <= tx_valid;
  convert_rst_x0 <= convert_rst_dout_net_x0;
  convert_rx_ack_x0 <= convert_rx_ack_dout_net_x0;
  convert_rx_overrun_ack_x0 <= convert_rx_overrun_ack_dout_net_x0;
  convert_tx_data_x0 <= convert_tx_data_dout_net_x0;
  convert_tx_dest_ip_x0 <= convert_tx_dest_ip_dout_net_x0;
  convert_tx_end_of_frame_x0 <= convert_tx_end_of_frame_dout_net_x0;
  convert_tx_port_x0 <= convert_tx_port_dout_net_x0;
  convert_tx_valid_x0 <= convert_tx_valid_dout_net_x0;

  convert_rst: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x187,
      clk => clk_1_sg_x187,
      clr => '0',
      din(0) => slice5_y_net_x1,
      en => "1",
      dout(0) => convert_rst_dout_net_x0
    );

  convert_rx_ack: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x187,
      clk => clk_1_sg_x187,
      clr => '0',
      din(0) => constant_op_net_x0,
      en => "1",
      dout(0) => convert_rx_ack_dout_net_x0
    );

  convert_rx_overrun_ack: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x187,
      clk => clk_1_sg_x187,
      clr => '0',
      din(0) => constant1_op_net_x0,
      en => "1",
      dout(0) => convert_rx_overrun_ack_dout_net_x0
    );

  convert_tx_data: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 64,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 64,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x187,
      clk => clk_1_sg_x187,
      clr => '0',
      din => register_q_net_x3,
      en => "1",
      dout => convert_tx_data_dout_net_x0
    );

  convert_tx_dest_ip: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x187,
      clk => clk_1_sg_x187,
      clr => '0',
      din => slice2_y_net_x3,
      en => "1",
      dout => convert_tx_dest_ip_dout_net_x0
    );

  convert_tx_end_of_frame: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x187,
      clk => clk_1_sg_x187,
      clr => '0',
      din(0) => register3_q_net_x3,
      en => "1",
      dout(0) => convert_tx_end_of_frame_dout_net_x0
    );

  convert_tx_port: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x187,
      clk => clk_1_sg_x187,
      clr => '0',
      din => delay5_q_net_x1,
      en => "1",
      dout => convert_tx_port_dout_net_x0
    );

  convert_tx_valid: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x187,
      clk => clk_1_sg_x187,
      clr => '0',
      din(0) => logical_y_net_x3,
      en => "1",
      dout(0) => convert_tx_valid_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/switch/ip_generator"

entity ip_generator_entity_03b2fa9a07 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(63 downto 0); 
    eof_in: in std_logic; 
    header_valid_x0: in std_logic; 
    ip_base: in std_logic_vector(31 downto 0); 
    valid_in: in std_logic; 
    data_out: out std_logic_vector(63 downto 0); 
    eof: out std_logic; 
    ip: out std_logic_vector(31 downto 0); 
    valid_out_x1: out std_logic
  );
end ip_generator_entity_03b2fa9a07;

architecture structural of ip_generator_entity_03b2fa9a07 is
  signal addsub_s_net: std_logic_vector(32 downto 0);
  signal ce_1_sg_x188: std_logic;
  signal clk_1_sg_x188: std_logic;
  signal convert_dout_net: std_logic_vector(31 downto 0);
  signal delay3_q_net_x1: std_logic_vector(31 downto 0);
  signal header_valid_x1: std_logic;
  signal logical3_y_net_x0: std_logic;
  signal mux_y_net_x0: std_logic_vector(63 downto 0);
  signal register1_q_net: std_logic_vector(63 downto 0);
  signal register2_q_net_x0: std_logic;
  signal register3_q_net_x4: std_logic;
  signal register_q_net_x4: std_logic_vector(63 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(7 downto 0);
  signal slice1_y_net: std_logic_vector(7 downto 0);
  signal slice2_y_net_x4: std_logic_vector(31 downto 0);
  signal valid_out_x0: std_logic;

begin
  ce_1_sg_x188 <= ce_1;
  clk_1_sg_x188 <= clk_1;
  mux_y_net_x0 <= data_in;
  logical3_y_net_x0 <= eof_in;
  header_valid_x1 <= header_valid_x0;
  delay3_q_net_x1 <= ip_base;
  valid_out_x0 <= valid_in;
  data_out <= register_q_net_x4;
  eof <= register3_q_net_x4;
  ip <= slice2_y_net_x4;
  valid_out_x1 <= register2_q_net_x0;

  addsub: entity work.xladdsub
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 32,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 32,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 33,
      core_name0 => "addsb_11_0_e48e31d556a35f15",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 33,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 33
    )
    port map (
      a => delay3_q_net_x1,
      b => convert_dout_net,
      ce => ce_1_sg_x188,
      clk => clk_1_sg_x188,
      clr => '0',
      en => "1",
      s => addsub_s_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x188,
      clk => clk_1_sg_x188,
      clr => '0',
      din => reinterpret_output_port_net,
      en => "1",
      dout => convert_dout_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 64,
      init_value => b"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x188,
      clk => clk_1_sg_x188,
      d => mux_y_net_x0,
      en(0) => header_valid_x1,
      rst => "0",
      q => register1_q_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x188,
      clk => clk_1_sg_x188,
      d(0) => valid_out_x0,
      en => "1",
      rst => "0",
      q(0) => register2_q_net_x0
    );

  register3: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x188,
      clk => clk_1_sg_x188,
      d(0) => logical3_y_net_x0,
      en => "1",
      rst => "0",
      q(0) => register3_q_net_x4
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 64,
      init_value => b"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x188,
      clk => clk_1_sg_x188,
      d => mux_y_net_x0,
      en => "1",
      rst => "0",
      q => register_q_net_x4
    );

  reinterpret: entity work.reinterpret_f21e7f2ddf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice1_y_net,
      output_port => reinterpret_output_port_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 64,
      y_width => 8
    )
    port map (
      x => register1_q_net,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 33,
      y_width => 32
    )
    port map (
      x => addsub_s_net,
      y => slice2_y_net_x4
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/switch/packetiser1/edge1"

entity edge1_entity_213f3f63ba is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end edge1_entity_213f3f63ba;

architecture structural of edge1_entity_213f3f63ba is
  signal ce_1_sg_x189: std_logic;
  signal clk_1_sg_x189: std_logic;
  signal delay4_q_net: std_logic;
  signal logical3_y_net_x0: std_logic;
  signal slice8_y_net_x0: std_logic;

begin
  ce_1_sg_x189 <= ce_1;
  clk_1_sg_x189 <= clk_1;
  slice8_y_net_x0 <= in_x0;
  out_x0 <= logical3_y_net_x0;

  delay4: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x189,
      clk => clk_1_sg_x189,
      d(0) => slice8_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay4_q_net
    );

  logical3: entity work.logical_e77c53f8bd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay4_q_net,
      d1(0) => slice8_y_net_x0,
      y(0) => logical3_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/switch/packetiser1"

entity packetiser1_entity_8e5e7ec95a is
  port (
    ant_base: in std_logic_vector(31 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(31 downto 0); 
    data_in1: in std_logic_vector(31 downto 0); 
    mrst_in: in std_logic; 
    sync_in: in std_logic; 
    data_out_x0: out std_logic_vector(63 downto 0); 
    eof: out std_logic; 
    header_out: out std_logic; 
    valid_out: out std_logic
  );
end packetiser1_entity_8e5e7ec95a;

architecture structural of packetiser1_entity_8e5e7ec95a is
  signal ce_1_sg_x191: std_logic;
  signal clk_1_sg_x191: std_logic;
  signal cntvalue: std_logic_vector(60 downto 0);
  signal concat10_y_net: std_logic_vector(63 downto 0);
  signal constant_op_net: std_logic_vector(4 downto 0);
  signal convert4_dout_net: std_logic;
  signal data_out: std_logic_vector(63 downto 0);
  signal delay2_q_net_x1: std_logic_vector(31 downto 0);
  signal delay4_q_net: std_logic;
  signal delay5_q_net: std_logic_vector(2 downto 0);
  signal header: std_logic_vector(63 downto 0);
  signal header_valid_x2: std_logic;
  signal inverter1_op_net: std_logic;
  signal logical1_y_net: std_logic;
  signal logical3_y_net_x0: std_logic;
  signal logical3_y_net_x1: std_logic;
  signal logical3_y_net_x3: std_logic;
  signal mcnt: std_logic_vector(47 downto 0);
  signal mux_y_net_x3: std_logic;
  signal mux_y_net_x4: std_logic_vector(63 downto 0);
  signal register0_q_net_x2: std_logic;
  signal register0_q_net_x3: std_logic_vector(31 downto 0);
  signal register0_q_net_x4: std_logic_vector(31 downto 0);
  signal slice5_y_net: std_logic_vector(7 downto 0);
  signal slice7_y_net: std_logic_vector(47 downto 0);
  signal slice8_y_net_x0: std_logic;
  signal slice9_y_net: std_logic;
  signal start: std_logic;
  signal valid_out_x1: std_logic;
  signal validslice: std_logic;
  signal xid: std_logic_vector(2 downto 0);

begin
  delay2_q_net_x1 <= ant_base;
  ce_1_sg_x191 <= ce_1;
  clk_1_sg_x191 <= clk_1;
  register0_q_net_x4 <= data_in;
  register0_q_net_x3 <= data_in1;
  mux_y_net_x3 <= mrst_in;
  register0_q_net_x2 <= sync_in;
  data_out_x0 <= mux_y_net_x4;
  eof <= logical3_y_net_x3;
  header_out <= header_valid_x2;
  valid_out <= valid_out_x1;

  clk_cnt1: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_56cea93c32f2afe9",
      op_arith => xlUnsigned,
      op_width => 61
    )
    port map (
      ce => ce_1_sg_x191,
      clk => clk_1_sg_x191,
      clr => '0',
      en => "1",
      rst(0) => start,
      op => cntvalue
    );

  concat1: entity work.concat_94bc27a9d6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => mcnt,
      in1 => slice5_y_net,
      in2 => constant_op_net,
      in3 => delay5_q_net,
      y => header
    );

  concat10: entity work.concat_62c4475a80
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => register0_q_net_x3,
      in1 => register0_q_net_x4,
      y => concat10_y_net
    );

  constant_x0: entity work.constant_fe72737ca0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x191,
      clk => clk_1_sg_x191,
      clr => '0',
      din(0) => header_valid_x2,
      en => "1",
      dout(0) => convert4_dout_net
    );

  delay1: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x191,
      clk => clk_1_sg_x191,
      clr => '0',
      d(0) => logical3_y_net_x3,
      q(0) => header_valid_x2
    );

  delay2: entity work.delay_e2d047c154
    port map (
      ce => ce_1_sg_x191,
      clk => clk_1_sg_x191,
      clr => '0',
      d => concat10_y_net,
      q => data_out
    );

  delay3: entity work.delay_d8eaaced1c
    port map (
      ce => ce_1_sg_x191,
      clk => clk_1_sg_x191,
      clr => '0',
      d => slice7_y_net,
      q => mcnt
    );

  delay4: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x191,
      clk => clk_1_sg_x191,
      clr => '0',
      d(0) => logical1_y_net,
      q(0) => delay4_q_net
    );

  delay5: entity work.delay_54d5af2115
    port map (
      ce => ce_1_sg_x191,
      clk => clk_1_sg_x191,
      clr => '0',
      d => xid,
      q => delay5_q_net
    );

  edge1_213f3f63ba: entity work.edge1_entity_213f3f63ba
    port map (
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      in_x0 => slice8_y_net_x0,
      out_x0 => logical3_y_net_x0
    );

  edge2_ebc1be084c: entity work.edge1_entity_213f3f63ba
    port map (
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      in_x0 => logical3_y_net_x1,
      out_x0 => logical3_y_net_x3
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x191,
      clk => clk_1_sg_x191,
      clr => '0',
      ip(0) => logical3_y_net_x0,
      op(0) => validslice
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x191,
      clk => clk_1_sg_x191,
      clr => '0',
      ip(0) => start,
      op(0) => inverter1_op_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => validslice,
      d1(0) => inverter1_op_net,
      y(0) => logical1_y_net
    );

  logical2: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => header_valid_x2,
      d1(0) => delay4_q_net,
      y(0) => valid_out_x1
    );

  logical3: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => slice9_y_net,
      d1(0) => start,
      y(0) => logical3_y_net_x1
    );

  mux: entity work.mux_dc8b84fd59
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => data_out,
      d1 => header,
      sel(0) => convert4_dout_net,
      y => mux_y_net_x4
    );

  register2: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x191,
      clk => clk_1_sg_x191,
      d(0) => mux_y_net_x3,
      en(0) => mux_y_net_x3,
      rst(0) => register0_q_net_x2,
      q(0) => start
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => delay2_q_net_x1,
      y => slice5_y_net
    );

  slice6: entity work.xlslice
    generic map (
      new_lsb => 10,
      new_msb => 12,
      x_width => 61,
      y_width => 3
    )
    port map (
      x => cntvalue,
      y => xid
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 13,
      new_msb => 60,
      x_width => 61,
      y_width => 48
    )
    port map (
      x => cntvalue,
      y => slice7_y_net
    );

  slice8: entity work.xlslice
    generic map (
      new_lsb => 6,
      new_msb => 6,
      x_width => 61,
      y_width => 1
    )
    port map (
      x => cntvalue,
      y(0) => slice8_y_net_x0
    );

  slice9: entity work.xlslice
    generic map (
      new_lsb => 10,
      new_msb => 10,
      x_width => 61,
      y_width => 1
    )
    port map (
      x => cntvalue,
      y(0) => slice9_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/switch"

entity switch_entity_e19760fbab is
  port (
    ant1_pol12_reorder: in std_logic_vector(31 downto 0); 
    ant2_pol12_reorder: in std_logic_vector(31 downto 0); 
    ant_base_offset: in std_logic_vector(31 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    gbe_sw_disable: in std_logic; 
    gbe_sw_led_tx: in std_logic; 
    gbe_sw_led_up: in std_logic; 
    gbe_sw_rst: in std_logic; 
    gbe_sw_tx_afull: in std_logic; 
    gbe_sw_tx_oflow: in std_logic; 
    ip_base: in std_logic_vector(31 downto 0); 
    mrst: in std_logic; 
    port_x0: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    sync_reorder: in std_logic; 
    gbe3: out std_logic; 
    gbe3_x0: out std_logic; 
    gbe3_x1: out std_logic; 
    gbe3_x2: out std_logic_vector(63 downto 0); 
    gbe3_x3: out std_logic_vector(31 downto 0); 
    gbe3_x4: out std_logic; 
    gbe3_x5: out std_logic_vector(15 downto 0); 
    gbe3_x6: out std_logic; 
    gbe_sw_tx_data: out std_logic_vector(63 downto 0); 
    gbe_sw_tx_eof: out std_logic; 
    gbe_sw_tx_ip: out std_logic_vector(31 downto 0); 
    gbe_sw_valid_tx: out std_logic; 
    x10gbetxsnap: out std_logic_vector(31 downto 0); 
    x10gbetxsnap_x0: out std_logic_vector(9 downto 0); 
    x10gbetxsnap_x1: out std_logic_vector(31 downto 0); 
    x10gbetxsnap_x2: out std_logic; 
    x10gbetxsnap_x3: out std_logic_vector(9 downto 0); 
    x10gbetxsnap_x4: out std_logic_vector(31 downto 0); 
    x10gbetxsnap_x5: out std_logic; 
    x10gbetxsnap_x6: out std_logic_vector(9 downto 0); 
    x10gbetxsnap_x7: out std_logic_vector(31 downto 0); 
    x10gbetxsnap_x8: out std_logic
  );
end switch_entity_e19760fbab;

architecture structural of switch_entity_e19760fbab is
  signal ce_1_sg_x192: std_logic;
  signal clk_1_sg_x192: std_logic;
  signal constant1_op_net_x0: std_logic;
  signal constant_op_net_x0: std_logic;
  signal convert_addr_dout_net_x6: std_logic_vector(9 downto 0);
  signal convert_addr_dout_net_x7: std_logic_vector(9 downto 0);
  signal convert_addr_dout_net_x8: std_logic_vector(9 downto 0);
  signal convert_din1_dout_net_x6: std_logic_vector(31 downto 0);
  signal convert_din1_dout_net_x7: std_logic_vector(31 downto 0);
  signal convert_din1_dout_net_x8: std_logic_vector(31 downto 0);
  signal convert_dout_net_x2: std_logic_vector(31 downto 0);
  signal convert_rst_dout_net_x1: std_logic;
  signal convert_rx_ack_dout_net_x1: std_logic;
  signal convert_rx_overrun_ack_dout_net_x1: std_logic;
  signal convert_tx_data_dout_net_x1: std_logic_vector(63 downto 0);
  signal convert_tx_dest_ip_dout_net_x1: std_logic_vector(31 downto 0);
  signal convert_tx_end_of_frame_dout_net_x1: std_logic;
  signal convert_tx_port_dout_net_x1: std_logic_vector(15 downto 0);
  signal convert_tx_valid_dout_net_x1: std_logic;
  signal convert_we_dout_net_x6: std_logic;
  signal convert_we_dout_net_x7: std_logic;
  signal convert_we_dout_net_x8: std_logic;
  signal delay2_q_net_x2: std_logic_vector(31 downto 0);
  signal delay3_q_net_x2: std_logic_vector(31 downto 0);
  signal delay5_q_net_x2: std_logic_vector(31 downto 0);
  signal header_valid_x2: std_logic;
  signal inverter_op_net: std_logic;
  signal logical3_y_net_x3: std_logic;
  signal logical_y_net_x4: std_logic;
  signal mux_y_net_x4: std_logic_vector(63 downto 0);
  signal mux_y_net_x5: std_logic;
  signal register0_q_net_x5: std_logic;
  signal register0_q_net_x6: std_logic_vector(31 downto 0);
  signal register0_q_net_x7: std_logic_vector(31 downto 0);
  signal register2_q_net_x0: std_logic;
  signal register3_q_net_x5: std_logic;
  signal register_q_net: std_logic;
  signal register_q_net_x5: std_logic_vector(63 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_gbe3_led_tx_net_x2: std_logic;
  signal roachf_1024_bao_switch_gbe3_led_up_net_x2: std_logic;
  signal roachf_1024_bao_switch_gbe3_tx_afull_net_x2: std_logic;
  signal roachf_1024_bao_switch_gbe3_tx_overflow_net_x2: std_logic;
  signal slice11_y_net_x1: std_logic;
  signal slice2_y_net_x5: std_logic_vector(31 downto 0);
  signal slice5_y_net_x2: std_logic;
  signal valid_out_x1: std_logic;

begin
  register0_q_net_x7 <= ant1_pol12_reorder;
  register0_q_net_x6 <= ant2_pol12_reorder;
  delay2_q_net_x2 <= ant_base_offset;
  ce_1_sg_x192 <= ce_1;
  clk_1_sg_x192 <= clk_1;
  slice11_y_net_x1 <= gbe_sw_disable;
  roachf_1024_bao_switch_gbe3_led_tx_net_x2 <= gbe_sw_led_tx;
  roachf_1024_bao_switch_gbe3_led_up_net_x2 <= gbe_sw_led_up;
  slice5_y_net_x2 <= gbe_sw_rst;
  roachf_1024_bao_switch_gbe3_tx_afull_net_x2 <= gbe_sw_tx_afull;
  roachf_1024_bao_switch_gbe3_tx_overflow_net_x2 <= gbe_sw_tx_oflow;
  delay3_q_net_x2 <= ip_base;
  mux_y_net_x5 <= mrst;
  delay5_q_net_x2 <= port_x0;
  roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out_net_x1 <= roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out;
  register0_q_net_x5 <= sync_reorder;
  gbe3 <= convert_rst_dout_net_x1;
  gbe3_x0 <= convert_rx_ack_dout_net_x1;
  gbe3_x1 <= convert_rx_overrun_ack_dout_net_x1;
  gbe3_x2 <= convert_tx_data_dout_net_x1;
  gbe3_x3 <= convert_tx_dest_ip_dout_net_x1;
  gbe3_x4 <= convert_tx_end_of_frame_dout_net_x1;
  gbe3_x5 <= convert_tx_port_dout_net_x1;
  gbe3_x6 <= convert_tx_valid_dout_net_x1;
  gbe_sw_tx_data <= register_q_net_x5;
  gbe_sw_tx_eof <= register3_q_net_x5;
  gbe_sw_tx_ip <= slice2_y_net_x5;
  gbe_sw_valid_tx <= logical_y_net_x4;
  x10gbetxsnap <= convert_dout_net_x2;
  x10gbetxsnap_x0 <= convert_addr_dout_net_x6;
  x10gbetxsnap_x1 <= convert_din1_dout_net_x6;
  x10gbetxsnap_x2 <= convert_we_dout_net_x6;
  x10gbetxsnap_x3 <= convert_addr_dout_net_x7;
  x10gbetxsnap_x4 <= convert_din1_dout_net_x7;
  x10gbetxsnap_x5 <= convert_we_dout_net_x7;
  x10gbetxsnap_x6 <= convert_addr_dout_net_x8;
  x10gbetxsnap_x7 <= convert_din1_dout_net_x8;
  x10gbetxsnap_x8 <= convert_we_dout_net_x8;

  constant1: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net_x0
    );

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net_x0
    );

  gbe3_284bc3277d: entity work.gbe3_entity_284bc3277d
    port map (
      ce_1 => ce_1_sg_x192,
      clk_1 => clk_1_sg_x192,
      rst => slice5_y_net_x2,
      rx_ack => constant_op_net_x0,
      rx_overrun_ack => constant1_op_net_x0,
      tx_data => register_q_net_x5,
      tx_dest_ip => slice2_y_net_x5,
      tx_dest_port => delay5_q_net_x2,
      tx_end_of_frame => register3_q_net_x5,
      tx_valid => logical_y_net_x4,
      convert_rst_x0 => convert_rst_dout_net_x1,
      convert_rx_ack_x0 => convert_rx_ack_dout_net_x1,
      convert_rx_overrun_ack_x0 => convert_rx_overrun_ack_dout_net_x1,
      convert_tx_data_x0 => convert_tx_data_dout_net_x1,
      convert_tx_dest_ip_x0 => convert_tx_dest_ip_dout_net_x1,
      convert_tx_end_of_frame_x0 => convert_tx_end_of_frame_dout_net_x1,
      convert_tx_port_x0 => convert_tx_port_dout_net_x1,
      convert_tx_valid_x0 => convert_tx_valid_dout_net_x1
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x192,
      clk => clk_1_sg_x192,
      clr => '0',
      ip(0) => slice11_y_net_x1,
      op(0) => inverter_op_net
    );

  ip_generator_03b2fa9a07: entity work.ip_generator_entity_03b2fa9a07
    port map (
      ce_1 => ce_1_sg_x192,
      clk_1 => clk_1_sg_x192,
      data_in => mux_y_net_x4,
      eof_in => logical3_y_net_x3,
      header_valid_x0 => header_valid_x2,
      ip_base => delay3_q_net_x2,
      valid_in => valid_out_x1,
      data_out => register_q_net_x5,
      eof => register3_q_net_x5,
      ip => slice2_y_net_x5,
      valid_out_x1 => register2_q_net_x0
    );

  logical: entity work.logical_954ee29728
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => register_q_net,
      d2(0) => register2_q_net_x0,
      y(0) => logical_y_net_x4
    );

  packetiser1_8e5e7ec95a: entity work.packetiser1_entity_8e5e7ec95a
    port map (
      ant_base => delay2_q_net_x2,
      ce_1 => ce_1_sg_x192,
      clk_1 => clk_1_sg_x192,
      data_in => register0_q_net_x7,
      data_in1 => register0_q_net_x6,
      mrst_in => mux_y_net_x5,
      sync_in => register0_q_net_x5,
      data_out_x0 => mux_y_net_x4,
      eof => logical3_y_net_x3,
      header_out => header_valid_x2,
      valid_out => valid_out_x1
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x192,
      clk => clk_1_sg_x192,
      d(0) => register3_q_net_x5,
      en(0) => register3_q_net_x5,
      rst(0) => slice11_y_net_x1,
      q(0) => register_q_net
    );

  x10gbetxsnap_0c32b1f23a: entity work.x10gbetxsnap_entity_0c32b1f23a
    port map (
      ce_1 => ce_1_sg_x192,
      clk_1 => clk_1_sg_x192,
      data_in => register_q_net_x5,
      eof_in => register3_q_net_x5,
      ip_in => slice2_y_net_x5,
      led_tx => roachf_1024_bao_switch_gbe3_led_tx_net_x2,
      link_up => roachf_1024_bao_switch_gbe3_led_up_net_x2,
      roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out => roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out_net_x1,
      tx_full => roachf_1024_bao_switch_gbe3_tx_afull_net_x2,
      tx_over => roachf_1024_bao_switch_gbe3_tx_overflow_net_x2,
      valid_in => logical_y_net_x4,
      addr => convert_dout_net_x2,
      bram_lsb => convert_addr_dout_net_x6,
      bram_lsb_x0 => convert_din1_dout_net_x6,
      bram_lsb_x1 => convert_we_dout_net_x6,
      bram_msb => convert_addr_dout_net_x7,
      bram_msb_x0 => convert_din1_dout_net_x7,
      bram_msb_x1 => convert_we_dout_net_x7,
      bram_oob => convert_addr_dout_net_x8,
      bram_oob_x0 => convert_din1_dout_net_x8,
      bram_oob_x1 => convert_we_dout_net_x8
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/transpose/Delay5"

entity delay5_entity_65262209bb is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic_vector(31 downto 0); 
    q: out std_logic_vector(31 downto 0)
  );
end delay5_entity_65262209bb;

architecture structural of delay5_entity_65262209bb is
  signal ce_1_sg_x196: std_logic;
  signal clk_1_sg_x196: std_logic;
  signal register0_q_net_x7: std_logic_vector(31 downto 0);
  signal single_port_ram_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x196 <= ce_1;
  clk_1_sg_x196 <= clk_1;
  single_port_ram_data_out_net_x0 <= d;
  q <= register0_q_net_x7;

  register0: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x196,
      clk => clk_1_sg_x196,
      d => single_port_ram_data_out_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net_x7
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/transpose/qdr_reorder/qdr"

entity qdr_entity_46e41fe4d7 is
  port (
    address: in std_logic_vector(12 downto 0); 
    be: in std_logic_vector(3 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(31 downto 0); 
    rd_en: in std_logic; 
    roachf_1024_bao_transpose_qdr_reorder_qdr_data_out: in std_logic_vector(35 downto 0); 
    wr_en: in std_logic; 
    convert_address_x0: out std_logic_vector(31 downto 0); 
    convert_be_x0: out std_logic_vector(3 downto 0); 
    convert_rd_en_x0: out std_logic; 
    convert_wr_en_x0: out std_logic; 
    data_out: out std_logic_vector(35 downto 0); 
    reinterpret_data_in_x0: out std_logic_vector(35 downto 0)
  );
end qdr_entity_46e41fe4d7;

architecture structural of qdr_entity_46e41fe4d7 is
  signal add_x0: std_logic_vector(12 downto 0);
  signal bram0_data_out_net_x0: std_logic_vector(31 downto 0);
  signal ce_1_sg_x198: std_logic;
  signal clk_1_sg_x198: std_logic;
  signal constant_op_net_x0: std_logic_vector(3 downto 0);
  signal convert_address_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert_be_dout_net_x0: std_logic_vector(3 downto 0);
  signal convert_data_in1_dout_net: std_logic_vector(35 downto 0);
  signal convert_data_in_dout_net: std_logic_vector(35 downto 0);
  signal convert_rd_en_dout_net_x0: std_logic;
  signal convert_wr_en_dout_net_x0: std_logic;
  signal di_cat1_y_net_x0: std_logic_vector(35 downto 0);
  signal di_cat_y_net: std_logic_vector(35 downto 0);
  signal force_data_out_output_port_net: std_logic_vector(35 downto 0);
  signal ibyte0_y_net: std_logic_vector(7 downto 0);
  signal ibyte1_y_net: std_logic_vector(7 downto 0);
  signal ibyte2_y_net: std_logic_vector(7 downto 0);
  signal ibyte3_y_net: std_logic_vector(7 downto 0);
  signal ipar0_y_net: std_logic;
  signal ipar1_y_net: std_logic;
  signal ipar2_y_net: std_logic;
  signal ipar3_y_net: std_logic;
  signal obyte0_y_net: std_logic_vector(7 downto 0);
  signal obyte1_y_net: std_logic_vector(7 downto 0);
  signal obyte2_y_net: std_logic_vector(7 downto 0);
  signal obyte3_y_net: std_logic_vector(7 downto 0);
  signal opar0_y_net: std_logic;
  signal opar1_y_net: std_logic;
  signal opar2_y_net: std_logic;
  signal opar3_y_net: std_logic;
  signal read_x0: std_logic;
  signal reinterpret_data_in_output_port_net_x0: std_logic_vector(35 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_data_out_net_x0: std_logic_vector(35 downto 0);
  signal write_x0: std_logic;

begin
  add_x0 <= address;
  constant_op_net_x0 <= be;
  ce_1_sg_x198 <= ce_1;
  clk_1_sg_x198 <= clk_1;
  bram0_data_out_net_x0 <= data_in;
  read_x0 <= rd_en;
  roachf_1024_bao_transpose_qdr_reorder_qdr_data_out_net_x0 <= roachf_1024_bao_transpose_qdr_reorder_qdr_data_out;
  write_x0 <= wr_en;
  convert_address_x0 <= convert_address_dout_net_x0;
  convert_be_x0 <= convert_be_dout_net_x0;
  convert_rd_en_x0 <= convert_rd_en_dout_net_x0;
  convert_wr_en_x0 <= convert_wr_en_dout_net_x0;
  data_out <= di_cat1_y_net_x0;
  reinterpret_data_in_x0 <= reinterpret_data_in_output_port_net_x0;

  convert_address: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 13,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x198,
      clk => clk_1_sg_x198,
      clr => '0',
      din => add_x0,
      en => "1",
      dout => convert_address_dout_net_x0
    );

  convert_be: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 4,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 4,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x198,
      clk => clk_1_sg_x198,
      clr => '0',
      din => constant_op_net_x0,
      en => "1",
      dout => convert_be_dout_net_x0
    );

  convert_data_in: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 36,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x198,
      clk => clk_1_sg_x198,
      clr => '0',
      din => bram0_data_out_net_x0,
      en => "1",
      dout => convert_data_in_dout_net
    );

  convert_data_in1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 36,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 36,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x198,
      clk => clk_1_sg_x198,
      clr => '0',
      din => di_cat_y_net,
      en => "1",
      dout => convert_data_in1_dout_net
    );

  convert_rd_en: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x198,
      clk => clk_1_sg_x198,
      clr => '0',
      din(0) => read_x0,
      en => "1",
      dout(0) => convert_rd_en_dout_net_x0
    );

  convert_wr_en: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x198,
      clk => clk_1_sg_x198,
      clr => '0',
      din(0) => write_x0,
      en => "1",
      dout(0) => convert_wr_en_dout_net_x0
    );

  di_cat: entity work.concat_a9b7ee2019
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => ipar3_y_net,
      in1 => ibyte3_y_net,
      in2(0) => ipar2_y_net,
      in3 => ibyte2_y_net,
      in4(0) => ipar1_y_net,
      in5 => ibyte1_y_net,
      in6(0) => ipar0_y_net,
      in7 => ibyte0_y_net,
      y => di_cat_y_net
    );

  di_cat1: entity work.concat_1e5f8fbcb6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => opar3_y_net,
      in1(0) => opar2_y_net,
      in2(0) => opar1_y_net,
      in3(0) => opar0_y_net,
      in4 => obyte3_y_net,
      in5 => obyte2_y_net,
      in6 => obyte1_y_net,
      in7 => obyte0_y_net,
      y => di_cat1_y_net_x0
    );

  force_data_out: entity work.reinterpret_86b044698f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => roachf_1024_bao_transpose_qdr_reorder_qdr_data_out_net_x0,
      output_port => force_data_out_output_port_net
    );

  ibyte0: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 36,
      y_width => 8
    )
    port map (
      x => convert_data_in_dout_net,
      y => ibyte0_y_net
    );

  ibyte1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 36,
      y_width => 8
    )
    port map (
      x => convert_data_in_dout_net,
      y => ibyte1_y_net
    );

  ibyte2: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 23,
      x_width => 36,
      y_width => 8
    )
    port map (
      x => convert_data_in_dout_net,
      y => ibyte2_y_net
    );

  ibyte3: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 31,
      x_width => 36,
      y_width => 8
    )
    port map (
      x => convert_data_in_dout_net,
      y => ibyte3_y_net
    );

  ipar0: entity work.xlslice
    generic map (
      new_lsb => 32,
      new_msb => 32,
      x_width => 36,
      y_width => 1
    )
    port map (
      x => convert_data_in_dout_net,
      y(0) => ipar0_y_net
    );

  ipar1: entity work.xlslice
    generic map (
      new_lsb => 33,
      new_msb => 33,
      x_width => 36,
      y_width => 1
    )
    port map (
      x => convert_data_in_dout_net,
      y(0) => ipar1_y_net
    );

  ipar2: entity work.xlslice
    generic map (
      new_lsb => 34,
      new_msb => 34,
      x_width => 36,
      y_width => 1
    )
    port map (
      x => convert_data_in_dout_net,
      y(0) => ipar2_y_net
    );

  ipar3: entity work.xlslice
    generic map (
      new_lsb => 35,
      new_msb => 35,
      x_width => 36,
      y_width => 1
    )
    port map (
      x => convert_data_in_dout_net,
      y(0) => ipar3_y_net
    );

  obyte0: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 36,
      y_width => 8
    )
    port map (
      x => force_data_out_output_port_net,
      y => obyte0_y_net
    );

  obyte1: entity work.xlslice
    generic map (
      new_lsb => 9,
      new_msb => 16,
      x_width => 36,
      y_width => 8
    )
    port map (
      x => force_data_out_output_port_net,
      y => obyte1_y_net
    );

  obyte2: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 25,
      x_width => 36,
      y_width => 8
    )
    port map (
      x => force_data_out_output_port_net,
      y => obyte2_y_net
    );

  obyte3: entity work.xlslice
    generic map (
      new_lsb => 27,
      new_msb => 34,
      x_width => 36,
      y_width => 8
    )
    port map (
      x => force_data_out_output_port_net,
      y => obyte3_y_net
    );

  opar0: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 8,
      x_width => 36,
      y_width => 1
    )
    port map (
      x => force_data_out_output_port_net,
      y(0) => opar0_y_net
    );

  opar1: entity work.xlslice
    generic map (
      new_lsb => 17,
      new_msb => 17,
      x_width => 36,
      y_width => 1
    )
    port map (
      x => force_data_out_output_port_net,
      y(0) => opar1_y_net
    );

  opar2: entity work.xlslice
    generic map (
      new_lsb => 26,
      new_msb => 26,
      x_width => 36,
      y_width => 1
    )
    port map (
      x => force_data_out_output_port_net,
      y(0) => opar2_y_net
    );

  opar3: entity work.xlslice
    generic map (
      new_lsb => 35,
      new_msb => 35,
      x_width => 36,
      y_width => 1
    )
    port map (
      x => force_data_out_output_port_net,
      y(0) => opar3_y_net
    );

  reinterpret_data_in: entity work.reinterpret_86b044698f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert_data_in1_dout_net,
      output_port => reinterpret_data_in_output_port_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/transpose/qdr_reorder/reorder/delay_din_bram0"

entity delay_din_bram0_entity_e39d1fc4a6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(31 downto 0); 
    en: in std_logic; 
    dout: out std_logic_vector(31 downto 0)
  );
end delay_din_bram0_entity_e39d1fc4a6;

architecture structural of delay_din_bram0_entity_e39d1fc4a6 is
  signal ce_1_sg_x199: std_logic;
  signal clk_1_sg_x199: std_logic;
  signal counter_op_net: std_logic_vector(1 downto 0);
  signal delay_din0_q_net_x0: std_logic_vector(31 downto 0);
  signal delay_we_q_net_x0: std_logic;
  signal single_port_ram_data_out_net_x1: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x199 <= ce_1;
  clk_1_sg_x199 <= clk_1;
  delay_din0_q_net_x0 <= din;
  delay_we_q_net_x0 <= en;
  dout <= single_port_ram_data_out_net_x1;

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 3,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_38c9cb0851a20d91",
      count_limited => 0,
      op_arith => xlUnsigned,
      op_width => 2
    )
    port map (
      ce => ce_1_sg_x199,
      clk => clk_1_sg_x199,
      clr => '0',
      en(0) => delay_we_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  single_port_ram: entity work.xlspram_dist
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 32,
      core_name0 => "dmg_62_29a7fd57730c35e5",
      latency => 4,
      write_mode => 2
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x199,
      clk => clk_1_sg_x199,
      data_in => delay_din0_q_net_x0,
      en => "1",
      we(0) => delay_we_q_net_x0,
      data_out => single_port_ram_data_out_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/transpose/qdr_reorder/reorder/sync_delay_en"

entity sync_delay_en_entity_be14bb2386 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_en_entity_be14bb2386;

architecture structural of sync_delay_en_entity_be14bb2386 is
  signal ce_1_sg_x200: std_logic;
  signal clk_1_sg_x200: std_logic;
  signal constant1_op_net: std_logic_vector(2 downto 0);
  signal constant2_op_net: std_logic_vector(2 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(2 downto 0);
  signal counter_op_net: std_logic_vector(2 downto 0);
  signal logical1_y_net: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x0: std_logic;
  signal or_y_net_x0: std_logic;
  signal pre_sync_delay_q_net_x0: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x200 <= ce_1;
  clk_1_sg_x200 <= clk_1;
  or_y_net_x0 <= en;
  pre_sync_delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x0;

  constant1: entity work.constant_822933f89b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_469094441c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  constant_x0: entity work.constant_a1c496ea88
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_e9eaaa5672e4be4d",
      op_arith => xlUnsigned,
      op_width => 3
    )
    port map (
      ce => ce_1_sg_x200,
      clk => clk_1_sg_x200,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical1_y_net,
      load(0) => pre_sync_delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => pre_sync_delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net,
      d1(0) => or_y_net_x0,
      y(0) => logical1_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => pre_sync_delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x0
    );

  relational: entity work.relational_8fc7f5539b
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_47b317dab6
    port map (
      a => counter_op_net,
      b => constant1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/transpose/qdr_reorder/reorder"

entity reorder_entity_6581cc8be0 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din0: in std_logic_vector(31 downto 0); 
    en: in std_logic; 
    sync: in std_logic; 
    dout0: out std_logic_vector(31 downto 0); 
    sync_out: out std_logic
  );
end reorder_entity_6581cc8be0;

architecture structural of reorder_entity_6581cc8be0 is
  signal ce_1_sg_x201: std_logic;
  signal clk_1_sg_x201: std_logic;
  signal constant1_op_net_x0: std_logic;
  signal delay_din0_q_net_x0: std_logic_vector(31 downto 0);
  signal delay_we_q_net_x0: std_logic;
  signal mux_y_net_x0: std_logic;
  signal mux_y_net_x1: std_logic;
  signal or_y_net_x0: std_logic;
  signal post_sync_delay_q_net_x1: std_logic;
  signal pre_sync_delay_q_net_x0: std_logic;
  signal single_port_ram_data_out_net_x2: std_logic_vector(31 downto 0);
  signal slice1_y_net_x0: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x201 <= ce_1;
  clk_1_sg_x201 <= clk_1;
  slice1_y_net_x0 <= din0;
  constant1_op_net_x0 <= en;
  mux_y_net_x1 <= sync;
  dout0 <= single_port_ram_data_out_net_x2;
  sync_out <= post_sync_delay_q_net_x1;

  delay_din0: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x201,
      clk => clk_1_sg_x201,
      d => slice1_y_net_x0,
      en => '1',
      rst => '1',
      q => delay_din0_q_net_x0
    );

  delay_din_bram0_e39d1fc4a6: entity work.delay_din_bram0_entity_e39d1fc4a6
    port map (
      ce_1 => ce_1_sg_x201,
      clk_1 => clk_1_sg_x201,
      din => delay_din0_q_net_x0,
      en => delay_we_q_net_x0,
      dout => single_port_ram_data_out_net_x2
    );

  delay_we: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x201,
      clk => clk_1_sg_x201,
      d(0) => constant1_op_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_we_q_net_x0
    );

  or_x0: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => pre_sync_delay_q_net_x0,
      d1(0) => delay_we_q_net_x0,
      y(0) => or_y_net_x0
    );

  post_sync_delay: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x201,
      clk => clk_1_sg_x201,
      d(0) => mux_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => post_sync_delay_q_net_x1
    );

  pre_sync_delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x201,
      clk => clk_1_sg_x201,
      d(0) => mux_y_net_x1,
      en => '1',
      rst => '1',
      q(0) => pre_sync_delay_q_net_x0
    );

  sync_delay_en_be14bb2386: entity work.sync_delay_en_entity_be14bb2386
    port map (
      ce_1 => ce_1_sg_x201,
      clk_1 => clk_1_sg_x201,
      en => or_y_net_x0,
      in_x0 => pre_sync_delay_q_net_x0,
      out_x0 => mux_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/transpose/qdr_reorder/sync_delay"

entity sync_delay_entity_2197b989b8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_2197b989b8;

architecture structural of sync_delay_entity_2197b989b8 is
  signal ce_1_sg_x202: std_logic;
  signal clk_1_sg_x202: std_logic;
  signal constant1_op_net: std_logic_vector(13 downto 0);
  signal constant2_op_net: std_logic_vector(13 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(13 downto 0);
  signal counter_op_net: std_logic_vector(13 downto 0);
  signal logical_y_net: std_logic;
  signal mux_y_net_x2: std_logic;
  signal post_sync_delay_q_net_x0: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x202 <= ce_1;
  clk_1_sg_x202 <= clk_1;
  post_sync_delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x2;

  constant1: entity work.constant_068ec526a0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_a773953785
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  constant_x0: entity work.constant_60de7cd9a7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_9067af53ee8d83ee",
      op_arith => xlUnsigned,
      op_width => 14
    )
    port map (
      ce => ce_1_sg_x202,
      clk => clk_1_sg_x202,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => post_sync_delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => post_sync_delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => post_sync_delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x2
    );

  relational: entity work.relational_d500ab1630
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_7f67627fe4
    port map (
      a => counter_op_net,
      b => constant1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/transpose/qdr_reorder"

entity qdr_reorder_entity_1330d48ff5 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    datain: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_transpose_qdr_reorder_qdr_data_out: in std_logic_vector(35 downto 0); 
    syncin: in std_logic; 
    dataout: out std_logic_vector(31 downto 0); 
    qdr: out std_logic_vector(35 downto 0); 
    qdr_x0: out std_logic_vector(31 downto 0); 
    qdr_x1: out std_logic_vector(3 downto 0); 
    qdr_x2: out std_logic; 
    qdr_x3: out std_logic; 
    syncout: out std_logic
  );
end qdr_reorder_entity_1330d48ff5;

architecture structural of qdr_reorder_entity_1330d48ff5 is
  signal add_x0: std_logic_vector(12 downto 0);
  signal bitbasher_b_net: std_logic_vector(12 downto 0);
  signal bram0_data_out_net_x1: std_logic_vector(31 downto 0);
  signal ce_1_sg_x203: std_logic;
  signal clk_1_sg_x203: std_logic;
  signal constant1_op_net_x0: std_logic;
  signal constant_op_net_x0: std_logic_vector(3 downto 0);
  signal convert_address_dout_net_x1: std_logic_vector(31 downto 0);
  signal convert_be_dout_net_x1: std_logic_vector(3 downto 0);
  signal convert_rd_en_dout_net_x1: std_logic;
  signal convert_wr_en_dout_net_x1: std_logic;
  signal ctrl_state_q_net: std_logic;
  signal di_cat1_y_net_x0: std_logic_vector(35 downto 0);
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal mux_y_net_x2: std_logic;
  signal post_sync_delay_q_net_x2: std_logic;
  signal post_sync_delay_q_net_x3: std_logic;
  signal rd_addr_op_net: std_logic_vector(12 downto 0);
  signal read_x0: std_logic;
  signal reinterpret_data_in_output_port_net_x1: std_logic_vector(35 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_data_out_net_x1: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x3: std_logic_vector(31 downto 0);
  signal slice1_y_net_x0: std_logic_vector(31 downto 0);
  signal slice_y_net: std_logic;
  signal wr_addr_op_net: std_logic_vector(12 downto 0);
  signal write_x0: std_logic;

begin
  ce_1_sg_x203 <= ce_1;
  clk_1_sg_x203 <= clk_1;
  bram0_data_out_net_x1 <= datain;
  roachf_1024_bao_transpose_qdr_reorder_qdr_data_out_net_x1 <= roachf_1024_bao_transpose_qdr_reorder_qdr_data_out;
  post_sync_delay_q_net_x2 <= syncin;
  dataout <= single_port_ram_data_out_net_x3;
  qdr <= reinterpret_data_in_output_port_net_x1;
  qdr_x0 <= convert_address_dout_net_x1;
  qdr_x1 <= convert_be_dout_net_x1;
  qdr_x2 <= convert_rd_en_dout_net_x1;
  qdr_x3 <= convert_wr_en_dout_net_x1;
  syncout <= post_sync_delay_q_net_x3;

  bitbasher: entity work.bitbasher_ebbd580c85
    port map (
      a => rd_addr_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      b => bitbasher_b_net
    );

  constant1: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net_x0
    );

  constant_x0: entity work.constant_06590e4008
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net_x0
    );

  ctrl_state: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x203,
      clk => clk_1_sg_x203,
      d(0) => inverter_op_net,
      en => "1",
      rst(0) => post_sync_delay_q_net_x2,
      q(0) => ctrl_state_q_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x203,
      clk => clk_1_sg_x203,
      clr => '0',
      ip(0) => slice_y_net,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x203,
      clk => clk_1_sg_x203,
      clr => '0',
      ip(0) => post_sync_delay_q_net_x2,
      op(0) => inverter1_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => inverter1_op_net,
      y(0) => write_x0
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => slice_y_net,
      d1(0) => inverter1_op_net,
      y(0) => read_x0
    );

  mux: entity work.mux_c146d55ebf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => wr_addr_op_net,
      d1 => bitbasher_b_net,
      sel(0) => read_x0,
      y => add_x0
    );

  qdr_46e41fe4d7: entity work.qdr_entity_46e41fe4d7
    port map (
      address => add_x0,
      be => constant_op_net_x0,
      ce_1 => ce_1_sg_x203,
      clk_1 => clk_1_sg_x203,
      data_in => bram0_data_out_net_x1,
      rd_en => read_x0,
      roachf_1024_bao_transpose_qdr_reorder_qdr_data_out => roachf_1024_bao_transpose_qdr_reorder_qdr_data_out_net_x1,
      wr_en => write_x0,
      convert_address_x0 => convert_address_dout_net_x1,
      convert_be_x0 => convert_be_dout_net_x1,
      convert_rd_en_x0 => convert_rd_en_dout_net_x1,
      convert_wr_en_x0 => convert_wr_en_dout_net_x1,
      data_out => di_cat1_y_net_x0,
      reinterpret_data_in_x0 => reinterpret_data_in_output_port_net_x1
    );

  rd_addr: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_5df4e6e0cdb230c4",
      op_arith => xlUnsigned,
      op_width => 13
    )
    port map (
      ce => ce_1_sg_x203,
      clk => clk_1_sg_x203,
      clr => '0',
      en(0) => read_x0,
      rst(0) => post_sync_delay_q_net_x2,
      op => rd_addr_op_net
    );

  reorder_6581cc8be0: entity work.reorder_entity_6581cc8be0
    port map (
      ce_1 => ce_1_sg_x203,
      clk_1 => clk_1_sg_x203,
      din0 => slice1_y_net_x0,
      en => constant1_op_net_x0,
      sync => mux_y_net_x2,
      dout0 => single_port_ram_data_out_net_x3,
      sync_out => post_sync_delay_q_net_x3
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 1,
      y_width => 1
    )
    port map (
      x(0) => ctrl_state_q_net,
      y(0) => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 36,
      y_width => 32
    )
    port map (
      x => di_cat1_y_net_x0,
      y => slice1_y_net_x0
    );

  sync_delay_2197b989b8: entity work.sync_delay_entity_2197b989b8
    port map (
      ce_1 => ce_1_sg_x203,
      clk_1 => clk_1_sg_x203,
      in_x0 => post_sync_delay_q_net_x2,
      out_x0 => mux_y_net_x2
    );

  wr_addr: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_813142b9460b2f27",
      op_arith => xlUnsigned,
      op_width => 13
    )
    port map (
      ce => ce_1_sg_x203,
      clk => clk_1_sg_x203,
      clr => '0',
      en(0) => write_x0,
      rst(0) => post_sync_delay_q_net_x2,
      op => wr_addr_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/transpose/qdr_reorder1/qdr"

entity qdr_entity_37f034c09d is
  port (
    address: in std_logic_vector(12 downto 0); 
    be: in std_logic_vector(3 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(31 downto 0); 
    rd_en: in std_logic; 
    roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out: in std_logic_vector(35 downto 0); 
    wr_en: in std_logic; 
    convert_address_x0: out std_logic_vector(31 downto 0); 
    convert_be_x0: out std_logic_vector(3 downto 0); 
    convert_rd_en_x0: out std_logic; 
    convert_wr_en_x0: out std_logic; 
    data_out: out std_logic_vector(35 downto 0); 
    reinterpret_data_in_x0: out std_logic_vector(35 downto 0)
  );
end qdr_entity_37f034c09d;

architecture structural of qdr_entity_37f034c09d is
  signal add_x0: std_logic_vector(12 downto 0);
  signal bram0_data_out_net_x0: std_logic_vector(31 downto 0);
  signal ce_1_sg_x204: std_logic;
  signal clk_1_sg_x204: std_logic;
  signal constant_op_net_x0: std_logic_vector(3 downto 0);
  signal convert_address_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert_be_dout_net_x0: std_logic_vector(3 downto 0);
  signal convert_data_in1_dout_net: std_logic_vector(35 downto 0);
  signal convert_data_in_dout_net: std_logic_vector(35 downto 0);
  signal convert_rd_en_dout_net_x0: std_logic;
  signal convert_wr_en_dout_net_x0: std_logic;
  signal di_cat1_y_net_x0: std_logic_vector(35 downto 0);
  signal di_cat_y_net: std_logic_vector(35 downto 0);
  signal force_data_out_output_port_net: std_logic_vector(35 downto 0);
  signal ibyte0_y_net: std_logic_vector(7 downto 0);
  signal ibyte1_y_net: std_logic_vector(7 downto 0);
  signal ibyte2_y_net: std_logic_vector(7 downto 0);
  signal ibyte3_y_net: std_logic_vector(7 downto 0);
  signal ipar0_y_net: std_logic;
  signal ipar1_y_net: std_logic;
  signal ipar2_y_net: std_logic;
  signal ipar3_y_net: std_logic;
  signal obyte0_y_net: std_logic_vector(7 downto 0);
  signal obyte1_y_net: std_logic_vector(7 downto 0);
  signal obyte2_y_net: std_logic_vector(7 downto 0);
  signal obyte3_y_net: std_logic_vector(7 downto 0);
  signal opar0_y_net: std_logic;
  signal opar1_y_net: std_logic;
  signal opar2_y_net: std_logic;
  signal opar3_y_net: std_logic;
  signal read_x0: std_logic;
  signal reinterpret_data_in_output_port_net_x0: std_logic_vector(35 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out_net_x0: std_logic_vector(35 downto 0);
  signal write_x0: std_logic;

begin
  add_x0 <= address;
  constant_op_net_x0 <= be;
  ce_1_sg_x204 <= ce_1;
  clk_1_sg_x204 <= clk_1;
  bram0_data_out_net_x0 <= data_in;
  read_x0 <= rd_en;
  roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out_net_x0 <= roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out;
  write_x0 <= wr_en;
  convert_address_x0 <= convert_address_dout_net_x0;
  convert_be_x0 <= convert_be_dout_net_x0;
  convert_rd_en_x0 <= convert_rd_en_dout_net_x0;
  convert_wr_en_x0 <= convert_wr_en_dout_net_x0;
  data_out <= di_cat1_y_net_x0;
  reinterpret_data_in_x0 <= reinterpret_data_in_output_port_net_x0;

  convert_address: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 13,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x204,
      clk => clk_1_sg_x204,
      clr => '0',
      din => add_x0,
      en => "1",
      dout => convert_address_dout_net_x0
    );

  convert_be: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 4,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 4,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x204,
      clk => clk_1_sg_x204,
      clr => '0',
      din => constant_op_net_x0,
      en => "1",
      dout => convert_be_dout_net_x0
    );

  convert_data_in: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 36,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x204,
      clk => clk_1_sg_x204,
      clr => '0',
      din => bram0_data_out_net_x0,
      en => "1",
      dout => convert_data_in_dout_net
    );

  convert_data_in1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 36,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 36,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x204,
      clk => clk_1_sg_x204,
      clr => '0',
      din => di_cat_y_net,
      en => "1",
      dout => convert_data_in1_dout_net
    );

  convert_rd_en: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x204,
      clk => clk_1_sg_x204,
      clr => '0',
      din(0) => read_x0,
      en => "1",
      dout(0) => convert_rd_en_dout_net_x0
    );

  convert_wr_en: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x204,
      clk => clk_1_sg_x204,
      clr => '0',
      din(0) => write_x0,
      en => "1",
      dout(0) => convert_wr_en_dout_net_x0
    );

  di_cat: entity work.concat_a9b7ee2019
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => ipar3_y_net,
      in1 => ibyte3_y_net,
      in2(0) => ipar2_y_net,
      in3 => ibyte2_y_net,
      in4(0) => ipar1_y_net,
      in5 => ibyte1_y_net,
      in6(0) => ipar0_y_net,
      in7 => ibyte0_y_net,
      y => di_cat_y_net
    );

  di_cat1: entity work.concat_1e5f8fbcb6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => opar3_y_net,
      in1(0) => opar2_y_net,
      in2(0) => opar1_y_net,
      in3(0) => opar0_y_net,
      in4 => obyte3_y_net,
      in5 => obyte2_y_net,
      in6 => obyte1_y_net,
      in7 => obyte0_y_net,
      y => di_cat1_y_net_x0
    );

  force_data_out: entity work.reinterpret_86b044698f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out_net_x0,
      output_port => force_data_out_output_port_net
    );

  ibyte0: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 36,
      y_width => 8
    )
    port map (
      x => convert_data_in_dout_net,
      y => ibyte0_y_net
    );

  ibyte1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 36,
      y_width => 8
    )
    port map (
      x => convert_data_in_dout_net,
      y => ibyte1_y_net
    );

  ibyte2: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 23,
      x_width => 36,
      y_width => 8
    )
    port map (
      x => convert_data_in_dout_net,
      y => ibyte2_y_net
    );

  ibyte3: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 31,
      x_width => 36,
      y_width => 8
    )
    port map (
      x => convert_data_in_dout_net,
      y => ibyte3_y_net
    );

  ipar0: entity work.xlslice
    generic map (
      new_lsb => 32,
      new_msb => 32,
      x_width => 36,
      y_width => 1
    )
    port map (
      x => convert_data_in_dout_net,
      y(0) => ipar0_y_net
    );

  ipar1: entity work.xlslice
    generic map (
      new_lsb => 33,
      new_msb => 33,
      x_width => 36,
      y_width => 1
    )
    port map (
      x => convert_data_in_dout_net,
      y(0) => ipar1_y_net
    );

  ipar2: entity work.xlslice
    generic map (
      new_lsb => 34,
      new_msb => 34,
      x_width => 36,
      y_width => 1
    )
    port map (
      x => convert_data_in_dout_net,
      y(0) => ipar2_y_net
    );

  ipar3: entity work.xlslice
    generic map (
      new_lsb => 35,
      new_msb => 35,
      x_width => 36,
      y_width => 1
    )
    port map (
      x => convert_data_in_dout_net,
      y(0) => ipar3_y_net
    );

  obyte0: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 36,
      y_width => 8
    )
    port map (
      x => force_data_out_output_port_net,
      y => obyte0_y_net
    );

  obyte1: entity work.xlslice
    generic map (
      new_lsb => 9,
      new_msb => 16,
      x_width => 36,
      y_width => 8
    )
    port map (
      x => force_data_out_output_port_net,
      y => obyte1_y_net
    );

  obyte2: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 25,
      x_width => 36,
      y_width => 8
    )
    port map (
      x => force_data_out_output_port_net,
      y => obyte2_y_net
    );

  obyte3: entity work.xlslice
    generic map (
      new_lsb => 27,
      new_msb => 34,
      x_width => 36,
      y_width => 8
    )
    port map (
      x => force_data_out_output_port_net,
      y => obyte3_y_net
    );

  opar0: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 8,
      x_width => 36,
      y_width => 1
    )
    port map (
      x => force_data_out_output_port_net,
      y(0) => opar0_y_net
    );

  opar1: entity work.xlslice
    generic map (
      new_lsb => 17,
      new_msb => 17,
      x_width => 36,
      y_width => 1
    )
    port map (
      x => force_data_out_output_port_net,
      y(0) => opar1_y_net
    );

  opar2: entity work.xlslice
    generic map (
      new_lsb => 26,
      new_msb => 26,
      x_width => 36,
      y_width => 1
    )
    port map (
      x => force_data_out_output_port_net,
      y(0) => opar2_y_net
    );

  opar3: entity work.xlslice
    generic map (
      new_lsb => 35,
      new_msb => 35,
      x_width => 36,
      y_width => 1
    )
    port map (
      x => force_data_out_output_port_net,
      y(0) => opar3_y_net
    );

  reinterpret_data_in: entity work.reinterpret_86b044698f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert_data_in1_dout_net,
      output_port => reinterpret_data_in_output_port_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/transpose/qdr_reorder1/reorder"

entity reorder_entity_426b6f55ca is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din0: in std_logic_vector(31 downto 0); 
    en: in std_logic; 
    dout0: out std_logic_vector(31 downto 0)
  );
end reorder_entity_426b6f55ca;

architecture structural of reorder_entity_426b6f55ca is
  signal ce_1_sg_x206: std_logic;
  signal clk_1_sg_x206: std_logic;
  signal constant1_op_net_x0: std_logic;
  signal delay_din0_q_net_x0: std_logic_vector(31 downto 0);
  signal delay_we_q_net_x0: std_logic;
  signal single_port_ram_data_out_net_x2: std_logic_vector(31 downto 0);
  signal slice1_y_net_x0: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x206 <= ce_1;
  clk_1_sg_x206 <= clk_1;
  slice1_y_net_x0 <= din0;
  constant1_op_net_x0 <= en;
  dout0 <= single_port_ram_data_out_net_x2;

  delay_din0: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x206,
      clk => clk_1_sg_x206,
      d => slice1_y_net_x0,
      en => '1',
      rst => '1',
      q => delay_din0_q_net_x0
    );

  delay_din_bram0_975231de3e: entity work.delay_din_bram0_entity_e39d1fc4a6
    port map (
      ce_1 => ce_1_sg_x206,
      clk_1 => clk_1_sg_x206,
      din => delay_din0_q_net_x0,
      en => delay_we_q_net_x0,
      dout => single_port_ram_data_out_net_x2
    );

  delay_we: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x206,
      clk => clk_1_sg_x206,
      d(0) => constant1_op_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_we_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/transpose/qdr_reorder1"

entity qdr_reorder1_entity_727a2c9079 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    datain: in std_logic_vector(31 downto 0); 
    roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out: in std_logic_vector(35 downto 0); 
    syncin: in std_logic; 
    dataout: out std_logic_vector(31 downto 0); 
    qdr: out std_logic_vector(35 downto 0); 
    qdr_x0: out std_logic_vector(31 downto 0); 
    qdr_x1: out std_logic_vector(3 downto 0); 
    qdr_x2: out std_logic; 
    qdr_x3: out std_logic
  );
end qdr_reorder1_entity_727a2c9079;

architecture structural of qdr_reorder1_entity_727a2c9079 is
  signal add_x0: std_logic_vector(12 downto 0);
  signal bitbasher_b_net: std_logic_vector(12 downto 0);
  signal bram0_data_out_net_x1: std_logic_vector(31 downto 0);
  signal ce_1_sg_x207: std_logic;
  signal clk_1_sg_x207: std_logic;
  signal constant1_op_net_x0: std_logic;
  signal constant_op_net_x0: std_logic_vector(3 downto 0);
  signal convert_address_dout_net_x1: std_logic_vector(31 downto 0);
  signal convert_be_dout_net_x1: std_logic_vector(3 downto 0);
  signal convert_rd_en_dout_net_x1: std_logic;
  signal convert_wr_en_dout_net_x1: std_logic;
  signal ctrl_state_q_net: std_logic;
  signal di_cat1_y_net_x0: std_logic_vector(35 downto 0);
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal post_sync_delay_q_net_x0: std_logic;
  signal rd_addr_op_net: std_logic_vector(12 downto 0);
  signal read_x0: std_logic;
  signal reinterpret_data_in_output_port_net_x1: std_logic_vector(35 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out_net_x1: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x3: std_logic_vector(31 downto 0);
  signal slice1_y_net_x0: std_logic_vector(31 downto 0);
  signal slice_y_net: std_logic;
  signal wr_addr_op_net: std_logic_vector(12 downto 0);
  signal write_x0: std_logic;

begin
  ce_1_sg_x207 <= ce_1;
  clk_1_sg_x207 <= clk_1;
  bram0_data_out_net_x1 <= datain;
  roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out_net_x1 <= roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out;
  post_sync_delay_q_net_x0 <= syncin;
  dataout <= single_port_ram_data_out_net_x3;
  qdr <= reinterpret_data_in_output_port_net_x1;
  qdr_x0 <= convert_address_dout_net_x1;
  qdr_x1 <= convert_be_dout_net_x1;
  qdr_x2 <= convert_rd_en_dout_net_x1;
  qdr_x3 <= convert_wr_en_dout_net_x1;

  bitbasher: entity work.bitbasher_ebbd580c85
    port map (
      a => rd_addr_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      b => bitbasher_b_net
    );

  constant1: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net_x0
    );

  constant_x0: entity work.constant_06590e4008
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net_x0
    );

  ctrl_state: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x207,
      clk => clk_1_sg_x207,
      d(0) => inverter_op_net,
      en => "1",
      rst(0) => post_sync_delay_q_net_x0,
      q(0) => ctrl_state_q_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x207,
      clk => clk_1_sg_x207,
      clr => '0',
      ip(0) => slice_y_net,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x207,
      clk => clk_1_sg_x207,
      clr => '0',
      ip(0) => post_sync_delay_q_net_x0,
      op(0) => inverter1_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => inverter1_op_net,
      y(0) => write_x0
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => slice_y_net,
      d1(0) => inverter1_op_net,
      y(0) => read_x0
    );

  mux: entity work.mux_c146d55ebf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => wr_addr_op_net,
      d1 => bitbasher_b_net,
      sel(0) => read_x0,
      y => add_x0
    );

  qdr_37f034c09d: entity work.qdr_entity_37f034c09d
    port map (
      address => add_x0,
      be => constant_op_net_x0,
      ce_1 => ce_1_sg_x207,
      clk_1 => clk_1_sg_x207,
      data_in => bram0_data_out_net_x1,
      rd_en => read_x0,
      roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out => roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out_net_x1,
      wr_en => write_x0,
      convert_address_x0 => convert_address_dout_net_x1,
      convert_be_x0 => convert_be_dout_net_x1,
      convert_rd_en_x0 => convert_rd_en_dout_net_x1,
      convert_wr_en_x0 => convert_wr_en_dout_net_x1,
      data_out => di_cat1_y_net_x0,
      reinterpret_data_in_x0 => reinterpret_data_in_output_port_net_x1
    );

  rd_addr: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_5df4e6e0cdb230c4",
      op_arith => xlUnsigned,
      op_width => 13
    )
    port map (
      ce => ce_1_sg_x207,
      clk => clk_1_sg_x207,
      clr => '0',
      en(0) => read_x0,
      rst(0) => post_sync_delay_q_net_x0,
      op => rd_addr_op_net
    );

  reorder_426b6f55ca: entity work.reorder_entity_426b6f55ca
    port map (
      ce_1 => ce_1_sg_x207,
      clk_1 => clk_1_sg_x207,
      din0 => slice1_y_net_x0,
      en => constant1_op_net_x0,
      dout0 => single_port_ram_data_out_net_x3
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 1,
      y_width => 1
    )
    port map (
      x(0) => ctrl_state_q_net,
      y(0) => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 36,
      y_width => 32
    )
    port map (
      x => di_cat1_y_net_x0,
      y => slice1_y_net_x0
    );

  wr_addr: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_813142b9460b2f27",
      op_arith => xlUnsigned,
      op_width => 13
    )
    port map (
      ce => ce_1_sg_x207,
      clk => clk_1_sg_x207,
      clr => '0',
      en(0) => write_x0,
      rst(0) => post_sync_delay_q_net_x0,
      op => wr_addr_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/transpose/reorder/sync_delay_en"

entity sync_delay_en_entity_85b0139e89 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_en_entity_85b0139e89;

architecture structural of sync_delay_en_entity_85b0139e89 is
  signal ce_1_sg_x208: std_logic;
  signal clk_1_sg_x208: std_logic;
  signal constant1_op_net: std_logic_vector(9 downto 0);
  signal constant2_op_net: std_logic_vector(9 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(9 downto 0);
  signal counter_op_net: std_logic_vector(9 downto 0);
  signal logical1_y_net: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x0: std_logic;
  signal or_y_net_x0: std_logic;
  signal pre_sync_delay_q_net_x0: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x208 <= ce_1;
  clk_1_sg_x208 <= clk_1;
  or_y_net_x0 <= en;
  pre_sync_delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x0;

  constant1: entity work.constant_498bc68c14
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_fbc2f0cce1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  constant_x0: entity work.constant_f1ac4bddff
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_7ca694f8efe8d963",
      op_arith => xlUnsigned,
      op_width => 10
    )
    port map (
      ce => ce_1_sg_x208,
      clk => clk_1_sg_x208,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical1_y_net,
      load(0) => pre_sync_delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => pre_sync_delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net,
      d1(0) => or_y_net_x0,
      y(0) => logical1_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => pre_sync_delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x0
    );

  relational: entity work.relational_0ffd72e037
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_f6702ea2f7
    port map (
      a => counter_op_net,
      b => constant1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/transpose/reorder"

entity reorder_entity_1809c99170 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din0: in std_logic_vector(31 downto 0); 
    en: in std_logic; 
    sync: in std_logic; 
    dout0: out std_logic_vector(31 downto 0); 
    sync_out: out std_logic
  );
end reorder_entity_1809c99170;

architecture structural of reorder_entity_1809c99170 is
  signal bitbasher_even_net_x0: std_logic_vector(31 downto 0);
  signal bram0_data_out_net_x2: std_logic_vector(31 downto 0);
  signal ce_1_sg_x209: std_logic;
  signal clk_1_sg_x209: std_logic;
  signal constant_op_net_x0: std_logic;
  signal counter_op_net: std_logic_vector(10 downto 0);
  signal delay_d0_q_net: std_logic_vector(8 downto 0);
  signal delay_din0_q_net: std_logic_vector(31 downto 0);
  signal delay_map1_q_net: std_logic_vector(8 downto 0);
  signal delay_map2_q_net: std_logic_vector(8 downto 0);
  signal delay_sel_q_net: std_logic_vector(1 downto 0);
  signal delay_we_q_net: std_logic;
  signal map1_data_net: std_logic_vector(8 downto 0);
  signal map2_data_net: std_logic_vector(8 downto 0);
  signal mux_y_net: std_logic_vector(8 downto 0);
  signal mux_y_net_x0: std_logic;
  signal or_y_net_x0: std_logic;
  signal post_sync_delay_q_net_x3: std_logic;
  signal pre_sync_delay_q_net_x0: std_logic;
  signal register0_q_net_x1: std_logic;
  signal slice1_y_net: std_logic_vector(1 downto 0);
  signal slice2_y_net: std_logic_vector(8 downto 0);

begin
  ce_1_sg_x209 <= ce_1;
  clk_1_sg_x209 <= clk_1;
  bitbasher_even_net_x0 <= din0;
  constant_op_net_x0 <= en;
  register0_q_net_x1 <= sync;
  dout0 <= bram0_data_out_net_x2;
  sync_out <= post_sync_delay_q_net_x3;

  bram0: entity work.xlspram
    generic map (
      c_address_width => 9,
      c_width => 32,
      core_name0 => "bmg_62_4780518c6f20c162",
      latency => 1
    )
    port map (
      addr => mux_y_net,
      ce => ce_1_sg_x209,
      clk => clk_1_sg_x209,
      data_in => delay_din0_q_net,
      en => "1",
      rst => "0",
      we(0) => delay_we_q_net,
      data_out => bram0_data_out_net_x2
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 1535,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_92cf1c8e61537910",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x209,
      clk => clk_1_sg_x209,
      clr => '0',
      en(0) => constant_op_net_x0,
      rst(0) => register0_q_net_x1,
      op => counter_op_net
    );

  delay_d0: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 9
    )
    port map (
      ce => ce_1_sg_x209,
      clk => clk_1_sg_x209,
      d => slice2_y_net,
      en => '1',
      rst => '1',
      q => delay_d0_q_net
    );

  delay_din0: entity work.xldelay
    generic map (
      latency => 3,
      reg_retiming => 0,
      reset => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x209,
      clk => clk_1_sg_x209,
      d => bitbasher_even_net_x0,
      en => '1',
      rst => '1',
      q => delay_din0_q_net
    );

  delay_map1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 9
    )
    port map (
      ce => ce_1_sg_x209,
      clk => clk_1_sg_x209,
      d => map1_data_net,
      en => '1',
      rst => '1',
      q => delay_map1_q_net
    );

  delay_map2: entity work.delay_a99984b20e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => map2_data_net,
      q => delay_map2_q_net
    );

  delay_sel: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 2
    )
    port map (
      ce => ce_1_sg_x209,
      clk => clk_1_sg_x209,
      d => slice1_y_net,
      en => '1',
      rst => '1',
      q => delay_sel_q_net
    );

  delay_we: entity work.xldelay
    generic map (
      latency => 3,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x209,
      clk => clk_1_sg_x209,
      d(0) => constant_op_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_we_q_net
    );

  map1: entity work.xlsprom_dist
    generic map (
      addr_width => 9,
      c_address_width => 9,
      c_width => 9,
      core_name0 => "dmg_62_0a86efc0bb6fa1ec",
      latency => 1
    )
    port map (
      addr => slice2_y_net,
      ce => ce_1_sg_x209,
      clk => clk_1_sg_x209,
      en => "1",
      data => map1_data_net
    );

  map2: entity work.xlsprom_dist
    generic map (
      addr_width => 9,
      c_address_width => 9,
      c_width => 9,
      core_name0 => "dmg_62_0a86efc0bb6fa1ec",
      latency => 1
    )
    port map (
      addr => map1_data_net,
      ce => ce_1_sg_x209,
      clk => clk_1_sg_x209,
      en => "1",
      data => map2_data_net
    );

  mux: entity work.mux_c77e20fa3c
    port map (
      ce => ce_1_sg_x209,
      clk => clk_1_sg_x209,
      clr => '0',
      d0 => delay_d0_q_net,
      d1 => delay_map1_q_net,
      d2 => delay_map2_q_net,
      sel => delay_sel_q_net,
      y => mux_y_net
    );

  or_x0: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => pre_sync_delay_q_net_x0,
      d1(0) => delay_we_q_net,
      y(0) => or_y_net_x0
    );

  post_sync_delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x209,
      clk => clk_1_sg_x209,
      d(0) => mux_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => post_sync_delay_q_net_x3
    );

  pre_sync_delay: entity work.xldelay
    generic map (
      latency => 3,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x209,
      clk => clk_1_sg_x209,
      d(0) => register0_q_net_x1,
      en => '1',
      rst => '1',
      q(0) => pre_sync_delay_q_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 9,
      new_msb => 10,
      x_width => 11,
      y_width => 2
    )
    port map (
      x => counter_op_net,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 8,
      x_width => 11,
      y_width => 9
    )
    port map (
      x => counter_op_net,
      y => slice2_y_net
    );

  sync_delay_en_85b0139e89: entity work.sync_delay_en_entity_85b0139e89
    port map (
      ce_1 => ce_1_sg_x209,
      clk_1 => clk_1_sg_x209,
      en => or_y_net_x0,
      in_x0 => pre_sync_delay_q_net_x0,
      out_x0 => mux_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao/transpose"

entity transpose_entity_392290f6fe is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    eq_out: in std_logic_vector(63 downto 0); 
    roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out: in std_logic_vector(35 downto 0); 
    roachf_1024_bao_transpose_qdr_reorder_qdr_data_out: in std_logic_vector(35 downto 0); 
    sync_rnd: in std_logic; 
    ant1_pol12_reorder: out std_logic_vector(31 downto 0); 
    ant2_pol12_reorder: out std_logic_vector(31 downto 0); 
    qdr_reorder: out std_logic_vector(35 downto 0); 
    qdr_reorder1: out std_logic_vector(35 downto 0); 
    qdr_reorder1_x0: out std_logic_vector(31 downto 0); 
    qdr_reorder1_x1: out std_logic_vector(3 downto 0); 
    qdr_reorder1_x2: out std_logic; 
    qdr_reorder1_x3: out std_logic; 
    qdr_reorder_x0: out std_logic_vector(31 downto 0); 
    qdr_reorder_x1: out std_logic_vector(3 downto 0); 
    qdr_reorder_x2: out std_logic; 
    qdr_reorder_x3: out std_logic; 
    sync_reorder: out std_logic
  );
end transpose_entity_392290f6fe;

architecture structural of transpose_entity_392290f6fe is
  signal bitbasher_even_net_x0: std_logic_vector(31 downto 0);
  signal bitbasher_odd_net_x0: std_logic_vector(31 downto 0);
  signal bram0_data_out_net_x2: std_logic_vector(31 downto 0);
  signal bram0_data_out_net_x3: std_logic_vector(31 downto 0);
  signal ce_1_sg_x212: std_logic;
  signal clk_1_sg_x212: std_logic;
  signal concat3_y_net_x2: std_logic_vector(63 downto 0);
  signal constant1_op_net_x0: std_logic;
  signal constant_op_net_x0: std_logic;
  signal convert_address_dout_net_x3: std_logic_vector(31 downto 0);
  signal convert_address_dout_net_x4: std_logic_vector(31 downto 0);
  signal convert_be_dout_net_x3: std_logic_vector(3 downto 0);
  signal convert_be_dout_net_x4: std_logic_vector(3 downto 0);
  signal convert_rd_en_dout_net_x3: std_logic;
  signal convert_rd_en_dout_net_x4: std_logic;
  signal convert_wr_en_dout_net_x3: std_logic;
  signal convert_wr_en_dout_net_x4: std_logic;
  signal delay19_q_net_x3: std_logic;
  signal post_sync_delay_q_net_x1: std_logic;
  signal post_sync_delay_q_net_x3: std_logic;
  signal post_sync_delay_q_net_x4: std_logic;
  signal register0_q_net_x0: std_logic_vector(63 downto 0);
  signal register0_q_net_x10: std_logic_vector(31 downto 0);
  signal register0_q_net_x11: std_logic_vector(31 downto 0);
  signal register0_q_net_x2: std_logic;
  signal register0_q_net_x9: std_logic;
  signal reinterpret_data_in_output_port_net_x3: std_logic_vector(35 downto 0);
  signal reinterpret_data_in_output_port_net_x4: std_logic_vector(35 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out_net_x2: std_logic_vector(35 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_data_out_net_x2: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x3: std_logic_vector(31 downto 0);
  signal single_port_ram_data_out_net_x4: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x212 <= ce_1;
  clk_1_sg_x212 <= clk_1;
  concat3_y_net_x2 <= eq_out;
  roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out_net_x2 <= roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out;
  roachf_1024_bao_transpose_qdr_reorder_qdr_data_out_net_x2 <= roachf_1024_bao_transpose_qdr_reorder_qdr_data_out;
  delay19_q_net_x3 <= sync_rnd;
  ant1_pol12_reorder <= register0_q_net_x11;
  ant2_pol12_reorder <= register0_q_net_x10;
  qdr_reorder <= reinterpret_data_in_output_port_net_x3;
  qdr_reorder1 <= reinterpret_data_in_output_port_net_x4;
  qdr_reorder1_x0 <= convert_address_dout_net_x4;
  qdr_reorder1_x1 <= convert_be_dout_net_x4;
  qdr_reorder1_x2 <= convert_rd_en_dout_net_x4;
  qdr_reorder1_x3 <= convert_wr_en_dout_net_x4;
  qdr_reorder_x0 <= convert_address_dout_net_x3;
  qdr_reorder_x1 <= convert_be_dout_net_x3;
  qdr_reorder_x2 <= convert_rd_en_dout_net_x3;
  qdr_reorder_x3 <= convert_wr_en_dout_net_x3;
  sync_reorder <= register0_q_net_x9;

  bitbasher: entity work.bitbasher_6b8a394067
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => register0_q_net_x0,
      even => bitbasher_even_net_x0,
      odd => bitbasher_odd_net_x0
    );

  constant1: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net_x0
    );

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net_x0
    );

  delay1_13a650ffd7: entity work.delay17_entity_286e674199
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      d => post_sync_delay_q_net_x3,
      q => register0_q_net_x9
    );

  delay2_ebe15c482d: entity work.delay17_entity_286e674199
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      d => delay19_q_net_x3,
      q => register0_q_net_x2
    );

  delay3_279547a2ca: entity work.delay22_entity_131dd68804
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      d => concat3_y_net_x2,
      q => register0_q_net_x0
    );

  delay5_65262209bb: entity work.delay5_entity_65262209bb
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      d => single_port_ram_data_out_net_x4,
      q => register0_q_net_x10
    );

  delay79_6845c05299: entity work.delay5_entity_65262209bb
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      d => single_port_ram_data_out_net_x3,
      q => register0_q_net_x11
    );

  qdr_reorder1_727a2c9079: entity work.qdr_reorder1_entity_727a2c9079
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      datain => bram0_data_out_net_x3,
      roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out => roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out_net_x2,
      syncin => post_sync_delay_q_net_x1,
      dataout => single_port_ram_data_out_net_x4,
      qdr => reinterpret_data_in_output_port_net_x4,
      qdr_x0 => convert_address_dout_net_x4,
      qdr_x1 => convert_be_dout_net_x4,
      qdr_x2 => convert_rd_en_dout_net_x4,
      qdr_x3 => convert_wr_en_dout_net_x4
    );

  qdr_reorder_1330d48ff5: entity work.qdr_reorder_entity_1330d48ff5
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      datain => bram0_data_out_net_x2,
      roachf_1024_bao_transpose_qdr_reorder_qdr_data_out => roachf_1024_bao_transpose_qdr_reorder_qdr_data_out_net_x2,
      syncin => post_sync_delay_q_net_x4,
      dataout => single_port_ram_data_out_net_x3,
      qdr => reinterpret_data_in_output_port_net_x3,
      qdr_x0 => convert_address_dout_net_x3,
      qdr_x1 => convert_be_dout_net_x3,
      qdr_x2 => convert_rd_en_dout_net_x3,
      qdr_x3 => convert_wr_en_dout_net_x3,
      syncout => post_sync_delay_q_net_x3
    );

  reorder1_017a884d17: entity work.reorder_entity_1809c99170
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      din0 => bitbasher_odd_net_x0,
      en => constant1_op_net_x0,
      sync => register0_q_net_x2,
      dout0 => bram0_data_out_net_x3,
      sync_out => post_sync_delay_q_net_x1
    );

  reorder_1809c99170: entity work.reorder_entity_1809c99170
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      din0 => bitbasher_even_net_x0,
      en => constant_op_net_x0,
      sync => register0_q_net_x2,
      dout0 => bram0_data_out_net_x2,
      sync_out => post_sync_delay_q_net_x4
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_1024_bao"

entity roachf_1024_bao is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
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
end roachf_1024_bao;

architecture structural of roachf_1024_bao is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "roachf_1024_bao,sysgen_core,{clock_period=6.66670000,clocking=Clock_Enables,compilation=NGC_Netlist,sample_periods=1.00000000000,testbench=0,total_blocks=3721,xilinx_adder_subtracter_block=17,xilinx_addressable_shift_register_block=4,xilinx_arithmetic_relational_operator_block=68,xilinx_assert_block=8,xilinx_binary_shift_operator_block=12,xilinx_bit_slice_extractor_block=195,xilinx_bitbasher_block=8,xilinx_bitwise_expression_evaluator_block=8,xilinx_black_box_block=8,xilinx_bus_concatenator_block=77,xilinx_bus_multiplexer_block=53,xilinx_constant_block_block=192,xilinx_counter_block=47,xilinx_delay_block=214,xilinx_disregard_subsystem_for_generation_block=5,xilinx_dual_port_random_access_memory_block=8,xilinx_gateway_in_block=106,xilinx_gateway_out_block=84,xilinx_input_scaler_block=8,xilinx_inverter_block=71,xilinx_linear_feedback_shift_register_block=4,xilinx_logical_block_block=153,xilinx_moore_state_machine=1,xilinx_multiplier_block=24,xilinx_register_block=64,xilinx_single_port_random_access_memory_block=7,xilinx_single_port_read_only_memory_block=18,xilinx_system_generator_block=1,xilinx_type_converter_block=115,xilinx_type_reinterpreter_block=136,xilinx_wavescope_block=4,}";

  signal bitbasher_delay0_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher_delay1_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher_delay2_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher_delay3_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher_insel0_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher_insel1_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher_insel2_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher_insel3_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher_seed0_net_x5: std_logic_vector(31 downto 0);
  signal bitbasher_seed1_net_x5: std_logic_vector(31 downto 0);
  signal bitbasher_seed2_net_x5: std_logic_vector(31 downto 0);
  signal bitbasher_seed3_net_x5: std_logic_vector(31 downto 0);
  signal ce_1_sg_x213: std_logic;
  signal clk_1_sg_x213: std_logic;
  signal concat3_y_net_x2: std_logic_vector(63 downto 0);
  signal delay10_q_net_x2: std_logic_vector(31 downto 0);
  signal delay11_q_net_x2: std_logic_vector(31 downto 0);
  signal delay14_q_net_x1: std_logic;
  signal delay19_q_net_x3: std_logic;
  signal delay1_q_net_x3: std_logic_vector(31 downto 0);
  signal delay1_q_net_x6: std_logic_vector(31 downto 0);
  signal delay1_q_net_x7: std_logic_vector(31 downto 0);
  signal delay2_q_net_x2: std_logic_vector(31 downto 0);
  signal delay2_q_net_x5: std_logic_vector(31 downto 0);
  signal delay2_q_net_x6: std_logic_vector(31 downto 0);
  signal delay3_q_net_x2: std_logic_vector(31 downto 0);
  signal delay3_q_net_x3: std_logic_vector(31 downto 0);
  signal delay4_q_net_x2: std_logic_vector(31 downto 0);
  signal delay4_q_net_x3: std_logic_vector(31 downto 0);
  signal delay5_q_net_x1: std_logic;
  signal delay5_q_net_x2: std_logic_vector(31 downto 0);
  signal delay6_q_net_x2: std_logic_vector(31 downto 0);
  signal delay7_q_net_x2: std_logic_vector(31 downto 0);
  signal delay9_q_net_x1: std_logic;
  signal delay_q_net_x2: std_logic_vector(31 downto 0);
  signal dout_x2: std_logic_vector(63 downto 0);
  signal eof_out_x2: std_logic;
  signal fft2_2048ch1_out0_net_x2: std_logic_vector(35 downto 0);
  signal fft2_2048ch1_out1_net_x2: std_logic_vector(35 downto 0);
  signal fft2_2048ch2_out0_net_x2: std_logic_vector(35 downto 0);
  signal fft2_2048ch2_out1_net_x2: std_logic_vector(35 downto 0);
  signal fft2_2048ch3_out0_net_x2: std_logic_vector(35 downto 0);
  signal fft2_2048ch3_out1_net_x2: std_logic_vector(35 downto 0);
  signal fft2_2048ch_out0_net_x2: std_logic_vector(35 downto 0);
  signal fft2_2048ch_out1_net_x2: std_logic_vector(35 downto 0);
  signal fft2_2048ch_sync_out_net_x9: std_logic;
  signal inverter_op_net_x2: std_logic;
  signal logical5_y_net_x1: std_logic;
  signal logical_y_net_x23: std_logic;
  signal logical_y_net_x24: std_logic;
  signal logical_y_net_x4: std_logic;
  signal mux_y_net_x5: std_logic;
  signal register0_q_net_x10: std_logic_vector(31 downto 0);
  signal register0_q_net_x11: std_logic_vector(31 downto 0);
  signal register0_q_net_x9: std_logic;
  signal register3_q_net_x5: std_logic;
  signal register_q_net_x5: std_logic_vector(63 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_data_valid_net: std_logic;
  signal roachf_1024_bao_adc_s_adc1_user_datai0_net: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_datai1_net: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_datai2_net: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_datai3_net: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_dataq0_net: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_dataq1_net: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_dataq2_net: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_dataq3_net: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc1_user_outofrangei0_net: std_logic;
  signal roachf_1024_bao_adc_s_adc1_user_outofrangei1_net: std_logic;
  signal roachf_1024_bao_adc_s_adc1_user_outofrangeq0_net: std_logic;
  signal roachf_1024_bao_adc_s_adc1_user_outofrangeq1_net: std_logic;
  signal roachf_1024_bao_adc_s_adc1_user_sync0_net: std_logic;
  signal roachf_1024_bao_adc_s_adc1_user_sync1_net: std_logic;
  signal roachf_1024_bao_adc_s_adc1_user_sync2_net: std_logic;
  signal roachf_1024_bao_adc_s_adc1_user_sync3_net: std_logic;
  signal roachf_1024_bao_adc_s_adc_user_data_valid_net: std_logic;
  signal roachf_1024_bao_adc_s_adc_user_datai0_net: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_datai1_net: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_datai2_net: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_datai3_net: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_dataq0_net: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_dataq1_net: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_dataq2_net: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_dataq3_net: std_logic_vector(7 downto 0);
  signal roachf_1024_bao_adc_s_adc_user_outofrangei0_net: std_logic;
  signal roachf_1024_bao_adc_s_adc_user_outofrangei1_net: std_logic;
  signal roachf_1024_bao_adc_s_adc_user_outofrangeq0_net: std_logic;
  signal roachf_1024_bao_adc_s_adc_user_outofrangeq1_net: std_logic;
  signal roachf_1024_bao_adc_s_adc_user_sync0_net: std_logic;
  signal roachf_1024_bao_adc_s_adc_user_sync1_net: std_logic;
  signal roachf_1024_bao_adc_s_adc_user_sync2_net: std_logic;
  signal roachf_1024_bao_adc_s_adc_user_sync3_net: std_logic;
  signal roachf_1024_bao_ant_base_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_delay_values_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_eq_quant0_addr_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_eq_quant0_gain_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_eq_quant1_addr_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_eq_quant1_gain_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_eq_quant2_addr_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_eq_quant2_gain_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_eq_quant3_addr_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_eq_quant3_gain_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_feng_ctl_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_fft_shift_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_gbe_sw_port_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_gpu_gbe2_led_rx_net: std_logic;
  signal roachf_1024_bao_gpu_gbe2_led_tx_net: std_logic;
  signal roachf_1024_bao_gpu_gbe2_led_up_net: std_logic;
  signal roachf_1024_bao_gpu_gbe2_rst_net: std_logic;
  signal roachf_1024_bao_gpu_gbe2_rx_ack_net: std_logic;
  signal roachf_1024_bao_gpu_gbe2_rx_bad_frame_net: std_logic;
  signal roachf_1024_bao_gpu_gbe2_rx_data_net: std_logic_vector(63 downto 0);
  signal roachf_1024_bao_gpu_gbe2_rx_end_of_frame_net: std_logic;
  signal roachf_1024_bao_gpu_gbe2_rx_overrun_ack_net: std_logic;
  signal roachf_1024_bao_gpu_gbe2_rx_overrun_net: std_logic;
  signal roachf_1024_bao_gpu_gbe2_rx_source_ip_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_gpu_gbe2_rx_source_port_net: std_logic_vector(15 downto 0);
  signal roachf_1024_bao_gpu_gbe2_rx_valid_net: std_logic;
  signal roachf_1024_bao_gpu_gbe2_tx_afull_net: std_logic;
  signal roachf_1024_bao_gpu_gbe2_tx_data_net: std_logic_vector(63 downto 0);
  signal roachf_1024_bao_gpu_gbe2_tx_dest_ip_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_gpu_gbe2_tx_dest_port_net: std_logic_vector(15 downto 0);
  signal roachf_1024_bao_gpu_gbe2_tx_end_of_frame_net: std_logic;
  signal roachf_1024_bao_gpu_gbe2_tx_overflow_net: std_logic;
  signal roachf_1024_bao_gpu_gbe2_tx_valid_net: std_logic;
  signal roachf_1024_bao_gpu_ip_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_gpu_port_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_input_selector_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_ip_base_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_leds_led1_arm_gateway_net: std_logic;
  signal roachf_1024_bao_leds_led2_sync_gateway_net: std_logic;
  signal roachf_1024_bao_leds_led4_eq_clip_gateway_net: std_logic;
  signal roachf_1024_bao_loopback_loop_cnt_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_loopback_loop_err_cnt_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_loopback_loopback_fifo_lb_err_cnt_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_loopback_loopback_mux_gbe_over_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_loopback_loopback_mux_gbe_und_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_loopback_loopback_mux_lb_over_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_loopback_loopback_mux_lb_und_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_loopback_rx_cnt_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_loopback_rx_err_cnt_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_loopback_rx_pkt_fifo_santa_2big_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_loopback_rx_pkt_fifo_santa_2small_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_my_ip_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_seed_data_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_status_gbe_gpu_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_status_gbe_sw_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_status_swgbe_bframe_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_status_swgbe_oflow_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_status_swgbe_orun_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_addr_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_addr_net: std_logic_vector(9 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_lsb_we_net: std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_addr_net: std_logic_vector(9 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_msb_we_net: std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_addr_net: std_logic_vector(9 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_10gbetxsnap_bram_oob_we_net: std_logic;
  signal roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_gbe3_led_rx_net: std_logic;
  signal roachf_1024_bao_switch_gbe3_led_tx_net: std_logic;
  signal roachf_1024_bao_switch_gbe3_led_up_net: std_logic;
  signal roachf_1024_bao_switch_gbe3_rst_net: std_logic;
  signal roachf_1024_bao_switch_gbe3_rx_ack_net: std_logic;
  signal roachf_1024_bao_switch_gbe3_rx_bad_frame_net: std_logic;
  signal roachf_1024_bao_switch_gbe3_rx_data_net: std_logic_vector(63 downto 0);
  signal roachf_1024_bao_switch_gbe3_rx_end_of_frame_net: std_logic;
  signal roachf_1024_bao_switch_gbe3_rx_overrun_ack_net: std_logic;
  signal roachf_1024_bao_switch_gbe3_rx_overrun_net: std_logic;
  signal roachf_1024_bao_switch_gbe3_rx_source_ip_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_gbe3_rx_source_port_net: std_logic_vector(15 downto 0);
  signal roachf_1024_bao_switch_gbe3_rx_valid_net: std_logic;
  signal roachf_1024_bao_switch_gbe3_tx_afull_net: std_logic;
  signal roachf_1024_bao_switch_gbe3_tx_data_net: std_logic_vector(63 downto 0);
  signal roachf_1024_bao_switch_gbe3_tx_dest_ip_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_switch_gbe3_tx_dest_port_net: std_logic_vector(15 downto 0);
  signal roachf_1024_bao_switch_gbe3_tx_end_of_frame_net: std_logic;
  signal roachf_1024_bao_switch_gbe3_tx_overflow_net: std_logic;
  signal roachf_1024_bao_switch_gbe3_tx_valid_net: std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_ack_net: std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_address_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_be_net: std_logic_vector(3 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_cal_fail_net: std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_data_in_net: std_logic_vector(35 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out_net: std_logic_vector(35 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_phy_ready_net: std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_rd_en_net: std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder1_qdr_wr_en_net: std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_ack_net: std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_address_net: std_logic_vector(31 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_be_net: std_logic_vector(3 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_cal_fail_net: std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_data_in_net: std_logic_vector(35 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_data_out_net: std_logic_vector(35 downto 0);
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_phy_ready_net: std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_rd_en_net: std_logic;
  signal roachf_1024_bao_transpose_qdr_reorder_qdr_wr_en_net: std_logic;
  signal slice10_y_net_x2: std_logic;
  signal slice11_y_net_x1: std_logic;
  signal slice12_y_net_x1: std_logic;
  signal slice21_y_net_x1: std_logic_vector(12 downto 0);
  signal slice2_y_net_x5: std_logic_vector(31 downto 0);
  signal slice4_y_net_x8: std_logic;
  signal slice5_y_net_x2: std_logic;
  signal slice6_y_net_x1: std_logic;
  signal slice7_y_net_x6: std_logic;
  signal validout_x2: std_logic;

begin
  ce_1_sg_x213 <= ce_1;
  clk_1_sg_x213 <= clk_1;
  roachf_1024_bao_adc_s_adc1_user_data_valid_net <= roachf_1024_bao_adc_s_adc1_user_data_valid;
  roachf_1024_bao_adc_s_adc1_user_datai0_net <= roachf_1024_bao_adc_s_adc1_user_datai0;
  roachf_1024_bao_adc_s_adc1_user_datai1_net <= roachf_1024_bao_adc_s_adc1_user_datai1;
  roachf_1024_bao_adc_s_adc1_user_datai2_net <= roachf_1024_bao_adc_s_adc1_user_datai2;
  roachf_1024_bao_adc_s_adc1_user_datai3_net <= roachf_1024_bao_adc_s_adc1_user_datai3;
  roachf_1024_bao_adc_s_adc1_user_dataq0_net <= roachf_1024_bao_adc_s_adc1_user_dataq0;
  roachf_1024_bao_adc_s_adc1_user_dataq1_net <= roachf_1024_bao_adc_s_adc1_user_dataq1;
  roachf_1024_bao_adc_s_adc1_user_dataq2_net <= roachf_1024_bao_adc_s_adc1_user_dataq2;
  roachf_1024_bao_adc_s_adc1_user_dataq3_net <= roachf_1024_bao_adc_s_adc1_user_dataq3;
  roachf_1024_bao_adc_s_adc1_user_outofrangei0_net <= roachf_1024_bao_adc_s_adc1_user_outofrangei0;
  roachf_1024_bao_adc_s_adc1_user_outofrangei1_net <= roachf_1024_bao_adc_s_adc1_user_outofrangei1;
  roachf_1024_bao_adc_s_adc1_user_outofrangeq0_net <= roachf_1024_bao_adc_s_adc1_user_outofrangeq0;
  roachf_1024_bao_adc_s_adc1_user_outofrangeq1_net <= roachf_1024_bao_adc_s_adc1_user_outofrangeq1;
  roachf_1024_bao_adc_s_adc1_user_sync0_net <= roachf_1024_bao_adc_s_adc1_user_sync0;
  roachf_1024_bao_adc_s_adc1_user_sync1_net <= roachf_1024_bao_adc_s_adc1_user_sync1;
  roachf_1024_bao_adc_s_adc1_user_sync2_net <= roachf_1024_bao_adc_s_adc1_user_sync2;
  roachf_1024_bao_adc_s_adc1_user_sync3_net <= roachf_1024_bao_adc_s_adc1_user_sync3;
  roachf_1024_bao_adc_s_adc_user_data_valid_net <= roachf_1024_bao_adc_s_adc_user_data_valid;
  roachf_1024_bao_adc_s_adc_user_datai0_net <= roachf_1024_bao_adc_s_adc_user_datai0;
  roachf_1024_bao_adc_s_adc_user_datai1_net <= roachf_1024_bao_adc_s_adc_user_datai1;
  roachf_1024_bao_adc_s_adc_user_datai2_net <= roachf_1024_bao_adc_s_adc_user_datai2;
  roachf_1024_bao_adc_s_adc_user_datai3_net <= roachf_1024_bao_adc_s_adc_user_datai3;
  roachf_1024_bao_adc_s_adc_user_dataq0_net <= roachf_1024_bao_adc_s_adc_user_dataq0;
  roachf_1024_bao_adc_s_adc_user_dataq1_net <= roachf_1024_bao_adc_s_adc_user_dataq1;
  roachf_1024_bao_adc_s_adc_user_dataq2_net <= roachf_1024_bao_adc_s_adc_user_dataq2;
  roachf_1024_bao_adc_s_adc_user_dataq3_net <= roachf_1024_bao_adc_s_adc_user_dataq3;
  roachf_1024_bao_adc_s_adc_user_outofrangei0_net <= roachf_1024_bao_adc_s_adc_user_outofrangei0;
  roachf_1024_bao_adc_s_adc_user_outofrangei1_net <= roachf_1024_bao_adc_s_adc_user_outofrangei1;
  roachf_1024_bao_adc_s_adc_user_outofrangeq0_net <= roachf_1024_bao_adc_s_adc_user_outofrangeq0;
  roachf_1024_bao_adc_s_adc_user_outofrangeq1_net <= roachf_1024_bao_adc_s_adc_user_outofrangeq1;
  roachf_1024_bao_adc_s_adc_user_sync0_net <= roachf_1024_bao_adc_s_adc_user_sync0;
  roachf_1024_bao_adc_s_adc_user_sync1_net <= roachf_1024_bao_adc_s_adc_user_sync1;
  roachf_1024_bao_adc_s_adc_user_sync2_net <= roachf_1024_bao_adc_s_adc_user_sync2;
  roachf_1024_bao_adc_s_adc_user_sync3_net <= roachf_1024_bao_adc_s_adc_user_sync3;
  roachf_1024_bao_ant_base_user_data_out_net <= roachf_1024_bao_ant_base_user_data_out;
  roachf_1024_bao_delay_values_user_data_out_net <= roachf_1024_bao_delay_values_user_data_out;
  roachf_1024_bao_eq_quant0_addr_user_data_out_net <= roachf_1024_bao_eq_quant0_addr_user_data_out;
  roachf_1024_bao_eq_quant0_gain_user_data_out_net <= roachf_1024_bao_eq_quant0_gain_user_data_out;
  roachf_1024_bao_eq_quant1_addr_user_data_out_net <= roachf_1024_bao_eq_quant1_addr_user_data_out;
  roachf_1024_bao_eq_quant1_gain_user_data_out_net <= roachf_1024_bao_eq_quant1_gain_user_data_out;
  roachf_1024_bao_eq_quant2_addr_user_data_out_net <= roachf_1024_bao_eq_quant2_addr_user_data_out;
  roachf_1024_bao_eq_quant2_gain_user_data_out_net <= roachf_1024_bao_eq_quant2_gain_user_data_out;
  roachf_1024_bao_eq_quant3_addr_user_data_out_net <= roachf_1024_bao_eq_quant3_addr_user_data_out;
  roachf_1024_bao_eq_quant3_gain_user_data_out_net <= roachf_1024_bao_eq_quant3_gain_user_data_out;
  roachf_1024_bao_feng_ctl_user_data_out_net <= roachf_1024_bao_feng_ctl_user_data_out;
  roachf_1024_bao_fft_shift_user_data_out_net <= roachf_1024_bao_fft_shift_user_data_out;
  roachf_1024_bao_gbe_sw_port_user_data_out_net <= roachf_1024_bao_gbe_sw_port_user_data_out;
  roachf_1024_bao_gpu_gbe2_led_rx_net <= roachf_1024_bao_gpu_gbe2_led_rx;
  roachf_1024_bao_gpu_gbe2_led_tx_net <= roachf_1024_bao_gpu_gbe2_led_tx;
  roachf_1024_bao_gpu_gbe2_led_up_net <= roachf_1024_bao_gpu_gbe2_led_up;
  roachf_1024_bao_gpu_gbe2_rx_bad_frame_net <= roachf_1024_bao_gpu_gbe2_rx_bad_frame;
  roachf_1024_bao_gpu_gbe2_rx_data_net <= roachf_1024_bao_gpu_gbe2_rx_data;
  roachf_1024_bao_gpu_gbe2_rx_end_of_frame_net <= roachf_1024_bao_gpu_gbe2_rx_end_of_frame;
  roachf_1024_bao_gpu_gbe2_rx_overrun_net <= roachf_1024_bao_gpu_gbe2_rx_overrun;
  roachf_1024_bao_gpu_gbe2_rx_source_ip_net <= roachf_1024_bao_gpu_gbe2_rx_source_ip;
  roachf_1024_bao_gpu_gbe2_rx_source_port_net <= roachf_1024_bao_gpu_gbe2_rx_source_port;
  roachf_1024_bao_gpu_gbe2_rx_valid_net <= roachf_1024_bao_gpu_gbe2_rx_valid;
  roachf_1024_bao_gpu_gbe2_tx_afull_net <= roachf_1024_bao_gpu_gbe2_tx_afull;
  roachf_1024_bao_gpu_gbe2_tx_overflow_net <= roachf_1024_bao_gpu_gbe2_tx_overflow;
  roachf_1024_bao_gpu_ip_user_data_out_net <= roachf_1024_bao_gpu_ip_user_data_out;
  roachf_1024_bao_gpu_port_user_data_out_net <= roachf_1024_bao_gpu_port_user_data_out;
  roachf_1024_bao_input_selector_user_data_out_net <= roachf_1024_bao_input_selector_user_data_out;
  roachf_1024_bao_ip_base_user_data_out_net <= roachf_1024_bao_ip_base_user_data_out;
  roachf_1024_bao_my_ip_user_data_out_net <= roachf_1024_bao_my_ip_user_data_out;
  roachf_1024_bao_seed_data_user_data_out_net <= roachf_1024_bao_seed_data_user_data_out;
  roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_out_net <= roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_out;
  roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_out_net <= roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_out;
  roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_out_net <= roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_out;
  roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out_net <= roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out;
  roachf_1024_bao_switch_gbe3_led_rx_net <= roachf_1024_bao_switch_gbe3_led_rx;
  roachf_1024_bao_switch_gbe3_led_tx_net <= roachf_1024_bao_switch_gbe3_led_tx;
  roachf_1024_bao_switch_gbe3_led_up_net <= roachf_1024_bao_switch_gbe3_led_up;
  roachf_1024_bao_switch_gbe3_rx_bad_frame_net <= roachf_1024_bao_switch_gbe3_rx_bad_frame;
  roachf_1024_bao_switch_gbe3_rx_data_net <= roachf_1024_bao_switch_gbe3_rx_data;
  roachf_1024_bao_switch_gbe3_rx_end_of_frame_net <= roachf_1024_bao_switch_gbe3_rx_end_of_frame;
  roachf_1024_bao_switch_gbe3_rx_overrun_net <= roachf_1024_bao_switch_gbe3_rx_overrun;
  roachf_1024_bao_switch_gbe3_rx_source_ip_net <= roachf_1024_bao_switch_gbe3_rx_source_ip;
  roachf_1024_bao_switch_gbe3_rx_source_port_net <= roachf_1024_bao_switch_gbe3_rx_source_port;
  roachf_1024_bao_switch_gbe3_rx_valid_net <= roachf_1024_bao_switch_gbe3_rx_valid;
  roachf_1024_bao_switch_gbe3_tx_afull_net <= roachf_1024_bao_switch_gbe3_tx_afull;
  roachf_1024_bao_switch_gbe3_tx_overflow_net <= roachf_1024_bao_switch_gbe3_tx_overflow;
  roachf_1024_bao_transpose_qdr_reorder1_qdr_ack_net <= roachf_1024_bao_transpose_qdr_reorder1_qdr_ack;
  roachf_1024_bao_transpose_qdr_reorder1_qdr_cal_fail_net <= roachf_1024_bao_transpose_qdr_reorder1_qdr_cal_fail;
  roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out_net <= roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out;
  roachf_1024_bao_transpose_qdr_reorder1_qdr_phy_ready_net <= roachf_1024_bao_transpose_qdr_reorder1_qdr_phy_ready;
  roachf_1024_bao_transpose_qdr_reorder_qdr_ack_net <= roachf_1024_bao_transpose_qdr_reorder_qdr_ack;
  roachf_1024_bao_transpose_qdr_reorder_qdr_cal_fail_net <= roachf_1024_bao_transpose_qdr_reorder_qdr_cal_fail;
  roachf_1024_bao_transpose_qdr_reorder_qdr_data_out_net <= roachf_1024_bao_transpose_qdr_reorder_qdr_data_out;
  roachf_1024_bao_transpose_qdr_reorder_qdr_phy_ready_net <= roachf_1024_bao_transpose_qdr_reorder_qdr_phy_ready;
  roachf_1024_bao_gpu_gbe2_rst <= roachf_1024_bao_gpu_gbe2_rst_net;
  roachf_1024_bao_gpu_gbe2_rx_ack <= roachf_1024_bao_gpu_gbe2_rx_ack_net;
  roachf_1024_bao_gpu_gbe2_rx_overrun_ack <= roachf_1024_bao_gpu_gbe2_rx_overrun_ack_net;
  roachf_1024_bao_gpu_gbe2_tx_data <= roachf_1024_bao_gpu_gbe2_tx_data_net;
  roachf_1024_bao_gpu_gbe2_tx_dest_ip <= roachf_1024_bao_gpu_gbe2_tx_dest_ip_net;
  roachf_1024_bao_gpu_gbe2_tx_dest_port <= roachf_1024_bao_gpu_gbe2_tx_dest_port_net;
  roachf_1024_bao_gpu_gbe2_tx_end_of_frame <= roachf_1024_bao_gpu_gbe2_tx_end_of_frame_net;
  roachf_1024_bao_gpu_gbe2_tx_valid <= roachf_1024_bao_gpu_gbe2_tx_valid_net;
  roachf_1024_bao_leds_led1_arm_gateway <= roachf_1024_bao_leds_led1_arm_gateway_net;
  roachf_1024_bao_leds_led2_sync_gateway <= roachf_1024_bao_leds_led2_sync_gateway_net;
  roachf_1024_bao_leds_led4_eq_clip_gateway <= roachf_1024_bao_leds_led4_eq_clip_gateway_net;
  roachf_1024_bao_loopback_loop_cnt_user_data_in <= roachf_1024_bao_loopback_loop_cnt_user_data_in_net;
  roachf_1024_bao_loopback_loop_err_cnt_user_data_in <= roachf_1024_bao_loopback_loop_err_cnt_user_data_in_net;
  roachf_1024_bao_loopback_loopback_fifo_lb_err_cnt_user_data_in <= roachf_1024_bao_loopback_loopback_fifo_lb_err_cnt_user_data_in_net;
  roachf_1024_bao_loopback_loopback_mux_gbe_over_user_data_in <= roachf_1024_bao_loopback_loopback_mux_gbe_over_user_data_in_net;
  roachf_1024_bao_loopback_loopback_mux_gbe_und_user_data_in <= roachf_1024_bao_loopback_loopback_mux_gbe_und_user_data_in_net;
  roachf_1024_bao_loopback_loopback_mux_lb_over_user_data_in <= roachf_1024_bao_loopback_loopback_mux_lb_over_user_data_in_net;
  roachf_1024_bao_loopback_loopback_mux_lb_und_user_data_in <= roachf_1024_bao_loopback_loopback_mux_lb_und_user_data_in_net;
  roachf_1024_bao_loopback_rx_cnt_user_data_in <= roachf_1024_bao_loopback_rx_cnt_user_data_in_net;
  roachf_1024_bao_loopback_rx_err_cnt_user_data_in <= roachf_1024_bao_loopback_rx_err_cnt_user_data_in_net;
  roachf_1024_bao_loopback_rx_pkt_fifo_santa_2big_user_data_in <= roachf_1024_bao_loopback_rx_pkt_fifo_santa_2big_user_data_in_net;
  roachf_1024_bao_loopback_rx_pkt_fifo_santa_2small_user_data_in <= roachf_1024_bao_loopback_rx_pkt_fifo_santa_2small_user_data_in_net;
  roachf_1024_bao_status_gbe_gpu_user_data_in <= roachf_1024_bao_status_gbe_gpu_user_data_in_net;
  roachf_1024_bao_status_gbe_sw_user_data_in <= roachf_1024_bao_status_gbe_sw_user_data_in_net;
  roachf_1024_bao_status_swgbe_bframe_user_data_in <= roachf_1024_bao_status_swgbe_bframe_user_data_in_net;
  roachf_1024_bao_status_swgbe_oflow_user_data_in <= roachf_1024_bao_status_swgbe_oflow_user_data_in_net;
  roachf_1024_bao_status_swgbe_orun_user_data_in <= roachf_1024_bao_status_swgbe_orun_user_data_in_net;
  roachf_1024_bao_switch_10gbetxsnap_addr_user_data_in <= roachf_1024_bao_switch_10gbetxsnap_addr_user_data_in_net;
  roachf_1024_bao_switch_10gbetxsnap_bram_lsb_addr <= roachf_1024_bao_switch_10gbetxsnap_bram_lsb_addr_net;
  roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_in <= roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_in_net;
  roachf_1024_bao_switch_10gbetxsnap_bram_lsb_we <= roachf_1024_bao_switch_10gbetxsnap_bram_lsb_we_net;
  roachf_1024_bao_switch_10gbetxsnap_bram_msb_addr <= roachf_1024_bao_switch_10gbetxsnap_bram_msb_addr_net;
  roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_in <= roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_in_net;
  roachf_1024_bao_switch_10gbetxsnap_bram_msb_we <= roachf_1024_bao_switch_10gbetxsnap_bram_msb_we_net;
  roachf_1024_bao_switch_10gbetxsnap_bram_oob_addr <= roachf_1024_bao_switch_10gbetxsnap_bram_oob_addr_net;
  roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_in <= roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_in_net;
  roachf_1024_bao_switch_10gbetxsnap_bram_oob_we <= roachf_1024_bao_switch_10gbetxsnap_bram_oob_we_net;
  roachf_1024_bao_switch_gbe3_rst <= roachf_1024_bao_switch_gbe3_rst_net;
  roachf_1024_bao_switch_gbe3_rx_ack <= roachf_1024_bao_switch_gbe3_rx_ack_net;
  roachf_1024_bao_switch_gbe3_rx_overrun_ack <= roachf_1024_bao_switch_gbe3_rx_overrun_ack_net;
  roachf_1024_bao_switch_gbe3_tx_data <= roachf_1024_bao_switch_gbe3_tx_data_net;
  roachf_1024_bao_switch_gbe3_tx_dest_ip <= roachf_1024_bao_switch_gbe3_tx_dest_ip_net;
  roachf_1024_bao_switch_gbe3_tx_dest_port <= roachf_1024_bao_switch_gbe3_tx_dest_port_net;
  roachf_1024_bao_switch_gbe3_tx_end_of_frame <= roachf_1024_bao_switch_gbe3_tx_end_of_frame_net;
  roachf_1024_bao_switch_gbe3_tx_valid <= roachf_1024_bao_switch_gbe3_tx_valid_net;
  roachf_1024_bao_transpose_qdr_reorder1_qdr_address <= roachf_1024_bao_transpose_qdr_reorder1_qdr_address_net;
  roachf_1024_bao_transpose_qdr_reorder1_qdr_be <= roachf_1024_bao_transpose_qdr_reorder1_qdr_be_net;
  roachf_1024_bao_transpose_qdr_reorder1_qdr_data_in <= roachf_1024_bao_transpose_qdr_reorder1_qdr_data_in_net;
  roachf_1024_bao_transpose_qdr_reorder1_qdr_rd_en <= roachf_1024_bao_transpose_qdr_reorder1_qdr_rd_en_net;
  roachf_1024_bao_transpose_qdr_reorder1_qdr_wr_en <= roachf_1024_bao_transpose_qdr_reorder1_qdr_wr_en_net;
  roachf_1024_bao_transpose_qdr_reorder_qdr_address <= roachf_1024_bao_transpose_qdr_reorder_qdr_address_net;
  roachf_1024_bao_transpose_qdr_reorder_qdr_be <= roachf_1024_bao_transpose_qdr_reorder_qdr_be_net;
  roachf_1024_bao_transpose_qdr_reorder_qdr_data_in <= roachf_1024_bao_transpose_qdr_reorder_qdr_data_in_net;
  roachf_1024_bao_transpose_qdr_reorder_qdr_rd_en <= roachf_1024_bao_transpose_qdr_reorder_qdr_rd_en_net;
  roachf_1024_bao_transpose_qdr_reorder_qdr_wr_en <= roachf_1024_bao_transpose_qdr_reorder_qdr_wr_en_net;

  adc_s_f0dd80136b: entity work.adc_s_entity_f0dd80136b
    port map (
      ce_1 => ce_1_sg_x213,
      clk_1 => clk_1_sg_x213,
      roachf_1024_bao_adc_s_adc1_user_datai0 => roachf_1024_bao_adc_s_adc1_user_datai0_net,
      roachf_1024_bao_adc_s_adc1_user_datai1 => roachf_1024_bao_adc_s_adc1_user_datai1_net,
      roachf_1024_bao_adc_s_adc1_user_datai2 => roachf_1024_bao_adc_s_adc1_user_datai2_net,
      roachf_1024_bao_adc_s_adc1_user_datai3 => roachf_1024_bao_adc_s_adc1_user_datai3_net,
      roachf_1024_bao_adc_s_adc1_user_dataq0 => roachf_1024_bao_adc_s_adc1_user_dataq0_net,
      roachf_1024_bao_adc_s_adc1_user_dataq1 => roachf_1024_bao_adc_s_adc1_user_dataq1_net,
      roachf_1024_bao_adc_s_adc1_user_dataq2 => roachf_1024_bao_adc_s_adc1_user_dataq2_net,
      roachf_1024_bao_adc_s_adc1_user_dataq3 => roachf_1024_bao_adc_s_adc1_user_dataq3_net,
      roachf_1024_bao_adc_s_adc1_user_sync0 => roachf_1024_bao_adc_s_adc1_user_sync0_net,
      roachf_1024_bao_adc_s_adc1_user_sync1 => roachf_1024_bao_adc_s_adc1_user_sync1_net,
      roachf_1024_bao_adc_s_adc1_user_sync2 => roachf_1024_bao_adc_s_adc1_user_sync2_net,
      roachf_1024_bao_adc_s_adc1_user_sync3 => roachf_1024_bao_adc_s_adc1_user_sync3_net,
      roachf_1024_bao_adc_s_adc_user_datai0 => roachf_1024_bao_adc_s_adc_user_datai0_net,
      roachf_1024_bao_adc_s_adc_user_datai1 => roachf_1024_bao_adc_s_adc_user_datai1_net,
      roachf_1024_bao_adc_s_adc_user_datai2 => roachf_1024_bao_adc_s_adc_user_datai2_net,
      roachf_1024_bao_adc_s_adc_user_datai3 => roachf_1024_bao_adc_s_adc_user_datai3_net,
      roachf_1024_bao_adc_s_adc_user_dataq0 => roachf_1024_bao_adc_s_adc_user_dataq0_net,
      roachf_1024_bao_adc_s_adc_user_dataq1 => roachf_1024_bao_adc_s_adc_user_dataq1_net,
      roachf_1024_bao_adc_s_adc_user_dataq2 => roachf_1024_bao_adc_s_adc_user_dataq2_net,
      roachf_1024_bao_adc_s_adc_user_dataq3 => roachf_1024_bao_adc_s_adc_user_dataq3_net,
      roachf_1024_bao_adc_s_adc_user_sync0 => roachf_1024_bao_adc_s_adc_user_sync0_net,
      roachf_1024_bao_adc_s_adc_user_sync1 => roachf_1024_bao_adc_s_adc_user_sync1_net,
      roachf_1024_bao_adc_s_adc_user_sync2 => roachf_1024_bao_adc_s_adc_user_sync2_net,
      roachf_1024_bao_adc_s_adc_user_sync3 => roachf_1024_bao_adc_s_adc_user_sync3_net,
      adc0_pol0 => delay_q_net_x2,
      adc0_pol1 => delay1_q_net_x6,
      adc0_sync => delay9_q_net_x1,
      adc1_pol0 => delay10_q_net_x2,
      adc1_pol1 => delay11_q_net_x2,
      adc1_sync => delay14_q_net_x1
    );

  delay_d3ad252e0c: entity work.delay_entity_d3ad252e0c
    port map (
      roachf_1024_bao_delay_values_user_data_out => roachf_1024_bao_delay_values_user_data_out_net,
      delay0 => bitbasher_delay0_net_x2,
      delay1 => bitbasher_delay1_net_x2,
      delay2 => bitbasher_delay2_net_x2,
      delay3 => bitbasher_delay3_net_x2
    );

  eq_f4312da414: entity work.eq_entity_f4312da414
    port map (
      ce_1 => ce_1_sg_x213,
      clk_1 => clk_1_sg_x213,
      fft0 => fft2_2048ch_out0_net_x2,
      fft1 => fft2_2048ch_out1_net_x2,
      fft2 => fft2_2048ch1_out0_net_x2,
      fft3 => fft2_2048ch1_out1_net_x2,
      fft4 => fft2_2048ch2_out0_net_x2,
      fft5 => fft2_2048ch2_out1_net_x2,
      fft6 => fft2_2048ch3_out0_net_x2,
      fft7 => fft2_2048ch3_out1_net_x2,
      roachf_1024_bao_eq_quant0_addr_user_data_out => roachf_1024_bao_eq_quant0_addr_user_data_out_net,
      roachf_1024_bao_eq_quant0_gain_user_data_out => roachf_1024_bao_eq_quant0_gain_user_data_out_net,
      roachf_1024_bao_eq_quant1_addr_user_data_out => roachf_1024_bao_eq_quant1_addr_user_data_out_net,
      roachf_1024_bao_eq_quant1_gain_user_data_out => roachf_1024_bao_eq_quant1_gain_user_data_out_net,
      roachf_1024_bao_eq_quant2_addr_user_data_out => roachf_1024_bao_eq_quant2_addr_user_data_out_net,
      roachf_1024_bao_eq_quant2_gain_user_data_out => roachf_1024_bao_eq_quant2_gain_user_data_out_net,
      roachf_1024_bao_eq_quant3_addr_user_data_out => roachf_1024_bao_eq_quant3_addr_user_data_out_net,
      roachf_1024_bao_eq_quant3_gain_user_data_out => roachf_1024_bao_eq_quant3_gain_user_data_out_net,
      sync_fft0 => fft2_2048ch_sync_out_net_x9,
      eq_clip => logical5_y_net_x1,
      eq_out => concat3_y_net_x2,
      sync_rnd => delay19_q_net_x3
    );

  gpu_053cfe3f50: entity work.gpu_entity_053cfe3f50
    port map (
      ce_1 => ce_1_sg_x213,
      clk_1 => clk_1_sg_x213,
      gbe_gpu_disable => slice12_y_net_x1,
      gbe_gpu_rst => slice10_y_net_x2,
      gpu_ip => delay6_q_net_x2,
      gpu_port => delay7_q_net_x2,
      lb_mux_data => dout_x2,
      lb_mux_eof => eof_out_x2,
      lb_mux_valid => validout_x2,
      gbe2 => roachf_1024_bao_gpu_gbe2_rst_net,
      gbe2_x0 => roachf_1024_bao_gpu_gbe2_rx_ack_net,
      gbe2_x1 => roachf_1024_bao_gpu_gbe2_rx_overrun_ack_net,
      gbe2_x2 => roachf_1024_bao_gpu_gbe2_tx_data_net,
      gbe2_x3 => roachf_1024_bao_gpu_gbe2_tx_dest_ip_net,
      gbe2_x4 => roachf_1024_bao_gpu_gbe2_tx_end_of_frame_net,
      gbe2_x5 => roachf_1024_bao_gpu_gbe2_tx_dest_port_net,
      gbe2_x6 => roachf_1024_bao_gpu_gbe2_tx_valid_net
    );

  input_419054c073: entity work.input_entity_419054c073
    port map (
      roachf_1024_bao_input_selector_user_data_out => roachf_1024_bao_input_selector_user_data_out_net,
      insel0 => bitbasher_insel0_net_x2,
      insel1 => bitbasher_insel1_net_x2,
      insel2 => bitbasher_insel2_net_x2,
      insel3 => bitbasher_insel3_net_x2
    );

  input_mux_0d9ee34ec0: entity work.input_mux_entity_0d9ee34ec0
    port map (
      adc0_pol0 => delay_q_net_x2,
      adc0_pol1 => delay1_q_net_x6,
      adc1_pol0 => delay10_q_net_x2,
      adc1_pol1 => delay11_q_net_x2,
      ce_1 => ce_1_sg_x213,
      clk_1 => clk_1_sg_x213,
      delay0 => bitbasher_delay0_net_x2,
      delay1_x0 => bitbasher_delay1_net_x2,
      delay2_x0 => bitbasher_delay2_net_x2,
      delay3_x0 => bitbasher_delay3_net_x2,
      insel0 => bitbasher_insel0_net_x2,
      insel1 => bitbasher_insel1_net_x2,
      insel2 => bitbasher_insel2_net_x2,
      insel3 => bitbasher_insel3_net_x2,
      n0 => delay2_q_net_x5,
      n1 => delay1_q_net_x7,
      sync_gen => logical_y_net_x23,
      in0 => delay1_q_net_x3,
      in1 => delay2_q_net_x6,
      in2 => delay3_q_net_x3,
      in3 => delay4_q_net_x3,
      pfb_sync => delay5_q_net_x1
    );

  leds_dca6373a98: entity work.leds_entity_dca6373a98
    port map (
      armed => inverter_op_net_x2,
      ce_1 => ce_1_sg_x213,
      clk_1 => clk_1_sg_x213,
      eq_clip => logical5_y_net_x1,
      sync_gen => logical_y_net_x23,
      led1_arm => roachf_1024_bao_leds_led1_arm_gateway_net,
      led2_sync => roachf_1024_bao_leds_led2_sync_gateway_net,
      led4_eq_clip => roachf_1024_bao_leds_led4_eq_clip_gateway_net
    );

  loopback_e3d9044413: entity work.loopback_entity_e3d9044413
    port map (
      ce_1 => ce_1_sg_x213,
      clk_1 => clk_1_sg_x213,
      cnt_rst => slice4_y_net_x8,
      gbe_sw_eof => roachf_1024_bao_switch_gbe3_rx_end_of_frame_net,
      gbe_sw_rx => roachf_1024_bao_switch_gbe3_rx_data_net,
      gbe_sw_rx_valid => roachf_1024_bao_switch_gbe3_rx_valid_net,
      gbe_sw_tx_data => register_q_net_x5,
      gbe_sw_tx_eof => register3_q_net_x5,
      gbe_sw_tx_ip => slice2_y_net_x5,
      gbe_sw_valid_tx => logical_y_net_x4,
      my_ip => delay4_q_net_x2,
      lb_mux_data => dout_x2,
      lb_mux_eof => eof_out_x2,
      lb_mux_valid => validout_x2,
      loop_cnt => roachf_1024_bao_loopback_loop_cnt_user_data_in_net,
      loop_err_cnt => roachf_1024_bao_loopback_loop_err_cnt_user_data_in_net,
      loopback_fifo => roachf_1024_bao_loopback_loopback_fifo_lb_err_cnt_user_data_in_net,
      loopback_mux => roachf_1024_bao_loopback_loopback_mux_gbe_over_user_data_in_net,
      loopback_mux_x0 => roachf_1024_bao_loopback_loopback_mux_gbe_und_user_data_in_net,
      loopback_mux_x1 => roachf_1024_bao_loopback_loopback_mux_lb_over_user_data_in_net,
      loopback_mux_x2 => roachf_1024_bao_loopback_loopback_mux_lb_und_user_data_in_net,
      rx_cnt => roachf_1024_bao_loopback_rx_cnt_user_data_in_net,
      rx_err_cnt => roachf_1024_bao_loopback_rx_err_cnt_user_data_in_net,
      rx_pkt_fifo => roachf_1024_bao_loopback_rx_pkt_fifo_santa_2big_user_data_in_net,
      rx_pkt_fifo_x0 => roachf_1024_bao_loopback_rx_pkt_fifo_santa_2small_user_data_in_net
    );

  pfbs_5b3a77ef5c: entity work.pfbs_entity_5b3a77ef5c
    port map (
      ce_1 => ce_1_sg_x213,
      clk_1 => clk_1_sg_x213,
      fft_shift => slice21_y_net_x1,
      in0 => delay1_q_net_x3,
      in1 => delay2_q_net_x6,
      in2 => delay3_q_net_x3,
      in3 => delay4_q_net_x3,
      pfb_sync => delay5_q_net_x1,
      fft0 => fft2_2048ch_out0_net_x2,
      fft1 => fft2_2048ch_out1_net_x2,
      fft2 => fft2_2048ch1_out0_net_x2,
      fft3 => fft2_2048ch1_out1_net_x2,
      fft4 => fft2_2048ch2_out0_net_x2,
      fft5 => fft2_2048ch2_out1_net_x2,
      fft6 => fft2_2048ch3_out0_net_x2,
      fft7 => fft2_2048ch3_out1_net_x2,
      sync_fft0 => fft2_2048ch_sync_out_net_x9
    );

  seed_ed487ed0f0: entity work.seed_entity_ed487ed0f0
    port map (
      arm_rst => slice7_y_net_x6,
      ce_1 => ce_1_sg_x213,
      clk_1 => clk_1_sg_x213,
      roachf_1024_bao_seed_data_user_data_out => roachf_1024_bao_seed_data_user_data_out_net,
      sync_gen => logical_y_net_x23,
      seed0 => bitbasher_seed0_net_x5,
      seed1 => bitbasher_seed1_net_x5,
      seed2 => bitbasher_seed2_net_x5,
      seed3 => bitbasher_seed3_net_x5,
      seed_ld => logical_y_net_x24
    );

  status_862e12a4dd: entity work.status_entity_862e12a4dd
    port map (
      ce_1 => ce_1_sg_x213,
      clk_1 => clk_1_sg_x213,
      cnt_rst => slice4_y_net_x8,
      gbe_gpu_led_rx => roachf_1024_bao_gpu_gbe2_led_rx_net,
      gbe_gpu_led_tx => roachf_1024_bao_gpu_gbe2_led_tx_net,
      gbe_gpu_led_up => roachf_1024_bao_gpu_gbe2_led_up_net,
      gbe_gpu_rx_eof => roachf_1024_bao_gpu_gbe2_rx_end_of_frame_net,
      gbe_gpu_rx_valid => roachf_1024_bao_gpu_gbe2_rx_valid_net,
      gbe_gpu_tx_ack => roachf_1024_bao_gpu_gbe2_tx_afull_net,
      gbe_sw_led_rx => roachf_1024_bao_switch_gbe3_led_rx_net,
      gbe_sw_led_tx => roachf_1024_bao_switch_gbe3_led_tx_net,
      gbe_sw_led_up => roachf_1024_bao_switch_gbe3_led_up_net,
      gbe_sw_rx_bfr => roachf_1024_bao_switch_gbe3_rx_bad_frame_net,
      gbe_sw_rx_orun => roachf_1024_bao_switch_gbe3_rx_overrun_net,
      gbe_sw_tx_afull => roachf_1024_bao_switch_gbe3_tx_afull_net,
      gbe_sw_tx_oflow => roachf_1024_bao_switch_gbe3_tx_overflow_net,
      gbe_gpu => roachf_1024_bao_status_gbe_gpu_user_data_in_net,
      gbe_sw => roachf_1024_bao_status_gbe_sw_user_data_in_net,
      swgbe_bframe => roachf_1024_bao_status_swgbe_bframe_user_data_in_net,
      swgbe_oflow => roachf_1024_bao_status_swgbe_oflow_user_data_in_net,
      swgbe_orun => roachf_1024_bao_status_swgbe_orun_user_data_in_net
    );

  switch_e19760fbab: entity work.switch_entity_e19760fbab
    port map (
      ant1_pol12_reorder => register0_q_net_x11,
      ant2_pol12_reorder => register0_q_net_x10,
      ant_base_offset => delay2_q_net_x2,
      ce_1 => ce_1_sg_x213,
      clk_1 => clk_1_sg_x213,
      gbe_sw_disable => slice11_y_net_x1,
      gbe_sw_led_tx => roachf_1024_bao_switch_gbe3_led_tx_net,
      gbe_sw_led_up => roachf_1024_bao_switch_gbe3_led_up_net,
      gbe_sw_rst => slice5_y_net_x2,
      gbe_sw_tx_afull => roachf_1024_bao_switch_gbe3_tx_afull_net,
      gbe_sw_tx_oflow => roachf_1024_bao_switch_gbe3_tx_overflow_net,
      ip_base => delay3_q_net_x2,
      mrst => mux_y_net_x5,
      port_x0 => delay5_q_net_x2,
      roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out => roachf_1024_bao_switch_10gbetxsnap_ctrl_user_data_out_net,
      sync_reorder => register0_q_net_x9,
      gbe3 => roachf_1024_bao_switch_gbe3_rst_net,
      gbe3_x0 => roachf_1024_bao_switch_gbe3_rx_ack_net,
      gbe3_x1 => roachf_1024_bao_switch_gbe3_rx_overrun_ack_net,
      gbe3_x2 => roachf_1024_bao_switch_gbe3_tx_data_net,
      gbe3_x3 => roachf_1024_bao_switch_gbe3_tx_dest_ip_net,
      gbe3_x4 => roachf_1024_bao_switch_gbe3_tx_end_of_frame_net,
      gbe3_x5 => roachf_1024_bao_switch_gbe3_tx_dest_port_net,
      gbe3_x6 => roachf_1024_bao_switch_gbe3_tx_valid_net,
      gbe_sw_tx_data => register_q_net_x5,
      gbe_sw_tx_eof => register3_q_net_x5,
      gbe_sw_tx_ip => slice2_y_net_x5,
      gbe_sw_valid_tx => logical_y_net_x4,
      x10gbetxsnap => roachf_1024_bao_switch_10gbetxsnap_addr_user_data_in_net,
      x10gbetxsnap_x0 => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_addr_net,
      x10gbetxsnap_x1 => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_data_in_net,
      x10gbetxsnap_x2 => roachf_1024_bao_switch_10gbetxsnap_bram_lsb_we_net,
      x10gbetxsnap_x3 => roachf_1024_bao_switch_10gbetxsnap_bram_msb_addr_net,
      x10gbetxsnap_x4 => roachf_1024_bao_switch_10gbetxsnap_bram_msb_data_in_net,
      x10gbetxsnap_x5 => roachf_1024_bao_switch_10gbetxsnap_bram_msb_we_net,
      x10gbetxsnap_x6 => roachf_1024_bao_switch_10gbetxsnap_bram_oob_addr_net,
      x10gbetxsnap_x7 => roachf_1024_bao_switch_10gbetxsnap_bram_oob_data_in_net,
      x10gbetxsnap_x8 => roachf_1024_bao_switch_10gbetxsnap_bram_oob_we_net
    );

  timebase_9c465eac4b: entity work.timebase_entity_9c465eac4b
    port map (
      adc0_sync => delay9_q_net_x1,
      adc1_sync => delay14_q_net_x1,
      arm_rst => slice7_y_net_x6,
      ce_1 => ce_1_sg_x213,
      clk_1 => clk_1_sg_x213,
      sync_rst => slice6_y_net_x1,
      armed => inverter_op_net_x2,
      mrst => mux_y_net_x5,
      sync_gen => logical_y_net_x23
    );

  transpose_392290f6fe: entity work.transpose_entity_392290f6fe
    port map (
      ce_1 => ce_1_sg_x213,
      clk_1 => clk_1_sg_x213,
      eq_out => concat3_y_net_x2,
      roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out => roachf_1024_bao_transpose_qdr_reorder1_qdr_data_out_net,
      roachf_1024_bao_transpose_qdr_reorder_qdr_data_out => roachf_1024_bao_transpose_qdr_reorder_qdr_data_out_net,
      sync_rnd => delay19_q_net_x3,
      ant1_pol12_reorder => register0_q_net_x11,
      ant2_pol12_reorder => register0_q_net_x10,
      qdr_reorder => roachf_1024_bao_transpose_qdr_reorder_qdr_data_in_net,
      qdr_reorder1 => roachf_1024_bao_transpose_qdr_reorder1_qdr_data_in_net,
      qdr_reorder1_x0 => roachf_1024_bao_transpose_qdr_reorder1_qdr_address_net,
      qdr_reorder1_x1 => roachf_1024_bao_transpose_qdr_reorder1_qdr_be_net,
      qdr_reorder1_x2 => roachf_1024_bao_transpose_qdr_reorder1_qdr_rd_en_net,
      qdr_reorder1_x3 => roachf_1024_bao_transpose_qdr_reorder1_qdr_wr_en_net,
      qdr_reorder_x0 => roachf_1024_bao_transpose_qdr_reorder_qdr_address_net,
      qdr_reorder_x1 => roachf_1024_bao_transpose_qdr_reorder_qdr_be_net,
      qdr_reorder_x2 => roachf_1024_bao_transpose_qdr_reorder_qdr_rd_en_net,
      qdr_reorder_x3 => roachf_1024_bao_transpose_qdr_reorder_qdr_wr_en_net,
      sync_reorder => register0_q_net_x9
    );

  wgns_141b1491ee: entity work.wgns_entity_141b1491ee
    port map (
      ce_1 => ce_1_sg_x213,
      clk_1 => clk_1_sg_x213,
      seed0 => bitbasher_seed0_net_x5,
      seed1 => bitbasher_seed1_net_x5,
      seed2 => bitbasher_seed2_net_x5,
      seed3 => bitbasher_seed3_net_x5,
      seed_ld => logical_y_net_x24,
      n0 => delay2_q_net_x5,
      n1 => delay1_q_net_x7
    );

  x_5fb5868062: entity work.x_entity_5fb5868062
    port map (
      ce_1 => ce_1_sg_x213,
      clk_1 => clk_1_sg_x213,
      roachf_1024_bao_ant_base_user_data_out => roachf_1024_bao_ant_base_user_data_out_net,
      roachf_1024_bao_feng_ctl_user_data_out => roachf_1024_bao_feng_ctl_user_data_out_net,
      roachf_1024_bao_fft_shift_user_data_out => roachf_1024_bao_fft_shift_user_data_out_net,
      roachf_1024_bao_gbe_sw_port_user_data_out => roachf_1024_bao_gbe_sw_port_user_data_out_net,
      roachf_1024_bao_gpu_ip_user_data_out => roachf_1024_bao_gpu_ip_user_data_out_net,
      roachf_1024_bao_gpu_port_user_data_out => roachf_1024_bao_gpu_port_user_data_out_net,
      roachf_1024_bao_ip_base_user_data_out => roachf_1024_bao_ip_base_user_data_out_net,
      roachf_1024_bao_my_ip_user_data_out => roachf_1024_bao_my_ip_user_data_out_net,
      ant_base_offset => delay2_q_net_x2,
      arm_rst => slice7_y_net_x6,
      cnt_rst => slice4_y_net_x8,
      fft_shift => slice21_y_net_x1,
      gbe_gpu_disable => slice12_y_net_x1,
      gbe_gpu_rst => slice10_y_net_x2,
      gbe_sw_disable => slice11_y_net_x1,
      gbe_sw_rst => slice5_y_net_x2,
      gpu_ip => delay6_q_net_x2,
      gpu_port => delay7_q_net_x2,
      ip_base => delay3_q_net_x2,
      my_ip => delay4_q_net_x2,
      port_x0 => delay5_q_net_x2,
      sync_rst => slice6_y_net_x1
    );

end structural;
