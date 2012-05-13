library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/bi_real_unscr_4x/delay_bram0"

entity delay_bram0_entity_d40c32b9c6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0)
  );
end delay_bram0_entity_d40c32b9c6;

architecture structural of delay_bram0_entity_d40c32b9c6 is
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal concat_y_net_x0: std_logic_vector(35 downto 0);
  signal constant2_op_net: std_logic;
  signal counter_op_net: std_logic_vector(7 downto 0);
  signal single_port_ram_data_out_net_x0: std_logic_vector(35 downto 0);

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  concat_y_net_x0 <= in1;
  out1 <= single_port_ram_data_out_net_x0;

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 251,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_df2bb90b8fe02ecf",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  single_port_ram: entity work.xlspram
    generic map (
      c_address_width => 8,
      c_width => 36,
      core_name0 => "bmg_62_f1ca57bbf79f0673",
      latency => 3
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      data_in => concat_y_net_x0,
      en => "1",
      rst => "0",
      we(0) => constant2_op_net,
      data_out => single_port_ram_data_out_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/bi_real_unscr_4x/hilbert_dsp48e0/c_to_ri0"

entity c_to_ri0_entity_68a06d3127 is
  port (
    c: in std_logic_vector(35 downto 0); 
    im: out std_logic_vector(17 downto 0); 
    re: out std_logic_vector(17 downto 0)
  );
end c_to_ri0_entity_68a06d3127;

architecture structural of c_to_ri0_entity_68a06d3127 is
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal mux0_y_net_x0: std_logic_vector(35 downto 0);
  signal slice_im_y_net: std_logic_vector(17 downto 0);
  signal slice_re_y_net: std_logic_vector(17 downto 0);

begin
  mux0_y_net_x0 <= c;
  im <= force_im_output_port_net_x0;
  re <= force_re_output_port_net_x0;

  force_im: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_im_y_net,
      output_port => force_im_output_port_net_x0
    );

  force_re: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_re_y_net,
      output_port => force_re_output_port_net_x0
    );

  slice_im: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => mux0_y_net_x0,
      y => slice_im_y_net
    );

  slice_re: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 35,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => mux0_y_net_x0,
      y => slice_re_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/bi_real_unscr_4x/hilbert_dsp48e0/cadd"

entity cadd_entity_3ec5ae5a4e is
  port (
    a_im: in std_logic_vector(17 downto 0); 
    a_re: in std_logic_vector(17 downto 0); 
    b_im: in std_logic_vector(17 downto 0); 
    b_re: in std_logic_vector(17 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    c_im: out std_logic_vector(18 downto 0); 
    c_re: out std_logic_vector(18 downto 0)
  );
end cadd_entity_3ec5ae5a4e;

architecture structural of cadd_entity_3ec5ae5a4e is
  signal alumode_op_net: std_logic_vector(3 downto 0);
  signal carryin_op_net: std_logic;
  signal carryinsel_op_net: std_logic_vector(2 downto 0);
  signal cast_c_im_dout_net_x0: std_logic_vector(18 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(18 downto 0);
  signal ce_1_sg_x2: std_logic;
  signal clk_1_sg_x2: std_logic;
  signal concat_a_y_net: std_logic_vector(47 downto 0);
  signal concat_b_y_net: std_logic_vector(47 downto 0);
  signal dsp48e_p_net: std_logic_vector(47 downto 0);
  signal force_im_output_port_net_x2: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x2: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal opmode_op_net: std_logic_vector(6 downto 0);
  signal realign_a_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_a_re_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_re_dout_net: std_logic_vector(23 downto 0);
  signal reinterp_a_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_a_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterpret_a_output_port_net: std_logic_vector(29 downto 0);
  signal reinterpret_b_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret_c_output_port_net: std_logic_vector(47 downto 0);
  signal slice_a_y_net: std_logic_vector(29 downto 0);
  signal slice_b_y_net: std_logic_vector(17 downto 0);
  signal slice_c_im_y_net: std_logic_vector(23 downto 0);
  signal slice_c_re_y_net: std_logic_vector(23 downto 0);

begin
  force_im_output_port_net_x2 <= a_im;
  force_re_output_port_net_x2 <= a_re;
  force_im_output_port_net_x3 <= b_im;
  force_re_output_port_net_x3 <= b_re;
  ce_1_sg_x2 <= ce_1;
  clk_1_sg_x2 <= clk_1;
  c_im <= cast_c_im_dout_net_x0;
  c_re <= cast_c_re_dout_net_x0;

  alumode: entity work.constant_4c449dd556
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => alumode_op_net
    );

  carryin: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => carryin_op_net
    );

  carryinsel: entity work.constant_822933f89b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => carryinsel_op_net
    );

  cast_c_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 22,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 19,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      din => reinterp_c_im_output_port_net,
      en => "1",
      dout => cast_c_im_dout_net_x0
    );

  cast_c_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 22,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 19,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      din => reinterp_c_re_output_port_net,
      en => "1",
      dout => cast_c_re_dout_net_x0
    );

  concat_a: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_a_re_output_port_net,
      in1 => reinterp_a_im_output_port_net,
      y => concat_a_y_net
    );

  concat_b: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_b_re_output_port_net,
      in1 => reinterp_b_im_output_port_net,
      y => concat_b_y_net
    );

  dsp48e: entity work.xldsp48e
    generic map (
      a_input => "DIRECT",
      acascreg => 1,
      alumodereg => 1,
      areg => 1,
      autoreset_pattern_detect => FALSE,
      autoreset_pattern_detect_optinv => "MATCH",
      b_input => "DIRECT",
      bcascreg => 1,
      breg => 1,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      mreg => 1,
      opmodereg => 1,
      preg => 1,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_mult => "MULT_S",
      use_op => 0,
      use_pattern_detect => "NO_PATDET",
      use_simd => "TWO24"
    )
    port map (
      a => reinterpret_a_output_port_net,
      alumode => alumode_op_net,
      b => reinterpret_b_output_port_net,
      c => reinterpret_c_output_port_net,
      carryin(0) => carryin_op_net,
      carryinsel => carryinsel_op_net,
      ce => ce_1_sg_x2,
      cea1 => "1",
      cea2 => "1",
      cealumode => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cecarryin => "1",
      cectrl => "1",
      cem => "1",
      cemultcarryin => "1",
      cep => "1",
      clk => clk_1_sg_x2,
      en => "1",
      opmode => opmode_op_net,
      rst => "0",
      rsta => "0",
      rstalumode => "0",
      rstb => "0",
      rstc => "0",
      rstcarryin => "0",
      rstctrl => "0",
      rstm => "0",
      rstp => "0",
      p => dsp48e_p_net
    );

  opmode: entity work.constant_270746ab47
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => opmode_op_net
    );

  realign_a_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 22,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      din => force_im_output_port_net_x2,
      en => "1",
      dout => realign_a_im_dout_net
    );

  realign_a_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 22,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      din => force_re_output_port_net_x2,
      en => "1",
      dout => realign_a_re_dout_net
    );

  realign_b_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 22,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      din => force_im_output_port_net_x3,
      en => "1",
      dout => realign_b_im_dout_net
    );

  realign_b_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 22,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      din => force_re_output_port_net_x3,
      en => "1",
      dout => realign_b_re_dout_net
    );

  reinterp_a_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_im_dout_net,
      output_port => reinterp_a_im_output_port_net
    );

  reinterp_a_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_re_dout_net,
      output_port => reinterp_a_re_output_port_net
    );

  reinterp_b_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_im_dout_net,
      output_port => reinterp_b_im_output_port_net
    );

  reinterp_b_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_re_dout_net,
      output_port => reinterp_b_re_output_port_net
    );

  reinterp_c_im: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_im_y_net,
      output_port => reinterp_c_im_output_port_net
    );

  reinterp_c_re: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_re_y_net,
      output_port => reinterp_c_re_output_port_net
    );

  reinterpret_a: entity work.reinterpret_eb03bc3377
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_a_y_net,
      output_port => reinterpret_a_output_port_net
    );

  reinterpret_b: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_b_y_net,
      output_port => reinterpret_b_output_port_net
    );

  reinterpret_c: entity work.reinterpret_7ea107432a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_a_y_net,
      output_port => reinterpret_c_output_port_net
    );

  slice_a: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 47,
      x_width => 48,
      y_width => 30
    )
    port map (
      x => concat_b_y_net,
      y => slice_a_y_net
    );

  slice_b: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 48,
      y_width => 18
    )
    port map (
      x => concat_b_y_net,
      y => slice_b_y_net
    );

  slice_c_im: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 23,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_im_y_net
    );

  slice_c_re: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 47,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_re_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/bi_real_unscr_4x/hilbert_dsp48e0/csub"

entity csub_entity_8f454f3efc is
  port (
    a_im: in std_logic_vector(17 downto 0); 
    a_re: in std_logic_vector(17 downto 0); 
    b_im: in std_logic_vector(17 downto 0); 
    b_re: in std_logic_vector(17 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    c_im: out std_logic_vector(18 downto 0); 
    c_re: out std_logic_vector(18 downto 0)
  );
end csub_entity_8f454f3efc;

architecture structural of csub_entity_8f454f3efc is
  signal alumode_op_net: std_logic_vector(3 downto 0);
  signal carryin_op_net: std_logic;
  signal carryinsel_op_net: std_logic_vector(2 downto 0);
  signal cast_c_im_dout_net_x0: std_logic_vector(18 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(18 downto 0);
  signal ce_1_sg_x3: std_logic;
  signal clk_1_sg_x3: std_logic;
  signal concat_a_y_net: std_logic_vector(47 downto 0);
  signal concat_b_y_net: std_logic_vector(47 downto 0);
  signal dsp48e_p_net: std_logic_vector(47 downto 0);
  signal force_im_output_port_net_x4: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x5: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x4: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x5: std_logic_vector(17 downto 0);
  signal opmode_op_net: std_logic_vector(6 downto 0);
  signal realign_a_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_a_re_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_re_dout_net: std_logic_vector(23 downto 0);
  signal reinterp_a_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_a_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterpret_a_output_port_net: std_logic_vector(29 downto 0);
  signal reinterpret_b_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret_c_output_port_net: std_logic_vector(47 downto 0);
  signal slice_a_y_net: std_logic_vector(29 downto 0);
  signal slice_b_y_net: std_logic_vector(17 downto 0);
  signal slice_c_im_y_net: std_logic_vector(23 downto 0);
  signal slice_c_re_y_net: std_logic_vector(23 downto 0);

begin
  force_re_output_port_net_x5 <= a_im;
  force_im_output_port_net_x4 <= a_re;
  force_re_output_port_net_x4 <= b_im;
  force_im_output_port_net_x5 <= b_re;
  ce_1_sg_x3 <= ce_1;
  clk_1_sg_x3 <= clk_1;
  c_im <= cast_c_im_dout_net_x0;
  c_re <= cast_c_re_dout_net_x0;

  alumode: entity work.constant_8038205d89
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => alumode_op_net
    );

  carryin: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => carryin_op_net
    );

  carryinsel: entity work.constant_822933f89b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => carryinsel_op_net
    );

  cast_c_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 22,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 19,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      din => reinterp_c_im_output_port_net,
      en => "1",
      dout => cast_c_im_dout_net_x0
    );

  cast_c_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 22,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 19,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      din => reinterp_c_re_output_port_net,
      en => "1",
      dout => cast_c_re_dout_net_x0
    );

  concat_a: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_a_re_output_port_net,
      in1 => reinterp_a_im_output_port_net,
      y => concat_a_y_net
    );

  concat_b: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_b_re_output_port_net,
      in1 => reinterp_b_im_output_port_net,
      y => concat_b_y_net
    );

  dsp48e: entity work.xldsp48e
    generic map (
      a_input => "DIRECT",
      acascreg => 1,
      alumodereg => 1,
      areg => 1,
      autoreset_pattern_detect => FALSE,
      autoreset_pattern_detect_optinv => "MATCH",
      b_input => "DIRECT",
      bcascreg => 1,
      breg => 1,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      mreg => 1,
      opmodereg => 1,
      preg => 1,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_mult => "MULT_S",
      use_op => 0,
      use_pattern_detect => "NO_PATDET",
      use_simd => "TWO24"
    )
    port map (
      a => reinterpret_a_output_port_net,
      alumode => alumode_op_net,
      b => reinterpret_b_output_port_net,
      c => reinterpret_c_output_port_net,
      carryin(0) => carryin_op_net,
      carryinsel => carryinsel_op_net,
      ce => ce_1_sg_x3,
      cea1 => "1",
      cea2 => "1",
      cealumode => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cecarryin => "1",
      cectrl => "1",
      cem => "1",
      cemultcarryin => "1",
      cep => "1",
      clk => clk_1_sg_x3,
      en => "1",
      opmode => opmode_op_net,
      rst => "0",
      rsta => "0",
      rstalumode => "0",
      rstb => "0",
      rstc => "0",
      rstcarryin => "0",
      rstctrl => "0",
      rstm => "0",
      rstp => "0",
      p => dsp48e_p_net
    );

  opmode: entity work.constant_270746ab47
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => opmode_op_net
    );

  realign_a_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 22,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      din => force_re_output_port_net_x5,
      en => "1",
      dout => realign_a_im_dout_net
    );

  realign_a_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 22,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      din => force_im_output_port_net_x4,
      en => "1",
      dout => realign_a_re_dout_net
    );

  realign_b_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 22,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      din => force_re_output_port_net_x4,
      en => "1",
      dout => realign_b_im_dout_net
    );

  realign_b_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 22,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      din => force_im_output_port_net_x5,
      en => "1",
      dout => realign_b_re_dout_net
    );

  reinterp_a_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_im_dout_net,
      output_port => reinterp_a_im_output_port_net
    );

  reinterp_a_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_re_dout_net,
      output_port => reinterp_a_re_output_port_net
    );

  reinterp_b_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_im_dout_net,
      output_port => reinterp_b_im_output_port_net
    );

  reinterp_b_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_re_dout_net,
      output_port => reinterp_b_re_output_port_net
    );

  reinterp_c_im: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_im_y_net,
      output_port => reinterp_c_im_output_port_net
    );

  reinterp_c_re: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_re_y_net,
      output_port => reinterp_c_re_output_port_net
    );

  reinterpret_a: entity work.reinterpret_eb03bc3377
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_a_y_net,
      output_port => reinterpret_a_output_port_net
    );

  reinterpret_b: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_b_y_net,
      output_port => reinterpret_b_output_port_net
    );

  reinterpret_c: entity work.reinterpret_7ea107432a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_a_y_net,
      output_port => reinterpret_c_output_port_net
    );

  slice_a: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 47,
      x_width => 48,
      y_width => 30
    )
    port map (
      x => concat_b_y_net,
      y => slice_a_y_net
    );

  slice_b: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 48,
      y_width => 18
    )
    port map (
      x => concat_b_y_net,
      y => slice_b_y_net
    );

  slice_c_im: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 23,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_im_y_net
    );

  slice_c_re: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 47,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_re_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/bi_real_unscr_4x/hilbert_dsp48e0/ri_to_c0"

entity ri_to_c0_entity_1f41d7c305 is
  port (
    im: in std_logic_vector(17 downto 0); 
    re: in std_logic_vector(17 downto 0); 
    c: out std_logic_vector(35 downto 0)
  );
end ri_to_c0_entity_1f41d7c305;

architecture structural of ri_to_c0_entity_1f41d7c305 is
  signal concat_y_net_x1: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x0: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net: std_logic_vector(17 downto 0);
  signal force_re_output_port_net: std_logic_vector(17 downto 0);

begin
  convert2_dout_net_x0 <= im;
  convert0_dout_net_x0 <= re;
  c <= concat_y_net_x1;

  concat: entity work.concat_b198bd62b0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => force_re_output_port_net,
      in1 => force_im_output_port_net,
      y => concat_y_net_x1
    );

  force_im: entity work.reinterpret_580feec131
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert2_dout_net_x0,
      output_port => force_im_output_port_net
    );

  force_re: entity work.reinterpret_580feec131
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert0_dout_net_x0,
      output_port => force_re_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/bi_real_unscr_4x/hilbert_dsp48e0"

entity hilbert_dsp48e0_entity_d153f87bf5 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    even: out std_logic_vector(35 downto 0); 
    odd: out std_logic_vector(35 downto 0)
  );
end hilbert_dsp48e0_entity_d153f87bf5;

architecture structural of hilbert_dsp48e0_entity_d153f87bf5 is
  signal cast_c_im_dout_net_x0: std_logic_vector(18 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(18 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(18 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(18 downto 0);
  signal ce_1_sg_x4: std_logic;
  signal clk_1_sg_x4: std_logic;
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal concat_y_net_x4: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x0: std_logic_vector(17 downto 0);
  signal convert1_dout_net_x0: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x0: std_logic_vector(17 downto 0);
  signal convert3_dout_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x4: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x5: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x4: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x5: std_logic_vector(17 downto 0);
  signal mux0_y_net_x1: std_logic_vector(35 downto 0);
  signal mux1_y_net_x1: std_logic_vector(35 downto 0);
  signal scale0_op_net: std_logic_vector(18 downto 0);
  signal scale1_op_net: std_logic_vector(18 downto 0);
  signal scale2_op_net: std_logic_vector(18 downto 0);
  signal scale3_op_net: std_logic_vector(18 downto 0);

begin
  mux0_y_net_x1 <= a;
  mux1_y_net_x1 <= b;
  ce_1_sg_x4 <= ce_1;
  clk_1_sg_x4 <= clk_1;
  even <= concat_y_net_x3;
  odd <= concat_y_net_x4;

  c_to_ri0_68a06d3127: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => mux0_y_net_x1,
      im => force_im_output_port_net_x4,
      re => force_re_output_port_net_x4
    );

  c_to_ri1_862f18fbfb: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => mux1_y_net_x1,
      im => force_im_output_port_net_x5,
      re => force_re_output_port_net_x5
    );

  cadd_3ec5ae5a4e: entity work.cadd_entity_3ec5ae5a4e
    port map (
      a_im => force_im_output_port_net_x4,
      a_re => force_re_output_port_net_x4,
      b_im => force_im_output_port_net_x5,
      b_re => force_re_output_port_net_x5,
      ce_1 => ce_1_sg_x4,
      clk_1 => clk_1_sg_x4,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert0: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 18,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      din => scale0_op_net,
      en => "1",
      dout => convert0_dout_net_x0
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 18,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      din => scale1_op_net,
      en => "1",
      dout => convert1_dout_net_x0
    );

  convert2: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 18,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      din => scale2_op_net,
      en => "1",
      dout => convert2_dout_net_x0
    );

  convert3: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 18,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      din => scale3_op_net,
      en => "1",
      dout => convert3_dout_net_x0
    );

  csub_8f454f3efc: entity work.csub_entity_8f454f3efc
    port map (
      a_im => force_re_output_port_net_x5,
      a_re => force_im_output_port_net_x4,
      b_im => force_re_output_port_net_x4,
      b_re => force_im_output_port_net_x5,
      ce_1 => ce_1_sg_x4,
      clk_1 => clk_1_sg_x4,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  ri_to_c0_1f41d7c305: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => convert2_dout_net_x0,
      re => convert0_dout_net_x0,
      c => concat_y_net_x3
    );

  ri_to_c1_d9d608d86b: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => convert3_dout_net_x0,
      re => convert1_dout_net_x0,
      c => concat_y_net_x4
    );

  scale0: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/bi_real_unscr_4x/mirror_spectrum/ri_to_c0"

entity ri_to_c0_entity_57c3607935 is
  port (
    im: in std_logic_vector(17 downto 0); 
    re: in std_logic_vector(17 downto 0); 
    c: out std_logic_vector(35 downto 0)
  );
end ri_to_c0_entity_57c3607935;

architecture structural of ri_to_c0_entity_57c3607935 is
  signal concat_y_net_x0: std_logic_vector(35 downto 0);
  signal force_im_output_port_net: std_logic_vector(17 downto 0);
  signal force_re_output_port_net: std_logic_vector(17 downto 0);
  signal neg_delay0_q_net_x0: std_logic_vector(17 downto 0);
  signal negate0_op_net_x0: std_logic_vector(17 downto 0);

begin
  negate0_op_net_x0 <= im;
  neg_delay0_q_net_x0 <= re;
  c <= concat_y_net_x0;

  concat: entity work.concat_b198bd62b0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => force_re_output_port_net,
      in1 => force_im_output_port_net,
      y => concat_y_net_x0
    );

  force_im: entity work.reinterpret_9306b5127f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => negate0_op_net_x0,
      output_port => force_im_output_port_net
    );

  force_re: entity work.reinterpret_580feec131
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => neg_delay0_q_net_x0,
      output_port => force_re_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/bi_real_unscr_4x/mirror_spectrum"

entity mirror_spectrum_entity_ef11bf8f09 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din0: in std_logic_vector(35 downto 0); 
    din1: in std_logic_vector(35 downto 0); 
    din2: in std_logic_vector(35 downto 0); 
    din3: in std_logic_vector(35 downto 0); 
    reo_in0: in std_logic_vector(35 downto 0); 
    reo_in1: in std_logic_vector(35 downto 0); 
    reo_in2: in std_logic_vector(35 downto 0); 
    reo_in3: in std_logic_vector(35 downto 0); 
    sync: in std_logic; 
    dout0: out std_logic_vector(35 downto 0); 
    dout1: out std_logic_vector(35 downto 0); 
    dout2: out std_logic_vector(35 downto 0); 
    dout3: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end mirror_spectrum_entity_ef11bf8f09;

architecture structural of mirror_spectrum_entity_ef11bf8f09 is
  signal ce_1_sg_x8: std_logic;
  signal clk_1_sg_x8: std_logic;
  signal concat_y_net_x0: std_logic_vector(35 downto 0);
  signal concat_y_net_x1: std_logic_vector(35 downto 0);
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal constant3_op_net: std_logic_vector(8 downto 0);
  signal counter_op_net: std_logic_vector(8 downto 0);
  signal delay1_q_net: std_logic;
  signal delay2_q_net_x0: std_logic;
  signal delay3_q_net: std_logic_vector(35 downto 0);
  signal delay4_q_net: std_logic_vector(35 downto 0);
  signal delay5_q_net: std_logic_vector(35 downto 0);
  signal delay6_q_net: std_logic_vector(35 downto 0);
  signal delay_ms1_q_net_x0: std_logic;
  signal delay_ms2_q_net_x0: std_logic_vector(35 downto 0);
  signal delay_ms3_q_net_x1: std_logic_vector(35 downto 0);
  signal delay_ms4_q_net_x0: std_logic_vector(35 downto 0);
  signal delay_ms5_q_net_x1: std_logic_vector(35 downto 0);
  signal delay_ms6_q_net_x0: std_logic_vector(35 downto 0);
  signal delay_ms7_q_net_x1: std_logic_vector(35 downto 0);
  signal delay_ms8_q_net_x0: std_logic_vector(35 downto 0);
  signal delay_ms9_q_net_x1: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x2: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x2: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal mux2_y_net_x0: std_logic_vector(35 downto 0);
  signal mux3_y_net_x0: std_logic_vector(35 downto 0);
  signal mux_y_net_x0: std_logic_vector(35 downto 0);
  signal neg_delay0_q_net_x0: std_logic_vector(17 downto 0);
  signal neg_delay1_q_net_x0: std_logic_vector(17 downto 0);
  signal neg_delay2_q_net_x0: std_logic_vector(17 downto 0);
  signal neg_delay3_q_net_x0: std_logic_vector(17 downto 0);
  signal negate0_op_net_x0: std_logic_vector(17 downto 0);
  signal negate1_op_net_x0: std_logic_vector(17 downto 0);
  signal negate2_op_net_x0: std_logic_vector(17 downto 0);
  signal negate3_op_net_x0: std_logic_vector(17 downto 0);
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x8 <= ce_1;
  clk_1_sg_x8 <= clk_1;
  delay_ms2_q_net_x0 <= din0;
  delay_ms4_q_net_x0 <= din1;
  delay_ms6_q_net_x0 <= din2;
  delay_ms8_q_net_x0 <= din3;
  delay_ms3_q_net_x1 <= reo_in0;
  delay_ms5_q_net_x1 <= reo_in1;
  delay_ms7_q_net_x1 <= reo_in2;
  delay_ms9_q_net_x1 <= reo_in3;
  delay_ms1_q_net_x0 <= sync;
  dout0 <= mux_y_net_x0;
  dout1 <= mux1_y_net_x0;
  dout2 <= mux2_y_net_x0;
  dout3 <= mux3_y_net_x0;
  sync_out <= delay2_q_net_x0;

  c_to_ri0_f27265330d: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay_ms3_q_net_x1,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  c_to_ri1_e86ccd9e25: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay_ms5_q_net_x1,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  c_to_ri2_4e054b0ff5: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay_ms7_q_net_x1,
      im => force_im_output_port_net_x2,
      re => force_re_output_port_net_x2
    );

  c_to_ri3_ccb652cef3: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay_ms9_q_net_x1,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  constant3: entity work.constant_4a391b9a0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_b9730cea34623a8b",
      op_arith => xlUnsigned,
      op_width => 9
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      en => "1",
      rst(0) => delay1_q_net,
      op => counter_op_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d(0) => delay_ms1_q_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net
    );

  delay2: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d(0) => delay1_q_net,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x0
    );

  delay3: entity work.xldelay
    generic map (
      latency => 5,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d => delay_ms2_q_net_x0,
      en => '1',
      rst => '1',
      q => delay3_q_net
    );

  delay4: entity work.xldelay
    generic map (
      latency => 5,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d => delay_ms4_q_net_x0,
      en => '1',
      rst => '1',
      q => delay4_q_net
    );

  delay5: entity work.xldelay
    generic map (
      latency => 5,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d => delay_ms6_q_net_x0,
      en => '1',
      rst => '1',
      q => delay5_q_net
    );

  delay6: entity work.xldelay
    generic map (
      latency => 5,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d => delay_ms8_q_net_x0,
      en => '1',
      rst => '1',
      q => delay6_q_net
    );

  mux: entity work.mux_fca786f2ff
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      d0 => delay3_q_net,
      d1 => concat_y_net_x0,
      sel(0) => relational_op_net,
      y => mux_y_net_x0
    );

  mux1: entity work.mux_fca786f2ff
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      d0 => delay4_q_net,
      d1 => concat_y_net_x1,
      sel(0) => relational_op_net,
      y => mux1_y_net_x0
    );

  mux2: entity work.mux_fca786f2ff
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      d0 => delay5_q_net,
      d1 => concat_y_net_x2,
      sel(0) => relational_op_net,
      y => mux2_y_net_x0
    );

  mux3: entity work.mux_fca786f2ff
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      d0 => delay6_q_net,
      d1 => concat_y_net_x3,
      sel(0) => relational_op_net,
      y => mux3_y_net_x0
    );

  neg_delay0: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 18
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d => force_re_output_port_net_x0,
      en => '1',
      rst => '1',
      q => neg_delay0_q_net_x0
    );

  neg_delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 18
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d => force_re_output_port_net_x1,
      en => '1',
      rst => '1',
      q => neg_delay1_q_net_x0
    );

  neg_delay2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 18
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d => force_re_output_port_net_x2,
      en => '1',
      rst => '1',
      q => neg_delay2_q_net_x0
    );

  neg_delay3: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 18
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d => force_re_output_port_net_x3,
      en => '1',
      rst => '1',
      q => neg_delay3_q_net_x0
    );

  negate0: entity work.negate_5fcde2e21d
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      ip => force_im_output_port_net_x0,
      op => negate0_op_net_x0
    );

  negate1: entity work.negate_5fcde2e21d
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      ip => force_im_output_port_net_x1,
      op => negate1_op_net_x0
    );

  negate2: entity work.negate_5fcde2e21d
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      ip => force_im_output_port_net_x2,
      op => negate2_op_net_x0
    );

  negate3: entity work.negate_5fcde2e21d
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      ip => force_im_output_port_net_x3,
      op => negate3_op_net_x0
    );

  relational: entity work.relational_8701b88949
    port map (
      a => counter_op_net,
      b => constant3_op_net,
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      op(0) => relational_op_net
    );

  ri_to_c0_57c3607935: entity work.ri_to_c0_entity_57c3607935
    port map (
      im => negate0_op_net_x0,
      re => neg_delay0_q_net_x0,
      c => concat_y_net_x0
    );

  ri_to_c1_44fdbcec23: entity work.ri_to_c0_entity_57c3607935
    port map (
      im => negate1_op_net_x0,
      re => neg_delay1_q_net_x0,
      c => concat_y_net_x1
    );

  ri_to_c2_ace3eb7e76: entity work.ri_to_c0_entity_57c3607935
    port map (
      im => negate2_op_net_x0,
      re => neg_delay2_q_net_x0,
      c => concat_y_net_x2
    );

  ri_to_c3_11e4d3a5d3: entity work.ri_to_c0_entity_57c3607935
    port map (
      im => negate3_op_net_x0,
      re => neg_delay3_q_net_x0,
      c => concat_y_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/bi_real_unscr_4x/reorder_even/sync_delay_en"

entity sync_delay_en_entity_3b03e1cdc8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_en_entity_3b03e1cdc8;

architecture structural of sync_delay_en_entity_3b03e1cdc8 is
  signal ce_1_sg_x9: std_logic;
  signal clk_1_sg_x9: std_logic;
  signal constant1_op_net: std_logic_vector(8 downto 0);
  signal constant2_op_net: std_logic_vector(8 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(8 downto 0);
  signal counter_op_net: std_logic_vector(8 downto 0);
  signal logical1_y_net: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x0: std_logic;
  signal or_y_net_x0: std_logic;
  signal pre_sync_delay_q_net_x0: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x9 <= ce_1;
  clk_1_sg_x9 <= clk_1;
  or_y_net_x0 <= en;
  pre_sync_delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x0;

  constant1: entity work.constant_fd85eb7067
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_4a391b9a0e
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

  constant_x0: entity work.constant_b4ec9de7d1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_d4d70c5a247867e8",
      op_arith => xlUnsigned,
      op_width => 9
    )
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
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

  relational: entity work.relational_6c3ee657fa
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_78eac2928d
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

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/bi_real_unscr_4x/reorder_even"

entity reorder_even_entity_460623e8e4 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din0: in std_logic_vector(35 downto 0); 
    en: in std_logic; 
    sync: in std_logic; 
    dout0: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end reorder_even_entity_460623e8e4;

architecture structural of reorder_even_entity_460623e8e4 is
  signal bram0_data_out_net_x0: std_logic_vector(35 downto 0);
  signal ce_1_sg_x10: std_logic;
  signal clk_1_sg_x10: std_logic;
  signal concat_y_net_x0: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(8 downto 0);
  signal delay_d0_q_net: std_logic_vector(7 downto 0);
  signal delay_din0_q_net: std_logic_vector(35 downto 0);
  signal delay_map1_q_net: std_logic_vector(7 downto 0);
  signal delay_sel_q_net: std_logic;
  signal delay_we_q_net: std_logic;
  signal en_even_op_net_x0: std_logic;
  signal map1_data_net: std_logic_vector(7 downto 0);
  signal mux_y_net: std_logic_vector(7 downto 0);
  signal mux_y_net_x0: std_logic;
  signal or_y_net_x0: std_logic;
  signal post_sync_delay_q_net_x0: std_logic;
  signal pre_sync_delay_q_net_x0: std_logic;
  signal slice1_y_net: std_logic;
  signal slice2_y_net: std_logic_vector(7 downto 0);
  signal sync_delay_q_net_x0: std_logic;

begin
  ce_1_sg_x10 <= ce_1;
  clk_1_sg_x10 <= clk_1;
  concat_y_net_x0 <= din0;
  en_even_op_net_x0 <= en;
  sync_delay_q_net_x0 <= sync;
  dout0 <= bram0_data_out_net_x0;
  sync_out <= post_sync_delay_q_net_x0;

  bram0: entity work.xlspram
    generic map (
      c_address_width => 8,
      c_width => 36,
      core_name0 => "bmg_62_936eb415a1e57c2f",
      latency => 3
    )
    port map (
      addr => mux_y_net,
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      data_in => delay_din0_q_net,
      en => "1",
      rst => "0",
      we(0) => delay_we_q_net,
      data_out => bram0_data_out_net_x0
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 511,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_b9730cea34623a8b",
      count_limited => 0,
      op_arith => xlUnsigned,
      op_width => 9
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      en(0) => en_even_op_net_x0,
      rst(0) => sync_delay_q_net_x0,
      op => counter_op_net
    );

  delay_d0: entity work.delay_423c6c1400
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => slice2_y_net,
      q => delay_d0_q_net
    );

  delay_din0: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      d => concat_y_net_x0,
      en => '1',
      rst => '1',
      q => delay_din0_q_net
    );

  delay_map1: entity work.delay_423c6c1400
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => map1_data_net,
      q => delay_map1_q_net
    );

  delay_sel: entity work.delay_21355083c1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d(0) => slice1_y_net,
      q(0) => delay_sel_q_net
    );

  delay_we: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      d(0) => en_even_op_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_we_q_net
    );

  map1: entity work.xlsprom_dist
    generic map (
      addr_width => 8,
      c_address_width => 8,
      c_width => 8,
      core_name0 => "dmg_62_5863af36f6036886",
      latency => 0
    )
    port map (
      addr => slice2_y_net,
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      en => "1",
      data => map1_data_net
    );

  mux: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      d0 => delay_d0_q_net,
      d1 => delay_map1_q_net,
      sel(0) => delay_sel_q_net,
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
      latency => 4,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      d(0) => mux_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => post_sync_delay_q_net_x0
    );

  pre_sync_delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      d(0) => sync_delay_q_net_x0,
      en => '1',
      rst => '1',
      q(0) => pre_sync_delay_q_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 8,
      x_width => 9,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 9,
      y_width => 8
    )
    port map (
      x => counter_op_net,
      y => slice2_y_net
    );

  sync_delay_en_3b03e1cdc8: entity work.sync_delay_en_entity_3b03e1cdc8
    port map (
      ce_1 => ce_1_sg_x10,
      clk_1 => clk_1_sg_x10,
      en => or_y_net_x0,
      in_x0 => pre_sync_delay_q_net_x0,
      out_x0 => mux_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/bi_real_unscr_4x/reorder_odd"

entity reorder_odd_entity_4df8de304c is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din0: in std_logic_vector(35 downto 0); 
    en: in std_logic; 
    sync: in std_logic; 
    dout0: out std_logic_vector(35 downto 0)
  );
end reorder_odd_entity_4df8de304c;

architecture structural of reorder_odd_entity_4df8de304c is
  signal bram0_data_out_net_x0: std_logic_vector(35 downto 0);
  signal ce_1_sg_x11: std_logic;
  signal clk_1_sg_x11: std_logic;
  signal concat_y_net_x0: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(8 downto 0);
  signal delay_d0_q_net: std_logic_vector(7 downto 0);
  signal delay_din0_q_net: std_logic_vector(35 downto 0);
  signal delay_map1_q_net: std_logic_vector(7 downto 0);
  signal delay_sel_q_net: std_logic;
  signal delay_we_q_net: std_logic;
  signal en_odd_op_net_x0: std_logic;
  signal map1_data_net: std_logic_vector(7 downto 0);
  signal mux_y_net: std_logic_vector(7 downto 0);
  signal slice1_y_net: std_logic;
  signal slice2_y_net: std_logic_vector(7 downto 0);
  signal sync_delay_q_net_x1: std_logic;

begin
  ce_1_sg_x11 <= ce_1;
  clk_1_sg_x11 <= clk_1;
  concat_y_net_x0 <= din0;
  en_odd_op_net_x0 <= en;
  sync_delay_q_net_x1 <= sync;
  dout0 <= bram0_data_out_net_x0;

  bram0: entity work.xlspram
    generic map (
      c_address_width => 8,
      c_width => 36,
      core_name0 => "bmg_62_936eb415a1e57c2f",
      latency => 3
    )
    port map (
      addr => mux_y_net,
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      data_in => delay_din0_q_net,
      en => "1",
      rst => "0",
      we(0) => delay_we_q_net,
      data_out => bram0_data_out_net_x0
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 511,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_b9730cea34623a8b",
      count_limited => 0,
      op_arith => xlUnsigned,
      op_width => 9
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      en(0) => en_odd_op_net_x0,
      rst(0) => sync_delay_q_net_x1,
      op => counter_op_net
    );

  delay_d0: entity work.delay_423c6c1400
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => slice2_y_net,
      q => delay_d0_q_net
    );

  delay_din0: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      d => concat_y_net_x0,
      en => '1',
      rst => '1',
      q => delay_din0_q_net
    );

  delay_map1: entity work.delay_423c6c1400
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => map1_data_net,
      q => delay_map1_q_net
    );

  delay_sel: entity work.delay_21355083c1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d(0) => slice1_y_net,
      q(0) => delay_sel_q_net
    );

  delay_we: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      d(0) => en_odd_op_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_we_q_net
    );

  map1: entity work.xlsprom_dist
    generic map (
      addr_width => 8,
      c_address_width => 8,
      c_width => 8,
      core_name0 => "dmg_62_566eb4bdfcc3bc15",
      latency => 0
    )
    port map (
      addr => slice2_y_net,
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      en => "1",
      data => map1_data_net
    );

  mux: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      d0 => delay_d0_q_net,
      d1 => delay_map1_q_net,
      sel(0) => delay_sel_q_net,
      y => mux_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 8,
      x_width => 9,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 9,
      y_width => 8
    )
    port map (
      x => counter_op_net,
      y => slice2_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/bi_real_unscr_4x/reorder_out"

entity reorder_out_entity_4064314cbf is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din0: in std_logic_vector(35 downto 0); 
    din1: in std_logic_vector(35 downto 0); 
    din2: in std_logic_vector(35 downto 0); 
    din3: in std_logic_vector(35 downto 0); 
    en: in std_logic; 
    sync: in std_logic; 
    dout0: out std_logic_vector(35 downto 0); 
    dout1: out std_logic_vector(35 downto 0); 
    dout2: out std_logic_vector(35 downto 0); 
    dout3: out std_logic_vector(35 downto 0)
  );
