
open(PIDFILE, '> pidfile.txt') || die 'Couldn\'t write process ID to file.';
print PIDFILE "$$\n";
close(PIDFILE);

eval {
  # Call script(s).
  my $instrs;
  my $results = [];
$ENV{'SYSGEN'} = '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen';
  use Sg;
  $instrs = {
    'HDLCodeGenStatus' => 0.0,
    'HDL_PATH' => '/scratch/zaki/workspace/baobab',
    'TEMP' => '/tmp',
    'TMP' => '/tmp',
    'Temp' => '/tmp',
    'Tmp' => '/tmp',
    'base_system_period_hardware' => 5.0,
    'base_system_period_simulink' => 1.0,
    'block_icon_display' => 'Default',
    'ce_clr' => 0.0,
    'clock_domain' => 'default',
    'clock_loc' => 'd7hack',
    'clock_wrapper' => 'Clock Enables',
    'compilation' => 'NGC Netlist',
    'compilation_lut' => {
      'keys' => [
        'HDL Netlist',
        'NGC Netlist',
      ],
      'values' => [
        'target1',
        'target2',
      ],
    },
    'compilation_target' => 'NGC Netlist',
    'core_generation' => 1.0,
    'core_is_deployed' => 0.0,
    'coregen_core_generation_tmpdir' => '/tmp/sysgentmp-zaki/cg_wk/c0785bcd55cf1978d',
    'coregen_part_family' => 'virtex5',
    'createTestbench' => 0,
    'create_interface_document' => 'off',
    'dbl_ovrd' => -1.0,
    'dcm_input_clock_period' => 100.0,
    'deprecated_control' => 'off',
    'design' => 'fir_core',
    'design_full_path' => '/scratch/zaki/workspace/baobab/fir_core.mdl',
    'device' => 'xc5vsx95t-1ff1136',
    'device_speed' => '-1',
    'directory' => '/scratch/zaki/workspace/baobab/fir_core',
    'dsp_cache_root_path' => '/tmp/sysgentmp-zaki',
    'fileDeliveryDefaults' => [
      [
        '(?i)\\.vhd$',
        { 'fileName' => '/scratch/zaki/workspace/baobab/fir_core/sysgen/perl_results.vhd', },
      ],
      [
        '(?i)\\.v$',
        { 'fileName' => '/scratch/zaki/workspace/baobab/fir_core/sysgen/perl_results.v', },
      ],
    ],
    'fxdptinstalled' => 1.0,
    'generateUsing71FrontEnd' => 1,
    'generating_island_subsystem_handle' => 120075.0029296875,
    'generating_subsystem_handle' => 120075.0029296875,
    'generation_directory' => './fir_core',
    'hdlDir' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl',
    'hdlKind' => 'vhdl',
    'hdl_path' => '/scratch/zaki/workspace/baobab',
    'impl_file' => 'ISE Defaults*',
    'incr_netlist' => 'off',
    'isdeployed' => 0,
    'ise_version' => '13.3i',
    'master_sysgen_token_handle' => 105683.00122070312,
    'matlab' => '/scratch/mathworks/R2010a',
    'matlab_fixedpoint' => 1.0,
    'mdlHandle' => 120075.0029296875,
    'mdlPath' => '/scratch/zaki/workspace/baobab/fir_core.mdl',
    'modelDiagnostics' => [
      {
        'count' => 598.0,
        'isMask' => 0.0,
        'type' => 'fir_core Total blocks',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'Constant',
      },
      {
        'count' => 3.0,
        'isMask' => 0.0,
        'type' => 'DiscretePulseGenerator',
      },
      {
        'count' => 101.0,
        'isMask' => 0.0,
        'type' => 'Inport',
      },
      {
        'count' => 105.0,
        'isMask' => 0.0,
        'type' => 'Outport',
      },
      {
        'count' => 307.0,
        'isMask' => 0.0,
        'type' => 'S-Function',
      },
      {
        'count' => 74.0,
        'isMask' => 0.0,
        'type' => 'SubSystem',
      },
      {
        'count' => 7.0,
        'isMask' => 0.0,
        'type' => 'Terminator',
      },
      {
        'count' => 12.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Adder/Subtracter Block',
      },
      {
        'count' => 24.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Arithmetic Relational Operator Block',
      },
      {
        'count' => 24.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bit Slice Extractor Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bus Concatenator Block',
      },
      {
        'count' => 12.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bus Multiplexer Block',
      },
      {
        'count' => 60.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Constant Block Block',
      },
      {
        'count' => 28.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Counter Block',
      },
      {
        'count' => 17.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Delay Block',
      },
      {
        'count' => 5.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway In Block',
      },
      {
        'count' => 5.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway Out Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Input Scaler Block',
      },
      {
        'count' => 12.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Logical Block Block',
      },
      {
        'count' => 16.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Multiplier Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Register Block',
      },
      {
        'count' => 12.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Single Port Random Access Memory Block',
      },
      {
        'count' => 16.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Single Port Read-Only Memory Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx System Generator Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Converter Block',
      },
      {
        'count' => 48.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Reinterpreter Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'adder_tree',
      },
      {
        'count' => 12.0,
        'isMask' => 1.0,
        'type' => 'delay_bram',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'first_tap_real',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'last_tap_real',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'pfb_coeff_gen',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'pfb_fir_real',
      },
      {
        'count' => 8.0,
        'isMask' => 1.0,
        'type' => 'pfb_tap_real',
      },
      {
        'count' => 12.0,
        'isMask' => 1.0,
        'type' => 'sync_delay',
      },
    ],
    'model_globals_initialized' => 1.0,
    'model_path' => '/scratch/zaki/workspace/baobab/fir_core.mdl',
    'myxilinx' => '/scratch/Xilinx/13.3/ISE_DS/ISE',
    'ngc_config' => {
      'include_cf' => 0.0,
      'include_clockwrapper' => 0.0,
    },
    'ngc_files' => [ 'xlpersistentdff.ngc', ],
    'num_sim_cycles' => '10',
    'package' => 'ff1136',
    'part' => 'xc5vsx95t',
    'partFamily' => 'virtex5',
    'port_data_types_enabled' => 0.0,
    'preserve_hierarchy' => 0.0,
    'proj_type' => 'Project Navigator',
    'report_true_rates' => 0.0,
    'run_coregen' => '0',
    'sample_time_colors_enabled' => 0.0,
    'sampletimecolors' => 0.0,
    'sg_version' => '',
    'simulation_island_subsystem_handle' => 120075.0029296875,
    'simulink_accelerator_running' => 0.0,
    'simulink_debugger_running' => 0.0,
    'simulink_period' => 1.0,
    'speed' => '-1',
    'synth_file' => 'XST Defaults*',
    'synthesisTool' => 'XST',
    'synthesis_language' => 'vhdl',
    'synthesis_tool' => 'XST',
    'sysclk_period' => 5.0,
    'sysgen' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen',
    'sysgenRoot' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen',
    'sysgenTokenSettings' => {
      'base_system_period_hardware' => 5.0,
      'base_system_period_simulink' => 1.0,
      'block_icon_display' => 'Default',
      'ce_clr' => 0.0,
      'clock_loc' => 'd7hack',
      'clock_wrapper' => 'Clock Enables',
      'compilation' => 'NGC Netlist',
      'compilation_lut' => {
        'keys' => [
          'HDL Netlist',
          'NGC Netlist',
        ],
        'values' => [
          'target1',
          'target2',
        ],
      },
      'core_generation' => 1.0,
      'coregen_part_family' => 'virtex5',
      'create_interface_document' => 'off',
      'dbl_ovrd' => -1.0,
      'dcm_input_clock_period' => 100.0,
      'deprecated_control' => 'off',
      'directory' => './fir_core',
      'impl_file' => 'ISE Defaults*',
      'incr_netlist' => 'off',
      'master_sysgen_token_handle' => 105683.00122070312,
      'ngc_config' => {
        'include_cf' => 0.0,
        'include_clockwrapper' => 0.0,
      },
      'package' => 'ff1136',
      'part' => 'xc5vsx95t',
      'preserve_hierarchy' => 0.0,
      'proj_type' => 'Project Navigator',
      'simulation_island_subsystem_handle' => 120075.0029296875,
      'simulink_period' => 1.0,
      'speed' => '-1',
      'synth_file' => 'XST Defaults*',
      'synthesis_language' => 'vhdl',
      'synthesis_tool' => 'XST',
      'sysclk_period' => 5.0,
      'testbench' => 0,
      'trim_vbits' => 1.0,
      'xilinx_device' => 'xc5vsx95t-1ff1136',
      'xilinxfamily' => 'virtex5',
    },
    'sysgen_Root' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen',
    'systemClockPeriod' => 5.0,
    'tempdir' => '/tmp',
    'testbench' => 0,
    'tmpDir' => '/scratch/zaki/workspace/baobab/fir_core/sysgen',
    'trim_vbits' => 1.0,
    'use_strict_names' => 1,
    'user_tips_enabled' => 0.0,
    'usertemp' => '/tmp/sysgentmp-zaki',
    'using71Netlister' => 1,
    'verilog_files' => [
      'conv_pkg.v',
      'synth_reg.v',
      'synth_reg_w_init.v',
      'convert_type.v',
    ],
    'version' => '',
    'vhdl_files' => [
      'conv_pkg.vhd',
      'synth_reg.vhd',
      'synth_reg_w_init.vhd',
    ],
    'vsimtime' => '330.000000 ns',
    'xilinx' => '/scratch/Xilinx/13.3/ISE_DS/ISE',
    'xilinx_device' => 'xc5vsx95t-1ff1136',
    'xilinx_family' => 'virtex5',
    'xilinx_package' => 'ff1136',
    'xilinx_part' => 'xc5vsx95t',
    'xilinxdevice' => 'xc5vsx95t-1ff1136',
    'xilinxfamily' => 'virtex5',
    'xilinxpart' => 'xc5vsx95t',
  };
  push(@$results, &Sg::setAttributes($instrs));
  use SgDeliverFile;
  $instrs = {
    'collaborationName' => 'conv_pkg.vhd',
    'sourceFile' => 'hdl/conv_pkg.vhd',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'synth_reg.vhd',
    'sourceFile' => 'hdl/synth_reg.vhd',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'synth_reg_w_init.vhd',
    'sourceFile' => 'hdl/synth_reg_w_init.vhd',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'xlpersistentdff.ngc',
    'sourceFile' => 'hdl/xlpersistentdff.ngc',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b63f0ce78fa140a9c3ae7d2c24f189b0',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_17_32: signed((26 - 1) downto 0);
  signal b_17_35: signed((26 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((26 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "00000000000000000000000000");
  signal op_mem_91_20_front_din: signed((26 - 1) downto 0);
  signal op_mem_91_20_back: signed((26 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((27 - 1) downto 0);
  signal cast_69_22: signed((27 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((27 - 1) downto 0);
  signal cast_internal_s_83_3_convert: signed((26 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_91_20_push_front_pop_back_en = \'1\')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (cout_mem_92_22_push_front_pop_back_en = \'1\')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_69_18 <= s2s_cast(a_17_32, 24, 27, 24);
  cast_69_22 <= s2s_cast(b_17_35, 24, 27, 24);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_69_5_addsub, 24, 26, 24);
  op_mem_91_20_front_din <= cast_internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= \'1\';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= \'1\';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((26 - 1) downto 0);
    b : in std_logic_vector((26 - 1) downto 0);
    s : out std_logic_vector((26 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'addsub_14e4f27748',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  use SgGenerateCores;
  $instrs = [
    'SELECT Adder_Subtracter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET AINIT_Value = 0',
    'CSET A_Type = Signed',
    'CSET A_Width = 27',
    'CSET Add_Mode = Add',
    'CSET B_Constant = false',
    'CSET B_Type = Signed',
    'CSET B_Value = 0',
    'CSET B_Width = 27',
    'CSET Borrow_Sense = Active_Low',
    'CSET Bypass = false',
    'CSET Bypass_CE_Priority = Bypass_Overrides_CE',
    'CSET Bypass_Sense = Active_Low',
    'CSET CE = true',
    'CSET C_In = false',
    'CSET C_Out = false',
    'CSET Implementation = DSP48',
    'CSET Latency = 1',
    'CSET Out_Width = 27',
    'CSET SCLR = false',
    'CSET SINIT = false',
    'CSET SINIT_Value = 0',
    'CSET SSET = false',
    'CSET Sync_CE_Priority = Sync_Overrides_CE',
    'CSET Sync_Ctrl_Priority = Reset_Overrides_Set',
    'CSET component_name = addsb_11_0_2b8a9ccb489abd02',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '4a8ec875cd15f948a6d5cb32b102cc8b',
    'sourceFile' => 'hdl/xladdsub.vhd',
    'templateKeyValues' => {
      'core_component_def' => '    a: in std_logic_vector(27 - 1 downto 0);
    clk: in std_logic:= \'0\';
    ce: in std_logic:= \'0\';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(27 - 1 downto 0)',
      'core_instance_text' => '         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b',
      'core_name0' => 'addsb_11_0_2b8a9ccb489abd02',
      'entity_name.0' => 'xladdsub',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c757019693f8032fa79ae996578cb9a4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (2 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    \'0\',
    \'0\');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(1);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= std_logic_to_vector(op_mem_20_24_back);
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_e18fb31a3d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '13366d021ddc9f5413827bc05cb9e24f',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "1";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_6293007044',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 9',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_b9730cea34623a8b',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b823b40ff4bcd846a5ca09bba1f3ba53',
    'sourceFile' => 'hdl/xlcounter_limit.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_b9730cea34623a8b',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_RAM',
    'CSET operating_mode_a = READ_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_62_b6e6c9b59ce4fadf',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '69e288154b8879720dcc28d663f02860',
    'sourceFile' => 'hdl/xlspram.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_b6e6c9b59ce4fadf',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '65587d6f5e17dd6c6d12ea691beadc71',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((18 - 1) downto 0);
  signal in1_1_27: unsigned((18 - 1) downto 0);
  signal in2_1_31: unsigned((18 - 1) downto 0);
  signal in3_1_35: unsigned((18 - 1) downto 0);
  signal y_2_1_concat: unsigned((72 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((18 - 1) downto 0);
    in1 : in std_logic_vector((18 - 1) downto 0);
    in2 : in std_logic_vector((18 - 1) downto 0);
    in3 : in std_logic_vector((18 - 1) downto 0);
    y : out std_logic_vector((72 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_a246e373e7',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 9',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_b9730cea34623a8b',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '7406bb7217a6532d3e107c6b78479f99',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_b9730cea34623a8b',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '5540ce9844fb89c1ebd88b26533f6f19',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '64a87c3fe226033fd544f42452791c57',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 3FFF6, 3FFEB, 3FFE1, 3FFD7, 3FFCD, 3FFC2, 3FFB8, 3FFAD, 3FFA3, 3FF98, 3FF8E, 3FF83, 3FF79, 3FF6E, 3FF63, 3FF59, 3FF4E, 3FF43, 3FF38, 3FF2D, 3FF22, 3FF17, 3FF0C, 3FF01, 3FEF6, 3FEEB, 3FEE0, 3FED4, 3FEC9, 3FEBE, 3FEB2, 3FEA7, 3FE9B, 3FE8F, 3FE84, 3FE78, 3FE6C, 3FE60, 3FE54, 3FE48, 3FE3C, 3FE2F, 3FE23, 3FE17, 3FE0A, 3FDFD, 3FDF1, 3FDE4, 3FDD7, 3FDCA, 3FDBD, 3FDB0, 3FDA3, 3FD96, 3FD88, 3FD7B, 3FD6D, 3FD60, 3FD52, 3FD44, 3FD36, 3FD28, 3FD1A, 3FD0B, 3FCFD, 3FCEF, 3FCE0, 3FCD1, 3FCC2, 3FCB3, 3FCA4, 3FC95, 3FC86, 3FC77, 3FC67, 3FC57, 3FC48, 3FC38, 3FC28, 3FC18, 3FC07, 3FBF7, 3FBE6, 3FBD6, 3FBC5, 3FBB4, 3FBA3, 3FB92, 3FB81, 3FB6F, 3FB5D, 3FB4C, 3FB3A, 3FB28, 3FB16, 3FB04, 3FAF1, 3FADF, 3FACC, 3FAB9, 3FAA6, 3FA93, 3FA80, 3FA6C, 3FA59, 3FA45, 3FA31, 3FA1D, 3FA09, 3F9F5, 3F9E0, 3F9CC, 3F9B7, 3F9A2, 3F98D, 3F978, 3F962, 3F94D, 3F937, 3F921, 3F90B, 3F8F5, 3F8DF, 3F8C8, 3F8B2, 3F89B, 3F884, 3F86D, 3F856, 3F83E, 3F827, 3F80F, 3F7F7, 3F7DF, 3F7C7, 3F7AF, 3F796, 3F77D, 3F764, 3F74B, 3F732, 3F719, 3F700, 3F6E6, 3F6CC, 3F6B2, 3F698, 3F67E, 3F663, 3F649, 3F62E, 3F613, 3F5F8, 3F5DD, 3F5C2, 3F5A6, 3F58A, 3F56F, 3F553, 3F537, 3F51A, 3F4FE, 3F4E1, 3F4C5, 3F4A8, 3F48B, 3F46E, 3F450, 3F433, 3F415, 3F3F7, 3F3D9, 3F3BB, 3F39D, 3F37F, 3F360, 3F342, 3F323, 3F304, 3F2E5, 3F2C6, 3F2A7, 3F287, 3F268, 3F248, 3F228, 3F208, 3F1E8, 3F1C8, 3F1A8, 3F188, 3F167, 3F146, 3F126, 3F105, 3F0E4, 3F0C3, 3F0A1, 3F080, 3F05F, 3F03D, 3F01C, 3EFFA, 3EFD8, 3EFB6, 3EF94, 3EF72, 3EF50, 3EF2D, 3EF0B, 3EEE9, 3EEC6, 3EEA3, 3EE81, 3EE5E, 3EE3B, 3EE18, 3EDF5, 3EDD2, 3EDAF, 3ED8C, 3ED68, 3ED45, 3ED22, 3ECFE, 3ECDB, 3ECB7, 3EC94, 3EC70, 3EC4D, 3EC29, 3EC05, 3EBE2, 3EBBE, 3EB9A, 3EB76, 3EB52, 3EB2F, 3EB0B, 3EAE7, 3EAC3, 3EA9F, 3EA7B, 3EA57, 3EA34, 3EA10, 3E9EC, 3E9C8, 3E9A4, 3E980, 3E95D, 3E939, 3E915, 3E8F2, 3E8CE, 3E8AB, 3E887, 3E864, 3E840, 3E81D, 3E7F9, 3E7D6, 3E7B3, 3E790, 3E76D, 3E74A, 3E727, 3E705, 3E6E2, 3E6BF, 3E69D, 3E67A, 3E658, 3E636, 3E614, 3E5F2, 3E5D0, 3E5AF, 3E58D, 3E56C, 3E54B, 3E529, 3E509, 3E4E8, 3E4C7, 3E4A7, 3E486, 3E466, 3E446, 3E427, 3E407, 3E3E8, 3E3C8, 3E3A9, 3E38B, 3E36C, 3E34E, 3E32F, 3E312, 3E2F4, 3E2D6, 3E2B9, 3E29C, 3E27F, 3E263, 3E247, 3E22B, 3E20F, 3E1F4, 3E1D8, 3E1BD, 3E1A3, 3E189, 3E16F, 3E155, 3E13B, 3E122, 3E10A, 3E0F1, 3E0D9, 3E0C1, 3E0AA, 3E093, 3E07C, 3E065, 3E04F, 3E03A, 3E024, 3E00F, 3DFFB, 3DFE7, 3DFD3, 3DFC0, 3DFAD, 3DF9A, 3DF88, 3DF76, 3DF65, 3DF54, 3DF43, 3DF33, 3DF24, 3DF14, 3DF06, 3DEF8, 3DEEA, 3DEDC, 3DED0, 3DEC3, 3DEB8, 3DEAC, 3DEA1, 3DE97, 3DE8D, 3DE84, 3DE7B, 3DE73, 3DE6B, 3DE64, 3DE5D, 3DE57, 3DE52, 3DE4D, 3DE48, 3DE44, 3DE41, 3DE3F, 3DE3D, 3DE3B, 3DE3A, 3DE3A, 3DE3A, 3DE3B, 3DE3D, 3DE3F, 3DE42, 3DE45, 3DE4A, 3DE4E, 3DE54, 3DE5A, 3DE61, 3DE68, 3DE71, 3DE79, 3DE83, 3DE8D, 3DE98, 3DEA4, 3DEB0, 3DEBD, 3DECB, 3DEDA, 3DEE9, 3DEF9, 3DF0A, 3DF1B, 3DF2E, 3DF41, 3DF55, 3DF69, 3DF7F, 3DF95, 3DFAC, 3DFC4, 3DFDD, 3DFF6, 3E010, 3E02B, 3E047, 3E064, 3E082, 3E0A0, 3E0BF, 3E0E0, 3E101, 3E123, 3E145, 3E169, 3E18D, 3E1B3, 3E1D9, 3E200, 3E229, 3E252, 3E27C, 3E2A6, 3E2D2, 3E2FF, 3E32D, 3E35B, 3E38B, 3E3BB, 3E3ED, 3E41F, 3E453, 3E487, 3E4BC, 3E4F3, 3E52A, 3E562, 3E59C, 3E5D6, 3E611, 3E64E, 3E68B, 3E6C9, 3E709, 3E749, 3E78B, 3E7CD, 3E811, 3E855, 3E89B, 3E8E2, 3E92A, 3E973, 3E9BD, 3EA08, 3EA54, 3EAA1, 3EAEF, 3EB3F, 3EB8F, 3EBE1, 3EC33, 3EC87, 3ECDC, 3ED32, 3ED89, 3EDE2, 3EE3B, 3EE96, 3EEF1, 3EF4E, 3EFAC, 3F00C, 3F06C, 3F0CD, 3F130, 3F194, 3F1F9, 3F25F, 3F2C6, 3F32F, 3F399, 3F404, 3F470, 3F4DD, 3F54B, 3F5BB, 3F62C, 3F69E, 3F711, 3F786, 3F7FC, 3F873, 3F8EB, 3F964, 3F9DF, 3FA5B, 3FAD8, 3FB56, 3FBD6, 3FC57, 3FCD9, 3FD5C, 3FDE1, 3FE67, 3FEEE, 3FF76;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_d20d0ec823fdec4a',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a1e5d6dfd71e78d9e11e6755a4818dee',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_d20d0ec823fdec4a',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 8B, 117, 1A4, 233, 2C3, 354, 3E7, 47B, 510, 5A6, 63E, 6D7, 771, 80C, 8A9, 947, 9E7, A87, B29, BCC, C71, D17, DBE, E66, F10, FBB, 1067, 1115, 11C4, 1274, 1326, 13D9, 148D, 1542, 15F9, 16B1, 176A, 1825, 18E1, 199E, 1A5D, 1B1D, 1BDE, 1CA1, 1D65, 1E2A, 1EF0, 1FB8, 2081, 214B, 2217, 22E4, 23B2, 2482, 2553, 2625, 26F8, 27CD, 28A3, 297A, 2A53, 2B2D, 2C08, 2CE5, 2DC2, 2EA2, 2F82, 3064, 3147, 322B, 3310, 33F7, 34DF, 35C8, 36B3, 379F, 388C, 397A, 3A6A, 3B5B, 3C4D, 3D40, 3E35, 3F2B, 4022, 411A, 4214, 430F, 440B, 4508, 4607, 4706, 4807, 490A, 4A0D, 4B12, 4C17, 4D1E, 4E27, 4F30, 503B, 5146, 5253, 5361, 5471, 5581, 5693, 57A6, 58B9, 59CF, 5AE5, 5BFC, 5D15, 5E2E, 5F49, 6065, 6182, 62A0, 63BF, 64E0, 6601, 6724, 6847, 696C, 6A92, 6BB9, 6CE1, 6E0A, 6F34, 705F, 718B, 72B8, 73E6, 7515, 7645, 7777, 78A9, 79DC, 7B10, 7C46, 7D7C, 7EB3, 7FEB, 8124, 825E, 8399, 84D5, 8612, 8750, 888E, 89CE, 8B0E, 8C50, 8D92, 8ED5, 9019, 915E, 92A4, 93EB, 9532, 967B, 97C4, 990E, 9A58, 9BA4, 9CF0, 9E3E, 9F8C, A0DA, A22A, A37A, A4CB, A61D, A76F, A8C2, AA16, AB6B, ACC0, AE16, AF6D, B0C4, B21C, B375, B4CE, B628, B783, B8DE, BA3A, BB96, BCF3, BE51, BFAF, C10E, C26D, C3CD, C52D, C68E, C7EF, C951, CAB4, CC16, CD7A, CEDE, D042, D1A7, D30C, D471, D5D7, D73E, D8A4, DA0C, DB73, DCDB, DE43, DFAC, E115, E27E, E3E8, E552, E6BC, E826, E991, EAFC, EC67, EDD3, EF3E, F0AA, F216, F383, F4EF, F65C, F7C9, F936, FAA3, FC10, FD7D, FEEB, 10058, 101C6, 10334, 104A2, 10610, 1077D, 108EB, 10A59, 10BC7, 10D35, 10EA3, 11011, 1117F, 112ED, 1145A, 115C8, 11736, 118A3, 11A10, 11B7E, 11CEB, 11E58, 11FC5, 12131, 1229E, 1240A, 12576, 126E2, 1284E, 129B9, 12B24, 12C8F, 12DFA, 12F64, 130CE, 13238, 133A1, 1350B, 13673, 137DC, 13944, 13AAB, 13C13, 13D79, 13EE0, 14046, 141AB, 14311, 14475, 145D9, 1473D, 148A0, 14A03, 14B65, 14CC7, 14E28, 14F89, 150E9, 15248, 153A7, 15505, 15662, 157BF, 1591C, 15A77, 15BD2, 15D2D, 15E86, 15FDF, 16137, 1628F, 163E6, 1653C, 16691, 167E5, 16939, 16A8C, 16BDE, 16D2F, 16E80, 16FCF, 1711E, 1726C, 173B9, 17505, 17650, 1779B, 178E4, 17A2D, 17B74, 17CBB, 17E00, 17F45, 18088, 181CB, 1830D, 1844D, 1858D, 186CB, 18808, 18945, 18A80, 18BBA, 18CF3, 18E2B, 18F62, 19098, 191CC, 19300, 19432, 19563, 19693, 197C1, 198EF, 19A1B, 19B46, 19C6F, 19D98, 19EBF, 19FE5, 1A109, 1A22D, 1A34F, 1A46F, 1A58F, 1A6AD, 1A7C9, 1A8E4, 1A9FE, 1AB17, 1AC2E, 1AD43, 1AE58, 1AF6B, 1B07C, 1B18C, 1B29A, 1B3A7, 1B4B3, 1B5BD, 1B6C6, 1B7CD, 1B8D2, 1B9D6, 1BAD9, 1BBDA, 1BCD9, 1BDD7, 1BED3, 1BFCE, 1C0C7, 1C1BF, 1C2B4, 1C3A9, 1C49B, 1C58C, 1C67C, 1C769, 1C855, 1C940, 1CA28, 1CB0F, 1CBF5, 1CCD8, 1CDBA, 1CE9A, 1CF79, 1D055, 1D130, 1D20A, 1D2E1, 1D3B7, 1D48A, 1D55C, 1D62D, 1D6FB, 1D7C8, 1D893, 1D95C, 1DA23, 1DAE8, 1DBAC, 1DC6D, 1DD2D, 1DDEB, 1DEA7, 1DF61, 1E019, 1E0CF, 1E184, 1E236, 1E2E7, 1E396, 1E442, 1E4ED, 1E596, 1E63D, 1E6E2, 1E785, 1E826, 1E8C4, 1E961, 1E9FC, 1EA96, 1EB2D, 1EBC2, 1EC55, 1ECE5, 1ED74, 1EE01, 1EE8C, 1EF15, 1EF9C, 1F021, 1F0A3, 1F124, 1F1A2, 1F21F, 1F299, 1F312, 1F388, 1F3FC, 1F46E, 1F4DE, 1F54C, 1F5B8, 1F621, 1F689, 1F6EE, 1F751, 1F7B3, 1F812, 1F86E, 1F8C9, 1F922, 1F978, 1F9CD, 1FA1F, 1FA6F, 1FABD, 1FB08, 1FB52, 1FB99, 1FBDE, 1FC21, 1FC62, 1FCA1, 1FCDD, 1FD18, 1FD50, 1FD86, 1FDB9, 1FDEB, 1FE1A, 1FE47, 1FE72, 1FE9B, 1FEC2, 1FEE6, 1FF08, 1FF28, 1FF46, 1FF62, 1FF7B, 1FF92, 1FFA7, 1FFBA, 1FFCA, 1FFD9, 1FFE5, 1FFEF, 1FFF6, 1FFFC, 1FFFF;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_c9b13a26e1c976ed',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '172cb6f2eadb356afc196d7401b4486e',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_c9b13a26e1c976ed',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 1FFFF, 1FFFF, 1FFFB, 1FFF6, 1FFEE, 1FFE4, 1FFD8, 1FFC9, 1FFB9, 1FFA6, 1FF91, 1FF79, 1FF60, 1FF44, 1FF26, 1FF06, 1FEE4, 1FEBF, 1FE99, 1FE70, 1FE45, 1FE17, 1FDE8, 1FDB6, 1FD82, 1FD4C, 1FD14, 1FCD9, 1FC9D, 1FC5E, 1FC1D, 1FBDA, 1FB95, 1FB4D, 1FB03, 1FAB8, 1FA6A, 1FA1A, 1F9C7, 1F973, 1F91C, 1F8C3, 1F869, 1F80C, 1F7AC, 1F74B, 1F6E8, 1F682, 1F61B, 1F5B1, 1F545, 1F4D7, 1F467, 1F3F5, 1F380, 1F30A, 1F292, 1F217, 1F19A, 1F11C, 1F09B, 1F018, 1EF93, 1EF0C, 1EE83, 1EDF8, 1ED6B, 1ECDC, 1EC4B, 1EBB8, 1EB23, 1EA8C, 1E9F3, 1E958, 1E8BA, 1E81B, 1E77A, 1E6D7, 1E632, 1E58B, 1E4E2, 1E437, 1E38B, 1E2DC, 1E22B, 1E178, 1E0C4, 1E00E, 1DF55, 1DE9B, 1DDDF, 1DD21, 1DC61, 1DB9F, 1DADC, 1DA16, 1D94F, 1D886, 1D7BB, 1D6EE, 1D620, 1D54F, 1D47D, 1D3A9, 1D2D3, 1D1FC, 1D123, 1D048, 1CF6B, 1CE8C, 1CDAC, 1CCCA, 1CBE6, 1CB01, 1CA1A, 1C931, 1C847, 1C75A, 1C66D, 1C57D, 1C48C, 1C399, 1C2A5, 1C1AF, 1C0B7, 1BFBE, 1BEC4, 1BDC7, 1BCC9, 1BBCA, 1BAC9, 1B9C6, 1B8C2, 1B7BC, 1B6B5, 1B5AD, 1B4A2, 1B397, 1B28A, 1B17B, 1B06B, 1AF5A, 1AE47, 1AD32, 1AC1D, 1AB05, 1A9ED, 1A8D3, 1A7B8, 1A69B, 1A57D, 1A45D, 1A33D, 1A21B, 1A0F7, 19FD3, 19EAD, 19D86, 19C5D, 19B33, 19A08, 198DC, 197AF, 19680, 19550, 1941F, 192ED, 191B9, 19085, 18F4F, 18E18, 18CE0, 18BA7, 18A6D, 18932, 187F5, 186B8, 18579, 1843A, 182F9, 181B7, 18075, 17F31, 17DEC, 17CA7, 17B60, 17A19, 178D0, 17787, 1763C, 174F1, 173A5, 17258, 1710A, 16FBB, 16E6C, 16D1B, 16BCA, 16A78, 16925, 167D1, 1667C, 16527, 163D1, 1627A, 16123, 15FCB, 15E72, 15D18, 15BBE, 15A63, 15907, 157AB, 1564E, 154F0, 15392, 15233, 150D4, 14F74, 14E13, 14CB2, 14B50, 149EE, 1488B, 14728, 145C5, 14460, 142FC, 14197, 14031, 13ECB, 13D64, 13BFE, 13A96, 1392F, 137C7, 1365E, 134F6, 1338C, 13223, 130B9, 12F4F, 12DE5, 12C7A, 12B0F, 129A4, 12839, 126CD, 12561, 123F5, 12289, 1211C, 11FB0, 11E43, 11CD6, 11B69, 119FC, 1188E, 11721, 115B3, 11446, 112D8, 1116A, 10FFC, 10E8E, 10D21, 10BB3, 10A45, 108D7, 10769, 105FB, 1048D, 1031F, 101B2, 10044, FED7, FD69, FBFC, FA8F, F921, F7B4, F648, F4DB, F36F, F202, F096, EF2A, EDBF, EC53, EAE8, E97D, E812, E6A8, E53E, E3D4, E26B, E101, DF98, DE30, DCC8, DB60, D9F8, D891, D72B, D5C4, D45E, D2F9, D194, D02F, CECB, CD67, CC04, CAA1, C93F, C7DD, C67C, C51B, C3BA, C25B, C0FC, BF9D, BE3F, BCE1, BB84, BA28, B8CC, B771, B617, B4BD, B364, B20B, B0B3, AF5C, AE05, ACAF, AB5A, AA05, A8B2, A75E, A60C, A4BA, A369, A219, A0CA, 9F7B, 9E2D, 9CE0, 9B94, 9A48, 98FE, 97B4, 966B, 9523, 93DB, 9295, 914F, 900A, 8EC6, 8D83, 8C41, 8AFF, 89BF, 8880, 8741, 8603, 84C6, 838B, 8250, 8116, 7FDD, 7EA5, 7D6E, 7C38, 7B02, 79CE, 789B, 7769, 7638, 7508, 73D9, 72AB, 717E, 7052, 6F27, 6DFD, 6CD4, 6BAC, 6A85, 6960, 683B, 6717, 65F5, 64D4, 63B3, 6294, 6176, 6059, 5F3E, 5E23, 5D09, 5BF1, 5ADA, 59C4, 58AF, 579B, 5688, 5576, 5466, 5357, 5249, 513C, 5030, 4F26, 4E1D, 4D15, 4C0E, 4B08, 4A03, 4900, 47FE, 46FD, 45FE, 44FF, 4402, 4306, 420B, 4112, 4019, 3F22, 3E2D, 3D38, 3C45, 3B53, 3A62, 3972, 3884, 3797, 36AB, 35C1, 34D8, 33F0, 3309, 3224, 3140, 305D, 2F7B, 2E9B, 2DBC, 2CDE, 2C02, 2B27, 2A4D, 2974, 289D, 27C7, 26F3, 261F, 254D, 247C, 23AD, 22DF, 2212, 2146, 207C, 1FB3, 1EEC, 1E25, 1D60, 1C9C, 1BDA, 1B19, 1A59, 199B, 18DD, 1821, 1767, 16AE, 15F6, 153F, 148A, 13D6, 1323, 1271, 11C1, 1112, 1065, FB9, F0E, E64, DBC, D15, C6F, BCB, B27, A86, 9E5, 946, 8A8, 80B, 770, 6D6, 63D, 5A5, 50F, 47A, 3E6, 354, 2C3, 233, 1A4, 117, 8B;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_9dec88cb108e8ea0',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '7edaa9bedd8e075a056d92b1b0144a5f',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_9dec88cb108e8ea0',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 3FF76, 3FEEE, 3FE67, 3FDE1, 3FD5D, 3FCDA, 3FC58, 3FBD7, 3FB57, 3FAD9, 3FA5C, 3F9E0, 3F966, 3F8EC, 3F874, 3F7FD, 3F788, 3F713, 3F6A0, 3F62E, 3F5BD, 3F54D, 3F4DF, 3F472, 3F406, 3F39B, 3F331, 3F2C9, 3F261, 3F1FB, 3F196, 3F133, 3F0D0, 3F06F, 3F00E, 3EFAF, 3EF51, 3EEF5, 3EE99, 3EE3E, 3EDE5, 3ED8D, 3ED36, 3ECE0, 3EC8B, 3EC37, 3EBE4, 3EB93, 3EB43, 3EAF3, 3EAA5, 3EA58, 3EA0C, 3E9C1, 3E977, 3E92E, 3E8E6, 3E8A0, 3E85A, 3E816, 3E7D2, 3E790, 3E74E, 3E70E, 3E6CE, 3E690, 3E653, 3E616, 3E5DB, 3E5A1, 3E568, 3E52F, 3E4F8, 3E4C2, 3E48D, 3E458, 3E425, 3E3F2, 3E3C1, 3E391, 3E361, 3E333, 3E305, 3E2D8, 3E2AC, 3E282, 3E258, 3E22F, 3E207, 3E1E0, 3E1B9, 3E194, 3E16F, 3E14C, 3E129, 3E107, 3E0E6, 3E0C6, 3E0A7, 3E088, 3E06B, 3E04E, 3E032, 3E017, 3DFFD, 3DFE4, 3DFCB, 3DFB3, 3DF9C, 3DF86, 3DF71, 3DF5C, 3DF48, 3DF35, 3DF23, 3DF11, 3DF00, 3DEF0, 3DEE1, 3DED3, 3DEC5, 3DEB8, 3DEAB, 3DEA0, 3DE95, 3DE8B, 3DE81, 3DE78, 3DE70, 3DE69, 3DE62, 3DE5C, 3DE56, 3DE51, 3DE4D, 3DE4A, 3DE47, 3DE45, 3DE43, 3DE42, 3DE42, 3DE42, 3DE43, 3DE45, 3DE47, 3DE49, 3DE4D, 3DE50, 3DE55, 3DE5A, 3DE5F, 3DE65, 3DE6C, 3DE73, 3DE7B, 3DE83, 3DE8C, 3DE95, 3DE9F, 3DEAA, 3DEB4, 3DEC0, 3DECC, 3DED8, 3DEE5, 3DEF2, 3DF00, 3DF0E, 3DF1D, 3DF2C, 3DF3B, 3DF4C, 3DF5C, 3DF6D, 3DF7E, 3DF90, 3DFA2, 3DFB5, 3DFC8, 3DFDB, 3DFEF, 3E003, 3E018, 3E02D, 3E042, 3E058, 3E06E, 3E084, 3E09B, 3E0B2, 3E0C9, 3E0E1, 3E0F9, 3E112, 3E12B, 3E144, 3E15D, 3E177, 3E191, 3E1AB, 3E1C6, 3E1E0, 3E1FC, 3E217, 3E233, 3E24F, 3E26B, 3E287, 3E2A4, 3E2C1, 3E2DE, 3E2FC, 3E31A, 3E337, 3E356, 3E374, 3E392, 3E3B1, 3E3D0, 3E3EF, 3E40F, 3E42E, 3E44E, 3E46E, 3E48E, 3E4AE, 3E4CF, 3E4EF, 3E510, 3E531, 3E552, 3E573, 3E595, 3E5B6, 3E5D8, 3E5FA, 3E61C, 3E63E, 3E660, 3E682, 3E6A4, 3E6C7, 3E6E9, 3E70C, 3E72F, 3E751, 3E774, 3E797, 3E7BA, 3E7DD, 3E801, 3E824, 3E847, 3E86B, 3E88E, 3E8B1, 3E8D5, 3E8F9, 3E91C, 3E940, 3E964, 3E987, 3E9AB, 3E9CF, 3E9F3, 3EA16, 3EA3A, 3EA5E, 3EA82, 3EAA6, 3EAC9, 3EAED, 3EB11, 3EB35, 3EB59, 3EB7C, 3EBA0, 3EBC4, 3EBE8, 3EC0B, 3EC2F, 3EC53, 3EC76, 3EC9A, 3ECBD, 3ECE1, 3ED04, 3ED28, 3ED4B, 3ED6E, 3ED91, 3EDB5, 3EDD8, 3EDFB, 3EE1E, 3EE41, 3EE63, 3EE86, 3EEA9, 3EECB, 3EEEE, 3EF10, 3EF33, 3EF55, 3EF77, 3EF99, 3EFBB, 3EFDD, 3EFFF, 3F021, 3F042, 3F064, 3F085, 3F0A6, 3F0C7, 3F0E9, 3F109, 3F12A, 3F14B, 3F16C, 3F18C, 3F1AD, 3F1CD, 3F1ED, 3F20D, 3F22D, 3F24D, 3F26C, 3F28C, 3F2AB, 3F2CA, 3F2E9, 3F308, 3F327, 3F346, 3F364, 3F383, 3F3A1, 3F3BF, 3F3DD, 3F3FB, 3F419, 3F436, 3F454, 3F471, 3F48E, 3F4AB, 3F4C8, 3F4E5, 3F501, 3F51E, 3F53A, 3F556, 3F572, 3F58E, 3F5A9, 3F5C5, 3F5E0, 3F5FB, 3F616, 3F631, 3F64C, 3F666, 3F681, 3F69B, 3F6B5, 3F6CF, 3F6E9, 3F702, 3F71C, 3F735, 3F74E, 3F767, 3F780, 3F799, 3F7B1, 3F7C9, 3F7E2, 3F7FA, 3F811, 3F829, 3F841, 3F858, 3F86F, 3F886, 3F89D, 3F8B4, 3F8CA, 3F8E1, 3F8F7, 3F90D, 3F923, 3F939, 3F94F, 3F964, 3F97A, 3F98F, 3F9A4, 3F9B9, 3F9CD, 3F9E2, 3F9F6, 3FA0B, 3FA1F, 3FA33, 3FA47, 3FA5A, 3FA6E, 3FA81, 3FA94, 3FAA8, 3FABA, 3FACD, 3FAE0, 3FAF2, 3FB05, 3FB17, 3FB29, 3FB3B, 3FB4D, 3FB5F, 3FB70, 3FB82, 3FB93, 3FBA4, 3FBB5, 3FBC6, 3FBD7, 3FBE7, 3FBF8, 3FC08, 3FC18, 3FC29, 3FC39, 3FC48, 3FC58, 3FC68, 3FC77, 3FC87, 3FC96, 3FCA5, 3FCB4, 3FCC3, 3FCD2, 3FCE1, 3FCEF, 3FCFE, 3FD0C, 3FD1A, 3FD29, 3FD37, 3FD45, 3FD52, 3FD60, 3FD6E, 3FD7B, 3FD89, 3FD96, 3FDA3, 3FDB1, 3FDBE, 3FDCB, 3FDD8, 3FDE4, 3FDF1, 3FDFE, 3FE0A, 3FE17, 3FE23, 3FE30, 3FE3C, 3FE48, 3FE54, 3FE60, 3FE6C, 3FE78, 3FE84, 3FE8F, 3FE9B, 3FEA7, 3FEB2, 3FEBE, 3FEC9, 3FED5, 3FEE0, 3FEEB, 3FEF6, 3FF01, 3FF0D, 3FF18, 3FF23, 3FF2D, 3FF38, 3FF43, 3FF4E, 3FF59, 3FF63, 3FF6E, 3FF79, 3FF83, 3FF8E, 3FF98, 3FFA3, 3FFAD, 3FFB8, 3FFC2, 3FFCD, 3FFD7, 3FFE1, 3FFEB, 3FFF6;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_091470bf207d9593',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '3d488ca213b74a03ba8379eea5b27a22',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_091470bf207d9593',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '58194b0d149c0084940f95cd5d2e8bf3',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '6c5ae4ed7a90830b07c3ff2596ce4fc5',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: signed((18 - 1) downto 0);
  signal output_port_5_5_force: unsigned((18 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((18 - 1) downto 0);
    output_port : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_580feec131',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '823820561dc563133ddef3a7b5a1cee2',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0000000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_f1ac4bddff',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '33d0bd4da38e5cae4fc9beffbd0ed266',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_498bc68c14',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '2e2fac6b5513f4f7f53f6e95600afecc',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "1000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_fbc2f0cce1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 10',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_7ca694f8efe8d963',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e318f0be778d98a52ff14260c5c71139',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net',
      'core_name0' => 'cntr_11_0_7ca694f8efe8d963',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '79cfaf8c15ce6d93b744ee6a4a4e8394',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_aacf6e1b0e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4cbc8f55ab0bdad8c93c57462ba138dc',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal unregy_join_6_1: std_logic;
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= std_logic_to_vector(unregy_join_6_1);
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_1bef4ba0e4',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '62bc9f8a3c249b32ba23a34fb1c28724',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((10 - 1) downto 0);
  signal b_1_34: unsigned((10 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((10 - 1) downto 0);
    b : in std_logic_vector((10 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_0ffd72e037',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '91aa5fe6e672c7518ca04268dcbd48a9',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((10 - 1) downto 0);
  signal b_1_34: unsigned((10 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((10 - 1) downto 0);
    b : in std_logic_vector((10 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_f6702ea2f7',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '5c30444b2de2636c0744f2ade2997f80',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_22: signed((8 - 1) downto 0);
  signal b_1_25: signed((18 - 1) downto 0);
  type array_type_op_mem_65_20 is array (0 to (3 - 1)) of signed((26 - 1) downto 0);
  signal op_mem_65_20: array_type_op_mem_65_20 := (
    "00000000000000000000000000",
    "00000000000000000000000000",
    "00000000000000000000000000");
  signal op_mem_65_20_front_din: signed((26 - 1) downto 0);
  signal op_mem_65_20_back: signed((26 - 1) downto 0);
  signal op_mem_65_20_push_front_pop_back_en: std_logic;
  signal mult_46_56: signed((26 - 1) downto 0);
begin
  a_1_22 <= std_logic_vector_to_signed(a);
  b_1_25 <= std_logic_vector_to_signed(b);
  op_mem_65_20_back <= op_mem_65_20(2);
  proc_op_mem_65_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_65_20_push_front_pop_back_en = \'1\')) then
        for i in 2 downto 1 loop 
          op_mem_65_20(i) <= op_mem_65_20(i-1);
        end loop;
        op_mem_65_20(0) <= op_mem_65_20_front_din;
      end if;
    end if;
  end process proc_op_mem_65_20;
  mult_46_56 <= (a_1_22 * b_1_25);
  op_mem_65_20_front_din <= mult_46_56;
  op_mem_65_20_push_front_pop_back_en <= \'1\';
  p <= signed_to_std_logic_vector(op_mem_65_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((18 - 1) downto 0);
    p : out std_logic_vector((26 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mult_4fae336f61',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '7278cc6d2681503b42f7a4b4201bd1f5',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((18 - 1) downto 0);
  signal output_port_5_5_force: signed((18 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((18 - 1) downto 0);
    output_port : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_9a0fa0f632',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b873c30a4a165c6a2cca5bd2c036c837',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: signed((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port <= signed_to_std_logic_vector(input_port_1_40);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_d9988e3d87',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'eebdabe118a5a167ac3811f9e61631f5',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f5a5445f12d75f6a936cc87fdd56e101',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '8d20d839a3244f157f3847a6567003a1',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '507b7432f475aabb1953306166ed54b6',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7892cd1628ac2c25eec62cc98ae02634',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '081fd9bd24ee222f5c5d9647ba670fc6',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '4630dbaf3509d6b4a8fc05647a4092b6',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 3FFFD, 3FFF3, 3FFE9, 3FFDF, 3FFD4, 3FFCA, 3FFC0, 3FFB5, 3FFAB, 3FFA0, 3FF96, 3FF8B, 3FF81, 3FF76, 3FF6B, 3FF61, 3FF56, 3FF4B, 3FF40, 3FF36, 3FF2B, 3FF20, 3FF15, 3FF0A, 3FEFF, 3FEF3, 3FEE8, 3FEDD, 3FED2, 3FEC6, 3FEBB, 3FEAF, 3FEA4, 3FE98, 3FE8C, 3FE81, 3FE75, 3FE69, 3FE5D, 3FE51, 3FE45, 3FE39, 3FE2C, 3FE20, 3FE13, 3FE07, 3FDFA, 3FDEE, 3FDE1, 3FDD4, 3FDC7, 3FDBA, 3FDAD, 3FDA0, 3FD92, 3FD85, 3FD78, 3FD6A, 3FD5C, 3FD4E, 3FD41, 3FD33, 3FD24, 3FD16, 3FD08, 3FCF9, 3FCEB, 3FCDC, 3FCCE, 3FCBF, 3FCB0, 3FCA1, 3FC91, 3FC82, 3FC73, 3FC63, 3FC53, 3FC44, 3FC34, 3FC24, 3FC13, 3FC03, 3FBF3, 3FBE2, 3FBD2, 3FBC1, 3FBB0, 3FB9F, 3FB8E, 3FB7C, 3FB6B, 3FB59, 3FB47, 3FB35, 3FB23, 3FB11, 3FAFF, 3FAED, 3FADA, 3FAC7, 3FAB4, 3FAA1, 3FA8E, 3FA7B, 3FA67, 3FA54, 3FA40, 3FA2C, 3FA18, 3FA04, 3F9F0, 3F9DB, 3F9C6, 3F9B2, 3F99D, 3F988, 3F972, 3F95D, 3F947, 3F932, 3F91C, 3F906, 3F8F0, 3F8D9, 3F8C3, 3F8AC, 3F895, 3F87E, 3F867, 3F850, 3F838, 3F821, 3F809, 3F7F1, 3F7D9, 3F7C1, 3F7A8, 3F790, 3F777, 3F75E, 3F745, 3F72C, 3F713, 3F6F9, 3F6DF, 3F6C6, 3F6AC, 3F692, 3F677, 3F65D, 3F642, 3F627, 3F60C, 3F5F1, 3F5D6, 3F5BB, 3F59F, 3F584, 3F568, 3F54C, 3F530, 3F513, 3F4F7, 3F4DA, 3F4BD, 3F4A0, 3F483, 3F466, 3F449, 3F42B, 3F40E, 3F3F0, 3F3D2, 3F3B4, 3F396, 3F377, 3F359, 3F33A, 3F31B, 3F2FD, 3F2DD, 3F2BE, 3F29F, 3F280, 3F260, 3F240, 3F220, 3F200, 3F1E0, 3F1C0, 3F1A0, 3F17F, 3F15F, 3F13E, 3F11D, 3F0FC, 3F0DB, 3F0BA, 3F099, 3F078, 3F056, 3F035, 3F013, 3EFF1, 3EFCF, 3EFAE, 3EF8B, 3EF69, 3EF47, 3EF25, 3EF02, 3EEE0, 3EEBD, 3EE9B, 3EE78, 3EE55, 3EE32, 3EE0F, 3EDEC, 3EDC9, 3EDA6, 3ED83, 3ED60, 3ED3C, 3ED19, 3ECF5, 3ECD2, 3ECAF, 3EC8B, 3EC67, 3EC44, 3EC20, 3EBFC, 3EBD9, 3EBB5, 3EB91, 3EB6D, 3EB49, 3EB26, 3EB02, 3EADE, 3EABA, 3EA96, 3EA72, 3EA4E, 3EA2B, 3EA07, 3E9E3, 3E9BF, 3E99B, 3E978, 3E954, 3E930, 3E90C, 3E8E9, 3E8C5, 3E8A2, 3E87E, 3E85B, 3E837, 3E814, 3E7F1, 3E7CD, 3E7AA, 3E787, 3E764, 3E741, 3E71F, 3E6FC, 3E6D9, 3E6B7, 3E694, 3E672, 3E650, 3E62E, 3E60C, 3E5EA, 3E5C8, 3E5A6, 3E585, 3E563, 3E542, 3E521, 3E500, 3E4E0, 3E4BF, 3E49F, 3E47E, 3E45E, 3E43E, 3E41F, 3E3FF, 3E3E0, 3E3C1, 3E3A2, 3E383, 3E364, 3E346, 3E328, 3E30A, 3E2EC, 3E2CF, 3E2B2, 3E295, 3E278, 3E25C, 3E240, 3E224, 3E208, 3E1ED, 3E1D2, 3E1B7, 3E19C, 3E182, 3E168, 3E14E, 3E135, 3E11C, 3E103, 3E0EB, 3E0D3, 3E0BB, 3E0A4, 3E08D, 3E076, 3E060, 3E04A, 3E034, 3E01F, 3E00A, 3DFF6, 3DFE2, 3DFCE, 3DFBB, 3DFA8, 3DF95, 3DF83, 3DF72, 3DF60, 3DF50, 3DF3F, 3DF2F, 3DF20, 3DF11, 3DF02, 3DEF4, 3DEE6, 3DED9, 3DECD, 3DEC0, 3DEB5, 3DEA9, 3DE9F, 3DE94, 3DE8B, 3DE82, 3DE79, 3DE71, 3DE69, 3DE62, 3DE5C, 3DE56, 3DE50, 3DE4C, 3DE47, 3DE44, 3DE41, 3DE3E, 3DE3C, 3DE3B, 3DE3A, 3DE3A, 3DE3A, 3DE3C, 3DE3D, 3DE40, 3DE43, 3DE46, 3DE4B, 3DE50, 3DE55, 3DE5C, 3DE63, 3DE6A, 3DE73, 3DE7C, 3DE85, 3DE90, 3DE9B, 3DEA7, 3DEB3, 3DEC1, 3DECF, 3DEDD, 3DEED, 3DEFD, 3DF0E, 3DF20, 3DF33, 3DF46, 3DF5A, 3DF6F, 3DF84, 3DF9B, 3DFB2, 3DFCA, 3DFE3, 3DFFD, 3E017, 3E032, 3E04E, 3E06B, 3E089, 3E0A8, 3E0C7, 3E0E8, 3E109, 3E12B, 3E14E, 3E172, 3E197, 3E1BC, 3E1E3, 3E20A, 3E233, 3E25C, 3E286, 3E2B1, 3E2DD, 3E30A, 3E338, 3E367, 3E397, 3E3C8, 3E3F9, 3E42C, 3E460, 3E494, 3E4CA, 3E500, 3E538, 3E571, 3E5AA, 3E5E5, 3E620, 3E65D, 3E69A, 3E6D9, 3E719, 3E75A, 3E79B, 3E7DE, 3E822, 3E867, 3E8AD, 3E8F4, 3E93C, 3E985, 3E9CF, 3EA1B, 3EA67, 3EAB4, 3EB03, 3EB53, 3EBA3, 3EBF5, 3EC48, 3EC9C, 3ECF2, 3ED48, 3ED9F, 3EDF8, 3EE52, 3EEAD, 3EF09, 3EF66, 3EFC4, 3F024, 3F084, 3F0E6, 3F149, 3F1AD, 3F212, 3F279, 3F2E0, 3F349, 3F3B3, 3F41E, 3F48B, 3F4F8, 3F567, 3F5D7, 3F648, 3F6BB, 3F72F, 3F7A3, 3F819, 3F891, 3F909, 3F983, 3F9FE, 3FA7A, 3FAF8, 3FB76, 3FBF6, 3FC77, 3FCFA, 3FD7D, 3FE02, 3FE89, 3FF10, 3FF99;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_d5b7eb23678de10c',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '838f65d094c369a4c610a0660816401f',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_d5b7eb23678de10c',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 23, AE, 13A, 1C8, 257, 2E7, 379, 40C, 4A0, 535, 5CC, 664, 6FD, 798, 833, 8D1, 96F, A0F, AB0, B52, BF5, C9A, D40, DE8, E91, F3B, FE6, 1093, 1141, 11F0, 12A0, 1352, 1406, 14BA, 1570, 1627, 16DF, 1799, 1854, 1910, 19CE, 1A8D, 1B4D, 1C0F, 1CD2, 1D96, 1E5B, 1F22, 1FEA, 20B3, 217E, 224A, 2317, 23E6, 24B6, 2587, 2659, 272D, 2802, 28D9, 29B0, 2A89, 2B64, 2C3F, 2D1C, 2DFA, 2EDA, 2FBA, 309C, 317F, 3264, 334A, 3431, 3519, 3603, 36EE, 37DA, 38C7, 39B6, 3AA6, 3B97, 3C8A, 3D7D, 3E72, 3F68, 4060, 4159, 4253, 434E, 444A, 4548, 4646, 4747, 4848, 494A, 4A4E, 4B53, 4C59, 4D60, 4E69, 4F72, 507D, 5189, 5297, 53A5, 54B5, 55C5, 56D7, 57EA, 58FF, 5A14, 5B2B, 5C42, 5D5B, 5E75, 5F90, 60AC, 61C9, 62E8, 6407, 6528, 664A, 676D, 6890, 69B5, 6ADB, 6C03, 6D2B, 6E54, 6F7E, 70AA, 71D6, 7303, 7432, 7561, 7692, 77C3, 78F6, 7A29, 7B5E, 7C93, 7DC9, 7F01, 8039, 8173, 82AD, 83E8, 8524, 8661, 879F, 88DE, 8A1E, 8B5F, 8CA0, 8DE3, 8F26, 906B, 91B0, 92F6, 943D, 9584, 96CD, 9816, 9960, 9AAB, 9BF7, 9D44, 9E91, 9FDF, A12E, A27E, A3CE, A51F, A671, A7C4, A917, AA6B, ABC0, AD16, AE6C, AFC3, B11A, B272, B3CB, B525, B67F, B7DA, B935, BA91, BBED, BD4B, BEA8, C007, C165, C2C5, C425, C585, C6E6, C848, C9AA, CB0C, CC6F, CDD3, CF37, D09B, D200, D365, D4CB, D631, D797, D8FE, DA65, DBCD, DD35, DE9D, E006, E16F, E2D8, E442, E5AC, E716, E881, E9EC, EB57, ECC2, EE2D, EF99, F105, F271, F3DE, F54A, F6B7, F824, F991, FAFE, FC6B, FDD9, FF46, 100B4, 10222, 1038F, 104FD, 1066B, 107D9, 10947, 10AB5, 10C23, 10D91, 10EFF, 1106C, 111DA, 11348, 114B6, 11623, 11791, 118FE, 11A6C, 11BD9, 11D46, 11EB3, 12020, 1218C, 122F9, 12465, 125D1, 1273D, 128A9, 12A14, 12B7F, 12CEA, 12E54, 12FBF, 13129, 13292, 133FC, 13565, 136CD, 13836, 1399E, 13B05, 13C6C, 13DD3, 13F39, 1409F, 14205, 1436A, 144CE, 14632, 14796, 148F9, 14A5C, 14BBE, 14D1F, 14E80, 14FE1, 15140, 152A0, 153FE, 1555C, 156BA, 15817, 15973, 15ACE, 15C29, 15D83, 15EDD, 16035, 1618D, 162E5, 1643B, 16591, 166E6, 1683A, 1698E, 16AE1, 16C32, 16D84, 16ED4, 17023, 17172, 172BF, 1740C, 17558, 176A3, 177ED, 17936, 17A7E, 17BC6, 17D0C, 17E51, 17F96, 180D9, 1821B, 1835D, 1849D, 185DC, 1871B, 18858, 18994, 18ACF, 18C09, 18D41, 18E79, 18FB0, 190E5, 19219, 1934C, 1947E, 195AF, 196DE, 1980D, 1993A, 19A66, 19B90, 19CBA, 19DE2, 19F09, 1A02E, 1A152, 1A275, 1A397, 1A4B7, 1A5D6, 1A6F4, 1A810, 1A92B, 1AA44, 1AB5D, 1AC73, 1AD89, 1AE9D, 1AFAF, 1B0C0, 1B1D0, 1B2DE, 1B3EB, 1B4F6, 1B5FF, 1B708, 1B80E, 1B913, 1BA17, 1BB19, 1BC1A, 1BD19, 1BE16, 1BF12, 1C00C, 1C105, 1C1FC, 1C2F2, 1C3E6, 1C4D8, 1C5C8, 1C6B7, 1C7A5, 1C890, 1C97A, 1CA62, 1CB49, 1CC2E, 1CD11, 1CDF2, 1CED2, 1CFB0, 1D08C, 1D167, 1D240, 1D316, 1D3EC, 1D4BF, 1D591, 1D661, 1D72F, 1D7FB, 1D8C5, 1D98E, 1DA54, 1DB19, 1DBDC, 1DC9D, 1DD5D, 1DE1A, 1DED6, 1DF8F, 1E047, 1E0FD, 1E1B1, 1E263, 1E313, 1E3C1, 1E46D, 1E517, 1E5C0, 1E666, 1E70B, 1E7AD, 1E84D, 1E8EC, 1E988, 1EA23, 1EABB, 1EB52, 1EBE6, 1EC79, 1ED09, 1ED98, 1EE24, 1EEAF, 1EF37, 1EFBD, 1F041, 1F0C4, 1F144, 1F1C2, 1F23E, 1F2B8, 1F32F, 1F3A5, 1F419, 1F48A, 1F4FA, 1F567, 1F5D2, 1F63B, 1F6A2, 1F707, 1F76A, 1F7CB, 1F829, 1F885, 1F8E0, 1F938, 1F98E, 1F9E1, 1FA33, 1FA82, 1FAD0, 1FB1B, 1FB64, 1FBAB, 1FBEF, 1FC32, 1FC72, 1FCB0, 1FCEC, 1FD26, 1FD5D, 1FD93, 1FDC6, 1FDF7, 1FE26, 1FE52, 1FE7D, 1FEA5, 1FECB, 1FEEF, 1FF11, 1FF30, 1FF4D, 1FF68, 1FF81, 1FF98, 1FFAC, 1FFBE, 1FFCE, 1FFDC, 1FFE7, 1FFF1, 1FFF8, 1FFFD, 1FFFF;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_5f21d4ff216b1fd0',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '2dd3bd97d2d1e981dbb073903f35d2de',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_5f21d4ff216b1fd0',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 1FFFF, 1FFFE, 1FFFA, 1FFF4, 1FFEC, 1FFE1, 1FFD4, 1FFC5, 1FFB4, 1FFA1, 1FF8B, 1FF73, 1FF59, 1FF3D, 1FF1E, 1FEFE, 1FEDB, 1FEB6, 1FE8F, 1FE65, 1FE3A, 1FE0C, 1FDDC, 1FDA9, 1FD75, 1FD3E, 1FD06, 1FCCB, 1FC8D, 1FC4E, 1FC0D, 1FBC9, 1FB83, 1FB3B, 1FAF1, 1FAA4, 1FA56, 1FA05, 1F9B2, 1F95D, 1F906, 1F8AD, 1F852, 1F7F4, 1F794, 1F732, 1F6CF, 1F668, 1F600, 1F596, 1F52A, 1F4BB, 1F44A, 1F3D8, 1F363, 1F2EC, 1F273, 1F1F8, 1F17B, 1F0FC, 1F07A, 1EFF7, 1EF72, 1EEEA, 1EE61, 1EDD5, 1ED48, 1ECB8, 1EC27, 1EB93, 1EAFD, 1EA66, 1E9CC, 1E930, 1E893, 1E7F3, 1E752, 1E6AE, 1E609, 1E561, 1E4B8, 1E40C, 1E35F, 1E2B0, 1E1FF, 1E14C, 1E097, 1DFE0, 1DF27, 1DE6C, 1DDB0, 1DCF1, 1DC31, 1DB6F, 1DAAB, 1D9E5, 1D91D, 1D853, 1D788, 1D6BB, 1D5EC, 1D51B, 1D448, 1D374, 1D29E, 1D1C6, 1D0EC, 1D011, 1CF33, 1CE54, 1CD74, 1CC91, 1CBAD, 1CAC7, 1C9E0, 1C8F7, 1C80C, 1C71F, 1C631, 1C541, 1C450, 1C35C, 1C268, 1C171, 1C079, 1BF80, 1BE85, 1BD88, 1BC8A, 1BB8A, 1BA88, 1B985, 1B881, 1B77B, 1B673, 1B56A, 1B460, 1B354, 1B246, 1B137, 1B027, 1AF15, 1AE02, 1ACED, 1ABD7, 1AABF, 1A9A6, 1A88C, 1A770, 1A653, 1A535, 1A415, 1A2F4, 1A1D2, 1A0AE, 19F89, 19E63, 19D3C, 19C13, 19AE9, 199BD, 19891, 19763, 19634, 19504, 193D3, 192A0, 1916C, 19037, 18F01, 18DCA, 18C92, 18B59, 18A1E, 188E3, 187A6, 18668, 18529, 183E9, 182A9, 18167, 18024, 17EE0, 17D9B, 17C55, 17B0E, 179C7, 1787E, 17734, 175EA, 1749E, 17352, 17204, 170B6, 16F67, 16E17, 16CC7, 16B75, 16A23, 168D0, 1677C, 16627, 164D2, 1637C, 16225, 160CD, 15F74, 15E1B, 15CC1, 15B67, 15A0C, 158B0, 15753, 155F6, 15499, 1533A, 151DB, 1507C, 14F1C, 14DBB, 14C5A, 14AF8, 14996, 14833, 146CF, 1456C, 14407, 142A2, 1413D, 13FD7, 13E71, 13D0B, 13BA4, 13A3C, 138D5, 1376D, 13604, 1349B, 13332, 131C9, 1305F, 12EF5, 12D8A, 12C20, 12AB5, 12949, 127DE, 12672, 12506, 1239A, 1222E, 120C1, 11F55, 11DE8, 11C7B, 11B0E, 119A0, 11833, 116C5, 11558, 113EA, 1127C, 1110F, 10FA1, 10E33, 10CC5, 10B57, 109E9, 1087B, 1070D, 105A0, 10432, 102C4, 10156, FFE9, FE7B, FD0E, FBA0, FA33, F8C6, F759, F5EC, F480, F313, F1A7, F03B, EECF, ED64, EBF8, EA8D, E922, E7B8, E64D, E4E3, E37A, E210, E0A7, DF3E, DDD6, DC6E, DB06, D99F, D838, D6D1, D56B, D405, D29F, D13A, CFD6, CE72, CD0E, CBAB, CA48, C8E6, C784, C623, C4C3, C362, C203, C0A4, BF45, BDE7, BC8A, BB2D, B9D1, B875, B71A, B5C0, B466, B30D, B1B5, B05D, AF06, ADB0, AC5A, AB05, A9B0, A85D, A70A, A5B8, A466, A315, A1C5, A076, 9F28, 9DDA, 9C8D, 9B41, 99F6, 98AB, 9761, 9619, 94D1, 9389, 9243, 90FE, 8FB9, 8E75, 8D32, 8BF0, 8AAF, 896F, 8830, 86F1, 85B4, 8477, 833C, 8201, 80C7, 7F8F, 7E57, 7D20, 7BEA, 7AB5, 7981, 784F, 771D, 75EC, 74BC, 738D, 725F, 7132, 7007, 6EDC, 6DB2, 6C8A, 6B62, 6A3C, 6916, 67F2, 66CF, 65AD, 648C, 636C, 624D, 612F, 6012, 5EF7, 5DDC, 5CC3, 5BAB, 5A94, 597E, 5869, 5756, 5643, 5532, 5422, 5313, 5206, 50F9, 4FEE, 4EE3, 4DDA, 4CD3, 4BCC, 4AC7, 49C2, 48BF, 47BE, 46BD, 45BE, 44C0, 43C3, 42C7, 41CD, 40D4, 3FDC, 3EE5, 3DEF, 3CFB, 3C08, 3B16, 3A26, 3937, 3849, 375C, 3671, 3587, 349E, 33B6, 32D0, 31EB, 3107, 3024, 2F43, 2E63, 2D85, 2CA7, 2BCB, 2AF0, 2A17, 293F, 2868, 2792, 26BE, 25EB, 2519, 2448, 2379, 22AB, 21DF, 2114, 204A, 1F81, 1EBA, 1DF4, 1D2F, 1C6C, 1BAA, 1AE9, 1A29, 196B, 18AE, 17F3, 1738, 167F, 15C8, 1512, 145C, 13A9, 12F6, 1245, 1195, 10E7, 103A, F8E, EE3, E3A, D92, CEB, C46, BA2, AFF, A5D, 9BD, 91E, 880, 7E4, 749, 6AF, 617, 580, 4EA, 455, 3C2, 32F, 29F, 20F, 181, F4, 68;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_745dba485f20f896',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '7344ec21e0ff4d0904b3be0be92c6348',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_745dba485f20f896',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 3FFDD, 3FF54, 3FECC, 3FE46, 3FDC0, 3FD3C, 3FCB9, 3FC37, 3FBB7, 3FB38, 3FABA, 3FA3D, 3F9C1, 3F947, 3F8CE, 3F856, 3F7E0, 3F76A, 3F6F6, 3F683, 3F611, 3F5A1, 3F532, 3F4C3, 3F457, 3F3EB, 3F380, 3F317, 3F2AF, 3F248, 3F1E2, 3F17D, 3F11A, 3F0B8, 3F057, 3EFF7, 3EF98, 3EF3A, 3EEDE, 3EE82, 3EE28, 3EDCF, 3ED77, 3ED20, 3ECCA, 3EC76, 3EC22, 3EBD0, 3EB7F, 3EB2F, 3EAE0, 3EA92, 3EA45, 3E9F9, 3E9AE, 3E965, 3E91C, 3E8D5, 3E88E, 3E849, 3E805, 3E7C1, 3E77F, 3E73E, 3E6FE, 3E6BF, 3E681, 3E644, 3E608, 3E5CD, 3E592, 3E559, 3E521, 3E4EA, 3E4B4, 3E47F, 3E44B, 3E418, 3E3E6, 3E3B5, 3E385, 3E355, 3E327, 3E2FA, 3E2CD, 3E2A2, 3E277, 3E24D, 3E225, 3E1FD, 3E1D6, 3E1B0, 3E18B, 3E166, 3E143, 3E121, 3E0FF, 3E0DE, 3E0BE, 3E09F, 3E081, 3E064, 3E047, 3E02B, 3E011, 3DFF7, 3DFDD, 3DFC5, 3DFAD, 3DF97, 3DF81, 3DF6B, 3DF57, 3DF43, 3DF30, 3DF1E, 3DF0D, 3DEFC, 3DEED, 3DEDD, 3DECF, 3DEC1, 3DEB5, 3DEA8, 3DE9D, 3DE92, 3DE88, 3DE7F, 3DE76, 3DE6E, 3DE67, 3DE60, 3DE5A, 3DE55, 3DE50, 3DE4C, 3DE49, 3DE46, 3DE44, 3DE43, 3DE42, 3DE42, 3DE42, 3DE43, 3DE45, 3DE47, 3DE4A, 3DE4D, 3DE51, 3DE56, 3DE5B, 3DE61, 3DE67, 3DE6E, 3DE75, 3DE7D, 3DE85, 3DE8E, 3DE98, 3DEA2, 3DEAC, 3DEB7, 3DEC3, 3DECF, 3DEDB, 3DEE8, 3DEF5, 3DF03, 3DF12, 3DF20, 3DF30, 3DF3F, 3DF50, 3DF60, 3DF71, 3DF83, 3DF95, 3DFA7, 3DFBA, 3DFCD, 3DFE0, 3DFF4, 3E008, 3E01D, 3E032, 3E047, 3E05D, 3E073, 3E08A, 3E0A1, 3E0B8, 3E0CF, 3E0E7, 3E0FF, 3E118, 3E131, 3E14A, 3E163, 3E17D, 3E197, 3E1B2, 3E1CC, 3E1E7, 3E202, 3E21E, 3E23A, 3E256, 3E272, 3E28F, 3E2AB, 3E2C8, 3E2E6, 3E303, 3E321, 3E33F, 3E35D, 3E37C, 3E39A, 3E3B9, 3E3D8, 3E3F7, 3E417, 3E436, 3E456, 3E476, 3E496, 3E4B6, 3E4D7, 3E4F8, 3E518, 3E539, 3E55A, 3E57C, 3E59D, 3E5BF, 3E5E0, 3E602, 3E624, 3E646, 3E668, 3E68A, 3E6AD, 3E6CF, 3E6F2, 3E714, 3E737, 3E75A, 3E77D, 3E7A0, 3E7C3, 3E7E6, 3E809, 3E82D, 3E850, 3E873, 3E897, 3E8BA, 3E8DE, 3E901, 3E925, 3E949, 3E96C, 3E990, 3E9B4, 3E9D8, 3E9FB, 3EA1F, 3EA43, 3EA67, 3EA8B, 3EAAF, 3EAD2, 3EAF6, 3EB1A, 3EB3E, 3EB62, 3EB85, 3EBA9, 3EBCD, 3EBF1, 3EC14, 3EC38, 3EC5C, 3EC7F, 3ECA3, 3ECC6, 3ECEA, 3ED0D, 3ED30, 3ED54, 3ED77, 3ED9A, 3EDBD, 3EDE0, 3EE03, 3EE26, 3EE49, 3EE6C, 3EE8F, 3EEB1, 3EED4, 3EEF7, 3EF19, 3EF3B, 3EF5D, 3EF80, 3EFA2, 3EFC4, 3EFE6, 3F007, 3F029, 3F04B, 3F06C, 3F08D, 3F0AF, 3F0D0, 3F0F1, 3F112, 3F133, 3F153, 3F174, 3F194, 3F1B5, 3F1D5, 3F1F5, 3F215, 3F235, 3F255, 3F274, 3F294, 3F2B3, 3F2D2, 3F2F1, 3F310, 3F32F, 3F34E, 3F36C, 3F38B, 3F3A9, 3F3C7, 3F3E5, 3F403, 3F420, 3F43E, 3F45B, 3F478, 3F496, 3F4B3, 3F4CF, 3F4EC, 3F508, 3F525, 3F541, 3F55D, 3F579, 3F595, 3F5B0, 3F5CC, 3F5E7, 3F602, 3F61D, 3F638, 3F653, 3F66D, 3F687, 3F6A2, 3F6BC, 3F6D5, 3F6EF, 3F709, 3F722, 3F73B, 3F754, 3F76D, 3F786, 3F79F, 3F7B7, 3F7CF, 3F7E8, 3F800, 3F817, 3F82F, 3F846, 3F85E, 3F875, 3F88C, 3F8A3, 3F8BA, 3F8D0, 3F8E6, 3F8FD, 3F913, 3F929, 3F93E, 3F954, 3F96A, 3F97F, 3F994, 3F9A9, 3F9BE, 3F9D3, 3F9E7, 3F9FB, 3FA10, 3FA24, 3FA38, 3FA4C, 3FA5F, 3FA73, 3FA86, 3FA99, 3FAAC, 3FABF, 3FAD2, 3FAE5, 3FAF7, 3FB09, 3FB1C, 3FB2E, 3FB40, 3FB51, 3FB63, 3FB75, 3FB86, 3FB97, 3FBA8, 3FBB9, 3FBCA, 3FBDB, 3FBEB, 3FBFC, 3FC0C, 3FC1D, 3FC2D, 3FC3D, 3FC4C, 3FC5C, 3FC6C, 3FC7B, 3FC8B, 3FC9A, 3FCA9, 3FCB8, 3FCC7, 3FCD6, 3FCE4, 3FCF3, 3FD01, 3FD10, 3FD1E, 3FD2C, 3FD3A, 3FD48, 3FD56, 3FD64, 3FD71, 3FD7F, 3FD8C, 3FD99, 3FDA7, 3FDB4, 3FDC1, 3FDCE, 3FDDB, 3FDE8, 3FDF4, 3FE01, 3FE0D, 3FE1A, 3FE26, 3FE33, 3FE3F, 3FE4B, 3FE57, 3FE63, 3FE6F, 3FE7B, 3FE87, 3FE92, 3FE9E, 3FEAA, 3FEB5, 3FEC1, 3FECC, 3FED7, 3FEE3, 3FEEE, 3FEF9, 3FF04, 3FF0F, 3FF1A, 3FF25, 3FF30, 3FF3B, 3FF46, 3FF51, 3FF5B, 3FF66, 3FF71, 3FF7B, 3FF86, 3FF91, 3FF9B, 3FFA5, 3FFB0, 3FFBA, 3FFC5, 3FFCF, 3FFD9, 3FFE4, 3FFEE, 3FFF8;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_23ab077301fa4682',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '6bb1c10682b448005ab8f6277dcb8e38',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_23ab077301fa4682',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 3FFFB, 3FFF1, 3FFE6, 3FFDC, 3FFD2, 3FFC7, 3FFBD, 3FFB3, 3FFA8, 3FF9E, 3FF93, 3FF89, 3FF7E, 3FF73, 3FF69, 3FF5E, 3FF53, 3FF49, 3FF3E, 3FF33, 3FF28, 3FF1D, 3FF12, 3FF07, 3FEFC, 3FEF1, 3FEE5, 3FEDA, 3FECF, 3FEC3, 3FEB8, 3FEAC, 3FEA1, 3FE95, 3FE89, 3FE7E, 3FE72, 3FE66, 3FE5A, 3FE4E, 3FE42, 3FE35, 3FE29, 3FE1D, 3FE10, 3FE04, 3FDF7, 3FDEA, 3FDDE, 3FDD1, 3FDC4, 3FDB7, 3FDAA, 3FD9C, 3FD8F, 3FD82, 3FD74, 3FD66, 3FD59, 3FD4B, 3FD3D, 3FD2F, 3FD21, 3FD13, 3FD04, 3FCF6, 3FCE7, 3FCD9, 3FCCA, 3FCBB, 3FCAC, 3FC9D, 3FC8E, 3FC7E, 3FC6F, 3FC5F, 3FC4F, 3FC40, 3FC30, 3FC20, 3FC0F, 3FBFF, 3FBEF, 3FBDE, 3FBCD, 3FBBD, 3FBAC, 3FB9A, 3FB89, 3FB78, 3FB66, 3FB55, 3FB43, 3FB31, 3FB1F, 3FB0D, 3FAFA, 3FAE8, 3FAD5, 3FAC2, 3FAB0, 3FA9D, 3FA89, 3FA76, 3FA63, 3FA4F, 3FA3B, 3FA27, 3FA13, 3F9FF, 3F9EA, 3F9D6, 3F9C1, 3F9AC, 3F997, 3F982, 3F96D, 3F958, 3F942, 3F92C, 3F916, 3F900, 3F8EA, 3F8D4, 3F8BD, 3F8A6, 3F88F, 3F878, 3F861, 3F84A, 3F833, 3F81B, 3F803, 3F7EB, 3F7D3, 3F7BB, 3F7A2, 3F78A, 3F771, 3F758, 3F73F, 3F726, 3F70C, 3F6F3, 3F6D9, 3F6BF, 3F6A5, 3F68B, 3F671, 3F656, 3F63C, 3F621, 3F606, 3F5EB, 3F5CF, 3F5B4, 3F598, 3F57D, 3F561, 3F545, 3F528, 3F50C, 3F4F0, 3F4D3, 3F4B6, 3F499, 3F47C, 3F45F, 3F441, 3F424, 3F406, 3F3E8, 3F3CA, 3F3AC, 3F38E, 3F370, 3F351, 3F333, 3F314, 3F2F5, 3F2D6, 3F2B6, 3F297, 3F278, 3F258, 3F238, 3F218, 3F1F8, 3F1D8, 3F1B8, 3F198, 3F177, 3F157, 3F136, 3F115, 3F0F4, 3F0D3, 3F0B2, 3F091, 3F06F, 3F04E, 3F02C, 3F00B, 3EFE9, 3EFC7, 3EFA5, 3EF83, 3EF61, 3EF3F, 3EF1C, 3EEFA, 3EED7, 3EEB5, 3EE92, 3EE6F, 3EE4C, 3EE2A, 3EE07, 3EDE4, 3EDC0, 3ED9D, 3ED7A, 3ED57, 3ED33, 3ED10, 3ECED, 3ECC9, 3ECA6, 3EC82, 3EC5E, 3EC3B, 3EC17, 3EBF3, 3EBD0, 3EBAC, 3EB88, 3EB64, 3EB40, 3EB1D, 3EAF9, 3EAD5, 3EAB1, 3EA8D, 3EA69, 3EA45, 3EA22, 3E9FE, 3E9DA, 3E9B6, 3E992, 3E96F, 3E94B, 3E927, 3E904, 3E8E0, 3E8BC, 3E899, 3E875, 3E852, 3E82E, 3E80B, 3E7E8, 3E7C5, 3E7A2, 3E77F, 3E75C, 3E739, 3E716, 3E6F3, 3E6D1, 3E6AE, 3E68C, 3E669, 3E647, 3E625, 3E603, 3E5E1, 3E5C0, 3E59E, 3E57C, 3E55B, 3E53A, 3E519, 3E4F8, 3E4D7, 3E4B7, 3E496, 3E476, 3E456, 3E436, 3E417, 3E3F7, 3E3D8, 3E3B9, 3E39A, 3E37B, 3E35D, 3E33F, 3E320, 3E303, 3E2E5, 3E2C8, 3E2AB, 3E28E, 3E271, 3E255, 3E239, 3E21D, 3E201, 3E1E6, 3E1CB, 3E1B0, 3E196, 3E17C, 3E162, 3E148, 3E12F, 3E116, 3E0FD, 3E0E5, 3E0CD, 3E0B5, 3E09E, 3E087, 3E071, 3E05A, 3E045, 3E02F, 3E01A, 3E005, 3DFF1, 3DFDD, 3DFC9, 3DFB6, 3DFA3, 3DF91, 3DF7F, 3DF6D, 3DF5C, 3DF4B, 3DF3B, 3DF2B, 3DF1C, 3DF0D, 3DEFF, 3DEF1, 3DEE3, 3DED6, 3DEC9, 3DEBD, 3DEB2, 3DEA7, 3DE9C, 3DE92, 3DE88, 3DE7F, 3DE77, 3DE6F, 3DE67, 3DE61, 3DE5A, 3DE54, 3DE4F, 3DE4A, 3DE46, 3DE43, 3DE40, 3DE3D, 3DE3C, 3DE3B, 3DE3A, 3DE3A, 3DE3B, 3DE3C, 3DE3E, 3DE40, 3DE44, 3DE47, 3DE4C, 3DE51, 3DE57, 3DE5D, 3DE65, 3DE6C, 3DE75, 3DE7E, 3DE88, 3DE93, 3DE9E, 3DEAA, 3DEB7, 3DEC4, 3DED2, 3DEE1, 3DEF1, 3DF01, 3DF13, 3DF25, 3DF37, 3DF4B, 3DF5F, 3DF74, 3DF8A, 3DFA1, 3DFB8, 3DFD0, 3DFE9, 3E003, 3E01E, 3E039, 3E056, 3E073, 3E091, 3E0B0, 3E0CF, 3E0F0, 3E111, 3E134, 3E157, 3E17B, 3E1A0, 3E1C6, 3E1ED, 3E214, 3E23D, 3E266, 3E291, 3E2BC, 3E2E8, 3E316, 3E344, 3E373, 3E3A3, 3E3D4, 3E406, 3E439, 3E46D, 3E4A2, 3E4D7, 3E50E, 3E546, 3E57F, 3E5B9, 3E5F3, 3E62F, 3E66C, 3E6AA, 3E6E9, 3E729, 3E76A, 3E7AC, 3E7EF, 3E833, 3E878, 3E8BE, 3E906, 3E94E, 3E997, 3E9E2, 3EA2E, 3EA7A, 3EAC8, 3EB17, 3EB67, 3EBB8, 3EC0A, 3EC5D, 3ECB2, 3ED07, 3ED5E, 3EDB5, 3EE0E, 3EE68, 3EEC3, 3EF20, 3EF7D, 3EFDC, 3F03C, 3F09C, 3F0FF, 3F162, 3F1C6, 3F22C, 3F293, 3F2FA, 3F364, 3F3CE, 3F439, 3F4A6, 3F514, 3F583, 3F5F3, 3F665, 3F6D8, 3F74C, 3F7C1, 3F837, 3F8AF, 3F928, 3F9A2, 3FA1D, 3FA99, 3FB17, 3FB96, 3FC16, 3FC98, 3FD1B, 3FD9F, 3FE24, 3FEAA, 3FF32, 3FFBB;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_1aa0829514e8ac73',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '639e4e15deeb68f6a2f67b0907b2240a',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_1aa0829514e8ac73',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 45, D1, 15E, 1EC, 27B, 30C, 39D, 431, 4C5, 55B, 5F2, 68A, 724, 7BE, 85B, 8F8, 997, A37, AD8, B7B, C1E, CC4, D6A, E12, EBB, F65, 1011, 10BE, 116C, 121C, 12CD, 137F, 1433, 14E7, 159D, 1655, 170E, 17C8, 1883, 1940, 19FE, 1ABD, 1B7D, 1C3F, 1D02, 1DC7, 1E8D, 1F54, 201C, 20E6, 21B1, 227D, 234B, 241A, 24EA, 25BB, 268E, 2762, 2838, 290F, 29E7, 2AC0, 2B9A, 2C76, 2D53, 2E32, 2F12, 2FF3, 30D5, 31B8, 329D, 3383, 346B, 3554, 363D, 3729, 3815, 3903, 39F2, 3AE2, 3BD4, 3CC6, 3DBA, 3EB0, 3FA6, 409E, 4197, 4291, 438D, 4489, 4587, 4686, 4787, 4888, 498B, 4A8F, 4B94, 4C9B, 4DA2, 4EAB, 4FB5, 50C0, 51CD, 52DA, 53E9, 54F9, 560A, 571C, 582F, 5944, 5A5A, 5B70, 5C88, 5DA1, 5EBC, 5FD7, 60F3, 6211, 6330, 644F, 6570, 6692, 67B5, 68DA, 69FF, 6B25, 6C4C, 6D75, 6E9E, 6FC9, 70F5, 7221, 734F, 747D, 75AD, 76DE, 7810, 7942, 7A76, 7BAB, 7CE1, 7E17, 7F4F, 8087, 81C1, 82FB, 8437, 8573, 86B1, 87EF, 892E, 8A6E, 8BAF, 8CF1, 8E34, 8F77, 90BC, 9201, 9347, 948E, 95D6, 971F, 9869, 99B3, 9AFE, 9C4A, 9D97, 9EE4, A033, A182, A2D2, A422, A574, A6C6, A819, A96C, AAC1, AC16, AD6B, AEC2, B019, B170, B2C9, B422, B57B, B6D5, B830, B98C, BAE8, BC45, BDA2, BF00, C05E, C1BD, C31D, C47D, C5DD, C73F, C8A0, CA02, CB65, CCC8, CE2C, CF90, D0F4, D259, D3BE, D524, D68A, D7F1, D958, DABF, DC27, DD8F, DEF8, E060, E1C9, E333, E49D, E607, E771, E8DB, EA46, EBB1, ED1D, EE88, EFF4, F160, F2CC, F439, F5A5, F712, F87F, F9EC, FB59, FCC7, FE34, FFA2, 1010F, 1027D, 103EB, 10559, 106C6, 10834, 109A2, 10B10, 10C7E, 10DEC, 10F5A, 110C8, 11236, 113A4, 11511, 1167F, 117EC, 1195A, 11AC7, 11C34, 11DA1, 11F0E, 1207B, 121E8, 12354, 124C0, 1262C, 12798, 12903, 12A6F, 12BDA, 12D45, 12EAF, 13019, 13183, 132ED, 13456, 135BF, 13728, 13890, 139F8, 13B5F, 13CC6, 13E2D, 13F93, 140F9, 1425E, 143C3, 14527, 1468B, 147EF, 14952, 14AB4, 14C16, 14D78, 14ED8, 15039, 15198, 152F7, 15456, 155B4, 15711, 1586E, 159CA, 15B25, 15C80, 15DDA, 15F33, 1608B, 161E3, 1633A, 16491, 165E6, 1673B, 1688F, 169E3, 16B35, 16C87, 16DD8, 16F28, 17077, 171C5, 17313, 1745F, 175AB, 176F6, 1783F, 17988, 17AD0, 17C17, 17D5D, 17EA3, 17FE7, 1812A, 1826C, 183AD, 184ED, 1862C, 1876A, 188A7, 189E3, 18B1D, 18C57, 18D8F, 18EC7, 18FFD, 19132, 19266, 19399, 194CA, 195FB, 1972A, 19858, 19985, 19AB0, 19BDB, 19D04, 19E2C, 19F52, 1A077, 1A19B, 1A2BE, 1A3DF, 1A4FF, 1A61E, 1A73B, 1A857, 1A971, 1AA8B, 1ABA2, 1ACB9, 1ADCE, 1AEE1, 1AFF3, 1B104, 1B213, 1B321, 1B42D, 1B538, 1B642, 1B749, 1B850, 1B955, 1BA58, 1BB5A, 1BC5A, 1BD58, 1BE55, 1BF51, 1C04B, 1C143, 1C23A, 1C32F, 1C422, 1C514, 1C604, 1C6F3, 1C7E0, 1C8CB, 1C9B4, 1CA9C, 1CB82, 1CC67, 1CD49, 1CE2A, 1CF0A, 1CFE7, 1D0C3, 1D19D, 1D275, 1D34C, 1D421, 1D4F4, 1D5C5, 1D694, 1D762, 1D82D, 1D8F7, 1D9BF, 1DA86, 1DB4A, 1DC0D, 1DCCD, 1DD8C, 1DE49, 1DF04, 1DFBD, 1E075, 1E12A, 1E1DD, 1E28F, 1E33E, 1E3EC, 1E498, 1E542, 1E5EA, 1E68F, 1E733, 1E7D5, 1E875, 1E913, 1E9AF, 1EA49, 1EAE1, 1EB77, 1EC0B, 1EC9D, 1ED2D, 1EDBB, 1EE47, 1EED1, 1EF59, 1EFDE, 1F062, 1F0E4, 1F163, 1F1E1, 1F25C, 1F2D6, 1F34D, 1F3C2, 1F435, 1F4A6, 1F515, 1F582, 1F5ED, 1F655, 1F6BC, 1F720, 1F782, 1F7E2, 1F840, 1F89C, 1F8F6, 1F94D, 1F9A3, 1F9F6, 1FA47, 1FA96, 1FAE3, 1FB2D, 1FB76, 1FBBC, 1FC00, 1FC42, 1FC82, 1FCBF, 1FCFB, 1FD34, 1FD6B, 1FDA0, 1FDD2, 1FE03, 1FE31, 1FE5D, 1FE87, 1FEAF, 1FED4, 1FEF8, 1FF19, 1FF37, 1FF54, 1FF6F, 1FF87, 1FF9D, 1FFB1, 1FFC2, 1FFD2, 1FFDF, 1FFEA, 1FFF3, 1FFF9, 1FFFE, 1FFFF;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_83fe0806cdc0420f',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'be87aca3823bc51074dad20fac3d2271',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_83fe0806cdc0420f',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 1FFFF, 1FFFD, 1FFF9, 1FFF2, 1FFE9, 1FFDE, 1FFD1, 1FFC1, 1FFAF, 1FF9C, 1FF85, 1FF6D, 1FF52, 1FF36, 1FF17, 1FEF5, 1FED2, 1FEAC, 1FE84, 1FE5A, 1FE2E, 1FE00, 1FDCF, 1FD9C, 1FD67, 1FD30, 1FCF7, 1FCBB, 1FC7E, 1FC3E, 1FBFC, 1FBB8, 1FB71, 1FB29, 1FADE, 1FA91, 1FA42, 1F9F1, 1F99D, 1F948, 1F8F0, 1F896, 1F83A, 1F7DC, 1F77C, 1F71A, 1F6B5, 1F64F, 1F5E6, 1F57B, 1F50E, 1F49F, 1F42E, 1F3BB, 1F345, 1F2CE, 1F255, 1F1D9, 1F15B, 1F0DC, 1F05A, 1EFD6, 1EF50, 1EEC8, 1EE3E, 1EDB2, 1ED24, 1EC94, 1EC02, 1EB6E, 1EAD8, 1EA40, 1E9A5, 1E909, 1E86B, 1E7CB, 1E729, 1E685, 1E5DF, 1E537, 1E48D, 1E3E1, 1E333, 1E284, 1E1D2, 1E11E, 1E069, 1DFB2, 1DEF8, 1DE3D, 1DD80, 1DCC1, 1DC00, 1DB3E, 1DA79, 1D9B3, 1D8EB, 1D821, 1D755, 1D687, 1D5B8, 1D4E6, 1D413, 1D33E, 1D268, 1D18F, 1D0B5, 1CFD9, 1CEFC, 1CE1C, 1CD3B, 1CC58, 1CB74, 1CA8E, 1C9A6, 1C8BC, 1C7D1, 1C6E4, 1C5F5, 1C505, 1C413, 1C31F, 1C22A, 1C133, 1C03B, 1BF41, 1BE46, 1BD48, 1BC4A, 1BB49, 1BA48, 1B944, 1B83F, 1B739, 1B631, 1B528, 1B41D, 1B310, 1B203, 1B0F3, 1AFE2, 1AED0, 1ADBD, 1ACA8, 1AB91, 1AA79, 1A960, 1A845, 1A729, 1A60C, 1A4ED, 1A3CD, 1A2AC, 1A189, 1A065, 19F40, 19E19, 19CF1, 19BC8, 19A9E, 19972, 19845, 19717, 195E8, 194B8, 19386, 19253, 1911F, 18FEA, 18EB4, 18D7C, 18C44, 18B0A, 189CF, 18893, 18757, 18619, 184D9, 18399, 18258, 18116, 17FD3, 17E8F, 17D4A, 17C04, 17ABC, 17974, 1782C, 176E2, 17597, 1744B, 172FF, 171B1, 17063, 16F13, 16DC3, 16C72, 16B21, 169CE, 1687B, 16727, 165D2, 1647C, 16326, 161CF, 16077, 15F1E, 15DC5, 15C6B, 15B10, 159B5, 15859, 156FC, 1559F, 15441, 152E3, 15183, 15024, 14EC3, 14D63, 14C01, 14A9F, 1493D, 147DA, 14676, 14512, 143AE, 14249, 140E4, 13F7E, 13E18, 13CB1, 13B4A, 139E3, 1387B, 13713, 135AA, 13441, 132D8, 1316E, 13004, 12E9A, 12D30, 12BC5, 12A5A, 128EF, 12783, 12617, 124AB, 1233F, 121D3, 12066, 11EF9, 11D8D, 11C1F, 11AB2, 11945, 117D8, 1166A, 114FC, 1138F, 11221, 110B3, 10F45, 10DD7, 10C6A, 10AFC, 1098E, 10820, 106B2, 10544, 103D6, 10269, 100FB, FF8D, FE20, FCB2, FB45, F9D8, F86B, F6FE, F591, F425, F2B8, F14C, EFE0, EE74, ED09, EB9E, EA33, E8C8, E75D, E5F3, E489, E31F, E1B6, E04D, DEE4, DD7C, DC14, DAAC, D945, D7DE, D677, D511, D3AB, D246, D0E1, CF7D, CE19, CCB5, CB52, C9F0, C88E, C72C, C5CB, C46B, C30B, C1AB, C04C, BEEE, BD90, BC33, BAD6, B97A, B81F, B6C4, B56A, B410, B2B7, B15F, B007, AEB0, AD5A, AC04, AAB0, A95B, A808, A6B5, A563, A412, A2C1, A171, A022, 9ED4, 9D87, 9C3A, 9AEE, 99A3, 9859, 970F, 95C7, 947F, 9338, 91F2, 90AC, 8F68, 8E24, 8CE2, 8BA0, 8A5F, 891F, 87E0, 86A2, 8565, 8428, 82ED, 81B3, 8079, 7F41, 7E09, 7CD3, 7B9D, 7A68, 7935, 7802, 76D0, 75A0, 7470, 7342, 7214, 70E7, 6FBC, 6E92, 6D68, 6C40, 6B19, 69F2, 68CD, 67A9, 6686, 6564, 6443, 6324, 6205, 60E8, 5FCB, 5EB0, 5D96, 5C7D, 5B65, 5A4E, 5939, 5824, 5711, 55FF, 54EE, 53DE, 52D0, 51C2, 50B6, 4FAB, 4EA1, 4D98, 4C91, 4B8B, 4A86, 4982, 487F, 477D, 467D, 457E, 4480, 4384, 4288, 418E, 4095, 3F9E, 3EA7, 3DB2, 3CBE, 3BCC, 3ADA, 39EA, 38FB, 380E, 3721, 3636, 354C, 3464, 337C, 3296, 31B2, 30CE, 2FEC, 2F0B, 2E2B, 2D4D, 2C70, 2B94, 2ABA, 29E1, 2909, 2832, 275D, 2689, 25B6, 24E5, 2415, 2346, 2278, 21AC, 20E1, 2017, 1F4F, 1E88, 1DC3, 1CFE, 1C3B, 1B79, 1AB9, 19FA, 193C, 187F, 17C4, 170A, 1651, 159A, 14E4, 142F, 137C, 12CA, 1219, 116A, 10BB, 100F, F63, EB9, E10, D68, CC2, C1D, B79, AD6, A35, 995, 8F7, 859, 7BD, 722, 689, 5F1, 55A, 4C4, 430, 39D, 30B, 27B, 1EB, 15D, D1, 45;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_87538d1b92b16ce1',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '17d0cb7258ec6d3c2a7b8e025b12684c',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_87538d1b92b16ce1',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 3FFBB, 3FF32, 3FEAB, 3FE24, 3FD9F, 3FD1B, 3FC98, 3FC17, 3FB97, 3FB18, 3FA9A, 3FA1E, 3F9A3, 3F929, 3F8B0, 3F838, 3F7C2, 3F74D, 3F6D9, 3F667, 3F5F5, 3F585, 3F516, 3F4A8, 3F43C, 3F3D0, 3F366, 3F2FD, 3F295, 3F22E, 3F1C9, 3F164, 3F101, 3F09F, 3F03E, 3EFDF, 3EF80, 3EF23, 3EEC7, 3EE6C, 3EE12, 3EDB9, 3ED61, 3ED0B, 3ECB5, 3EC61, 3EC0E, 3EBBC, 3EB6B, 3EB1B, 3EACC, 3EA7E, 3EA32, 3E9E6, 3E99C, 3E952, 3E90A, 3E8C3, 3E87D, 3E838, 3E7F4, 3E7B1, 3E76F, 3E72E, 3E6EE, 3E6AF, 3E671, 3E634, 3E5F9, 3E5BE, 3E584, 3E54B, 3E514, 3E4DD, 3E4A7, 3E472, 3E43E, 3E40C, 3E3DA, 3E3A9, 3E379, 3E34A, 3E31C, 3E2EE, 3E2C2, 3E297, 3E26D, 3E243, 3E21B, 3E1F3, 3E1CC, 3E1A6, 3E182, 3E15D, 3E13A, 3E118, 3E0F7, 3E0D6, 3E0B6, 3E098, 3E07A, 3E05C, 3E040, 3E025, 3E00A, 3DFF0, 3DFD7, 3DFBF, 3DFA8, 3DF91, 3DF7B, 3DF66, 3DF52, 3DF3F, 3DF2C, 3DF1A, 3DF09, 3DEF8, 3DEE9, 3DEDA, 3DECC, 3DEBE, 3DEB1, 3DEA5, 3DE9A, 3DE90, 3DE86, 3DE7D, 3DE74, 3DE6C, 3DE65, 3DE5F, 3DE59, 3DE54, 3DE4F, 3DE4B, 3DE48, 3DE46, 3DE44, 3DE43, 3DE42, 3DE42, 3DE43, 3DE44, 3DE46, 3DE48, 3DE4B, 3DE4E, 3DE53, 3DE57, 3DE5C, 3DE62, 3DE69, 3DE70, 3DE77, 3DE7F, 3DE88, 3DE91, 3DE9A, 3DEA4, 3DEAF, 3DEBA, 3DEC6, 3DED2, 3DEDE, 3DEEB, 3DEF9, 3DF07, 3DF15, 3DF24, 3DF34, 3DF43, 3DF54, 3DF64, 3DF76, 3DF87, 3DF99, 3DFAB, 3DFBE, 3DFD1, 3DFE5, 3DFF9, 3E00D, 3E022, 3E037, 3E04D, 3E063, 3E079, 3E08F, 3E0A6, 3E0BE, 3E0D5, 3E0ED, 3E106, 3E11E, 3E137, 3E150, 3E16A, 3E184, 3E19E, 3E1B8, 3E1D3, 3E1EE, 3E209, 3E225, 3E241, 3E25D, 3E279, 3E296, 3E2B3, 3E2D0, 3E2ED, 3E30B, 3E328, 3E346, 3E365, 3E383, 3E3A2, 3E3C1, 3E3E0, 3E3FF, 3E41F, 3E43E, 3E45E, 3E47E, 3E49E, 3E4BF, 3E4DF, 3E500, 3E521, 3E542, 3E563, 3E584, 3E5A5, 3E5C7, 3E5E9, 3E60B, 3E62C, 3E64F, 3E671, 3E693, 3E6B5, 3E6D8, 3E6FA, 3E71D, 3E740, 3E763, 3E786, 3E7A9, 3E7CC, 3E7EF, 3E812, 3E836, 3E859, 3E87C, 3E8A0, 3E8C3, 3E8E7, 3E90A, 3E92E, 3E952, 3E975, 3E999, 3E9BD, 3E9E1, 3EA04, 3EA28, 3EA4C, 3EA70, 3EA94, 3EAB8, 3EADB, 3EAFF, 3EB23, 3EB47, 3EB6B, 3EB8E, 3EBB2, 3EBD6, 3EBFA, 3EC1D, 3EC41, 3EC64, 3EC88, 3ECAC, 3ECCF, 3ECF3, 3ED16, 3ED39, 3ED5D, 3ED80, 3EDA3, 3EDC6, 3EDE9, 3EE0C, 3EE2F, 3EE52, 3EE75, 3EE97, 3EEBA, 3EEDD, 3EEFF, 3EF22, 3EF44, 3EF66, 3EF88, 3EFAA, 3EFCC, 3EFEE, 3F010, 3F031, 3F053, 3F074, 3F096, 3F0B7, 3F0D8, 3F0F9, 3F11A, 3F13B, 3F15B, 3F17C, 3F19C, 3F1BD, 3F1DD, 3F1FD, 3F21D, 3F23D, 3F25C, 3F27C, 3F29B, 3F2BB, 3F2DA, 3F2F9, 3F318, 3F337, 3F355, 3F374, 3F392, 3F3B0, 3F3CE, 3F3EC, 3F40A, 3F428, 3F445, 3F463, 3F480, 3F49D, 3F4BA, 3F4D7, 3F4F3, 3F510, 3F52C, 3F548, 3F564, 3F580, 3F59C, 3F5B7, 3F5D3, 3F5EE, 3F609, 3F624, 3F63F, 3F659, 3F674, 3F68E, 3F6A8, 3F6C2, 3F6DC, 3F6F6, 3F70F, 3F728, 3F742, 3F75B, 3F774, 3F78C, 3F7A5, 3F7BD, 3F7D5, 3F7EE, 3F805, 3F81D, 3F835, 3F84C, 3F864, 3F87B, 3F892, 3F8A9, 3F8BF, 3F8D6, 3F8EC, 3F902, 3F918, 3F92E, 3F944, 3F959, 3F96F, 3F984, 3F999, 3F9AE, 3F9C3, 3F9D8, 3F9EC, 3FA01, 3FA15, 3FA29, 3FA3D, 3FA50, 3FA64, 3FA78, 3FA8B, 3FA9E, 3FAB1, 3FAC4, 3FAD7, 3FAE9, 3FAFC, 3FB0E, 3FB20, 3FB32, 3FB44, 3FB56, 3FB67, 3FB79, 3FB8A, 3FB9C, 3FBAD, 3FBBE, 3FBCE, 3FBDF, 3FBF0, 3FC00, 3FC10, 3FC21, 3FC31, 3FC41, 3FC50, 3FC60, 3FC70, 3FC7F, 3FC8E, 3FC9E, 3FCAD, 3FCBC, 3FCCB, 3FCD9, 3FCE8, 3FCF6, 3FD05, 3FD13, 3FD21, 3FD30, 3FD3E, 3FD4B, 3FD59, 3FD67, 3FD75, 3FD82, 3FD8F, 3FD9D, 3FDAA, 3FDB7, 3FDC4, 3FDD1, 3FDDE, 3FDEB, 3FDF7, 3FE04, 3FE11, 3FE1D, 3FE29, 3FE36, 3FE42, 3FE4E, 3FE5A, 3FE66, 3FE72, 3FE7E, 3FE8A, 3FE95, 3FEA1, 3FEAD, 3FEB8, 3FEC3, 3FECF, 3FEDA, 3FEE5, 3FEF1, 3FEFC, 3FF07, 3FF12, 3FF1D, 3FF28, 3FF33, 3FF3E, 3FF49, 3FF53, 3FF5E, 3FF69, 3FF73, 3FF7E, 3FF89, 3FF93, 3FF9E, 3FFA8, 3FFB3, 3FFBD, 3FFC7, 3FFD2, 3FFDC, 3FFE6, 3FFF1, 3FFFB;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_69de893a5337e413',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f80f260ded30574026fc6525490c0eff',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_69de893a5337e413',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 3FFF8, 3FFEE, 3FFE4, 3FFD9, 3FFCF, 3FFC5, 3FFBA, 3FFB0, 3FFA5, 3FF9B, 3FF90, 3FF86, 3FF7B, 3FF71, 3FF66, 3FF5B, 3FF51, 3FF46, 3FF3B, 3FF30, 3FF25, 3FF1A, 3FF0F, 3FF04, 3FEF9, 3FEEE, 3FEE3, 3FED7, 3FECC, 3FEC1, 3FEB5, 3FEAA, 3FE9E, 3FE92, 3FE87, 3FE7B, 3FE6F, 3FE63, 3FE57, 3FE4B, 3FE3F, 3FE32, 3FE26, 3FE1A, 3FE0D, 3FE01, 3FDF4, 3FDE7, 3FDDA, 3FDCE, 3FDC1, 3FDB4, 3FDA6, 3FD99, 3FD8C, 3FD7E, 3FD71, 3FD63, 3FD55, 3FD47, 3FD3A, 3FD2B, 3FD1D, 3FD0F, 3FD01, 3FCF2, 3FCE4, 3FCD5, 3FCC6, 3FCB7, 3FCA8, 3FC99, 3FC8A, 3FC7A, 3FC6B, 3FC5B, 3FC4C, 3FC3C, 3FC2C, 3FC1C, 3FC0B, 3FBFB, 3FBEB, 3FBDA, 3FBC9, 3FBB8, 3FBA7, 3FB96, 3FB85, 3FB73, 3FB62, 3FB50, 3FB3E, 3FB2C, 3FB1A, 3FB08, 3FAF6, 3FAE3, 3FAD1, 3FABE, 3FAAB, 3FA98, 3FA85, 3FA71, 3FA5E, 3FA4A, 3FA36, 3FA22, 3FA0E, 3F9FA, 3F9E5, 3F9D1, 3F9BC, 3F9A7, 3F992, 3F97D, 3F968, 3F952, 3F93D, 3F927, 3F911, 3F8FB, 3F8E4, 3F8CE, 3F8B7, 3F8A1, 3F88A, 3F873, 3F85C, 3F844, 3F82D, 3F815, 3F7FD, 3F7E5, 3F7CD, 3F7B5, 3F79C, 3F783, 3F76B, 3F752, 3F739, 3F71F, 3F706, 3F6EC, 3F6D3, 3F6B9, 3F69F, 3F684, 3F66A, 3F650, 3F635, 3F61A, 3F5FF, 3F5E4, 3F5C9, 3F5AD, 3F591, 3F576, 3F55A, 3F53E, 3F521, 3F505, 3F4E8, 3F4CC, 3F4AF, 3F492, 3F475, 3F458, 3F43A, 3F41D, 3F3FF, 3F3E1, 3F3C3, 3F3A5, 3F387, 3F368, 3F34A, 3F32B, 3F30C, 3F2ED, 3F2CE, 3F2AF, 3F28F, 3F270, 3F250, 3F230, 3F210, 3F1F0, 3F1D0, 3F1B0, 3F190, 3F16F, 3F14F, 3F12E, 3F10D, 3F0EC, 3F0CB, 3F0AA, 3F088, 3F067, 3F046, 3F024, 3F002, 3EFE0, 3EFBE, 3EF9C, 3EF7A, 3EF58, 3EF36, 3EF14, 3EEF1, 3EECF, 3EEAC, 3EE89, 3EE67, 3EE44, 3EE21, 3EDFE, 3EDDB, 3EDB8, 3ED94, 3ED71, 3ED4E, 3ED2B, 3ED07, 3ECE4, 3ECC0, 3EC9D, 3EC79, 3EC56, 3EC32, 3EC0E, 3EBEA, 3EBC7, 3EBA3, 3EB7F, 3EB5B, 3EB38, 3EB14, 3EAF0, 3EACC, 3EAA8, 3EA84, 3EA60, 3EA3D, 3EA19, 3E9F5, 3E9D1, 3E9AD, 3E989, 3E966, 3E942, 3E91E, 3E8FB, 3E8D7, 3E8B3, 3E890, 3E86C, 3E849, 3E826, 3E802, 3E7DF, 3E7BC, 3E799, 3E776, 3E753, 3E730, 3E70D, 3E6EB, 3E6C8, 3E6A5, 3E683, 3E661, 3E63F, 3E61D, 3E5FB, 3E5D9, 3E5B7, 3E596, 3E574, 3E553, 3E532, 3E511, 3E4F0, 3E4CF, 3E4AF, 3E48E, 3E46E, 3E44E, 3E42E, 3E40F, 3E3EF, 3E3D0, 3E3B1, 3E392, 3E374, 3E355, 3E337, 3E319, 3E2FB, 3E2DE, 3E2C0, 3E2A3, 3E287, 3E26A, 3E24E, 3E232, 3E216, 3E1FA, 3E1DF, 3E1C4, 3E1AA, 3E18F, 3E175, 3E15B, 3E142, 3E129, 3E110, 3E0F7, 3E0DF, 3E0C7, 3E0B0, 3E098, 3E082, 3E06B, 3E055, 3E03F, 3E02A, 3E015, 3E000, 3DFEC, 3DFD8, 3DFC4, 3DFB1, 3DF9F, 3DF8C, 3DF7A, 3DF69, 3DF58, 3DF47, 3DF37, 3DF27, 3DF18, 3DF09, 3DEFB, 3DEED, 3DEE0, 3DED3, 3DEC6, 3DEBA, 3DEAF, 3DEA4, 3DE9A, 3DE90, 3DE86, 3DE7D, 3DE75, 3DE6D, 3DE66, 3DE5F, 3DE59, 3DE53, 3DE4E, 3DE49, 3DE45, 3DE42, 3DE3F, 3DE3D, 3DE3B, 3DE3A, 3DE3A, 3DE3A, 3DE3B, 3DE3C, 3DE3E, 3DE41, 3DE45, 3DE49, 3DE4D, 3DE52, 3DE58, 3DE5F, 3DE66, 3DE6E, 3DE77, 3DE80, 3DE8B, 3DE95, 3DEA1, 3DEAD, 3DEBA, 3DEC8, 3DED6, 3DEE5, 3DEF5, 3DF06, 3DF17, 3DF29, 3DF3C, 3DF50, 3DF64, 3DF79, 3DF8F, 3DFA6, 3DFBE, 3DFD6, 3DFF0, 3E00A, 3E025, 3E040, 3E05D, 3E07A, 3E098, 3E0B8, 3E0D8, 3E0F8, 3E11A, 3E13D, 3E160, 3E184, 3E1A9, 3E1D0, 3E1F7, 3E21E, 3E247, 3E271, 3E29C, 3E2C7, 3E2F4, 3E321, 3E34F, 3E37F, 3E3AF, 3E3E0, 3E412, 3E446, 3E47A, 3E4AF, 3E4E5, 3E51C, 3E554, 3E58D, 3E5C7, 3E602, 3E63E, 3E67C, 3E6BA, 3E6F9, 3E739, 3E77A, 3E7BD, 3E800, 3E844, 3E88A, 3E8D0, 3E918, 3E960, 3E9AA, 3E9F5, 3EA41, 3EA8D, 3EADC, 3EB2B, 3EB7B, 3EBCC, 3EC1F, 3EC72, 3ECC7, 3ED1D, 3ED73, 3EDCC, 3EE25, 3EE7F, 3EEDA, 3EF37, 3EF95, 3EFF4, 3F054, 3F0B5, 3F117, 3F17B, 3F1DF, 3F245, 3F2AC, 3F315, 3F37E, 3F3E9, 3F454, 3F4C1, 3F530, 3F59F, 3F610, 3F682, 3F6F5, 3F769, 3F7DE, 3F855, 3F8CD, 3F946, 3F9C0, 3FA3C, 3FAB9, 3FB37, 3FBB6, 3FC37, 3FCB8, 3FD3B, 3FDC0, 3FE45, 3FECC, 3FF54, 3FFDD;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_199e98588d9c0a81',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '4505a61d6a277b6d278214b777d7d7da',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_199e98588d9c0a81',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 68, F4, 181, 20F, 29F, 330, 3C2, 456, 4EA, 580, 618, 6B0, 74A, 7E5, 882, 920, 9BF, A5F, B01, BA3, C48, CED, D94, E3C, EE5, F90, 103C, 10E9, 1198, 1248, 12F9, 13AC, 1460, 1515, 15CB, 1683, 173C, 17F6, 18B2, 196F, 1A2D, 1AED, 1BAE, 1C70, 1D33, 1DF8, 1EBE, 1F86, 204F, 2119, 21E4, 22B1, 237E, 244E, 251E, 25F0, 26C3, 2798, 286D, 2944, 2A1D, 2AF6, 2BD1, 2CAD, 2D8B, 2E6A, 2F4A, 302B, 310E, 31F2, 32D7, 33BD, 34A5, 358E, 3678, 3764, 3850, 393F, 3A2E, 3B1E, 3C10, 3D03, 3DF8, 3EED, 3FE4, 40DC, 41D5, 42D0, 43CC, 44C9, 45C7, 46C6, 47C7, 48C9, 49CC, 4AD0, 4BD6, 4CDC, 4DE4, 4EED, 4FF8, 5103, 5210, 531E, 542D, 553D, 564E, 5761, 5874, 5989, 5A9F, 5BB6, 5CCE, 5DE8, 5F02, 601E, 613B, 6259, 6378, 6498, 65B9, 66DB, 67FE, 6923, 6A48, 6B6F, 6C96, 6DBF, 6EE9, 7014, 7140, 726C, 739A, 74C9, 75F9, 772A, 785C, 798F, 7AC3, 7BF8, 7D2E, 7E65, 7F9D, 80D6, 8210, 834A, 8486, 85C3, 8700, 883F, 897E, 8ABE, 8BFF, 8D42, 8E84, 8FC8, 910D, 9253, 9399, 94E0, 9628, 9771, 98BB, 9A06, 9B51, 9C9D, 9DEA, 9F38, A087, A1D6, A326, A477, A5C8, A71B, A86E, A9C1, AB16, AC6B, ADC1, AF17, B06E, B1C6, B31F, B478, B5D2, B72C, B887, B9E3, BB3F, BC9C, BDF9, BF57, C0B6, C215, C375, C4D5, C636, C797, C8F9, CA5B, CBBE, CD21, CE85, CFE9, D14D, D2B2, D418, D57E, D6E4, D84B, D9B2, DB19, DC81, DDE9, DF52, E0BB, E224, E38D, E4F7, E661, E7CC, E936, EAA1, EC0C, ED78, EEE3, F04F, F1BB, F328, F494, F601, F76D, F8DA, FA47, FBB5, FD22, FE8F, FFFD, 1016B, 102D8, 10446, 105B4, 10722, 10890, 109FE, 10B6C, 10CDA, 10E48, 10FB5, 11123, 11291, 113FF, 1156D, 116DA, 11848, 119B5, 11B22, 11C90, 11DFD, 11F69, 120D6, 12243, 123AF, 1251B, 12687, 127F3, 1295E, 12ACA, 12C35, 12D9F, 12F0A, 13074, 131DE, 13347, 134B0, 13619, 13782, 138EA, 13A51, 13BB9, 13D20, 13E86, 13FEC, 14152, 142B7, 1441C, 14580, 146E4, 14848, 149AA, 14B0D, 14C6F, 14DD0, 14F30, 15091, 151F0, 1534F, 154AD, 1560B, 15768, 158C5, 15A21, 15B7C, 15CD6, 15E30, 15F89, 160E1, 16239, 16390, 164E6, 1663C, 16790, 168E4, 16A37, 16B8A, 16CDB, 16E2C, 16F7C, 170CB, 17219, 17366, 174B2, 175FE, 17748, 17892, 179DA, 17B22, 17C69, 17DAF, 17EF4, 18038, 1817A, 182BC, 183FD, 1853D, 1867C, 187B9, 188F6, 18A31, 18B6C, 18CA5, 18DDD, 18F14, 1904A, 1917F, 192B3, 193E5, 19517, 19647, 19776, 198A3, 199D0, 19AFB, 19C25, 19D4E, 19E75, 19F9B, 1A0C0, 1A1E4, 1A306, 1A427, 1A547, 1A665, 1A782, 1A89E, 1A9B8, 1AAD1, 1ABE8, 1ACFE, 1AE13, 1AF26, 1B038, 1B148, 1B257, 1B364, 1B470, 1B57B, 1B684, 1B78B, 1B891, 1B995, 1BA98, 1BB9A, 1BC99, 1BD98, 1BE94, 1BF8F, 1C089, 1C181, 1C277, 1C36C, 1C45F, 1C550, 1C640, 1C72E, 1C81B, 1C905, 1C9EE, 1CAD6, 1CBBC, 1CCA0, 1CD82, 1CE62, 1CF41, 1D01E, 1D0FA, 1D1D3, 1D2AB, 1D381, 1D456, 1D528, 1D5F9, 1D6C8, 1D795, 1D860, 1D92A, 1D9F1, 1DAB7, 1DB7B, 1DC3D, 1DCFD, 1DDBC, 1DE78, 1DF33, 1DFEB, 1E0A2, 1E157, 1E20A, 1E2BB, 1E36A, 1E417, 1E4C3, 1E56C, 1E613, 1E6B9, 1E75C, 1E7FD, 1E89D, 1E93A, 1E9D6, 1EA6F, 1EB07, 1EB9C, 1EC30, 1ECC1, 1ED51, 1EDDE, 1EE6A, 1EEF3, 1EF7A, 1F000, 1F083, 1F104, 1F183, 1F200, 1F27B, 1F2F4, 1F36A, 1F3DF, 1F452, 1F4C2, 1F531, 1F59D, 1F607, 1F66F, 1F6D5, 1F739, 1F79A, 1F7FA, 1F857, 1F8B3, 1F90C, 1F963, 1F9B8, 1FA0A, 1FA5B, 1FAA9, 1FAF6, 1FB40, 1FB87, 1FBCD, 1FC11, 1FC52, 1FC91, 1FCCE, 1FD09, 1FD42, 1FD78, 1FDAD, 1FDDF, 1FE0F, 1FE3C, 1FE68, 1FE91, 1FEB8, 1FEDD, 1FF00, 1FF21, 1FF3F, 1FF5B, 1FF75, 1FF8D, 1FFA2, 1FFB5, 1FFC6, 1FFD5, 1FFE2, 1FFEC, 1FFF5, 1FFFB, 1FFFE, 1FFFF;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_c427435888f01a9f',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '6982ea27530160d3afabdf3c68291baa',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_c427435888f01a9f',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 1FFFF, 1FFFC, 1FFF7, 1FFF0, 1FFE7, 1FFDB, 1FFCD, 1FFBD, 1FFAB, 1FF96, 1FF7F, 1FF66, 1FF4B, 1FF2E, 1FF0E, 1FEED, 1FEC9, 1FEA3, 1FE7A, 1FE50, 1FE23, 1FDF4, 1FDC3, 1FD8F, 1FD5A, 1FD22, 1FCE8, 1FCAC, 1FC6E, 1FC2E, 1FBEB, 1FBA6, 1FB5F, 1FB16, 1FACB, 1FA7D, 1FA2E, 1F9DC, 1F988, 1F932, 1F8DA, 1F880, 1F823, 1F7C4, 1F764, 1F701, 1F69C, 1F635, 1F5CB, 1F560, 1F4F3, 1F483, 1F411, 1F39E, 1F328, 1F2B0, 1F236, 1F1BA, 1F13C, 1F0BB, 1F039, 1EFB5, 1EF2E, 1EEA6, 1EE1B, 1ED8F, 1ED00, 1EC70, 1EBDD, 1EB48, 1EAB2, 1EA19, 1E97F, 1E8E2, 1E843, 1E7A3, 1E700, 1E65C, 1E5B5, 1E50D, 1E462, 1E3B6, 1E308, 1E257, 1E1A5, 1E0F1, 1E03B, 1DF83, 1DECA, 1DE0E, 1DD51, 1DC91, 1DBD0, 1DB0D, 1DA48, 1D981, 1D8B8, 1D7EE, 1D722, 1D653, 1D584, 1D4B2, 1D3DE, 1D309, 1D232, 1D159, 1D07E, 1CFA2, 1CEC4, 1CDE4, 1CD03, 1CC1F, 1CB3A, 1CA54, 1C96B, 1C881, 1C796, 1C6A8, 1C5B9, 1C4C9, 1C3D6, 1C2E2, 1C1ED, 1C0F6, 1BFFD, 1BF02, 1BE06, 1BD09, 1BC0A, 1BB09, 1BA07, 1B903, 1B7FE, 1B6F7, 1B5EF, 1B4E5, 1B3DA, 1B2CD, 1B1BF, 1B0AF, 1AF9E, 1AE8B, 1AD77, 1AC62, 1AB4B, 1AA33, 1A919, 1A7FE, 1A6E2, 1A5C4, 1A4A5, 1A385, 1A263, 1A140, 1A01C, 19EF6, 19DCF, 19CA7, 19B7E, 19A53, 19927, 197FA, 196CC, 1959C, 1946B, 19339, 19206, 190D2, 18F9D, 18E66, 18D2E, 18BF5, 18ABB, 18980, 18844, 18707, 185C9, 1848A, 18349, 18208, 180C5, 17F82, 17E3E, 17CF8, 17BB2, 17A6B, 17922, 177D9, 1768F, 17544, 173F8, 172AB, 1715E, 1700F, 16EC0, 16D6F, 16C1E, 16ACC, 16979, 16826, 166D2, 1657D, 16427, 162D0, 16179, 16021, 15EC8, 15D6E, 15C14, 15AB9, 1595E, 15802, 156A5, 15548, 153EA, 1528B, 1512C, 14FCC, 14E6B, 14D0A, 14BA9, 14A47, 148E4, 14781, 1461E, 144B9, 14355, 141F0, 1408A, 13F24, 13DBE, 13C57, 13AF0, 13989, 13821, 136B8, 13550, 133E7, 1327D, 13114, 12FAA, 12E3F, 12CD5, 12B6A, 129FF, 12894, 12728, 125BC, 12450, 122E4, 12178, 1200B, 11E9E, 11D31, 11BC4, 11A57, 118EA, 1177C, 1160F, 114A1, 11333, 111C6, 11058, 10EEA, 10D7C, 10C0E, 10AA0, 10932, 107C4, 10656, 104E9, 1037B, 1020D, 1009F, FF32, FDC4, FC57, FAEA, F97D, F810, F6A3, F536, F3CA, F25D, F0F1, EF85, EE1A, ECAE, EB43, E9D8, E86D, E703, E598, E42F, E2C5, E15C, DFF3, DE8A, DD22, DBBA, DA52, D8EB, D784, D61E, D4B8, D352, D1ED, D088, CF24, CDC0, CC5D, CAFA, C997, C835, C6D4, C573, C412, C2B3, C153, BFF4, BE96, BD39, BBDC, BA7F, B923, B7C8, B66D, B513, B3BA, B261, B109, AFB1, AE5B, AD05, ABAF, AA5A, A906, A7B3, A661, A50F, A3BE, A26D, A11E, 9FCF, 9E81, 9D33, 9BE7, 9A9B, 9950, 9806, 96BD, 9575, 942D, 92E6, 91A0, 905B, 8F17, 8DD4, 8C91, 8B50, 8A0F, 88CF, 8790, 8653, 8516, 83D9, 829E, 8164, 802B, 7EF3, 7DBB, 7C85, 7B50, 7A1B, 78E8, 77B6, 7684, 7554, 7424, 72F6, 71C9, 709C, 6F71, 6E47, 6D1E, 6BF6, 6ACF, 69A9, 6884, 6760, 663E, 651C, 63FB, 62DC, 61BE, 60A1, 5F84, 5E69, 5D50, 5C37, 5B1F, 5A09, 58F4, 57E0, 56CD, 55BB, 54AA, 539B, 528C, 517F, 5073, 4F68, 4E5F, 4D56, 4C4F, 4B49, 4A44, 4941, 483E, 473D, 463D, 453F, 4441, 4345, 424A, 4150, 4057, 3F60, 3E6A, 3D75, 3C82, 3B8F, 3A9E, 39AE, 38C0, 37D2, 36E6, 35FB, 3512, 342A, 3343, 325D, 3179, 3095, 2FB4, 2ED3, 2DF4, 2D16, 2C39, 2B5D, 2A83, 29AA, 28D3, 27FD, 2728, 2654, 2582, 24B0, 23E1, 2312, 2245, 2179, 20AF, 1FE5, 1F1D, 1E57, 1D91, 1CCD, 1C0A, 1B49, 1A89, 19CA, 190D, 1850, 1795, 16DC, 1624, 156D, 14B7, 1402, 134F, 129E, 11ED, 113E, 1090, FE4, F38, E8E, DE6, D3E, C98, BF3, B50, AAE, A0D, 96D, 8CF, 832, 796, 6FC, 663, 5CB, 534, 49F, 40B, 378, 2E7, 257, 1C8, 13A, AE, 23;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_f849e107d1112fef',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'cda2a2570811e5a0ffa52c121e221c74',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_f849e107d1112fef',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 3FF99, 3FF10, 3FE89, 3FE03, 3FD7E, 3FCFA, 3FC78, 3FBF7, 3FB77, 3FAF8, 3FA7B, 3F9FF, 3F984, 3F90A, 3F892, 3F81B, 3F7A5, 3F730, 3F6BD, 3F64A, 3F5D9, 3F569, 3F4FA, 3F48D, 3F421, 3F3B5, 3F34B, 3F2E3, 3F27B, 3F215, 3F1B0, 3F14C, 3F0E9, 3F087, 3F026, 3EFC7, 3EF69, 3EF0C, 3EEB0, 3EE55, 3EDFB, 3EDA3, 3ED4B, 3ECF5, 3ECA0, 3EC4C, 3EBF9, 3EBA7, 3EB57, 3EB07, 3EAB8, 3EA6B, 3EA1F, 3E9D3, 3E989, 3E940, 3E8F8, 3E8B1, 3E86B, 3E827, 3E7E3, 3E7A0, 3E75E, 3E71E, 3E6DE, 3E6A0, 3E662, 3E625, 3E5EA, 3E5AF, 3E576, 3E53D, 3E506, 3E4CF, 3E49A, 3E465, 3E432, 3E3FF, 3E3CD, 3E39D, 3E36D, 3E33E, 3E310, 3E2E3, 3E2B7, 3E28C, 3E262, 3E239, 3E211, 3E1E9, 3E1C3, 3E19D, 3E178, 3E155, 3E132, 3E110, 3E0EE, 3E0CE, 3E0AF, 3E090, 3E072, 3E055, 3E039, 3E01E, 3E004, 3DFEA, 3DFD1, 3DFB9, 3DFA2, 3DF8C, 3DF76, 3DF61, 3DF4D, 3DF3A, 3DF27, 3DF16, 3DF05, 3DEF4, 3DEE5, 3DED6, 3DEC8, 3DEBB, 3DEAE, 3DEA3, 3DE97, 3DE8D, 3DE83, 3DE7A, 3DE72, 3DE6A, 3DE63, 3DE5D, 3DE58, 3DE53, 3DE4E, 3DE4B, 3DE48, 3DE45, 3DE44, 3DE42, 3DE42, 3DE42, 3DE43, 3DE44, 3DE46, 3DE49, 3DE4C, 3DE4F, 3DE54, 3DE58, 3DE5E, 3DE64, 3DE6A, 3DE71, 3DE79, 3DE81, 3DE8A, 3DE93, 3DE9D, 3DEA7, 3DEB2, 3DEBD, 3DEC9, 3DED5, 3DEE2, 3DEEF, 3DEFC, 3DF0A, 3DF19, 3DF28, 3DF38, 3DF47, 3DF58, 3DF69, 3DF7A, 3DF8C, 3DF9E, 3DFB0, 3DFC3, 3DFD6, 3DFEA, 3DFFE, 3E013, 3E027, 3E03D, 3E052, 3E068, 3E07F, 3E095, 3E0AC, 3E0C4, 3E0DB, 3E0F3, 3E10C, 3E124, 3E13D, 3E157, 3E170, 3E18A, 3E1A4, 3E1BF, 3E1DA, 3E1F5, 3E210, 3E22C, 3E248, 3E264, 3E280, 3E29D, 3E2BA, 3E2D7, 3E2F4, 3E312, 3E330, 3E34E, 3E36C, 3E38B, 3E3AA, 3E3C8, 3E3E8, 3E407, 3E426, 3E446, 3E466, 3E486, 3E4A6, 3E4C7, 3E4E7, 3E508, 3E529, 3E54A, 3E56B, 3E58C, 3E5AE, 3E5CF, 3E5F1, 3E613, 3E635, 3E657, 3E679, 3E69C, 3E6BE, 3E6E1, 3E703, 3E726, 3E749, 3E76B, 3E78E, 3E7B1, 3E7D5, 3E7F8, 3E81B, 3E83E, 3E862, 3E885, 3E8A9, 3E8CC, 3E8F0, 3E913, 3E937, 3E95B, 3E97E, 3E9A2, 3E9C6, 3E9EA, 3EA0D, 3EA31, 3EA55, 3EA79, 3EA9D, 3EAC0, 3EAE4, 3EB08, 3EB2C, 3EB50, 3EB74, 3EB97, 3EBBB, 3EBDF, 3EC02, 3EC26, 3EC4A, 3EC6D, 3EC91, 3ECB4, 3ECD8, 3ECFB, 3ED1F, 3ED42, 3ED65, 3ED89, 3EDAC, 3EDCF, 3EDF2, 3EE15, 3EE38, 3EE5B, 3EE7D, 3EEA0, 3EEC3, 3EEE5, 3EF08, 3EF2A, 3EF4C, 3EF6F, 3EF91, 3EFB3, 3EFD5, 3EFF6, 3F018, 3F03A, 3F05B, 3F07D, 3F09E, 3F0BF, 3F0E0, 3F101, 3F122, 3F143, 3F164, 3F184, 3F1A4, 3F1C5, 3F1E5, 3F205, 3F225, 3F245, 3F264, 3F284, 3F2A3, 3F2C3, 3F2E2, 3F301, 3F320, 3F33E, 3F35D, 3F37B, 3F39A, 3F3B8, 3F3D6, 3F3F4, 3F412, 3F42F, 3F44D, 3F46A, 3F487, 3F4A4, 3F4C1, 3F4DE, 3F4FA, 3F517, 3F533, 3F54F, 3F56B, 3F587, 3F5A3, 3F5BE, 3F5D9, 3F5F5, 3F610, 3F62B, 3F645, 3F660, 3F67A, 3F694, 3F6AF, 3F6C9, 3F6E2, 3F6FC, 3F715, 3F72F, 3F748, 3F761, 3F77A, 3F792, 3F7AB, 3F7C3, 3F7DC, 3F7F4, 3F80B, 3F823, 3F83B, 3F852, 3F869, 3F881, 3F897, 3F8AE, 3F8C5, 3F8DB, 3F8F2, 3F908, 3F91E, 3F934, 3F949, 3F95F, 3F974, 3F989, 3F99F, 3F9B3, 3F9C8, 3F9DD, 3F9F1, 3FA06, 3FA1A, 3FA2E, 3FA42, 3FA55, 3FA69, 3FA7C, 3FA90, 3FAA3, 3FAB6, 3FAC9, 3FADB, 3FAEE, 3FB00, 3FB13, 3FB25, 3FB37, 3FB49, 3FB5A, 3FB6C, 3FB7D, 3FB8F, 3FBA0, 3FBB1, 3FBC2, 3FBD3, 3FBE3, 3FBF4, 3FC04, 3FC14, 3FC25, 3FC35, 3FC44, 3FC54, 3FC64, 3FC73, 3FC83, 3FC92, 3FCA1, 3FCB0, 3FCBF, 3FCCE, 3FCDD, 3FCEC, 3FCFA, 3FD08, 3FD17, 3FD25, 3FD33, 3FD41, 3FD4F, 3FD5D, 3FD6A, 3FD78, 3FD85, 3FD93, 3FDA0, 3FDAD, 3FDBA, 3FDC7, 3FDD4, 3FDE1, 3FDEE, 3FDFB, 3FE07, 3FE14, 3FE20, 3FE2D, 3FE39, 3FE45, 3FE51, 3FE5D, 3FE69, 3FE75, 3FE81, 3FE8D, 3FE98, 3FEA4, 3FEAF, 3FEBB, 3FEC6, 3FED2, 3FEDD, 3FEE8, 3FEF3, 3FEFF, 3FF0A, 3FF15, 3FF20, 3FF2B, 3FF36, 3FF40, 3FF4B, 3FF56, 3FF61, 3FF6B, 3FF76, 3FF81, 3FF8B, 3FF96, 3FFA0, 3FFAB, 3FFB5, 3FFC0, 3FFCA, 3FFD4, 3FFDF, 3FFE9, 3FFF3, 3FFFD;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_7efdd451ec9ecd90',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '3f77971a4ed2609e022da310196cd90e',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_7efdd451ec9ecd90',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'aa61abbc787a2ca466415d3e0d419cb6',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_17_23: signed((26 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((26 - 1) downto 0);
    op : out std_logic_vector((26 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'scale_f01f7ce486',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '9eb61c6fb9b8a411ed5ab706717675e8',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlconvert_pipeline.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '856c58be1b0a0f72f980484626d50a4f',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  local *wrapup = $Sg::{'wrapup'};
  push(@$results, &Sg::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgDeliverFile::{'wrapup'};
  push(@$results, &SgDeliverFile::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgGenerateCores::{'wrapup'};
  push(@$results, &SgGenerateCores::wrapup())   if (defined(&wrapup));
  use Carp qw(croak);
  $ENV{'SYSGEN'} = '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen';
  open(RESULTS, '> /scratch/zaki/workspace/baobab/fir_core/sysgen/script_results6682644692073673705') || 
    croak 'couldn\'t open /scratch/zaki/workspace/baobab/fir_core/sysgen/script_results6682644692073673705';
  binmode(RESULTS);
  print RESULTS &Sg::toString($results) . "\n";
  close(RESULTS) || 
    croak 'trouble writing /scratch/zaki/workspace/baobab/fir_core/sysgen/script_results6682644692073673705';
};

if ($@) {
  open(RESULTS, '> /scratch/zaki/workspace/baobab/fir_core/sysgen/script_results6682644692073673705') || 
    croak 'couldn\'t open /scratch/zaki/workspace/baobab/fir_core/sysgen/script_results6682644692073673705';
  binmode(RESULTS);
  print RESULTS $@ . "\n";
  close(RESULTS) || 
    croak 'trouble writing /scratch/zaki/workspace/baobab/fir_core/sysgen/script_results6682644692073673705';
  exit(1);
}

exit(0);