end reorder_out_entity_4064314cbf;

architecture structural of reorder_out_entity_4064314cbf is
  signal bram0_data_out_net_x0: std_logic_vector(35 downto 0);
  signal bram1_data_out_net_x0: std_logic_vector(35 downto 0);
  signal bram2_data_out_net_x0: std_logic_vector(35 downto 0);
  signal bram3_data_out_net_x0: std_logic_vector(35 downto 0);
  signal ce_1_sg_x12: std_logic;
  signal clk_1_sg_x12: std_logic;
  signal concat_y_net_x4: std_logic_vector(35 downto 0);
  signal concat_y_net_x5: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(8 downto 0);
  signal delay_d0_q_net: std_logic_vector(7 downto 0);
  signal delay_din0_q_net: std_logic_vector(35 downto 0);
  signal delay_din1_q_net: std_logic_vector(35 downto 0);
  signal delay_din2_q_net: std_logic_vector(35 downto 0);
  signal delay_din3_q_net: std_logic_vector(35 downto 0);
  signal delay_map1_q_net: std_logic_vector(7 downto 0);
  signal delay_sel_q_net: std_logic;
  signal delay_we_q_net: std_logic;
  signal en_out_op_net_x0: std_logic;
  signal map1_data_net: std_logic_vector(7 downto 0);
  signal mux_y_net: std_logic_vector(7 downto 0);
  signal mux_y_net_x1: std_logic;
  signal single_port_ram_data_out_net_x2: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x3: std_logic_vector(35 downto 0);
  signal slice1_y_net: std_logic;
  signal slice2_y_net: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x12 <= ce_1;
  clk_1_sg_x12 <= clk_1;
  single_port_ram_data_out_net_x2 <= din0;
  single_port_ram_data_out_net_x3 <= din1;
  concat_y_net_x4 <= din2;
  concat_y_net_x5 <= din3;
  en_out_op_net_x0 <= en;
  mux_y_net_x1 <= sync;
  dout0 <= bram0_data_out_net_x0;
  dout1 <= bram1_data_out_net_x0;
  dout2 <= bram2_data_out_net_x0;
  dout3 <= bram3_data_out_net_x0;

  bram0: entity work.xlspram
    generic map (
      c_address_width => 8,
      c_width => 36,
      core_name0 => "bmg_62_936eb415a1e57c2f",
      latency => 3
    )
    port map (
      addr => mux_y_net,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      data_in => delay_din0_q_net,
      en => "1",
      rst => "0",
      we(0) => delay_we_q_net,
      data_out => bram0_data_out_net_x0
    );

  bram1: entity work.xlspram
    generic map (
      c_address_width => 8,
      c_width => 36,
      core_name0 => "bmg_62_936eb415a1e57c2f",
      latency => 3
    )
    port map (
      addr => mux_y_net,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      data_in => delay_din1_q_net,
      en => "1",
      rst => "0",
      we(0) => delay_we_q_net,
      data_out => bram1_data_out_net_x0
    );

  bram2: entity work.xlspram
    generic map (
      c_address_width => 8,
      c_width => 36,
      core_name0 => "bmg_62_936eb415a1e57c2f",
      latency => 3
    )
    port map (
      addr => mux_y_net,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      data_in => delay_din2_q_net,
      en => "1",
      rst => "0",
      we(0) => delay_we_q_net,
      data_out => bram2_data_out_net_x0
    );

  bram3: entity work.xlspram
    generic map (
      c_address_width => 8,
      c_width => 36,
      core_name0 => "bmg_62_936eb415a1e57c2f",
      latency => 3
    )
    port map (
      addr => mux_y_net,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      data_in => delay_din3_q_net,
      en => "1",
      rst => "0",
      we(0) => delay_we_q_net,
      data_out => bram3_data_out_net_x0
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 511,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_b9730cea34623a8b",
      count_limited => 0,
      op_arith => xlUnsigned,
      op_width => 9
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      en(0) => en_out_op_net_x0,
      rst(0) => mux_y_net_x1,
      op => counter_op_net
    );

  delay_d0: entity work.delay_423c6c1400
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => slice2_y_net,
      q => delay_d0_q_net
    );

  delay_din0: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      d => single_port_ram_data_out_net_x2,
      en => '1',
      rst => '1',
      q => delay_din0_q_net
    );

  delay_din1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      d => single_port_ram_data_out_net_x3,
      en => '1',
      rst => '1',
      q => delay_din1_q_net
    );

  delay_din2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      d => concat_y_net_x4,
      en => '1',
      rst => '1',
      q => delay_din2_q_net
    );

  delay_din3: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      d => concat_y_net_x5,
      en => '1',
      rst => '1',
      q => delay_din3_q_net
    );

  delay_map1: entity work.delay_423c6c1400
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => map1_data_net,
      q => delay_map1_q_net
    );

  delay_sel: entity work.delay_21355083c1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d(0) => slice1_y_net,
      q(0) => delay_sel_q_net
    );

  delay_we: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      d(0) => en_out_op_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_we_q_net
    );

  map1: entity work.xlsprom_dist
    generic map (
      addr_width => 8,
      c_address_width => 8,
      c_width => 8,
      core_name0 => "dmg_62_9d0957109dc92693",
      latency => 0
    )
    port map (
      addr => slice2_y_net,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      en => "1",
      data => map1_data_net
    );

  mux: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      d0 => delay_d0_q_net,
      d1 => delay_map1_q_net,
      sel(0) => delay_sel_q_net,
      y => mux_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 8,
      x_width => 9,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 9,
      y_width => 8
    )
    port map (
      x => counter_op_net,
      y => slice2_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/bi_real_unscr_4x/sync_delay_ctr"

entity sync_delay_ctr_entity_4ebbfebcd1 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_ctr_entity_4ebbfebcd1;

architecture structural of sync_delay_ctr_entity_4ebbfebcd1 is
  signal ce_1_sg_x13: std_logic;
  signal clk_1_sg_x13: std_logic;
  signal constant1_op_net: std_logic_vector(8 downto 0);
  signal constant2_op_net: std_logic_vector(8 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(8 downto 0);
  signal counter_op_net: std_logic_vector(8 downto 0);
  signal logical_y_net: std_logic;
  signal mux_y_net_x2: std_logic;
  signal post_sync_delay_q_net_x1: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x13 <= ce_1;
  clk_1_sg_x13 <= clk_1;
  post_sync_delay_q_net_x1 <= in_x0;
  out_x0 <= mux_y_net_x2;

  constant1: entity work.constant_fd85eb7067
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_40da8f5b68
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

  constant_x0: entity work.constant_b4ec9de7d1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_d4d70c5a247867e8",
      op_arith => xlUnsigned,
      op_width => 9
    )
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => post_sync_delay_q_net_x1,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => post_sync_delay_q_net_x1,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => post_sync_delay_q_net_x1,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x2
    );

  relational: entity work.relational_6c3ee657fa
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_78eac2928d
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

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/bi_real_unscr_4x"

entity bi_real_unscr_4x_entity_02de02562d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    even: in std_logic_vector(35 downto 0); 
    odd: in std_logic_vector(35 downto 0); 
    sync: in std_logic; 
    pol1_out: out std_logic_vector(35 downto 0); 
    pol2_out: out std_logic_vector(35 downto 0); 
    pol3_out: out std_logic_vector(35 downto 0); 
    pol4_out: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end bi_real_unscr_4x_entity_02de02562d;

architecture structural of bi_real_unscr_4x_entity_02de02562d is
  signal bram0_data_out_net_x0: std_logic_vector(35 downto 0);
  signal bram0_data_out_net_x1: std_logic_vector(35 downto 0);
  signal bram0_data_out_net_x2: std_logic_vector(35 downto 0);
  signal bram1_data_out_net_x0: std_logic_vector(35 downto 0);
  signal bram2_data_out_net_x0: std_logic_vector(35 downto 0);
  signal bram3_data_out_net_x0: std_logic_vector(35 downto 0);
  signal ce_1_sg_x14: std_logic;
  signal clk_1_sg_x14: std_logic;
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal concat_y_net_x4: std_logic_vector(35 downto 0);
  signal concat_y_net_x5: std_logic_vector(35 downto 0);
  signal concat_y_net_x6: std_logic_vector(35 downto 0);
  signal concat_y_net_x8: std_logic_vector(35 downto 0);
  signal concat_y_net_x9: std_logic_vector(35 downto 0);
  signal constant0_op_net: std_logic_vector(8 downto 0);
  signal constant1_op_net: std_logic_vector(8 downto 0);
  signal counter0_op_net: std_logic_vector(8 downto 0);
  signal delay2_q_net_x1: std_logic;
  signal delay_ms1_q_net_x0: std_logic;
  signal delay_ms2_q_net_x0: std_logic_vector(35 downto 0);
  signal delay_ms3_q_net_x1: std_logic_vector(35 downto 0);
  signal delay_ms4_q_net_x0: std_logic_vector(35 downto 0);
  signal delay_ms5_q_net_x1: std_logic_vector(35 downto 0);
  signal delay_ms6_q_net_x0: std_logic_vector(35 downto 0);
  signal delay_ms7_q_net_x1: std_logic_vector(35 downto 0);
  signal delay_ms8_q_net_x0: std_logic_vector(35 downto 0);
  signal delay_ms9_q_net_x1: std_logic_vector(35 downto 0);
  signal delay_q_net: std_logic_vector(35 downto 0);
  signal en_even_op_net_x0: std_logic;
  signal en_odd_op_net_x0: std_logic;
  signal en_out_op_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(35 downto 0);
  signal mux1_y_net_x1: std_logic_vector(35 downto 0);
  signal mux1_y_net_x2: std_logic_vector(35 downto 0);
  signal mux2_y_net_x1: std_logic_vector(35 downto 0);
  signal mux2_y_net_x2: std_logic_vector(35 downto 0);
  signal mux3_y_net_x1: std_logic_vector(35 downto 0);
  signal mux3_y_net_x2: std_logic_vector(35 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal mux_y_net_x2: std_logic;
  signal post_sync_delay_q_net_x1: std_logic;
  signal relational0_op_net: std_logic;
  signal relational1_op_net: std_logic;
  signal single_port_ram_data_out_net_x2: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x3: std_logic_vector(35 downto 0);
  signal sync_delay_q_net_x2: std_logic;

begin
  ce_1_sg_x14 <= ce_1;
  clk_1_sg_x14 <= clk_1;
  concat_y_net_x8 <= even;
  concat_y_net_x9 <= odd;
  sync_delay_q_net_x2 <= sync;
  pol1_out <= mux_y_net_x1;
  pol2_out <= mux1_y_net_x2;
  pol3_out <= mux2_y_net_x2;
  pol4_out <= mux3_y_net_x2;
  sync_out <= delay2_q_net_x1;

  constant0: entity work.constant_4a391b9a0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant0_op_net
    );

  constant1: entity work.constant_fd85eb7067
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  counter0: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_b9730cea34623a8b",
      op_arith => xlUnsigned,
      op_width => 9
    )
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      en => "1",
      rst(0) => post_sync_delay_q_net_x1,
      op => counter0_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      d => bram0_data_out_net_x1,
      en => '1',
      rst => '1',
      q => delay_q_net
    );

  delay_bram0_d40c32b9c6: entity work.delay_bram0_entity_d40c32b9c6
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      in1 => concat_y_net_x3,
      out1 => single_port_ram_data_out_net_x2
    );

  delay_bram1_e74f305ef1: entity work.delay_bram0_entity_d40c32b9c6
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      in1 => concat_y_net_x4,
      out1 => single_port_ram_data_out_net_x3
    );

  delay_ms1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      d(0) => mux_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay_ms1_q_net_x0
    );

  delay_ms2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      d => single_port_ram_data_out_net_x2,
      en => '1',
      rst => '1',
      q => delay_ms2_q_net_x0
    );

  delay_ms3: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      d => bram0_data_out_net_x2,
      en => '1',
      rst => '1',
      q => delay_ms3_q_net_x1
    );

  delay_ms4: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      d => single_port_ram_data_out_net_x3,
      en => '1',
      rst => '1',
      q => delay_ms4_q_net_x0
    );

  delay_ms5: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      d => bram1_data_out_net_x0,
      en => '1',
      rst => '1',
      q => delay_ms5_q_net_x1
    );

  delay_ms6: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      d => concat_y_net_x5,
      en => '1',
      rst => '1',
      q => delay_ms6_q_net_x0
    );

  delay_ms7: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      d => bram2_data_out_net_x0,
      en => '1',
      rst => '1',
      q => delay_ms7_q_net_x1
    );

  delay_ms8: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      d => concat_y_net_x6,
      en => '1',
      rst => '1',
      q => delay_ms8_q_net_x0
    );

  delay_ms9: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      d => bram3_data_out_net_x0,
      en => '1',
      rst => '1',
      q => delay_ms9_q_net_x1
    );

  en_even: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => en_even_op_net_x0
    );

  en_odd: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => en_odd_op_net_x0
    );

  en_out: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => en_out_op_net_x0
    );

  hilbert_dsp48e0_d153f87bf5: entity work.hilbert_dsp48e0_entity_d153f87bf5
    port map (
      a => mux0_y_net_x1,
      b => mux1_y_net_x1,
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      even => concat_y_net_x3,
      odd => concat_y_net_x4
    );

  hilbert_dsp48e1_8c3fde6479: entity work.hilbert_dsp48e0_entity_d153f87bf5
    port map (
      a => mux2_y_net_x1,
      b => mux3_y_net_x1,
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      even => concat_y_net_x5,
      odd => concat_y_net_x6
    );

  mirror_spectrum_ef11bf8f09: entity work.mirror_spectrum_entity_ef11bf8f09
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      din0 => delay_ms2_q_net_x0,
      din1 => delay_ms4_q_net_x0,
      din2 => delay_ms6_q_net_x0,
      din3 => delay_ms8_q_net_x0,
      reo_in0 => delay_ms3_q_net_x1,
      reo_in1 => delay_ms5_q_net_x1,
      reo_in2 => delay_ms7_q_net_x1,
      reo_in3 => delay_ms9_q_net_x1,
      sync => delay_ms1_q_net_x0,
      dout0 => mux_y_net_x1,
      dout1 => mux1_y_net_x2,
      dout2 => mux2_y_net_x2,
      dout3 => mux3_y_net_x2,
      sync_out => delay2_q_net_x1
    );

  mux0: entity work.mux_fca786f2ff
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      d0 => bram0_data_out_net_x0,
      d1 => delay_q_net,
      sel(0) => relational0_op_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_fca786f2ff
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      d0 => delay_q_net,
      d1 => bram0_data_out_net_x0,
      sel(0) => relational1_op_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_fca786f2ff
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      d0 => bram0_data_out_net_x0,
      d1 => delay_q_net,
      sel(0) => relational1_op_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_fca786f2ff
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      d0 => delay_q_net,
      d1 => bram0_data_out_net_x0,
      sel(0) => relational0_op_net,
      y => mux3_y_net_x1
    );

  relational0: entity work.relational_6c3ee657fa
    port map (
      a => constant0_op_net,
      b => counter0_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational0_op_net
    );

  relational1: entity work.relational_6c3ee657fa
    port map (
      a => counter0_op_net,
      b => constant1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

  reorder_even_460623e8e4: entity work.reorder_even_entity_460623e8e4
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      din0 => concat_y_net_x8,
      en => en_even_op_net_x0,
      sync => sync_delay_q_net_x2,
      dout0 => bram0_data_out_net_x0,
      sync_out => post_sync_delay_q_net_x1
    );

  reorder_odd_4df8de304c: entity work.reorder_odd_entity_4df8de304c
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      din0 => concat_y_net_x9,
      en => en_odd_op_net_x0,
      sync => sync_delay_q_net_x2,
      dout0 => bram0_data_out_net_x1
    );

  reorder_out_4064314cbf: entity work.reorder_out_entity_4064314cbf
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      din0 => single_port_ram_data_out_net_x2,
      din1 => single_port_ram_data_out_net_x3,
      din2 => concat_y_net_x5,
      din3 => concat_y_net_x6,
      en => en_out_op_net_x0,
      sync => mux_y_net_x2,
      dout0 => bram0_data_out_net_x2,
      dout1 => bram1_data_out_net_x0,
      dout2 => bram2_data_out_net_x0,
      dout3 => bram3_data_out_net_x0
    );

  sync_delay_ctr_4ebbfebcd1: entity work.sync_delay_ctr_entity_4ebbfebcd1
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      in_x0 => post_sync_delay_q_net_x1,
      out_x0 => mux_y_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_1/butterfly_direct/cadd"

entity cadd_entity_27e38c959d is
  port (
    a_im: in std_logic_vector(17 downto 0); 
    a_re: in std_logic_vector(17 downto 0); 
    b_im: in std_logic_vector(17 downto 0); 
    b_re: in std_logic_vector(17 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    c_im: out std_logic_vector(18 downto 0); 
    c_re: out std_logic_vector(18 downto 0)
  );
end cadd_entity_27e38c959d;

architecture structural of cadd_entity_27e38c959d is
  signal alumode_op_net: std_logic_vector(3 downto 0);
  signal carryin_op_net: std_logic;
  signal carryinsel_op_net: std_logic_vector(2 downto 0);
  signal cast_c_im_dout_net_x0: std_logic_vector(18 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(18 downto 0);
  signal ce_1_sg_x15: std_logic;
  signal clk_1_sg_x15: std_logic;
  signal concat_a_y_net: std_logic_vector(47 downto 0);
  signal concat_b_y_net: std_logic_vector(47 downto 0);
  signal dsp48e_p_net: std_logic_vector(47 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x2: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x2: std_logic_vector(17 downto 0);
  signal opmode_op_net: std_logic_vector(6 downto 0);
  signal realign_a_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_a_re_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_re_dout_net: std_logic_vector(23 downto 0);
  signal reinterp_a_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_a_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterpret_a_output_port_net: std_logic_vector(29 downto 0);
  signal reinterpret_b_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret_c_output_port_net: std_logic_vector(47 downto 0);
  signal slice_a_y_net: std_logic_vector(29 downto 0);
  signal slice_b_y_net: std_logic_vector(17 downto 0);
  signal slice_c_im_y_net: std_logic_vector(23 downto 0);
  signal slice_c_re_y_net: std_logic_vector(23 downto 0);

begin
  force_im_output_port_net_x1 <= a_im;
  force_re_output_port_net_x1 <= a_re;
  force_im_output_port_net_x2 <= b_im;
  force_re_output_port_net_x2 <= b_re;
  ce_1_sg_x15 <= ce_1;
  clk_1_sg_x15 <= clk_1;
  c_im <= cast_c_im_dout_net_x0;
  c_re <= cast_c_re_dout_net_x0;

  alumode: entity work.constant_4c449dd556
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => alumode_op_net
    );

  carryin: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => carryin_op_net
    );

  carryinsel: entity work.constant_822933f89b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => carryinsel_op_net
    );

  cast_c_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 21,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 19,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      clr => '0',
      din => reinterp_c_im_output_port_net,
      en => "1",
      dout => cast_c_im_dout_net_x0
    );

  cast_c_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 21,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 19,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      clr => '0',
      din => reinterp_c_re_output_port_net,
      en => "1",
      dout => cast_c_re_dout_net_x0
    );

  concat_a: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_a_re_output_port_net,
      in1 => reinterp_a_im_output_port_net,
      y => concat_a_y_net
    );

  concat_b: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_b_re_output_port_net,
      in1 => reinterp_b_im_output_port_net,
      y => concat_b_y_net
    );

  dsp48e: entity work.xldsp48e
    generic map (
      a_input => "DIRECT",
      acascreg => 1,
      alumodereg => 1,
      areg => 1,
      autoreset_pattern_detect => FALSE,
      autoreset_pattern_detect_optinv => "MATCH",
      b_input => "DIRECT",
      bcascreg => 1,
      breg => 1,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      mreg => 1,
      opmodereg => 1,
      preg => 1,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_mult => "MULT_S",
      use_op => 0,
      use_pattern_detect => "NO_PATDET",
      use_simd => "TWO24"
    )
    port map (
      a => reinterpret_a_output_port_net,
      alumode => alumode_op_net,
      b => reinterpret_b_output_port_net,
      c => reinterpret_c_output_port_net,
      carryin(0) => carryin_op_net,
      carryinsel => carryinsel_op_net,
      ce => ce_1_sg_x15,
      cea1 => "1",
      cea2 => "1",
      cealumode => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cecarryin => "1",
      cectrl => "1",
      cem => "1",
      cemultcarryin => "1",
      cep => "1",
      clk => clk_1_sg_x15,
      en => "1",
      opmode => opmode_op_net,
      rst => "0",
      rsta => "0",
      rstalumode => "0",
      rstb => "0",
      rstc => "0",
      rstcarryin => "0",
      rstctrl => "0",
      rstm => "0",
      rstp => "0",
      p => dsp48e_p_net
    );

  opmode: entity work.constant_270746ab47
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => opmode_op_net
    );

  realign_a_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 21,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      clr => '0',
      din => force_im_output_port_net_x1,
      en => "1",
      dout => realign_a_im_dout_net
    );

  realign_a_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 21,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      clr => '0',
      din => force_re_output_port_net_x1,
      en => "1",
      dout => realign_a_re_dout_net
    );

  realign_b_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 21,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      clr => '0',
      din => force_im_output_port_net_x2,
      en => "1",
      dout => realign_b_im_dout_net
    );

  realign_b_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 21,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      clr => '0',
      din => force_re_output_port_net_x2,
      en => "1",
      dout => realign_b_re_dout_net
    );

  reinterp_a_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_im_dout_net,
      output_port => reinterp_a_im_output_port_net
    );

  reinterp_a_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_re_dout_net,
      output_port => reinterp_a_re_output_port_net
    );

  reinterp_b_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_im_dout_net,
      output_port => reinterp_b_im_output_port_net
    );

  reinterp_b_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_re_dout_net,
      output_port => reinterp_b_re_output_port_net
    );

  reinterp_c_im: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_im_y_net,
      output_port => reinterp_c_im_output_port_net
    );

  reinterp_c_re: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_re_y_net,
      output_port => reinterp_c_re_output_port_net
    );

  reinterpret_a: entity work.reinterpret_eb03bc3377
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_a_y_net,
      output_port => reinterpret_a_output_port_net
    );

  reinterpret_b: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_b_y_net,
      output_port => reinterpret_b_output_port_net
    );

  reinterpret_c: entity work.reinterpret_7ea107432a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_a_y_net,
      output_port => reinterpret_c_output_port_net
    );

  slice_a: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 47,
      x_width => 48,
      y_width => 30
    )
    port map (
      x => concat_b_y_net,
      y => slice_a_y_net
    );

  slice_b: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 48,
      y_width => 18
    )
    port map (
      x => concat_b_y_net,
      y => slice_b_y_net
    );

  slice_c_im: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 23,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_im_y_net
    );

  slice_c_re: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 47,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_re_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_1/butterfly_direct/convert_of0/convert"

entity convert_entity_ee5a2f6e39 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(19 downto 0); 
    out_x0: out std_logic_vector(17 downto 0)
  );
end convert_entity_ee5a2f6e39;

architecture structural of convert_entity_ee5a2f6e39 is
  signal adder_s_net_x0: std_logic_vector(17 downto 0);
  signal almost_half_op_net: std_logic_vector(18 downto 0);
  signal bit_y_net: std_logic;
  signal ce_1_sg_x16: std_logic;
  signal clk_1_sg_x16: std_logic;
  signal concat_y_net: std_logic_vector(20 downto 0);
  signal constant_op_net: std_logic;
  signal force1_output_port_net: std_logic_vector(20 downto 0);
  signal force2_output_port_net: std_logic_vector(18 downto 0);
  signal mux0_y_net_x0: std_logic_vector(19 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(19 downto 0);
  signal tweak_op_y_net: std_logic;

begin
  ce_1_sg_x16 <= ce_1;
  clk_1_sg_x16 <= clk_1;
  mux0_y_net_x0 <= in_x0;
  out_x0 <= adder_s_net_x0;

  adder: entity work.addsub_27fae134d1
    port map (
      a => force1_output_port_net,
      b => force2_output_port_net,
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      s => adder_s_net_x0
    );

  almost_half: entity work.constant_4709ea49b5
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => almost_half_op_net
    );

  bit: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 20,
      y_width => 1
    )
    port map (
      x => mux0_y_net_x0,
      y(0) => bit_y_net
    );

  concat: entity work.concat_c615d93998
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

  force1: entity work.reinterpret_d357e69fa3
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_y_net,
      output_port => force1_output_port_net
    );

  force2: entity work.reinterpret_d2180c9169
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => almost_half_op_net,
      output_port => force2_output_port_net
    );

  reinterpret: entity work.reinterpret_4a8cbc85ce
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux0_y_net_x0,
      output_port => reinterpret_output_port_net
    );

  tweak_op: entity work.logical_938d99ac11
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

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_1/butterfly_direct/convert_of0"

entity convert_of0_entity_faf530fa35 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(19 downto 0); 
    dout: out std_logic_vector(17 downto 0); 
    of_x0: out std_logic
  );
end convert_of0_entity_faf530fa35;

architecture structural of convert_of0_entity_faf530fa35 is
  signal adder_s_net_x1: std_logic_vector(17 downto 0);
  signal all_0s_y_net: std_logic;
  signal all_1s_y_net: std_logic;
  signal and_y_net_x0: std_logic;
  signal ce_1_sg_x17: std_logic;
  signal clk_1_sg_x17: std_logic;
  signal invert1_op_net: std_logic;
  signal invert2_op_net: std_logic;
  signal mux0_y_net_x1: std_logic_vector(19 downto 0);
  signal slice1_y_net: std_logic;
  signal slice2_y_net: std_logic;

begin
  ce_1_sg_x17 <= ce_1;
  clk_1_sg_x17 <= clk_1;
  mux0_y_net_x1 <= din;
  dout <= adder_s_net_x1;
  of_x0 <= and_y_net_x0;

  all_0s: entity work.logical_e9e6541380
    port map (
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      d0(0) => invert1_op_net,
      d1(0) => invert2_op_net,
      y(0) => all_0s_y_net
    );

  all_1s: entity work.logical_e9e6541380
    port map (
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      d0(0) => slice1_y_net,
      d1(0) => slice2_y_net,
      y(0) => all_1s_y_net
    );

  and_x0: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => all_0s_y_net,
      d1(0) => all_1s_y_net,
      y(0) => and_y_net_x0
    );

  convert_ee5a2f6e39: entity work.convert_entity_ee5a2f6e39
    port map (
      ce_1 => ce_1_sg_x17,
      clk_1 => clk_1_sg_x17,
      in_x0 => mux0_y_net_x1,
      out_x0 => adder_s_net_x1
    );

  invert1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      ip(0) => slice1_y_net,
      op(0) => invert1_op_net
    );

  invert2: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      ip(0) => slice2_y_net,
      op(0) => invert2_op_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 19,
      new_msb => 19,
      x_width => 20,
      y_width => 1
    )
    port map (
      x => mux0_y_net_x1,
      y(0) => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 18,
      x_width => 20,
      y_width => 1
    )
    port map (
      x => mux0_y_net_x1,
      y(0) => slice2_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_1/butterfly_direct/csub"

entity csub_entity_bee9b13ff2 is
  port (
    a_im: in std_logic_vector(17 downto 0); 
    a_re: in std_logic_vector(17 downto 0); 
    b_im: in std_logic_vector(17 downto 0); 
    b_re: in std_logic_vector(17 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    c_im: out std_logic_vector(18 downto 0); 
    c_re: out std_logic_vector(18 downto 0)
  );
end csub_entity_bee9b13ff2;

architecture structural of csub_entity_bee9b13ff2 is
  signal alumode_op_net: std_logic_vector(3 downto 0);
  signal carryin_op_net: std_logic;
  signal carryinsel_op_net: std_logic_vector(2 downto 0);
  signal cast_c_im_dout_net_x0: std_logic_vector(18 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(18 downto 0);
  signal ce_1_sg_x24: std_logic;
  signal clk_1_sg_x24: std_logic;
  signal concat_a_y_net: std_logic_vector(47 downto 0);
  signal concat_b_y_net: std_logic_vector(47 downto 0);
  signal dsp48e_p_net: std_logic_vector(47 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x4: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x4: std_logic_vector(17 downto 0);
  signal opmode_op_net: std_logic_vector(6 downto 0);
  signal realign_a_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_a_re_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_re_dout_net: std_logic_vector(23 downto 0);
  signal reinterp_a_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_a_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterpret_a_output_port_net: std_logic_vector(29 downto 0);
  signal reinterpret_b_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret_c_output_port_net: std_logic_vector(47 downto 0);
  signal slice_a_y_net: std_logic_vector(29 downto 0);
  signal slice_b_y_net: std_logic_vector(17 downto 0);
  signal slice_c_im_y_net: std_logic_vector(23 downto 0);
  signal slice_c_re_y_net: std_logic_vector(23 downto 0);

begin
  force_im_output_port_net_x3 <= a_im;
  force_re_output_port_net_x3 <= a_re;
  force_im_output_port_net_x4 <= b_im;
  force_re_output_port_net_x4 <= b_re;
  ce_1_sg_x24 <= ce_1;
  clk_1_sg_x24 <= clk_1;
  c_im <= cast_c_im_dout_net_x0;
  c_re <= cast_c_re_dout_net_x0;

  alumode: entity work.constant_8038205d89
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => alumode_op_net
    );

  carryin: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => carryin_op_net
    );

  carryinsel: entity work.constant_822933f89b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => carryinsel_op_net
    );

  cast_c_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 21,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 19,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      clr => '0',
      din => reinterp_c_im_output_port_net,
      en => "1",
      dout => cast_c_im_dout_net_x0
    );

  cast_c_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 21,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 19,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      clr => '0',
      din => reinterp_c_re_output_port_net,
      en => "1",
      dout => cast_c_re_dout_net_x0
    );

  concat_a: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_a_re_output_port_net,
      in1 => reinterp_a_im_output_port_net,
      y => concat_a_y_net
    );

  concat_b: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_b_re_output_port_net,
      in1 => reinterp_b_im_output_port_net,
      y => concat_b_y_net
    );

  dsp48e: entity work.xldsp48e
    generic map (
      a_input => "DIRECT",
      acascreg => 1,
      alumodereg => 1,
      areg => 1,
      autoreset_pattern_detect => FALSE,
      autoreset_pattern_detect_optinv => "MATCH",
      b_input => "DIRECT",
      bcascreg => 1,
      breg => 1,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      mreg => 1,
      opmodereg => 1,
      preg => 1,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_mult => "MULT_S",
      use_op => 0,
      use_pattern_detect => "NO_PATDET",
      use_simd => "TWO24"
    )
    port map (
      a => reinterpret_a_output_port_net,
      alumode => alumode_op_net,
      b => reinterpret_b_output_port_net,
      c => reinterpret_c_output_port_net,
      carryin(0) => carryin_op_net,
      carryinsel => carryinsel_op_net,
      ce => ce_1_sg_x24,
      cea1 => "1",
      cea2 => "1",
      cealumode => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cecarryin => "1",
      cectrl => "1",
      cem => "1",
      cemultcarryin => "1",
      cep => "1",
      clk => clk_1_sg_x24,
      en => "1",
      opmode => opmode_op_net,
      rst => "0",
      rsta => "0",
      rstalumode => "0",
      rstb => "0",
      rstc => "0",
      rstcarryin => "0",
      rstctrl => "0",
      rstm => "0",
      rstp => "0",
      p => dsp48e_p_net
    );

  opmode: entity work.constant_270746ab47
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => opmode_op_net
    );

  realign_a_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 21,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      clr => '0',
      din => force_im_output_port_net_x3,
      en => "1",
      dout => realign_a_im_dout_net
    );

  realign_a_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 21,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      clr => '0',
      din => force_re_output_port_net_x3,
      en => "1",
      dout => realign_a_re_dout_net
    );

  realign_b_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 21,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      clr => '0',
      din => force_im_output_port_net_x4,
      en => "1",
      dout => realign_b_im_dout_net
    );

  realign_b_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 21,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      clr => '0',
      din => force_re_output_port_net_x4,
      en => "1",
      dout => realign_b_re_dout_net
    );

  reinterp_a_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_im_dout_net,
      output_port => reinterp_a_im_output_port_net
    );

  reinterp_a_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_re_dout_net,
      output_port => reinterp_a_re_output_port_net
    );

  reinterp_b_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_im_dout_net,
      output_port => reinterp_b_im_output_port_net
    );

  reinterp_b_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_re_dout_net,
      output_port => reinterp_b_re_output_port_net
    );

  reinterp_c_im: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_im_y_net,
      output_port => reinterp_c_im_output_port_net
    );

  reinterp_c_re: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_re_y_net,
      output_port => reinterp_c_re_output_port_net
    );

  reinterpret_a: entity work.reinterpret_eb03bc3377
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_a_y_net,
      output_port => reinterpret_a_output_port_net
    );

  reinterpret_b: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_b_y_net,
      output_port => reinterpret_b_output_port_net
    );

  reinterpret_c: entity work.reinterpret_7ea107432a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_a_y_net,
      output_port => reinterpret_c_output_port_net
    );

  slice_a: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 47,
      x_width => 48,
      y_width => 30
    )
    port map (
      x => concat_b_y_net,
      y => slice_a_y_net
    );

  slice_b: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 48,
      y_width => 18
    )
    port map (
      x => concat_b_y_net,
      y => slice_b_y_net
    );

  slice_c_im: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 23,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_im_y_net
    );

  slice_c_re: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 47,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_re_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_1/butterfly_direct/twiddle_pass_through"

entity twiddle_pass_through_entity_5d7bae4984 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(17 downto 0); 
    bw_re: out std_logic_vector(17 downto 0)
  );
end twiddle_pass_through_entity_5d7bae4984;

architecture structural of twiddle_pass_through_entity_5d7bae4984 is
  signal force_im_output_port_net_x6: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x7: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x6: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x7: std_logic_vector(17 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x1: std_logic_vector(35 downto 0);

begin
  single_port_ram_data_out_net_x1 <= a;
  mux_y_net_x1 <= b;
  a_im <= force_im_output_port_net_x6;
  a_re <= force_re_output_port_net_x6;
  bw_im <= force_im_output_port_net_x7;
  bw_re <= force_re_output_port_net_x7;

  c_to_ri1_6d9c2777fd: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => mux_y_net_x1,
      im => force_im_output_port_net_x7,
      re => force_re_output_port_net_x7
    );

  c_to_ri_68be4e2de1: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => single_port_ram_data_out_net_x1,
      im => force_im_output_port_net_x6,
      re => force_re_output_port_net_x6
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_1/butterfly_direct"

entity butterfly_direct_entity_792130b4bc is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    a_bw_x0: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly_direct_entity_792130b4bc;

architecture structural of butterfly_direct_entity_792130b4bc is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(18 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(18 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(18 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(18 downto 0);
  signal ce_1_sg_x25: std_logic;
  signal clk_1_sg_x25: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x6: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x7: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x6: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x7: std_logic_vector(17 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(19 downto 0);
  signal mux1_y_net_x1: std_logic_vector(19 downto 0);
  signal mux2_y_net_x1: std_logic_vector(19 downto 0);
  signal mux3_y_net_x1: std_logic_vector(19 downto 0);
  signal mux_y_net_x0: std_logic;
  signal mux_y_net_x2: std_logic_vector(35 downto 0);
  signal scale0_op_net: std_logic_vector(18 downto 0);
  signal scale1_op_net: std_logic_vector(18 downto 0);
  signal scale2_op_net: std_logic_vector(18 downto 0);
  signal scale3_op_net: std_logic_vector(18 downto 0);
  signal shift_delay_q_net: std_logic;
  signal single_port_ram_data_out_net_x2: std_logic_vector(35 downto 0);
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  single_port_ram_data_out_net_x2 <= a;
  mux_y_net_x2 <= b;
  ce_1_sg_x25 <= ce_1;
  clk_1_sg_x25 <= clk_1;
  slice_y_net_x0 <= shift;
  mux_y_net_x0 <= sync;
  a_bw <= concat_y_net_x2;
  a_bw_x0 <= concat_y_net_x3;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x0;

  cadd_27e38c959d: entity work.cadd_entity_27e38c959d
    port map (
      a_im => force_im_output_port_net_x6,
      a_re => force_re_output_port_net_x6,
      b_im => force_im_output_port_net_x7,
      b_re => force_re_output_port_net_x7,
      ce_1 => ce_1_sg_x25,
      clk_1 => clk_1_sg_x25,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_faf530fa35: entity work.convert_of0_entity_faf530fa35
    port map (
      ce_1 => ce_1_sg_x25,
      clk_1 => clk_1_sg_x25,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_04ba2a73df: entity work.convert_of0_entity_faf530fa35
    port map (
      ce_1 => ce_1_sg_x25,
      clk_1 => clk_1_sg_x25,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_1dfa5d9dd3: entity work.convert_of0_entity_faf530fa35
    port map (
      ce_1 => ce_1_sg_x25,
      clk_1 => clk_1_sg_x25,
      din => mux2_y_net_x1,
      dout => adder_s_net_x5,
      of_x0 => and_y_net_x2
    );

  convert_of3_6609b2911d: entity work.convert_of0_entity_faf530fa35
    port map (
      ce_1 => ce_1_sg_x25,
      clk_1 => clk_1_sg_x25,
      din => mux3_y_net_x1,
      dout => adder_s_net_x6,
      of_x0 => and_y_net_x3
    );

  csub_bee9b13ff2: entity work.csub_entity_bee9b13ff2
    port map (
      a_im => force_im_output_port_net_x6,
      a_re => force_re_output_port_net_x6,
      b_im => force_im_output_port_net_x7,
      b_re => force_re_output_port_net_x7,
      ce_1 => ce_1_sg_x25,
      clk_1 => clk_1_sg_x25,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_28159dbdb9
    port map (
      ce => ce_1_sg_x25,
      clk => clk_1_sg_x25,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_28159dbdb9
    port map (
      ce => ce_1_sg_x25,
      clk => clk_1_sg_x25,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_28159dbdb9
    port map (
      ce => ce_1_sg_x25,
      clk => clk_1_sg_x25,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_28159dbdb9
    port map (
      ce => ce_1_sg_x25,
      clk => clk_1_sg_x25,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x1
    );

  ri_to_c01_1193365af6: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x2
    );

  ri_to_c23_2c35792faa: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x6,
      re => adder_s_net_x5,
      c => concat_y_net_x3
    );

  scale0: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x25,
      clk => clk_1_sg_x25,
      d(0) => slice_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x25,
      clk => clk_1_sg_x25,
      clr => '0',
      d(0) => mux_y_net_x0,
      q(0) => sync_delay_q_net_x0
    );

  twiddle_pass_through_5d7bae4984: entity work.twiddle_pass_through_entity_5d7bae4984
    port map (
      a => single_port_ram_data_out_net_x2,
      b => mux_y_net_x2,
      a_im => force_im_output_port_net_x6,
      a_re => force_re_output_port_net_x6,
      bw_im => force_im_output_port_net_x7,
      bw_re => force_re_output_port_net_x7
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_1/sync_delay"

entity sync_delay_entity_2cbc398b43 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_2cbc398b43;

architecture structural of sync_delay_entity_2cbc398b43 is
  signal ce_1_sg_x28: std_logic;
  signal clk_1_sg_x28: std_logic;
  signal constant1_op_net: std_logic_vector(8 downto 0);
  signal constant2_op_net: std_logic_vector(8 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(8 downto 0);
  signal counter_op_net: std_logic_vector(8 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x1: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x28 <= ce_1;
  clk_1_sg_x28 <= clk_1;
  delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x1;

  constant1: entity work.constant_fd85eb7067
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_4a391b9a0e
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

  constant_x0: entity work.constant_b4ec9de7d1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_d4d70c5a247867e8",
      op_arith => xlUnsigned,
      op_width => 9
    )
    port map (
      ce => ce_1_sg_x28,
      clk => clk_1_sg_x28,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x1
    );

  relational: entity work.relational_6c3ee657fa
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_78eac2928d
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

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_1"

entity fft_stage_1_entity_31f6aa536b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    of_in: in std_logic; 
    shift: in std_logic_vector(12 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_stage_1_entity_31f6aa536b;

architecture structural of fft_stage_1_entity_31f6aa536b is
  signal ce_1_sg_x29: std_logic;
  signal clk_1_sg_x29: std_logic;
  signal concat_y_net_x4: std_logic_vector(35 downto 0);
  signal concat_y_net_x5: std_logic_vector(35 downto 0);
  signal concat_y_net_x6: std_logic_vector(35 downto 0);
  signal concat_y_net_x7: std_logic_vector(35 downto 0);
  signal constant_op_net_x0: std_logic;
  signal counter_op_net: std_logic_vector(8 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal mux_y_net_x1: std_logic;
  signal mux_y_net_x2: std_logic_vector(35 downto 0);
  signal shift_net_x0: std_logic_vector(12 downto 0);
  signal single_port_ram_data_out_net_x0: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x3: std_logic_vector(35 downto 0);
  signal slice1_y_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x1: std_logic;
  signal sync_net_x0: std_logic;

begin
  ce_1_sg_x29 <= ce_1;
  clk_1_sg_x29 <= clk_1;
  concat_y_net_x4 <= in1;
  concat_y_net_x5 <= in2;
  constant_op_net_x0 <= of_in;
  shift_net_x0 <= shift;
  sync_net_x0 <= sync;
  of_x0 <= logical1_y_net_x0;
  out1 <= concat_y_net_x6;
  out2 <= concat_y_net_x7;
  sync_out <= sync_delay_q_net_x1;

  butterfly_direct_792130b4bc: entity work.butterfly_direct_entity_792130b4bc
    port map (
      a => single_port_ram_data_out_net_x3,
      b => mux_y_net_x2,
      ce_1 => ce_1_sg_x29,
      clk_1 => clk_1_sg_x29,
      shift => slice_y_net_x0,
      sync => mux_y_net_x1,
      a_bw => concat_y_net_x6,
      a_bw_x0 => concat_y_net_x7,
      of_x0 => logical_y_net_x0,
      sync_out => sync_delay_q_net_x1
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_b9730cea34623a8b",
      op_arith => xlUnsigned,
      op_width => 9
    )
    port map (
      ce => ce_1_sg_x29,
      clk => clk_1_sg_x29,
      clr => '0',
      en => "1",
      rst(0) => sync_net_x0,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x29,
      clk => clk_1_sg_x29,
      d(0) => sync_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay_b_e7e9428fad: entity work.delay_bram0_entity_d40c32b9c6
    port map (
      ce_1 => ce_1_sg_x29,
      clk_1 => clk_1_sg_x29,
      in1 => mux1_y_net_x0,
      out1 => single_port_ram_data_out_net_x3
    );

  delay_f_4fea3bf8f9: entity work.delay_bram0_entity_d40c32b9c6
    port map (
      ce_1 => ce_1_sg_x29,
      clk_1 => clk_1_sg_x29,
      in1 => concat_y_net_x5,
      out1 => single_port_ram_data_out_net_x0
    );

  logical1: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x29,
      clk => clk_1_sg_x29,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => constant_op_net_x0,
      y(0) => logical1_y_net_x0
    );

  mux: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x29,
      clk => clk_1_sg_x29,
      clr => '0',
      d0 => single_port_ram_data_out_net_x0,
      d1 => concat_y_net_x4,
      sel(0) => slice1_y_net,
      y => mux_y_net_x2
    );

  mux1: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x29,
      clk => clk_1_sg_x29,
      clr => '0',
      d0 => concat_y_net_x4,
      d1 => single_port_ram_data_out_net_x0,
      sel(0) => slice1_y_net,
      y => mux1_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 13,
      y_width => 1
    )
    port map (
      x => shift_net_x0,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 8,
      x_width => 9,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  sync_delay_2cbc398b43: entity work.sync_delay_entity_2cbc398b43
    port map (
      ce_1 => ce_1_sg_x29,
      clk_1 => clk_1_sg_x29,
      in_x0 => delay_q_net_x0,
      out_x0 => mux_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_2/butterfly_direct/twiddle_stage_2"

entity twiddle_stage_2_entity_751968b975 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(17 downto 0); 
    bw_re: out std_logic_vector(17 downto 0); 
    sync_out: out std_logic
  );
end twiddle_stage_2_entity_751968b975;

architecture structural of twiddle_stage_2_entity_751968b975 is
  signal ce_1_sg_x40: std_logic;
  signal clk_1_sg_x40: std_logic;
  signal convert_dout_net: std_logic_vector(17 downto 0);
  signal counter_op_net: std_logic_vector(7 downto 0);
  signal delay0_q_net_x2: std_logic_vector(17 downto 0);
  signal delay1_q_net_x2: std_logic_vector(17 downto 0);
  signal delay2_q_net: std_logic;
  signal delay3_q_net: std_logic_vector(17 downto 0);
  signal delay4_q_net: std_logic_vector(17 downto 0);
  signal delay5_q_net: std_logic_vector(17 downto 0);
  signal delay6_q_net: std_logic_vector(17 downto 0);
  signal delay7_q_net: std_logic;
  signal delay8_q_net_x0: std_logic;
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal mux0_y_net_x2: std_logic_vector(17 downto 0);
  signal mux1_y_net_x2: std_logic_vector(17 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal mux_y_net_x2: std_logic;
  signal negate_op_net: std_logic_vector(18 downto 0);
  signal single_port_ram_data_out_net_x1: std_logic_vector(35 downto 0);
  signal slice_y_net: std_logic;

begin
  single_port_ram_data_out_net_x1 <= a;
  mux_y_net_x1 <= b;
  ce_1_sg_x40 <= ce_1;
  clk_1_sg_x40 <= clk_1;
  mux_y_net_x2 <= sync;
  a_im <= delay1_q_net_x2;
  a_re <= delay0_q_net_x2;
  bw_im <= mux1_y_net_x2;
  bw_re <= mux0_y_net_x2;
  sync_out <= delay8_q_net_x0;

  c_to_ri1_e6522d129c: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => mux_y_net_x1,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  c_to_ri_4fcbdd609e: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => single_port_ram_data_out_net_x1,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  convert: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 1,
      overflow => xlSaturate,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      din => negate_op_net,
      en => "1",
      dout => convert_dout_net
    );

  counter: entity work.counter_11ccef49a2
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      rst(0) => delay7_q_net,
      op => counter_op_net
    );

  delay0: entity work.delay_fa2be75f6e
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      d => force_re_output_port_net_x0,
      q => delay0_q_net_x2
    );

  delay1: entity work.delay_fa2be75f6e
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      d => force_im_output_port_net_x0,
      q => delay1_q_net_x2
    );

  delay2: entity work.delay_43bd805056
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      d(0) => slice_y_net,
      q(0) => delay2_q_net
    );

  delay3: entity work.delay_c462a80bee
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      d => delay6_q_net,
      q => delay3_q_net
    );

  delay4: entity work.delay_ae3f84524a
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      d => convert_dout_net,
      q => delay4_q_net
    );

  delay5: entity work.delay_2f744cdafb
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      d => force_re_output_port_net_x1,
      q => delay5_q_net
    );

  delay6: entity work.delay_2f744cdafb
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      d => force_im_output_port_net_x1,
      q => delay6_q_net
    );

  delay7: entity work.delay_c53de546ea
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      d(0) => mux_y_net_x2,
      q(0) => delay7_q_net
    );

  delay8: entity work.delay_aab7b18c27
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      d(0) => delay7_q_net,
      q(0) => delay8_q_net_x0
    );

  mux0: entity work.mux_621a1c5abf
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      d0 => delay5_q_net,
      d1 => delay6_q_net,
      sel(0) => slice_y_net,
      y => mux0_y_net_x2
    );

  mux1: entity work.mux_181e58d842
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      d0 => delay3_q_net,
      d1 => delay4_q_net,
      sel(0) => delay2_q_net,
      y => mux1_y_net_x2
    );

  negate: entity work.negate_e1a9d1ade1
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      ip => force_re_output_port_net_x1,
      op => negate_op_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 7,
      new_msb => 7,
      x_width => 8,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_2/butterfly_direct"

entity butterfly_direct_entity_5acb48a614 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    a_bw_x0: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly_direct_entity_5acb48a614;

architecture structural of butterfly_direct_entity_5acb48a614 is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(18 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(18 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(18 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(18 downto 0);
  signal ce_1_sg_x41: std_logic;
  signal clk_1_sg_x41: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal delay0_q_net_x2: std_logic_vector(17 downto 0);
  signal delay1_q_net_x2: std_logic_vector(17 downto 0);
  signal delay8_q_net_x0: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(19 downto 0);
  signal mux0_y_net_x2: std_logic_vector(17 downto 0);
  signal mux1_y_net_x1: std_logic_vector(19 downto 0);
  signal mux1_y_net_x2: std_logic_vector(17 downto 0);
  signal mux2_y_net_x1: std_logic_vector(19 downto 0);
  signal mux3_y_net_x1: std_logic_vector(19 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x4: std_logic;
  signal scale0_op_net: std_logic_vector(18 downto 0);
  signal scale1_op_net: std_logic_vector(18 downto 0);
  signal scale2_op_net: std_logic_vector(18 downto 0);
  signal scale3_op_net: std_logic_vector(18 downto 0);
  signal shift_delay_q_net: std_logic;
  signal single_port_ram_data_out_net_x2: std_logic_vector(35 downto 0);
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  single_port_ram_data_out_net_x2 <= a;
  mux_y_net_x3 <= b;
  ce_1_sg_x41 <= ce_1;
  clk_1_sg_x41 <= clk_1;
  slice_y_net_x0 <= shift;
  mux_y_net_x4 <= sync;
  a_bw <= concat_y_net_x2;
  a_bw_x0 <= concat_y_net_x3;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x0;

  cadd_fc3817323e: entity work.cadd_entity_27e38c959d
    port map (
      a_im => delay1_q_net_x2,
      a_re => delay0_q_net_x2,
      b_im => mux1_y_net_x2,
      b_re => mux0_y_net_x2,
      ce_1 => ce_1_sg_x41,
      clk_1 => clk_1_sg_x41,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_e891b7ab71: entity work.convert_of0_entity_faf530fa35
    port map (
      ce_1 => ce_1_sg_x41,
      clk_1 => clk_1_sg_x41,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_56b1a6186f: entity work.convert_of0_entity_faf530fa35
    port map (
      ce_1 => ce_1_sg_x41,
      clk_1 => clk_1_sg_x41,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_edc14a74b4: entity work.convert_of0_entity_faf530fa35
    port map (
      ce_1 => ce_1_sg_x41,
      clk_1 => clk_1_sg_x41,
      din => mux2_y_net_x1,
      dout => adder_s_net_x5,
      of_x0 => and_y_net_x2
    );

  convert_of3_7fecda935e: entity work.convert_of0_entity_faf530fa35
    port map (
      ce_1 => ce_1_sg_x41,
      clk_1 => clk_1_sg_x41,
      din => mux3_y_net_x1,
      dout => adder_s_net_x6,
      of_x0 => and_y_net_x3
    );

  csub_c82c8aa330: entity work.csub_entity_bee9b13ff2
    port map (
      a_im => delay1_q_net_x2,
      a_re => delay0_q_net_x2,
      b_im => mux1_y_net_x2,
      b_re => mux0_y_net_x2,
      ce_1 => ce_1_sg_x41,
      clk_1 => clk_1_sg_x41,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_28159dbdb9
    port map (
      ce => ce_1_sg_x41,
      clk => clk_1_sg_x41,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_28159dbdb9
    port map (
      ce => ce_1_sg_x41,
      clk => clk_1_sg_x41,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_28159dbdb9
    port map (
      ce => ce_1_sg_x41,
      clk => clk_1_sg_x41,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_28159dbdb9
    port map (
      ce => ce_1_sg_x41,
      clk => clk_1_sg_x41,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x1
    );

  ri_to_c01_c9e3b75a62: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x2
    );

  ri_to_c23_8c1262e92b: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x6,
      re => adder_s_net_x5,
      c => concat_y_net_x3
    );

  scale0: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x41,
      clk => clk_1_sg_x41,
      d(0) => slice_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x41,
      clk => clk_1_sg_x41,
      clr => '0',
      d(0) => delay8_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

  twiddle_stage_2_751968b975: entity work.twiddle_stage_2_entity_751968b975
    port map (
      a => single_port_ram_data_out_net_x2,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x41,
      clk_1 => clk_1_sg_x41,
      sync => mux_y_net_x4,
      a_im => delay1_q_net_x2,
      a_re => delay0_q_net_x2,
      bw_im => mux1_y_net_x2,
      bw_re => mux0_y_net_x2,
      sync_out => delay8_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_2/delay_b"

entity delay_b_entity_3c3c50923a is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0)
  );
end delay_b_entity_3c3c50923a;

architecture structural of delay_b_entity_3c3c50923a is
  signal ce_1_sg_x42: std_logic;
  signal clk_1_sg_x42: std_logic;
  signal constant2_op_net: std_logic;
  signal counter_op_net: std_logic_vector(6 downto 0);
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x3: std_logic_vector(35 downto 0);

begin
  ce_1_sg_x42 <= ce_1;
  clk_1_sg_x42 <= clk_1;
  mux1_y_net_x0 <= in1;
  out1 <= single_port_ram_data_out_net_x3;

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 123,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_9adf5a9f785e3fb8",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 7
    )
    port map (
      ce => ce_1_sg_x42,
      clk => clk_1_sg_x42,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  single_port_ram: entity work.xlspram
    generic map (
      c_address_width => 7,
      c_width => 36,
      core_name0 => "bmg_62_51321cc7c8e9865c",
      latency => 3
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x42,
      clk => clk_1_sg_x42,
      data_in => mux1_y_net_x0,
      en => "1",
      rst => "0",
      we(0) => constant2_op_net,
      data_out => single_port_ram_data_out_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_2/sync_delay"

entity sync_delay_entity_2b91449130 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_2b91449130;

architecture structural of sync_delay_entity_2b91449130 is
  signal ce_1_sg_x44: std_logic;
  signal clk_1_sg_x44: std_logic;
  signal constant1_op_net: std_logic_vector(7 downto 0);
  signal constant2_op_net: std_logic_vector(7 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(7 downto 0);
  signal counter_op_net: std_logic_vector(7 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x5: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x44 <= ce_1;
  clk_1_sg_x44 <= clk_1;
  delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x5;

  constant1: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_e8aae5d3bb
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

  constant_x0: entity work.constant_b437b02512
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_b2e26777d24cb38d",
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_1_sg_x44,
      clk => clk_1_sg_x44,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x5
    );

  relational: entity work.relational_54048c8b02
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_16235eb2bf
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

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_2"

entity fft_stage_2_entity_b72ac4daf5 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    of_in: in std_logic; 
    shift: in std_logic_vector(12 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_stage_2_entity_b72ac4daf5;

architecture structural of fft_stage_2_entity_b72ac4daf5 is
  signal ce_1_sg_x45: std_logic;
  signal clk_1_sg_x45: std_logic;
  signal concat_y_net_x10: std_logic_vector(35 downto 0);
  signal concat_y_net_x11: std_logic_vector(35 downto 0);
  signal concat_y_net_x7: std_logic_vector(35 downto 0);
  signal concat_y_net_x9: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(7 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical1_y_net_x1: std_logic;
  signal logical1_y_net_x2: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x5: std_logic;
  signal shift_net_x1: std_logic_vector(12 downto 0);
  signal single_port_ram_data_out_net_x0: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x3: std_logic_vector(35 downto 0);
  signal slice1_y_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x2: std_logic;
  signal sync_delay_q_net_x3: std_logic;

begin
  ce_1_sg_x45 <= ce_1;
  clk_1_sg_x45 <= clk_1;
  concat_y_net_x7 <= in1;
  concat_y_net_x9 <= in2;
  logical1_y_net_x1 <= of_in;
  shift_net_x1 <= shift;
  sync_delay_q_net_x2 <= sync;
  of_x0 <= logical1_y_net_x2;
  out1 <= concat_y_net_x10;
  out2 <= concat_y_net_x11;
  sync_out <= sync_delay_q_net_x3;

  butterfly_direct_5acb48a614: entity work.butterfly_direct_entity_5acb48a614
    port map (
      a => single_port_ram_data_out_net_x3,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x45,
      clk_1 => clk_1_sg_x45,
      shift => slice_y_net_x0,
      sync => mux_y_net_x5,
      a_bw => concat_y_net_x10,
      a_bw_x0 => concat_y_net_x11,
      of_x0 => logical_y_net_x0,
      sync_out => sync_delay_q_net_x3
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_df2bb90b8fe02ecf",
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_1_sg_x45,
      clk => clk_1_sg_x45,
      clr => '0',
      en => "1",
      rst(0) => sync_delay_q_net_x2,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x45,
      clk => clk_1_sg_x45,
      d(0) => sync_delay_q_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay_b_3c3c50923a: entity work.delay_b_entity_3c3c50923a
    port map (
      ce_1 => ce_1_sg_x45,
      clk_1 => clk_1_sg_x45,
      in1 => mux1_y_net_x0,
      out1 => single_port_ram_data_out_net_x3
    );

  delay_f_15a6129370: entity work.delay_b_entity_3c3c50923a
    port map (
      ce_1 => ce_1_sg_x45,
      clk_1 => clk_1_sg_x45,
      in1 => concat_y_net_x9,
      out1 => single_port_ram_data_out_net_x0
    );

  logical1: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x45,
      clk => clk_1_sg_x45,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => logical1_y_net_x1,
      y(0) => logical1_y_net_x2
    );

  mux: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x45,
      clk => clk_1_sg_x45,
      clr => '0',
      d0 => single_port_ram_data_out_net_x0,
      d1 => concat_y_net_x7,
      sel(0) => slice1_y_net,
      y => mux_y_net_x3
    );

  mux1: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x45,
      clk => clk_1_sg_x45,
      clr => '0',
      d0 => concat_y_net_x7,
      d1 => single_port_ram_data_out_net_x0,
      sel(0) => slice1_y_net,
      y => mux1_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 13,
      y_width => 1
    )
    port map (
      x => shift_net_x1,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 7,
      new_msb => 7,
      x_width => 8,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  sync_delay_2b91449130: entity work.sync_delay_entity_2b91449130
    port map (
      ce_1 => ce_1_sg_x45,
      clk_1 => clk_1_sg_x45,
      in_x0 => delay_q_net_x0,
      out_x0 => mux_y_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_3/butterfly_direct/cadd"

entity cadd_entity_5ccc5ee94d is
  port (
    a_im: in std_logic_vector(17 downto 0); 
    a_re: in std_logic_vector(17 downto 0); 
    b_im: in std_logic_vector(21 downto 0); 
    b_re: in std_logic_vector(21 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    c_im: out std_logic_vector(22 downto 0); 
    c_re: out std_logic_vector(22 downto 0)
  );
end cadd_entity_5ccc5ee94d;

architecture structural of cadd_entity_5ccc5ee94d is
  signal alumode_op_net: std_logic_vector(3 downto 0);
  signal carryin_op_net: std_logic;
  signal carryinsel_op_net: std_logic_vector(2 downto 0);
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal ce_1_sg_x46: std_logic;
  signal clk_1_sg_x46: std_logic;
  signal concat_a_y_net: std_logic_vector(47 downto 0);
  signal concat_b_y_net: std_logic_vector(47 downto 0);
  signal convert0_dout_net_x0: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x0: std_logic_vector(21 downto 0);
  signal dsp48e_p_net: std_logic_vector(47 downto 0);
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal opmode_op_net: std_logic_vector(6 downto 0);
  signal realign_a_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_a_re_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_re_dout_net: std_logic_vector(23 downto 0);
  signal reinterp_a_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_a_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterpret_a_output_port_net: std_logic_vector(29 downto 0);
  signal reinterpret_b_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret_c_output_port_net: std_logic_vector(47 downto 0);
  signal slice_a_y_net: std_logic_vector(29 downto 0);
  signal slice_b_y_net: std_logic_vector(17 downto 0);
  signal slice_c_im_y_net: std_logic_vector(23 downto 0);
  signal slice_c_re_y_net: std_logic_vector(23 downto 0);

begin
  force_im_output_port_net_x0 <= a_im;
  force_re_output_port_net_x0 <= a_re;
  convert1_dout_net_x0 <= b_im;
  convert0_dout_net_x0 <= b_re;
  ce_1_sg_x46 <= ce_1;
  clk_1_sg_x46 <= clk_1;
  c_im <= cast_c_im_dout_net_x0;
  c_re <= cast_c_re_dout_net_x0;

  alumode: entity work.constant_4c449dd556
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => alumode_op_net
    );

  carryin: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => carryin_op_net
    );

  carryinsel: entity work.constant_822933f89b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => carryinsel_op_net
    );

  cast_c_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 19,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 23,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x46,
      clk => clk_1_sg_x46,
      clr => '0',
      din => reinterp_c_im_output_port_net,
      en => "1",
      dout => cast_c_im_dout_net_x0
    );

  cast_c_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 19,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 23,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x46,
      clk => clk_1_sg_x46,
      clr => '0',
      din => reinterp_c_re_output_port_net,
      en => "1",
      dout => cast_c_re_dout_net_x0
    );

  concat_a: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_a_re_output_port_net,
      in1 => reinterp_a_im_output_port_net,
      y => concat_a_y_net
    );

  concat_b: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_b_re_output_port_net,
      in1 => reinterp_b_im_output_port_net,
      y => concat_b_y_net
    );

  dsp48e: entity work.xldsp48e
    generic map (
      a_input => "DIRECT",
      acascreg => 1,
      alumodereg => 1,
      areg => 1,
      autoreset_pattern_detect => FALSE,
      autoreset_pattern_detect_optinv => "MATCH",
      b_input => "DIRECT",
      bcascreg => 1,
      breg => 1,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      mreg => 1,
      opmodereg => 1,
      preg => 1,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_mult => "MULT_S",
      use_op => 0,
      use_pattern_detect => "NO_PATDET",
      use_simd => "TWO24"
    )
    port map (
      a => reinterpret_a_output_port_net,
      alumode => alumode_op_net,
      b => reinterpret_b_output_port_net,
      c => reinterpret_c_output_port_net,
      carryin(0) => carryin_op_net,
      carryinsel => carryinsel_op_net,
      ce => ce_1_sg_x46,
      cea1 => "1",
      cea2 => "1",
      cealumode => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cecarryin => "1",
      cectrl => "1",
      cem => "1",
      cemultcarryin => "1",
      cep => "1",
      clk => clk_1_sg_x46,
      en => "1",
      opmode => opmode_op_net,
      rst => "0",
      rsta => "0",
      rstalumode => "0",
      rstb => "0",
      rstc => "0",
      rstcarryin => "0",
      rstctrl => "0",
      rstm => "0",
      rstp => "0",
      p => dsp48e_p_net
    );

  opmode: entity work.constant_270746ab47
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => opmode_op_net
    );

  realign_a_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x46,
      clk => clk_1_sg_x46,
      clr => '0',
      din => force_im_output_port_net_x0,
      en => "1",
      dout => realign_a_im_dout_net
    );

  realign_a_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x46,
      clk => clk_1_sg_x46,
      clr => '0',
      din => force_re_output_port_net_x0,
      en => "1",
      dout => realign_a_re_dout_net
    );

  realign_b_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 19,
      din_width => 22,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x46,
      clk => clk_1_sg_x46,
      clr => '0',
      din => convert1_dout_net_x0,
      en => "1",
      dout => realign_b_im_dout_net
    );

  realign_b_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 19,
      din_width => 22,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x46,
      clk => clk_1_sg_x46,
      clr => '0',
      din => convert0_dout_net_x0,
      en => "1",
      dout => realign_b_re_dout_net
    );

  reinterp_a_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_im_dout_net,
      output_port => reinterp_a_im_output_port_net
    );

  reinterp_a_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_re_dout_net,
      output_port => reinterp_a_re_output_port_net
    );

  reinterp_b_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_im_dout_net,
      output_port => reinterp_b_im_output_port_net
    );

  reinterp_b_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_re_dout_net,
      output_port => reinterp_b_re_output_port_net
    );

  reinterp_c_im: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_im_y_net,
      output_port => reinterp_c_im_output_port_net
    );

  reinterp_c_re: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_re_y_net,
      output_port => reinterp_c_re_output_port_net
    );

  reinterpret_a: entity work.reinterpret_eb03bc3377
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_a_y_net,
      output_port => reinterpret_a_output_port_net
    );

  reinterpret_b: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_b_y_net,
      output_port => reinterpret_b_output_port_net
    );

  reinterpret_c: entity work.reinterpret_7ea107432a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_a_y_net,
      output_port => reinterpret_c_output_port_net
    );

  slice_a: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 47,
      x_width => 48,
      y_width => 30
    )
    port map (
      x => concat_b_y_net,
      y => slice_a_y_net
    );

  slice_b: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 48,
      y_width => 18
    )
    port map (
      x => concat_b_y_net,
      y => slice_b_y_net
    );

  slice_c_im: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 23,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_im_y_net
    );

  slice_c_re: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 47,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_re_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_3/butterfly_direct/convert_of0/convert"

entity convert_entity_812cb70ba6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(23 downto 0); 
    out_x0: out std_logic_vector(17 downto 0)
  );
end convert_entity_812cb70ba6;

architecture structural of convert_entity_812cb70ba6 is
  signal adder_s_net_x0: std_logic_vector(17 downto 0);
  signal almost_half_op_net: std_logic_vector(20 downto 0);
  signal bit_y_net: std_logic;
  signal ce_1_sg_x47: std_logic;
  signal clk_1_sg_x47: std_logic;
  signal concat_y_net: std_logic_vector(24 downto 0);
  signal constant_op_net: std_logic;
  signal force1_output_port_net: std_logic_vector(24 downto 0);
  signal force2_output_port_net: std_logic_vector(20 downto 0);
  signal mux0_y_net_x0: std_logic_vector(23 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(23 downto 0);
  signal tweak_op_y_net: std_logic;

begin
  ce_1_sg_x47 <= ce_1;
  clk_1_sg_x47 <= clk_1;
  mux0_y_net_x0 <= in_x0;
  out_x0 <= adder_s_net_x0;

  adder: entity work.addsub_2969055f39
    port map (
      a => force1_output_port_net,
      b => force2_output_port_net,
      ce => ce_1_sg_x47,
      clk => clk_1_sg_x47,
      clr => '0',
      s => adder_s_net_x0
    );

  almost_half: entity work.constant_9a2c97cce5
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => almost_half_op_net
    );

  bit: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 24,
      y_width => 1
    )
    port map (
      x => mux0_y_net_x0,
      y(0) => bit_y_net
    );

  concat: entity work.concat_f133931c1f
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

  force1: entity work.reinterpret_60ea556961
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_y_net,
      output_port => force1_output_port_net
    );

  force2: entity work.reinterpret_299ca43e25
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => almost_half_op_net,
      output_port => force2_output_port_net
    );

  reinterpret: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux0_y_net_x0,
      output_port => reinterpret_output_port_net
    );

  tweak_op: entity work.logical_938d99ac11
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

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_3/butterfly_direct/convert_of0"

entity convert_of0_entity_e218f4d06f is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(23 downto 0); 
    dout: out std_logic_vector(17 downto 0); 
    of_x0: out std_logic
  );
end convert_of0_entity_e218f4d06f;

architecture structural of convert_of0_entity_e218f4d06f is
  signal adder_s_net_x1: std_logic_vector(17 downto 0);
  signal all_0s_y_net: std_logic;
  signal all_1s_y_net: std_logic;
  signal and_y_net_x0: std_logic;
  signal ce_1_sg_x48: std_logic;
  signal clk_1_sg_x48: std_logic;
  signal invert1_op_net: std_logic;
  signal invert2_op_net: std_logic;
  signal invert3_op_net: std_logic;
  signal invert4_op_net: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal slice1_y_net: std_logic;
  signal slice2_y_net: std_logic;
  signal slice3_y_net: std_logic;
  signal slice4_y_net: std_logic;

begin
  ce_1_sg_x48 <= ce_1;
  clk_1_sg_x48 <= clk_1;
  mux0_y_net_x1 <= din;
  dout <= adder_s_net_x1;
  of_x0 <= and_y_net_x0;

  all_0s: entity work.logical_182ac6c51e
    port map (
      ce => ce_1_sg_x48,
      clk => clk_1_sg_x48,
      clr => '0',
      d0(0) => invert1_op_net,
      d1(0) => invert2_op_net,
      d2(0) => invert3_op_net,
      d3(0) => invert4_op_net,
      y(0) => all_0s_y_net
    );

  all_1s: entity work.logical_182ac6c51e
    port map (
      ce => ce_1_sg_x48,
      clk => clk_1_sg_x48,
      clr => '0',
      d0(0) => slice1_y_net,
      d1(0) => slice2_y_net,
      d2(0) => slice3_y_net,
      d3(0) => slice4_y_net,
      y(0) => all_1s_y_net
    );

  and_x0: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => all_0s_y_net,
      d1(0) => all_1s_y_net,
      y(0) => and_y_net_x0
    );

  convert_812cb70ba6: entity work.convert_entity_812cb70ba6
    port map (
      ce_1 => ce_1_sg_x48,
      clk_1 => clk_1_sg_x48,
      in_x0 => mux0_y_net_x1,
      out_x0 => adder_s_net_x1
    );

  invert1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x48,
      clk => clk_1_sg_x48,
      clr => '0',
      ip(0) => slice1_y_net,
      op(0) => invert1_op_net
    );

  invert2: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x48,
      clk => clk_1_sg_x48,
      clr => '0',
      ip(0) => slice2_y_net,
      op(0) => invert2_op_net
    );

  invert3: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x48,
      clk => clk_1_sg_x48,
      clr => '0',
      ip(0) => slice3_y_net,
      op(0) => invert3_op_net
    );

  invert4: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x48,
      clk => clk_1_sg_x48,
      clr => '0',
      ip(0) => slice4_y_net,
      op(0) => invert4_op_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 23,
      new_msb => 23,
      x_width => 24,
      y_width => 1
    )
    port map (
      x => mux0_y_net_x1,
      y(0) => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 22,
      new_msb => 22,
      x_width => 24,
      y_width => 1
    )
    port map (
      x => mux0_y_net_x1,
      y(0) => slice2_y_net
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 21,
      new_msb => 21,
      x_width => 24,
      y_width => 1
    )
    port map (
      x => mux0_y_net_x1,
      y(0) => slice3_y_net
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 20,
      new_msb => 20,
      x_width => 24,
      y_width => 1
    )
    port map (
      x => mux0_y_net_x1,
      y(0) => slice4_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_3/butterfly_direct/csub"

entity csub_entity_839afd606e is
  port (
    a_im: in std_logic_vector(17 downto 0); 
    a_re: in std_logic_vector(17 downto 0); 
    b_im: in std_logic_vector(21 downto 0); 
    b_re: in std_logic_vector(21 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    c_im: out std_logic_vector(22 downto 0); 
    c_re: out std_logic_vector(22 downto 0)
  );
end csub_entity_839afd606e;

architecture structural of csub_entity_839afd606e is
  signal alumode_op_net: std_logic_vector(3 downto 0);
  signal carryin_op_net: std_logic;
  signal carryinsel_op_net: std_logic_vector(2 downto 0);
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal ce_1_sg_x55: std_logic;
  signal clk_1_sg_x55: std_logic;
  signal concat_a_y_net: std_logic_vector(47 downto 0);
  signal concat_b_y_net: std_logic_vector(47 downto 0);
  signal convert0_dout_net_x1: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x1: std_logic_vector(21 downto 0);
  signal dsp48e_p_net: std_logic_vector(47 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal opmode_op_net: std_logic_vector(6 downto 0);
  signal realign_a_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_a_re_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_re_dout_net: std_logic_vector(23 downto 0);
  signal reinterp_a_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_a_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterpret_a_output_port_net: std_logic_vector(29 downto 0);
  signal reinterpret_b_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret_c_output_port_net: std_logic_vector(47 downto 0);
  signal slice_a_y_net: std_logic_vector(29 downto 0);
  signal slice_b_y_net: std_logic_vector(17 downto 0);
  signal slice_c_im_y_net: std_logic_vector(23 downto 0);
  signal slice_c_re_y_net: std_logic_vector(23 downto 0);

begin
  force_im_output_port_net_x1 <= a_im;
  force_re_output_port_net_x1 <= a_re;
  convert1_dout_net_x1 <= b_im;
  convert0_dout_net_x1 <= b_re;
  ce_1_sg_x55 <= ce_1;
  clk_1_sg_x55 <= clk_1;
  c_im <= cast_c_im_dout_net_x0;
  c_re <= cast_c_re_dout_net_x0;

  alumode: entity work.constant_8038205d89
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => alumode_op_net
    );

  carryin: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => carryin_op_net
    );

  carryinsel: entity work.constant_822933f89b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => carryinsel_op_net
    );

  cast_c_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 19,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 23,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      din => reinterp_c_im_output_port_net,
      en => "1",
      dout => cast_c_im_dout_net_x0
    );

  cast_c_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 19,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 23,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      din => reinterp_c_re_output_port_net,
      en => "1",
      dout => cast_c_re_dout_net_x0
    );

  concat_a: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_a_re_output_port_net,
      in1 => reinterp_a_im_output_port_net,
      y => concat_a_y_net
    );

  concat_b: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_b_re_output_port_net,
      in1 => reinterp_b_im_output_port_net,
      y => concat_b_y_net
    );

  dsp48e: entity work.xldsp48e
    generic map (
      a_input => "DIRECT",
      acascreg => 1,
      alumodereg => 1,
      areg => 1,
      autoreset_pattern_detect => FALSE,
      autoreset_pattern_detect_optinv => "MATCH",
      b_input => "DIRECT",
      bcascreg => 1,
      breg => 1,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      mreg => 1,
      opmodereg => 1,
      preg => 1,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_mult => "MULT_S",
      use_op => 0,
      use_pattern_detect => "NO_PATDET",
      use_simd => "TWO24"
    )
    port map (
      a => reinterpret_a_output_port_net,
      alumode => alumode_op_net,
      b => reinterpret_b_output_port_net,
      c => reinterpret_c_output_port_net,
      carryin(0) => carryin_op_net,
      carryinsel => carryinsel_op_net,
      ce => ce_1_sg_x55,
      cea1 => "1",
      cea2 => "1",
      cealumode => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cecarryin => "1",
      cectrl => "1",
      cem => "1",
      cemultcarryin => "1",
      cep => "1",
      clk => clk_1_sg_x55,
      en => "1",
      opmode => opmode_op_net,
      rst => "0",
      rsta => "0",
      rstalumode => "0",
      rstb => "0",
      rstc => "0",
      rstcarryin => "0",
      rstctrl => "0",
      rstm => "0",
      rstp => "0",
      p => dsp48e_p_net
    );

  opmode: entity work.constant_270746ab47
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => opmode_op_net
    );

  realign_a_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      din => force_im_output_port_net_x1,
      en => "1",
      dout => realign_a_im_dout_net
    );

  realign_a_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      din => force_re_output_port_net_x1,
      en => "1",
      dout => realign_a_re_dout_net
    );

  realign_b_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 19,
      din_width => 22,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      din => convert1_dout_net_x1,
      en => "1",
      dout => realign_b_im_dout_net
    );

  realign_b_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 19,
      din_width => 22,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      din => convert0_dout_net_x1,
      en => "1",
      dout => realign_b_re_dout_net
    );

  reinterp_a_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_im_dout_net,
      output_port => reinterp_a_im_output_port_net
    );

  reinterp_a_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_re_dout_net,
      output_port => reinterp_a_re_output_port_net
    );

  reinterp_b_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_im_dout_net,
      output_port => reinterp_b_im_output_port_net
    );

  reinterp_b_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_re_dout_net,
      output_port => reinterp_b_re_output_port_net
    );

  reinterp_c_im: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_im_y_net,
      output_port => reinterp_c_im_output_port_net
    );

  reinterp_c_re: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_re_y_net,
      output_port => reinterp_c_re_output_port_net
    );

  reinterpret_a: entity work.reinterpret_eb03bc3377
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_a_y_net,
      output_port => reinterpret_a_output_port_net
    );

  reinterpret_b: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_b_y_net,
      output_port => reinterpret_b_output_port_net
    );

  reinterpret_c: entity work.reinterpret_7ea107432a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_a_y_net,
      output_port => reinterpret_c_output_port_net
    );

  slice_a: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 47,
      x_width => 48,
      y_width => 30
    )
    port map (
      x => concat_b_y_net,
      y => slice_a_y_net
    );

  slice_b: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 48,
      y_width => 18
    )
    port map (
      x => concat_b_y_net,
      y => slice_b_y_net
    );

  slice_c_im: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 23,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_im_y_net
    );

  slice_c_re: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 47,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_re_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_3/butterfly_direct/twiddle_general_4mult/c_to_ri2"

entity c_to_ri2_entity_67781924ce is
  port (
    c: in std_logic_vector(35 downto 0); 
    im: out std_logic_vector(17 downto 0); 
    re: out std_logic_vector(17 downto 0)
  );
end c_to_ri2_entity_67781924ce;

architecture structural of c_to_ri2_entity_67781924ce is
  signal concat_y_net_x0: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal slice_im_y_net: std_logic_vector(17 downto 0);
  signal slice_re_y_net: std_logic_vector(17 downto 0);

begin
  concat_y_net_x0 <= c;
  im <= force_im_output_port_net_x0;
  re <= force_re_output_port_net_x0;

  force_im: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_im_y_net,
      output_port => force_im_output_port_net_x0
    );

  force_re: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_re_y_net,
      output_port => force_re_output_port_net_x0
    );

  slice_im: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => concat_y_net_x0,
      y => slice_im_y_net
    );

  slice_re: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 35,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => concat_y_net_x0,
      y => slice_re_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_3/butterfly_direct/twiddle_general_4mult/coeff_gen/ri_to_c"

entity ri_to_c_entity_0a7e802d3a is
  port (
    im: in std_logic_vector(17 downto 0); 
    re: in std_logic_vector(17 downto 0); 
    c: out std_logic_vector(35 downto 0)
  );
end ri_to_c_entity_0a7e802d3a;

architecture structural of ri_to_c_entity_0a7e802d3a is
  signal concat_y_net_x1: std_logic_vector(35 downto 0);
  signal force_im_output_port_net: std_logic_vector(17 downto 0);
  signal force_re_output_port_net: std_logic_vector(17 downto 0);
  signal rom1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_data_net_x0: std_logic_vector(17 downto 0);

begin
  rom1_data_net_x0 <= im;
  rom_data_net_x0 <= re;
  c <= concat_y_net_x1;

  concat: entity work.concat_b198bd62b0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => force_re_output_port_net,
      in1 => force_im_output_port_net,
      y => concat_y_net_x1
    );

  force_im: entity work.reinterpret_580feec131
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom1_data_net_x0,
      output_port => force_im_output_port_net
    );

  force_re: entity work.reinterpret_580feec131
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom_data_net_x0,
      output_port => force_re_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_3/butterfly_direct/twiddle_general_4mult/coeff_gen"

entity coeff_gen_entity_474126f870 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    w: out std_logic_vector(35 downto 0)
  );
end coeff_gen_entity_474126f870;

architecture structural of coeff_gen_entity_474126f870 is
  signal ce_1_sg_x56: std_logic;
  signal clk_1_sg_x56: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(7 downto 0);
  signal mux_y_net_x0: std_logic;
  signal rom1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_data_net_x0: std_logic_vector(17 downto 0);
  signal slice_y_net: std_logic_vector(1 downto 0);

begin
  ce_1_sg_x56 <= ce_1;
  clk_1_sg_x56 <= clk_1;
  mux_y_net_x0 <= rst;
  w <= concat_y_net_x2;

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_df2bb90b8fe02ecf",
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      clr => '0',
      en => "1",
      rst(0) => mux_y_net_x0,
      op => counter_op_net
    );

  ri_to_c_0a7e802d3a: entity work.ri_to_c_entity_0a7e802d3a
    port map (
      im => rom1_data_net_x0,
      re => rom_data_net_x0,
      c => concat_y_net_x2
    );

  rom: entity work.xlsprom_dist
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_62_f0d8e22702089fe9",
      latency => 4
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      en => "1",
      data => rom_data_net_x0
    );

  rom1: entity work.xlsprom_dist
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_62_252dff5223562ed1",
      latency => 4
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      en => "1",
      data => rom1_data_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 6,
      new_msb => 7,
      x_width => 8,
      y_width => 2
    )
    port map (
      x => counter_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_3/butterfly_direct/twiddle_general_4mult"

entity twiddle_general_4mult_entity_c55d9e333f is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(21 downto 0); 
    bw_re: out std_logic_vector(21 downto 0); 
    sync_out: out std_logic
  );
end twiddle_general_4mult_entity_c55d9e333f;

architecture structural of twiddle_general_4mult_entity_c55d9e333f is
  signal addsub1_s_net: std_logic_vector(36 downto 0);
  signal addsub_s_net: std_logic_vector(36 downto 0);
  signal ce_1_sg_x57: std_logic;
  signal clk_1_sg_x57: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay0_q_net_x0: std_logic_vector(35 downto 0);
  signal delay1_q_net_x0: std_logic_vector(35 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal mult1_p_net: std_logic_vector(35 downto 0);
  signal mult2_p_net: std_logic_vector(35 downto 0);
  signal mult3_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal mux_y_net_x2: std_logic;
  signal single_port_ram_data_out_net_x0: std_logic_vector(35 downto 0);

begin
  single_port_ram_data_out_net_x0 <= a;
  mux_y_net_x1 <= b;
  ce_1_sg_x57 <= ce_1;
  clk_1_sg_x57 <= clk_1;
  mux_y_net_x2 <= sync;
  a_im <= force_im_output_port_net_x3;
  a_re <= force_re_output_port_net_x3;
  bw_im <= convert1_dout_net_x2;
  bw_re <= convert0_dout_net_x2;
  sync_out <= delay2_q_net_x0;

  addsub: entity work.addsub_be8c56327e
    port map (
      a => mult_p_net,
      b => mult2_p_net,
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_eb2273ac28
    port map (
      a => mult1_p_net,
      b => mult3_p_net,
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      clr => '0',
      s => addsub1_s_net
    );

  c_to_ri1_b2f60ff5a1: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay0_q_net_x0,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  c_to_ri2_67781924ce: entity work.c_to_ri2_entity_67781924ce
    port map (
      c => concat_y_net_x2,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  c_to_ri3_aaf30f6242: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay1_q_net_x0,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  coeff_gen_474126f870: entity work.coeff_gen_entity_474126f870
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      rst => mux_y_net_x2,
      w => concat_y_net_x2
    );

  convert0: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 33,
      din_width => 37,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      clr => '0',
      din => addsub_s_net,
      en => "1",
      dout => convert0_dout_net_x2
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 33,
      din_width => 37,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      clr => '0',
      din => addsub1_s_net,
      en => "1",
      dout => convert1_dout_net_x2
    );

  delay0: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      d => single_port_ram_data_out_net_x0,
      en => '1',
      rst => '1',
      q => delay0_q_net_x0
    );

  delay1: entity work.delay_bdaf6c9e55
    port map (
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      clr => '0',
      d => mux_y_net_x1,
      q => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      d(0) => mux_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x0
    );

  mult: entity work.mult_cfc8c45902
    port map (
      a => force_re_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      clr => '0',
      p => mult_p_net
    );

  mult1: entity work.mult_cfc8c45902
    port map (
      a => force_im_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      clr => '0',
      p => mult1_p_net
    );

  mult2: entity work.mult_cfc8c45902
    port map (
      a => force_im_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      clr => '0',
      p => mult2_p_net
    );

  mult3: entity work.mult_cfc8c45902
    port map (
      a => force_re_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      clr => '0',
      p => mult3_p_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_3/butterfly_direct"

entity butterfly_direct_entity_e4b9acb91e is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    a_bw_x0: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly_direct_entity_e4b9acb91e;

architecture structural of butterfly_direct_entity_e4b9acb91e is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(22 downto 0);
  signal ce_1_sg_x58: std_logic;
  signal clk_1_sg_x58: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal mux1_y_net_x1: std_logic_vector(23 downto 0);
  signal mux2_y_net_x1: std_logic_vector(23 downto 0);
  signal mux3_y_net_x1: std_logic_vector(23 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x4: std_logic;
  signal scale0_op_net: std_logic_vector(22 downto 0);
  signal scale1_op_net: std_logic_vector(22 downto 0);
  signal scale2_op_net: std_logic_vector(22 downto 0);
  signal scale3_op_net: std_logic_vector(22 downto 0);
  signal shift_delay_q_net: std_logic;
  signal single_port_ram_data_out_net_x1: std_logic_vector(35 downto 0);
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  single_port_ram_data_out_net_x1 <= a;
  mux_y_net_x3 <= b;
  ce_1_sg_x58 <= ce_1;
  clk_1_sg_x58 <= clk_1;
  slice_y_net_x0 <= shift;
  mux_y_net_x4 <= sync;
  a_bw <= concat_y_net_x2;
  a_bw_x0 <= concat_y_net_x3;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x0;

  cadd_5ccc5ee94d: entity work.cadd_entity_5ccc5ee94d
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_e218f4d06f: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_6ee27d5915: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_1d2e0e3de6: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      din => mux2_y_net_x1,
      dout => adder_s_net_x5,
      of_x0 => and_y_net_x2
    );

  convert_of3_07e8275032: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      din => mux3_y_net_x1,
      dout => adder_s_net_x6,
      of_x0 => and_y_net_x3
    );

  csub_839afd606e: entity work.csub_entity_839afd606e
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x58,
      clk => clk_1_sg_x58,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x58,
      clk => clk_1_sg_x58,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x58,
      clk => clk_1_sg_x58,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x58,
      clk => clk_1_sg_x58,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x1
    );

  ri_to_c01_73f27c9b44: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x2
    );

  ri_to_c23_83014e23d2: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x6,
      re => adder_s_net_x5,
      c => concat_y_net_x3
    );

  scale0: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x58,
      clk => clk_1_sg_x58,
      d(0) => slice_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x58,
      clk => clk_1_sg_x58,
      clr => '0',
      d(0) => delay2_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

  twiddle_general_4mult_c55d9e333f: entity work.twiddle_general_4mult_entity_c55d9e333f
    port map (
      a => single_port_ram_data_out_net_x1,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      sync => mux_y_net_x4,
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      bw_im => convert1_dout_net_x2,
      bw_re => convert0_dout_net_x2,
      sync_out => delay2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_3/delay_b"

entity delay_b_entity_c748cfc7d8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0)
  );
end delay_b_entity_c748cfc7d8;

architecture structural of delay_b_entity_c748cfc7d8 is
  signal ce_1_sg_x59: std_logic;
  signal clk_1_sg_x59: std_logic;
  signal constant2_op_net: std_logic;
  signal counter_op_net: std_logic_vector(5 downto 0);
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x2: std_logic_vector(35 downto 0);

begin
  ce_1_sg_x59 <= ce_1;
  clk_1_sg_x59 <= clk_1;
  mux1_y_net_x0 <= in1;
  out1 <= single_port_ram_data_out_net_x2;

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 59,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_20f60aed18821bec",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 6
    )
    port map (
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  single_port_ram: entity work.xlspram
    generic map (
      c_address_width => 6,
      c_width => 36,
      core_name0 => "bmg_62_665c019c1c5f5676",
      latency => 3
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      data_in => mux1_y_net_x0,
      en => "1",
      rst => "0",
      we(0) => constant2_op_net,
      data_out => single_port_ram_data_out_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_3/sync_delay"

entity sync_delay_entity_1af74e333f is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_1af74e333f;

architecture structural of sync_delay_entity_1af74e333f is
  signal ce_1_sg_x61: std_logic;
  signal clk_1_sg_x61: std_logic;
  signal constant1_op_net: std_logic_vector(6 downto 0);
  signal constant2_op_net: std_logic_vector(6 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(6 downto 0);
  signal counter_op_net: std_logic_vector(6 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x5: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x61 <= ce_1;
  clk_1_sg_x61 <= clk_1;
  delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x5;

  constant1: entity work.constant_7244cd602b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_7b07120b87
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

  constant_x0: entity work.constant_180df391de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_c53e3b0687343f7a",
      op_arith => xlUnsigned,
      op_width => 7
    )
    port map (
      ce => ce_1_sg_x61,
      clk => clk_1_sg_x61,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x5
    );

  relational: entity work.relational_9a3978c602
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_23065a6aa3
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

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_3"

entity fft_stage_3_entity_8fdfdf5ad1 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    of_in: in std_logic; 
    shift: in std_logic_vector(12 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_stage_3_entity_8fdfdf5ad1;

architecture structural of fft_stage_3_entity_8fdfdf5ad1 is
  signal ce_1_sg_x62: std_logic;
  signal clk_1_sg_x62: std_logic;
  signal concat_y_net_x11: std_logic_vector(35 downto 0);
  signal concat_y_net_x13: std_logic_vector(35 downto 0);
  signal concat_y_net_x14: std_logic_vector(35 downto 0);
  signal concat_y_net_x4: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(6 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical1_y_net_x3: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x5: std_logic;
  signal shift_net_x2: std_logic_vector(12 downto 0);
  signal single_port_ram_data_out_net_x0: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x2: std_logic_vector(35 downto 0);
  signal slice1_y_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x4: std_logic;
  signal sync_delay_q_net_x5: std_logic;

begin
  ce_1_sg_x62 <= ce_1;
  clk_1_sg_x62 <= clk_1;
  concat_y_net_x11 <= in1;
  concat_y_net_x13 <= in2;
  logical1_y_net_x3 <= of_in;
  shift_net_x2 <= shift;
  sync_delay_q_net_x4 <= sync;
  of_x0 <= logical1_y_net_x0;
  out1 <= concat_y_net_x4;
  out2 <= concat_y_net_x14;
  sync_out <= sync_delay_q_net_x5;

  butterfly_direct_e4b9acb91e: entity work.butterfly_direct_entity_e4b9acb91e
    port map (
      a => single_port_ram_data_out_net_x2,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x62,
      clk_1 => clk_1_sg_x62,
      shift => slice_y_net_x0,
      sync => mux_y_net_x5,
      a_bw => concat_y_net_x4,
      a_bw_x0 => concat_y_net_x14,
      of_x0 => logical_y_net_x0,
      sync_out => sync_delay_q_net_x5
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_9adf5a9f785e3fb8",
      op_arith => xlUnsigned,
      op_width => 7
    )
    port map (
      ce => ce_1_sg_x62,
      clk => clk_1_sg_x62,
      clr => '0',
      en => "1",
      rst(0) => sync_delay_q_net_x4,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x62,
      clk => clk_1_sg_x62,
      d(0) => sync_delay_q_net_x4,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay_b_c748cfc7d8: entity work.delay_b_entity_c748cfc7d8
    port map (
      ce_1 => ce_1_sg_x62,
      clk_1 => clk_1_sg_x62,
      in1 => mux1_y_net_x0,
      out1 => single_port_ram_data_out_net_x2
    );

  delay_f_280470fa5e: entity work.delay_b_entity_c748cfc7d8
    port map (
      ce_1 => ce_1_sg_x62,
      clk_1 => clk_1_sg_x62,
      in1 => concat_y_net_x13,
      out1 => single_port_ram_data_out_net_x0
    );

  logical1: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x62,
      clk => clk_1_sg_x62,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => logical1_y_net_x3,
      y(0) => logical1_y_net_x0
    );

  mux: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x62,
      clk => clk_1_sg_x62,
      clr => '0',
      d0 => single_port_ram_data_out_net_x0,
      d1 => concat_y_net_x11,
      sel(0) => slice1_y_net,
      y => mux_y_net_x3
    );

  mux1: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x62,
      clk => clk_1_sg_x62,
      clr => '0',
      d0 => concat_y_net_x11,
      d1 => single_port_ram_data_out_net_x0,
      sel(0) => slice1_y_net,
      y => mux1_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 13,
      y_width => 1
    )
    port map (
      x => shift_net_x2,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 6,
      new_msb => 6,
      x_width => 7,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  sync_delay_1af74e333f: entity work.sync_delay_entity_1af74e333f
    port map (
      ce_1 => ce_1_sg_x62,
      clk_1 => clk_1_sg_x62,
      in_x0 => delay_q_net_x0,
      out_x0 => mux_y_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_4/butterfly_direct/twiddle_general_4mult/coeff_gen"

entity coeff_gen_entity_7dfd74dc47 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    w: out std_logic_vector(35 downto 0)
  );
end coeff_gen_entity_7dfd74dc47;

architecture structural of coeff_gen_entity_7dfd74dc47 is
  signal ce_1_sg_x73: std_logic;
  signal clk_1_sg_x73: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(7 downto 0);
  signal mux_y_net_x0: std_logic;
  signal rom1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_data_net_x0: std_logic_vector(17 downto 0);
  signal slice_y_net: std_logic_vector(2 downto 0);

begin
  ce_1_sg_x73 <= ce_1;
  clk_1_sg_x73 <= clk_1;
  mux_y_net_x0 <= rst;
  w <= concat_y_net_x2;

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_df2bb90b8fe02ecf",
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_1_sg_x73,
      clk => clk_1_sg_x73,
      clr => '0',
      en => "1",
      rst(0) => mux_y_net_x0,
      op => counter_op_net
    );

  ri_to_c_a6d70d335c: entity work.ri_to_c_entity_0a7e802d3a
    port map (
      im => rom1_data_net_x0,
      re => rom_data_net_x0,
      c => concat_y_net_x2
    );

  rom: entity work.xlsprom
    generic map (
      c_address_width => 3,
      c_width => 18,
      core_name0 => "bmg_62_2d41b260b5e70403",
      latency => 3
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x73,
      clk => clk_1_sg_x73,
      en => "1",
      rst => "0",
      data => rom_data_net_x0
    );

  rom1: entity work.xlsprom
    generic map (
      c_address_width => 3,
      c_width => 18,
      core_name0 => "bmg_62_f5d63000a45b4cf8",
      latency => 3
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x73,
      clk => clk_1_sg_x73,
      en => "1",
      rst => "0",
      data => rom1_data_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 5,
      new_msb => 7,
      x_width => 8,
      y_width => 3
    )
    port map (
      x => counter_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_4/butterfly_direct/twiddle_general_4mult"

entity twiddle_general_4mult_entity_418ad49f3f is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(21 downto 0); 
    bw_re: out std_logic_vector(21 downto 0); 
    sync_out: out std_logic
  );
end twiddle_general_4mult_entity_418ad49f3f;

architecture structural of twiddle_general_4mult_entity_418ad49f3f is
  signal addsub1_s_net: std_logic_vector(36 downto 0);
  signal addsub_s_net: std_logic_vector(36 downto 0);
  signal ce_1_sg_x74: std_logic;
  signal clk_1_sg_x74: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay0_q_net_x0: std_logic_vector(35 downto 0);
  signal delay1_q_net_x0: std_logic_vector(35 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal mult1_p_net: std_logic_vector(35 downto 0);
  signal mult2_p_net: std_logic_vector(35 downto 0);
  signal mult3_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal mux_y_net_x2: std_logic;
  signal single_port_ram_data_out_net_x0: std_logic_vector(35 downto 0);

begin
  single_port_ram_data_out_net_x0 <= a;
  mux_y_net_x1 <= b;
  ce_1_sg_x74 <= ce_1;
  clk_1_sg_x74 <= clk_1;
  mux_y_net_x2 <= sync;
  a_im <= force_im_output_port_net_x3;
  a_re <= force_re_output_port_net_x3;
  bw_im <= convert1_dout_net_x2;
  bw_re <= convert0_dout_net_x2;
  sync_out <= delay2_q_net_x0;

  addsub: entity work.addsub_be8c56327e
    port map (
      a => mult_p_net,
      b => mult2_p_net,
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_eb2273ac28
    port map (
      a => mult1_p_net,
      b => mult3_p_net,
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      s => addsub1_s_net
    );

  c_to_ri1_79cafd6ee2: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay0_q_net_x0,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  c_to_ri2_21b996a1fc: entity work.c_to_ri2_entity_67781924ce
    port map (
      c => concat_y_net_x2,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  c_to_ri3_3d247478fb: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay1_q_net_x0,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  coeff_gen_7dfd74dc47: entity work.coeff_gen_entity_7dfd74dc47
    port map (
      ce_1 => ce_1_sg_x74,
      clk_1 => clk_1_sg_x74,
      rst => mux_y_net_x2,
      w => concat_y_net_x2
    );

  convert0: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 33,
      din_width => 37,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      din => addsub_s_net,
      en => "1",
      dout => convert0_dout_net_x2
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 33,
      din_width => 37,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      din => addsub1_s_net,
      en => "1",
      dout => convert1_dout_net_x2
    );

  delay0: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      d => single_port_ram_data_out_net_x0,
      en => '1',
      rst => '1',
      q => delay0_q_net_x0
    );

  delay1: entity work.delay_bdaf6c9e55
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      d => mux_y_net_x1,
      q => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      d(0) => mux_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x0
    );

  mult: entity work.mult_cfc8c45902
    port map (
      a => force_re_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      p => mult_p_net
    );

  mult1: entity work.mult_cfc8c45902
    port map (
      a => force_im_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      p => mult1_p_net
    );

  mult2: entity work.mult_cfc8c45902
    port map (
      a => force_im_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      p => mult2_p_net
    );

  mult3: entity work.mult_cfc8c45902
    port map (
      a => force_re_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      p => mult3_p_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_4/butterfly_direct"

entity butterfly_direct_entity_2967faa47a is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    a_bw_x0: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly_direct_entity_2967faa47a;

architecture structural of butterfly_direct_entity_2967faa47a is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(22 downto 0);
  signal ce_1_sg_x75: std_logic;
  signal clk_1_sg_x75: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal mux1_y_net_x1: std_logic_vector(23 downto 0);
  signal mux2_y_net_x1: std_logic_vector(23 downto 0);
  signal mux3_y_net_x1: std_logic_vector(23 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x4: std_logic;
  signal scale0_op_net: std_logic_vector(22 downto 0);
  signal scale1_op_net: std_logic_vector(22 downto 0);
  signal scale2_op_net: std_logic_vector(22 downto 0);
  signal scale3_op_net: std_logic_vector(22 downto 0);
  signal shift_delay_q_net: std_logic;
  signal single_port_ram_data_out_net_x1: std_logic_vector(35 downto 0);
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  single_port_ram_data_out_net_x1 <= a;
  mux_y_net_x3 <= b;
  ce_1_sg_x75 <= ce_1;
  clk_1_sg_x75 <= clk_1;
  slice_y_net_x0 <= shift;
  mux_y_net_x4 <= sync;
  a_bw <= concat_y_net_x2;
  a_bw_x0 <= concat_y_net_x3;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x0;

  cadd_d29d7edb6b: entity work.cadd_entity_5ccc5ee94d
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x75,
      clk_1 => clk_1_sg_x75,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_b8ea7036f0: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x75,
      clk_1 => clk_1_sg_x75,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_4a56eee706: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x75,
      clk_1 => clk_1_sg_x75,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_6c309def7b: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x75,
      clk_1 => clk_1_sg_x75,
      din => mux2_y_net_x1,
      dout => adder_s_net_x5,
      of_x0 => and_y_net_x2
    );

  convert_of3_6d14677d6b: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x75,
      clk_1 => clk_1_sg_x75,
      din => mux3_y_net_x1,
      dout => adder_s_net_x6,
      of_x0 => and_y_net_x3
    );

  csub_88912f651a: entity work.csub_entity_839afd606e
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x75,
      clk_1 => clk_1_sg_x75,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x75,
      clk => clk_1_sg_x75,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x75,
      clk => clk_1_sg_x75,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x75,
      clk => clk_1_sg_x75,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x75,
      clk => clk_1_sg_x75,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x1
    );

  ri_to_c01_d4611fcce8: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x2
    );

  ri_to_c23_e126d355cd: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x6,
      re => adder_s_net_x5,
      c => concat_y_net_x3
    );

  scale0: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x75,
      clk => clk_1_sg_x75,
      d(0) => slice_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x75,
      clk => clk_1_sg_x75,
      clr => '0',
      d(0) => delay2_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

  twiddle_general_4mult_418ad49f3f: entity work.twiddle_general_4mult_entity_418ad49f3f
    port map (
      a => single_port_ram_data_out_net_x1,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x75,
      clk_1 => clk_1_sg_x75,
      sync => mux_y_net_x4,
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      bw_im => convert1_dout_net_x2,
      bw_re => convert0_dout_net_x2,
      sync_out => delay2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_4/delay_b"

entity delay_b_entity_b9edcb6bd8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0)
  );
end delay_b_entity_b9edcb6bd8;

architecture structural of delay_b_entity_b9edcb6bd8 is
  signal ce_1_sg_x76: std_logic;
  signal clk_1_sg_x76: std_logic;
  signal constant2_op_net: std_logic;
  signal counter_op_net: std_logic_vector(4 downto 0);
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x2: std_logic_vector(35 downto 0);

begin
  ce_1_sg_x76 <= ce_1;
  clk_1_sg_x76 <= clk_1;
  mux1_y_net_x0 <= in1;
  out1 <= single_port_ram_data_out_net_x2;

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 27,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_35c81e3155ab2f6f",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 5
    )
    port map (
      ce => ce_1_sg_x76,
      clk => clk_1_sg_x76,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  single_port_ram: entity work.xlspram
    generic map (
      c_address_width => 5,
      c_width => 36,
      core_name0 => "bmg_62_82b2485d32f76714",
      latency => 3
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x76,
      clk => clk_1_sg_x76,
      data_in => mux1_y_net_x0,
      en => "1",
      rst => "0",
      we(0) => constant2_op_net,
      data_out => single_port_ram_data_out_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_4/sync_delay"

entity sync_delay_entity_866ef565c7 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_866ef565c7;

architecture structural of sync_delay_entity_866ef565c7 is
  signal ce_1_sg_x78: std_logic;
  signal clk_1_sg_x78: std_logic;
  signal constant1_op_net: std_logic_vector(5 downto 0);
  signal constant2_op_net: std_logic_vector(5 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(5 downto 0);
  signal counter_op_net: std_logic_vector(5 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x5: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x78 <= ce_1;
  clk_1_sg_x78 <= clk_1;
  delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x5;

  constant1: entity work.constant_7ea0f2fff7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_961b61f8a1
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

  constant_x0: entity work.constant_a267c870be
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_73d90f0f459a7002",
      op_arith => xlUnsigned,
      op_width => 6
    )
    port map (
      ce => ce_1_sg_x78,
      clk => clk_1_sg_x78,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x5
    );

  relational: entity work.relational_931d61fb72
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_fe487ce1c7
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

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_4"

entity fft_stage_4_entity_4cc3447bc2 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    of_in: in std_logic; 
    shift: in std_logic_vector(12 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_stage_4_entity_4cc3447bc2;

architecture structural of fft_stage_4_entity_4cc3447bc2 is
  signal ce_1_sg_x79: std_logic;
  signal clk_1_sg_x79: std_logic;
  signal concat_y_net_x16: std_logic_vector(35 downto 0);
  signal concat_y_net_x5: std_logic_vector(35 downto 0);
  signal concat_y_net_x6: std_logic_vector(35 downto 0);
  signal concat_y_net_x7: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(5 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical1_y_net_x1: std_logic;
  signal logical1_y_net_x2: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x5: std_logic;
  signal shift_net_x3: std_logic_vector(12 downto 0);
  signal single_port_ram_data_out_net_x0: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x2: std_logic_vector(35 downto 0);
  signal slice1_y_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x1: std_logic;
  signal sync_delay_q_net_x6: std_logic;

begin
  ce_1_sg_x79 <= ce_1;
  clk_1_sg_x79 <= clk_1;
  concat_y_net_x5 <= in1;
  concat_y_net_x16 <= in2;
  logical1_y_net_x1 <= of_in;
  shift_net_x3 <= shift;
  sync_delay_q_net_x6 <= sync;
  of_x0 <= logical1_y_net_x2;
  out1 <= concat_y_net_x6;
  out2 <= concat_y_net_x7;
  sync_out <= sync_delay_q_net_x1;

  butterfly_direct_2967faa47a: entity work.butterfly_direct_entity_2967faa47a
    port map (
      a => single_port_ram_data_out_net_x2,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x79,
      clk_1 => clk_1_sg_x79,
      shift => slice_y_net_x0,
      sync => mux_y_net_x5,
      a_bw => concat_y_net_x6,
      a_bw_x0 => concat_y_net_x7,
      of_x0 => logical_y_net_x0,
      sync_out => sync_delay_q_net_x1
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_20f60aed18821bec",
      op_arith => xlUnsigned,
      op_width => 6
    )
    port map (
      ce => ce_1_sg_x79,
      clk => clk_1_sg_x79,
      clr => '0',
      en => "1",
      rst(0) => sync_delay_q_net_x6,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x79,
      clk => clk_1_sg_x79,
      d(0) => sync_delay_q_net_x6,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay_b_b9edcb6bd8: entity work.delay_b_entity_b9edcb6bd8
    port map (
      ce_1 => ce_1_sg_x79,
      clk_1 => clk_1_sg_x79,
      in1 => mux1_y_net_x0,
      out1 => single_port_ram_data_out_net_x2
    );

  delay_f_e8e2994ec2: entity work.delay_b_entity_b9edcb6bd8
    port map (
      ce_1 => ce_1_sg_x79,
      clk_1 => clk_1_sg_x79,
      in1 => concat_y_net_x16,
      out1 => single_port_ram_data_out_net_x0
    );

  logical1: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x79,
      clk => clk_1_sg_x79,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => logical1_y_net_x1,
      y(0) => logical1_y_net_x2
    );

  mux: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x79,
      clk => clk_1_sg_x79,
      clr => '0',
      d0 => single_port_ram_data_out_net_x0,
      d1 => concat_y_net_x5,
      sel(0) => slice1_y_net,
      y => mux_y_net_x3
    );

  mux1: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x79,
      clk => clk_1_sg_x79,
      clr => '0',
      d0 => concat_y_net_x5,
      d1 => single_port_ram_data_out_net_x0,
      sel(0) => slice1_y_net,
      y => mux1_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 13,
      y_width => 1
    )
    port map (
      x => shift_net_x3,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 5,
      new_msb => 5,
      x_width => 6,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  sync_delay_866ef565c7: entity work.sync_delay_entity_866ef565c7
    port map (
      ce_1 => ce_1_sg_x79,
      clk_1 => clk_1_sg_x79,
      in_x0 => delay_q_net_x0,
      out_x0 => mux_y_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_5/butterfly_direct/twiddle_general_4mult/coeff_gen"

entity coeff_gen_entity_35e67a69d7 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    w: out std_logic_vector(35 downto 0)
  );
end coeff_gen_entity_35e67a69d7;

architecture structural of coeff_gen_entity_35e67a69d7 is
  signal ce_1_sg_x90: std_logic;
  signal clk_1_sg_x90: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(7 downto 0);
  signal mux_y_net_x0: std_logic;
  signal rom1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_data_net_x0: std_logic_vector(17 downto 0);
  signal slice_y_net: std_logic_vector(3 downto 0);

begin
  ce_1_sg_x90 <= ce_1;
  clk_1_sg_x90 <= clk_1;
  mux_y_net_x0 <= rst;
  w <= concat_y_net_x2;

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_df2bb90b8fe02ecf",
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_1_sg_x90,
      clk => clk_1_sg_x90,
      clr => '0',
      en => "1",
      rst(0) => mux_y_net_x0,
      op => counter_op_net
    );

  ri_to_c_ed3930b681: entity work.ri_to_c_entity_0a7e802d3a
    port map (
      im => rom1_data_net_x0,
      re => rom_data_net_x0,
      c => concat_y_net_x2
    );

  rom: entity work.xlsprom
    generic map (
      c_address_width => 4,
      c_width => 18,
      core_name0 => "bmg_62_6ea787275fdc24d6",
      latency => 3
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x90,
      clk => clk_1_sg_x90,
      en => "1",
      rst => "0",
      data => rom_data_net_x0
    );

  rom1: entity work.xlsprom
    generic map (
      c_address_width => 4,
      c_width => 18,
      core_name0 => "bmg_62_37f844592d213796",
      latency => 3
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x90,
      clk => clk_1_sg_x90,
      en => "1",
      rst => "0",
      data => rom1_data_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 4,
      new_msb => 7,
      x_width => 8,
      y_width => 4
    )
    port map (
      x => counter_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_5/butterfly_direct/twiddle_general_4mult"

entity twiddle_general_4mult_entity_07189e9643 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(21 downto 0); 
    bw_re: out std_logic_vector(21 downto 0); 
    sync_out: out std_logic
  );
end twiddle_general_4mult_entity_07189e9643;

architecture structural of twiddle_general_4mult_entity_07189e9643 is
  signal addsub1_s_net: std_logic_vector(36 downto 0);
  signal addsub_s_net: std_logic_vector(36 downto 0);
  signal ce_1_sg_x91: std_logic;
  signal clk_1_sg_x91: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay0_q_net_x0: std_logic_vector(35 downto 0);
  signal delay1_q_net_x0: std_logic_vector(35 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal mult1_p_net: std_logic_vector(35 downto 0);
  signal mult2_p_net: std_logic_vector(35 downto 0);
  signal mult3_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal mux_y_net_x2: std_logic;
  signal single_port_ram_data_out_net_x0: std_logic_vector(35 downto 0);

begin
  single_port_ram_data_out_net_x0 <= a;
  mux_y_net_x1 <= b;
  ce_1_sg_x91 <= ce_1;
  clk_1_sg_x91 <= clk_1;
  mux_y_net_x2 <= sync;
  a_im <= force_im_output_port_net_x3;
  a_re <= force_re_output_port_net_x3;
  bw_im <= convert1_dout_net_x2;
  bw_re <= convert0_dout_net_x2;
  sync_out <= delay2_q_net_x0;

  addsub: entity work.addsub_be8c56327e
    port map (
      a => mult_p_net,
      b => mult2_p_net,
      ce => ce_1_sg_x91,
      clk => clk_1_sg_x91,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_eb2273ac28
    port map (
      a => mult1_p_net,
      b => mult3_p_net,
      ce => ce_1_sg_x91,
      clk => clk_1_sg_x91,
      clr => '0',
      s => addsub1_s_net
    );

  c_to_ri1_89c80bc5da: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay0_q_net_x0,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  c_to_ri2_6b64f33f75: entity work.c_to_ri2_entity_67781924ce
    port map (
      c => concat_y_net_x2,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  c_to_ri3_0debef6e46: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay1_q_net_x0,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  coeff_gen_35e67a69d7: entity work.coeff_gen_entity_35e67a69d7
    port map (
      ce_1 => ce_1_sg_x91,
      clk_1 => clk_1_sg_x91,
      rst => mux_y_net_x2,
      w => concat_y_net_x2
    );

  convert0: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 33,
      din_width => 37,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x91,
      clk => clk_1_sg_x91,
      clr => '0',
      din => addsub_s_net,
      en => "1",
      dout => convert0_dout_net_x2
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 33,
      din_width => 37,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x91,
      clk => clk_1_sg_x91,
      clr => '0',
      din => addsub1_s_net,
      en => "1",
      dout => convert1_dout_net_x2
    );

  delay0: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x91,
      clk => clk_1_sg_x91,
      d => single_port_ram_data_out_net_x0,
      en => '1',
      rst => '1',
      q => delay0_q_net_x0
    );

  delay1: entity work.delay_bdaf6c9e55
    port map (
      ce => ce_1_sg_x91,
      clk => clk_1_sg_x91,
      clr => '0',
      d => mux_y_net_x1,
      q => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x91,
      clk => clk_1_sg_x91,
      d(0) => mux_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x0
    );

  mult: entity work.mult_cfc8c45902
    port map (
      a => force_re_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x91,
      clk => clk_1_sg_x91,
      clr => '0',
      p => mult_p_net
    );

  mult1: entity work.mult_cfc8c45902
    port map (
      a => force_im_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x91,
      clk => clk_1_sg_x91,
      clr => '0',
      p => mult1_p_net
    );

  mult2: entity work.mult_cfc8c45902
    port map (
      a => force_im_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x91,
      clk => clk_1_sg_x91,
      clr => '0',
      p => mult2_p_net
    );

  mult3: entity work.mult_cfc8c45902
    port map (
      a => force_re_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x91,
      clk => clk_1_sg_x91,
      clr => '0',
      p => mult3_p_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_5/butterfly_direct"

entity butterfly_direct_entity_13b04de492 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    a_bw_x0: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly_direct_entity_13b04de492;

architecture structural of butterfly_direct_entity_13b04de492 is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(22 downto 0);
  signal ce_1_sg_x92: std_logic;
  signal clk_1_sg_x92: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal mux1_y_net_x1: std_logic_vector(23 downto 0);
  signal mux2_y_net_x1: std_logic_vector(23 downto 0);
  signal mux3_y_net_x1: std_logic_vector(23 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x4: std_logic;
  signal scale0_op_net: std_logic_vector(22 downto 0);
  signal scale1_op_net: std_logic_vector(22 downto 0);
  signal scale2_op_net: std_logic_vector(22 downto 0);
  signal scale3_op_net: std_logic_vector(22 downto 0);
  signal shift_delay_q_net: std_logic;
  signal single_port_ram_data_out_net_x1: std_logic_vector(35 downto 0);
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  single_port_ram_data_out_net_x1 <= a;
  mux_y_net_x3 <= b;
  ce_1_sg_x92 <= ce_1;
  clk_1_sg_x92 <= clk_1;
  slice_y_net_x0 <= shift;
  mux_y_net_x4 <= sync;
  a_bw <= concat_y_net_x2;
  a_bw_x0 <= concat_y_net_x3;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x0;

  cadd_5a64125d9c: entity work.cadd_entity_5ccc5ee94d
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x92,
      clk_1 => clk_1_sg_x92,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_247f9d637a: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x92,
      clk_1 => clk_1_sg_x92,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_1f994ef825: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x92,
      clk_1 => clk_1_sg_x92,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_61071489ab: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x92,
      clk_1 => clk_1_sg_x92,
      din => mux2_y_net_x1,
      dout => adder_s_net_x5,
      of_x0 => and_y_net_x2
    );

  convert_of3_43bba4207e: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x92,
      clk_1 => clk_1_sg_x92,
      din => mux3_y_net_x1,
      dout => adder_s_net_x6,
      of_x0 => and_y_net_x3
    );

  csub_d999d237b8: entity work.csub_entity_839afd606e
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x92,
      clk_1 => clk_1_sg_x92,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x92,
      clk => clk_1_sg_x92,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x92,
      clk => clk_1_sg_x92,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x92,
      clk => clk_1_sg_x92,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x92,
      clk => clk_1_sg_x92,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x1
    );

  ri_to_c01_e0a3c1c142: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x2
    );

  ri_to_c23_1f298c5535: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x6,
      re => adder_s_net_x5,
      c => concat_y_net_x3
    );

  scale0: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x92,
      clk => clk_1_sg_x92,
      d(0) => slice_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x92,
      clk => clk_1_sg_x92,
      clr => '0',
      d(0) => delay2_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

  twiddle_general_4mult_07189e9643: entity work.twiddle_general_4mult_entity_07189e9643
    port map (
      a => single_port_ram_data_out_net_x1,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x92,
      clk_1 => clk_1_sg_x92,
      sync => mux_y_net_x4,
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      bw_im => convert1_dout_net_x2,
      bw_re => convert0_dout_net_x2,
      sync_out => delay2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_5/delay_b"

entity delay_b_entity_6f855eacbb is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0)
  );
end delay_b_entity_6f855eacbb;

architecture structural of delay_b_entity_6f855eacbb is
  signal ce_1_sg_x93: std_logic;
  signal clk_1_sg_x93: std_logic;
  signal constant2_op_net: std_logic;
  signal counter_op_net: std_logic_vector(3 downto 0);
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x2: std_logic_vector(35 downto 0);

begin
  ce_1_sg_x93 <= ce_1;
  clk_1_sg_x93 <= clk_1;
  mux1_y_net_x0 <= in1;
  out1 <= single_port_ram_data_out_net_x2;

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 11,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_c84d65465c59fb07",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 4
    )
    port map (
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  single_port_ram: entity work.xlspram
    generic map (
      c_address_width => 4,
      c_width => 36,
      core_name0 => "bmg_62_de80a27a29f3ada6",
      latency => 3
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
      data_in => mux1_y_net_x0,
      en => "1",
      rst => "0",
      we(0) => constant2_op_net,
      data_out => single_port_ram_data_out_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_5/sync_delay"

entity sync_delay_entity_e4a7e09f0b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_e4a7e09f0b;

architecture structural of sync_delay_entity_e4a7e09f0b is
  signal ce_1_sg_x95: std_logic;
  signal clk_1_sg_x95: std_logic;
  signal constant1_op_net: std_logic_vector(4 downto 0);
  signal constant2_op_net: std_logic_vector(4 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(4 downto 0);
  signal counter_op_net: std_logic_vector(4 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x5: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x95 <= ce_1;
  clk_1_sg_x95 <= clk_1;
  delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x5;

  constant1: entity work.constant_fe72737ca0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_ef0e2e5fc6
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

  constant_x0: entity work.constant_582a3706dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_e0d381bcdb78c3cc",
      op_arith => xlUnsigned,
      op_width => 5
    )
    port map (
      ce => ce_1_sg_x95,
      clk => clk_1_sg_x95,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x5
    );

  relational: entity work.relational_9ece3c8c4e
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_dc5bc996c9
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

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_5"

entity fft_stage_5_entity_a003caf496 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    of_in: in std_logic; 
    shift: in std_logic_vector(12 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_stage_5_entity_a003caf496;

architecture structural of fft_stage_5_entity_a003caf496 is
  signal ce_1_sg_x96: std_logic;
  signal clk_1_sg_x96: std_logic;
  signal concat_y_net_x10: std_logic_vector(35 downto 0);
  signal concat_y_net_x11: std_logic_vector(35 downto 0);
  signal concat_y_net_x7: std_logic_vector(35 downto 0);
  signal concat_y_net_x9: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(4 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical1_y_net_x3: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x5: std_logic;
  signal shift_net_x4: std_logic_vector(12 downto 0);
  signal single_port_ram_data_out_net_x0: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x2: std_logic_vector(35 downto 0);
  signal slice1_y_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x2: std_logic;
  signal sync_delay_q_net_x3: std_logic;

begin
  ce_1_sg_x96 <= ce_1;
  clk_1_sg_x96 <= clk_1;
  concat_y_net_x7 <= in1;
  concat_y_net_x9 <= in2;
  logical1_y_net_x3 <= of_in;
  shift_net_x4 <= shift;
  sync_delay_q_net_x2 <= sync;
  of_x0 <= logical1_y_net_x0;
  out1 <= concat_y_net_x10;
  out2 <= concat_y_net_x11;
  sync_out <= sync_delay_q_net_x3;

  butterfly_direct_13b04de492: entity work.butterfly_direct_entity_13b04de492
    port map (
      a => single_port_ram_data_out_net_x2,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
      shift => slice_y_net_x0,
      sync => mux_y_net_x5,
      a_bw => concat_y_net_x10,
      a_bw_x0 => concat_y_net_x11,
      of_x0 => logical_y_net_x0,
      sync_out => sync_delay_q_net_x3
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_35c81e3155ab2f6f",
      op_arith => xlUnsigned,
      op_width => 5
    )
    port map (
      ce => ce_1_sg_x96,
      clk => clk_1_sg_x96,
      clr => '0',
      en => "1",
      rst(0) => sync_delay_q_net_x2,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x96,
      clk => clk_1_sg_x96,
      d(0) => sync_delay_q_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay_b_6f855eacbb: entity work.delay_b_entity_6f855eacbb
    port map (
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
      in1 => mux1_y_net_x0,
      out1 => single_port_ram_data_out_net_x2
    );

  delay_f_718e071b50: entity work.delay_b_entity_6f855eacbb
    port map (
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
      in1 => concat_y_net_x9,
      out1 => single_port_ram_data_out_net_x0
    );

  logical1: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x96,
      clk => clk_1_sg_x96,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => logical1_y_net_x3,
      y(0) => logical1_y_net_x0
    );

  mux: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x96,
      clk => clk_1_sg_x96,
      clr => '0',
      d0 => single_port_ram_data_out_net_x0,
      d1 => concat_y_net_x7,
      sel(0) => slice1_y_net,
      y => mux_y_net_x3
    );

  mux1: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x96,
      clk => clk_1_sg_x96,
      clr => '0',
      d0 => concat_y_net_x7,
      d1 => single_port_ram_data_out_net_x0,
      sel(0) => slice1_y_net,
      y => mux1_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 4,
      new_msb => 4,
      x_width => 13,
      y_width => 1
    )
    port map (
      x => shift_net_x4,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 4,
      new_msb => 4,
      x_width => 5,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  sync_delay_e4a7e09f0b: entity work.sync_delay_entity_e4a7e09f0b
    port map (
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
      in_x0 => delay_q_net_x0,
      out_x0 => mux_y_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_6/butterfly_direct/twiddle_general_4mult/coeff_gen"

entity coeff_gen_entity_b6518cd0f7 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    w: out std_logic_vector(35 downto 0)
  );
end coeff_gen_entity_b6518cd0f7;

architecture structural of coeff_gen_entity_b6518cd0f7 is
  signal ce_1_sg_x107: std_logic;
  signal clk_1_sg_x107: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(7 downto 0);
  signal mux_y_net_x0: std_logic;
  signal rom1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_data_net_x0: std_logic_vector(17 downto 0);
  signal slice_y_net: std_logic_vector(4 downto 0);

begin
  ce_1_sg_x107 <= ce_1;
  clk_1_sg_x107 <= clk_1;
  mux_y_net_x0 <= rst;
  w <= concat_y_net_x2;

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_df2bb90b8fe02ecf",
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_1_sg_x107,
      clk => clk_1_sg_x107,
      clr => '0',
      en => "1",
      rst(0) => mux_y_net_x0,
      op => counter_op_net
    );

  ri_to_c_cfbe555080: entity work.ri_to_c_entity_0a7e802d3a
    port map (
      im => rom1_data_net_x0,
      re => rom_data_net_x0,
      c => concat_y_net_x2
    );

  rom: entity work.xlsprom
    generic map (
      c_address_width => 5,
      c_width => 18,
      core_name0 => "bmg_62_daa5a8eb8c5c2eed",
      latency => 3
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x107,
      clk => clk_1_sg_x107,
      en => "1",
      rst => "0",
      data => rom_data_net_x0
    );

  rom1: entity work.xlsprom
    generic map (
      c_address_width => 5,
      c_width => 18,
      core_name0 => "bmg_62_7061fc74b87e2931",
      latency => 3
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x107,
      clk => clk_1_sg_x107,
      en => "1",
      rst => "0",
      data => rom1_data_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 7,
      x_width => 8,
      y_width => 5
    )
    port map (
      x => counter_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_6/butterfly_direct/twiddle_general_4mult"

entity twiddle_general_4mult_entity_4d4e3e3f57 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(21 downto 0); 
    bw_re: out std_logic_vector(21 downto 0); 
    sync_out: out std_logic
  );
end twiddle_general_4mult_entity_4d4e3e3f57;

architecture structural of twiddle_general_4mult_entity_4d4e3e3f57 is
  signal addsub1_s_net: std_logic_vector(36 downto 0);
  signal addsub_s_net: std_logic_vector(36 downto 0);
  signal ce_1_sg_x108: std_logic;
  signal clk_1_sg_x108: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay0_q_net_x0: std_logic_vector(35 downto 0);
  signal delay1_q_net_x0: std_logic_vector(35 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal mult1_p_net: std_logic_vector(35 downto 0);
  signal mult2_p_net: std_logic_vector(35 downto 0);
  signal mult3_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal mux_y_net_x2: std_logic;
  signal single_port_ram_data_out_net_x0: std_logic_vector(35 downto 0);

begin
  single_port_ram_data_out_net_x0 <= a;
  mux_y_net_x1 <= b;
  ce_1_sg_x108 <= ce_1;
  clk_1_sg_x108 <= clk_1;
  mux_y_net_x2 <= sync;
  a_im <= force_im_output_port_net_x3;
  a_re <= force_re_output_port_net_x3;
  bw_im <= convert1_dout_net_x2;
  bw_re <= convert0_dout_net_x2;
  sync_out <= delay2_q_net_x0;

  addsub: entity work.addsub_be8c56327e
    port map (
      a => mult_p_net,
      b => mult2_p_net,
      ce => ce_1_sg_x108,
      clk => clk_1_sg_x108,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_eb2273ac28
    port map (
      a => mult1_p_net,
      b => mult3_p_net,
      ce => ce_1_sg_x108,
      clk => clk_1_sg_x108,
      clr => '0',
      s => addsub1_s_net
    );

  c_to_ri1_8ad41443ae: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay0_q_net_x0,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  c_to_ri2_22e2d91bc6: entity work.c_to_ri2_entity_67781924ce
    port map (
      c => concat_y_net_x2,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  c_to_ri3_13f65e8913: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay1_q_net_x0,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  coeff_gen_b6518cd0f7: entity work.coeff_gen_entity_b6518cd0f7
    port map (
      ce_1 => ce_1_sg_x108,
      clk_1 => clk_1_sg_x108,
      rst => mux_y_net_x2,
      w => concat_y_net_x2
    );

  convert0: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 33,
      din_width => 37,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x108,
      clk => clk_1_sg_x108,
      clr => '0',
      din => addsub_s_net,
      en => "1",
      dout => convert0_dout_net_x2
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 33,
      din_width => 37,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x108,
      clk => clk_1_sg_x108,
      clr => '0',
      din => addsub1_s_net,
      en => "1",
      dout => convert1_dout_net_x2
    );

  delay0: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x108,
      clk => clk_1_sg_x108,
      d => single_port_ram_data_out_net_x0,
      en => '1',
      rst => '1',
      q => delay0_q_net_x0
    );

  delay1: entity work.delay_bdaf6c9e55
    port map (
      ce => ce_1_sg_x108,
      clk => clk_1_sg_x108,
      clr => '0',
      d => mux_y_net_x1,
      q => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x108,
      clk => clk_1_sg_x108,
      d(0) => mux_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x0
    );

  mult: entity work.mult_cfc8c45902
    port map (
      a => force_re_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x108,
      clk => clk_1_sg_x108,
      clr => '0',
      p => mult_p_net
    );

  mult1: entity work.mult_cfc8c45902
    port map (
      a => force_im_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x108,
      clk => clk_1_sg_x108,
      clr => '0',
      p => mult1_p_net
    );

  mult2: entity work.mult_cfc8c45902
    port map (
      a => force_im_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x108,
      clk => clk_1_sg_x108,
      clr => '0',
      p => mult2_p_net
    );

  mult3: entity work.mult_cfc8c45902
    port map (
      a => force_re_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x108,
      clk => clk_1_sg_x108,
      clr => '0',
      p => mult3_p_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_6/butterfly_direct"

entity butterfly_direct_entity_9ebbe6ba4f is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    a_bw_x0: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly_direct_entity_9ebbe6ba4f;

architecture structural of butterfly_direct_entity_9ebbe6ba4f is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(22 downto 0);
  signal ce_1_sg_x109: std_logic;
  signal clk_1_sg_x109: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal mux1_y_net_x1: std_logic_vector(23 downto 0);
  signal mux2_y_net_x1: std_logic_vector(23 downto 0);
  signal mux3_y_net_x1: std_logic_vector(23 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x4: std_logic;
  signal scale0_op_net: std_logic_vector(22 downto 0);
  signal scale1_op_net: std_logic_vector(22 downto 0);
  signal scale2_op_net: std_logic_vector(22 downto 0);
  signal scale3_op_net: std_logic_vector(22 downto 0);
  signal shift_delay_q_net: std_logic;
  signal single_port_ram_data_out_net_x1: std_logic_vector(35 downto 0);
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  single_port_ram_data_out_net_x1 <= a;
  mux_y_net_x3 <= b;
  ce_1_sg_x109 <= ce_1;
  clk_1_sg_x109 <= clk_1;
  slice_y_net_x0 <= shift;
  mux_y_net_x4 <= sync;
  a_bw <= concat_y_net_x2;
  a_bw_x0 <= concat_y_net_x3;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x0;

  cadd_f3304d2980: entity work.cadd_entity_5ccc5ee94d
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x109,
      clk_1 => clk_1_sg_x109,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_b69b5be683: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x109,
      clk_1 => clk_1_sg_x109,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_bd6b7058b5: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x109,
      clk_1 => clk_1_sg_x109,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_9bca269d17: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x109,
      clk_1 => clk_1_sg_x109,
      din => mux2_y_net_x1,
      dout => adder_s_net_x5,
      of_x0 => and_y_net_x2
    );

  convert_of3_81c1371855: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x109,
      clk_1 => clk_1_sg_x109,
      din => mux3_y_net_x1,
      dout => adder_s_net_x6,
      of_x0 => and_y_net_x3
    );

  csub_dee87270eb: entity work.csub_entity_839afd606e
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x109,
      clk_1 => clk_1_sg_x109,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x109,
      clk => clk_1_sg_x109,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x109,
      clk => clk_1_sg_x109,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x109,
      clk => clk_1_sg_x109,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x109,
      clk => clk_1_sg_x109,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x1
    );

  ri_to_c01_73f0078753: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x2
    );

  ri_to_c23_59c595d4c1: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x6,
      re => adder_s_net_x5,
      c => concat_y_net_x3
    );

  scale0: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x109,
      clk => clk_1_sg_x109,
      d(0) => slice_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x109,
      clk => clk_1_sg_x109,
      clr => '0',
      d(0) => delay2_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

  twiddle_general_4mult_4d4e3e3f57: entity work.twiddle_general_4mult_entity_4d4e3e3f57
    port map (
      a => single_port_ram_data_out_net_x1,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x109,
      clk_1 => clk_1_sg_x109,
      sync => mux_y_net_x4,
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      bw_im => convert1_dout_net_x2,
      bw_re => convert0_dout_net_x2,
      sync_out => delay2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_6/delay_b"

entity delay_b_entity_eee80b016f is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0)
  );
end delay_b_entity_eee80b016f;

architecture structural of delay_b_entity_eee80b016f is
  signal ce_1_sg_x110: std_logic;
  signal clk_1_sg_x110: std_logic;
  signal constant2_op_net: std_logic;
  signal counter_op_net: std_logic_vector(2 downto 0);
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x2: std_logic_vector(35 downto 0);

begin
  ce_1_sg_x110 <= ce_1;
  clk_1_sg_x110 <= clk_1;
  mux1_y_net_x0 <= in1;
  out1 <= single_port_ram_data_out_net_x2;

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 3,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_05042eb8e8f7781c",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 3
    )
    port map (
      ce => ce_1_sg_x110,
      clk => clk_1_sg_x110,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  single_port_ram: entity work.xlspram
    generic map (
      c_address_width => 3,
      c_width => 36,
      core_name0 => "bmg_62_fd6c0fe64ab6dcd2",
      latency => 3
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x110,
      clk => clk_1_sg_x110,
      data_in => mux1_y_net_x0,
      en => "1",
      rst => "0",
      we(0) => constant2_op_net,
      data_out => single_port_ram_data_out_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_6/sync_delay"

entity sync_delay_entity_2a5bdc41d5 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_2a5bdc41d5;

architecture structural of sync_delay_entity_2a5bdc41d5 is
  signal ce_1_sg_x112: std_logic;
  signal clk_1_sg_x112: std_logic;
  signal constant1_op_net: std_logic_vector(3 downto 0);
  signal constant2_op_net: std_logic_vector(3 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(3 downto 0);
  signal counter_op_net: std_logic_vector(3 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x5: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x112 <= ce_1;
  clk_1_sg_x112 <= clk_1;
  delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x5;

  constant1: entity work.constant_4c449dd556
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_145086465d
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

  constant_x0: entity work.constant_67ad97ca70
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_c2e89722de712678",
      op_arith => xlUnsigned,
      op_width => 4
    )
    port map (
      ce => ce_1_sg_x112,
      clk => clk_1_sg_x112,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x5
    );

  relational: entity work.relational_4d3cfceaf4
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_d930162434
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

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_6"

entity fft_stage_6_entity_234201d256 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    of_in: in std_logic; 
    shift: in std_logic_vector(12 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_stage_6_entity_234201d256;

architecture structural of fft_stage_6_entity_234201d256 is
  signal ce_1_sg_x113: std_logic;
  signal clk_1_sg_x113: std_logic;
  signal concat_y_net_x11: std_logic_vector(35 downto 0);
  signal concat_y_net_x13: std_logic_vector(35 downto 0);
  signal concat_y_net_x14: std_logic_vector(35 downto 0);
  signal concat_y_net_x4: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(3 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical1_y_net_x1: std_logic;
  signal logical1_y_net_x2: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x5: std_logic;
  signal shift_net_x5: std_logic_vector(12 downto 0);
  signal single_port_ram_data_out_net_x0: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x2: std_logic_vector(35 downto 0);
  signal slice1_y_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x4: std_logic;
  signal sync_delay_q_net_x5: std_logic;

begin
  ce_1_sg_x113 <= ce_1;
  clk_1_sg_x113 <= clk_1;
  concat_y_net_x11 <= in1;
  concat_y_net_x13 <= in2;
  logical1_y_net_x1 <= of_in;
  shift_net_x5 <= shift;
  sync_delay_q_net_x4 <= sync;
  of_x0 <= logical1_y_net_x2;
  out1 <= concat_y_net_x4;
  out2 <= concat_y_net_x14;
  sync_out <= sync_delay_q_net_x5;

  butterfly_direct_9ebbe6ba4f: entity work.butterfly_direct_entity_9ebbe6ba4f
    port map (
      a => single_port_ram_data_out_net_x2,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x113,
      clk_1 => clk_1_sg_x113,
      shift => slice_y_net_x0,
      sync => mux_y_net_x5,
      a_bw => concat_y_net_x4,
      a_bw_x0 => concat_y_net_x14,
      of_x0 => logical_y_net_x0,
      sync_out => sync_delay_q_net_x5
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_c84d65465c59fb07",
      op_arith => xlUnsigned,
      op_width => 4
    )
    port map (
      ce => ce_1_sg_x113,
      clk => clk_1_sg_x113,
      clr => '0',
      en => "1",
      rst(0) => sync_delay_q_net_x4,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x113,
      clk => clk_1_sg_x113,
      d(0) => sync_delay_q_net_x4,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay_b_eee80b016f: entity work.delay_b_entity_eee80b016f
    port map (
      ce_1 => ce_1_sg_x113,
      clk_1 => clk_1_sg_x113,
      in1 => mux1_y_net_x0,
      out1 => single_port_ram_data_out_net_x2
    );

  delay_f_397e5ef9c5: entity work.delay_b_entity_eee80b016f
    port map (
      ce_1 => ce_1_sg_x113,
      clk_1 => clk_1_sg_x113,
      in1 => concat_y_net_x13,
      out1 => single_port_ram_data_out_net_x0
    );

  logical1: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x113,
      clk => clk_1_sg_x113,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => logical1_y_net_x1,
      y(0) => logical1_y_net_x2
    );

  mux: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x113,
      clk => clk_1_sg_x113,
      clr => '0',
      d0 => single_port_ram_data_out_net_x0,
      d1 => concat_y_net_x11,
      sel(0) => slice1_y_net,
      y => mux_y_net_x3
    );

  mux1: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x113,
      clk => clk_1_sg_x113,
      clr => '0',
      d0 => concat_y_net_x11,
      d1 => single_port_ram_data_out_net_x0,
      sel(0) => slice1_y_net,
      y => mux1_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 5,
      new_msb => 5,
      x_width => 13,
      y_width => 1
    )
    port map (
      x => shift_net_x5,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  sync_delay_2a5bdc41d5: entity work.sync_delay_entity_2a5bdc41d5
    port map (
      ce_1 => ce_1_sg_x113,
      clk_1 => clk_1_sg_x113,
      in_x0 => delay_q_net_x0,
      out_x0 => mux_y_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_7/butterfly_direct/twiddle_general_4mult/coeff_gen"

entity coeff_gen_entity_422f348c76 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    w: out std_logic_vector(35 downto 0)
  );
end coeff_gen_entity_422f348c76;

architecture structural of coeff_gen_entity_422f348c76 is
  signal ce_1_sg_x124: std_logic;
  signal clk_1_sg_x124: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(7 downto 0);
  signal mux_y_net_x0: std_logic;
  signal rom1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_data_net_x0: std_logic_vector(17 downto 0);
  signal slice_y_net: std_logic_vector(5 downto 0);

begin
  ce_1_sg_x124 <= ce_1;
  clk_1_sg_x124 <= clk_1;
  mux_y_net_x0 <= rst;
  w <= concat_y_net_x2;

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_df2bb90b8fe02ecf",
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_1_sg_x124,
      clk => clk_1_sg_x124,
      clr => '0',
      en => "1",
      rst(0) => mux_y_net_x0,
      op => counter_op_net
    );

  ri_to_c_1c18dd9911: entity work.ri_to_c_entity_0a7e802d3a
    port map (
      im => rom1_data_net_x0,
      re => rom_data_net_x0,
      c => concat_y_net_x2
    );

  rom: entity work.xlsprom
    generic map (
      c_address_width => 6,
      c_width => 18,
      core_name0 => "bmg_62_16e54f007b53b02e",
      latency => 3
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x124,
      clk => clk_1_sg_x124,
      en => "1",
      rst => "0",
      data => rom_data_net_x0
    );

  rom1: entity work.xlsprom
    generic map (
      c_address_width => 6,
      c_width => 18,
      core_name0 => "bmg_62_721e2d25fd18b8a2",
      latency => 3
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x124,
      clk => clk_1_sg_x124,
      en => "1",
      rst => "0",
      data => rom1_data_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 7,
      x_width => 8,
      y_width => 6
    )
    port map (
      x => counter_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_7/butterfly_direct/twiddle_general_4mult"

entity twiddle_general_4mult_entity_8413895c5c is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(21 downto 0); 
    bw_re: out std_logic_vector(21 downto 0); 
    sync_out: out std_logic
  );
end twiddle_general_4mult_entity_8413895c5c;

architecture structural of twiddle_general_4mult_entity_8413895c5c is
  signal addsub1_s_net: std_logic_vector(36 downto 0);
  signal addsub_s_net: std_logic_vector(36 downto 0);
  signal ce_1_sg_x125: std_logic;
  signal clk_1_sg_x125: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay0_q_net_x0: std_logic_vector(35 downto 0);
  signal delay1_q_net_x0: std_logic_vector(35 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal delay_slr_q_net_x0: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal mult1_p_net: std_logic_vector(35 downto 0);
  signal mult2_p_net: std_logic_vector(35 downto 0);
  signal mult3_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal mux_y_net_x2: std_logic;

begin
  delay_slr_q_net_x0 <= a;
  mux_y_net_x1 <= b;
  ce_1_sg_x125 <= ce_1;
  clk_1_sg_x125 <= clk_1;
  mux_y_net_x2 <= sync;
  a_im <= force_im_output_port_net_x3;
  a_re <= force_re_output_port_net_x3;
  bw_im <= convert1_dout_net_x2;
  bw_re <= convert0_dout_net_x2;
  sync_out <= delay2_q_net_x0;

  addsub: entity work.addsub_be8c56327e
    port map (
      a => mult_p_net,
      b => mult2_p_net,
      ce => ce_1_sg_x125,
      clk => clk_1_sg_x125,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_eb2273ac28
    port map (
      a => mult1_p_net,
      b => mult3_p_net,
      ce => ce_1_sg_x125,
      clk => clk_1_sg_x125,
      clr => '0',
      s => addsub1_s_net
    );

  c_to_ri1_15a555e28b: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay0_q_net_x0,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  c_to_ri2_658cb792cc: entity work.c_to_ri2_entity_67781924ce
    port map (
      c => concat_y_net_x2,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  c_to_ri3_c9d6441ac2: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay1_q_net_x0,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  coeff_gen_422f348c76: entity work.coeff_gen_entity_422f348c76
    port map (
      ce_1 => ce_1_sg_x125,
      clk_1 => clk_1_sg_x125,
      rst => mux_y_net_x2,
      w => concat_y_net_x2
    );

  convert0: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 33,
      din_width => 37,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x125,
      clk => clk_1_sg_x125,
      clr => '0',
      din => addsub_s_net,
      en => "1",
      dout => convert0_dout_net_x2
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 33,
      din_width => 37,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x125,
      clk => clk_1_sg_x125,
      clr => '0',
      din => addsub1_s_net,
      en => "1",
      dout => convert1_dout_net_x2
    );

  delay0: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x125,
      clk => clk_1_sg_x125,
      d => delay_slr_q_net_x0,
      en => '1',
      rst => '1',
      q => delay0_q_net_x0
    );

  delay1: entity work.delay_bdaf6c9e55
    port map (
      ce => ce_1_sg_x125,
      clk => clk_1_sg_x125,
      clr => '0',
      d => mux_y_net_x1,
      q => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x125,
      clk => clk_1_sg_x125,
      d(0) => mux_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x0
    );

  mult: entity work.mult_cfc8c45902
    port map (
      a => force_re_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x125,
      clk => clk_1_sg_x125,
      clr => '0',
      p => mult_p_net
    );

  mult1: entity work.mult_cfc8c45902
    port map (
      a => force_im_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x125,
      clk => clk_1_sg_x125,
      clr => '0',
      p => mult1_p_net
    );

  mult2: entity work.mult_cfc8c45902
    port map (
      a => force_im_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x125,
      clk => clk_1_sg_x125,
      clr => '0',
      p => mult2_p_net
    );

  mult3: entity work.mult_cfc8c45902
    port map (
      a => force_re_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x125,
      clk => clk_1_sg_x125,
      clr => '0',
      p => mult3_p_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_7/butterfly_direct"

entity butterfly_direct_entity_dfa79bcad4 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    a_bw_x0: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly_direct_entity_dfa79bcad4;

architecture structural of butterfly_direct_entity_dfa79bcad4 is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(22 downto 0);
  signal ce_1_sg_x126: std_logic;
  signal clk_1_sg_x126: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal delay_slr_q_net_x1: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal mux1_y_net_x1: std_logic_vector(23 downto 0);
  signal mux2_y_net_x1: std_logic_vector(23 downto 0);
  signal mux3_y_net_x1: std_logic_vector(23 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x4: std_logic;
  signal scale0_op_net: std_logic_vector(22 downto 0);
  signal scale1_op_net: std_logic_vector(22 downto 0);
  signal scale2_op_net: std_logic_vector(22 downto 0);
  signal scale3_op_net: std_logic_vector(22 downto 0);
  signal shift_delay_q_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  delay_slr_q_net_x1 <= a;
  mux_y_net_x3 <= b;
  ce_1_sg_x126 <= ce_1;
  clk_1_sg_x126 <= clk_1;
  slice_y_net_x0 <= shift;
  mux_y_net_x4 <= sync;
  a_bw <= concat_y_net_x2;
  a_bw_x0 <= concat_y_net_x3;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x0;

  cadd_d404c8af2d: entity work.cadd_entity_5ccc5ee94d
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x126,
      clk_1 => clk_1_sg_x126,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_904145f5ee: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x126,
      clk_1 => clk_1_sg_x126,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_31f428e3f9: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x126,
      clk_1 => clk_1_sg_x126,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_e95c676266: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x126,
      clk_1 => clk_1_sg_x126,
      din => mux2_y_net_x1,
      dout => adder_s_net_x5,
      of_x0 => and_y_net_x2
    );

  convert_of3_03fc90f8e3: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x126,
      clk_1 => clk_1_sg_x126,
      din => mux3_y_net_x1,
      dout => adder_s_net_x6,
      of_x0 => and_y_net_x3
    );

  csub_877850fd1d: entity work.csub_entity_839afd606e
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x126,
      clk_1 => clk_1_sg_x126,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x126,
      clk => clk_1_sg_x126,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x126,
      clk => clk_1_sg_x126,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x126,
      clk => clk_1_sg_x126,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x126,
      clk => clk_1_sg_x126,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x1
    );

  ri_to_c01_798ad1bab5: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x2
    );

  ri_to_c23_dd03b947c7: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x6,
      re => adder_s_net_x5,
      c => concat_y_net_x3
    );

  scale0: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x126,
      clk => clk_1_sg_x126,
      d(0) => slice_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x126,
      clk => clk_1_sg_x126,
      clr => '0',
      d(0) => delay2_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

  twiddle_general_4mult_8413895c5c: entity work.twiddle_general_4mult_entity_8413895c5c
    port map (
      a => delay_slr_q_net_x1,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x126,
      clk_1 => clk_1_sg_x126,
      sync => mux_y_net_x4,
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      bw_im => convert1_dout_net_x2,
      bw_re => convert0_dout_net_x2,
      sync_out => delay2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_7/delay_b"

entity delay_b_entity_fb1d442e07 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0)
  );
end delay_b_entity_fb1d442e07;

architecture structural of delay_b_entity_fb1d442e07 is
  signal ce_1_sg_x127: std_logic;
  signal clk_1_sg_x127: std_logic;
  signal delay_slr_q_net_x2: std_logic_vector(35 downto 0);
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);

begin
  ce_1_sg_x127 <= ce_1;
  clk_1_sg_x127 <= clk_1;
  mux1_y_net_x0 <= in1;
  out1 <= delay_slr_q_net_x2;

  delay_slr: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x127,
      clk => clk_1_sg_x127,
      d => mux1_y_net_x0,
      en => '1',
      rst => '1',
      q => delay_slr_q_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_7/sync_delay"

entity sync_delay_entity_ec464aa8f1 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_ec464aa8f1;

architecture structural of sync_delay_entity_ec464aa8f1 is
  signal ce_1_sg_x129: std_logic;
  signal clk_1_sg_x129: std_logic;
  signal constant1_op_net: std_logic_vector(2 downto 0);
  signal constant2_op_net: std_logic_vector(2 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(2 downto 0);
  signal counter_op_net: std_logic_vector(2 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x5: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x129 <= ce_1;
  clk_1_sg_x129 <= clk_1;
  delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x5;

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
      ce => ce_1_sg_x129,
      clk => clk_1_sg_x129,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x5
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

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_7"

entity fft_stage_7_entity_cf4bb1eb09 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    of_in: in std_logic; 
    shift: in std_logic_vector(12 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_stage_7_entity_cf4bb1eb09;

architecture structural of fft_stage_7_entity_cf4bb1eb09 is
  signal ce_1_sg_x130: std_logic;
  signal clk_1_sg_x130: std_logic;
  signal concat_y_net_x16: std_logic_vector(35 downto 0);
  signal concat_y_net_x5: std_logic_vector(35 downto 0);
  signal concat_y_net_x6: std_logic_vector(35 downto 0);
  signal concat_y_net_x7: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(2 downto 0);
  signal delay_q_net_x0: std_logic;
  signal delay_slr_q_net_x0: std_logic_vector(35 downto 0);
  signal delay_slr_q_net_x2: std_logic_vector(35 downto 0);
  signal logical1_y_net_x0: std_logic;
  signal logical1_y_net_x3: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x5: std_logic;
  signal shift_net_x6: std_logic_vector(12 downto 0);
  signal slice1_y_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x1: std_logic;
  signal sync_delay_q_net_x6: std_logic;

begin
  ce_1_sg_x130 <= ce_1;
  clk_1_sg_x130 <= clk_1;
  concat_y_net_x5 <= in1;
  concat_y_net_x16 <= in2;
  logical1_y_net_x3 <= of_in;
  shift_net_x6 <= shift;
  sync_delay_q_net_x6 <= sync;
  of_x0 <= logical1_y_net_x0;
  out1 <= concat_y_net_x6;
  out2 <= concat_y_net_x7;
  sync_out <= sync_delay_q_net_x1;

  butterfly_direct_dfa79bcad4: entity work.butterfly_direct_entity_dfa79bcad4
    port map (
      a => delay_slr_q_net_x2,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x130,
      clk_1 => clk_1_sg_x130,
      shift => slice_y_net_x0,
      sync => mux_y_net_x5,
      a_bw => concat_y_net_x6,
      a_bw_x0 => concat_y_net_x7,
      of_x0 => logical_y_net_x0,
      sync_out => sync_delay_q_net_x1
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_05042eb8e8f7781c",
      op_arith => xlUnsigned,
      op_width => 3
    )
    port map (
      ce => ce_1_sg_x130,
      clk => clk_1_sg_x130,
      clr => '0',
      en => "1",
      rst(0) => sync_delay_q_net_x6,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x130,
      clk => clk_1_sg_x130,
      d(0) => sync_delay_q_net_x6,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay_b_fb1d442e07: entity work.delay_b_entity_fb1d442e07
    port map (
      ce_1 => ce_1_sg_x130,
      clk_1 => clk_1_sg_x130,
      in1 => mux1_y_net_x0,
      out1 => delay_slr_q_net_x2
    );

  delay_f_73bcf85ee2: entity work.delay_b_entity_fb1d442e07
    port map (
      ce_1 => ce_1_sg_x130,
      clk_1 => clk_1_sg_x130,
      in1 => concat_y_net_x16,
      out1 => delay_slr_q_net_x0
    );

  logical1: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x130,
      clk => clk_1_sg_x130,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => logical1_y_net_x3,
      y(0) => logical1_y_net_x0
    );

  mux: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x130,
      clk => clk_1_sg_x130,
      clr => '0',
      d0 => delay_slr_q_net_x0,
      d1 => concat_y_net_x5,
      sel(0) => slice1_y_net,
      y => mux_y_net_x3
    );

  mux1: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x130,
      clk => clk_1_sg_x130,
      clr => '0',
      d0 => concat_y_net_x5,
      d1 => delay_slr_q_net_x0,
      sel(0) => slice1_y_net,
      y => mux1_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 6,
      new_msb => 6,
      x_width => 13,
      y_width => 1
    )
    port map (
      x => shift_net_x6,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 3,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  sync_delay_ec464aa8f1: entity work.sync_delay_entity_ec464aa8f1
    port map (
      ce_1 => ce_1_sg_x130,
      clk_1 => clk_1_sg_x130,
      in_x0 => delay_q_net_x0,
      out_x0 => mux_y_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_8/butterfly_direct/twiddle_general_4mult/coeff_gen"

entity coeff_gen_entity_6dff86c0da is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    w: out std_logic_vector(35 downto 0)
  );
end coeff_gen_entity_6dff86c0da;

architecture structural of coeff_gen_entity_6dff86c0da is
  signal ce_1_sg_x141: std_logic;
  signal clk_1_sg_x141: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(7 downto 0);
  signal mux_y_net_x0: std_logic;
  signal rom1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_data_net_x0: std_logic_vector(17 downto 0);
  signal slice_y_net: std_logic_vector(6 downto 0);

begin
  ce_1_sg_x141 <= ce_1;
  clk_1_sg_x141 <= clk_1;
  mux_y_net_x0 <= rst;
  w <= concat_y_net_x2;

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_df2bb90b8fe02ecf",
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_1_sg_x141,
      clk => clk_1_sg_x141,
      clr => '0',
      en => "1",
      rst(0) => mux_y_net_x0,
      op => counter_op_net
    );

  ri_to_c_f80ccef8a3: entity work.ri_to_c_entity_0a7e802d3a
    port map (
      im => rom1_data_net_x0,
      re => rom_data_net_x0,
      c => concat_y_net_x2
    );

  rom: entity work.xlsprom
    generic map (
      c_address_width => 7,
      c_width => 18,
      core_name0 => "bmg_62_92fa6367e92d9ee0",
      latency => 3
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x141,
      clk => clk_1_sg_x141,
      en => "1",
      rst => "0",
      data => rom_data_net_x0
    );

  rom1: entity work.xlsprom
    generic map (
      c_address_width => 7,
      c_width => 18,
      core_name0 => "bmg_62_89660d475f29ded2",
      latency => 3
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x141,
      clk => clk_1_sg_x141,
      en => "1",
      rst => "0",
      data => rom1_data_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 7,
      x_width => 8,
      y_width => 7
    )
    port map (
      x => counter_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_8/butterfly_direct/twiddle_general_4mult"

entity twiddle_general_4mult_entity_46e649bbc1 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(21 downto 0); 
    bw_re: out std_logic_vector(21 downto 0); 
    sync_out: out std_logic
  );
end twiddle_general_4mult_entity_46e649bbc1;

architecture structural of twiddle_general_4mult_entity_46e649bbc1 is
  signal addsub1_s_net: std_logic_vector(36 downto 0);
  signal addsub_s_net: std_logic_vector(36 downto 0);
  signal ce_1_sg_x142: std_logic;
  signal clk_1_sg_x142: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay0_q_net_x0: std_logic_vector(35 downto 0);
  signal delay1_q_net_x0: std_logic_vector(35 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal delay_slr_q_net_x0: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal mult1_p_net: std_logic_vector(35 downto 0);
  signal mult2_p_net: std_logic_vector(35 downto 0);
  signal mult3_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal mux_y_net_x2: std_logic;

begin
  delay_slr_q_net_x0 <= a;
  mux_y_net_x1 <= b;
  ce_1_sg_x142 <= ce_1;
  clk_1_sg_x142 <= clk_1;
  mux_y_net_x2 <= sync;
  a_im <= force_im_output_port_net_x3;
  a_re <= force_re_output_port_net_x3;
  bw_im <= convert1_dout_net_x2;
  bw_re <= convert0_dout_net_x2;
  sync_out <= delay2_q_net_x0;

  addsub: entity work.addsub_be8c56327e
    port map (
      a => mult_p_net,
      b => mult2_p_net,
      ce => ce_1_sg_x142,
      clk => clk_1_sg_x142,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_eb2273ac28
    port map (
      a => mult1_p_net,
      b => mult3_p_net,
      ce => ce_1_sg_x142,
      clk => clk_1_sg_x142,
      clr => '0',
      s => addsub1_s_net
    );

  c_to_ri1_efc6b8ab63: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay0_q_net_x0,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  c_to_ri2_36d253dc04: entity work.c_to_ri2_entity_67781924ce
    port map (
      c => concat_y_net_x2,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  c_to_ri3_8967a2d0ed: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay1_q_net_x0,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  coeff_gen_6dff86c0da: entity work.coeff_gen_entity_6dff86c0da
    port map (
      ce_1 => ce_1_sg_x142,
      clk_1 => clk_1_sg_x142,
      rst => mux_y_net_x2,
      w => concat_y_net_x2
    );

  convert0: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 33,
      din_width => 37,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x142,
      clk => clk_1_sg_x142,
      clr => '0',
      din => addsub_s_net,
      en => "1",
      dout => convert0_dout_net_x2
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 33,
      din_width => 37,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x142,
      clk => clk_1_sg_x142,
      clr => '0',
      din => addsub1_s_net,
      en => "1",
      dout => convert1_dout_net_x2
    );

  delay0: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x142,
      clk => clk_1_sg_x142,
      d => delay_slr_q_net_x0,
      en => '1',
      rst => '1',
      q => delay0_q_net_x0
    );

  delay1: entity work.delay_bdaf6c9e55
    port map (
      ce => ce_1_sg_x142,
      clk => clk_1_sg_x142,
      clr => '0',
      d => mux_y_net_x1,
      q => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x142,
      clk => clk_1_sg_x142,
      d(0) => mux_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x0
    );

  mult: entity work.mult_cfc8c45902
    port map (
      a => force_re_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x142,
      clk => clk_1_sg_x142,
      clr => '0',
      p => mult_p_net
    );

  mult1: entity work.mult_cfc8c45902
    port map (
      a => force_im_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x142,
      clk => clk_1_sg_x142,
      clr => '0',
      p => mult1_p_net
    );

  mult2: entity work.mult_cfc8c45902
    port map (
      a => force_im_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x142,
      clk => clk_1_sg_x142,
      clr => '0',
      p => mult2_p_net
    );

  mult3: entity work.mult_cfc8c45902
    port map (
      a => force_re_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x142,
      clk => clk_1_sg_x142,
      clr => '0',
      p => mult3_p_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_8/butterfly_direct"

entity butterfly_direct_entity_06f5396864 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    a_bw_x0: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly_direct_entity_06f5396864;

architecture structural of butterfly_direct_entity_06f5396864 is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(22 downto 0);
  signal ce_1_sg_x143: std_logic;
  signal clk_1_sg_x143: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal delay_slr_q_net_x1: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal mux1_y_net_x1: std_logic_vector(23 downto 0);
  signal mux2_y_net_x1: std_logic_vector(23 downto 0);
  signal mux3_y_net_x1: std_logic_vector(23 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x4: std_logic;
  signal scale0_op_net: std_logic_vector(22 downto 0);
  signal scale1_op_net: std_logic_vector(22 downto 0);
  signal scale2_op_net: std_logic_vector(22 downto 0);
  signal scale3_op_net: std_logic_vector(22 downto 0);
  signal shift_delay_q_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  delay_slr_q_net_x1 <= a;
  mux_y_net_x3 <= b;
  ce_1_sg_x143 <= ce_1;
  clk_1_sg_x143 <= clk_1;
  slice_y_net_x0 <= shift;
  mux_y_net_x4 <= sync;
  a_bw <= concat_y_net_x2;
  a_bw_x0 <= concat_y_net_x3;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x0;

  cadd_71363ab384: entity work.cadd_entity_5ccc5ee94d
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_b1c63a8f74: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_e6bac597c0: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_75ddda3beb: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      din => mux2_y_net_x1,
      dout => adder_s_net_x5,
      of_x0 => and_y_net_x2
    );

  convert_of3_f6de1d38be: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      din => mux3_y_net_x1,
      dout => adder_s_net_x6,
      of_x0 => and_y_net_x3
    );

  csub_660799be44: entity work.csub_entity_839afd606e
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x143,
      clk => clk_1_sg_x143,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x143,
      clk => clk_1_sg_x143,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x143,
      clk => clk_1_sg_x143,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x143,
      clk => clk_1_sg_x143,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x1
    );

  ri_to_c01_ef18cce78e: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x2
    );

  ri_to_c23_e9ff9c6fc6: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x6,
      re => adder_s_net_x5,
      c => concat_y_net_x3
    );

  scale0: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x143,
      clk => clk_1_sg_x143,
      d(0) => slice_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x143,
      clk => clk_1_sg_x143,
      clr => '0',
      d(0) => delay2_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

  twiddle_general_4mult_46e649bbc1: entity work.twiddle_general_4mult_entity_46e649bbc1
    port map (
      a => delay_slr_q_net_x1,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      sync => mux_y_net_x4,
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      bw_im => convert1_dout_net_x2,
      bw_re => convert0_dout_net_x2,
      sync_out => delay2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_8/delay_b"

entity delay_b_entity_5da3a225ee is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0)
  );
end delay_b_entity_5da3a225ee;

architecture structural of delay_b_entity_5da3a225ee is
  signal ce_1_sg_x144: std_logic;
  signal clk_1_sg_x144: std_logic;
  signal delay_slr_q_net_x2: std_logic_vector(35 downto 0);
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);

begin
  ce_1_sg_x144 <= ce_1;
  clk_1_sg_x144 <= clk_1;
  mux1_y_net_x0 <= in1;
  out1 <= delay_slr_q_net_x2;

  delay_slr: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x144,
      clk => clk_1_sg_x144,
      d => mux1_y_net_x0,
      en => '1',
      rst => '1',
      q => delay_slr_q_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_8/sync_delay"

entity sync_delay_entity_90e48b2a26 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_90e48b2a26;

architecture structural of sync_delay_entity_90e48b2a26 is
  signal ce_1_sg_x146: std_logic;
  signal clk_1_sg_x146: std_logic;
  signal constant1_op_net: std_logic_vector(1 downto 0);
  signal constant2_op_net: std_logic_vector(1 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(1 downto 0);
  signal counter_op_net: std_logic_vector(1 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x5: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x146 <= ce_1;
  clk_1_sg_x146 <= clk_1;
  delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x5;

  constant1: entity work.constant_cda50df78a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_e8ddc079e9
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

  constant_x0: entity work.constant_a7e2bb9e12
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_9f5113eef58d42f3",
      op_arith => xlUnsigned,
      op_width => 2
    )
    port map (
      ce => ce_1_sg_x146,
      clk => clk_1_sg_x146,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x5
    );

  relational: entity work.relational_5f1eb17108
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_f9928864ea
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

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_8"

entity fft_stage_8_entity_7eea52cfb7 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    of_in: in std_logic; 
    shift: in std_logic_vector(12 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_stage_8_entity_7eea52cfb7;

architecture structural of fft_stage_8_entity_7eea52cfb7 is
  signal ce_1_sg_x147: std_logic;
  signal clk_1_sg_x147: std_logic;
  signal concat_y_net_x10: std_logic_vector(35 downto 0);
  signal concat_y_net_x11: std_logic_vector(35 downto 0);
  signal concat_y_net_x7: std_logic_vector(35 downto 0);
  signal concat_y_net_x9: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(1 downto 0);
  signal delay_q_net_x0: std_logic;
  signal delay_slr_q_net_x0: std_logic_vector(35 downto 0);
  signal delay_slr_q_net_x2: std_logic_vector(35 downto 0);
  signal logical1_y_net_x1: std_logic;
  signal logical1_y_net_x2: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x5: std_logic;
  signal shift_net_x7: std_logic_vector(12 downto 0);
  signal slice1_y_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x2: std_logic;
  signal sync_delay_q_net_x3: std_logic;

begin
  ce_1_sg_x147 <= ce_1;
  clk_1_sg_x147 <= clk_1;
  concat_y_net_x7 <= in1;
  concat_y_net_x9 <= in2;
  logical1_y_net_x1 <= of_in;
  shift_net_x7 <= shift;
  sync_delay_q_net_x2 <= sync;
  of_x0 <= logical1_y_net_x2;
  out1 <= concat_y_net_x10;
  out2 <= concat_y_net_x11;
  sync_out <= sync_delay_q_net_x3;

  butterfly_direct_06f5396864: entity work.butterfly_direct_entity_06f5396864
    port map (
      a => delay_slr_q_net_x2,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x147,
      clk_1 => clk_1_sg_x147,
      shift => slice_y_net_x0,
      sync => mux_y_net_x5,
      a_bw => concat_y_net_x10,
      a_bw_x0 => concat_y_net_x11,
      of_x0 => logical_y_net_x0,
      sync_out => sync_delay_q_net_x3
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_38c9cb0851a20d91",
      op_arith => xlUnsigned,
      op_width => 2
    )
    port map (
      ce => ce_1_sg_x147,
      clk => clk_1_sg_x147,
      clr => '0',
      en => "1",
      rst(0) => sync_delay_q_net_x2,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x147,
      clk => clk_1_sg_x147,
      d(0) => sync_delay_q_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay_b_5da3a225ee: entity work.delay_b_entity_5da3a225ee
    port map (
      ce_1 => ce_1_sg_x147,
      clk_1 => clk_1_sg_x147,
      in1 => mux1_y_net_x0,
      out1 => delay_slr_q_net_x2
    );

  delay_f_d1e1afe1d4: entity work.delay_b_entity_5da3a225ee
    port map (
      ce_1 => ce_1_sg_x147,
      clk_1 => clk_1_sg_x147,
      in1 => concat_y_net_x9,
      out1 => delay_slr_q_net_x0
    );

  logical1: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x147,
      clk => clk_1_sg_x147,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => logical1_y_net_x1,
      y(0) => logical1_y_net_x2
    );

  mux: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x147,
      clk => clk_1_sg_x147,
      clr => '0',
      d0 => delay_slr_q_net_x0,
      d1 => concat_y_net_x7,
      sel(0) => slice1_y_net,
      y => mux_y_net_x3
    );

  mux1: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x147,
      clk => clk_1_sg_x147,
      clr => '0',
      d0 => concat_y_net_x7,
      d1 => delay_slr_q_net_x0,
      sel(0) => slice1_y_net,
      y => mux1_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 7,
      new_msb => 7,
      x_width => 13,
      y_width => 1
    )
    port map (
      x => shift_net_x7,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 2,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  sync_delay_90e48b2a26: entity work.sync_delay_entity_90e48b2a26
    port map (
      ce_1 => ce_1_sg_x147,
      clk_1 => clk_1_sg_x147,
      in_x0 => delay_q_net_x0,
      out_x0 => mux_y_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_9/butterfly_direct/twiddle_general_4mult/coeff_gen"

entity coeff_gen_entity_7704725608 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    w: out std_logic_vector(35 downto 0)
  );
end coeff_gen_entity_7704725608;

architecture structural of coeff_gen_entity_7704725608 is
  signal ce_1_sg_x158: std_logic;
  signal clk_1_sg_x158: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(7 downto 0);
  signal mux_y_net_x0: std_logic;
  signal rom1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_data_net_x0: std_logic_vector(17 downto 0);
  signal slice_y_net: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x158 <= ce_1;
  clk_1_sg_x158 <= clk_1;
  mux_y_net_x0 <= rst;
  w <= concat_y_net_x2;

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_df2bb90b8fe02ecf",
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_1_sg_x158,
      clk => clk_1_sg_x158,
      clr => '0',
      en => "1",
      rst(0) => mux_y_net_x0,
      op => counter_op_net
    );

  ri_to_c_ca20c87038: entity work.ri_to_c_entity_0a7e802d3a
    port map (
      im => rom1_data_net_x0,
      re => rom_data_net_x0,
      c => concat_y_net_x2
    );

  rom: entity work.xlsprom
    generic map (
      c_address_width => 8,
      c_width => 18,
      core_name0 => "bmg_62_66e53735c699b53b",
      latency => 3
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x158,
      clk => clk_1_sg_x158,
      en => "1",
      rst => "0",
      data => rom_data_net_x0
    );

  rom1: entity work.xlsprom
    generic map (
      c_address_width => 8,
      c_width => 18,
      core_name0 => "bmg_62_83efd1fdf9477a72",
      latency => 3
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x158,
      clk => clk_1_sg_x158,
      en => "1",
      rst => "0",
      data => rom1_data_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 8,
      y_width => 8
    )
    port map (
      x => counter_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_9/butterfly_direct/twiddle_general_4mult"

entity twiddle_general_4mult_entity_223bc3a4c7 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(21 downto 0); 
    bw_re: out std_logic_vector(21 downto 0); 
    sync_out: out std_logic
  );
end twiddle_general_4mult_entity_223bc3a4c7;

architecture structural of twiddle_general_4mult_entity_223bc3a4c7 is
  signal addsub1_s_net: std_logic_vector(36 downto 0);
  signal addsub_s_net: std_logic_vector(36 downto 0);
  signal ce_1_sg_x159: std_logic;
  signal clk_1_sg_x159: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay0_q_net_x0: std_logic_vector(35 downto 0);
  signal delay1_q_net_x0: std_logic_vector(35 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal delay_slr_q_net_x0: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal mult1_p_net: std_logic_vector(35 downto 0);
  signal mult2_p_net: std_logic_vector(35 downto 0);
  signal mult3_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal mux_y_net_x2: std_logic;

begin
  delay_slr_q_net_x0 <= a;
  mux_y_net_x1 <= b;
  ce_1_sg_x159 <= ce_1;
  clk_1_sg_x159 <= clk_1;
  mux_y_net_x2 <= sync;
  a_im <= force_im_output_port_net_x3;
  a_re <= force_re_output_port_net_x3;
  bw_im <= convert1_dout_net_x2;
  bw_re <= convert0_dout_net_x2;
  sync_out <= delay2_q_net_x0;

  addsub: entity work.addsub_be8c56327e
    port map (
      a => mult_p_net,
      b => mult2_p_net,
      ce => ce_1_sg_x159,
      clk => clk_1_sg_x159,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_eb2273ac28
    port map (
      a => mult1_p_net,
      b => mult3_p_net,
      ce => ce_1_sg_x159,
      clk => clk_1_sg_x159,
      clr => '0',
      s => addsub1_s_net
    );

  c_to_ri1_8e96b01811: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay0_q_net_x0,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  c_to_ri2_00a1bf8fbd: entity work.c_to_ri2_entity_67781924ce
    port map (
      c => concat_y_net_x2,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  c_to_ri3_da4149691c: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay1_q_net_x0,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  coeff_gen_7704725608: entity work.coeff_gen_entity_7704725608
    port map (
      ce_1 => ce_1_sg_x159,
      clk_1 => clk_1_sg_x159,
      rst => mux_y_net_x2,
      w => concat_y_net_x2
    );

  convert0: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 33,
      din_width => 37,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x159,
      clk => clk_1_sg_x159,
      clr => '0',
      din => addsub_s_net,
      en => "1",
      dout => convert0_dout_net_x2
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 33,
      din_width => 37,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x159,
      clk => clk_1_sg_x159,
      clr => '0',
      din => addsub1_s_net,
      en => "1",
      dout => convert1_dout_net_x2
    );

  delay0: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x159,
      clk => clk_1_sg_x159,
      d => delay_slr_q_net_x0,
      en => '1',
      rst => '1',
      q => delay0_q_net_x0
    );

  delay1: entity work.delay_bdaf6c9e55
    port map (
      ce => ce_1_sg_x159,
      clk => clk_1_sg_x159,
      clr => '0',
      d => mux_y_net_x1,
      q => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x159,
      clk => clk_1_sg_x159,
      d(0) => mux_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x0
    );

  mult: entity work.mult_cfc8c45902
    port map (
      a => force_re_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x159,
      clk => clk_1_sg_x159,
      clr => '0',
      p => mult_p_net
    );

  mult1: entity work.mult_cfc8c45902
    port map (
      a => force_im_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x159,
      clk => clk_1_sg_x159,
      clr => '0',
      p => mult1_p_net
    );

  mult2: entity work.mult_cfc8c45902
    port map (
      a => force_im_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x159,
      clk => clk_1_sg_x159,
      clr => '0',
      p => mult2_p_net
    );

  mult3: entity work.mult_cfc8c45902
    port map (
      a => force_re_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x159,
      clk => clk_1_sg_x159,
      clr => '0',
      p => mult3_p_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_9/butterfly_direct"

entity butterfly_direct_entity_60b00b1493 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    a_bw_x0: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly_direct_entity_60b00b1493;

architecture structural of butterfly_direct_entity_60b00b1493 is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(22 downto 0);
  signal ce_1_sg_x160: std_logic;
  signal clk_1_sg_x160: std_logic;
  signal concat_y_net_x11: std_logic_vector(35 downto 0);
  signal concat_y_net_x12: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal delay_slr_q_net_x1: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal mux1_y_net_x1: std_logic_vector(23 downto 0);
  signal mux2_y_net_x1: std_logic_vector(23 downto 0);
  signal mux3_y_net_x1: std_logic_vector(23 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x4: std_logic;
  signal scale0_op_net: std_logic_vector(22 downto 0);
  signal scale1_op_net: std_logic_vector(22 downto 0);
  signal scale2_op_net: std_logic_vector(22 downto 0);
  signal scale3_op_net: std_logic_vector(22 downto 0);
  signal shift_delay_q_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x3: std_logic;

begin
  delay_slr_q_net_x1 <= a;
  mux_y_net_x3 <= b;
  ce_1_sg_x160 <= ce_1;
  clk_1_sg_x160 <= clk_1;
  slice_y_net_x0 <= shift;
  mux_y_net_x4 <= sync;
  a_bw <= concat_y_net_x11;
  a_bw_x0 <= concat_y_net_x12;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x3;

  cadd_d328838663: entity work.cadd_entity_5ccc5ee94d
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x160,
      clk_1 => clk_1_sg_x160,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_cd381f0a35: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x160,
      clk_1 => clk_1_sg_x160,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_2edd9471dc: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x160,
      clk_1 => clk_1_sg_x160,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_efb0dea9d7: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x160,
      clk_1 => clk_1_sg_x160,
      din => mux2_y_net_x1,
      dout => adder_s_net_x5,
      of_x0 => and_y_net_x2
    );

  convert_of3_2fb47074ab: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x160,
      clk_1 => clk_1_sg_x160,
      din => mux3_y_net_x1,
      dout => adder_s_net_x6,
      of_x0 => and_y_net_x3
    );

  csub_50d8d52f66: entity work.csub_entity_839afd606e
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x160,
      clk_1 => clk_1_sg_x160,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x160,
      clk => clk_1_sg_x160,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x160,
      clk => clk_1_sg_x160,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x160,
      clk => clk_1_sg_x160,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x160,
      clk => clk_1_sg_x160,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x1
    );

  ri_to_c01_f035a7ed65: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x11
    );

  ri_to_c23_e003fe77a8: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x6,
      re => adder_s_net_x5,
      c => concat_y_net_x12
    );

  scale0: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x160,
      clk => clk_1_sg_x160,
      d(0) => slice_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x160,
      clk => clk_1_sg_x160,
      clr => '0',
      d(0) => delay2_q_net_x0,
      q(0) => sync_delay_q_net_x3
    );

  twiddle_general_4mult_223bc3a4c7: entity work.twiddle_general_4mult_entity_223bc3a4c7
    port map (
      a => delay_slr_q_net_x1,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x160,
      clk_1 => clk_1_sg_x160,
      sync => mux_y_net_x4,
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      bw_im => convert1_dout_net_x2,
      bw_re => convert0_dout_net_x2,
      sync_out => delay2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_9/delay_b"

entity delay_b_entity_7d713758f4 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0)
  );
end delay_b_entity_7d713758f4;

architecture structural of delay_b_entity_7d713758f4 is
  signal ce_1_sg_x161: std_logic;
  signal clk_1_sg_x161: std_logic;
  signal delay_slr_q_net_x2: std_logic_vector(35 downto 0);
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);

begin
  ce_1_sg_x161 <= ce_1;
  clk_1_sg_x161 <= clk_1;
  mux1_y_net_x0 <= in1;
  out1 <= delay_slr_q_net_x2;

  delay_slr: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x161,
      clk => clk_1_sg_x161,
      d => mux1_y_net_x0,
      en => '1',
      rst => '1',
      q => delay_slr_q_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_9/sync_delay"

entity sync_delay_entity_5a58012105 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_5a58012105;

architecture structural of sync_delay_entity_5a58012105 is
  signal ce_1_sg_x163: std_logic;
  signal clk_1_sg_x163: std_logic;
  signal constant1_op_net: std_logic_vector(1 downto 0);
  signal constant2_op_net: std_logic_vector(1 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(1 downto 0);
  signal counter_op_net: std_logic_vector(1 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x5: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x163 <= ce_1;
  clk_1_sg_x163 <= clk_1;
  delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x5;

  constant1: entity work.constant_cda50df78a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_a7e2bb9e12
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

  constant_x0: entity work.constant_a7e2bb9e12
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_9f5113eef58d42f3",
      op_arith => xlUnsigned,
      op_width => 2
    )
    port map (
      ce => ce_1_sg_x163,
      clk => clk_1_sg_x163,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x5
    );

  relational: entity work.relational_5f1eb17108
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_f9928864ea
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

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core/fft_stage_9"

entity fft_stage_9_entity_86ae7aec0c is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    of_in: in std_logic; 
    shift: in std_logic_vector(12 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_stage_9_entity_86ae7aec0c;

architecture structural of fft_stage_9_entity_86ae7aec0c is
  signal ce_1_sg_x164: std_logic;
  signal clk_1_sg_x164: std_logic;
  signal concat_y_net_x14: std_logic_vector(35 downto 0);
  signal concat_y_net_x15: std_logic_vector(35 downto 0);
  signal concat_y_net_x16: std_logic_vector(35 downto 0);
  signal concat_y_net_x17: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic;
  signal delay_q_net_x0: std_logic;
  signal delay_slr_q_net_x0: std_logic_vector(35 downto 0);
  signal delay_slr_q_net_x2: std_logic_vector(35 downto 0);
  signal logical1_y_net_x0: std_logic;
  signal logical1_y_net_x3: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x5: std_logic;
  signal shift_net_x8: std_logic_vector(12 downto 0);
  signal slice1_y_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x5: std_logic;
  signal sync_delay_q_net_x6: std_logic;

begin
  ce_1_sg_x164 <= ce_1;
  clk_1_sg_x164 <= clk_1;
  concat_y_net_x14 <= in1;
  concat_y_net_x15 <= in2;
  logical1_y_net_x3 <= of_in;
  shift_net_x8 <= shift;
  sync_delay_q_net_x5 <= sync;
  of_x0 <= logical1_y_net_x0;
  out1 <= concat_y_net_x16;
  out2 <= concat_y_net_x17;
  sync_out <= sync_delay_q_net_x6;

  butterfly_direct_60b00b1493: entity work.butterfly_direct_entity_60b00b1493
    port map (
      a => delay_slr_q_net_x2,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x164,
      clk_1 => clk_1_sg_x164,
      shift => slice_y_net_x0,
      sync => mux_y_net_x5,
      a_bw => concat_y_net_x16,
      a_bw_x0 => concat_y_net_x17,
      of_x0 => logical_y_net_x0,
      sync_out => sync_delay_q_net_x6
    );

  counter: entity work.counter_223a0f3237
    port map (
      ce => ce_1_sg_x164,
      clk => clk_1_sg_x164,
      clr => '0',
      rst(0) => sync_delay_q_net_x5,
      op(0) => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x164,
      clk => clk_1_sg_x164,
      d(0) => sync_delay_q_net_x5,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay_b_7d713758f4: entity work.delay_b_entity_7d713758f4
    port map (
      ce_1 => ce_1_sg_x164,
      clk_1 => clk_1_sg_x164,
      in1 => mux1_y_net_x0,
      out1 => delay_slr_q_net_x2
    );

  delay_f_166fa8f781: entity work.delay_b_entity_7d713758f4
    port map (
      ce_1 => ce_1_sg_x164,
      clk_1 => clk_1_sg_x164,
      in1 => concat_y_net_x15,
      out1 => delay_slr_q_net_x0
    );

  logical1: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x164,
      clk => clk_1_sg_x164,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => logical1_y_net_x3,
      y(0) => logical1_y_net_x0
    );

  mux: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x164,
      clk => clk_1_sg_x164,
      clr => '0',
      d0 => delay_slr_q_net_x0,
      d1 => concat_y_net_x14,
      sel(0) => slice1_y_net,
      y => mux_y_net_x3
    );

  mux1: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x164,
      clk => clk_1_sg_x164,
      clr => '0',
      d0 => concat_y_net_x14,
      d1 => delay_slr_q_net_x0,
      sel(0) => slice1_y_net,
      y => mux1_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 8,
      x_width => 13,
      y_width => 1
    )
    port map (
      x => shift_net_x8,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 1,
      y_width => 1
    )
    port map (
      x(0) => counter_op_net,
      y(0) => slice1_y_net
    );

  sync_delay_5a58012105: entity work.sync_delay_entity_5a58012105
    port map (
      ce_1 => ce_1_sg_x164,
      clk_1 => clk_1_sg_x164,
      in_x0 => delay_q_net_x0,
      out_x0 => mux_y_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/biplex_core"

entity biplex_core_entity_8ae395e8d4 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    pol1: in std_logic_vector(35 downto 0); 
    pol2: in std_logic_vector(35 downto 0); 
    shift: in std_logic_vector(12 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end biplex_core_entity_8ae395e8d4;

architecture structural of biplex_core_entity_8ae395e8d4 is
  signal ce_1_sg_x165: std_logic;
  signal clk_1_sg_x165: std_logic;
  signal concat_y_net_x10: std_logic_vector(35 downto 0);
  signal concat_y_net_x11: std_logic_vector(35 downto 0);
  signal concat_y_net_x12: std_logic_vector(35 downto 0);
  signal concat_y_net_x13: std_logic_vector(35 downto 0);
  signal concat_y_net_x14: std_logic_vector(35 downto 0);
  signal concat_y_net_x15: std_logic_vector(35 downto 0);
  signal concat_y_net_x16: std_logic_vector(35 downto 0);
  signal concat_y_net_x17: std_logic_vector(35 downto 0);
  signal concat_y_net_x18: std_logic_vector(35 downto 0);
  signal concat_y_net_x19: std_logic_vector(35 downto 0);
  signal concat_y_net_x20: std_logic_vector(35 downto 0);
  signal concat_y_net_x21: std_logic_vector(35 downto 0);
  signal concat_y_net_x25: std_logic_vector(35 downto 0);
  signal concat_y_net_x26: std_logic_vector(35 downto 0);
  signal concat_y_net_x27: std_logic_vector(35 downto 0);
  signal concat_y_net_x28: std_logic_vector(35 downto 0);
  signal concat_y_net_x5: std_logic_vector(35 downto 0);
  signal concat_y_net_x7: std_logic_vector(35 downto 0);
  signal concat_y_net_x8: std_logic_vector(35 downto 0);
  signal concat_y_net_x9: std_logic_vector(35 downto 0);
  signal constant_op_net_x0: std_logic;
  signal logical1_y_net_x1: std_logic;
  signal logical1_y_net_x2: std_logic;
  signal logical1_y_net_x3: std_logic;
  signal logical1_y_net_x4: std_logic;
  signal logical1_y_net_x5: std_logic;
  signal logical1_y_net_x6: std_logic;
  signal logical1_y_net_x7: std_logic;
  signal logical1_y_net_x8: std_logic;
  signal logical1_y_net_x9: std_logic;
  signal shift_net_x9: std_logic_vector(12 downto 0);
  signal sync_delay_q_net_x11: std_logic;
  signal sync_delay_q_net_x2: std_logic;
  signal sync_delay_q_net_x3: std_logic;
  signal sync_delay_q_net_x4: std_logic;
  signal sync_delay_q_net_x5: std_logic;
  signal sync_delay_q_net_x6: std_logic;
  signal sync_delay_q_net_x7: std_logic;
  signal sync_delay_q_net_x8: std_logic;
  signal sync_delay_q_net_x9: std_logic;
  signal sync_net_x1: std_logic;

begin
  ce_1_sg_x165 <= ce_1;
  clk_1_sg_x165 <= clk_1;
  concat_y_net_x25 <= pol1;
  concat_y_net_x26 <= pol2;
  shift_net_x9 <= shift;
  sync_net_x1 <= sync;
  of_x0 <= logical1_y_net_x9;
  out1 <= concat_y_net_x27;
  out2 <= concat_y_net_x28;
  sync_out <= sync_delay_q_net_x11;

  constant_x0: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net_x0
    );

  fft_stage_1_31f6aa536b: entity work.fft_stage_1_entity_31f6aa536b
    port map (
      ce_1 => ce_1_sg_x165,
      clk_1 => clk_1_sg_x165,
      in1 => concat_y_net_x25,
      in2 => concat_y_net_x26,
      of_in => constant_op_net_x0,
      shift => shift_net_x9,
      sync => sync_net_x1,
      of_x0 => logical1_y_net_x1,
      out1 => concat_y_net_x7,
      out2 => concat_y_net_x9,
      sync_out => sync_delay_q_net_x2
    );

  fft_stage_2_b72ac4daf5: entity work.fft_stage_2_entity_b72ac4daf5
    port map (
      ce_1 => ce_1_sg_x165,
      clk_1 => clk_1_sg_x165,
      in1 => concat_y_net_x7,
      in2 => concat_y_net_x9,
      of_in => logical1_y_net_x1,
      shift => shift_net_x9,
      sync => sync_delay_q_net_x2,
      of_x0 => logical1_y_net_x3,
      out1 => concat_y_net_x11,
      out2 => concat_y_net_x13,
      sync_out => sync_delay_q_net_x4
    );

  fft_stage_3_8fdfdf5ad1: entity work.fft_stage_3_entity_8fdfdf5ad1
    port map (
      ce_1 => ce_1_sg_x165,
      clk_1 => clk_1_sg_x165,
      in1 => concat_y_net_x11,
      in2 => concat_y_net_x13,
      of_in => logical1_y_net_x3,
      shift => shift_net_x9,
      sync => sync_delay_q_net_x4,
      of_x0 => logical1_y_net_x2,
      out1 => concat_y_net_x5,
      out2 => concat_y_net_x16,
      sync_out => sync_delay_q_net_x6
    );

  fft_stage_4_4cc3447bc2: entity work.fft_stage_4_entity_4cc3447bc2
    port map (
      ce_1 => ce_1_sg_x165,
      clk_1 => clk_1_sg_x165,
      in1 => concat_y_net_x5,
      in2 => concat_y_net_x16,
      of_in => logical1_y_net_x2,
      shift => shift_net_x9,
      sync => sync_delay_q_net_x6,
      of_x0 => logical1_y_net_x4,
      out1 => concat_y_net_x8,
      out2 => concat_y_net_x17,
      sync_out => sync_delay_q_net_x3
    );

  fft_stage_5_a003caf496: entity work.fft_stage_5_entity_a003caf496
    port map (
      ce_1 => ce_1_sg_x165,
      clk_1 => clk_1_sg_x165,
      in1 => concat_y_net_x8,
      in2 => concat_y_net_x17,
      of_in => logical1_y_net_x4,
      shift => shift_net_x9,
      sync => sync_delay_q_net_x3,
      of_x0 => logical1_y_net_x5,
      out1 => concat_y_net_x12,
      out2 => concat_y_net_x18,
      sync_out => sync_delay_q_net_x5
    );

  fft_stage_6_234201d256: entity work.fft_stage_6_entity_234201d256
    port map (
      ce_1 => ce_1_sg_x165,
      clk_1 => clk_1_sg_x165,
      in1 => concat_y_net_x12,
      in2 => concat_y_net_x18,
      of_in => logical1_y_net_x5,
      shift => shift_net_x9,
      sync => sync_delay_q_net_x5,
      of_x0 => logical1_y_net_x6,
      out1 => concat_y_net_x19,
      out2 => concat_y_net_x20,
      sync_out => sync_delay_q_net_x7
    );

  fft_stage_7_cf4bb1eb09: entity work.fft_stage_7_entity_cf4bb1eb09
    port map (
      ce_1 => ce_1_sg_x165,
      clk_1 => clk_1_sg_x165,
      in1 => concat_y_net_x19,
      in2 => concat_y_net_x20,
      of_in => logical1_y_net_x6,
      shift => shift_net_x9,
      sync => sync_delay_q_net_x7,
      of_x0 => logical1_y_net_x7,
      out1 => concat_y_net_x10,
      out2 => concat_y_net_x21,
      sync_out => sync_delay_q_net_x8
    );

  fft_stage_8_7eea52cfb7: entity work.fft_stage_8_entity_7eea52cfb7
    port map (
      ce_1 => ce_1_sg_x165,
      clk_1 => clk_1_sg_x165,
      in1 => concat_y_net_x10,
      in2 => concat_y_net_x21,
      of_in => logical1_y_net_x7,
      shift => shift_net_x9,
      sync => sync_delay_q_net_x8,
      of_x0 => logical1_y_net_x8,
      out1 => concat_y_net_x14,
      out2 => concat_y_net_x15,
      sync_out => sync_delay_q_net_x9
    );

  fft_stage_9_86ae7aec0c: entity work.fft_stage_9_entity_86ae7aec0c
    port map (
      ce_1 => ce_1_sg_x165,
      clk_1 => clk_1_sg_x165,
      in1 => concat_y_net_x14,
      in2 => concat_y_net_x15,
      of_in => logical1_y_net_x8,
      shift => shift_net_x9,
      sync => sync_delay_q_net_x9,
      of_x0 => logical1_y_net_x9,
      out1 => concat_y_net_x27,
      out2 => concat_y_net_x28,
      sync_out => sync_delay_q_net_x11
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0/ri_to_c0"

entity ri_to_c0_entity_ba946f0120 is
  port (
    im: in std_logic_vector(17 downto 0); 
    re: in std_logic_vector(17 downto 0); 
    c: out std_logic_vector(35 downto 0)
  );
end ri_to_c0_entity_ba946f0120;

architecture structural of ri_to_c0_entity_ba946f0120 is
  signal concat_y_net_x26: std_logic_vector(35 downto 0);
  signal force_im_output_port_net: std_logic_vector(17 downto 0);
  signal force_re_output_port_net: std_logic_vector(17 downto 0);
  signal in0_net_x0: std_logic_vector(17 downto 0);
  signal in1_net_x0: std_logic_vector(17 downto 0);

begin
  in1_net_x0 <= im;
  in0_net_x0 <= re;
  c <= concat_y_net_x26;

  concat: entity work.concat_b198bd62b0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => force_re_output_port_net,
      in1 => force_im_output_port_net,
      y => concat_y_net_x26
    );

  force_im: entity work.reinterpret_9306b5127f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => in1_net_x0,
      output_port => force_im_output_port_net
    );

  force_re: entity work.reinterpret_9306b5127f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => in0_net_x0,
      output_port => force_re_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_biplex_real_4x0"

entity fft_biplex_real_4x0_entity_67c62a0070 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    pol1: in std_logic_vector(17 downto 0); 
    pol2: in std_logic_vector(17 downto 0); 
    pol3: in std_logic_vector(17 downto 0); 
    pol4: in std_logic_vector(17 downto 0); 
    shift: in std_logic_vector(12 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    pol1_out: out std_logic_vector(35 downto 0); 
    pol2_out: out std_logic_vector(35 downto 0); 
    pol3_out: out std_logic_vector(35 downto 0); 
    pol4_out: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_biplex_real_4x0_entity_67c62a0070;

architecture structural of fft_biplex_real_4x0_entity_67c62a0070 is
  signal ce_1_sg_x166: std_logic;
  signal clk_1_sg_x166: std_logic;
  signal concat_y_net_x26: std_logic_vector(35 downto 0);
  signal concat_y_net_x27: std_logic_vector(35 downto 0);
  signal concat_y_net_x28: std_logic_vector(35 downto 0);
  signal concat_y_net_x29: std_logic_vector(35 downto 0);
  signal delay2_q_net_x2: std_logic;
  signal in0_net_x1: std_logic_vector(17 downto 0);
  signal in1_net_x1: std_logic_vector(17 downto 0);
  signal in2_net_x1: std_logic_vector(17 downto 0);
  signal in3_net_x1: std_logic_vector(17 downto 0);
  signal logical1_y_net_x10: std_logic;
  signal mux1_y_net_x3: std_logic_vector(35 downto 0);
  signal mux2_y_net_x3: std_logic_vector(35 downto 0);
  signal mux3_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x2: std_logic_vector(35 downto 0);
  signal shift_net_x10: std_logic_vector(12 downto 0);
  signal sync_delay_q_net_x11: std_logic;
  signal sync_net_x2: std_logic;

begin
  ce_1_sg_x166 <= ce_1;
  clk_1_sg_x166 <= clk_1;
  in0_net_x1 <= pol1;
  in1_net_x1 <= pol2;
  in2_net_x1 <= pol3;
  in3_net_x1 <= pol4;
  shift_net_x10 <= shift;
  sync_net_x2 <= sync;
  of_x0 <= logical1_y_net_x10;
  pol1_out <= mux_y_net_x2;
  pol2_out <= mux1_y_net_x3;
  pol3_out <= mux2_y_net_x3;
  pol4_out <= mux3_y_net_x3;
  sync_out <= delay2_q_net_x2;

  bi_real_unscr_4x_02de02562d: entity work.bi_real_unscr_4x_entity_02de02562d
    port map (
      ce_1 => ce_1_sg_x166,
      clk_1 => clk_1_sg_x166,
      even => concat_y_net_x27,
      odd => concat_y_net_x28,
      sync => sync_delay_q_net_x11,
      pol1_out => mux_y_net_x2,
      pol2_out => mux1_y_net_x3,
      pol3_out => mux2_y_net_x3,
      pol4_out => mux3_y_net_x3,
      sync_out => delay2_q_net_x2
    );

  biplex_core_8ae395e8d4: entity work.biplex_core_entity_8ae395e8d4
    port map (
      ce_1 => ce_1_sg_x166,
      clk_1 => clk_1_sg_x166,
      pol1 => concat_y_net_x26,
      pol2 => concat_y_net_x29,
      shift => shift_net_x10,
      sync => sync_net_x2,
      of_x0 => logical1_y_net_x10,
      out1 => concat_y_net_x27,
      out2 => concat_y_net_x28,
      sync_out => sync_delay_q_net_x11
    );

  ri_to_c0_ba946f0120: entity work.ri_to_c0_entity_ba946f0120
    port map (
      im => in1_net_x1,
      re => in0_net_x1,
      c => concat_y_net_x26
    );

  ri_to_c1_39f7071e99: entity work.ri_to_c0_entity_ba946f0120
    port map (
      im => in3_net_x1,
      re => in2_net_x1,
      c => concat_y_net_x29
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_direct/butterfly1_0/twiddle_general_4mult/coeff_gen"

entity coeff_gen_entity_ad79b62afe is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    w: out std_logic_vector(35 downto 0)
  );
end coeff_gen_entity_ad79b62afe;

architecture structural of coeff_gen_entity_ad79b62afe is
  signal ce_1_sg_x177: std_logic;
  signal clk_1_sg_x177: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(8 downto 0);
  signal delay2_q_net_x3: std_logic;
  signal rom1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_data_net_x0: std_logic_vector(17 downto 0);
  signal slice_y_net: std_logic_vector(8 downto 0);

begin
  ce_1_sg_x177 <= ce_1;
  clk_1_sg_x177 <= clk_1;
  delay2_q_net_x3 <= rst;
  w <= concat_y_net_x2;

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_b9730cea34623a8b",
      op_arith => xlUnsigned,
      op_width => 9
    )
    port map (
      ce => ce_1_sg_x177,
      clk => clk_1_sg_x177,
      clr => '0',
      en => "1",
      rst(0) => delay2_q_net_x3,
      op => counter_op_net
    );

  ri_to_c_106a93f566: entity work.ri_to_c_entity_0a7e802d3a
    port map (
      im => rom1_data_net_x0,
      re => rom_data_net_x0,
      c => concat_y_net_x2
    );

  rom: entity work.xlsprom
    generic map (
      c_address_width => 9,
      c_width => 18,
      core_name0 => "bmg_62_073020084dc5d91f",
      latency => 3
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x177,
      clk => clk_1_sg_x177,
      en => "1",
      rst => "0",
      data => rom_data_net_x0
    );

  rom1: entity work.xlsprom
    generic map (
      c_address_width => 9,
      c_width => 18,
      core_name0 => "bmg_62_c55d75b26312ffb9",
      latency => 3
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x177,
      clk => clk_1_sg_x177,
      en => "1",
      rst => "0",
      data => rom1_data_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 8,
      x_width => 9,
      y_width => 9
    )
    port map (
      x => counter_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_direct/butterfly1_0/twiddle_general_4mult"

entity twiddle_general_4mult_entity_498b2e857f is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(21 downto 0); 
    bw_re: out std_logic_vector(21 downto 0); 
    sync_out: out std_logic
  );
end twiddle_general_4mult_entity_498b2e857f;

architecture structural of twiddle_general_4mult_entity_498b2e857f is
  signal addsub1_s_net: std_logic_vector(36 downto 0);
  signal addsub_s_net: std_logic_vector(36 downto 0);
  signal ce_1_sg_x178: std_logic;
  signal clk_1_sg_x178: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay0_q_net_x0: std_logic_vector(35 downto 0);
  signal delay1_q_net_x0: std_logic_vector(35 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal delay2_q_net_x4: std_logic;
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal mult1_p_net: std_logic_vector(35 downto 0);
  signal mult2_p_net: std_logic_vector(35 downto 0);
  signal mult3_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal node0_0_q_net_x0: std_logic_vector(35 downto 0);
  signal node0_2_q_net_x0: std_logic_vector(35 downto 0);

begin
  node0_0_q_net_x0 <= a;
  node0_2_q_net_x0 <= b;
  ce_1_sg_x178 <= ce_1;
  clk_1_sg_x178 <= clk_1;
  delay2_q_net_x4 <= sync;
  a_im <= force_im_output_port_net_x3;
  a_re <= force_re_output_port_net_x3;
  bw_im <= convert1_dout_net_x2;
  bw_re <= convert0_dout_net_x2;
  sync_out <= delay2_q_net_x0;

  addsub: entity work.addsub_be8c56327e
    port map (
      a => mult_p_net,
      b => mult2_p_net,
      ce => ce_1_sg_x178,
      clk => clk_1_sg_x178,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_eb2273ac28
    port map (
      a => mult1_p_net,
      b => mult3_p_net,
      ce => ce_1_sg_x178,
      clk => clk_1_sg_x178,
      clr => '0',
      s => addsub1_s_net
    );

  c_to_ri1_666e152c4c: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay0_q_net_x0,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  c_to_ri2_8dd6486166: entity work.c_to_ri2_entity_67781924ce
    port map (
      c => concat_y_net_x2,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  c_to_ri3_749cb5c964: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay1_q_net_x0,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  coeff_gen_ad79b62afe: entity work.coeff_gen_entity_ad79b62afe
    port map (
      ce_1 => ce_1_sg_x178,
      clk_1 => clk_1_sg_x178,
      rst => delay2_q_net_x4,
      w => concat_y_net_x2
    );

  convert0: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 33,
      din_width => 37,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x178,
      clk => clk_1_sg_x178,
      clr => '0',
      din => addsub_s_net,
      en => "1",
      dout => convert0_dout_net_x2
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 33,
      din_width => 37,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x178,
      clk => clk_1_sg_x178,
      clr => '0',
      din => addsub1_s_net,
      en => "1",
      dout => convert1_dout_net_x2
    );

  delay0: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x178,
      clk => clk_1_sg_x178,
      d => node0_0_q_net_x0,
      en => '1',
      rst => '1',
      q => delay0_q_net_x0
    );

  delay1: entity work.delay_bdaf6c9e55
    port map (
      ce => ce_1_sg_x178,
      clk => clk_1_sg_x178,
      clr => '0',
      d => node0_2_q_net_x0,
      q => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x178,
      clk => clk_1_sg_x178,
      d(0) => delay2_q_net_x4,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x0
    );

  mult: entity work.mult_cfc8c45902
    port map (
      a => force_re_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x178,
      clk => clk_1_sg_x178,
      clr => '0',
      p => mult_p_net
    );

  mult1: entity work.mult_cfc8c45902
    port map (
      a => force_im_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x178,
      clk => clk_1_sg_x178,
      clr => '0',
      p => mult1_p_net
    );

  mult2: entity work.mult_cfc8c45902
    port map (
      a => force_im_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x178,
      clk => clk_1_sg_x178,
      clr => '0',
      p => mult2_p_net
    );

  mult3: entity work.mult_cfc8c45902
    port map (
      a => force_re_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x178,
      clk => clk_1_sg_x178,
      clr => '0',
      p => mult3_p_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_direct/butterfly1_0"

entity butterfly1_0_entity_d1ea489d9a is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    a_bw_x0: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly1_0_entity_d1ea489d9a;

architecture structural of butterfly1_0_entity_d1ea489d9a is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(22 downto 0);
  signal ce_1_sg_x179: std_logic;
  signal clk_1_sg_x179: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal delay2_q_net_x5: std_logic;
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal mux1_y_net_x1: std_logic_vector(23 downto 0);
  signal mux2_y_net_x1: std_logic_vector(23 downto 0);
  signal mux3_y_net_x1: std_logic_vector(23 downto 0);
  signal node0_0_q_net_x1: std_logic_vector(35 downto 0);
  signal node0_2_q_net_x1: std_logic_vector(35 downto 0);
  signal scale0_op_net: std_logic_vector(22 downto 0);
  signal scale1_op_net: std_logic_vector(22 downto 0);
  signal scale2_op_net: std_logic_vector(22 downto 0);
  signal scale3_op_net: std_logic_vector(22 downto 0);
  signal shift_delay_q_net: std_logic;
  signal slice0_y_net_x0: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  node0_0_q_net_x1 <= a;
  node0_2_q_net_x1 <= b;
  ce_1_sg_x179 <= ce_1;
  clk_1_sg_x179 <= clk_1;
  slice0_y_net_x0 <= shift;
  delay2_q_net_x5 <= sync;
  a_bw <= concat_y_net_x2;
  a_bw_x0 <= concat_y_net_x3;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x0;

  cadd_f6e0b9afe1: entity work.cadd_entity_5ccc5ee94d
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x179,
      clk_1 => clk_1_sg_x179,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_77e3af6d95: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x179,
      clk_1 => clk_1_sg_x179,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_71b954f9b1: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x179,
      clk_1 => clk_1_sg_x179,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_249a7c67ef: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x179,
      clk_1 => clk_1_sg_x179,
      din => mux2_y_net_x1,
      dout => adder_s_net_x5,
      of_x0 => and_y_net_x2
    );

  convert_of3_25b85e2c32: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x179,
      clk_1 => clk_1_sg_x179,
      din => mux3_y_net_x1,
      dout => adder_s_net_x6,
      of_x0 => and_y_net_x3
    );

  csub_17a23dc9c7: entity work.csub_entity_839afd606e
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x179,
      clk_1 => clk_1_sg_x179,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x179,
      clk => clk_1_sg_x179,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x179,
      clk => clk_1_sg_x179,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x179,
      clk => clk_1_sg_x179,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x179,
      clk => clk_1_sg_x179,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x1
    );

  ri_to_c01_296961d01c: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x2
    );

  ri_to_c23_f1f77a2d57: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x6,
      re => adder_s_net_x5,
      c => concat_y_net_x3
    );

  scale0: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x179,
      clk => clk_1_sg_x179,
      d(0) => slice0_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x179,
      clk => clk_1_sg_x179,
      clr => '0',
      d(0) => delay2_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

  twiddle_general_4mult_498b2e857f: entity work.twiddle_general_4mult_entity_498b2e857f
    port map (
      a => node0_0_q_net_x1,
      b => node0_2_q_net_x1,
      ce_1 => ce_1_sg_x179,
      clk_1 => clk_1_sg_x179,
      sync => delay2_q_net_x5,
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      bw_im => convert1_dout_net_x2,
      bw_re => convert0_dout_net_x2,
      sync_out => delay2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_direct/butterfly2_0/convert_of2"

entity convert_of2_entity_b17a1c6d50 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(23 downto 0); 
    of_x0: out std_logic
  );
end convert_of2_entity_b17a1c6d50;

architecture structural of convert_of2_entity_b17a1c6d50 is
  signal all_0s_y_net: std_logic;
  signal all_1s_y_net: std_logic;
  signal and_y_net_x0: std_logic;
  signal ce_1_sg_x198: std_logic;
  signal clk_1_sg_x198: std_logic;
  signal invert1_op_net: std_logic;
  signal invert2_op_net: std_logic;
  signal invert3_op_net: std_logic;
  signal invert4_op_net: std_logic;
  signal mux2_y_net_x0: std_logic_vector(23 downto 0);
  signal slice1_y_net: std_logic;
  signal slice2_y_net: std_logic;
  signal slice3_y_net: std_logic;
  signal slice4_y_net: std_logic;

begin
  ce_1_sg_x198 <= ce_1;
  clk_1_sg_x198 <= clk_1;
  mux2_y_net_x0 <= din;
  of_x0 <= and_y_net_x0;

  all_0s: entity work.logical_182ac6c51e
    port map (
      ce => ce_1_sg_x198,
      clk => clk_1_sg_x198,
      clr => '0',
      d0(0) => invert1_op_net,
      d1(0) => invert2_op_net,
      d2(0) => invert3_op_net,
      d3(0) => invert4_op_net,
      y(0) => all_0s_y_net
    );

  all_1s: entity work.logical_182ac6c51e
    port map (
      ce => ce_1_sg_x198,
      clk => clk_1_sg_x198,
      clr => '0',
      d0(0) => slice1_y_net,
      d1(0) => slice2_y_net,
      d2(0) => slice3_y_net,
      d3(0) => slice4_y_net,
      y(0) => all_1s_y_net
    );

  and_x0: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => all_0s_y_net,
      d1(0) => all_1s_y_net,
      y(0) => and_y_net_x0
    );

  invert1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x198,
      clk => clk_1_sg_x198,
      clr => '0',
      ip(0) => slice1_y_net,
      op(0) => invert1_op_net
    );

  invert2: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x198,
      clk => clk_1_sg_x198,
      clr => '0',
      ip(0) => slice2_y_net,
      op(0) => invert2_op_net
    );

  invert3: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x198,
      clk => clk_1_sg_x198,
      clr => '0',
      ip(0) => slice3_y_net,
      op(0) => invert3_op_net
    );

  invert4: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x198,
      clk => clk_1_sg_x198,
      clr => '0',
      ip(0) => slice4_y_net,
      op(0) => invert4_op_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 23,
      new_msb => 23,
      x_width => 24,
      y_width => 1
    )
    port map (
      x => mux2_y_net_x0,
      y(0) => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 22,
      new_msb => 22,
      x_width => 24,
      y_width => 1
    )
    port map (
      x => mux2_y_net_x0,
      y(0) => slice2_y_net
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 21,
      new_msb => 21,
      x_width => 24,
      y_width => 1
    )
    port map (
      x => mux2_y_net_x0,
      y(0) => slice3_y_net
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 20,
      new_msb => 20,
      x_width => 24,
      y_width => 1
    )
    port map (
      x => mux2_y_net_x0,
      y(0) => slice4_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_direct/butterfly2_0/twiddle_general_4mult/coeff_gen"

entity coeff_gen_entity_1300662738 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    w: out std_logic_vector(35 downto 0)
  );
end coeff_gen_entity_1300662738;

architecture structural of coeff_gen_entity_1300662738 is
  signal ce_1_sg_x201: std_logic;
  signal clk_1_sg_x201: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(8 downto 0);
  signal rom1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_data_net_x0: std_logic_vector(17 downto 0);
  signal slice_y_net: std_logic_vector(8 downto 0);
  signal sync_delay_q_net_x1: std_logic;

begin
  ce_1_sg_x201 <= ce_1;
  clk_1_sg_x201 <= clk_1;
  sync_delay_q_net_x1 <= rst;
  w <= concat_y_net_x2;

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_b9730cea34623a8b",
      op_arith => xlUnsigned,
      op_width => 9
    )
    port map (
      ce => ce_1_sg_x201,
      clk => clk_1_sg_x201,
      clr => '0',
      en => "1",
      rst(0) => sync_delay_q_net_x1,
      op => counter_op_net
    );

  ri_to_c_4577eda761: entity work.ri_to_c_entity_0a7e802d3a
    port map (
      im => rom1_data_net_x0,
      re => rom_data_net_x0,
      c => concat_y_net_x2
    );

  rom: entity work.xlsprom
    generic map (
      c_address_width => 9,
      c_width => 18,
      core_name0 => "bmg_62_e195761ec2ed12e6",
      latency => 3
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x201,
      clk => clk_1_sg_x201,
      en => "1",
      rst => "0",
      data => rom_data_net_x0
    );

  rom1: entity work.xlsprom
    generic map (
      c_address_width => 9,
      c_width => 18,
      core_name0 => "bmg_62_5274d0b3f294243c",
      latency => 3
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x201,
      clk => clk_1_sg_x201,
      en => "1",
      rst => "0",
      data => rom1_data_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 8,
      x_width => 9,
      y_width => 9
    )
    port map (
      x => counter_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_direct/butterfly2_0/twiddle_general_4mult"

entity twiddle_general_4mult_entity_51b322ce4e is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(21 downto 0); 
    bw_re: out std_logic_vector(21 downto 0); 
    sync_out: out std_logic
  );
end twiddle_general_4mult_entity_51b322ce4e;

architecture structural of twiddle_general_4mult_entity_51b322ce4e is
  signal addsub1_s_net: std_logic_vector(36 downto 0);
  signal addsub_s_net: std_logic_vector(36 downto 0);
  signal ce_1_sg_x202: std_logic;
  signal clk_1_sg_x202: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay0_q_net_x0: std_logic_vector(35 downto 0);
  signal delay1_q_net_x0: std_logic_vector(35 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal mult1_p_net: std_logic_vector(35 downto 0);
  signal mult2_p_net: std_logic_vector(35 downto 0);
  signal mult3_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal node1_0_q_net_x0: std_logic_vector(35 downto 0);
  signal node1_1_q_net_x0: std_logic_vector(35 downto 0);
  signal sync_delay_q_net_x2: std_logic;

begin
  node1_0_q_net_x0 <= a;
  node1_1_q_net_x0 <= b;
  ce_1_sg_x202 <= ce_1;
  clk_1_sg_x202 <= clk_1;
  sync_delay_q_net_x2 <= sync;
  a_im <= force_im_output_port_net_x3;
  a_re <= force_re_output_port_net_x3;
  bw_im <= convert1_dout_net_x2;
  bw_re <= convert0_dout_net_x2;
  sync_out <= delay2_q_net_x0;

  addsub: entity work.addsub_be8c56327e
    port map (
      a => mult_p_net,
      b => mult2_p_net,
      ce => ce_1_sg_x202,
      clk => clk_1_sg_x202,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_eb2273ac28
    port map (
      a => mult1_p_net,
      b => mult3_p_net,
      ce => ce_1_sg_x202,
      clk => clk_1_sg_x202,
      clr => '0',
      s => addsub1_s_net
    );

  c_to_ri1_648a0d20ba: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay0_q_net_x0,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  c_to_ri2_eba3d45c69: entity work.c_to_ri2_entity_67781924ce
    port map (
      c => concat_y_net_x2,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  c_to_ri3_21d3c1bbeb: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay1_q_net_x0,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  coeff_gen_1300662738: entity work.coeff_gen_entity_1300662738
    port map (
      ce_1 => ce_1_sg_x202,
      clk_1 => clk_1_sg_x202,
      rst => sync_delay_q_net_x2,
      w => concat_y_net_x2
    );

  convert0: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 33,
      din_width => 37,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x202,
      clk => clk_1_sg_x202,
      clr => '0',
      din => addsub_s_net,
      en => "1",
      dout => convert0_dout_net_x2
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 33,
      din_width => 37,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x202,
      clk => clk_1_sg_x202,
      clr => '0',
      din => addsub1_s_net,
      en => "1",
      dout => convert1_dout_net_x2
    );

  delay0: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x202,
      clk => clk_1_sg_x202,
      d => node1_0_q_net_x0,
      en => '1',
      rst => '1',
      q => delay0_q_net_x0
    );

  delay1: entity work.delay_bdaf6c9e55
    port map (
      ce => ce_1_sg_x202,
      clk => clk_1_sg_x202,
      clr => '0',
      d => node1_1_q_net_x0,
      q => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x202,
      clk => clk_1_sg_x202,
      d(0) => sync_delay_q_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x0
    );

  mult: entity work.mult_cfc8c45902
    port map (
      a => force_re_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x202,
      clk => clk_1_sg_x202,
      clr => '0',
      p => mult_p_net
    );

  mult1: entity work.mult_cfc8c45902
    port map (
      a => force_im_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x202,
      clk => clk_1_sg_x202,
      clr => '0',
      p => mult1_p_net
    );

  mult2: entity work.mult_cfc8c45902
    port map (
      a => force_im_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x202,
      clk => clk_1_sg_x202,
      clr => '0',
      p => mult2_p_net
    );

  mult3: entity work.mult_cfc8c45902
    port map (
      a => force_re_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x202,
      clk => clk_1_sg_x202,
      clr => '0',
      p => mult3_p_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_direct/butterfly2_0"

entity butterfly2_0_entity_10093d3d4b is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly2_0_entity_10093d3d4b;

architecture structural of butterfly2_0_entity_10093d3d4b is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(22 downto 0);
  signal ce_1_sg_x203: std_logic;
  signal clk_1_sg_x203: std_logic;
  signal concat_y_net_x1: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal mux1_y_net_x1: std_logic_vector(23 downto 0);
  signal mux2_y_net_x0: std_logic_vector(23 downto 0);
  signal mux3_y_net_x0: std_logic_vector(23 downto 0);
  signal node1_0_q_net_x1: std_logic_vector(35 downto 0);
  signal node1_1_q_net_x1: std_logic_vector(35 downto 0);
  signal scale0_op_net: std_logic_vector(22 downto 0);
  signal scale1_op_net: std_logic_vector(22 downto 0);
  signal scale2_op_net: std_logic_vector(22 downto 0);
  signal scale3_op_net: std_logic_vector(22 downto 0);
  signal shift_delay_q_net: std_logic;
  signal slice1_y_net_x0: std_logic;
  signal sync_delay_q_net_x0: std_logic;
  signal sync_delay_q_net_x3: std_logic;

begin
  node1_0_q_net_x1 <= a;
  node1_1_q_net_x1 <= b;
  ce_1_sg_x203 <= ce_1;
  clk_1_sg_x203 <= clk_1;
  slice1_y_net_x0 <= shift;
  sync_delay_q_net_x3 <= sync;
  a_bw <= concat_y_net_x1;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x0;

  cadd_6ec912337e: entity work.cadd_entity_5ccc5ee94d
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x203,
      clk_1 => clk_1_sg_x203,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_b2856edf2d: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x203,
      clk_1 => clk_1_sg_x203,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_3069ddca95: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x203,
      clk_1 => clk_1_sg_x203,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_b17a1c6d50: entity work.convert_of2_entity_b17a1c6d50
    port map (
      ce_1 => ce_1_sg_x203,
      clk_1 => clk_1_sg_x203,
      din => mux2_y_net_x0,
      of_x0 => and_y_net_x2
    );

  convert_of3_53dcd65eae: entity work.convert_of2_entity_b17a1c6d50
    port map (
      ce_1 => ce_1_sg_x203,
      clk_1 => clk_1_sg_x203,
      din => mux3_y_net_x0,
      of_x0 => and_y_net_x3
    );

  csub_73d500e286: entity work.csub_entity_839afd606e
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x203,
      clk_1 => clk_1_sg_x203,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x203,
      clk => clk_1_sg_x203,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x203,
      clk => clk_1_sg_x203,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x203,
      clk => clk_1_sg_x203,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x0
    );

  mux3: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x203,
      clk => clk_1_sg_x203,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x0
    );

  ri_to_c01_1163407247: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x1
    );

  scale0: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x203,
      clk => clk_1_sg_x203,
      d(0) => slice1_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x203,
      clk => clk_1_sg_x203,
      clr => '0',
      d(0) => delay2_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

  twiddle_general_4mult_51b322ce4e: entity work.twiddle_general_4mult_entity_51b322ce4e
    port map (
      a => node1_0_q_net_x1,
      b => node1_1_q_net_x1,
      ce_1 => ce_1_sg_x203,
      clk_1 => clk_1_sg_x203,
      sync => sync_delay_q_net_x3,
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      bw_im => convert1_dout_net_x2,
      bw_re => convert0_dout_net_x2,
      sync_out => delay2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_direct/butterfly2_1/twiddle_general_4mult/coeff_gen"

entity coeff_gen_entity_064539b637 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    w: out std_logic_vector(35 downto 0)
  );
end coeff_gen_entity_064539b637;

architecture structural of coeff_gen_entity_064539b637 is
  signal ce_1_sg_x212: std_logic;
  signal clk_1_sg_x212: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(8 downto 0);
  signal rom1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_data_net_x0: std_logic_vector(17 downto 0);
  signal slice_y_net: std_logic_vector(8 downto 0);
  signal sync_delay_q_net_x1: std_logic;

begin
  ce_1_sg_x212 <= ce_1;
  clk_1_sg_x212 <= clk_1;
  sync_delay_q_net_x1 <= rst;
  w <= concat_y_net_x2;

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_b9730cea34623a8b",
      op_arith => xlUnsigned,
      op_width => 9
    )
    port map (
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
      clr => '0',
      en => "1",
      rst(0) => sync_delay_q_net_x1,
      op => counter_op_net
    );

  ri_to_c_07265d33a5: entity work.ri_to_c_entity_0a7e802d3a
    port map (
      im => rom1_data_net_x0,
      re => rom_data_net_x0,
      c => concat_y_net_x2
    );

  rom: entity work.xlsprom
    generic map (
      c_address_width => 9,
      c_width => 18,
      core_name0 => "bmg_62_5274d0b3f294243c",
      latency => 3
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
      en => "1",
      rst => "0",
      data => rom_data_net_x0
    );

  rom1: entity work.xlsprom
    generic map (
      c_address_width => 9,
      c_width => 18,
      core_name0 => "bmg_62_a1b79e174d5a824f",
      latency => 3
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
      en => "1",
      rst => "0",
      data => rom1_data_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 8,
      x_width => 9,
      y_width => 9
    )
    port map (
      x => counter_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_direct/butterfly2_1/twiddle_general_4mult"

entity twiddle_general_4mult_entity_4483e33770 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(21 downto 0); 
    bw_re: out std_logic_vector(21 downto 0)
  );
end twiddle_general_4mult_entity_4483e33770;

architecture structural of twiddle_general_4mult_entity_4483e33770 is
  signal addsub1_s_net: std_logic_vector(36 downto 0);
  signal addsub_s_net: std_logic_vector(36 downto 0);
  signal ce_1_sg_x213: std_logic;
  signal clk_1_sg_x213: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay0_q_net_x0: std_logic_vector(35 downto 0);
  signal delay1_q_net_x0: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal mult1_p_net: std_logic_vector(35 downto 0);
  signal mult2_p_net: std_logic_vector(35 downto 0);
  signal mult3_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal node1_2_q_net_x0: std_logic_vector(35 downto 0);
  signal node1_3_q_net_x0: std_logic_vector(35 downto 0);
  signal sync_delay_q_net_x2: std_logic;

begin
  node1_2_q_net_x0 <= a;
  node1_3_q_net_x0 <= b;
  ce_1_sg_x213 <= ce_1;
  clk_1_sg_x213 <= clk_1;
  sync_delay_q_net_x2 <= sync;
  a_im <= force_im_output_port_net_x3;
  a_re <= force_re_output_port_net_x3;
  bw_im <= convert1_dout_net_x2;
  bw_re <= convert0_dout_net_x2;

  addsub: entity work.addsub_be8c56327e
    port map (
      a => mult_p_net,
      b => mult2_p_net,
      ce => ce_1_sg_x213,
      clk => clk_1_sg_x213,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_eb2273ac28
    port map (
      a => mult1_p_net,
      b => mult3_p_net,
      ce => ce_1_sg_x213,
      clk => clk_1_sg_x213,
      clr => '0',
      s => addsub1_s_net
    );

  c_to_ri1_d3b5c4ef19: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay0_q_net_x0,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  c_to_ri2_5f9410e63f: entity work.c_to_ri2_entity_67781924ce
    port map (
      c => concat_y_net_x2,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  c_to_ri3_d1a00aaa7d: entity work.c_to_ri0_entity_68a06d3127
    port map (
      c => delay1_q_net_x0,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  coeff_gen_064539b637: entity work.coeff_gen_entity_064539b637
    port map (
      ce_1 => ce_1_sg_x213,
      clk_1 => clk_1_sg_x213,
      rst => sync_delay_q_net_x2,
      w => concat_y_net_x2
    );

  convert0: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 33,
      din_width => 37,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x213,
      clk => clk_1_sg_x213,
      clr => '0',
      din => addsub_s_net,
      en => "1",
      dout => convert0_dout_net_x2
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 33,
      din_width => 37,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x213,
      clk => clk_1_sg_x213,
      clr => '0',
      din => addsub1_s_net,
      en => "1",
      dout => convert1_dout_net_x2
    );

  delay0: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x213,
      clk => clk_1_sg_x213,
      d => node1_2_q_net_x0,
      en => '1',
      rst => '1',
      q => delay0_q_net_x0
    );

  delay1: entity work.delay_bdaf6c9e55
    port map (
      ce => ce_1_sg_x213,
      clk => clk_1_sg_x213,
      clr => '0',
      d => node1_3_q_net_x0,
      q => delay1_q_net_x0
    );

  mult: entity work.mult_cfc8c45902
    port map (
      a => force_re_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x213,
      clk => clk_1_sg_x213,
      clr => '0',
      p => mult_p_net
    );

  mult1: entity work.mult_cfc8c45902
    port map (
      a => force_im_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x213,
      clk => clk_1_sg_x213,
      clr => '0',
      p => mult1_p_net
    );

  mult2: entity work.mult_cfc8c45902
    port map (
      a => force_im_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x213,
      clk => clk_1_sg_x213,
      clr => '0',
      p => mult2_p_net
    );

  mult3: entity work.mult_cfc8c45902
    port map (
      a => force_re_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x213,
      clk => clk_1_sg_x213,
      clr => '0',
      p => mult3_p_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_direct/butterfly2_1"

entity butterfly2_1_entity_4d78f26b3c is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic
  );
end butterfly2_1_entity_4d78f26b3c;

architecture structural of butterfly2_1_entity_4d78f26b3c is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(22 downto 0);
  signal ce_1_sg_x214: std_logic;
  signal clk_1_sg_x214: std_logic;
  signal concat_y_net_x1: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal mux1_y_net_x1: std_logic_vector(23 downto 0);
  signal mux2_y_net_x0: std_logic_vector(23 downto 0);
  signal mux3_y_net_x0: std_logic_vector(23 downto 0);
  signal node1_2_q_net_x1: std_logic_vector(35 downto 0);
  signal node1_3_q_net_x1: std_logic_vector(35 downto 0);
  signal scale0_op_net: std_logic_vector(22 downto 0);
  signal scale1_op_net: std_logic_vector(22 downto 0);
  signal scale2_op_net: std_logic_vector(22 downto 0);
  signal scale3_op_net: std_logic_vector(22 downto 0);
  signal shift_delay_q_net: std_logic;
  signal slice1_y_net_x1: std_logic;
  signal sync_delay_q_net_x3: std_logic;

begin
  node1_2_q_net_x1 <= a;
  node1_3_q_net_x1 <= b;
  ce_1_sg_x214 <= ce_1;
  clk_1_sg_x214 <= clk_1;
  slice1_y_net_x1 <= shift;
  sync_delay_q_net_x3 <= sync;
  a_bw <= concat_y_net_x1;
  of_x0 <= logical_y_net_x0;

  cadd_bda3c2593e: entity work.cadd_entity_5ccc5ee94d
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x214,
      clk_1 => clk_1_sg_x214,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_5f64ea583f: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x214,
      clk_1 => clk_1_sg_x214,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_ff8f37026a: entity work.convert_of0_entity_e218f4d06f
    port map (
      ce_1 => ce_1_sg_x214,
      clk_1 => clk_1_sg_x214,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_6d83cb0e97: entity work.convert_of2_entity_b17a1c6d50
    port map (
      ce_1 => ce_1_sg_x214,
      clk_1 => clk_1_sg_x214,
      din => mux2_y_net_x0,
      of_x0 => and_y_net_x2
    );

  convert_of3_2d7a0f4cdc: entity work.convert_of2_entity_b17a1c6d50
    port map (
      ce_1 => ce_1_sg_x214,
      clk_1 => clk_1_sg_x214,
      din => mux3_y_net_x0,
      of_x0 => and_y_net_x3
    );

  csub_2398bcd764: entity work.csub_entity_839afd606e
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x214,
      clk_1 => clk_1_sg_x214,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x214,
      clk => clk_1_sg_x214,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x214,
      clk => clk_1_sg_x214,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x214,
      clk => clk_1_sg_x214,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x0
    );

  mux3: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x214,
      clk => clk_1_sg_x214,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x0
    );

  ri_to_c01_ef3e545b39: entity work.ri_to_c0_entity_1f41d7c305
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x1
    );

  scale0: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x214,
      clk => clk_1_sg_x214,
      d(0) => slice1_y_net_x1,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  twiddle_general_4mult_4483e33770: entity work.twiddle_general_4mult_entity_4483e33770
    port map (
      a => node1_2_q_net_x1,
      b => node1_3_q_net_x1,
      ce_1 => ce_1_sg_x214,
      clk_1 => clk_1_sg_x214,
      sync => sync_delay_q_net_x3,
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      bw_im => convert1_dout_net_x2,
      bw_re => convert0_dout_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_direct"

entity fft_direct_entity_d6658f84e8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in0: in std_logic_vector(35 downto 0); 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    in3: in std_logic_vector(35 downto 0); 
    shift: in std_logic_vector(1 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out0: out std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_direct_entity_d6658f84e8;

architecture structural of fft_direct_entity_d6658f84e8 is
  signal ce_1_sg_x215: std_logic;
  signal clk_1_sg_x215: std_logic;
  signal concat_y_net_x1: std_logic_vector(35 downto 0);
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal concat_y_net_x4: std_logic_vector(35 downto 0);
  signal concat_y_net_x5: std_logic_vector(35 downto 0);
  signal concat_y_net_x6: std_logic_vector(35 downto 0);
  signal delay2_q_net_x9: std_logic;
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x1: std_logic;
  signal logical_y_net_x2: std_logic;
  signal logical_y_net_x3: std_logic;
  signal mux1_y_net_x4: std_logic_vector(35 downto 0);
  signal mux2_y_net_x4: std_logic_vector(35 downto 0);
  signal mux3_y_net_x4: std_logic_vector(35 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal node0_0_q_net_x1: std_logic_vector(35 downto 0);
  signal node0_1_q_net_x1: std_logic_vector(35 downto 0);
  signal node0_2_q_net_x1: std_logic_vector(35 downto 0);
  signal node0_3_q_net_x1: std_logic_vector(35 downto 0);
  signal node1_0_q_net_x1: std_logic_vector(35 downto 0);
  signal node1_1_q_net_x1: std_logic_vector(35 downto 0);
  signal node1_2_q_net_x1: std_logic_vector(35 downto 0);
  signal node1_3_q_net_x1: std_logic_vector(35 downto 0);
  signal node2_0_q_net_x0: std_logic_vector(35 downto 0);
  signal node2_2_q_net_x0: std_logic_vector(35 downto 0);
  signal of_1_y_net: std_logic;
  signal of_2_y_net: std_logic;
  signal of_or_y_net_x0: std_logic;
  signal slice0_y_net_x1: std_logic;
  signal slice1_y_net_x1: std_logic;
  signal slice_y_net_x0: std_logic_vector(1 downto 0);
  signal sync_delay_q_net_x3: std_logic;
  signal sync_delay_q_net_x4: std_logic;
  signal sync_delay_q_net_x5: std_logic;

begin
  ce_1_sg_x215 <= ce_1;
  clk_1_sg_x215 <= clk_1;
  mux_y_net_x3 <= in0;
  mux1_y_net_x4 <= in1;
  mux2_y_net_x4 <= in2;
  mux3_y_net_x4 <= in3;
  slice_y_net_x0 <= shift;
  delay2_q_net_x9 <= sync;
  of_x0 <= of_or_y_net_x0;
  out0 <= node2_0_q_net_x0;
  out1 <= node2_2_q_net_x0;
  sync_out <= sync_delay_q_net_x5;

  butterfly1_0_d1ea489d9a: entity work.butterfly1_0_entity_d1ea489d9a
    port map (
      a => node0_0_q_net_x1,
      b => node0_2_q_net_x1,
      ce_1 => ce_1_sg_x215,
      clk_1 => clk_1_sg_x215,
      shift => slice0_y_net_x1,
      sync => delay2_q_net_x9,
      a_bw => concat_y_net_x2,
      a_bw_x0 => concat_y_net_x3,
      of_x0 => logical_y_net_x0,
      sync_out => sync_delay_q_net_x3
    );

  butterfly1_1_6bf9ccadb5: entity work.butterfly1_0_entity_d1ea489d9a
    port map (
      a => node0_1_q_net_x1,
      b => node0_3_q_net_x1,
      ce_1 => ce_1_sg_x215,
      clk_1 => clk_1_sg_x215,
      shift => slice0_y_net_x1,
      sync => delay2_q_net_x9,
      a_bw => concat_y_net_x4,
      a_bw_x0 => concat_y_net_x5,
      of_x0 => logical_y_net_x1,
      sync_out => sync_delay_q_net_x4
    );

  butterfly2_0_10093d3d4b: entity work.butterfly2_0_entity_10093d3d4b
    port map (
      a => node1_0_q_net_x1,
      b => node1_1_q_net_x1,
      ce_1 => ce_1_sg_x215,
      clk_1 => clk_1_sg_x215,
      shift => slice1_y_net_x1,
      sync => sync_delay_q_net_x3,
      a_bw => concat_y_net_x1,
      of_x0 => logical_y_net_x2,
      sync_out => sync_delay_q_net_x5
    );

  butterfly2_1_4d78f26b3c: entity work.butterfly2_1_entity_4d78f26b3c
    port map (
      a => node1_2_q_net_x1,
      b => node1_3_q_net_x1,
      ce_1 => ce_1_sg_x215,
      clk_1 => clk_1_sg_x215,
      shift => slice1_y_net_x1,
      sync => sync_delay_q_net_x4,
      a_bw => concat_y_net_x6,
      of_x0 => logical_y_net_x3
    );

  node0_0: entity work.delay_0c0a0420a6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => mux_y_net_x3,
      q => node0_0_q_net_x1
    );

  node0_1: entity work.delay_0c0a0420a6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => mux1_y_net_x4,
      q => node0_1_q_net_x1
    );

  node0_2: entity work.delay_0c0a0420a6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => mux2_y_net_x4,
      q => node0_2_q_net_x1
    );

  node0_3: entity work.delay_0c0a0420a6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => mux3_y_net_x4,
      q => node0_3_q_net_x1
    );

  node1_0: entity work.delay_0c0a0420a6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => concat_y_net_x2,
      q => node1_0_q_net_x1
    );

  node1_1: entity work.delay_0c0a0420a6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => concat_y_net_x4,
      q => node1_1_q_net_x1
    );

  node1_2: entity work.delay_0c0a0420a6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => concat_y_net_x3,
      q => node1_2_q_net_x1
    );

  node1_3: entity work.delay_0c0a0420a6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => concat_y_net_x5,
      q => node1_3_q_net_x1
    );

  node2_0: entity work.delay_0c0a0420a6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => concat_y_net_x1,
      q => node2_0_q_net_x0
    );

  node2_2: entity work.delay_0c0a0420a6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => concat_y_net_x6,
      q => node2_2_q_net_x0
    );

  of_1: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x215,
      clk => clk_1_sg_x215,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => logical_y_net_x1,
      y(0) => of_1_y_net
    );

  of_2: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x215,
      clk => clk_1_sg_x215,
      clr => '0',
      d0(0) => logical_y_net_x2,
      d1(0) => logical_y_net_x3,
      y(0) => of_2_y_net
    );

  of_or: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => of_1_y_net,
      d1(0) => of_2_y_net,
      y(0) => of_or_y_net_x0
    );

  slice0: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 2,
      y_width => 1
    )
    port map (
      x => slice_y_net_x0,
      y(0) => slice0_y_net_x1
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 2,
      y_width => 1
    )
    port map (
      x => slice_y_net_x0,
      y(0) => slice1_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_unscrambler/reorder/sync_delay_en"

entity sync_delay_en_entity_2848f8ed44 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_en_entity_2848f8ed44;

architecture structural of sync_delay_en_entity_2848f8ed44 is
  signal ce_1_sg_x216: std_logic;
  signal clk_1_sg_x216: std_logic;
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
  ce_1_sg_x216 <= ce_1;
  clk_1_sg_x216 <= clk_1;
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
      ce => ce_1_sg_x216,
      clk => clk_1_sg_x216,
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

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_unscrambler/reorder"

entity reorder_entity_d3434f5c8e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din0: in std_logic_vector(35 downto 0); 
    din1: in std_logic_vector(35 downto 0); 
    en: in std_logic; 
    sync: in std_logic; 
    dout0: out std_logic_vector(35 downto 0); 
    dout1: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end reorder_entity_d3434f5c8e;

architecture structural of reorder_entity_d3434f5c8e is
  signal bram0_data_out_net_x0: std_logic_vector(35 downto 0);
  signal bram1_data_out_net_x0: std_logic_vector(35 downto 0);
  signal ce_1_sg_x217: std_logic;
  signal clk_1_sg_x217: std_logic;
  signal const_op_net_x0: std_logic;
  signal counter_op_net: std_logic_vector(12 downto 0);
  signal delay0_q_net_x0: std_logic;
  signal delay_d0_q_net: std_logic_vector(8 downto 0);
  signal delay_din0_q_net: std_logic_vector(35 downto 0);
  signal delay_din1_q_net: std_logic_vector(35 downto 0);
  signal delay_map1_q_net: std_logic_vector(8 downto 0);
  signal delay_map2_q_net: std_logic_vector(8 downto 0);
  signal delay_map3_q_net: std_logic_vector(8 downto 0);
  signal delay_map4_q_net: std_logic_vector(8 downto 0);
  signal delay_map5_q_net: std_logic_vector(8 downto 0);
  signal delay_map6_q_net: std_logic_vector(8 downto 0);
  signal delay_map7_q_net: std_logic_vector(8 downto 0);
  signal delay_map8_q_net: std_logic_vector(8 downto 0);
  signal delay_sel_q_net: std_logic_vector(3 downto 0);
  signal delay_we_q_net: std_logic;
  signal delayb1_q_net_x0: std_logic_vector(35 downto 0);
  signal delayb2_q_net_x0: std_logic_vector(35 downto 0);
  signal map1_data_net: std_logic_vector(8 downto 0);
  signal map2_data_net: std_logic_vector(8 downto 0);
  signal map3_data_net: std_logic_vector(8 downto 0);
  signal map4_data_net: std_logic_vector(8 downto 0);
  signal map5_data_net: std_logic_vector(8 downto 0);
  signal map6_data_net: std_logic_vector(8 downto 0);
  signal map7_data_net: std_logic_vector(8 downto 0);
  signal map8_data_net: std_logic_vector(8 downto 0);
  signal mux_y_net: std_logic_vector(8 downto 0);
  signal mux_y_net_x0: std_logic;
  signal or_y_net_x0: std_logic;
  signal post_sync_delay_q_net_x0: std_logic;
  signal pre_sync_delay_q_net_x0: std_logic;
  signal slice1_y_net: std_logic_vector(3 downto 0);
  signal slice2_y_net: std_logic_vector(8 downto 0);

begin
  ce_1_sg_x217 <= ce_1;
  clk_1_sg_x217 <= clk_1;
  delayb1_q_net_x0 <= din0;
  delayb2_q_net_x0 <= din1;
  const_op_net_x0 <= en;
  delay0_q_net_x0 <= sync;
  dout0 <= bram0_data_out_net_x0;
  dout1 <= bram1_data_out_net_x0;
  sync_out <= post_sync_delay_q_net_x0;

  bram0: entity work.xlspram
    generic map (
      c_address_width => 9,
      c_width => 36,
      core_name0 => "bmg_62_66064026d4816b4e",
      latency => 3
    )
    port map (
      addr => mux_y_net,
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      data_in => delay_din0_q_net,
      en => "1",
      rst => "0",
      we(0) => delay_we_q_net,
      data_out => bram0_data_out_net_x0
    );

  bram1: entity work.xlspram
    generic map (
      c_address_width => 9,
      c_width => 36,
      core_name0 => "bmg_62_66064026d4816b4e",
      latency => 3
    )
    port map (
      addr => mux_y_net,
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      data_in => delay_din1_q_net,
      en => "1",
      rst => "0",
      we(0) => delay_we_q_net,
      data_out => bram1_data_out_net_x0
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 4607,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_813142b9460b2f27",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 13
    )
    port map (
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      clr => '0',
      en(0) => const_op_net_x0,
      rst(0) => delay0_q_net_x0,
      op => counter_op_net
    );

  delay_d0: entity work.xldelay
    generic map (
      latency => 8,
      reg_retiming => 0,
      reset => 0,
      width => 9
    )
    port map (
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      d => slice2_y_net,
      en => '1',
      rst => '1',
      q => delay_d0_q_net
    );

  delay_din0: entity work.xldelay
    generic map (
      latency => 9,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      d => delayb1_q_net_x0,
      en => '1',
      rst => '1',
      q => delay_din0_q_net
    );

  delay_din1: entity work.xldelay
    generic map (
      latency => 9,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      d => delayb2_q_net_x0,
      en => '1',
      rst => '1',
      q => delay_din1_q_net
    );

  delay_map1: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      reset => 0,
      width => 9
    )
    port map (
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      d => map1_data_net,
      en => '1',
      rst => '1',
      q => delay_map1_q_net
    );

  delay_map2: entity work.xldelay
    generic map (
      latency => 6,
      reg_retiming => 0,
      reset => 0,
      width => 9
    )
    port map (
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      d => map2_data_net,
      en => '1',
      rst => '1',
      q => delay_map2_q_net
    );

  delay_map3: entity work.xldelay
    generic map (
      latency => 5,
      reg_retiming => 0,
      reset => 0,
      width => 9
    )
    port map (
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      d => map3_data_net,
      en => '1',
      rst => '1',
      q => delay_map3_q_net
    );

  delay_map4: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      reset => 0,
      width => 9
    )
    port map (
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      d => map4_data_net,
      en => '1',
      rst => '1',
      q => delay_map4_q_net
    );

  delay_map5: entity work.xldelay
    generic map (
      latency => 3,
      reg_retiming => 0,
      reset => 0,
      width => 9
    )
    port map (
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      d => map5_data_net,
      en => '1',
      rst => '1',
      q => delay_map5_q_net
    );

  delay_map6: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 9
    )
    port map (
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      d => map6_data_net,
      en => '1',
      rst => '1',
      q => delay_map6_q_net
    );

  delay_map7: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 9
    )
    port map (
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      d => map7_data_net,
      en => '1',
      rst => '1',
      q => delay_map7_q_net
    );

  delay_map8: entity work.delay_a99984b20e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => map8_data_net,
      q => delay_map8_q_net
    );

  delay_sel: entity work.xldelay
    generic map (
      latency => 8,
      reg_retiming => 0,
      reset => 0,
      width => 4
    )
    port map (
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      d => slice1_y_net,
      en => '1',
      rst => '1',
      q => delay_sel_q_net
    );

  delay_we: entity work.xldelay
    generic map (
      latency => 9,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      d(0) => const_op_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_we_q_net
    );

  map1: entity work.xlsprom_dist
    generic map (
      addr_width => 9,
      c_address_width => 9,
      c_width => 9,
      core_name0 => "dmg_62_1a18407473b36622",
      latency => 1
    )
    port map (
      addr => slice2_y_net,
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      en => "1",
      data => map1_data_net
    );

  map2: entity work.xlsprom_dist
    generic map (
      addr_width => 9,
      c_address_width => 9,
      c_width => 9,
      core_name0 => "dmg_62_1a18407473b36622",
      latency => 1
    )
    port map (
      addr => map1_data_net,
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      en => "1",
      data => map2_data_net
    );

  map3: entity work.xlsprom_dist
    generic map (
      addr_width => 9,
      c_address_width => 9,
      c_width => 9,
      core_name0 => "dmg_62_1a18407473b36622",
      latency => 1
    )
    port map (
      addr => map2_data_net,
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      en => "1",
      data => map3_data_net
    );

  map4: entity work.xlsprom_dist
    generic map (
      addr_width => 9,
      c_address_width => 9,
      c_width => 9,
      core_name0 => "dmg_62_1a18407473b36622",
      latency => 1
    )
    port map (
      addr => map3_data_net,
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      en => "1",
      data => map4_data_net
    );

  map5: entity work.xlsprom_dist
    generic map (
      addr_width => 9,
      c_address_width => 9,
      c_width => 9,
      core_name0 => "dmg_62_1a18407473b36622",
      latency => 1
    )
    port map (
      addr => map4_data_net,
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      en => "1",
      data => map5_data_net
    );

  map6: entity work.xlsprom_dist
    generic map (
      addr_width => 9,
      c_address_width => 9,
      c_width => 9,
      core_name0 => "dmg_62_1a18407473b36622",
      latency => 1
    )
    port map (
      addr => map5_data_net,
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      en => "1",
      data => map6_data_net
    );

  map7: entity work.xlsprom_dist
    generic map (
      addr_width => 9,
      c_address_width => 9,
      c_width => 9,
      core_name0 => "dmg_62_1a18407473b36622",
      latency => 1
    )
    port map (
      addr => map6_data_net,
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      en => "1",
      data => map7_data_net
    );

  map8: entity work.xlsprom_dist
    generic map (
      addr_width => 9,
      c_address_width => 9,
      c_width => 9,
      core_name0 => "dmg_62_1a18407473b36622",
      latency => 1
    )
    port map (
      addr => map7_data_net,
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      en => "1",
      data => map8_data_net
    );

  mux: entity work.mux_bcb919797f
    port map (
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      clr => '0',
      d0 => delay_d0_q_net,
      d1 => delay_map1_q_net,
      d2 => delay_map2_q_net,
      d3 => delay_map3_q_net,
      d4 => delay_map4_q_net,
      d5 => delay_map5_q_net,
      d6 => delay_map6_q_net,
      d7 => delay_map7_q_net,
      d8 => delay_map8_q_net,
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
      latency => 4,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      d(0) => mux_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => post_sync_delay_q_net_x0
    );

  pre_sync_delay: entity work.xldelay
    generic map (
      latency => 9,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      d(0) => delay0_q_net_x0,
      en => '1',
      rst => '1',
      q(0) => pre_sync_delay_q_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 9,
      new_msb => 12,
      x_width => 13,
      y_width => 4
    )
    port map (
      x => counter_op_net,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 8,
      x_width => 13,
      y_width => 9
    )
    port map (
      x => counter_op_net,
      y => slice2_y_net
    );

  sync_delay_en_2848f8ed44: entity work.sync_delay_en_entity_2848f8ed44
    port map (
      ce_1 => ce_1_sg_x217,
      clk_1 => clk_1_sg_x217,
      en => or_y_net_x0,
      in_x0 => pre_sync_delay_q_net_x0,
      out_x0 => mux_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_unscrambler/square_transposer/barrel_switcher"

entity barrel_switcher_entity_6f08b6925b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    sel: in std_logic; 
    sync_in: in std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end barrel_switcher_entity_6f08b6925b;

architecture structural of barrel_switcher_entity_6f08b6925b is
  signal ce_1_sg_x218: std_logic;
  signal clk_1_sg_x218: std_logic;
  signal counter_op_net_x0: std_logic;
  signal delay_sync_q_net_x0: std_logic;
  signal delayf1_q_net_x0: std_logic_vector(35 downto 0);
  signal delayf2_q_net_x0: std_logic_vector(35 downto 0);
  signal mux11_y_net_x0: std_logic_vector(35 downto 0);
  signal mux21_y_net_x0: std_logic_vector(35 downto 0);
  signal slice1_y_net: std_logic;
  signal sync_delay_q_net_x6: std_logic;

begin
  ce_1_sg_x218 <= ce_1;
  clk_1_sg_x218 <= clk_1;
  delayf1_q_net_x0 <= in1;
  delayf2_q_net_x0 <= in2;
  counter_op_net_x0 <= sel;
  sync_delay_q_net_x6 <= sync_in;
  out1 <= mux11_y_net_x0;
  out2 <= mux21_y_net_x0;
  sync_out <= delay_sync_q_net_x0;

  delay_sync: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x218,
      clk => clk_1_sg_x218,
      d(0) => sync_delay_q_net_x6,
      en => '1',
      rst => '1',
      q(0) => delay_sync_q_net_x0
    );

  mux11: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x218,
      clk => clk_1_sg_x218,
      clr => '0',
      d0 => delayf1_q_net_x0,
      d1 => delayf2_q_net_x0,
      sel(0) => slice1_y_net,
      y => mux11_y_net_x0
    );

  mux21: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x218,
      clk => clk_1_sg_x218,
      clr => '0',
      d0 => delayf2_q_net_x0,
      d1 => delayf1_q_net_x0,
      sel(0) => slice1_y_net,
      y => mux21_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 1,
      y_width => 1
    )
    port map (
      x(0) => counter_op_net_x0,
      y(0) => slice1_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_unscrambler/square_transposer"

entity square_transposer_entity_d5b485adb5 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    sync: in std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end square_transposer_entity_d5b485adb5;

architecture structural of square_transposer_entity_d5b485adb5 is
  signal ce_1_sg_x219: std_logic;
  signal clk_1_sg_x219: std_logic;
  signal counter_op_net_x0: std_logic;
  signal delay0_q_net_x1: std_logic;
  signal delay_sync_q_net_x0: std_logic;
  signal delayb1_q_net_x1: std_logic_vector(35 downto 0);
  signal delayb2_q_net_x1: std_logic_vector(35 downto 0);
  signal delayf1_q_net_x0: std_logic_vector(35 downto 0);
  signal delayf2_q_net_x0: std_logic_vector(35 downto 0);
  signal mux11_y_net_x0: std_logic_vector(35 downto 0);
  signal mux21_y_net_x0: std_logic_vector(35 downto 0);
  signal node2_0_q_net_x1: std_logic_vector(35 downto 0);
  signal node2_2_q_net_x1: std_logic_vector(35 downto 0);
  signal sync_delay_q_net_x7: std_logic;

begin
  ce_1_sg_x219 <= ce_1;
  clk_1_sg_x219 <= clk_1;
  node2_0_q_net_x1 <= in1;
  node2_2_q_net_x1 <= in2;
  sync_delay_q_net_x7 <= sync;
  out1 <= delayb1_q_net_x1;
  out2 <= delayb2_q_net_x1;
  sync_out <= delay0_q_net_x1;

  barrel_switcher_6f08b6925b: entity work.barrel_switcher_entity_6f08b6925b
    port map (
      ce_1 => ce_1_sg_x219,
      clk_1 => clk_1_sg_x219,
      in1 => delayf1_q_net_x0,
      in2 => delayf2_q_net_x0,
      sel => counter_op_net_x0,
      sync_in => sync_delay_q_net_x7,
      out1 => mux11_y_net_x0,
      out2 => mux21_y_net_x0,
      sync_out => delay_sync_q_net_x0
    );

  counter: entity work.counter_0009e314f5
    port map (
      ce => ce_1_sg_x219,
      clk => clk_1_sg_x219,
      clr => '0',
      rst(0) => sync_delay_q_net_x7,
      op(0) => counter_op_net_x0
    );

  delay0: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x219,
      clk => clk_1_sg_x219,
      d(0) => delay_sync_q_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay0_q_net_x1
    );

  delayb1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x219,
      clk => clk_1_sg_x219,
      d => mux11_y_net_x0,
      en => '1',
      rst => '1',
      q => delayb1_q_net_x1
    );

  delayb2: entity work.delay_0c0a0420a6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => mux21_y_net_x0,
      q => delayb2_q_net_x1
    );

  delayf1: entity work.delay_0c0a0420a6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => node2_0_q_net_x1,
      q => delayf1_q_net_x0
    );

  delayf2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x219,
      clk => clk_1_sg_x219,
      d => node2_2_q_net_x1,
      en => '1',
      rst => '1',
      q => delayf2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real/fft_unscrambler"

entity fft_unscrambler_entity_de302e83a6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    sync: in std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_unscrambler_entity_de302e83a6;

architecture structural of fft_unscrambler_entity_de302e83a6 is
  signal bram0_data_out_net_x1: std_logic_vector(35 downto 0);
  signal bram1_data_out_net_x1: std_logic_vector(35 downto 0);
  signal ce_1_sg_x220: std_logic;
  signal clk_1_sg_x220: std_logic;
  signal const_op_net_x0: std_logic;
  signal delay0_q_net_x1: std_logic;
  signal delayb1_q_net_x1: std_logic_vector(35 downto 0);
  signal delayb2_q_net_x1: std_logic_vector(35 downto 0);
  signal node2_0_q_net_x2: std_logic_vector(35 downto 0);
  signal node2_2_q_net_x2: std_logic_vector(35 downto 0);
  signal post_sync_delay_q_net_x1: std_logic;
  signal sync_delay_q_net_x8: std_logic;

begin
  ce_1_sg_x220 <= ce_1;
  clk_1_sg_x220 <= clk_1;
  node2_0_q_net_x2 <= in1;
  node2_2_q_net_x2 <= in2;
  sync_delay_q_net_x8 <= sync;
  out1 <= bram0_data_out_net_x1;
  out2 <= bram1_data_out_net_x1;
  sync_out <= post_sync_delay_q_net_x1;

  const: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => const_op_net_x0
    );

  reorder_d3434f5c8e: entity work.reorder_entity_d3434f5c8e
    port map (
      ce_1 => ce_1_sg_x220,
      clk_1 => clk_1_sg_x220,
      din0 => delayb1_q_net_x1,
      din1 => delayb2_q_net_x1,
      en => const_op_net_x0,
      sync => delay0_q_net_x1,
      dout0 => bram0_data_out_net_x1,
      dout1 => bram1_data_out_net_x1,
      sync_out => post_sync_delay_q_net_x1
    );

  square_transposer_d5b485adb5: entity work.square_transposer_entity_d5b485adb5
    port map (
      ce_1 => ce_1_sg_x220,
      clk_1 => clk_1_sg_x220,
      in1 => node2_0_q_net_x2,
      in2 => node2_2_q_net_x2,
      sync => sync_delay_q_net_x8,
      out1 => delayb1_q_net_x1,
      out2 => delayb2_q_net_x1,
      sync_out => delay0_q_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core/fft_wideband_real"

entity fft_wideband_real_entity_0dca0b1dc8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in0: in std_logic_vector(17 downto 0); 
    in1: in std_logic_vector(17 downto 0); 
    in2: in std_logic_vector(17 downto 0); 
    in3: in std_logic_vector(17 downto 0); 
    shift: in std_logic_vector(12 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out0: out std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_wideband_real_entity_0dca0b1dc8;

architecture structural of fft_wideband_real_entity_0dca0b1dc8 is
  signal bram0_data_out_net_x2: std_logic_vector(35 downto 0);
  signal bram1_data_out_net_x2: std_logic_vector(35 downto 0);
  signal ce_1_sg_x221: std_logic;
  signal clk_1_sg_x221: std_logic;
  signal delay2_q_net_x9: std_logic;
  signal in0_net_x2: std_logic_vector(17 downto 0);
  signal in1_net_x2: std_logic_vector(17 downto 0);
  signal in2_net_x2: std_logic_vector(17 downto 0);
  signal in3_net_x2: std_logic_vector(17 downto 0);
  signal logical1_y_net_x10: std_logic;
  signal mux1_y_net_x4: std_logic_vector(35 downto 0);
  signal mux2_y_net_x4: std_logic_vector(35 downto 0);
  signal mux3_y_net_x4: std_logic_vector(35 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal node2_0_q_net_x2: std_logic_vector(35 downto 0);
  signal node2_2_q_net_x2: std_logic_vector(35 downto 0);
  signal of_or_y_net_x0: std_logic;
  signal of_or_y_net_x1: std_logic;
  signal post_sync_delay_q_net_x2: std_logic;
  signal shift_net_x11: std_logic_vector(12 downto 0);
  signal slice_y_net_x0: std_logic_vector(1 downto 0);
  signal sync_delay_q_net_x8: std_logic;
  signal sync_net_x3: std_logic;

begin
  ce_1_sg_x221 <= ce_1;
  clk_1_sg_x221 <= clk_1;
  in0_net_x2 <= in0;
  in1_net_x2 <= in1;
  in2_net_x2 <= in2;
  in3_net_x2 <= in3;
  shift_net_x11 <= shift;
  sync_net_x3 <= sync;
  of_x0 <= of_or_y_net_x1;
  out0 <= bram0_data_out_net_x2;
  out1 <= bram1_data_out_net_x2;
  sync_out <= post_sync_delay_q_net_x2;

  fft_biplex_real_4x0_67c62a0070: entity work.fft_biplex_real_4x0_entity_67c62a0070
    port map (
      ce_1 => ce_1_sg_x221,
      clk_1 => clk_1_sg_x221,
      pol1 => in0_net_x2,
      pol2 => in1_net_x2,
      pol3 => in2_net_x2,
      pol4 => in3_net_x2,
      shift => shift_net_x11,
      sync => sync_net_x3,
      of_x0 => logical1_y_net_x10,
      pol1_out => mux_y_net_x3,
      pol2_out => mux1_y_net_x4,
      pol3_out => mux2_y_net_x4,
      pol4_out => mux3_y_net_x4,
      sync_out => delay2_q_net_x9
    );

  fft_direct_d6658f84e8: entity work.fft_direct_entity_d6658f84e8
    port map (
      ce_1 => ce_1_sg_x221,
      clk_1 => clk_1_sg_x221,
      in0 => mux_y_net_x3,
      in1 => mux1_y_net_x4,
      in2 => mux2_y_net_x4,
      in3 => mux3_y_net_x4,
      shift => slice_y_net_x0,
      sync => delay2_q_net_x9,
      of_x0 => of_or_y_net_x0,
      out0 => node2_0_q_net_x2,
      out1 => node2_2_q_net_x2,
      sync_out => sync_delay_q_net_x8
    );

  fft_unscrambler_de302e83a6: entity work.fft_unscrambler_entity_de302e83a6
    port map (
      ce_1 => ce_1_sg_x221,
      clk_1 => clk_1_sg_x221,
      in1 => node2_0_q_net_x2,
      in2 => node2_2_q_net_x2,
      sync => sync_delay_q_net_x8,
      out1 => bram0_data_out_net_x2,
      out2 => bram1_data_out_net_x2,
      sync_out => post_sync_delay_q_net_x2
    );

  of_or: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x221,
      clk => clk_1_sg_x221,
      clr => '0',
      d0(0) => of_or_y_net_x0,
      d1(0) => logical1_y_net_x10,
      y(0) => of_or_y_net_x1
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 9,
      new_msb => 10,
      x_width => 13,
      y_width => 2
    )
    port map (
      x => shift_net_x11,
      y => slice_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_wideband_real_core"

entity fft_wideband_real_core is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in0: in std_logic_vector(17 downto 0); 
    in1: in std_logic_vector(17 downto 0); 
    in2: in std_logic_vector(17 downto 0); 
    in3: in std_logic_vector(17 downto 0); 
    shift: in std_logic_vector(12 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out0: out std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_wideband_real_core;

architecture structural of fft_wideband_real_core is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "fft_wideband_real_core,sysgen_core,{clock_period=10.00000000,clocking=Clock_Enables,compilation=NGC_Netlist,sample_periods=1.00000000000,testbench=0,total_blocks=4475,xilinx_adder_subtracter_block=74,xilinx_arithmetic_relational_operator_block=31,xilinx_bit_slice_extractor_block=496,xilinx_bus_concatenator_block=159,xilinx_bus_multiplexer_block=100,xilinx_constant_block_block=302,xilinx_counter_block=56,xilinx_delay_block=164,xilinx_dsp48e_block=30,xilinx_gateway_in_block=6,xilinx_gateway_out_block=4,xilinx_input_scaler_block=60,xilinx_inverter_block=192,xilinx_logical_block_block=256,xilinx_multiplier_block=44,xilinx_negate_block_block=5,xilinx_single_port_random_access_memory_block=22,xilinx_single_port_read_only_memory_block=33,xilinx_system_generator_block=1,xilinx_type_converter_block=211,xilinx_type_reinterpreter_block=610,}";

  signal ce_1_sg_x222: std_logic;
  signal clk_1_sg_x222: std_logic;
  signal in0_net: std_logic_vector(17 downto 0);
  signal in1_net: std_logic_vector(17 downto 0);
  signal in2_net: std_logic_vector(17 downto 0);
  signal in3_net: std_logic_vector(17 downto 0);
  signal of_x0_net: std_logic;
  signal out0_net: std_logic_vector(35 downto 0);
  signal out1_net: std_logic_vector(35 downto 0);
  signal shift_net: std_logic_vector(12 downto 0);
  signal sync_net: std_logic;
  signal sync_out_net: std_logic;

begin
  ce_1_sg_x222 <= ce_1;
  clk_1_sg_x222 <= clk_1;
  in0_net <= in0;
  in1_net <= in1;
  in2_net <= in2;
  in3_net <= in3;
  shift_net <= shift;
  sync_net <= sync;
  of_x0 <= of_x0_net;
  out0 <= out0_net;
  out1 <= out1_net;
  sync_out <= sync_out_net;

  fft_wideband_real_0dca0b1dc8: entity work.fft_wideband_real_entity_0dca0b1dc8
    port map (
      ce_1 => ce_1_sg_x222,
      clk_1 => clk_1_sg_x222,
      in0 => in0_net,
      in1 => in1_net,
      in2 => in2_net,
      in3 => in3_net,
      shift => shift_net,
      sync => sync_net,
      of_x0 => of_x0_net,
      out0 => out0_net,
      out1 => out1_net,
      sync_out => sync_out_net
    );

end structural;
