
open(PIDFILE, '> pidfile.txt') || die 'Couldn\'t write process ID to file.';
print PIDFILE "$$\n";
close(PIDFILE);

eval {
  # Call script(s).
  my $instrs;
  my $results = [];
$ENV{'SYSGEN'} = '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen';
  use Sg;
  $instrs = {
    'HDLCodeGenStatus' => 0.0,
    'HDL_PATH' => '/scratch/zaki/workspace/baobab',
    'TEMP' => '/scratch/tmp',
    'TMP' => '/scratch/tmp',
    'Temp' => '/scratch/tmp',
    'Tmp' => '/scratch/tmp',
    'base_system_period_hardware' => 5.0,
    'base_system_period_simulink' => 1.0,
    'block_icon_display' => 'Default',
    'cc' => '/usr/bin/gcc',
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
    'coregen_core_generation_tmpdir' => '/scratch/tmp/sysgentmp-zaki/cg_wk/caa3474a388f434f4',
    'coregen_part_family' => 'virtex5',
    'createTestbench' => 0,
    'dbl_ovrd' => -1.0,
    'dcm_input_clock_period' => 100.0,
    'deprecated_control' => 'off',
    'design' => 'baopoco',
    'design_full_path' => '/scratch/zaki/workspace/baobab/baopoco.mdl',
    'device' => 'xc5vsx95t-1ff1136',
    'device_speed' => '-1',
    'directory' => '/scratch/zaki/workspace/baobab/baopoco/sysgen',
    'disregard_subsystem_handles' => [
      83494.00036621094,
      83803.00036621094,
      83923.00036621094,
      84284.00012207031,
      84404.00012207031,
      84765.00036621094,
      84885.00036621094,
      85249.00012207031,
      85558.00024414062,
      85678.00024414062,
      86039.00012207031,
      86159.00012207031,
      86523.00012207031,
      86832.00012207031,
      86952.00012207031,
      87316.00012207031,
      193680.0001220703,
      193965.0001220703,
      194085.00061035156,
      194422.00061035156,
      194542.00061035156,
      194879.0001220703,
      194999.0001220703,
      195339.00036621094,
      195624.00036621094,
      195744.00036621094,
      196081.00036621094,
      196201.0001220703,
      196541.0001220703,
      196826.0001220703,
      196946.0001220703,
      197286.00036621094,
    ],
    'dsp_cache_root_path' => '/home/zaki/.Xilinx/Sysgen',
    'fileDeliveryDefaults' => [
      [
        '(?i)\\.vhd$',
        { 'fileName' => '/scratch/zaki/workspace/baobab/baopoco/sysgen/sysgen/perl_results.vhd', },
      ],
      [
        '(?i)\\.v$',
        { 'fileName' => '/scratch/zaki/workspace/baobab/baopoco/sysgen/sysgen/perl_results.v', },
      ],
    ],
    'fxdptinstalled' => 1.0,
    'gcc_exe' => '/usr/bin/gcc',
    'generateUsing71FrontEnd' => 1,
    'generating_island_subsystem_handle' => 81477.00024414062,
    'generating_subsystem_handle' => 81477.00024414062,
    'generation_directory' => './baopoco/sysgen',
    'hdlDir' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl',
    'hdlKind' => 'vhdl',
    'hdl_path' => '/scratch/zaki/workspace/baobab',
    'incr_netlist' => 'off',
    'isdeployed' => 0,
    'ise_full_version' => '11.5.i',
    'ise_version' => '11.5i',
    'master_sysgen_token_handle' => 81478.00012207031,
    'matlab' => '/tools/commercial/mathworks/matlab2009b',
    'matlabJavaDirectory' => '/tools/commercial/mathworks/matlab2009b/sys/java/jre/win32/jre1.4.2/bin',
    'matlab_fixedpoint' => 1.0,
    'mdlHandle' => 81477.00024414062,
    'mdlPath' => '/scratch/zaki/workspace/baobab/baopoco.mdl',
    'modelDiagnostics' => [
      {
        'count' => 26158.0,
        'isMask' => 0.0,
        'type' => 'baopoco Total blocks',
      },
      {
        'count' => 4.0,
        'isMask' => 0.0,
        'type' => 'Bias',
      },
      {
        'count' => 52.0,
        'isMask' => 0.0,
        'type' => 'Constant',
      },
      {
        'count' => 8.0,
        'isMask' => 0.0,
        'type' => 'DiscretePulseGenerator',
      },
      {
        'count' => 77.0,
        'isMask' => 0.0,
        'type' => 'From',
      },
      {
        'count' => 4.0,
        'isMask' => 0.0,
        'type' => 'Gain',
      },
      {
        'count' => 53.0,
        'isMask' => 0.0,
        'type' => 'Goto',
      },
      {
        'count' => 3990.0,
        'isMask' => 0.0,
        'type' => 'Inport',
      },
      {
        'count' => 8.0,
        'isMask' => 0.0,
        'type' => 'Logic',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'Mux',
      },
      {
        'count' => 3771.0,
        'isMask' => 0.0,
        'type' => 'Outport',
      },
      {
        'count' => 32.0,
        'isMask' => 0.0,
        'type' => 'RelationalOperator',
      },
      {
        'count' => 15624.0,
        'isMask' => 0.0,
        'type' => 'S-Function',
      },
      {
        'count' => 17.0,
        'isMask' => 0.0,
        'type' => 'Scope',
      },
      {
        'count' => 2458.0,
        'isMask' => 0.0,
        'type' => 'SubSystem',
      },
      {
        'count' => 58.0,
        'isMask' => 0.0,
        'type' => 'Terminator',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Armed Trigger',
      },
      {
        'count' => 32.0,
        'isMask' => 1.0,
        'type' => 'Compare To Constant',
      },
      {
        'count' => 40.0,
        'isMask' => 1.0,
        'type' => 'Complex to Real-Imag',
      },
      {
        'count' => 24.0,
        'isMask' => 1.0,
        'type' => 'Downsample',
      },
      {
        'count' => 24.0,
        'isMask' => 1.0,
        'type' => 'Integer Delay',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'TT800 Uniform Psedo-Random Number Generator',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Uniform to Normal Converter',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'White Gaussian Noise Generator',
      },
      {
        'count' => 8.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Accumulator Block',
      },
      {
        'count' => 488.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Adder/Subtracter Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Addressable Shift Register Block',
      },
      {
        'count' => 295.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Arithmetic Relational Operator Block',
      },
      {
        'count' => 8.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Assert Block',
      },
      {
        'count' => 29.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Binary Shift Operator Block',
      },
      {
        'count' => 2425.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bit Slice Extractor Block',
      },
      {
        'count' => 3.0,
        'isMask' => 1.0,
        'type' => 'Xilinx BitBasher Block',
      },
      {
        'count' => 8.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bitwise Expression Evaluator Block',
      },
      {
        'count' => 773.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bus Concatenator Block',
      },
      {
        'count' => 576.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bus Multiplexer Block',
      },
      {
        'count' => 1812.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Constant Block Block',
      },
      {
        'count' => 440.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Counter Block',
      },
      {
        'count' => 120.0,
        'isMask' => 1.0,
        'type' => 'Xilinx DSP48E Block',
      },
      {
        'count' => 915.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Delay Block',
      },
      {
        'count' => 32.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Disregard Subsystem For Generation Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Dual Port Random Access Memory Block',
      },
      {
        'count' => 177.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway In Block',
      },
      {
        'count' => 198.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway Out Block',
      },
      {
        'count' => 264.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Input Scaler Block',
      },
      {
        'count' => 849.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Inverter Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Linear Feedback Shift Register Block',
      },
      {
        'count' => 1188.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Logical Block Block',
      },
      {
        'count' => 348.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Multiplier Block',
      },
      {
        'count' => 20.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Negate Block Block',
      },
      {
        'count' => 58.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Register Block',
      },
      {
        'count' => 20.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Resource Estimator Block',
      },
      {
        'count' => 200.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Single Port Random Access Memory Block',
      },
      {
        'count' => 208.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Single Port Read-Only Memory Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx System Generator Block',
      },
      {
        'count' => 1218.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Converter Block',
      },
      {
        'count' => 2884.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Reinterpreter Block',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'adc',
      },
      {
        'count' => 16.0,
        'isMask' => 1.0,
        'type' => 'adder_tree',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'barrel_switcher',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'bi_real_unscr_4x',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'biplex_core',
      },
      {
        'count' => 52.0,
        'isMask' => 1.0,
        'type' => 'butterfly_direct',
      },
      {
        'count' => 180.0,
        'isMask' => 1.0,
        'type' => 'c_to_ri',
      },
      {
        'count' => 120.0,
        'isMask' => 1.0,
        'type' => 'caddsub_dsp48e',
      },
      {
        'count' => 20.0,
        'isMask' => 1.0,
        'type' => 'cmult_4bit_em',
      },
      {
        'count' => 44.0,
        'isMask' => 1.0,
        'type' => 'coeff_gen',
      },
      {
        'count' => 216.0,
        'isMask' => 1.0,
        'type' => 'convert',
      },
      {
        'count' => 208.0,
        'isMask' => 1.0,
        'type' => 'convert_of',
      },
      {
        'count' => 136.0,
        'isMask' => 1.0,
        'type' => 'delay_bram',
      },
      {
        'count' => 24.0,
        'isMask' => 1.0,
        'type' => 'delay_slr',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'edge_detect',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'fft_biplex_real_4x',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'fft_direct',
      },
      {
        'count' => 36.0,
        'isMask' => 1.0,
        'type' => 'fft_stage_n',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'fft_unscrambler',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'fft_wideband_real',
      },
      {
        'count' => 16.0,
        'isMask' => 1.0,
        'type' => 'first_tap_real',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'freeze_cntr',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'gpio',
      },
      {
        'count' => 16.0,
        'isMask' => 1.0,
        'type' => 'last_tap_real',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'mirror_spectrum',
      },
      {
        'count' => 128.0,
        'isMask' => 1.0,
        'type' => 'munge',
      },
      {
        'count' => 3.0,
        'isMask' => 1.0,
        'type' => 'negedge',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'negedge_delay',
      },
      {
        'count' => 16.0,
        'isMask' => 1.0,
        'type' => 'pfb_coeff_gen',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'pfb_fir_real',
      },
      {
        'count' => 32.0,
        'isMask' => 1.0,
        'type' => 'pfb_tap_real',
      },
      {
        'count' => 40.0,
        'isMask' => 1.0,
        'type' => 'pipeline',
      },
      {
        'count' => 8.0,
        'isMask' => 1.0,
        'type' => 'posedge',
      },
      {
        'count' => 32.0,
        'isMask' => 1.0,
        'type' => 'pulse_ext',
      },
      {
        'count' => 16.0,
        'isMask' => 1.0,
        'type' => 'reorder',
      },
      {
        'count' => 188.0,
        'isMask' => 1.0,
        'type' => 'ri_to_c',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'sincos',
      },
      {
        'count' => 8.0,
        'isMask' => 1.0,
        'type' => 'sincos_dsp48e',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'square_transposer',
      },
      {
        'count' => 88.0,
        'isMask' => 1.0,
        'type' => 'sync_delay',
      },
      {
        'count' => 16.0,
        'isMask' => 1.0,
        'type' => 'sync_delay_en',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'sync_gen_hw',
      },
      {
        'count' => 44.0,
        'isMask' => 1.0,
        'type' => 'twiddle_general_4mult',
      },
      {
        'count' => 8.0,
        'isMask' => 1.0,
        'type' => 'twiddle_pass_through',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'xsg core config',
      },
    ],
    'model_globals_initialized' => 1.0,
    'model_path' => '/scratch/zaki/workspace/baobab/baopoco.mdl',
    'myxilinx' => '/tools/xilinx/11.5/ISE',
    'ngc_config' => {
      'include_cf' => 0.0,
      'include_clockwrapper' => 1.0,
    },
    'ngc_files' => [ 'xlpersistentdff.ngc', ],
    'num_sim_cycles' => '10',
    'package' => 'ff1136',
    'part' => 'xc5vsx95t',
    'partFamily' => 'virtex5',
    'port_data_types_enabled' => 1.0,
    'preserve_hierarchy' => 0.0,
    'report_true_rates' => 0.0,
    'run_coregen' => '0',
    'sample_time_colors_enabled' => 0.0,
    'sampletimecolors' => 0.0,
    'sg_version' => '11.5',
    'simulation_island_subsystem_handle' => 81477.00024414062,
    'simulink_accelerator_running' => 0.0,
    'simulink_debugger_running' => 0.0,
    'simulink_period' => 1.0,
    'speed' => '-1',
    'synthesisTool' => 'XST',
    'synthesis_language' => 'vhdl',
    'synthesis_tool' => 'XST',
    'sysclk_period' => 5.0,
    'sysgen' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen',
    'sysgenRoot' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen',
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
      'dbl_ovrd' => -1.0,
      'dcm_input_clock_period' => 100.0,
      'deprecated_control' => 'off',
      'directory' => './baopoco/sysgen',
      'incr_netlist' => 'off',
      'master_sysgen_token_handle' => 81478.00012207031,
      'ngc_config' => {
        'include_cf' => 0.0,
        'include_clockwrapper' => 1.0,
      },
      'package' => 'ff1136',
      'part' => 'xc5vsx95t',
      'preserve_hierarchy' => 0.0,
      'simulation_island_subsystem_handle' => 81477.00024414062,
      'simulink_period' => 1.0,
      'speed' => '-1',
      'synthesis_language' => 'vhdl',
      'synthesis_tool' => 'XST',
      'sysclk_period' => 5.0,
      'testbench' => 0,
      'trim_vbits' => 1.0,
      'xilinx_device' => 'xc5vsx95t-1ff1136',
      'xilinxfamily' => 'virtex5',
    },
    'sysgen_Root' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen',
    'systemClockPeriod' => 5.0,
    'tempdir' => '/scratch/tmp',
    'testbench' => 0,
    'tmpDir' => '/scratch/zaki/workspace/baobab/baopoco/sysgen/sysgen',
    'trim_vbits' => 1.0,
    'use_strict_names' => 1,
    'user_tips_enabled' => 0.0,
    'usertemp' => '/scratch/tmp/sysgentmp-zaki',
    'using71Netlister' => 1,
    'verilog_files' => [
      'conv_pkg.v',
      'synth_reg.v',
      'synth_reg_w_init.v',
      'convert_type.v',
    ],
    'version' => '11.5',
    'vhdl_files' => [
      'conv_pkg.vhd',
      'synth_reg.vhd',
      'synth_reg_w_init.vhd',
    ],
    'vsimtime' => '330.000000 ns',
    'write_port_labels_on_update' => 1.0,
    'xilinx' => '/tools/xilinx/11.5/ISE',
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
    'entity_declaration_hash' => '286e11e0b3341e3ba2b8455c43bb3c52',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((1 - 1) downto 0);
  signal in1_1_27: unsigned((7 - 1) downto 0);
  signal y_2_1_concat: unsigned((8 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((1 - 1) downto 0);
    in1 : in std_logic_vector((7 - 1) downto 0);
    y : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_83e473517e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c57ea3080e26b91e8e84b240574965e7',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_1_26: unsigned((1 - 1) downto 0);
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => "0");
  signal op_mem_22_20_front_din: unsigned((1 - 1) downto 0);
  signal op_mem_22_20_back: unsigned((1 - 1) downto 0);
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: unsigned((1 - 1) downto 0);
begin
  ip_1_26 <= std_logic_vector_to_unsigned(ip);
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_22_20_push_front_pop_back_en = \'1\')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= std_logic_vector_to_unsigned(not unsigned_to_std_logic_vector(ip_1_26));
  op_mem_22_20_push_front_pop_back_en <= \'0\';
  op <= unsigned_to_std_logic_vector(internal_ip_12_1_bitnot);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'inverter_e2b989a05e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f8bcc339ab1dd4d8c279cce5e794b5e3',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((8 - 1) downto 0);
  signal output_port_5_5_force: signed((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_4389dc89bf',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '8a655806ee6fd350ca1188599aca669f',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '9ebeb9d18b97404dd32c533c2ace900c',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ecacdc34b5fae3ec926227d44fb7ee3f',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((8 - 1) downto 0);
  signal in1_1_27: unsigned((8 - 1) downto 0);
  signal in2_1_31: unsigned((8 - 1) downto 0);
  signal in3_1_35: unsigned((8 - 1) downto 0);
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
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
    in0 : in std_logic_vector((8 - 1) downto 0);
    in1 : in std_logic_vector((8 - 1) downto 0);
    in2 : in std_logic_vector((8 - 1) downto 0);
    in3 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_a1e126f11c',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '57f1496f368ca03c45ad4e2bae591da4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: signed((8 - 1) downto 0);
  signal output_port_5_5_force: unsigned((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_d51df7ac30',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '88830d9c3c6209fe09bc9058d6f00190',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((32 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "00000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((32 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((32 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((32 - 1) downto 0);
    q : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_672d2b8d1e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'efd075c0353dc2670dad7ba7b1998393',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => \'0\');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
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
      'entity_name' => 'delay_9f02caa990',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'de4543ef2796aec3076335969ebf2eb6',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal d3_1_33: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  d3_1_33 <= d3(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33;
  y <= std_logic_to_vector(fully_2_1_bit);
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_a6d07705dd',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
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
    'entity_declaration_hash' => '45b08fbf681293905345ae20fd454826',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((17 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((18 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((17 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_66f3e02bd3',
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
  $instrs = {
    'entity_declaration_hash' => 'bfe827a7dcc38271d9b48486b7e0b5b5',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: signed((17 - 1) downto 0);
  signal output_port_5_5_force: unsigned((17 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((17 - 1) downto 0);
    output_port : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_573890e1c0',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e21795ebf94bad0e3d160072e19f6559',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_17_32: signed((18 - 1) downto 0);
  signal b_17_35: unsigned((11 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((8 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "00000000");
  signal op_mem_91_20_front_din: signed((8 - 1) downto 0);
  signal op_mem_91_20_back: signed((8 - 1) downto 0);
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
  signal cast_69_18: signed((19 - 1) downto 0);
  signal cast_69_22: signed((19 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((19 - 1) downto 0);
  signal cast_internal_s_83_3_convert: signed((8 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
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
  cast_69_18 <= s2s_cast(a_17_32, 11, 19, 11);
  cast_69_22 <= u2s_cast(b_17_35, 11, 19, 11);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_69_5_addsub, 11, 8, 0);
  op_mem_91_20_front_din <= cast_internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= \'1\';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= \'1\';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((18 - 1) downto 0);
    b : in std_logic_vector((11 - 1) downto 0);
    s : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'addsub_542df25df6',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '7c36c2c9a48fc3ca700abe5a955f023c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "01111111111";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_f5d769813d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ff50ba078e47c895be7fdf485283a5f1',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
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
    'entity_declaration_hash' => '5231e928ad38f4ccfe3f2b39c1953685',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((11 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((11 - 1) downto 0);
    output_port : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_6b1adb5d55',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c867e3badbcaed2eda704ffcaf4412f9',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic_vector((1 - 1) downto 0);
  signal d1_1_27: std_logic_vector((1 - 1) downto 0);
  signal fully_2_1_bit: std_logic_vector((1 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  fully_2_1_bit <= d0_1_24 xor d1_1_27;
  y <= fully_2_1_bit;
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
      'entity_name' => 'logical_9d76333483',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '48fd311d610fbd8fecdbc59b44a6d1a9',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => "00000000000000000000000000000000");
  signal latency_pipe_5_26_front_din: std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26_back: std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic_vector((32 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (latency_pipe_5_26_push_front_pop_back_en = \'1\')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 xor d1_1_27;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= \'1\';
  y <= latency_pipe_5_26_back;
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_1e8142cab4',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '5d4d31854a676e1990a931c49d524d0a',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => "00000000000000000000000000000000");
  signal latency_pipe_5_26_front_din: std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26_back: std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic_vector((32 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (latency_pipe_5_26_push_front_pop_back_en = \'1\')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= \'1\';
  y <= latency_pipe_5_26_back;
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_0fa52c7c40',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'fc263240c0f285876a563644e04e64e1',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "00101011010110110010010100000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_f8d41441cb',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b2412ac8928bf531528dfd77ef6bbb31',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "11011011100010110000000000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_7a5a41eeb1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '65aa56d0f92b54b22fbf8818351710fc',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '0f0b287859a8cceacf8727f563fab8ee',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_1_23: unsigned((32 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of unsigned((32 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "00000000000000000000000000000000");
  signal op_mem_46_20_front_din: unsigned((32 - 1) downto 0);
  signal op_mem_46_20_back: unsigned((32 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_25_3_lsh: unsigned((39 - 1) downto 0);
  signal cast_internal_ip_33_3_convert: unsigned((32 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_unsigned(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_46_20_push_front_pop_back_en = \'1\')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_25_3_lsh <= u2u_cast(ip_1_23, 0, 39, 7);
  cast_internal_ip_33_3_convert <= u2u_cast(cast_internal_ip_25_3_lsh, 0, 32, 0);
  op_mem_46_20_push_front_pop_back_en <= \'0\';
  op <= unsigned_to_std_logic_vector(cast_internal_ip_33_3_convert);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'shift_a3d6e8e72f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b6dde5d0dea7d18c1888b58be7289d94',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_1_23: unsigned((32 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of unsigned((32 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "00000000000000000000000000000000");
  signal op_mem_46_20_front_din: unsigned((32 - 1) downto 0);
  signal op_mem_46_20_back: unsigned((32 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_25_3_lsh: unsigned((47 - 1) downto 0);
  signal cast_internal_ip_33_3_convert: unsigned((32 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_unsigned(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_46_20_push_front_pop_back_en = \'1\')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_25_3_lsh <= u2u_cast(ip_1_23, 0, 47, 15);
  cast_internal_ip_33_3_convert <= u2u_cast(cast_internal_ip_25_3_lsh, 0, 32, 0);
  op_mem_46_20_push_front_pop_back_en <= \'0\';
  op <= unsigned_to_std_logic_vector(cast_internal_ip_33_3_convert);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'shift_9c14cd27bd',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c8ac2f8b02c35d537ca2d762269f7a07',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "00000000000000000000000000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_37567836aa',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '3457bf0e2107d6fd3c04246b80d160d0',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  signal d2_1_30: std_logic_vector((32 - 1) downto 0);
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => "00000000000000000000000000000000");
  signal latency_pipe_5_26_front_din: std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26_back: std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic_vector((32 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (latency_pipe_5_26_push_front_pop_back_en = \'1\')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 xor d1_1_27 xor d2_1_30;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= \'1\';
  y <= latency_pipe_5_26_back;
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    d2 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_f1acd27428',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd75c37d6c1e048825d10856c01338094',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "00000000000000000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((32 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((32 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((32 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
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
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_52ae77d946',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '9be243c53fb88be73b08e7d680e0cb4f',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "00000000000000000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((32 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((32 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((32 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_86a34309e7',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '76acfc38ee4c7c3606e61c552ca875fb',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "10001110101111111101000000101000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_79cd191324',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b111462f3db3ae0021502422d7c56876',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'adbeea64c52d18a798c2af13f10cd337',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_1_23: unsigned((32 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of unsigned((32 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "00000000000000000000000000000000");
  signal op_mem_46_20_front_din: unsigned((32 - 1) downto 0);
  signal op_mem_46_20_back: unsigned((32 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_33_3_convert: unsigned((32 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_unsigned(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_46_20_push_front_pop_back_en = \'1\')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_33_3_convert <= u2u_cast(ip_1_23, 1, 32, 0);
  op_mem_46_20_front_din <= cast_internal_ip_33_3_convert;
  op_mem_46_20_push_front_pop_back_en <= \'1\';
  op <= unsigned_to_std_logic_vector(op_mem_46_20_back);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'shift_82822b2849',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c31f1205caca18c863bbf4bac9c4bc62',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '46a10353416c7104fcef63ca03244b56',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c3d222e0033915b0127c86900e2b8f33',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '630463a3868998e237fce9bc1231c1ba',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7565cf21446db2bc396b3da4ffece863',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '3738f6ddb3a6bdcb841b57008becd392',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f2de56972eae9f5508b68bfaff29a231',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal curr_1_24: boolean;
  signal prev_1_30: boolean;
  signal bitnot_5_25: boolean;
  signal fulldout_5_2_bit: boolean;
begin
  curr_1_24 <= ((curr) = "1");
  prev_1_30 <= ((prev) = "1");
  bitnot_5_25 <= ((not boolean_to_vector(prev_1_30)) = "1");
  fulldout_5_2_bit <= ((boolean_to_vector(bitnot_5_25) and boolean_to_vector(curr_1_24)) = "1");
  dout <= boolean_to_vector(fulldout_5_2_bit);
end',
      'crippled_entity' => 'is
  port (
    curr : in std_logic_vector((1 - 1) downto 0);
    prev : in std_logic_vector((1 - 1) downto 0);
    dout : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'expr_c255d1cf74',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd538cd5ebc2336ded358a22928b684cc',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal bootstrap_1_24: boolean;
  signal ld_1_35: boolean;
  signal ld_ext_1_39: boolean;
  type array_type_pipe_12_18 is array (0 to (1 - 1)) of boolean;
  signal pipe_12_18: array_type_pipe_12_18 := (
    0 => false);
  signal pipe_12_18_front_din: boolean;
  signal pipe_12_18_back: boolean;
  signal pipe_12_18_push_front_pop_back_en: std_logic;
  signal bit_6_39: boolean;
  signal fulldout_6_2_bit: boolean;
begin
  bootstrap_1_24 <= ((bootstrap) = "1");
  ld_1_35 <= ((ld) = "1");
  ld_ext_1_39 <= ((ld_ext) = "1");
  pipe_12_18_back <= pipe_12_18(0);
  proc_pipe_12_18: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_12_18_push_front_pop_back_en = \'1\')) then
        pipe_12_18(0) <= pipe_12_18_front_din;
      end if;
    end if;
  end process proc_pipe_12_18;
  bit_6_39 <= ((boolean_to_vector(ld_1_35) or boolean_to_vector(bootstrap_1_24)) = "1");
  fulldout_6_2_bit <= ((boolean_to_vector(ld_ext_1_39) or boolean_to_vector(bit_6_39)) = "1");
  pipe_12_18_front_din <= fulldout_6_2_bit;
  pipe_12_18_push_front_pop_back_en <= \'1\';
  dout <= boolean_to_vector(pipe_12_18_back);
end',
      'crippled_entity' => 'is
  port (
    bootstrap : in std_logic_vector((1 - 1) downto 0);
    ld : in std_logic_vector((1 - 1) downto 0);
    ld_ext : in std_logic_vector((1 - 1) downto 0);
    dout : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'expr_52ec6336d5',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c0e6ab1387cbc038e5dbbef4ee36a042',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal din_1_24: unsigned((32 - 1) downto 0);
  signal load_1_28: boolean;
  signal lfsr0_2_19_next: unsigned((1 - 1) downto 0);
  signal lfsr0_2_19: unsigned((1 - 1) downto 0) := "0";
  signal lfsr1_3_19_next: unsigned((1 - 1) downto 0);
  signal lfsr1_3_19: unsigned((1 - 1) downto 0) := "0";
  signal lfsr2_4_19_next: unsigned((1 - 1) downto 0);
  signal lfsr2_4_19: unsigned((1 - 1) downto 0) := "0";
  signal lfsr3_5_19_next: unsigned((1 - 1) downto 0);
  signal lfsr3_5_19: unsigned((1 - 1) downto 0);
  signal lfsr3_5_19_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr3_5_19_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr4_6_19_next: unsigned((1 - 1) downto 0);
  signal lfsr4_6_19: unsigned((1 - 1) downto 0);
  signal lfsr4_6_19_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr4_6_19_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr5_7_19_next: unsigned((1 - 1) downto 0);
  signal lfsr5_7_19: unsigned((1 - 1) downto 0);
  signal lfsr5_7_19_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr5_7_19_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr6_8_19_next: unsigned((1 - 1) downto 0);
  signal lfsr6_8_19: unsigned((1 - 1) downto 0);
  signal lfsr6_8_19_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr6_8_19_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr7_9_19_next: unsigned((1 - 1) downto 0);
  signal lfsr7_9_19: unsigned((1 - 1) downto 0) := "0";
  signal lfsr8_10_19_next: unsigned((1 - 1) downto 0);
  signal lfsr8_10_19: unsigned((1 - 1) downto 0) := "0";
  signal lfsr9_11_19_next: unsigned((1 - 1) downto 0);
  signal lfsr9_11_19: unsigned((1 - 1) downto 0);
  signal lfsr9_11_19_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr9_11_19_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr10_12_20_next: unsigned((1 - 1) downto 0);
  signal lfsr10_12_20: unsigned((1 - 1) downto 0);
  signal lfsr10_12_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr10_12_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr11_13_20_next: unsigned((1 - 1) downto 0);
  signal lfsr11_13_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr12_14_20_next: unsigned((1 - 1) downto 0);
  signal lfsr12_14_20: unsigned((1 - 1) downto 0);
  signal lfsr12_14_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr12_14_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr13_15_20_next: unsigned((1 - 1) downto 0);
  signal lfsr13_15_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr14_16_20_next: unsigned((1 - 1) downto 0);
  signal lfsr14_16_20: unsigned((1 - 1) downto 0);
  signal lfsr14_16_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr14_16_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr15_17_20_next: unsigned((1 - 1) downto 0);
  signal lfsr15_17_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr16_18_20_next: unsigned((1 - 1) downto 0);
  signal lfsr16_18_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr17_19_20_next: unsigned((1 - 1) downto 0);
  signal lfsr17_19_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr18_20_20_next: unsigned((1 - 1) downto 0);
  signal lfsr18_20_20: unsigned((1 - 1) downto 0);
  signal lfsr18_20_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr18_20_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr19_21_20_next: unsigned((1 - 1) downto 0);
  signal lfsr19_21_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr20_22_20_next: unsigned((1 - 1) downto 0);
  signal lfsr20_22_20: unsigned((1 - 1) downto 0);
  signal lfsr20_22_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr20_22_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr21_23_20_next: unsigned((1 - 1) downto 0);
  signal lfsr21_23_20: unsigned((1 - 1) downto 0);
  signal lfsr21_23_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr21_23_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr22_24_20_next: unsigned((1 - 1) downto 0);
  signal lfsr22_24_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr23_25_20_next: unsigned((1 - 1) downto 0);
  signal lfsr23_25_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr24_26_20_next: unsigned((1 - 1) downto 0);
  signal lfsr24_26_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr25_27_20_next: unsigned((1 - 1) downto 0);
  signal lfsr25_27_20: unsigned((1 - 1) downto 0);
  signal lfsr25_27_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr25_27_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr26_28_20_next: unsigned((1 - 1) downto 0);
  signal lfsr26_28_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr27_29_20_next: unsigned((1 - 1) downto 0);
  signal lfsr27_29_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr28_30_20_next: unsigned((1 - 1) downto 0);
  signal lfsr28_30_20: unsigned((1 - 1) downto 0);
  signal lfsr28_30_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr28_30_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr29_31_20_next: unsigned((1 - 1) downto 0);
  signal lfsr29_31_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr30_32_20_next: unsigned((1 - 1) downto 0);
  signal lfsr30_32_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr31_33_20_next: unsigned((1 - 1) downto 0);
  signal lfsr31_33_20: unsigned((1 - 1) downto 0) := "0";
  signal concat_34_26: unsigned((32 - 1) downto 0);
  signal bit_71_41: unsigned((1 - 1) downto 0);
  signal bit_71_28: unsigned((1 - 1) downto 0);
  signal temp_71_1_bit: unsigned((1 - 1) downto 0);
  signal lfsr31_105_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr30_106_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr29_107_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr28_108_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr27_109_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr26_110_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr25_111_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr24_112_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr23_113_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr22_114_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr21_115_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr20_116_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr19_117_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr18_118_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr17_119_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr16_120_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr15_121_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr14_122_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr13_123_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr12_124_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr11_125_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr10_126_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr9_127_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr8_128_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr7_129_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr6_130_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr5_131_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr4_132_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr3_133_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr2_134_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr1_135_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr0_136_1_slice: unsigned((1 - 1) downto 0);
  signal not_70_4: boolean;
  signal lfsr17_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr14_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr1_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr31_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr7_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr5_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr22_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr21_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr29_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr27_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr4_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr20_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr16_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr10_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr28_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr25_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr6_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr13_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr12_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr15_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr8_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr26_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr0_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr23_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr11_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr9_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr24_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr30_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr2_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr3_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr19_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr18_join_70_1: unsigned((1 - 1) downto 0);
begin
  din_1_24 <= std_logic_vector_to_unsigned(din);
  load_1_28 <= ((load) = "1");
  proc_lfsr0_2_19: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if (ce = \'1\') then
        lfsr0_2_19 <= lfsr0_2_19_next;
      end if;
    end if;
  end process proc_lfsr0_2_19;
  proc_lfsr1_3_19: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if (ce = \'1\') then
        lfsr1_3_19 <= lfsr1_3_19_next;
      end if;
    end if;
  end process proc_lfsr1_3_19;
  proc_lfsr2_4_19: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if (ce = \'1\') then
        lfsr2_4_19 <= lfsr2_4_19_next;
      end if;
    end if;
  end process proc_lfsr2_4_19;
  lfsr3_5_19_reg_i <= unsigned_to_std_logic_vector(lfsr3_5_19_next);
  lfsr3_5_19 <= std_logic_vector_to_unsigned(lfsr3_5_19_reg_o);
  lfsr3_5_19_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr3_5_19_reg_i, 
      o => lfsr3_5_19_reg_o);
  lfsr4_6_19_reg_i <= unsigned_to_std_logic_vector(lfsr4_6_19_next);
  lfsr4_6_19 <= std_logic_vector_to_unsigned(lfsr4_6_19_reg_o);
  lfsr4_6_19_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr4_6_19_reg_i, 
      o => lfsr4_6_19_reg_o);
  lfsr5_7_19_reg_i <= unsigned_to_std_logic_vector(lfsr5_7_19_next);
  lfsr5_7_19 <= std_logic_vector_to_unsigned(lfsr5_7_19_reg_o);
  lfsr5_7_19_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr5_7_19_reg_i, 
      o => lfsr5_7_19_reg_o);
  lfsr6_8_19_reg_i <= unsigned_to_std_logic_vector(lfsr6_8_19_next);
  lfsr6_8_19 <= std_logic_vector_to_unsigned(lfsr6_8_19_reg_o);
  lfsr6_8_19_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr6_8_19_reg_i, 
      o => lfsr6_8_19_reg_o);
  proc_lfsr7_9_19: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if (ce = \'1\') then
        lfsr7_9_19 <= lfsr7_9_19_next;
      end if;
    end if;
  end process proc_lfsr7_9_19;
  proc_lfsr8_10_19: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if (ce = \'1\') then
        lfsr8_10_19 <= lfsr8_10_19_next;
      end if;
    end if;
  end process proc_lfsr8_10_19;
  lfsr9_11_19_reg_i <= unsigned_to_std_logic_vector(lfsr9_11_19_next);
  lfsr9_11_19 <= std_logic_vector_to_unsigned(lfsr9_11_19_reg_o);
  lfsr9_11_19_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr9_11_19_reg_i, 
      o => lfsr9_11_19_reg_o);
  lfsr10_12_20_reg_i <= unsigned_to_std_logic_vector(lfsr10_12_20_next);
  lfsr10_12_20 <= std_logic_vector_to_unsigned(lfsr10_12_20_reg_o);
  lfsr10_12_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr10_12_20_reg_i, 
      o => lfsr10_12_20_reg_o);
  proc_lfsr11_13_20: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if (ce = \'1\') then
        lfsr11_13_20 <= lfsr11_13_20_next;
      end if;
    end if;
  end process proc_lfsr11_13_20;
  lfsr12_14_20_reg_i <= unsigned_to_std_logic_vector(lfsr12_14_20_next);
  lfsr12_14_20 <= std_logic_vector_to_unsigned(lfsr12_14_20_reg_o);
  lfsr12_14_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr12_14_20_reg_i, 
      o => lfsr12_14_20_reg_o);
  proc_lfsr13_15_20: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if (ce = \'1\') then
        lfsr13_15_20 <= lfsr13_15_20_next;
      end if;
    end if;
  end process proc_lfsr13_15_20;
  lfsr14_16_20_reg_i <= unsigned_to_std_logic_vector(lfsr14_16_20_next);
  lfsr14_16_20 <= std_logic_vector_to_unsigned(lfsr14_16_20_reg_o);
  lfsr14_16_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr14_16_20_reg_i, 
      o => lfsr14_16_20_reg_o);
  proc_lfsr15_17_20: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if (ce = \'1\') then
        lfsr15_17_20 <= lfsr15_17_20_next;
      end if;
    end if;
  end process proc_lfsr15_17_20;
  proc_lfsr16_18_20: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if (ce = \'1\') then
        lfsr16_18_20 <= lfsr16_18_20_next;
      end if;
    end if;
  end process proc_lfsr16_18_20;
  proc_lfsr17_19_20: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if (ce = \'1\') then
        lfsr17_19_20 <= lfsr17_19_20_next;
      end if;
    end if;
  end process proc_lfsr17_19_20;
  lfsr18_20_20_reg_i <= unsigned_to_std_logic_vector(lfsr18_20_20_next);
  lfsr18_20_20 <= std_logic_vector_to_unsigned(lfsr18_20_20_reg_o);
  lfsr18_20_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr18_20_20_reg_i, 
      o => lfsr18_20_20_reg_o);
  proc_lfsr19_21_20: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if (ce = \'1\') then
        lfsr19_21_20 <= lfsr19_21_20_next;
      end if;
    end if;
  end process proc_lfsr19_21_20;
  lfsr20_22_20_reg_i <= unsigned_to_std_logic_vector(lfsr20_22_20_next);
  lfsr20_22_20 <= std_logic_vector_to_unsigned(lfsr20_22_20_reg_o);
  lfsr20_22_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr20_22_20_reg_i, 
      o => lfsr20_22_20_reg_o);
  lfsr21_23_20_reg_i <= unsigned_to_std_logic_vector(lfsr21_23_20_next);
  lfsr21_23_20 <= std_logic_vector_to_unsigned(lfsr21_23_20_reg_o);
  lfsr21_23_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr21_23_20_reg_i, 
      o => lfsr21_23_20_reg_o);
  proc_lfsr22_24_20: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if (ce = \'1\') then
        lfsr22_24_20 <= lfsr22_24_20_next;
      end if;
    end if;
  end process proc_lfsr22_24_20;
  proc_lfsr23_25_20: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if (ce = \'1\') then
        lfsr23_25_20 <= lfsr23_25_20_next;
      end if;
    end if;
  end process proc_lfsr23_25_20;
  proc_lfsr24_26_20: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if (ce = \'1\') then
        lfsr24_26_20 <= lfsr24_26_20_next;
      end if;
    end if;
  end process proc_lfsr24_26_20;
  lfsr25_27_20_reg_i <= unsigned_to_std_logic_vector(lfsr25_27_20_next);
  lfsr25_27_20 <= std_logic_vector_to_unsigned(lfsr25_27_20_reg_o);
  lfsr25_27_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr25_27_20_reg_i, 
      o => lfsr25_27_20_reg_o);
  proc_lfsr26_28_20: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if (ce = \'1\') then
        lfsr26_28_20 <= lfsr26_28_20_next;
      end if;
    end if;
  end process proc_lfsr26_28_20;
  proc_lfsr27_29_20: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if (ce = \'1\') then
        lfsr27_29_20 <= lfsr27_29_20_next;
      end if;
    end if;
  end process proc_lfsr27_29_20;
  lfsr28_30_20_reg_i <= unsigned_to_std_logic_vector(lfsr28_30_20_next);
  lfsr28_30_20 <= std_logic_vector_to_unsigned(lfsr28_30_20_reg_o);
  lfsr28_30_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr28_30_20_reg_i, 
      o => lfsr28_30_20_reg_o);
  proc_lfsr29_31_20: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if (ce = \'1\') then
        lfsr29_31_20 <= lfsr29_31_20_next;
      end if;
    end if;
  end process proc_lfsr29_31_20;
  proc_lfsr30_32_20: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if (ce = \'1\') then
        lfsr30_32_20 <= lfsr30_32_20_next;
      end if;
    end if;
  end process proc_lfsr30_32_20;
  proc_lfsr31_33_20: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if (ce = \'1\') then
        lfsr31_33_20 <= lfsr31_33_20_next;
      end if;
    end if;
  end process proc_lfsr31_33_20;
  concat_34_26 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(lfsr31_33_20) & unsigned_to_std_logic_vector(lfsr30_32_20) & unsigned_to_std_logic_vector(lfsr29_31_20) & unsigned_to_std_logic_vector(lfsr28_30_20) & unsigned_to_std_logic_vector(lfsr27_29_20) & unsigned_to_std_logic_vector(lfsr26_28_20) & unsigned_to_std_logic_vector(lfsr25_27_20) & unsigned_to_std_logic_vector(lfsr24_26_20) & unsigned_to_std_logic_vector(lfsr23_25_20) & unsigned_to_std_logic_vector(lfsr22_24_20) & unsigned_to_std_logic_vector(lfsr21_23_20) & unsigned_to_std_logic_vector(lfsr20_22_20) & unsigned_to_std_logic_vector(lfsr19_21_20) & unsigned_to_std_logic_vector(lfsr18_20_20) & unsigned_to_std_logic_vector(lfsr17_19_20) & unsigned_to_std_logic_vector(lfsr16_18_20) & unsigned_to_std_logic_vector(lfsr15_17_20) & unsigned_to_std_logic_vector(lfsr14_16_20) & unsigned_to_std_logic_vector(lfsr13_15_20) & unsigned_to_std_logic_vector(lfsr12_14_20) & unsigned_to_std_logic_vector(lfsr11_13_20) & unsigned_to_std_logic_vector(lfsr10_12_20) & unsigned_to_std_logic_vector(lfsr9_11_19) & unsigned_to_std_logic_vector(lfsr8_10_19) & unsigned_to_std_logic_vector(lfsr7_9_19) & unsigned_to_std_logic_vector(lfsr6_8_19) & unsigned_to_std_logic_vector(lfsr5_7_19) & unsigned_to_std_logic_vector(lfsr4_6_19) & unsigned_to_std_logic_vector(lfsr3_5_19) & unsigned_to_std_logic_vector(lfsr2_4_19) & unsigned_to_std_logic_vector(lfsr1_3_19) & unsigned_to_std_logic_vector(lfsr0_2_19));
  bit_71_41 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(lfsr31_33_20) xor unsigned_to_std_logic_vector(lfsr21_23_20));
  bit_71_28 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(lfsr1_3_19) xor unsigned_to_std_logic_vector(bit_71_41));
  temp_71_1_bit <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(lfsr0_2_19) xor unsigned_to_std_logic_vector(bit_71_28));
  lfsr31_105_1_slice <= u2u_slice(din_1_24, 31, 31);
  lfsr30_106_1_slice <= u2u_slice(din_1_24, 30, 30);
  lfsr29_107_1_slice <= u2u_slice(din_1_24, 29, 29);
  lfsr28_108_1_slice <= u2u_slice(din_1_24, 28, 28);
  lfsr27_109_1_slice <= u2u_slice(din_1_24, 27, 27);
  lfsr26_110_1_slice <= u2u_slice(din_1_24, 26, 26);
  lfsr25_111_1_slice <= u2u_slice(din_1_24, 25, 25);
  lfsr24_112_1_slice <= u2u_slice(din_1_24, 24, 24);
  lfsr23_113_1_slice <= u2u_slice(din_1_24, 23, 23);
  lfsr22_114_1_slice <= u2u_slice(din_1_24, 22, 22);
  lfsr21_115_1_slice <= u2u_slice(din_1_24, 21, 21);
  lfsr20_116_1_slice <= u2u_slice(din_1_24, 20, 20);
  lfsr19_117_1_slice <= u2u_slice(din_1_24, 19, 19);
  lfsr18_118_1_slice <= u2u_slice(din_1_24, 18, 18);
  lfsr17_119_1_slice <= u2u_slice(din_1_24, 17, 17);
  lfsr16_120_1_slice <= u2u_slice(din_1_24, 16, 16);
  lfsr15_121_1_slice <= u2u_slice(din_1_24, 15, 15);
  lfsr14_122_1_slice <= u2u_slice(din_1_24, 14, 14);
  lfsr13_123_1_slice <= u2u_slice(din_1_24, 13, 13);
  lfsr12_124_1_slice <= u2u_slice(din_1_24, 12, 12);
  lfsr11_125_1_slice <= u2u_slice(din_1_24, 11, 11);
  lfsr10_126_1_slice <= u2u_slice(din_1_24, 10, 10);
  lfsr9_127_1_slice <= u2u_slice(din_1_24, 9, 9);
  lfsr8_128_1_slice <= u2u_slice(din_1_24, 8, 8);
  lfsr7_129_1_slice <= u2u_slice(din_1_24, 7, 7);
  lfsr6_130_1_slice <= u2u_slice(din_1_24, 6, 6);
  lfsr5_131_1_slice <= u2u_slice(din_1_24, 5, 5);
  lfsr4_132_1_slice <= u2u_slice(din_1_24, 4, 4);
  lfsr3_133_1_slice <= u2u_slice(din_1_24, 3, 3);
  lfsr2_134_1_slice <= u2u_slice(din_1_24, 2, 2);
  lfsr1_135_1_slice <= u2u_slice(din_1_24, 1, 1);
  lfsr0_136_1_slice <= u2u_slice(din_1_24, 0, 0);
  not_70_4 <=  not load_1_28;
  proc_if_70_1: process (lfsr0_136_1_slice, lfsr0_2_19, lfsr10_126_1_slice, lfsr10_12_20, lfsr11_125_1_slice, lfsr11_13_20, lfsr12_124_1_slice, lfsr12_14_20, lfsr13_123_1_slice, lfsr13_15_20, lfsr14_122_1_slice, lfsr14_16_20, lfsr15_121_1_slice, lfsr15_17_20, lfsr16_120_1_slice, lfsr16_18_20, lfsr17_119_1_slice, lfsr17_19_20, lfsr18_118_1_slice, lfsr18_20_20, lfsr19_117_1_slice, lfsr19_21_20, lfsr1_135_1_slice, lfsr1_3_19, lfsr20_116_1_slice, lfsr20_22_20, lfsr21_115_1_slice, lfsr21_23_20, lfsr22_114_1_slice, lfsr22_24_20, lfsr23_113_1_slice, lfsr23_25_20, lfsr24_112_1_slice, lfsr24_26_20, lfsr25_111_1_slice, lfsr25_27_20, lfsr26_110_1_slice, lfsr26_28_20, lfsr27_109_1_slice, lfsr27_29_20, lfsr28_108_1_slice, lfsr28_30_20, lfsr29_107_1_slice, lfsr29_31_20, lfsr2_134_1_slice, lfsr2_4_19, lfsr30_106_1_slice, lfsr30_32_20, lfsr31_105_1_slice, lfsr3_133_1_slice, lfsr3_5_19, lfsr4_132_1_slice, lfsr4_6_19, lfsr5_131_1_slice, lfsr5_7_19, lfsr6_130_1_slice, lfsr6_8_19, lfsr7_129_1_slice, lfsr7_9_19, lfsr8_10_19, lfsr8_128_1_slice, lfsr9_11_19, lfsr9_127_1_slice, not_70_4, temp_71_1_bit)
  is
  begin
    if not_70_4 then
      lfsr17_join_70_1 <= lfsr16_18_20;
      lfsr14_join_70_1 <= lfsr13_15_20;
      lfsr1_join_70_1 <= lfsr0_2_19;
      lfsr31_join_70_1 <= lfsr30_32_20;
      lfsr7_join_70_1 <= lfsr6_8_19;
      lfsr5_join_70_1 <= lfsr4_6_19;
      lfsr22_join_70_1 <= lfsr21_23_20;
      lfsr21_join_70_1 <= lfsr20_22_20;
      lfsr29_join_70_1 <= lfsr28_30_20;
      lfsr27_join_70_1 <= lfsr26_28_20;
      lfsr4_join_70_1 <= lfsr3_5_19;
      lfsr20_join_70_1 <= lfsr19_21_20;
      lfsr16_join_70_1 <= lfsr15_17_20;
      lfsr10_join_70_1 <= lfsr9_11_19;
      lfsr28_join_70_1 <= lfsr27_29_20;
      lfsr25_join_70_1 <= lfsr24_26_20;
      lfsr6_join_70_1 <= lfsr5_7_19;
      lfsr13_join_70_1 <= lfsr12_14_20;
      lfsr12_join_70_1 <= lfsr11_13_20;
      lfsr15_join_70_1 <= lfsr14_16_20;
      lfsr8_join_70_1 <= lfsr7_9_19;
      lfsr26_join_70_1 <= lfsr25_27_20;
      lfsr0_join_70_1 <= temp_71_1_bit;
      lfsr23_join_70_1 <= lfsr22_24_20;
      lfsr11_join_70_1 <= lfsr10_12_20;
      lfsr9_join_70_1 <= lfsr8_10_19;
      lfsr24_join_70_1 <= lfsr23_25_20;
      lfsr30_join_70_1 <= lfsr29_31_20;
      lfsr2_join_70_1 <= lfsr1_3_19;
      lfsr3_join_70_1 <= lfsr2_4_19;
      lfsr19_join_70_1 <= lfsr18_20_20;
      lfsr18_join_70_1 <= lfsr17_19_20;
    else 
      lfsr17_join_70_1 <= lfsr17_119_1_slice;
      lfsr14_join_70_1 <= lfsr14_122_1_slice;
      lfsr1_join_70_1 <= lfsr1_135_1_slice;
      lfsr31_join_70_1 <= lfsr31_105_1_slice;
      lfsr7_join_70_1 <= lfsr7_129_1_slice;
      lfsr5_join_70_1 <= lfsr5_131_1_slice;
      lfsr22_join_70_1 <= lfsr22_114_1_slice;
      lfsr21_join_70_1 <= lfsr21_115_1_slice;
      lfsr29_join_70_1 <= lfsr29_107_1_slice;
      lfsr27_join_70_1 <= lfsr27_109_1_slice;
      lfsr4_join_70_1 <= lfsr4_132_1_slice;
      lfsr20_join_70_1 <= lfsr20_116_1_slice;
      lfsr16_join_70_1 <= lfsr16_120_1_slice;
      lfsr10_join_70_1 <= lfsr10_126_1_slice;
      lfsr28_join_70_1 <= lfsr28_108_1_slice;
      lfsr25_join_70_1 <= lfsr25_111_1_slice;
      lfsr6_join_70_1 <= lfsr6_130_1_slice;
      lfsr13_join_70_1 <= lfsr13_123_1_slice;
      lfsr12_join_70_1 <= lfsr12_124_1_slice;
      lfsr15_join_70_1 <= lfsr15_121_1_slice;
      lfsr8_join_70_1 <= lfsr8_128_1_slice;
      lfsr26_join_70_1 <= lfsr26_110_1_slice;
      lfsr0_join_70_1 <= lfsr0_136_1_slice;
      lfsr23_join_70_1 <= lfsr23_113_1_slice;
      lfsr11_join_70_1 <= lfsr11_125_1_slice;
      lfsr9_join_70_1 <= lfsr9_127_1_slice;
      lfsr24_join_70_1 <= lfsr24_112_1_slice;
      lfsr30_join_70_1 <= lfsr30_106_1_slice;
      lfsr2_join_70_1 <= lfsr2_134_1_slice;
      lfsr3_join_70_1 <= lfsr3_133_1_slice;
      lfsr19_join_70_1 <= lfsr19_117_1_slice;
      lfsr18_join_70_1 <= lfsr18_118_1_slice;
    end if;
  end process proc_if_70_1;
  lfsr0_2_19_next <= lfsr0_join_70_1;
  lfsr1_3_19_next <= lfsr1_join_70_1;
  lfsr2_4_19_next <= lfsr2_join_70_1;
  lfsr3_5_19_next <= lfsr3_join_70_1;
  lfsr4_6_19_next <= lfsr4_join_70_1;
  lfsr5_7_19_next <= lfsr5_join_70_1;
  lfsr6_8_19_next <= lfsr6_join_70_1;
  lfsr7_9_19_next <= lfsr7_join_70_1;
  lfsr8_10_19_next <= lfsr8_join_70_1;
  lfsr9_11_19_next <= lfsr9_join_70_1;
  lfsr10_12_20_next <= lfsr10_join_70_1;
  lfsr11_13_20_next <= lfsr11_join_70_1;
  lfsr12_14_20_next <= lfsr12_join_70_1;
  lfsr13_15_20_next <= lfsr13_join_70_1;
  lfsr14_16_20_next <= lfsr14_join_70_1;
  lfsr15_17_20_next <= lfsr15_join_70_1;
  lfsr16_18_20_next <= lfsr16_join_70_1;
  lfsr17_19_20_next <= lfsr17_join_70_1;
  lfsr18_20_20_next <= lfsr18_join_70_1;
  lfsr19_21_20_next <= lfsr19_join_70_1;
  lfsr20_22_20_next <= lfsr20_join_70_1;
  lfsr21_23_20_next <= lfsr21_join_70_1;
  lfsr22_24_20_next <= lfsr22_join_70_1;
  lfsr23_25_20_next <= lfsr23_join_70_1;
  lfsr24_26_20_next <= lfsr24_join_70_1;
  lfsr25_27_20_next <= lfsr25_join_70_1;
  lfsr26_28_20_next <= lfsr26_join_70_1;
  lfsr27_29_20_next <= lfsr27_join_70_1;
  lfsr28_30_20_next <= lfsr28_join_70_1;
  lfsr29_31_20_next <= lfsr29_join_70_1;
  lfsr30_32_20_next <= lfsr30_join_70_1;
  lfsr31_33_20_next <= lfsr31_join_70_1;
  dout <= unsigned_to_std_logic_vector(concat_34_26);
end',
      'crippled_entity' => 'is
  port (
    din : in std_logic_vector((32 - 1) downto 0);
    load : in std_logic_vector((1 - 1) downto 0);
    dout : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'lfsr_49df07576f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  use SgGenerateCores;
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 1, 1, 2, 2, 2, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 7, 7, 7, 8, 8, 9, 9, 9, A, A, B, B, B, C, C, D, D, D, E, E, E, F, F, 10, 10, 10, 11, 11, 12, 12, 12, 13, 13, 14, 14, 14, 15, 15, 15, 16, 16, 17, 17, 17, 18, 18, 19, 19, 19, 1A, 1A, 1B, 1B, 1B, 1C, 1C, 1C, 1D, 1D, 1E, 1E, 1E, 1F, 1F, 1F, 20, 20, 21, 21, 21, 22, 22, 23, 23, 23, 24, 24, 24, 25, 25, 26, 26, 26, 27, 27, 27, 28, 28, 29, 29, 29, 2A, 2A, 2A, 2B, 2B, 2B, 2C, 2C, 2D, 2D, 2D, 2E, 2E, 2E, 2F, 2F, 30, 30, 30, 31, 31, 31, 32, 32, 32, 33, 33, 34, 34, 34, 35, 35, 35, 36, 36, 36, 37, 37, 37, 38, 38, 38, 39, 39, 3A, 3A, 3A, 3B, 3B, 3B, 3C, 3C, 3C, 3D, 3D, 3D, 3E, 3E, 3E, 3F, 3F, 3F, 40, 40, 40, 41, 41, 41, 42, 42, 42, 43, 43, 43, 44, 44, 44, 45, 45, 45, 46, 46, 46, 47, 47, 47, 48, 48, 48, 49, 49, 49, 4A, 4A, 4A, 4B, 4B, 4B, 4C, 4C, 4C, 4D, 4D, 4D, 4E, 4E, 4E, 4E, 4F, 4F, 4F, 50, 50, 50, 51, 51, 51, 52, 52, 52, 52, 53, 53, 53, 54, 54, 54, 54, 55, 55, 55, 56, 56, 56, 57, 57, 57, 57, 58, 58, 58, 59, 59, 59, 59, 5A, 5A, 5A, 5B, 5B, 5B, 5B, 5C, 5C, 5C, 5C, 5D, 5D, 5D, 5E, 5E, 5E, 5E, 5F, 5F, 5F, 5F, 60, 60, 60, 60, 61, 61, 61, 61, 62, 62, 62, 62, 63, 63, 63, 63, 64, 64, 64, 64, 65, 65, 65, 65, 66, 66, 66, 66, 67, 67, 67, 67, 68, 68, 68, 68, 68, 69, 69, 69, 69, 6A, 6A, 6A, 6A, 6A, 6B, 6B, 6B, 6B, 6C, 6C, 6C, 6C, 6C, 6D, 6D, 6D, 6D, 6D, 6E, 6E, 6E, 6E, 6E, 6F, 6F, 6F, 6F, 6F, 70, 70, 70, 70, 70, 71, 71, 71, 71, 71, 71, 72, 72, 72, 72, 72, 73, 73, 73, 73, 73, 73, 74, 74, 74, 74, 74, 74, 75, 75, 75, 75, 75, 75, 75, 76, 76, 76, 76, 76, 76, 77, 77, 77, 77, 77, 77, 77, 78, 78, 78, 78, 78, 78, 78, 79, 79, 79, 79, 79, 79, 79, 79, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 79, 79, 79, 79, 79, 79, 79, 79, 78, 78, 78, 78, 78, 78, 78, 77, 77, 77, 77, 77, 77, 77, 76, 76, 76, 76, 76, 76, 75, 75, 75, 75, 75, 75, 75, 74, 74, 74, 74, 74, 74, 73, 73, 73, 73, 73, 73, 72, 72, 72, 72, 72, 71, 71, 71, 71, 71, 71, 70, 70, 70, 70, 70, 6F, 6F, 6F, 6F, 6F, 6E, 6E, 6E, 6E, 6E, 6D, 6D, 6D, 6D, 6D, 6C, 6C, 6C, 6C, 6C, 6B, 6B, 6B, 6B, 6A, 6A, 6A, 6A, 6A, 69, 69, 69, 69, 68, 68, 68, 68, 68, 67, 67, 67, 67, 66, 66, 66, 66, 65, 65, 65, 65, 64, 64, 64, 64, 63, 63, 63, 63, 62, 62, 62, 62, 61, 61, 61, 61, 60, 60, 60, 60, 5F, 5F, 5F, 5F, 5E, 5E, 5E, 5E, 5D, 5D, 5D, 5C, 5C, 5C, 5C, 5B, 5B, 5B, 5B, 5A, 5A, 5A, 59, 59, 59, 59, 58, 58, 58, 57, 57, 57, 57, 56, 56, 56, 55, 55, 55, 54, 54, 54, 54, 53, 53, 53, 52, 52, 52, 52, 51, 51, 51, 50, 50, 50, 4F, 4F, 4F, 4E, 4E, 4E, 4E, 4D, 4D, 4D, 4C, 4C, 4C, 4B, 4B, 4B, 4A, 4A, 4A, 49, 49, 49, 48, 48, 48, 47, 47, 47, 46, 46, 46, 45, 45, 45, 44, 44, 44, 43, 43, 43, 42, 42, 42, 41, 41, 41, 40, 40, 40, 3F, 3F, 3F, 3E, 3E, 3E, 3D, 3D, 3D, 3C, 3C, 3C, 3B, 3B, 3B, 3A, 3A, 3A, 39, 39, 38, 38, 38, 37, 37, 37, 36, 36, 36, 35, 35, 35, 34, 34, 34, 33, 33, 32, 32, 32, 31, 31, 31, 30, 30, 30, 2F, 2F, 2E, 2E, 2E, 2D, 2D, 2D, 2C, 2C, 2B, 2B, 2B, 2A, 2A, 2A, 29, 29, 29, 28, 28, 27, 27, 27, 26, 26, 26, 25, 25, 24, 24, 24, 23, 23, 23, 22, 22, 21, 21, 21, 20, 20, 1F, 1F, 1F, 1E, 1E, 1E, 1D, 1D, 1C, 1C, 1C, 1B, 1B, 1B, 1A, 1A, 19, 19, 19, 18, 18, 17, 17, 17, 16, 16, 15, 15, 15, 14, 14, 14, 13, 13, 12, 12, 12, 11, 11, 10, 10, 10, F, F, E, E, E, D, D, D, C, C, B, B, B, A, A, 9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 2, 2, 2, 1, 1, 0, 0, 0, FF, FF, FE, FE, FE, FD, FD, FC, FC, FC, FB, FB, FB, FA, FA, F9, F9, F9, F8, F8, F7, F7, F7, F6, F6, F5, F5, F5, F4, F4, F3, F3, F3, F2, F2, F2, F1, F1, F0, F0, F0, EF, EF, EE, EE, EE, ED, ED, EC, EC, EC, EB, EB, EB, EA, EA, E9, E9, E9, E8, E8, E7, E7, E7, E6, E6, E5, E5, E5, E4, E4, E4, E3, E3, E2, E2, E2, E1, E1, E1, E0, E0, DF, DF, DF, DE, DE, DD, DD, DD, DC, DC, DC, DB, DB, DA, DA, DA, D9, D9, D9, D8, D8, D7, D7, D7, D6, D6, D6, D5, D5, D5, D4, D4, D3, D3, D3, D2, D2, D2, D1, D1, D0, D0, D0, CF, CF, CF, CE, CE, CE, CD, CD, CC, CC, CC, CB, CB, CB, CA, CA, CA, C9, C9, C9, C8, C8, C8, C7, C7, C6, C6, C6, C5, C5, C5, C4, C4, C4, C3, C3, C3, C2, C2, C2, C1, C1, C1, C0, C0, C0, BF, BF, BF, BE, BE, BE, BD, BD, BD, BC, BC, BC, BB, BB, BB, BA, BA, BA, B9, B9, B9, B8, B8, B8, B7, B7, B7, B6, B6, B6, B5, B5, B5, B4, B4, B4, B3, B3, B3, B2, B2, B2, B2, B1, B1, B1, B0, B0, B0, AF, AF, AF, AE, AE, AE, AE, AD, AD, AD, AC, AC, AC, AC, AB, AB, AB, AA, AA, AA, A9, A9, A9, A9, A8, A8, A8, A7, A7, A7, A7, A6, A6, A6, A5, A5, A5, A5, A4, A4, A4, A4, A3, A3, A3, A2, A2, A2, A2, A1, A1, A1, A1, A0, A0, A0, A0, 9F, 9F, 9F, 9F, 9E, 9E, 9E, 9E, 9D, 9D, 9D, 9D, 9C, 9C, 9C, 9C, 9B, 9B, 9B, 9B, 9A, 9A, 9A, 9A, 99, 99, 99, 99, 98, 98, 98, 98, 98, 97, 97, 97, 97, 96, 96, 96, 96, 96, 95, 95, 95, 95, 94, 94, 94, 94, 94, 93, 93, 93, 93, 93, 92, 92, 92, 92, 92, 91, 91, 91, 91, 91, 90, 90, 90, 90, 90, 8F, 8F, 8F, 8F, 8F, 8F, 8E, 8E, 8E, 8E, 8E, 8D, 8D, 8D, 8D, 8D, 8D, 8C, 8C, 8C, 8C, 8C, 8C, 8B, 8B, 8B, 8B, 8B, 8B, 8B, 8A, 8A, 8A, 8A, 8A, 8A, 89, 89, 89, 89, 89, 89, 89, 88, 88, 88, 88, 88, 88, 88, 87, 87, 87, 87, 87, 87, 87, 87, 86, 86, 86, 86, 86, 86, 86, 86, 86, 85, 85, 85, 85, 85, 85, 85, 85, 85, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 85, 85, 85, 85, 85, 85, 85, 85, 85, 86, 86, 86, 86, 86, 86, 86, 86, 86, 87, 87, 87, 87, 87, 87, 87, 87, 88, 88, 88, 88, 88, 88, 88, 89, 89, 89, 89, 89, 89, 89, 8A, 8A, 8A, 8A, 8A, 8A, 8B, 8B, 8B, 8B, 8B, 8B, 8B, 8C, 8C, 8C, 8C, 8C, 8C, 8D, 8D, 8D, 8D, 8D, 8D, 8E, 8E, 8E, 8E, 8E, 8F, 8F, 8F, 8F, 8F, 8F, 90, 90, 90, 90, 90, 91, 91, 91, 91, 91, 92, 92, 92, 92, 92, 93, 93, 93, 93, 93, 94, 94, 94, 94, 94, 95, 95, 95, 95, 96, 96, 96, 96, 96, 97, 97, 97, 97, 98, 98, 98, 98, 98, 99, 99, 99, 99, 9A, 9A, 9A, 9A, 9B, 9B, 9B, 9B, 9C, 9C, 9C, 9C, 9D, 9D, 9D, 9D, 9E, 9E, 9E, 9E, 9F, 9F, 9F, 9F, A0, A0, A0, A0, A1, A1, A1, A1, A2, A2, A2, A2, A3, A3, A3, A4, A4, A4, A4, A5, A5, A5, A5, A6, A6, A6, A7, A7, A7, A7, A8, A8, A8, A9, A9, A9, A9, AA, AA, AA, AB, AB, AB, AC, AC, AC, AC, AD, AD, AD, AE, AE, AE, AE, AF, AF, AF, B0, B0, B0, B1, B1, B1, B2, B2, B2, B2, B3, B3, B3, B4, B4, B4, B5, B5, B5, B6, B6, B6, B7, B7, B7, B8, B8, B8, B9, B9, B9, BA, BA, BA, BB, BB, BB, BC, BC, BC, BD, BD, BD, BE, BE, BE, BF, BF, BF, C0, C0, C0, C1, C1, C1, C2, C2, C2, C3, C3, C3, C4, C4, C4, C5, C5, C5, C6, C6, C6, C7, C7, C8, C8, C8, C9, C9, C9, CA, CA, CA, CB, CB, CB, CC, CC, CC, CD, CD, CE, CE, CE, CF, CF, CF, D0, D0, D0, D1, D1, D2, D2, D2, D3, D3, D3, D4, D4, D5, D5, D5, D6, D6, D6, D7, D7, D7, D8, D8, D9, D9, D9, DA, DA, DA, DB, DB, DC, DC, DC, DD, DD, DD, DE, DE, DF, DF, DF, E0, E0, E1, E1, E1, E2, E2, E2, E3, E3, E4, E4, E4, E5, E5, E5, E6, E6, E7, E7, E7, E8, E8, E9, E9, E9, EA, EA, EB, EB, EB, EC, EC, EC, ED, ED, EE, EE, EE, EF, EF, F0, F0, F0, F1, F1, F2, F2, F2, F3, F3, F3, F4, F4, F5, F5, F5, F6, F6, F7, F7, F7, F8, F8, F9, F9, F9, FA, FA, FB, FB, FB, FC, FC, FC, FD, FD, FE, FE, FE, FF, FF, 0;',
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
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_33_e4cac21e8ed012aa',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '268a65455af8e29ac6a9fb668b541773',
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
      'core_name0' => 'bmg_33_e4cac21e8ed012aa',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 79, 79, 79, 79, 79, 79, 79, 79, 78, 78, 78, 78, 78, 78, 78, 77, 77, 77, 77, 77, 77, 77, 76, 76, 76, 76, 76, 76, 75, 75, 75, 75, 75, 75, 75, 74, 74, 74, 74, 74, 74, 73, 73, 73, 73, 73, 73, 72, 72, 72, 72, 72, 71, 71, 71, 71, 71, 71, 70, 70, 70, 70, 70, 6F, 6F, 6F, 6F, 6F, 6E, 6E, 6E, 6E, 6E, 6D, 6D, 6D, 6D, 6D, 6C, 6C, 6C, 6C, 6C, 6B, 6B, 6B, 6B, 6A, 6A, 6A, 6A, 6A, 69, 69, 69, 69, 68, 68, 68, 68, 68, 67, 67, 67, 67, 66, 66, 66, 66, 65, 65, 65, 65, 64, 64, 64, 64, 63, 63, 63, 63, 62, 62, 62, 62, 61, 61, 61, 61, 60, 60, 60, 60, 5F, 5F, 5F, 5F, 5E, 5E, 5E, 5E, 5D, 5D, 5D, 5C, 5C, 5C, 5C, 5B, 5B, 5B, 5B, 5A, 5A, 5A, 59, 59, 59, 59, 58, 58, 58, 57, 57, 57, 57, 56, 56, 56, 55, 55, 55, 54, 54, 54, 54, 53, 53, 53, 52, 52, 52, 52, 51, 51, 51, 50, 50, 50, 4F, 4F, 4F, 4E, 4E, 4E, 4E, 4D, 4D, 4D, 4C, 4C, 4C, 4B, 4B, 4B, 4A, 4A, 4A, 49, 49, 49, 48, 48, 48, 47, 47, 47, 46, 46, 46, 45, 45, 45, 44, 44, 44, 43, 43, 43, 42, 42, 42, 41, 41, 41, 40, 40, 40, 3F, 3F, 3F, 3E, 3E, 3E, 3D, 3D, 3D, 3C, 3C, 3C, 3B, 3B, 3B, 3A, 3A, 3A, 39, 39, 38, 38, 38, 37, 37, 37, 36, 36, 36, 35, 35, 35, 34, 34, 34, 33, 33, 32, 32, 32, 31, 31, 31, 30, 30, 30, 2F, 2F, 2E, 2E, 2E, 2D, 2D, 2D, 2C, 2C, 2B, 2B, 2B, 2A, 2A, 2A, 29, 29, 29, 28, 28, 27, 27, 27, 26, 26, 26, 25, 25, 24, 24, 24, 23, 23, 23, 22, 22, 21, 21, 21, 20, 20, 1F, 1F, 1F, 1E, 1E, 1E, 1D, 1D, 1C, 1C, 1C, 1B, 1B, 1B, 1A, 1A, 19, 19, 19, 18, 18, 17, 17, 17, 16, 16, 15, 15, 15, 14, 14, 14, 13, 13, 12, 12, 12, 11, 11, 10, 10, 10, F, F, E, E, E, D, D, D, C, C, B, B, B, A, A, 9, 9, 9, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 2, 2, 2, 1, 1, 0, 0, 0, FF, FF, FE, FE, FE, FD, FD, FC, FC, FC, FB, FB, FB, FA, FA, F9, F9, F9, F8, F8, F7, F7, F7, F6, F6, F5, F5, F5, F4, F4, F3, F3, F3, F2, F2, F2, F1, F1, F0, F0, F0, EF, EF, EE, EE, EE, ED, ED, EC, EC, EC, EB, EB, EB, EA, EA, E9, E9, E9, E8, E8, E7, E7, E7, E6, E6, E5, E5, E5, E4, E4, E4, E3, E3, E2, E2, E2, E1, E1, E1, E0, E0, DF, DF, DF, DE, DE, DD, DD, DD, DC, DC, DC, DB, DB, DA, DA, DA, D9, D9, D9, D8, D8, D7, D7, D7, D6, D6, D6, D5, D5, D5, D4, D4, D3, D3, D3, D2, D2, D2, D1, D1, D0, D0, D0, CF, CF, CF, CE, CE, CE, CD, CD, CC, CC, CC, CB, CB, CB, CA, CA, CA, C9, C9, C9, C8, C8, C8, C7, C7, C6, C6, C6, C5, C5, C5, C4, C4, C4, C3, C3, C3, C2, C2, C2, C1, C1, C1, C0, C0, C0, BF, BF, BF, BE, BE, BE, BD, BD, BD, BC, BC, BC, BB, BB, BB, BA, BA, BA, B9, B9, B9, B8, B8, B8, B7, B7, B7, B6, B6, B6, B5, B5, B5, B4, B4, B4, B3, B3, B3, B2, B2, B2, B2, B1, B1, B1, B0, B0, B0, AF, AF, AF, AE, AE, AE, AE, AD, AD, AD, AC, AC, AC, AC, AB, AB, AB, AA, AA, AA, A9, A9, A9, A9, A8, A8, A8, A7, A7, A7, A7, A6, A6, A6, A5, A5, A5, A5, A4, A4, A4, A4, A3, A3, A3, A2, A2, A2, A2, A1, A1, A1, A1, A0, A0, A0, A0, 9F, 9F, 9F, 9F, 9E, 9E, 9E, 9E, 9D, 9D, 9D, 9D, 9C, 9C, 9C, 9C, 9B, 9B, 9B, 9B, 9A, 9A, 9A, 9A, 99, 99, 99, 99, 98, 98, 98, 98, 98, 97, 97, 97, 97, 96, 96, 96, 96, 96, 95, 95, 95, 95, 94, 94, 94, 94, 94, 93, 93, 93, 93, 93, 92, 92, 92, 92, 92, 91, 91, 91, 91, 91, 90, 90, 90, 90, 90, 8F, 8F, 8F, 8F, 8F, 8F, 8E, 8E, 8E, 8E, 8E, 8D, 8D, 8D, 8D, 8D, 8D, 8C, 8C, 8C, 8C, 8C, 8C, 8B, 8B, 8B, 8B, 8B, 8B, 8B, 8A, 8A, 8A, 8A, 8A, 8A, 89, 89, 89, 89, 89, 89, 89, 88, 88, 88, 88, 88, 88, 88, 87, 87, 87, 87, 87, 87, 87, 87, 86, 86, 86, 86, 86, 86, 86, 86, 86, 85, 85, 85, 85, 85, 85, 85, 85, 85, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 85, 85, 85, 85, 85, 85, 85, 85, 85, 86, 86, 86, 86, 86, 86, 86, 86, 86, 87, 87, 87, 87, 87, 87, 87, 87, 88, 88, 88, 88, 88, 88, 88, 89, 89, 89, 89, 89, 89, 89, 8A, 8A, 8A, 8A, 8A, 8A, 8B, 8B, 8B, 8B, 8B, 8B, 8B, 8C, 8C, 8C, 8C, 8C, 8C, 8D, 8D, 8D, 8D, 8D, 8D, 8E, 8E, 8E, 8E, 8E, 8F, 8F, 8F, 8F, 8F, 8F, 90, 90, 90, 90, 90, 91, 91, 91, 91, 91, 92, 92, 92, 92, 92, 93, 93, 93, 93, 93, 94, 94, 94, 94, 94, 95, 95, 95, 95, 96, 96, 96, 96, 96, 97, 97, 97, 97, 98, 98, 98, 98, 98, 99, 99, 99, 99, 9A, 9A, 9A, 9A, 9B, 9B, 9B, 9B, 9C, 9C, 9C, 9C, 9D, 9D, 9D, 9D, 9E, 9E, 9E, 9E, 9F, 9F, 9F, 9F, A0, A0, A0, A0, A1, A1, A1, A1, A2, A2, A2, A2, A3, A3, A3, A4, A4, A4, A4, A5, A5, A5, A5, A6, A6, A6, A7, A7, A7, A7, A8, A8, A8, A9, A9, A9, A9, AA, AA, AA, AB, AB, AB, AC, AC, AC, AC, AD, AD, AD, AE, AE, AE, AE, AF, AF, AF, B0, B0, B0, B1, B1, B1, B2, B2, B2, B2, B3, B3, B3, B4, B4, B4, B5, B5, B5, B6, B6, B6, B7, B7, B7, B8, B8, B8, B9, B9, B9, BA, BA, BA, BB, BB, BB, BC, BC, BC, BD, BD, BD, BE, BE, BE, BF, BF, BF, C0, C0, C0, C1, C1, C1, C2, C2, C2, C3, C3, C3, C4, C4, C4, C5, C5, C5, C6, C6, C6, C7, C7, C8, C8, C8, C9, C9, C9, CA, CA, CA, CB, CB, CB, CC, CC, CC, CD, CD, CE, CE, CE, CF, CF, CF, D0, D0, D0, D1, D1, D2, D2, D2, D3, D3, D3, D4, D4, D5, D5, D5, D6, D6, D6, D7, D7, D7, D8, D8, D9, D9, D9, DA, DA, DA, DB, DB, DC, DC, DC, DD, DD, DD, DE, DE, DF, DF, DF, E0, E0, E1, E1, E1, E2, E2, E2, E3, E3, E4, E4, E4, E5, E5, E5, E6, E6, E7, E7, E7, E8, E8, E9, E9, E9, EA, EA, EB, EB, EB, EC, EC, EC, ED, ED, EE, EE, EE, EF, EF, F0, F0, F0, F1, F1, F2, F2, F2, F3, F3, F3, F4, F4, F5, F5, F5, F6, F6, F7, F7, F7, F8, F8, F9, F9, F9, FA, FA, FB, FB, FB, FC, FC, FC, FD, FD, FE, FE, FE, FF, FF, 0, 0, 0, 1, 1, 2, 2, 2, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 7, 7, 7, 8, 8, 9, 9, 9, A, A, B, B, B, C, C, D, D, D, E, E, E, F, F, 10, 10, 10, 11, 11, 12, 12, 12, 13, 13, 14, 14, 14, 15, 15, 15, 16, 16, 17, 17, 17, 18, 18, 19, 19, 19, 1A, 1A, 1B, 1B, 1B, 1C, 1C, 1C, 1D, 1D, 1E, 1E, 1E, 1F, 1F, 1F, 20, 20, 21, 21, 21, 22, 22, 23, 23, 23, 24, 24, 24, 25, 25, 26, 26, 26, 27, 27, 27, 28, 28, 29, 29, 29, 2A, 2A, 2A, 2B, 2B, 2B, 2C, 2C, 2D, 2D, 2D, 2E, 2E, 2E, 2F, 2F, 30, 30, 30, 31, 31, 31, 32, 32, 32, 33, 33, 34, 34, 34, 35, 35, 35, 36, 36, 36, 37, 37, 37, 38, 38, 38, 39, 39, 3A, 3A, 3A, 3B, 3B, 3B, 3C, 3C, 3C, 3D, 3D, 3D, 3E, 3E, 3E, 3F, 3F, 3F, 40, 40, 40, 41, 41, 41, 42, 42, 42, 43, 43, 43, 44, 44, 44, 45, 45, 45, 46, 46, 46, 47, 47, 47, 48, 48, 48, 49, 49, 49, 4A, 4A, 4A, 4B, 4B, 4B, 4C, 4C, 4C, 4D, 4D, 4D, 4E, 4E, 4E, 4E, 4F, 4F, 4F, 50, 50, 50, 51, 51, 51, 52, 52, 52, 52, 53, 53, 53, 54, 54, 54, 54, 55, 55, 55, 56, 56, 56, 57, 57, 57, 57, 58, 58, 58, 59, 59, 59, 59, 5A, 5A, 5A, 5B, 5B, 5B, 5B, 5C, 5C, 5C, 5C, 5D, 5D, 5D, 5E, 5E, 5E, 5E, 5F, 5F, 5F, 5F, 60, 60, 60, 60, 61, 61, 61, 61, 62, 62, 62, 62, 63, 63, 63, 63, 64, 64, 64, 64, 65, 65, 65, 65, 66, 66, 66, 66, 67, 67, 67, 67, 68, 68, 68, 68, 68, 69, 69, 69, 69, 6A, 6A, 6A, 6A, 6A, 6B, 6B, 6B, 6B, 6C, 6C, 6C, 6C, 6C, 6D, 6D, 6D, 6D, 6D, 6E, 6E, 6E, 6E, 6E, 6F, 6F, 6F, 6F, 6F, 70, 70, 70, 70, 70, 71, 71, 71, 71, 71, 71, 72, 72, 72, 72, 72, 73, 73, 73, 73, 73, 73, 74, 74, 74, 74, 74, 74, 75, 75, 75, 75, 75, 75, 75, 76, 76, 76, 76, 76, 76, 77, 77, 77, 77, 77, 77, 77, 78, 78, 78, 78, 78, 78, 78, 79, 79, 79, 79, 79, 79, 79, 79, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F;',
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
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_33_7de9efda5baafcf4',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '4fe5d20b1509f961823e6403ebb614eb',
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
      'core_name0' => 'bmg_33_7de9efda5baafcf4',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'bc8e6f2dca113530423e4b17246582d2',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 1F4, 1DD, 1CE, 1C4, 1BC, 1B5, 1AF, 1AA, 1A6, 1A2, 19E, 19A, 197, 194, 191, 18F, 18C, 18A, 188, 185, 183, 181, 180, 17E, 17C, 17A, 179, 177, 176, 174, 173, 171, 170, 16E, 16D, 16C, 16B, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 15F, 15E, 15D, 15C, 15B, 15A, 159, 158, 157, 157, 156, 155, 154, 153, 153, 152, 151, 150, 14F, 14F, 14E, 14D, 14D, 14C, 14B, 14B, 14A, 149, 149, 148, 147, 147, 146, 145, 145, 144, 144, 143, 142, 142, 141, 141, 140, 13F, 13F, 13E, 13E, 13D, 13D, 13C, 13C, 13B, 13B, 13A, 13A, 139, 138, 138, 137, 137, 137, 136, 136, 135, 135, 134, 134, 133, 133, 132, 132, 131, 131, 130, 130, 130, 12F, 12F, 12E, 12E, 12D, 12D, 12D, 12C, 12C, 12B, 12B, 12B, 12A, 12A, 129, 129, 129, 128, 128, 127, 127, 127, 126, 126, 125, 125, 125, 124, 124, 124, 123, 123, 122, 122, 122, 121, 121, 121, 120, 120, 120, 11F, 11F, 11F, 11E, 11E, 11E, 11D, 11D, 11D, 11C, 11C, 11C, 11B, 11B, 11B, 11A, 11A, 11A, 119, 119, 119, 118, 118, 118, 117, 117, 117, 117, 116, 116, 116, 115, 115, 115, 114, 114, 114, 114, 113, 113, 113, 112, 112, 112, 111, 111, 111, 111, 110, 110, 110, 10F, 10F, 10F, 10F, 10E, 10E, 10E, 10E, 10D, 10D, 10D, 10C, 10C, 10C, 10C, 10B, 10B, 10B, 10B, 10A, 10A, 10A, 10A, 109, 109, 109, 109, 108, 108, 108, 108, 107, 107, 107, 107, 106, 106, 106, 106, 105, 105, 105, 105, 104, 104, 104, 104, 103, 103, 103, 103, 102, 102, 102, 102, 101, 101, 101, 101, 101, 100, 100, 100, 100, FF, FF, FF, FF, FE, FE, FE, FE, FE, FD, FD, FD, FD, FC, FC, FC, FC, FC, FB, FB, FB, FB, FA, FA, FA, FA, FA, F9, F9, F9, F9, F9, F8, F8, F8, F8, F7, F7, F7, F7, F7, F6, F6, F6, F6, F6, F5, F5, F5, F5, F5, F4, F4, F4, F4, F4, F3, F3, F3, F3, F3, F2, F2, F2, F2, F2, F1, F1, F1, F1, F1, F0, F0, F0, F0, F0, EF, EF, EF, EF, EF, EE, EE, EE, EE, EE, EE, ED, ED, ED, ED, ED, EC, EC, EC, EC, EC, EB, EB, EB, EB, EB, EB, EA, EA, EA, EA, EA, E9, E9, E9, E9, E9, E9, E8, E8, E8, E8, E8, E8, E7, E7, E7, E7, E7, E6, E6, E6, E6, E6, E6, E5, E5, E5, E5, E5, E5, E4, E4, E4, E4, E4, E4, E3, E3, E3, E3, E3, E2, E2, E2, E2, E2, E2, E1, E1, E1, E1, E1, E1, E0, E0, E0, E0, E0, E0, DF, DF, DF, DF, DF, DF, DF, DE, DE, DE, DE, DE, DE, DD, DD, DD, DD, DD, DD, DC, DC, DC, DC, DC, DC, DB, DB, DB, DB, DB, DB, DB, DA, DA, DA, DA, DA, DA, D9, D9, D9, D9, D9, D9, D8, D8, D8, D8, D8, D8, D8, D7, D7, D7, D7, D7, D7, D6, D6, D6, D6, D6, D6, D6, D5, D5, D5, D5, D5, D5, D5, D4, D4, D4, D4, D4, D4, D3, D3, D3, D3, D3, D3, D3, D2, D2, D2, D2, D2, D2, D2, D1, D1, D1, D1, D1, D1, D1, D0, D0, D0, D0, D0, D0, D0, CF, CF, CF, CF, CF, CF, CF, CE, CE, CE, CE, CE, CE, CE, CD, CD, CD, CD, CD, CD, CD, CC, CC, CC, CC, CC, CC, CC, CB, CB, CB, CB, CB, CB, CB, CA, CA, CA, CA, CA, CA, CA, CA, C9, C9, C9, C9, C9, C9, C9, C8, C8, C8, C8, C8, C8, C8, C7, C7, C7, C7, C7, C7, C7, C7, C6, C6, C6, C6, C6, C6, C6, C5, C5, C5, C5, C5, C5, C5, C5, C4, C4, C4, C4, C4, C4, C4, C3, C3, C3, C3, C3, C3, C3, C3, C2, C2, C2, C2, C2, C2, C2, C2, C1, C1, C1, C1, C1, C1, C1, C0, C0, C0, C0, C0, C0, C0, C0, BF, BF, BF, BF, BF, BF, BF, BF, BE, BE, BE, BE, BE, BE, BE, BE, BD, BD, BD, BD, BD, BD, BD, BD, BC, BC, BC, BC, BC, BC, BC, BC, BB, BB, BB, BB, BB, BB, BB, BB, BA, BA, BA, BA, BA, BA, BA, BA, B9, B9, B9, B9, B9, B9, B9, B9, B8, B8, B8, B8, B8, B8, B8, B8, B7, B7, B7, B7, B7, B7, B7, B7, B7, B6, B6, B6, B6, B6, B6, B6, B6, B5, B5, B5, B5, B5, B5, B5, B5, B4, B4, B4, B4, B4, B4, B4, B4, B4, B3, B3, B3, B3, B3, B3, B3, B3, B2, B2, B2, B2, B2, B2, B2, B2, B1, B1, B1, B1, B1, B1, B1, B1, B1, B0, B0, B0, B0, B0, B0, B0, B0, B0, AF, AF, AF, AF, AF, AF, AF, AF, AE, AE, AE, AE, AE, AE, AE, AE, AE, AD, AD, AD, AD, AD, AD, AD, AD, AC, AC, AC, AC, AC, AC, AC, AC, AC, AB, AB, AB, AB, AB, AB, AB, AB, AB, AA, AA, AA, AA, AA, AA, AA, AA, AA, A9, A9, A9, A9, A9, A9, A9, A9, A9, A8, A8, A8, A8, A8, A8, A8, A8, A7, A7, A7, A7, A7, A7, A7, A7, A7, A6, A6, A6, A6, A6, A6, A6, A6, A6, A5, A5, A5, A5, A5, A5, A5, A5, A5, A4, A4, A4, A4, A4, A4, A4, A4, A4, A3, A3, A3, A3, A3, A3, A3, A3, A3, A2, A2, A2, A2, A2, A2, A2, A2, A2, A1, A1, A1, A1, A1, A1, A1, A1, A1, A1, A0, A0, A0, A0, A0, A0, A0, A0, A0, 9F, 9F, 9F, 9F, 9F, 9F, 9F, 9F, 9F, 9E, 9E, 9E, 9E, 9E, 9E, 9E, 9E, 9E, 9D, 9D, 9D, 9D, 9D, 9D, 9D, 9D, 9D, 9C, 9C, 9C, 9C, 9C, 9C, 9C, 9C, 9C, 9C, 9B, 9B, 9B, 9B, 9B, 9B, 9B, 9B, 9B, 9A, 9A, 9A, 9A, 9A, 9A, 9A, 9A, 9A, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 98, 98, 98, 98, 98, 98, 98, 98, 98, 97, 97, 97, 97, 97, 97, 97, 97, 97, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 95, 95, 95, 95, 95, 95, 95, 95, 95, 94, 94, 94, 94, 94, 94, 94, 94, 94, 94, 93, 93, 93, 93, 93, 93, 93, 93, 93, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 91, 91, 91, 91, 91, 91, 91, 91, 91, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 8F, 8F, 8F, 8F, 8F, 8F, 8F, 8F, 8F, 8F, 8E, 8E, 8E, 8E, 8E, 8E, 8E, 8E, 8E, 8D, 8D, 8D, 8D, 8D, 8D, 8D, 8D, 8D, 8D, 8C, 8C, 8C, 8C, 8C, 8C, 8C, 8C, 8C, 8B, 8B, 8B, 8B, 8B, 8B, 8B, 8B, 8B, 8B, 8A, 8A, 8A, 8A, 8A, 8A, 8A, 8A, 8A, 8A, 89, 89, 89, 89, 89, 89, 89, 89, 89, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 86, 86, 86, 86, 86, 86, 86, 86, 86, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 83, 83, 83, 83, 83, 83, 83, 83, 83, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 79, 79, 79, 79, 79, 79, 79, 79, 79, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 76, 76, 76, 76, 76, 76, 76, 76, 76, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 73, 73, 73, 73, 73, 73, 73, 73, 73, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 71, 71, 71, 71, 71, 71, 71, 71, 71, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 69, 69, 69, 69, 69, 69, 69, 69, 69, 68, 68, 68, 68, 68, 68, 68, 68, 68, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 66, 66, 66, 66, 66, 66, 66, 66, 66, 65, 65, 65, 65, 65, 65, 65, 65, 65, 64, 64, 64, 64, 64, 64, 64, 64, 64, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 62, 62, 62, 62, 62, 62, 62, 62, 62, 61, 61, 61, 61, 61, 61, 61, 61, 61, 60, 60, 60, 60, 60, 60, 60, 60, 60, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 59, 59, 59, 59, 59, 59, 59, 59, 59, 58, 58, 58, 58, 58, 58, 58, 58, 58, 57, 57, 57, 57, 57, 57, 57, 57, 56, 56, 56, 56, 56, 56, 56, 56, 56, 55, 55, 55, 55, 55, 55, 55, 55, 55, 54, 54, 54, 54, 54, 54, 54, 54, 53, 53, 53, 53, 53, 53, 53, 53, 52, 52, 52, 52, 52, 52, 52, 52, 52, 51, 51, 51, 51, 51, 51, 51, 51, 50, 50, 50, 50, 50, 50, 50, 50, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 49, 49, 49, 49, 49, 49, 49, 49, 48, 48, 48, 48, 48, 48, 48, 48, 47, 47, 47, 47, 47, 47, 47, 46, 46, 46, 46, 46, 46, 46, 46, 45, 45, 45, 45, 45, 45, 45, 44, 44, 44, 44, 44, 44, 44, 44, 43, 43, 43, 43, 43, 43, 43, 42, 42, 42, 42, 42, 42, 42, 41, 41, 41, 41, 41, 41, 41, 40, 40, 40, 40, 40, 40, 40, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3B, 3B, 3B, 3B, 3B, 3B, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 39, 39, 39, 39, 39, 39, 38, 38, 38, 38, 38, 38, 38, 37, 37, 37, 37, 37, 37, 36, 36, 36, 36, 36, 36, 35, 35, 35, 35, 35, 35, 34, 34, 34, 34, 34, 34, 33, 33, 33, 33, 33, 33, 32, 32, 32, 32, 32, 32, 31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 2F, 2F, 2F, 2F, 2F, 2F, 2E, 2E, 2E, 2E, 2E, 2D, 2D, 2D, 2D, 2D, 2C, 2C, 2C, 2C, 2C, 2C, 2B, 2B, 2B, 2B, 2B, 2A, 2A, 2A, 2A, 2A, 29, 29, 29, 29, 29, 28, 28, 28, 28, 27, 27, 27, 27, 27, 26, 26, 26, 26, 25, 25, 25, 25, 25, 24, 24, 24, 24, 23, 23, 23, 23, 22, 22, 22, 22, 22, 21, 21, 21, 21, 20, 20, 20, 1F, 1F, 1F, 1F, 1E, 1E, 1E, 1E, 1D, 1D, 1D, 1C, 1C, 1C, 1C, 1B, 1B, 1B, 1A, 1A, 1A, 19, 19, 19, 18, 18, 18, 17, 17, 17, 16, 16, 16, 15, 15, 14, 14, 14, 13, 13, 12, 12, 11, 11, 11, 10, 10, F, E, E, D, D, C, B, B, A, 9, 8, 7, 6, 4, 0;',
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
    'CSET read_width_a = 9',
    'CSET read_width_b = 9',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = false',
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
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 9',
    'CSET write_width_b = 9',
    'CSET component_name = bmg_33_4c2b84f72036519d',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '107f2e307b422686141e6bff3cdf73bd',
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
      'core_name0' => 'bmg_33_4c2b84f72036519d',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Multiplier virtex5 Xilinx,_Inc. 11.2',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ccmimp = Distributed_Memory',
    'CSET clockenable = true',
    'CSET constvalue = 129',
    'CSET internaluser = 0',
    'CSET multiplier_construction = Use_Mults',
    'CSET multtype = Parallel_Multiplier',
    'CSET optgoal = Speed',
    'CSET outputwidthhigh = 16',
    'CSET outputwidthlow = 0',
    'CSET pipestages = 3',
    'CSET portatype = Unsigned',
    'CSET portawidth = 9',
    'CSET portbtype = Signed',
    'CSET portbwidth = 8',
    'CSET roundpoint = 0',
    'CSET sclrcepriority = CE_Overrides_SCLR',
    'CSET syncclear = true',
    'CSET use_custom_output_width = true',
    'CSET userounding = false',
    'CSET zerodetect = false',
    'CSET component_name = mlt_11_2_fb712a1e6f4360e8',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c21ca41a656f68ffe3ff8d15d3af6399',
    'sourceFile' => 'hdl/xlmult.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)',
      'core_instance_text' => '        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b',
      'core_name0' => 'mlt_11_2_fb712a1e6f4360e8',
      'entity_name.0' => 'xlmult',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd4a382b36d45ffbc62da4d3dcf91fed1',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
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
    'entity_declaration_hash' => 'b43d922b62813073670832f338c4c398',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_17_23: signed((17 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((17 - 1) downto 0);
    op : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'scale_b42effccbc',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '9b2180a4a44034237c1876cc7f82fd40',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic;
begin
  d_1_22 <= d(0);
  q <= std_logic_to_vector(d_1_22);
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_0341f7be44',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b193c24d31c5f774d2d4eade57d1a4a2',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_1_23: signed((18 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of signed((18 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "000000000000000000");
  signal op_mem_46_20_front_din: signed((18 - 1) downto 0);
  signal op_mem_46_20_back: signed((18 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_36_3_convert: signed((18 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_signed(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_46_20_push_front_pop_back_en = \'1\')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_36_3_convert <= s2s_cast(ip_1_23, 18, 18, 17);
  op_mem_46_20_push_front_pop_back_en <= \'0\';
  op <= signed_to_std_logic_vector(cast_internal_ip_36_3_convert);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((18 - 1) downto 0);
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'shift_01a2ba5449',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b32a0080f8f47e0be7ec44c6ad81b20b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_1_26: boolean;
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of boolean;
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => false);
  signal op_mem_22_20_front_din: boolean;
  signal op_mem_22_20_back: boolean;
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: boolean;
begin
  ip_1_26 <= ((ip) = "1");
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_22_20_push_front_pop_back_en = \'1\')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_push_front_pop_back_en <= \'0\';
  op <= boolean_to_vector(internal_ip_12_1_bitnot);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'inverter_e5b38cca3b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '298203483c3de52896eed04fd75246a4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27;
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
      'entity_name' => 'logical_80f90b97d0',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '9bee4b026b07cf0cbd1f5109caabe7a0',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((32 - 1) downto 0);
  signal b_1_34: unsigned((32 - 1) downto 0);
  signal result_22_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_22_3_rel <= a_1_31 >= b_1_34;
  op <= boolean_to_vector(result_22_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((32 - 1) downto 0);
    b : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_8782e16b67',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '83af9a08c8aace439ac374aed101eb7a',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_1_23: unsigned((32 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of unsigned((32 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "00000000000000000000000000000000");
  signal op_mem_46_20_front_din: unsigned((32 - 1) downto 0);
  signal op_mem_46_20_back: unsigned((32 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_25_3_lsh: unsigned((41 - 1) downto 0);
  signal cast_internal_ip_36_3_convert: unsigned((32 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_unsigned(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_46_20_push_front_pop_back_en = \'1\')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_25_3_lsh <= u2u_cast(ip_1_23, 0, 41, 9);
  cast_internal_ip_36_3_convert <= u2u_cast(cast_internal_ip_25_3_lsh, 0, 32, 0);
  op_mem_46_20_push_front_pop_back_en <= \'0\';
  op <= unsigned_to_std_logic_vector(cast_internal_ip_36_3_convert);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'shift_7cc6eff90a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 1',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 32',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 1',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_80bc1d6adf842981',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '089ae45184fc58264609835cd747620e',
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
      'core_name0' => 'cntr_11_0_80bc1d6adf842981',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '8b1ee7078adefcf83031868d9504dd1c',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '8cb7563af30533e378b10e0d018d2ec8',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '217b3c59f899c822143cff41b60bd069',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f8e8b05bb717e56338c7bf8fdb0f8b4c',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '77f7110e471f046c39bcfa9206312460',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '283b4103f61fcde49d3033eb5f66c274',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 17',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_39c11ed0260a265a',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '527817017ea6d38e3ae33b165ab844c3',
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
      'core_name0' => 'cntr_11_0_39c11ed0260a265a',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '8559e12b0fb4618b0f3257b183d88880',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '01802c2354a81e58e4a600919b076e84',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal b_17_24: signed((16 - 1) downto 0);
  signal rst_17_27: boolean;
  signal accum_reg_41_23: signed((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal accum_reg_41_23_rst: std_logic;
  signal cast_51_42: signed((32 - 1) downto 0);
  signal accum_reg_join_47_1: signed((33 - 1) downto 0);
  signal accum_reg_join_47_1_rst: std_logic;
begin
  b_17_24 <= std_logic_vector_to_signed(b);
  rst_17_27 <= ((rst) = "1");
  proc_accum_reg_41_23: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (accum_reg_41_23_rst = \'1\')) then
        accum_reg_41_23 <= "00000000000000000000000000000000";
      elsif (ce = \'1\') then 
        accum_reg_41_23 <= accum_reg_41_23 + cast_51_42;
      end if;
    end if;
  end process proc_accum_reg_41_23;
  cast_51_42 <= s2s_cast(b_17_24, 0, 32, 0);
  proc_if_47_1: process (accum_reg_41_23, cast_51_42, rst_17_27)
  is
  begin
    if rst_17_27 then
      accum_reg_join_47_1_rst <= \'1\';
    else 
      accum_reg_join_47_1_rst <= \'0\';
    end if;
  end process proc_if_47_1;
  accum_reg_41_23_rst <= accum_reg_join_47_1_rst;
  q <= signed_to_std_logic_vector(accum_reg_41_23);
end',
      'crippled_entity' => 'is
  port (
    b : in std_logic_vector((16 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'accum_5de67d2060',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '0f577c0a4865e27a755740c218106338',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal b_17_24: signed((8 - 1) downto 0);
  signal rst_17_27: boolean;
  signal accum_reg_41_23_next: signed((24 - 1) downto 0);
  signal accum_reg_41_23: signed((24 - 1) downto 0) := "000000000000000000000000";
  signal cast_51_22: signed((25 - 1) downto 0);
  signal cast_51_42: signed((25 - 1) downto 0);
  signal accum_reg_51_9_addsub: signed((25 - 1) downto 0);
  signal accum_reg_join_47_1: signed((25 - 1) downto 0);
  signal cast_accum_reg_41_23_next: signed((24 - 1) downto 0);
begin
  b_17_24 <= std_logic_vector_to_signed(b);
  rst_17_27 <= ((rst) = "1");
  proc_accum_reg_41_23: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if (ce = \'1\') then
        accum_reg_41_23 <= accum_reg_41_23_next;
      end if;
    end if;
  end process proc_accum_reg_41_23;
  cast_51_22 <= s2s_cast(accum_reg_41_23, 0, 25, 0);
  cast_51_42 <= s2s_cast(b_17_24, 0, 25, 0);
  accum_reg_51_9_addsub <= cast_51_22 + cast_51_42;
  proc_if_47_1: process (accum_reg_51_9_addsub, b_17_24, rst_17_27)
  is
  begin
    if rst_17_27 then
      accum_reg_join_47_1 <= s2s_cast(b_17_24, 0, 25, 0);
    else 
      accum_reg_join_47_1 <= accum_reg_51_9_addsub;
    end if;
  end process proc_if_47_1;
  cast_accum_reg_41_23_next <= s2s_cast(accum_reg_join_47_1, 0, 24, 0);
  accum_reg_41_23_next <= cast_accum_reg_41_23_next;
  q <= signed_to_std_logic_vector(accum_reg_41_23);
end',
      'crippled_entity' => 'is
  port (
    b : in std_logic_vector((8 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((24 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'accum_22ff2585dd',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '2cc39ca6fdb7d825245074ea73f33289',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7bc58a29526f1652a9dcd5bac88d1c05',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 2',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_fb8caae5ebc5d253',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '7a7a2cec895f3a82f2bc560d54aad9e9',
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
      'core_name0' => 'cntr_11_0_fb8caae5ebc5d253',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ab7885855e34740615c9492ce3d59ce7',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '8838f61be367553ed53eed76e191b042',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_22: signed((8 - 1) downto 0);
  signal b_1_25: signed((8 - 1) downto 0);
  type array_type_op_mem_65_20 is array (0 to (2 - 1)) of signed((16 - 1) downto 0);
  signal op_mem_65_20: array_type_op_mem_65_20 := (
    "0000000000000000",
    "0000000000000000");
  signal op_mem_65_20_front_din: signed((16 - 1) downto 0);
  signal op_mem_65_20_back: signed((16 - 1) downto 0);
  signal op_mem_65_20_push_front_pop_back_en: std_logic;
  signal mult_46_56: signed((16 - 1) downto 0);
begin
  a_1_22 <= std_logic_vector_to_signed(a);
  b_1_25 <= std_logic_vector_to_signed(b);
  op_mem_65_20_back <= op_mem_65_20(1);
  proc_op_mem_65_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_65_20_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
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
    b : in std_logic_vector((8 - 1) downto 0);
    p : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mult_98e3c7048f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '738143efa6bdd518f8c8df8a7f339b6a',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((8 - 1) downto 0);
  signal d1_1_27: std_logic_vector((8 - 1) downto 0);
  signal d2_1_30: std_logic_vector((8 - 1) downto 0);
  signal d3_1_33: std_logic_vector((8 - 1) downto 0);
  type array_type_pipe_20_22 is array (0 to (1 - 1)) of std_logic_vector((8 - 1) downto 0);
  signal pipe_20_22: array_type_pipe_20_22 := (
    0 => "00000000");
  signal pipe_20_22_front_din: std_logic_vector((8 - 1) downto 0);
  signal pipe_20_22_back: std_logic_vector((8 - 1) downto 0);
  signal pipe_20_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((8 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  d3_1_33 <= d3;
  pipe_20_22_back <= pipe_20_22(0);
  proc_pipe_20_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_20_22_push_front_pop_back_en = \'1\')) then
        pipe_20_22(0) <= pipe_20_22_front_din;
      end if;
    end if;
  end process proc_pipe_20_22;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, d3_1_33, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= d0_1_24;
      when "01" =>
        unregy_join_6_1 <= d1_1_27;
      when "10" =>
        unregy_join_6_1 <= d2_1_30;
      when others =>
        unregy_join_6_1 <= d3_1_33;
    end case;
  end process proc_switch_6_1;
  pipe_20_22_front_din <= unregy_join_6_1;
  pipe_20_22_push_front_pop_back_en <= \'1\';
  y <= pipe_20_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((8 - 1) downto 0);
    d1 : in std_logic_vector((8 - 1) downto 0);
    d2 : in std_logic_vector((8 - 1) downto 0);
    d3 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_81f00cece7',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '38e98f17e8f2b4cf7d2bafc582e0d894',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '31e5c6d2b15121400198933d8b10aadb',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '9471cce135f70e52b4c191fd71d73785',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((1 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal in2_1_31: unsigned((1 - 1) downto 0);
  signal in3_1_35: unsigned((1 - 1) downto 0);
  signal in4_1_39: unsigned((1 - 1) downto 0);
  signal in5_1_43: unsigned((1 - 1) downto 0);
  signal in6_1_47: unsigned((1 - 1) downto 0);
  signal in7_1_51: unsigned((1 - 1) downto 0);
  signal in8_1_55: unsigned((1 - 1) downto 0);
  signal in9_1_59: unsigned((1 - 1) downto 0);
  signal in10_1_63: unsigned((1 - 1) downto 0);
  signal in11_1_68: unsigned((1 - 1) downto 0);
  signal in12_1_73: unsigned((1 - 1) downto 0);
  signal in13_1_78: unsigned((1 - 1) downto 0);
  signal in14_1_83: unsigned((1 - 1) downto 0);
  signal in15_1_88: unsigned((1 - 1) downto 0);
  signal in16_1_93: unsigned((1 - 1) downto 0);
  signal in17_1_98: unsigned((1 - 1) downto 0);
  signal in18_1_103: unsigned((1 - 1) downto 0);
  signal in19_1_108: unsigned((1 - 1) downto 0);
  signal in20_1_113: unsigned((1 - 1) downto 0);
  signal in21_1_118: unsigned((1 - 1) downto 0);
  signal in22_1_123: unsigned((1 - 1) downto 0);
  signal in23_1_128: unsigned((1 - 1) downto 0);
  signal in24_1_133: unsigned((1 - 1) downto 0);
  signal in25_1_138: unsigned((1 - 1) downto 0);
  signal in26_1_143: unsigned((1 - 1) downto 0);
  signal in27_1_148: unsigned((1 - 1) downto 0);
  signal in28_1_153: unsigned((1 - 1) downto 0);
  signal in29_1_158: unsigned((1 - 1) downto 0);
  signal in30_1_163: unsigned((1 - 1) downto 0);
  signal in31_1_168: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  in4_1_39 <= std_logic_vector_to_unsigned(in4);
  in5_1_43 <= std_logic_vector_to_unsigned(in5);
  in6_1_47 <= std_logic_vector_to_unsigned(in6);
  in7_1_51 <= std_logic_vector_to_unsigned(in7);
  in8_1_55 <= std_logic_vector_to_unsigned(in8);
  in9_1_59 <= std_logic_vector_to_unsigned(in9);
  in10_1_63 <= std_logic_vector_to_unsigned(in10);
  in11_1_68 <= std_logic_vector_to_unsigned(in11);
  in12_1_73 <= std_logic_vector_to_unsigned(in12);
  in13_1_78 <= std_logic_vector_to_unsigned(in13);
  in14_1_83 <= std_logic_vector_to_unsigned(in14);
  in15_1_88 <= std_logic_vector_to_unsigned(in15);
  in16_1_93 <= std_logic_vector_to_unsigned(in16);
  in17_1_98 <= std_logic_vector_to_unsigned(in17);
  in18_1_103 <= std_logic_vector_to_unsigned(in18);
  in19_1_108 <= std_logic_vector_to_unsigned(in19);
  in20_1_113 <= std_logic_vector_to_unsigned(in20);
  in21_1_118 <= std_logic_vector_to_unsigned(in21);
  in22_1_123 <= std_logic_vector_to_unsigned(in22);
  in23_1_128 <= std_logic_vector_to_unsigned(in23);
  in24_1_133 <= std_logic_vector_to_unsigned(in24);
  in25_1_138 <= std_logic_vector_to_unsigned(in25);
  in26_1_143 <= std_logic_vector_to_unsigned(in26);
  in27_1_148 <= std_logic_vector_to_unsigned(in27);
  in28_1_153 <= std_logic_vector_to_unsigned(in28);
  in29_1_158 <= std_logic_vector_to_unsigned(in29);
  in30_1_163 <= std_logic_vector_to_unsigned(in30);
  in31_1_168 <= std_logic_vector_to_unsigned(in31);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35) & unsigned_to_std_logic_vector(in4_1_39) & unsigned_to_std_logic_vector(in5_1_43) & unsigned_to_std_logic_vector(in6_1_47) & unsigned_to_std_logic_vector(in7_1_51) & unsigned_to_std_logic_vector(in8_1_55) & unsigned_to_std_logic_vector(in9_1_59) & unsigned_to_std_logic_vector(in10_1_63) & unsigned_to_std_logic_vector(in11_1_68) & unsigned_to_std_logic_vector(in12_1_73) & unsigned_to_std_logic_vector(in13_1_78) & unsigned_to_std_logic_vector(in14_1_83) & unsigned_to_std_logic_vector(in15_1_88) & unsigned_to_std_logic_vector(in16_1_93) & unsigned_to_std_logic_vector(in17_1_98) & unsigned_to_std_logic_vector(in18_1_103) & unsigned_to_std_logic_vector(in19_1_108) & unsigned_to_std_logic_vector(in20_1_113) & unsigned_to_std_logic_vector(in21_1_118) & unsigned_to_std_logic_vector(in22_1_123) & unsigned_to_std_logic_vector(in23_1_128) & unsigned_to_std_logic_vector(in24_1_133) & unsigned_to_std_logic_vector(in25_1_138) & unsigned_to_std_logic_vector(in26_1_143) & unsigned_to_std_logic_vector(in27_1_148) & unsigned_to_std_logic_vector(in28_1_153) & unsigned_to_std_logic_vector(in29_1_158) & unsigned_to_std_logic_vector(in30_1_163) & unsigned_to_std_logic_vector(in31_1_168));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((1 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    in2 : in std_logic_vector((1 - 1) downto 0);
    in3 : in std_logic_vector((1 - 1) downto 0);
    in4 : in std_logic_vector((1 - 1) downto 0);
    in5 : in std_logic_vector((1 - 1) downto 0);
    in6 : in std_logic_vector((1 - 1) downto 0);
    in7 : in std_logic_vector((1 - 1) downto 0);
    in8 : in std_logic_vector((1 - 1) downto 0);
    in9 : in std_logic_vector((1 - 1) downto 0);
    in10 : in std_logic_vector((1 - 1) downto 0);
    in11 : in std_logic_vector((1 - 1) downto 0);
    in12 : in std_logic_vector((1 - 1) downto 0);
    in13 : in std_logic_vector((1 - 1) downto 0);
    in14 : in std_logic_vector((1 - 1) downto 0);
    in15 : in std_logic_vector((1 - 1) downto 0);
    in16 : in std_logic_vector((1 - 1) downto 0);
    in17 : in std_logic_vector((1 - 1) downto 0);
    in18 : in std_logic_vector((1 - 1) downto 0);
    in19 : in std_logic_vector((1 - 1) downto 0);
    in20 : in std_logic_vector((1 - 1) downto 0);
    in21 : in std_logic_vector((1 - 1) downto 0);
    in22 : in std_logic_vector((1 - 1) downto 0);
    in23 : in std_logic_vector((1 - 1) downto 0);
    in24 : in std_logic_vector((1 - 1) downto 0);
    in25 : in std_logic_vector((1 - 1) downto 0);
    in26 : in std_logic_vector((1 - 1) downto 0);
    in27 : in std_logic_vector((1 - 1) downto 0);
    in28 : in std_logic_vector((1 - 1) downto 0);
    in29 : in std_logic_vector((1 - 1) downto 0);
    in30 : in std_logic_vector((1 - 1) downto 0);
    in31 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_9ac2145b44',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c532d9f8ff20ed43cf3ad2bbfc71eb64',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '533b3645368e3cb653f66cc4baca7e24',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal delay_1_52: unsigned((32 - 1) downto 0);
  signal slice_5_33: unsigned((4 - 1) downto 0);
  signal fulldelay0_5_1_concat: unsigned((4 - 1) downto 0);
  signal slice_6_33: unsigned((4 - 1) downto 0);
  signal fulldelay1_6_1_concat: unsigned((4 - 1) downto 0);
  signal slice_7_33: unsigned((4 - 1) downto 0);
  signal fulldelay2_7_1_concat: unsigned((4 - 1) downto 0);
  signal slice_8_33: unsigned((4 - 1) downto 0);
  signal fulldelay3_8_1_concat: unsigned((4 - 1) downto 0);
begin
  delay_1_52 <= std_logic_vector_to_unsigned(delay);
  slice_5_33 <= u2u_slice(delay_1_52, 3, 0);
  fulldelay0_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_5_33));
  slice_6_33 <= u2u_slice(delay_1_52, 7, 4);
  fulldelay1_6_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_6_33));
  slice_7_33 <= u2u_slice(delay_1_52, 11, 8);
  fulldelay2_7_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_7_33));
  slice_8_33 <= u2u_slice(delay_1_52, 15, 12);
  fulldelay3_8_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_8_33));
  delay0 <= unsigned_to_std_logic_vector(fulldelay0_5_1_concat);
  delay1 <= unsigned_to_std_logic_vector(fulldelay1_6_1_concat);
  delay2 <= unsigned_to_std_logic_vector(fulldelay2_7_1_concat);
  delay3 <= unsigned_to_std_logic_vector(fulldelay3_8_1_concat);
end',
      'crippled_entity' => 'is
  port (
    delay : in std_logic_vector((32 - 1) downto 0);
    delay0 : out std_logic_vector((4 - 1) downto 0);
    delay1 : out std_logic_vector((4 - 1) downto 0);
    delay2 : out std_logic_vector((4 - 1) downto 0);
    delay3 : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'bitbasher_a85d9bdfd2',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4a9ba306996baaa638dfea95c08e9c5b',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7913f266065e0adf9b3216b7f77419a9',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Multiplier virtex5 Xilinx,_Inc. 11.2',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ccmimp = Distributed_Memory',
    'CSET clockenable = true',
    'CSET constvalue = 129',
    'CSET internaluser = 0',
    'CSET multiplier_construction = Use_Mults',
    'CSET multtype = Parallel_Multiplier',
    'CSET optgoal = Speed',
    'CSET outputwidthhigh = 31',
    'CSET outputwidthlow = 0',
    'CSET pipestages = 3',
    'CSET portatype = Signed',
    'CSET portawidth = 16',
    'CSET portbtype = Signed',
    'CSET portbwidth = 16',
    'CSET roundpoint = 0',
    'CSET sclrcepriority = CE_Overrides_SCLR',
    'CSET syncclear = true',
    'CSET use_custom_output_width = true',
    'CSET userounding = false',
    'CSET zerodetect = false',
    'CSET component_name = mlt_11_2_0af49143406018f5',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b086f89a2973c5bc2807761c76adaa4a',
    'sourceFile' => 'hdl/xlmult.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)',
      'core_instance_text' => '        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b',
      'core_name0' => 'mlt_11_2_0af49143406018f5',
      'entity_name.0' => 'xlmult',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '2961cbbaa2c0630c119040402ab190f8',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_17_32: signed((32 - 1) downto 0);
  signal b_17_35: signed((32 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (2 - 1)) of signed((33 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    "000000000000000000000000000000000",
    "000000000000000000000000000000000");
  signal op_mem_91_20_front_din: signed((33 - 1) downto 0);
  signal op_mem_91_20_back: signed((33 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (2 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    "0",
    "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_71_18: signed((33 - 1) downto 0);
  signal cast_71_22: signed((33 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((33 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(1);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_91_20_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          op_mem_91_20(i) <= op_mem_91_20(i-1);
        end loop;
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(1);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (cout_mem_92_22_push_front_pop_back_en = \'1\')) then
        for i_x_000000 in 1 downto 1 loop 
          cout_mem_92_22(i_x_000000) <= cout_mem_92_22(i_x_000000-1);
        end loop;
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
  cast_71_18 <= s2s_cast(a_17_32, 30, 33, 30);
  cast_71_22 <= s2s_cast(b_17_35, 30, 33, 30);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  op_mem_91_20_front_din <= internal_s_71_5_addsub;
  op_mem_91_20_push_front_pop_back_en <= \'1\';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= \'1\';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((32 - 1) downto 0);
    b : in std_logic_vector((32 - 1) downto 0);
    s : out std_logic_vector((33 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'addsub_8ebe8fc34c',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '3782c4baf5fe582faa1adf91f221fbf6',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_17_32: unsigned((1 - 1) downto 0);
  signal b_17_35: unsigned((1 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "0");
  signal op_mem_91_20_front_din: unsigned((1 - 1) downto 0);
  signal op_mem_91_20_back: unsigned((1 - 1) downto 0);
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
  signal cast_71_18: signed((3 - 1) downto 0);
  signal cast_71_22: signed((3 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((3 - 1) downto 0);
  signal cast_internal_s_83_3_convert: unsigned((1 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_unsigned(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
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
  cast_71_18 <= u2s_cast(a_17_32, 0, 3, 0);
  cast_71_22 <= u2s_cast(b_17_35, 0, 3, 0);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  cast_internal_s_83_3_convert <= s2u_cast(internal_s_71_5_addsub, 0, 1, 0);
  op_mem_91_20_push_front_pop_back_en <= \'0\';
  cout_mem_92_22_push_front_pop_back_en <= \'0\';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= unsigned_to_std_logic_vector(cast_internal_s_83_3_convert);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((1 - 1) downto 0);
    b : in std_logic_vector((1 - 1) downto 0);
    s : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'addsub_c13097e33e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '561039fba293d903ddf7735dae34407c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((9 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((10 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((9 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_1d98d96b58',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '26c90b101ce1ca8b2f28c242a8215ef7',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_963ed6358a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'caaa09ccc4d8ad6c79c03c7a5b598212',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '84f3198dc8c792f422af727a2306b54e',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7746c6211c617093c66a7dc5041d85e9',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '04413e94d48bdaf4987c02f89247cf77',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((10 - 1) downto 0);
  signal d1_1_27: std_logic_vector((10 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((10 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
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
  y <= unregy_join_6_1;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((10 - 1) downto 0);
    d1 : in std_logic_vector((10 - 1) downto 0);
    y : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_4fe5face7f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'efc68ea5bb90b7678907878a288d2bc6',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = cntr_11_0_717486a23436c11d',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '2aefc472a7f8811f09f9ad99297d199a',
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
      'core_name0' => 'cntr_11_0_717486a23436c11d',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET read_width_a = 32',
    'CSET read_width_b = 32',
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
    'CSET write_width_a = 32',
    'CSET write_width_b = 32',
    'CSET component_name = bmg_33_b69a6630af1fcef6',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '6e32ea7cb630c2d2cc32596f0939fa60',
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
      'core_name0' => 'bmg_33_b69a6630af1fcef6',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
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
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 10',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_acf8df2a66449f86',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '5de53dd70433b597a3cf245bf565b088',
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
      'core_name0' => 'cntr_11_0_acf8df2a66449f86',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
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
    'entity_declaration_hash' => '089de2188f88764a3b72ff58b373f212',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_17_32: signed((33 - 1) downto 0);
  signal b_17_35: signed((56 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (2 - 1)) of signed((32 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    "00000000000000000000000000000000",
    "00000000000000000000000000000000");
  signal op_mem_91_20_front_din: signed((32 - 1) downto 0);
  signal op_mem_91_20_back: signed((32 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (2 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    "0",
    "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((57 - 1) downto 0);
  signal cast_69_22: signed((57 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((57 - 1) downto 0);
  signal cast_internal_s_83_3_convert: signed((32 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(1);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_91_20_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          op_mem_91_20(i) <= op_mem_91_20(i-1);
        end loop;
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(1);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (cout_mem_92_22_push_front_pop_back_en = \'1\')) then
        for i_x_000000 in 1 downto 1 loop 
          cout_mem_92_22(i_x_000000) <= cout_mem_92_22(i_x_000000-1);
        end loop;
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
  cast_69_18 <= s2s_cast(a_17_32, 30, 57, 30);
  cast_69_22 <= s2s_cast(b_17_35, 30, 57, 30);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_69_5_addsub, 30, 32, 30);
  op_mem_91_20_front_din <= cast_internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= \'1\';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= \'1\';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((33 - 1) downto 0);
    b : in std_logic_vector((56 - 1) downto 0);
    s : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'addsub_a791d52abe',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '2920a290cda5c6e2ced3a22ac585f194',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((56 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= cast(d0_1_24, 30, 56, 30, xlSigned);
      when others =>
        unregy_join_6_1 <= cast(d1_1_27, 6, 56, 30, xlSigned);
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((56 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_ec162609a1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4f3bc76f19288f1e596ce94644192511',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = cntr_11_0_717486a23436c11d',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '158d634819132a987724809fa53968bb',
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
      'core_name0' => 'cntr_11_0_717486a23436c11d',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '91ba2a6bfa7804aa5a30acb5c6e99f25',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '9be1bd2671c0324869c450b5268c1efb',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: signed((32 - 1) downto 0);
  signal output_port_5_5_force: unsigned((32 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((32 - 1) downto 0);
    output_port : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_3f7e3674f6',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4f185672c819db4e778ad055a204c121',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_17_32: signed((32 - 1) downto 0);
  signal b_17_35: signed((32 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (2 - 1)) of signed((33 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    "000000000000000000000000000000000",
    "000000000000000000000000000000000");
  signal op_mem_91_20_front_din: signed((33 - 1) downto 0);
  signal op_mem_91_20_back: signed((33 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (2 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    "0",
    "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((33 - 1) downto 0);
  signal cast_69_22: signed((33 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((33 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(1);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_91_20_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          op_mem_91_20(i) <= op_mem_91_20(i-1);
        end loop;
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(1);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (cout_mem_92_22_push_front_pop_back_en = \'1\')) then
        for i_x_000000 in 1 downto 1 loop 
          cout_mem_92_22(i_x_000000) <= cout_mem_92_22(i_x_000000-1);
        end loop;
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
  cast_69_18 <= s2s_cast(a_17_32, 30, 33, 30);
  cast_69_22 <= s2s_cast(b_17_35, 30, 33, 30);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  op_mem_91_20_front_din <= internal_s_69_5_addsub;
  op_mem_91_20_push_front_pop_back_en <= \'1\';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= \'1\';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((32 - 1) downto 0);
    b : in std_logic_vector((32 - 1) downto 0);
    s : out std_logic_vector((33 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'addsub_ae6966ed1c',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 8',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_8b305ccf84a90afe',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '95d9a5f5eef91c601153b7cccea87de6',
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
      'core_name0' => 'cntr_11_0_8b305ccf84a90afe',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
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
    'CSET write_depth_a = 256',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_33_975b23006c9a4cfc',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '51e400d21d2d1a762417f61f44b3048e',
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
      'core_name0' => 'bmg_33_975b23006c9a4cfc',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a817ccd44ae1b53dce34e453d694b400',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldsp48e.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '8326bebda559fc7371fc1161e70046df',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((30 - 1) downto 0);
  signal output_port_5_5_force: signed((30 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((30 - 1) downto 0);
    output_port : out std_logic_vector((30 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_eb03bc3377',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '1fbb8dfefb01491bd9ea8a54c58a4ff9',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((48 - 1) downto 0);
  signal output_port_5_5_force: signed((48 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((48 - 1) downto 0);
    output_port : out std_logic_vector((48 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_7ea107432a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '1187efcbb69115f62fdc9e327b0bd513',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c77395e197b698c7dec208dd083b606a',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '908c27b641ca752b17d493067e198c76',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_4c449dd556',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd8fe814692903faea56ecec2003964cb',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_822933f89b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '2546179852b778868e3dee2edb9f33b8',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '116079b41ffb2b4983a6f837b544f828',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((24 - 1) downto 0);
  signal in1_1_27: unsigned((24 - 1) downto 0);
  signal y_2_1_concat: unsigned((48 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((24 - 1) downto 0);
    in1 : in std_logic_vector((24 - 1) downto 0);
    y : out std_logic_vector((48 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_b57c4be2de',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '2b373105557d39549f92ec8b878d467b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0110011";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((7 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_270746ab47',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'da2440faed97ebee1d34557e163ecb9d',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '985e9d76d6ae3c271b8459f1fce995ff',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: signed((24 - 1) downto 0);
  signal output_port_5_5_force: unsigned((24 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((24 - 1) downto 0);
    output_port : out std_logic_vector((24 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_3fb4604c01',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '2530f8df112851d515ce162394e0a81b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((24 - 1) downto 0);
  signal output_port_5_5_force: signed((24 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((24 - 1) downto 0);
    output_port : out std_logic_vector((24 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_4bf1ad328a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '24a94217cf3e952def3ce6501e6c79f4',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '5be08562e56f25b9514234dfa8201a77',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '4200b6e5902c60514d88b8f48094bfa0',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0011";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_8038205d89',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ed9057cdda22f0e298eb638800508a9c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((18 - 1) downto 0);
  signal in1_1_27: unsigned((18 - 1) downto 0);
  signal y_2_1_concat: unsigned((36 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((18 - 1) downto 0);
    in1 : in std_logic_vector((18 - 1) downto 0);
    y : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_b198bd62b0',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
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
    'entity_declaration_hash' => 'fcda89affb324d7b4eed21ee6cdfccdb',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert_pipeline.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '1899a3cb359c4a6df2e0f1f184ab3d7c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_17_23: signed((19 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((19 - 1) downto 0);
    op : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'scale_9f61027ba4',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'fd8687f023e15f94417b7428731f3a71',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((18 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((18 - 1) downto 0);
    output_port : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_9306b5127f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4d54d02eccb7e9661541234c5cb7c5ba',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "100000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_4a391b9a0e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ebfa40c919751604c1c2275827301a4e',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'beef5a55e23541f481bd7c3a7c24ba64',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'cbe636eaa30a08027c9a7e3ee2e2de25',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((36 - 1) downto 0);
  signal d1_1_27: std_logic_vector((36 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((36 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "000000000000000000000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((36 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((36 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((36 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((36 - 1) downto 0);
    d1 : in std_logic_vector((36 - 1) downto 0);
    y : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_fca786f2ff',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '52ea1e63e5956976edada9a23d13180d',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((9 - 1) downto 0);
  signal b_1_34: unsigned((9 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    0 => false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  op_mem_32_22_back <= op_mem_32_22(0);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_32_22_push_front_pop_back_en = \'1\')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  result_18_3_rel <= a_1_31 > b_1_34;
  op_mem_32_22_front_din <= result_18_3_rel;
  op_mem_32_22_push_front_pop_back_en <= \'1\';
  op <= boolean_to_vector(op_mem_32_22_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((9 - 1) downto 0);
    b : in std_logic_vector((9 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_8701b88949',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '50663956867f38656fd9d6e41c5aaada',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f726265e98f99e9391f89944c78a47fa',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_18_25: signed((18 - 1) downto 0);
  type array_type_op_mem_42_20 is array (0 to (1 - 1)) of unsigned((18 - 1) downto 0);
  signal op_mem_42_20: array_type_op_mem_42_20 := (
    0 => "000000000000000000");
  signal op_mem_42_20_front_din: unsigned((18 - 1) downto 0);
  signal op_mem_42_20_back: unsigned((18 - 1) downto 0);
  signal op_mem_42_20_push_front_pop_back_en: std_logic;
  signal cast_30_16: signed((19 - 1) downto 0);
  signal internal_ip_30_1_neg: signed((19 - 1) downto 0);
  signal cast_internal_ip_34_3_convert: unsigned((18 - 1) downto 0);
begin
  ip_18_25 <= std_logic_vector_to_signed(ip);
  op_mem_42_20_back <= op_mem_42_20(0);
  proc_op_mem_42_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_42_20_push_front_pop_back_en = \'1\')) then
        op_mem_42_20(0) <= op_mem_42_20_front_din;
      end if;
    end if;
  end process proc_op_mem_42_20;
  cast_30_16 <= s2s_cast(ip_18_25, 17, 19, 17);
  internal_ip_30_1_neg <=  -cast_30_16;
  cast_internal_ip_34_3_convert <= s2u_cast(internal_ip_30_1_neg, 17, 18, 17);
  op_mem_42_20_front_din <= cast_internal_ip_34_3_convert;
  op_mem_42_20_push_front_pop_back_en <= \'1\';
  op <= unsigned_to_std_logic_vector(op_mem_42_20_back);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((18 - 1) downto 0);
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'negate_5fcde2e21d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '469d0b121781904ac966646231cd68c5',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_b4ec9de7d1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4ec7211565fb5370885d253fd4556ebc',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_fd85eb7067',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 9',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_8869969bd2303665',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '8ec45c2ec561c79fbe745fbdbada8fc8',
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
      'core_name0' => 'cntr_11_0_8869969bd2303665',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
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
    'entity_declaration_hash' => '0a63ec0c3ee5b001c3703d08c6cdfb43',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((9 - 1) downto 0);
  signal b_1_34: unsigned((9 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((9 - 1) downto 0);
    b : in std_logic_vector((9 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_6c3ee657fa',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '92622afe276f2073e58b81817cc03bd6',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((9 - 1) downto 0);
  signal b_1_34: unsigned((9 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((9 - 1) downto 0);
    b : in std_logic_vector((9 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_78eac2928d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = cntr_11_0_717486a23436c11d',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd7cb1d967c6f25c1aac07ec5fbc33745',
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
      'core_name0' => 'cntr_11_0_717486a23436c11d',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '357c8bb411a44a3a151020eb0dda838c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((8 - 1) downto 0);
  signal d1_1_27: std_logic_vector((8 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((8 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "00000000");
  signal pipe_16_22_front_din: std_logic_vector((8 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((8 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((8 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
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
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((8 - 1) downto 0);
    d1 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_7f6b7da686',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '6521ffe24d4be77320a8d4b74c16cf4e',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '70edc1e2a3cd7f298de48b12ce4ef737',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
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
    'CSET write_depth_a = 256',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_33_fef6699b3e7774a9',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '03349246c5728f28498815d814676c3f',
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
      'core_name0' => 'bmg_33_fef6699b3e7774a9',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '294f919e1dc4c0c36bb7f521e11e5975',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((8 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((8 - 1) downto 0);
    q : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_423c6c1400',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4b73015bc6b928e18755562747923550',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '6c31451775cebc20de01016c51ce52dd',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((1 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_21355083c1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Distributed_Memory_Generator virtex5 Xilinx,_Inc. 4.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ce_overrides = sync_controls_overrides_ce',
    'CSET coefficient_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 80, 40, C0, 20, A0, 60, E0, 10, 90, 50, D0, 30, B0, 70, F0, 8, 88, 48, C8, 28, A8, 68, E8, 18, 98, 58, D8, 38, B8, 78, F8, 4, 84, 44, C4, 24, A4, 64, E4, 14, 94, 54, D4, 34, B4, 74, F4, C, 8C, 4C, CC, 2C, AC, 6C, EC, 1C, 9C, 5C, DC, 3C, BC, 7C, FC, 2, 82, 42, C2, 22, A2, 62, E2, 12, 92, 52, D2, 32, B2, 72, F2, A, 8A, 4A, CA, 2A, AA, 6A, EA, 1A, 9A, 5A, DA, 3A, BA, 7A, FA, 6, 86, 46, C6, 26, A6, 66, E6, 16, 96, 56, D6, 36, B6, 76, F6, E, 8E, 4E, CE, 2E, AE, 6E, EE, 1E, 9E, 5E, DE, 3E, BE, 7E, FE, 1, 81, 41, C1, 21, A1, 61, E1, 11, 91, 51, D1, 31, B1, 71, F1, 9, 89, 49, C9, 29, A9, 69, E9, 19, 99, 59, D9, 39, B9, 79, F9, 5, 85, 45, C5, 25, A5, 65, E5, 15, 95, 55, D5, 35, B5, 75, F5, D, 8D, 4D, CD, 2D, AD, 6D, ED, 1D, 9D, 5D, DD, 3D, BD, 7D, FD, 3, 83, 43, C3, 23, A3, 63, E3, 13, 93, 53, D3, 33, B3, 73, F3, B, 8B, 4B, CB, 2B, AB, 6B, EB, 1B, 9B, 5B, DB, 3B, BB, 7B, FB, 7, 87, 47, C7, 27, A7, 67, E7, 17, 97, 57, D7, 37, B7, 77, F7, F, 8F, 4F, CF, 2F, AF, 6F, EF, 1F, 9F, 5F, DF, 3F, BF, 7F, FF;',
    '
]',
    'CSET common_output_ce = false',
    'CSET common_output_clk = false',
    'CSET data_width = 8',
    'CSET default_data = 0',
    'CSET default_data_radix = 16',
    'CSET depth = 256',
    'CSET dual_port_address = non_registered',
    'CSET dual_port_output_clock_enable = false',
    'CSET input_clock_enable = false',
    'CSET input_options = non_registered',
    'CSET memory_type = rom',
    'CSET output_options = non_registered',
    'CSET qualify_we_with_i_ce = false',
    'CSET reset_qdpo = false',
    'CSET reset_qspo = false',
    'CSET single_port_output_clock_enable = false',
    'CSET sync_reset_qdpo = false',
    'CSET sync_reset_qspo = false',
    'CSET component_name = dmg_43_c6f9ec0b42972f63',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '169c9fe034f0a99f78b1323260a848c0',
    'sourceFile' => 'hdl/xlsprom_dist.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      a: in std_logic_vector(c_address_width - 1 downto 0);
      spo: out std_logic_vector(c_width - 1 downto 0) ',
      'core_instance_text' => '        a => core_addr,
        spo => core_data_out',
      'core_name0' => 'dmg_43_c6f9ec0b42972f63',
      'entity_name.0' => 'xlsprom_dist',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Distributed_Memory_Generator virtex5 Xilinx,_Inc. 4.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ce_overrides = sync_controls_overrides_ce',
    'CSET coefficient_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = FF, 7F, BF, 3F, DF, 5F, 9F, 1F, EF, 6F, AF, 2F, CF, 4F, 8F, F, F7, 77, B7, 37, D7, 57, 97, 17, E7, 67, A7, 27, C7, 47, 87, 7, FB, 7B, BB, 3B, DB, 5B, 9B, 1B, EB, 6B, AB, 2B, CB, 4B, 8B, B, F3, 73, B3, 33, D3, 53, 93, 13, E3, 63, A3, 23, C3, 43, 83, 3, FD, 7D, BD, 3D, DD, 5D, 9D, 1D, ED, 6D, AD, 2D, CD, 4D, 8D, D, F5, 75, B5, 35, D5, 55, 95, 15, E5, 65, A5, 25, C5, 45, 85, 5, F9, 79, B9, 39, D9, 59, 99, 19, E9, 69, A9, 29, C9, 49, 89, 9, F1, 71, B1, 31, D1, 51, 91, 11, E1, 61, A1, 21, C1, 41, 81, 1, FE, 7E, BE, 3E, DE, 5E, 9E, 1E, EE, 6E, AE, 2E, CE, 4E, 8E, E, F6, 76, B6, 36, D6, 56, 96, 16, E6, 66, A6, 26, C6, 46, 86, 6, FA, 7A, BA, 3A, DA, 5A, 9A, 1A, EA, 6A, AA, 2A, CA, 4A, 8A, A, F2, 72, B2, 32, D2, 52, 92, 12, E2, 62, A2, 22, C2, 42, 82, 2, FC, 7C, BC, 3C, DC, 5C, 9C, 1C, EC, 6C, AC, 2C, CC, 4C, 8C, C, F4, 74, B4, 34, D4, 54, 94, 14, E4, 64, A4, 24, C4, 44, 84, 4, F8, 78, B8, 38, D8, 58, 98, 18, E8, 68, A8, 28, C8, 48, 88, 8, F0, 70, B0, 30, D0, 50, 90, 10, E0, 60, A0, 20, C0, 40, 80, 0;',
    '
]',
    'CSET common_output_ce = false',
    'CSET common_output_clk = false',
    'CSET data_width = 8',
    'CSET default_data = 0',
    'CSET default_data_radix = 16',
    'CSET depth = 256',
    'CSET dual_port_address = non_registered',
    'CSET dual_port_output_clock_enable = false',
    'CSET input_clock_enable = false',
    'CSET input_options = non_registered',
    'CSET memory_type = rom',
    'CSET output_options = non_registered',
    'CSET qualify_we_with_i_ce = false',
    'CSET reset_qdpo = false',
    'CSET reset_qspo = false',
    'CSET single_port_output_clock_enable = false',
    'CSET sync_reset_qdpo = false',
    'CSET sync_reset_qspo = false',
    'CSET component_name = dmg_43_34d25c5f4a256ba1',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '89b87999e78ddce69ad20d2286432f78',
    'sourceFile' => 'hdl/xlsprom_dist.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      a: in std_logic_vector(c_address_width - 1 downto 0);
      spo: out std_logic_vector(c_width - 1 downto 0) ',
      'core_instance_text' => '        a => core_addr,
        spo => core_data_out',
      'core_name0' => 'dmg_43_34d25c5f4a256ba1',
      'entity_name.0' => 'xlsprom_dist',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Distributed_Memory_Generator virtex5 Xilinx,_Inc. 4.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ce_overrides = sync_controls_overrides_ce',
    'CSET coefficient_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = FF, FE, FD, FC, FB, FA, F9, F8, F7, F6, F5, F4, F3, F2, F1, F0, EF, EE, ED, EC, EB, EA, E9, E8, E7, E6, E5, E4, E3, E2, E1, E0, DF, DE, DD, DC, DB, DA, D9, D8, D7, D6, D5, D4, D3, D2, D1, D0, CF, CE, CD, CC, CB, CA, C9, C8, C7, C6, C5, C4, C3, C2, C1, C0, BF, BE, BD, BC, BB, BA, B9, B8, B7, B6, B5, B4, B3, B2, B1, B0, AF, AE, AD, AC, AB, AA, A9, A8, A7, A6, A5, A4, A3, A2, A1, A0, 9F, 9E, 9D, 9C, 9B, 9A, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 8F, 8E, 8D, 8C, 8B, 8A, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 7F, 7E, 7D, 7C, 7B, 7A, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 6F, 6E, 6D, 6C, 6B, 6A, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 5F, 5E, 5D, 5C, 5B, 5A, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 4F, 4E, 4D, 4C, 4B, 4A, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 3F, 3E, 3D, 3C, 3B, 3A, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 2F, 2E, 2D, 2C, 2B, 2A, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 1F, 1E, 1D, 1C, 1B, 1A, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, F, E, D, C, B, A, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0;',
    '
]',
    'CSET common_output_ce = false',
    'CSET common_output_clk = false',
    'CSET data_width = 8',
    'CSET default_data = 0',
    'CSET default_data_radix = 16',
    'CSET depth = 256',
    'CSET dual_port_address = non_registered',
    'CSET dual_port_output_clock_enable = false',
    'CSET input_clock_enable = false',
    'CSET input_options = non_registered',
    'CSET memory_type = rom',
    'CSET output_options = non_registered',
    'CSET qualify_we_with_i_ce = false',
    'CSET reset_qdpo = false',
    'CSET reset_qspo = false',
    'CSET single_port_output_clock_enable = false',
    'CSET sync_reset_qdpo = false',
    'CSET sync_reset_qspo = false',
    'CSET component_name = dmg_43_bdb772f0e9b591b4',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '8a2bac34d1d990959997c5e3f2f1f238',
    'sourceFile' => 'hdl/xlsprom_dist.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      a: in std_logic_vector(c_address_width - 1 downto 0);
      spo: out std_logic_vector(c_width - 1 downto 0) ',
      'core_instance_text' => '        a => core_addr,
        spo => core_data_out',
      'core_name0' => 'dmg_43_bdb772f0e9b591b4',
      'entity_name.0' => 'xlsprom_dist',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ef4bf12534edeb2ba581a78f26780326',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "100000100";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_40da8f5b68',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '62894c09aba7f86ed8c4430b4ae1d18f',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '6e2f933f9616936932101c7fed826ca6',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a9233aa5aafccb6c4ad0c1bd10424ca1',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((20 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((21 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((20 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((21 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_c615d93998',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'bf47f6226af7dc204120ae835177b53d',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: signed((20 - 1) downto 0);
  signal output_port_5_5_force: unsigned((20 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((20 - 1) downto 0);
    output_port : out std_logic_vector((20 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_4a8cbc85ce',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4d830aaf978017064fdd57662371c797',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_17_32: signed((21 - 1) downto 0);
  signal b_17_35: unsigned((19 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((18 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "000000000000000000");
  signal op_mem_91_20_front_din: signed((18 - 1) downto 0);
  signal op_mem_91_20_back: signed((18 - 1) downto 0);
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
  signal cast_69_18: signed((22 - 1) downto 0);
  signal cast_69_22: signed((22 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((22 - 1) downto 0);
  signal internal_s_83_3_convert: signed((18 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
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
  cast_69_18 <= s2s_cast(a_17_32, 19, 22, 19);
  cast_69_22 <= u2s_cast(b_17_35, 19, 22, 19);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  internal_s_83_3_convert <= std_logic_vector_to_signed(convert_type(signed_to_std_logic_vector(internal_s_69_5_addsub), 22, 19, xlSigned, 18, 17, xlSigned, xlTruncate, xlSaturate));
  op_mem_91_20_front_din <= internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= \'1\';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= \'1\';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((21 - 1) downto 0);
    b : in std_logic_vector((19 - 1) downto 0);
    s : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'addsub_036990b294',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4e5ef021c199111e8c4536f3ac1de1ef',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0000000000000000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_4709ea49b5',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f619f674ba2e8135a76490a7828245bb',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '56e3e19ccb2ee936cc3aae545e8799ac',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((21 - 1) downto 0);
  signal output_port_5_5_force: signed((21 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((21 - 1) downto 0);
    output_port : out std_logic_vector((21 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_d357e69fa3',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '6531fc5dc936d23c947bd517d32fa9f2',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((19 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((19 - 1) downto 0);
    output_port : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_d2180c9169',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '9d8fb65ef5d0bd11d018ca31310b0297',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic_vector((1 - 1) downto 0);
  signal d1_1_27: std_logic_vector((1 - 1) downto 0);
  signal fully_2_1_bit: std_logic_vector((1 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  y <= fully_2_1_bit;
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
      'entity_name' => 'logical_938d99ac11',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'cf1275c526d4fdaa6b609b12e027d5cf',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => \'0\');
  signal latency_pipe_5_26_front_din: std_logic;
  signal latency_pipe_5_26_back: std_logic;
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal bit_2_27: std_logic;
  signal fully_2_1_bitnot: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (latency_pipe_5_26_push_front_pop_back_en = \'1\')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  bit_2_27 <= d0_1_24 and d1_1_27;
  fully_2_1_bitnot <= not bit_2_27;
  latency_pipe_5_26_front_din <= fully_2_1_bitnot;
  latency_pipe_5_26_push_front_pop_back_en <= \'1\';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
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
      'entity_name' => 'logical_e9e6541380',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '1f573511e45a15a2704ed1ace5cf6661',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '8fe1c0b78763a82d307cb9d1de829296',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ec0814da6cf9de952ea660722875ef4c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((19 - 1) downto 0);
  signal d1_1_27: std_logic_vector((19 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (2 - 1)) of std_logic_vector((20 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    "00000000000000000000",
    "00000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((20 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((20 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((20 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(1);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          pipe_16_22(i) <= pipe_16_22(i-1);
        end loop;
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= cast(d0_1_24, 17, 20, 18, xlSigned);
      when others =>
        unregy_join_6_1 <= cast(d1_1_27, 18, 20, 18, xlSigned);
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((19 - 1) downto 0);
    d1 : in std_logic_vector((19 - 1) downto 0);
    y : out std_logic_vector((20 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_28159dbdb9',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'bea4305dc882ee0c60c8116a045af5da',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (5 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    \'0\',
    \'0\',
    \'0\',
    \'0\',
    \'0\');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(4);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 4 downto 1 loop 
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
      'entity_name' => 'delay_a14e3dd1bd',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '50e00086a424689f23ac2c4d38472363',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => \'0\');
  signal latency_pipe_5_26_front_din: std_logic;
  signal latency_pipe_5_26_back: std_logic;
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (latency_pipe_5_26_push_front_pop_back_en = \'1\')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 or d1_1_27;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= \'1\';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
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
      'entity_name' => 'logical_444d3f5046',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'cb840e412e429ef1dc4193d23739cbd7',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((36 - 1) downto 0);
  signal d1_1_27: std_logic_vector((36 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((36 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "000000000000000000000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((36 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((36 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((36 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
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
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((36 - 1) downto 0);
    d1 : in std_logic_vector((36 - 1) downto 0);
    y : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_4bb6f691f7',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e72733cccc97be0b2ccd6940f636f929',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '345e76e5f823e82ecbb273a66baec742',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert_pipeline.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd44044eb81f12be6b9c483d829f6a4de',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal rst_1_40: boolean;
  signal count_reg_20_23: unsigned((8 - 1) downto 0) := "00000000";
  signal count_reg_20_23_rst: std_logic;
  signal bool_44_4: boolean;
  signal rst_limit_join_44_1: boolean;
  signal count_reg_join_44_1: unsigned((9 - 1) downto 0);
  signal count_reg_join_44_1_rst: std_logic;
begin
  rst_1_40 <= ((rst) = "1");
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (count_reg_20_23_rst = \'1\')) then
        count_reg_20_23 <= "00000000";
      elsif (ce = \'1\') then 
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("00000001");
      end if;
    end if;
  end process proc_count_reg_20_23;
  bool_44_4 <= rst_1_40 or false;
  proc_if_44_1: process (bool_44_4, count_reg_20_23)
  is
  begin
    if bool_44_4 then
      count_reg_join_44_1_rst <= \'1\';
    else 
      count_reg_join_44_1_rst <= \'0\';
    end if;
    if bool_44_4 then
      rst_limit_join_44_1 <= false;
    else 
      rst_limit_join_44_1 <= false;
    end if;
  end process proc_if_44_1;
  count_reg_20_23_rst <= count_reg_join_44_1_rst;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end',
      'crippled_entity' => 'is
  port (
    rst : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'counter_11ccef49a2',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '0c6a7586d7a005d6959cc44312de4062',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((18 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (7 - 1)) of std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(6);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 6 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((18 - 1) downto 0);
    q : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_ae3f84524a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e0ef66beafff85fb2d8750a611131ccc',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((1 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (4 - 1)) of std_logic_vector((1 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "0",
    "0",
    "0",
    "0");
  signal op_mem_20_24_front_din: std_logic_vector((1 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((1 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(3);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 3 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_848c26f47b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '799d7dbc65ff662bfeefbeb4f39c5ed5',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((18 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (4 - 1)) of std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(3);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 3 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((18 - 1) downto 0);
    q : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_2f744cdafb',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '86ef03a3aa63e14be570e8c1d1cc4149',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((18 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (2 - 1)) of std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "000000000000000000",
    "000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
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
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((18 - 1) downto 0);
    q : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_cbdfa55dc3',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
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
    'entity_declaration_hash' => '82059a2f64aca194b76a9e84ed5a2164',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((18 - 1) downto 0);
  signal d1_1_27: std_logic_vector((18 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (5 - 1)) of std_logic_vector((18 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((18 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((18 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((18 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(4);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
        for i in 4 downto 1 loop 
          pipe_16_22(i) <= pipe_16_22(i-1);
        end loop;
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
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
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((18 - 1) downto 0);
    d1 : in std_logic_vector((18 - 1) downto 0);
    y : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_69e3090cc7',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4ea3343259534f2ab735322ff3a76128',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((18 - 1) downto 0);
  signal d1_1_27: std_logic_vector((18 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((18 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((18 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((18 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((18 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
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
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((18 - 1) downto 0);
    d1 : in std_logic_vector((18 - 1) downto 0);
    y : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_181e58d842',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '51a1b7f9e7cd415c1803063a30e25c95',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_18_25: signed((18 - 1) downto 0);
  type array_type_op_mem_42_20 is array (0 to (1 - 1)) of signed((19 - 1) downto 0);
  signal op_mem_42_20: array_type_op_mem_42_20 := (
    0 => "0000000000000000000");
  signal op_mem_42_20_front_din: signed((19 - 1) downto 0);
  signal op_mem_42_20_back: signed((19 - 1) downto 0);
  signal op_mem_42_20_push_front_pop_back_en: std_logic;
  signal cast_30_16: signed((19 - 1) downto 0);
  signal internal_ip_30_1_neg: signed((19 - 1) downto 0);
begin
  ip_18_25 <= std_logic_vector_to_signed(ip);
  op_mem_42_20_back <= op_mem_42_20(0);
  proc_op_mem_42_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_42_20_push_front_pop_back_en = \'1\')) then
        op_mem_42_20(0) <= op_mem_42_20_front_din;
      end if;
    end if;
  end process proc_op_mem_42_20;
  cast_30_16 <= s2s_cast(ip_18_25, 17, 19, 17);
  internal_ip_30_1_neg <=  -cast_30_16;
  op_mem_42_20_front_din <= internal_ip_30_1_neg;
  op_mem_42_20_push_front_pop_back_en <= \'1\';
  op <= signed_to_std_logic_vector(op_mem_42_20_back);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((18 - 1) downto 0);
    op : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'negate_e1a9d1ade1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 7',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_2c42bf3f38e8cf3d',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a3b7dbc0090de1f3544ca6bd5a25d4dd',
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
      'core_name0' => 'cntr_11_0_2c42bf3f38e8cf3d',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
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
    'CSET write_depth_a = 128',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_33_7af907baa421acc1',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a90201ccf5efcbcfe46cd723367fcd77',
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
      'core_name0' => 'bmg_33_7af907baa421acc1',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd79079c104728231229f8185fe35b4f8',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "00000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_b437b02512',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '6881e3e9fe47f0cbdc2e654a4e3326e1',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "00000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_91ef1678ca',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '3357ffe50653e9d14d4f9101dfc712bf',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "10000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_e8aae5d3bb',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 8',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_9a636cbfb020a9d6',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'edc45728812084697cc77d416ca1bc9d',
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
      'core_name0' => 'cntr_11_0_9a636cbfb020a9d6',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a40234a17f28f2875a29b26c0a65bcc1',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((8 - 1) downto 0);
  signal b_1_34: unsigned((8 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_54048c8b02',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f656afd1eff99591face4c094ec46614',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((8 - 1) downto 0);
  signal b_1_34: unsigned((8 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_16235eb2bf',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 8',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_8b305ccf84a90afe',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '4f683d8935bf449075ba1923aca35579',
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
      'core_name0' => 'cntr_11_0_8b305ccf84a90afe',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '03bce7fb6d5c3f29e825d0d27769a0e9',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ebc4c1450132de1f02aed4f5e78be727',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'af6278e3d001831c13e1a803ecb26385',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '5b969764b651b158ccf9d512e2a9f374',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '15f46eb664aed2a3fbf76ad9d7fecff4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((24 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((25 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((24 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_f133931c1f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f5086cc686846a662442b9f1b6de04c1',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_17_32: signed((25 - 1) downto 0);
  signal b_17_35: unsigned((21 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((18 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "000000000000000000");
  signal op_mem_91_20_front_din: signed((18 - 1) downto 0);
  signal op_mem_91_20_back: signed((18 - 1) downto 0);
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
  signal cast_69_18: signed((26 - 1) downto 0);
  signal cast_69_22: signed((26 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((26 - 1) downto 0);
  signal internal_s_83_3_convert: signed((18 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
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
  cast_69_18 <= s2s_cast(a_17_32, 21, 26, 21);
  cast_69_22 <= u2s_cast(b_17_35, 21, 26, 21);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  internal_s_83_3_convert <= std_logic_vector_to_signed(convert_type(signed_to_std_logic_vector(internal_s_69_5_addsub), 26, 21, xlSigned, 18, 17, xlSigned, xlTruncate, xlSaturate));
  op_mem_91_20_front_din <= internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= \'1\';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= \'1\';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((25 - 1) downto 0);
    b : in std_logic_vector((21 - 1) downto 0);
    s : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'addsub_1593c8c405',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'affa79c5d22a480ab845ce71f11104b2',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000000000000000000111";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((21 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_9a2c97cce5',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '329ddcaba3ffffab370dbcf8bac4e2c4',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '12d27a02cda9786477d78546fd1a1f46',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((25 - 1) downto 0);
  signal output_port_5_5_force: signed((25 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((25 - 1) downto 0);
    output_port : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_60ea556961',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f2032764d891b4918eda4a6785bbac08',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((21 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((21 - 1) downto 0);
    output_port : out std_logic_vector((21 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_299ca43e25',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '81e7c932de5c09c96dd7f87083de57fb',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal d3_1_33: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => \'0\');
  signal latency_pipe_5_26_front_din: std_logic;
  signal latency_pipe_5_26_back: std_logic;
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal bit_2_27: std_logic;
  signal fully_2_1_bitnot: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  d3_1_33 <= d3(0);
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (latency_pipe_5_26_push_front_pop_back_en = \'1\')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  bit_2_27 <= d0_1_24 and d1_1_27 and d2_1_30 and d3_1_33;
  fully_2_1_bitnot <= not bit_2_27;
  latency_pipe_5_26_front_din <= fully_2_1_bitnot;
  latency_pipe_5_26_push_front_pop_back_en <= \'1\';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_182ac6c51e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '3fab454f8740cd1213a33e42c23da0a4',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a1b952c15a9facc389b054aae1e685a2',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '89c90280061c2ff1a42b15aca0fcdd23',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '09ce485048e9ed6c4fe8268ef4d908fa',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Distributed_Memory_Generator virtex5 Xilinx,_Inc. 4.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ce_overrides = sync_controls_overrides_ce',
    'CSET coefficient_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET common_output_ce = false',
    'CSET common_output_clk = false',
    'CSET data_width = 18',
    'CSET default_data = 0',
    'CSET default_data_radix = 16',
    'CSET depth = 16',
    'CSET dual_port_address = non_registered',
    'CSET dual_port_output_clock_enable = false',
    'CSET input_clock_enable = false',
    'CSET input_options = non_registered',
    'CSET memory_type = rom',
    'CSET output_options = registered',
    'CSET qualify_we_with_i_ce = false',
    'CSET reset_qdpo = false',
    'CSET reset_qspo = false',
    'CSET single_port_output_clock_enable = true',
    'CSET sync_reset_qdpo = false',
    'CSET sync_reset_qspo = false',
    'CSET component_name = dmg_43_53f87b14ea26f2c9',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '02b0b83a35688d9b9dc1190662feb455',
    'sourceFile' => 'hdl/xlsprom_dist.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out',
      'core_name0' => 'dmg_43_53f87b14ea26f2c9',
      'entity_name.0' => 'xlsprom_dist',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Distributed_Memory_Generator virtex5 Xilinx,_Inc. 4.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ce_overrides = sync_controls_overrides_ce',
    'CSET coefficient_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET common_output_ce = false',
    'CSET common_output_clk = false',
    'CSET data_width = 18',
    'CSET default_data = 0',
    'CSET default_data_radix = 16',
    'CSET depth = 16',
    'CSET dual_port_address = non_registered',
    'CSET dual_port_output_clock_enable = false',
    'CSET input_clock_enable = false',
    'CSET input_options = non_registered',
    'CSET memory_type = rom',
    'CSET output_options = registered',
    'CSET qualify_we_with_i_ce = false',
    'CSET reset_qdpo = false',
    'CSET reset_qspo = false',
    'CSET single_port_output_clock_enable = true',
    'CSET sync_reset_qdpo = false',
    'CSET sync_reset_qspo = false',
    'CSET component_name = dmg_43_2ed32a2fd073c158',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '7ec451c599f67a35b94d99b515eaeb9d',
    'sourceFile' => 'hdl/xlsprom_dist.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out',
      'core_name0' => 'dmg_43_2ed32a2fd073c158',
      'entity_name.0' => 'xlsprom_dist',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '8f1f5768ab2348a3adc3671e4ed51a5f',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '2e4d4add149773173a3ccf3c6edeed30',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_17_32: signed((36 - 1) downto 0);
  signal b_17_35: signed((36 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (2 - 1)) of signed((37 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    "0000000000000000000000000000000000000",
    "0000000000000000000000000000000000000");
  signal op_mem_91_20_front_din: signed((37 - 1) downto 0);
  signal op_mem_91_20_back: signed((37 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (2 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    "0",
    "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_71_18: signed((37 - 1) downto 0);
  signal cast_71_22: signed((37 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((37 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(1);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_91_20_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          op_mem_91_20(i) <= op_mem_91_20(i-1);
        end loop;
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(1);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (cout_mem_92_22_push_front_pop_back_en = \'1\')) then
        for i_x_000000 in 1 downto 1 loop 
          cout_mem_92_22(i_x_000000) <= cout_mem_92_22(i_x_000000-1);
        end loop;
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
  cast_71_18 <= s2s_cast(a_17_32, 33, 37, 33);
  cast_71_22 <= s2s_cast(b_17_35, 33, 37, 33);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  op_mem_91_20_front_din <= internal_s_71_5_addsub;
  op_mem_91_20_push_front_pop_back_en <= \'1\';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= \'1\';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((36 - 1) downto 0);
    b : in std_logic_vector((36 - 1) downto 0);
    s : out std_logic_vector((37 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'addsub_be8c56327e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f8fba0d8284922d9d6611ce50243dc47',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_17_32: signed((36 - 1) downto 0);
  signal b_17_35: signed((36 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (2 - 1)) of signed((37 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    "0000000000000000000000000000000000000",
    "0000000000000000000000000000000000000");
  signal op_mem_91_20_front_din: signed((37 - 1) downto 0);
  signal op_mem_91_20_back: signed((37 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (2 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    "0",
    "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((37 - 1) downto 0);
  signal cast_69_22: signed((37 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((37 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(1);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_91_20_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          op_mem_91_20(i) <= op_mem_91_20(i-1);
        end loop;
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(1);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (cout_mem_92_22_push_front_pop_back_en = \'1\')) then
        for i_x_000000 in 1 downto 1 loop 
          cout_mem_92_22(i_x_000000) <= cout_mem_92_22(i_x_000000-1);
        end loop;
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
  cast_69_18 <= s2s_cast(a_17_32, 33, 37, 33);
  cast_69_22 <= s2s_cast(b_17_35, 33, 37, 33);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  op_mem_91_20_front_din <= internal_s_69_5_addsub;
  op_mem_91_20_push_front_pop_back_en <= \'1\';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= \'1\';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((36 - 1) downto 0);
    b : in std_logic_vector((36 - 1) downto 0);
    s : out std_logic_vector((37 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'addsub_eb2273ac28',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '97b9d2abb9704e2741a8b32e94a74141',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert_pipeline.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '6f902be542d73c5781d83abcb766bce4',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '714226d6ce60f465780e15779e2d4bb5',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((36 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (2 - 1)) of std_logic_vector((36 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "000000000000000000000000000000000000",
    "000000000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((36 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((36 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
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
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((36 - 1) downto 0);
    q : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_38898c80c0',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b73b936ac8e4e06417082a6f197dc982',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '341ac14d7a1978db3ccee897b50852fe',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_22: signed((18 - 1) downto 0);
  signal b_1_25: signed((18 - 1) downto 0);
  type array_type_op_mem_65_20 is array (0 to (2 - 1)) of signed((36 - 1) downto 0);
  signal op_mem_65_20: array_type_op_mem_65_20 := (
    "000000000000000000000000000000000000",
    "000000000000000000000000000000000000");
  signal op_mem_65_20_front_din: signed((36 - 1) downto 0);
  signal op_mem_65_20_back: signed((36 - 1) downto 0);
  signal op_mem_65_20_push_front_pop_back_en: std_logic;
  signal mult_46_56: signed((36 - 1) downto 0);
begin
  a_1_22 <= std_logic_vector_to_signed(a);
  b_1_25 <= std_logic_vector_to_signed(b);
  op_mem_65_20_back <= op_mem_65_20(1);
  proc_op_mem_65_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_65_20_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
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
    a : in std_logic_vector((18 - 1) downto 0);
    b : in std_logic_vector((18 - 1) downto 0);
    p : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mult_f295e5f0f2',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '6e051d24fcbed1196a0b3f5352ab4a40',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((23 - 1) downto 0);
  signal d1_1_27: std_logic_vector((23 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (2 - 1)) of std_logic_vector((24 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    "000000000000000000000000",
    "000000000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((24 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((24 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((24 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(1);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          pipe_16_22(i) <= pipe_16_22(i-1);
        end loop;
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= cast(d0_1_24, 19, 24, 20, xlSigned);
      when others =>
        unregy_join_6_1 <= cast(d1_1_27, 20, 24, 20, xlSigned);
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((23 - 1) downto 0);
    d1 : in std_logic_vector((23 - 1) downto 0);
    y : out std_logic_vector((24 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_f1f44b96f0',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'dae74d78d89571218d665e6f3713eb8f',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_17_23: signed((23 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((23 - 1) downto 0);
    op : out std_logic_vector((23 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'scale_e5d0b4a1ec',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 6',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_f0184178d34429e1',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '40a97284020ff875c72d800d072ddbed',
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
      'core_name0' => 'cntr_11_0_f0184178d34429e1',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
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
    'CSET write_depth_a = 64',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_33_323c47498d5636a9',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '42ba19ebdf987cd477ec95ee276afd19',
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
      'core_name0' => 'bmg_33_323c47498d5636a9',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '538e91b9afa9a360bc51bc0f34c944b6',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((7 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_180df391de',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b5248d3f5b5143ba54a49d01587b0d86',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((7 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_7244cd602b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'db61cfd489a472805db2684370ef5f3f',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "1000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((7 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_7b07120b87',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 7',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_e465b512e9edc7d5',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'bf5f33ededebbb9abeae074710bfe582',
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
      'core_name0' => 'cntr_11_0_e465b512e9edc7d5',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '66dfbca33c2eb8499dfa0680a72e029e',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((7 - 1) downto 0);
  signal b_1_34: unsigned((7 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((7 - 1) downto 0);
    b : in std_logic_vector((7 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_9a3978c602',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '9275a22a9596054be859a55eb4c3d6fc',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((7 - 1) downto 0);
  signal b_1_34: unsigned((7 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((7 - 1) downto 0);
    b : in std_logic_vector((7 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_23065a6aa3',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 7',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_2c42bf3f38e8cf3d',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '41863031c7227ced7c2e30c5ad3a8574',
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
      'core_name0' => 'cntr_11_0_2c42bf3f38e8cf3d',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e4c47dfb73c5b8fc8b80dc7cc297838e',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '376a283d39ac204b50463e3540fb137f',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D;',
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
    'CSET write_depth_a = 8',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_cd39c143a25729dd',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '4435fd92807ce9b5085499941d88b697',
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
      'core_name0' => 'bmg_33_cd39c143a25729dd',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08;',
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
    'CSET write_depth_a = 8',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_74de024f0c1ac463',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b4be85e91b0d146302f9bb8eef271ecc',
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
      'core_name0' => 'bmg_33_74de024f0c1ac463',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '87212b452d3a4bf27c2250abcf156402',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 5',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_78ff46b917fcba28',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '93afb811e22dbcd0c21552f0660d5a36',
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
      'core_name0' => 'cntr_11_0_78ff46b917fcba28',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
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
    'CSET write_depth_a = 32',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_33_ba2cbf4ee1b86c81',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '3de42498540062017f25bae9c8ce505e',
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
      'core_name0' => 'bmg_33_ba2cbf4ee1b86c81',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '4e163d7f31d7f1730f06e420761e0c64',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_a267c870be',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'af2bad13c77b7b041e1467dc41d140d0',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_7ea0f2fff7',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '64d46ae81054cf988daec38e904bcb92',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "100000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_961b61f8a1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 6',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_25889389a19635b3',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a7f0e0fc9de217fc9185eae8ec4aa8fd',
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
      'core_name0' => 'cntr_11_0_25889389a19635b3',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '9163d19d006ec8f52dad0282d12b679c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((6 - 1) downto 0);
  signal b_1_34: unsigned((6 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((6 - 1) downto 0);
    b : in std_logic_vector((6 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_931d61fb72',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '162cd14d16c67b581f57f28fba5ced10',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((6 - 1) downto 0);
  signal b_1_34: unsigned((6 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((6 - 1) downto 0);
    b : in std_logic_vector((6 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_fe487ce1c7',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 6',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_f0184178d34429e1',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b5b1c211219ca52848525313504cf45f',
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
      'core_name0' => 'cntr_11_0_f0184178d34429e1',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '4849cbb8015e1c1b06dd803a7c5665e0',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e7de4779b25329c18115bf9b9435ca44',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D, FB15, 3CE0F, 8E3A, 32B25, D4DB, 371C6, 31F1, 304EB;',
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
    'CSET write_depth_a = 16',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_b972f6608ff04778',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e2ab46493002f0ecc6f023c02061fc4d',
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
      'core_name0' => 'bmg_33_b972f6608ff04778',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08, 3CE0F, 304EB, 32B25, 371C6, 371C6, 32B25, 304EB, 3CE0F;',
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
    'CSET write_depth_a = 16',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_663a71b1b4ae4b64',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd9b3126ce225716777a9cf377d163107',
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
      'core_name0' => 'bmg_33_663a71b1b4ae4b64',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '395f87bd626d6d15d0645abcb4ed8b81',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 4',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_34d24d689ba4471f',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '42a623e681b2e2c937e2a65b8a3829b3',
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
      'core_name0' => 'cntr_11_0_34d24d689ba4471f',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
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
    'CSET write_depth_a = 16',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_33_e414e83e3003ff05',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e60e665889deb4d45f2438ca1fbdfd13',
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
      'core_name0' => 'bmg_33_e414e83e3003ff05',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ebf68832c148b48ebeed45be1fa6f494',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "00001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((5 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_582a3706dd',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4522f477ee817d9344e420e7e82c7ec4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "00000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((5 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_fe72737ca0',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c6c785c7da534170701dbff999551b5f',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "10000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((5 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_ef0e2e5fc6',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 5',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_50b12e24f99f1fa1',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ee6ffd5a4150cc99f0f763ec611e1435',
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
      'core_name0' => 'cntr_11_0_50b12e24f99f1fa1',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b9b8874384342e8df155cd2fa01f6ece',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((5 - 1) downto 0);
  signal b_1_34: unsigned((5 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((5 - 1) downto 0);
    b : in std_logic_vector((5 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_9ece3c8c4e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '1167186bd3ee0a0898f6e43d489ee960',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((5 - 1) downto 0);
  signal b_1_34: unsigned((5 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((5 - 1) downto 0);
    b : in std_logic_vector((5 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_dc5bc996c9',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 5',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_78ff46b917fcba28',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '745f5c2c091ecdef1f2ed69aca71505b',
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
      'core_name0' => 'cntr_11_0_78ff46b917fcba28',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd0767348f81f4cd62ea2b6608d05c0d8',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e137d16f2aedbb365a2f357bcd2fb672',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D, FB15, 3CE0F, 8E3A, 32B25, D4DB, 371C6, 31F1, 304EB, FEC4, 3E6E8, A268, 33A1C, E1C6, 38753, 4A50, 30B06, F4FA, 3B5B0, 78AD, 31E3A, C5E4, 35D98, 1918, 3013C;',
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
    'CSET write_depth_a = 32',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_973a453bd51a1032',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '70edfe199e8c71ed047d71263f78b3dc',
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
      'core_name0' => 'bmg_33_973a453bd51a1032',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08, 3CE0F, 304EB, 32B25, 371C6, 371C6, 32B25, 304EB, 3CE0F, 3E6E8, 3013C, 33A1C, 35D98, 38753, 31E3A, 30B06, 3B5B0, 3B5B0, 30B06, 31E3A, 38753, 35D98, 33A1C, 3013C, 3E6E8;',
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
    'CSET write_depth_a = 32',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_0bf307740f4c2249',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'de034b47060120248bfb672e595206d7',
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
      'core_name0' => 'bmg_33_0bf307740f4c2249',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f301eec16351121ec3cbc43b2c4caf48',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 3',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_4766397a2cb82e6c',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'aebbcb796320cf371f21a92e88e48a34',
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
      'core_name0' => 'cntr_11_0_4766397a2cb82e6c',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
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
    'CSET write_depth_a = 8',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_33_86cad15aba8b45bc',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b061b523fbbb6a8ec44ba3f7b6fb3a10',
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
      'core_name0' => 'bmg_33_86cad15aba8b45bc',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'bab4e5f03ee70a1f19e04ed8bab64e3b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_67ad97ca70',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'fadb300e660d2c903d1fcb082af6b277',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "1000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_145086465d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 4',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_8ce1eef9b3b41e0a',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '313b38021968f9f512a5aef4a3c46a0f',
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
      'core_name0' => 'cntr_11_0_8ce1eef9b3b41e0a',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ed6a8def7bf6484a39b73ea223890ecf',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((4 - 1) downto 0);
  signal b_1_34: unsigned((4 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((4 - 1) downto 0);
    b : in std_logic_vector((4 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_4d3cfceaf4',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '7281288dfdea268164419c50e848831c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((4 - 1) downto 0);
  signal b_1_34: unsigned((4 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((4 - 1) downto 0);
    b : in std_logic_vector((4 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_d930162434',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 4',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_34d24d689ba4471f',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '69ffc9bdd2b9cace74d32eff87f62da4',
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
      'core_name0' => 'cntr_11_0_34d24d689ba4471f',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '98db1614a39dbf40a308390453d98a38',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b18573d1ca35565e397a6767a187bcda',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D, FB15, 3CE0F, 8E3A, 32B25, D4DB, 371C6, 31F1, 304EB, FEC4, 3E6E8, A268, 33A1C, E1C6, 38753, 4A50, 30B06, F4FA, 3B5B0, 78AD, 31E3A, C5E4, 35D98, 1918, 3013C, FFB1, 3F370, ABEB, 34251, E76C, 3928C, 563E, 30EF7, F854, 3C1CC, 839C, 3246C, CD9F, 36780, 2590, 302C5, FD3B, 3DA70, 9880, 33261, DB94, 37C64, 3E34, 307AC, F109, 3A9C2, 6D74, 31894, BDAF, 35415, C90, 3004F;',
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
    'CSET write_depth_a = 64',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_017aed32e197c46e',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '769143c8f53a5979ed6ce532ec2e46e6',
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
      'core_name0' => 'bmg_33_017aed32e197c46e',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08, 3CE0F, 304EB, 32B25, 371C6, 371C6, 32B25, 304EB, 3CE0F, 3E6E8, 3013C, 33A1C, 35D98, 38753, 31E3A, 30B06, 3B5B0, 3B5B0, 30B06, 31E3A, 38753, 35D98, 33A1C, 3013C, 3E6E8, 3F370, 3004F, 34251, 35415, 3928C, 31894, 30EF7, 3A9C2, 3C1CC, 307AC, 3246C, 37C64, 36780, 33261, 302C5, 3DA70, 3DA70, 302C5, 33261, 36780, 37C64, 3246C, 307AC, 3C1CC, 3A9C2, 30EF7, 31894, 3928C, 35415, 34251, 3004F, 3F370;',
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
    'CSET write_depth_a = 64',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_cde5f3f9996c5a95',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '28dde449fd295ce15cf0c6c5af999613',
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
      'core_name0' => 'bmg_33_cde5f3f9996c5a95',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '0980fb8ee0228d62241f1ffcbd35ecc6',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '555108a21fb2e77ead0846ae78770055',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '3e32d0c3084ab554ef45ac9172ce46a7',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_a1c496ea88',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '3cbb4b7449173f2ec4bd2eb1d7435974',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "100";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_469094441c',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 3',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_ff97ccbfc301b4b4',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a411a5520cc1dc96b1e87e517249c212',
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
      'core_name0' => 'cntr_11_0_ff97ccbfc301b4b4',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '0d2830fc6f3d63f3fed155175c35a0f2',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((3 - 1) downto 0);
  signal b_1_34: unsigned((3 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((3 - 1) downto 0);
    b : in std_logic_vector((3 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_8fc7f5539b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '91e16f9e52f2fc6ba0a751b004ae0945',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((3 - 1) downto 0);
  signal b_1_34: unsigned((3 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((3 - 1) downto 0);
    b : in std_logic_vector((3 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_47b317dab6',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 3',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_4766397a2cb82e6c',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '9ef6f066c393f339201da44ed1eca0d0',
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
      'core_name0' => 'cntr_11_0_4766397a2cb82e6c',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c45570b7b92913868b37b3842bc31f32',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '711076831aefeb7034ff74d6226cb00e',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D, FB15, 3CE0F, 8E3A, 32B25, D4DB, 371C6, 31F1, 304EB, FEC4, 3E6E8, A268, 33A1C, E1C6, 38753, 4A50, 30B06, F4FA, 3B5B0, 78AD, 31E3A, C5E4, 35D98, 1918, 3013C, FFB1, 3F370, ABEB, 34251, E76C, 3928C, 563E, 30EF7, F854, 3C1CC, 839C, 3246C, CD9F, 36780, 2590, 302C5, FD3B, 3DA70, 9880, 33261, DB94, 37C64, 3E34, 307AC, F109, 3A9C2, 6D74, 31894, BDAF, 35415, C90, 3004F, FFEC, 3F9B8, B086, 34698, EA0A, 39842, 5C22, 31127, F9C8, 3C7E9, 88F6, 327B8, D14D, 36C98, 2BC4, 303C5, FE13, 3E0AA, 9D80, 3362F, DEBE, 381D1, 4447, 30946, F314, 3AFB3, 731A, 31B56, C1D8, 358CA, 12D5, 300B2, FF4E, 3ED2B, A736, 33E28, E4AA, 38CE6, 504D, 30CEC, F6BA, 3BBB9, 7E2F, 32142, C9D1, 36280, 1F56, 301ED, FC3B, 3D43C, 9368, 32EB3, D848, 3770A, 3817, 30638, EED9, 3A3DE, 67BE, 315F6, B968, 34F7A, 648, 30014;',
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
    'CSET write_depth_a = 128',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_9b710071af525a53',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'dd5abf2c5d3660d9189adeeb3efa27c4',
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
      'core_name0' => 'bmg_33_9b710071af525a53',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08, 3CE0F, 304EB, 32B25, 371C6, 371C6, 32B25, 304EB, 3CE0F, 3E6E8, 3013C, 33A1C, 35D98, 38753, 31E3A, 30B06, 3B5B0, 3B5B0, 30B06, 31E3A, 38753, 35D98, 33A1C, 3013C, 3E6E8, 3F370, 3004F, 34251, 35415, 3928C, 31894, 30EF7, 3A9C2, 3C1CC, 307AC, 3246C, 37C64, 36780, 33261, 302C5, 3DA70, 3DA70, 302C5, 33261, 36780, 37C64, 3246C, 307AC, 3C1CC, 3A9C2, 30EF7, 31894, 3928C, 35415, 34251, 3004F, 3F370, 3F9B8, 30014, 34698, 34F7A, 39842, 315F6, 31127, 3A3DE, 3C7E9, 30638, 327B8, 3770A, 36C98, 32EB3, 303C5, 3D43C, 3E0AA, 301ED, 3362F, 36280, 381D1, 32142, 30946, 3BBB9, 3AFB3, 30CEC, 31B56, 38CE6, 358CA, 33E28, 300B2, 3ED2B, 3ED2B, 300B2, 33E28, 358CA, 38CE6, 31B56, 30CEC, 3AFB3, 3BBB9, 30946, 32142, 381D1, 36280, 3362F, 301ED, 3E0AA, 3D43C, 303C5, 32EB3, 36C98, 3770A, 327B8, 30638, 3C7E9, 3A3DE, 31127, 315F6, 39842, 34F7A, 34698, 30014, 3F9B8;',
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
    'CSET write_depth_a = 128',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_de81730d86f2dd7a',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c9781450d74f4deb2155e3e8bf64bd5b',
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
      'core_name0' => 'bmg_33_de81730d86f2dd7a',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ffe4e1fe451a2981b046728cda93aade',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd1aa83a0fa4f624a4ce8a9e7433e8d6d',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '5257a0eb5f203098dd35d83136a607ea',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "01";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_a7e2bb9e12',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '1c15e43b2cb0e2493cbb9c38d1c14235',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "00";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_cda50df78a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b1f0ae968b381ba6ab9669a6ba2c3226',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "10";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_e8ddc079e9',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 2',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_9b3867ea8e1e20fc',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '8ff68405ea9524eada3b8771ddddbc45',
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
      'core_name0' => 'cntr_11_0_9b3867ea8e1e20fc',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '3e38df6234de90c5b0953b584276e970',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((2 - 1) downto 0);
  signal b_1_34: unsigned((2 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((2 - 1) downto 0);
    b : in std_logic_vector((2 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_5f1eb17108',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '5e85df7ec719ce87aaaf17afb6ac7fb4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((2 - 1) downto 0);
  signal b_1_34: unsigned((2 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((2 - 1) downto 0);
    b : in std_logic_vector((2 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_f9928864ea',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '8282856005b4d643616e9b5b178e51e8',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd74194c14b33decb0f274b6aa64359d5',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D, FB15, 3CE0F, 8E3A, 32B25, D4DB, 371C6, 31F1, 304EB, FEC4, 3E6E8, A268, 33A1C, E1C6, 38753, 4A50, 30B06, F4FA, 3B5B0, 78AD, 31E3A, C5E4, 35D98, 1918, 3013C, FFB1, 3F370, ABEB, 34251, E76C, 3928C, 563E, 30EF7, F854, 3C1CC, 839C, 3246C, CD9F, 36780, 2590, 302C5, FD3B, 3DA70, 9880, 33261, DB94, 37C64, 3E34, 307AC, F109, 3A9C2, 6D74, 31894, BDAF, 35415, C90, 3004F, FFEC, 3F9B8, B086, 34698, EA0A, 39842, 5C22, 31127, F9C8, 3C7E9, 88F6, 327B8, D14D, 36C98, 2BC4, 303C5, FE13, 3E0AA, 9D80, 3362F, DEBE, 381D1, 4447, 30946, F314, 3AFB3, 731A, 31B56, C1D8, 358CA, 12D5, 300B2, FF4E, 3ED2B, A736, 33E28, E4AA, 38CE6, 504D, 30CEC, F6BA, 3BBB9, 7E2F, 32142, C9D1, 36280, 1F56, 301ED, FC3B, 3D43C, 9368, 32EB3, D848, 3770A, 3817, 30638, EED9, 3A3DE, 67BE, 315F6, B968, 34F7A, 648, 30014, FFFB, 3FCDC, B2C9, 348C6, EB4B, 39B23, 5F0F, 3124D, FA73, 3CAFB, 8B9A, 3296A, D318, 36F2C, 2EDC, 30453, FE71, 3E3C8, 9FF7, 33822, E046, 38490, 474D, 30A21, F40C, 3B2B0, 75E6, 31CC4, C3E2, 35B2E, 15F7, 300F2, FF85, 3F04D, A994, 34039, E610, 38FB7, 5348, 30DED, F78C, 3BEC1, 80E8, 322D3, CBBC, 364FD, 2274, 30254, FCC0, 3D755, 95F7, 33086, D9F2, 379B4, 3B27, 306ED, EFF5, 3A6CE, 6A9B, 31741, BB8F, 351C4, 96C, 3002C, FFD4, 3F694, AE3C, 34471, E8BF, 39565, 5932, 3100B, F913, 3C4D9, 864C, 3260E, CF7A, 36A09, 28AB, 30340, FDAC, 3DD8C, 9B03, 33444, DD2D, 37F18, 413F, 30874, F213, 3ACB8, 7049, 319F0, BFC7, 3566C, FB3, 3007B, FF0E, 3EA09, A4D2, 33C1E, E33C, 38A1A, 4D50, 30BF4, F5DF, 3B8B3, 7B70, 31FBA, C7DE, 36009, 1C38, 3018F, FBAD, 3D124, 90D4, 32CE8, D696, 37466, 3505, 3058D, EDB3, 3A0F1, 64DD, 314B5, B73A, 34D37, 324, 30005;',
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
    'CSET write_depth_a = 256',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_b5a854daeb8f7460',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '90cf8834808619e6025cb6d90768c5f8',
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
      'core_name0' => 'bmg_33_b5a854daeb8f7460',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08, 3CE0F, 304EB, 32B25, 371C6, 371C6, 32B25, 304EB, 3CE0F, 3E6E8, 3013C, 33A1C, 35D98, 38753, 31E3A, 30B06, 3B5B0, 3B5B0, 30B06, 31E3A, 38753, 35D98, 33A1C, 3013C, 3E6E8, 3F370, 3004F, 34251, 35415, 3928C, 31894, 30EF7, 3A9C2, 3C1CC, 307AC, 3246C, 37C64, 36780, 33261, 302C5, 3DA70, 3DA70, 302C5, 33261, 36780, 37C64, 3246C, 307AC, 3C1CC, 3A9C2, 30EF7, 31894, 3928C, 35415, 34251, 3004F, 3F370, 3F9B8, 30014, 34698, 34F7A, 39842, 315F6, 31127, 3A3DE, 3C7E9, 30638, 327B8, 3770A, 36C98, 32EB3, 303C5, 3D43C, 3E0AA, 301ED, 3362F, 36280, 381D1, 32142, 30946, 3BBB9, 3AFB3, 30CEC, 31B56, 38CE6, 358CA, 33E28, 300B2, 3ED2B, 3ED2B, 300B2, 33E28, 358CA, 38CE6, 31B56, 30CEC, 3AFB3, 3BBB9, 30946, 32142, 381D1, 36280, 3362F, 301ED, 3E0AA, 3D43C, 303C5, 32EB3, 36C98, 3770A, 327B8, 30638, 3C7E9, 3A3DE, 31127, 315F6, 39842, 34F7A, 34698, 30014, 3F9B8, 3FCDC, 30005, 348C6, 34D37, 39B23, 314B5, 3124D, 3A0F1, 3CAFB, 3058D, 3296A, 37466, 36F2C, 32CE8, 30453, 3D124, 3E3C8, 3018F, 33822, 36009, 38490, 31FBA, 30A21, 3B8B3, 3B2B0, 30BF4, 31CC4, 38A1A, 35B2E, 33C1E, 300F2, 3EA09, 3F04D, 3007B, 34039, 3566C, 38FB7, 319F0, 30DED, 3ACB8, 3BEC1, 30874, 322D3, 37F18, 364FD, 33444, 30254, 3DD8C, 3D755, 30340, 33086, 36A09, 379B4, 3260E, 306ED, 3C4D9, 3A6CE, 3100B, 31741, 39565, 351C4, 34471, 3002C, 3F694, 3F694, 3002C, 34471, 351C4, 39565, 31741, 3100B, 3A6CE, 3C4D9, 306ED, 3260E, 379B4, 36A09, 33086, 30340, 3D755, 3DD8C, 30254, 33444, 364FD, 37F18, 322D3, 30874, 3BEC1, 3ACB8, 30DED, 319F0, 38FB7, 3566C, 34039, 3007B, 3F04D, 3EA09, 300F2, 33C1E, 35B2E, 38A1A, 31CC4, 30BF4, 3B2B0, 3B8B3, 30A21, 31FBA, 38490, 36009, 33822, 3018F, 3E3C8, 3D124, 30453, 32CE8, 36F2C, 37466, 3296A, 3058D, 3CAFB, 3A0F1, 3124D, 314B5, 39B23, 34D37, 348C6, 30005, 3FCDC;',
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
    'CSET write_depth_a = 256',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_6b05b5fcaf93ca60',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a65606bdf798c4836e704307f961106d',
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
      'core_name0' => 'bmg_33_6b05b5fcaf93ca60',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '44fb8f55a1d0d5fe2001a8877bc8c8f2',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '49cb840f1fef3a380c8ba37e565647c7',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal rst_1_40: boolean;
  signal count_reg_20_23: unsigned((1 - 1) downto 0) := "0";
  signal count_reg_20_23_rst: std_logic;
  signal bool_44_4: boolean;
  signal rst_limit_join_44_1: boolean;
  signal count_reg_join_44_1: unsigned((2 - 1) downto 0);
  signal count_reg_join_44_1_rst: std_logic;
begin
  rst_1_40 <= ((rst) = "1");
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (count_reg_20_23_rst = \'1\')) then
        count_reg_20_23 <= "0";
      elsif (ce = \'1\') then 
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("1");
      end if;
    end if;
  end process proc_count_reg_20_23;
  bool_44_4 <= rst_1_40 or false;
  proc_if_44_1: process (bool_44_4, count_reg_20_23)
  is
  begin
    if bool_44_4 then
      count_reg_join_44_1_rst <= \'1\';
    else 
      count_reg_join_44_1_rst <= \'0\';
    end if;
    if bool_44_4 then
      rst_limit_join_44_1 <= false;
    else 
      rst_limit_join_44_1 <= false;
    end if;
  end process proc_if_44_1;
  count_reg_20_23_rst <= count_reg_join_44_1_rst;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end',
      'crippled_entity' => 'is
  port (
    rst : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'counter_9b03e3d644',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a2ff0048166d722dec119a318f08c0bc',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e29a1e5cba509eb4c0240b83ff698a0b',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, FFFF, FFFB, FFF5, FFEC, FFE1, FFD4, FFC4, FFB1, FF9C, FF85, FF6B, FF4E, FF30, FF0E, FEEB, FEC4, FE9C, FE71, FE43, FE13, FDE1, FDAC, FD74, FD3B, FCFE, FCC0, FC7F, FC3B, FBF5, FBAD, FB62, FB15, FAC5, FA73, FA1F, F9C8, F96E, F913, F8B4, F854, F7F1, F78C, F724, F6BA, F64E, F5DF, F56E, F4FA, F484, F40C, F391, F314, F295, F213, F18F, F109, F080, EFF5, EF68, EED9, EE47, EDB3, ED1C, EC83, EBE8, EB4B, EAAB, EA0A, E966, E8BF, E817, E76C, E6BF, E610, E55E, E4AA, E3F4, E33C, E282, E1C6, E107, E046, DF83, DEBE, DDF7, DD2D, DC62, DB94, DAC4, D9F2, D91E, D848, D770, D696, D5BA, D4DB, D3FB, D318, D234, D14D, D065, CF7A, CE8E, CD9F, CCAE, CBBC, CAC7, C9D1, C8D9, C7DE, C6E2, C5E4, C4E4, C3E2, C2DE, C1D8, C0D1, BFC7, BEBC, BDAF, BCA0, BB8F, BA7D, B968, B852, B73A, B620, B505, B3E8, B2C9, B1A8, B086, AF62, AE3C, AD14, ABEB, AAC1, A994, A866, A736, A605, A4D2, A39E, A268, A130, 9FF7, 9EBC, 9D80, 9C42, 9B03, 99C2, 9880, 973C, 95F7, 94B0, 9368, 921F, 90D4, 8F88, 8E3A, 8CEB, 8B9A, 8A49, 88F6, 87A1, 864C, 84F5, 839C, 8243, 80E8, 7F8C, 7E2F, 7CD0, 7B70, 7A10, 78AD, 774A, 75E6, 7480, 731A, 71B2, 7049, 6EDF, 6D74, 6C08, 6A9B, 692D, 67BE, 664E, 64DD, 636B, 61F8, 6084, 5F0F, 5D99, 5C22, 5AAA, 5932, 57B9, 563E, 54C3, 5348, 51CB, 504D, 4ECF, 4D50, 4BD1, 4A50, 48CF, 474D, 45CB, 4447, 42C3, 413F, 3FBA, 3E34, 3CAE, 3B27, 399F, 3817, 368E, 3505, 337C, 31F1, 3067, 2EDC, 2D50, 2BC4, 2A38, 28AB, 271E, 2590, 2402, 2274, 20E5, 1F56, 1DC7, 1C38, 1AA8, 1918, 1787, 15F7, 1466, 12D5, 1144, FB3, E21, C90, AFE, 96C, 7DA, 648, 4B6, 324, 192, 0, 3FE6E, 3FCDC, 3FB4A, 3F9B8, 3F826, 3F694, 3F502, 3F370, 3F1DF, 3F04D, 3EEBC, 3ED2B, 3EB9A, 3EA09, 3E879, 3E6E8, 3E558, 3E3C8, 3E239, 3E0AA, 3DF1B, 3DD8C, 3DBFE, 3DA70, 3D8E2, 3D755, 3D5C8, 3D43C, 3D2B0, 3D124, 3CF99, 3CE0F, 3CC84, 3CAFB, 3C972, 3C7E9, 3C661, 3C4D9, 3C352, 3C1CC, 3C046, 3BEC1, 3BD3D, 3BBB9, 3BA35, 3B8B3, 3B731, 3B5B0, 3B42F, 3B2B0, 3B131, 3AFB3, 3AE35, 3ACB8, 3AB3D, 3A9C2, 3A847, 3A6CE, 3A556, 3A3DE, 3A267, 3A0F1, 39F7C, 39E08, 39C95, 39B23, 399B2, 39842, 396D3, 39565, 393F8, 3928C, 39121, 38FB7, 38E4E, 38CE6, 38B80, 38A1A, 388B6, 38753, 385F0, 38490, 38330, 381D1, 38074, 37F18, 37DBD, 37C64, 37B0B, 379B4, 3785F, 3770A, 375B7, 37466, 37315, 371C6, 37078, 36F2C, 36DE1, 36C98, 36B50, 36A09, 368C4, 36780, 3663E, 364FD, 363BE, 36280, 36144, 36009, 35ED0, 35D98, 35C62, 35B2E, 359FB, 358CA, 3579A, 3566C, 3553F, 35415, 352EC, 351C4, 3509E, 34F7A, 34E58, 34D37, 34C18, 34AFB, 349E0, 348C6, 347AE, 34698, 34583, 34471, 34360, 34251, 34144, 34039, 33F2F, 33E28, 33D22, 33C1E, 33B1C, 33A1C, 3391E, 33822, 33727, 3362F, 33539, 33444, 33352, 33261, 33172, 33086, 32F9B, 32EB3, 32DCC, 32CE8, 32C05, 32B25, 32A46, 3296A, 32890, 327B8, 326E2, 3260E, 3253C, 3246C, 3239E, 322D3, 32209, 32142, 3207D, 31FBA, 31EF9, 31E3A, 31D7E, 31CC4, 31C0C, 31B56, 31AA2, 319F0, 31941, 31894, 317E9, 31741, 3169A, 315F6, 31555, 314B5, 31418, 3137D, 312E4, 3124D, 311B9, 31127, 31098, 3100B, 30F80, 30EF7, 30E71, 30DED, 30D6B, 30CEC, 30C6F, 30BF4, 30B7C, 30B06, 30A92, 30A21, 309B2, 30946, 308DC, 30874, 3080F, 307AC, 3074C, 306ED, 30692, 30638, 305E1, 3058D, 3053B, 304EB, 3049E, 30453, 3040B, 303C5, 30381, 30340, 30302, 302C5, 3028C, 30254, 3021F, 301ED, 301BD, 3018F, 30164, 3013C, 30115, 300F2, 300D0, 300B2, 30095, 3007B, 30064, 3004F, 3003C, 3002C, 3001F, 30014, 3000B, 30005, 30001;',
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
    'CSET component_name = bmg_33_46bd44fd6e8a8e18',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b53ed9133b483c70e7bf0b1541976619',
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
      'core_name0' => 'bmg_33_46bd44fd6e8a8e18',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 3FE6E, 3FCDC, 3FB4A, 3F9B8, 3F826, 3F694, 3F502, 3F370, 3F1DF, 3F04D, 3EEBC, 3ED2B, 3EB9A, 3EA09, 3E879, 3E6E8, 3E558, 3E3C8, 3E239, 3E0AA, 3DF1B, 3DD8C, 3DBFE, 3DA70, 3D8E2, 3D755, 3D5C8, 3D43C, 3D2B0, 3D124, 3CF99, 3CE0F, 3CC84, 3CAFB, 3C972, 3C7E9, 3C661, 3C4D9, 3C352, 3C1CC, 3C046, 3BEC1, 3BD3D, 3BBB9, 3BA35, 3B8B3, 3B731, 3B5B0, 3B42F, 3B2B0, 3B131, 3AFB3, 3AE35, 3ACB8, 3AB3D, 3A9C2, 3A847, 3A6CE, 3A556, 3A3DE, 3A267, 3A0F1, 39F7C, 39E08, 39C95, 39B23, 399B2, 39842, 396D3, 39565, 393F8, 3928C, 39121, 38FB7, 38E4E, 38CE6, 38B80, 38A1A, 388B6, 38753, 385F0, 38490, 38330, 381D1, 38074, 37F18, 37DBD, 37C64, 37B0B, 379B4, 3785F, 3770A, 375B7, 37466, 37315, 371C6, 37078, 36F2C, 36DE1, 36C98, 36B50, 36A09, 368C4, 36780, 3663E, 364FD, 363BE, 36280, 36144, 36009, 35ED0, 35D98, 35C62, 35B2E, 359FB, 358CA, 3579A, 3566C, 3553F, 35415, 352EC, 351C4, 3509E, 34F7A, 34E58, 34D37, 34C18, 34AFB, 349E0, 348C6, 347AE, 34698, 34583, 34471, 34360, 34251, 34144, 34039, 33F2F, 33E28, 33D22, 33C1E, 33B1C, 33A1C, 3391E, 33822, 33727, 3362F, 33539, 33444, 33352, 33261, 33172, 33086, 32F9B, 32EB3, 32DCC, 32CE8, 32C05, 32B25, 32A46, 3296A, 32890, 327B8, 326E2, 3260E, 3253C, 3246C, 3239E, 322D3, 32209, 32142, 3207D, 31FBA, 31EF9, 31E3A, 31D7E, 31CC4, 31C0C, 31B56, 31AA2, 319F0, 31941, 31894, 317E9, 31741, 3169A, 315F6, 31555, 314B5, 31418, 3137D, 312E4, 3124D, 311B9, 31127, 31098, 3100B, 30F80, 30EF7, 30E71, 30DED, 30D6B, 30CEC, 30C6F, 30BF4, 30B7C, 30B06, 30A92, 30A21, 309B2, 30946, 308DC, 30874, 3080F, 307AC, 3074C, 306ED, 30692, 30638, 305E1, 3058D, 3053B, 304EB, 3049E, 30453, 3040B, 303C5, 30381, 30340, 30302, 302C5, 3028C, 30254, 3021F, 301ED, 301BD, 3018F, 30164, 3013C, 30115, 300F2, 300D0, 300B2, 30095, 3007B, 30064, 3004F, 3003C, 3002C, 3001F, 30014, 3000B, 30005, 30001, 30000, 30001, 30005, 3000B, 30014, 3001F, 3002C, 3003C, 3004F, 30064, 3007B, 30095, 300B2, 300D0, 300F2, 30115, 3013C, 30164, 3018F, 301BD, 301ED, 3021F, 30254, 3028C, 302C5, 30302, 30340, 30381, 303C5, 3040B, 30453, 3049E, 304EB, 3053B, 3058D, 305E1, 30638, 30692, 306ED, 3074C, 307AC, 3080F, 30874, 308DC, 30946, 309B2, 30A21, 30A92, 30B06, 30B7C, 30BF4, 30C6F, 30CEC, 30D6B, 30DED, 30E71, 30EF7, 30F80, 3100B, 31098, 31127, 311B9, 3124D, 312E4, 3137D, 31418, 314B5, 31555, 315F6, 3169A, 31741, 317E9, 31894, 31941, 319F0, 31AA2, 31B56, 31C0C, 31CC4, 31D7E, 31E3A, 31EF9, 31FBA, 3207D, 32142, 32209, 322D3, 3239E, 3246C, 3253C, 3260E, 326E2, 327B8, 32890, 3296A, 32A46, 32B25, 32C05, 32CE8, 32DCC, 32EB3, 32F9B, 33086, 33172, 33261, 33352, 33444, 33539, 3362F, 33727, 33822, 3391E, 33A1C, 33B1C, 33C1E, 33D22, 33E28, 33F2F, 34039, 34144, 34251, 34360, 34471, 34583, 34698, 347AE, 348C6, 349E0, 34AFB, 34C18, 34D37, 34E58, 34F7A, 3509E, 351C4, 352EC, 35415, 3553F, 3566C, 3579A, 358CA, 359FB, 35B2E, 35C62, 35D98, 35ED0, 36009, 36144, 36280, 363BE, 364FD, 3663E, 36780, 368C4, 36A09, 36B50, 36C98, 36DE1, 36F2C, 37078, 371C6, 37315, 37466, 375B7, 3770A, 3785F, 379B4, 37B0B, 37C64, 37DBD, 37F18, 38074, 381D1, 38330, 38490, 385F0, 38753, 388B6, 38A1A, 38B80, 38CE6, 38E4E, 38FB7, 39121, 3928C, 393F8, 39565, 396D3, 39842, 399B2, 39B23, 39C95, 39E08, 39F7C, 3A0F1, 3A267, 3A3DE, 3A556, 3A6CE, 3A847, 3A9C2, 3AB3D, 3ACB8, 3AE35, 3AFB3, 3B131, 3B2B0, 3B42F, 3B5B0, 3B731, 3B8B3, 3BA35, 3BBB9, 3BD3D, 3BEC1, 3C046, 3C1CC, 3C352, 3C4D9, 3C661, 3C7E9, 3C972, 3CAFB, 3CC84, 3CE0F, 3CF99, 3D124, 3D2B0, 3D43C, 3D5C8, 3D755, 3D8E2, 3DA70, 3DBFE, 3DD8C, 3DF1B, 3E0AA, 3E239, 3E3C8, 3E558, 3E6E8, 3E879, 3EA09, 3EB9A, 3ED2B, 3EEBC, 3F04D, 3F1DF, 3F370, 3F502, 3F694, 3F826, 3F9B8, 3FB4A, 3FCDC, 3FE6E;',
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
    'CSET component_name = bmg_33_4603ebf1ea1a20a8',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '10301616d048e6d2607ddf9b1b12c8ec',
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
      'core_name0' => 'bmg_33_4603ebf1ea1a20a8',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '95229567ae2a102b324ef36c1561a98f',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 10000, FFFF, FFFD, FFFB, FFF8, FFF5, FFF1, FFEC, FFE7, FFE1, FFDB, FFD4, FFCC, FFC4, FFBB, FFB1, FFA7, FF9C, FF91, FF85, FF78, FF6B, FF5D, FF4E, FF3F, FF30, FF1F, FF0E, FEFD, FEEB, FED8, FEC4, FEB0, FE9C, FE87, FE71, FE5A, FE43, FE2B, FE13, FDFA, FDE1, FDC7, FDAC, FD90, FD74, FD58, FD3B, FD1D, FCFE, FCDF, FCC0, FCA0, FC7F, FC5D, FC3B, FC18, FBF5, FBD1, FBAD, FB88, FB62, FB3C, FB15, FAED, FAC5, FA9C, FA73, FA49, FA1F, F9F3, F9C8, F99B, F96E, F941, F913, F8E4, F8B4, F885, F854, F823, F7F1, F7BF, F78C, F758, F724, F6EF, F6BA, F684, F64E, F616, F5DF, F5A6, F56E, F534, F4FA, F4BF, F484, F448, F40C, F3CF, F391, F353, F314, F2D5, F295, F254, F213, F1D2, F18F, F14C, F109, F0C5, F080, F03B, EFF5, EFAF, EF68, EF21, EED9, EE90, EE47, EDFD, EDB3, ED68, ED1C, ECD0, EC83, EC36, EBE8, EB9A, EB4B, EAFC, EAAB, EA5B, EA0A, E9B8, E966, E913, E8BF, E86B, E817, E7C2, E76C, E716, E6BF, E667, E610, E5B7, E55E, E504, E4AA, E450, E3F4, E399, E33C, E2DF, E282, E224, E1C6, E167, E107, E0A7, E046, DFE5, DF83, DF21, DEBE, DE5B, DDF7, DD92, DD2D, DCC8, DC62, DBFB, DB94, DB2C, DAC4, DA5C, D9F2, D989, D91E, D8B4, D848, D7DC, D770, D703, D696, D628, D5BA, D54B, D4DB, D46B, D3FB, D38A, D318, D2A6, D234, D1C1, D14D, D0D9, D065, CFF0, CF7A, CF04, CE8E, CE17, CD9F, CD27, CCAE, CC35, CBBC, CB42, CAC7, CA4D, C9D1, C955, C8D9, C85C, C7DE, C761, C6E2, C663, C5E4, C564, C4E4, C463, C3E2, C360, C2DE, C25C, C1D8, C155, C0D1, C04C, BFC7, BF42, BEBC, BE36, BDAF, BD28, BCA0, BC18, BB8F, BB06, BA7D, B9F3, B968, B8DD, B852, B7C6, B73A, B6AD, B620, B593, B505, B477, B3E8, B358, B2C9, B239, B1A8, B117, B086, AFF4, AF62, AECF, AE3C, ADA8, AD14, AC80, ABEB, AB56, AAC1, AA2A, A994, A8FD, A866, A7CE, A736, A69E, A605, A56C, A4D2, A438, A39E, A303, A268, A1CC, A130, A094, 9FF7, 9F5A, 9EBC, 9E1E, 9D80, 9CE1, 9C42, 9BA3, 9B03, 9A63, 99C2, 9921, 9880, 97DE, 973C, 969A, 95F7, 9554, 94B0, 940C, 9368, 92C4, 921F, 9179, 90D4, 902E, 8F88, 8EE1, 8E3A, 8D93, 8CEB, 8C43, 8B9A, 8AF2, 8A49, 899F, 88F6, 884C, 87A1, 86F7, 864C, 85A0, 84F5, 8449, 839C, 82F0, 8243, 8195, 80E8, 803A, 7F8C, 7EDD, 7E2F, 7D7F, 7CD0, 7C20, 7B70, 7AC0, 7A10, 795F, 78AD, 77FC, 774A, 7698, 75E6, 7533, 7480, 73CD, 731A, 7266, 71B2, 70FE, 7049, 6F94, 6EDF, 6E2A, 6D74, 6CBE, 6C08, 6B52, 6A9B, 69E4, 692D, 6876, 67BE, 6706, 664E, 6595, 64DD, 6424, 636B, 62B1, 61F8, 613E, 6084, 5FC9, 5F0F, 5E54, 5D99, 5CDE, 5C22, 5B66, 5AAA, 59EE, 5932, 5875, 57B9, 56FC, 563E, 5581, 54C3, 5406, 5348, 5289, 51CB, 510C, 504D, 4F8E, 4ECF, 4E10, 4D50, 4C90, 4BD1, 4B10, 4A50, 4990, 48CF, 480E, 474D, 468C, 45CB, 4509, 4447, 4385, 42C3, 4201, 413F, 407C, 3FBA, 3EF7, 3E34, 3D71, 3CAE, 3BEA, 3B27, 3A63, 399F, 38DB, 3817, 3753, 368E, 35CA, 3505, 3440, 337C, 32B7, 31F1, 312C, 3067, 2FA1, 2EDC, 2E16, 2D50, 2C8A, 2BC4, 2AFE, 2A38, 2971, 28AB, 27E4, 271E, 2657, 2590, 24C9, 2402, 233B, 2274, 21AD, 20E5, 201E, 1F56, 1E8F, 1DC7, 1CFF, 1C38, 1B70, 1AA8, 19E0, 1918, 1850, 1787, 16BF, 15F7, 152E, 1466, 139E, 12D5, 120D, 1144, 107B, FB3, EEA, E21, D59, C90, BC7, AFE, A35, 96C, 8A3, 7DA, 711, 648, 57F, 4B6, 3ED, 324, 25B, 192, C9;',
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
    'CSET component_name = bmg_33_83c37db014e772b9',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'fdbebffdce37394807b118e2ed0f3956',
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
      'core_name0' => 'bmg_33_83c37db014e772b9',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 3FF37, 3FE6E, 3FDA5, 3FCDC, 3FC13, 3FB4A, 3FA81, 3F9B8, 3F8EF, 3F826, 3F75D, 3F694, 3F5CB, 3F502, 3F439, 3F370, 3F2A7, 3F1DF, 3F116, 3F04D, 3EF85, 3EEBC, 3EDF3, 3ED2B, 3EC62, 3EB9A, 3EAD2, 3EA09, 3E941, 3E879, 3E7B0, 3E6E8, 3E620, 3E558, 3E490, 3E3C8, 3E301, 3E239, 3E171, 3E0AA, 3DFE2, 3DF1B, 3DE53, 3DD8C, 3DCC5, 3DBFE, 3DB37, 3DA70, 3D9A9, 3D8E2, 3D81C, 3D755, 3D68F, 3D5C8, 3D502, 3D43C, 3D376, 3D2B0, 3D1EA, 3D124, 3D05F, 3CF99, 3CED4, 3CE0F, 3CD49, 3CC84, 3CBC0, 3CAFB, 3CA36, 3C972, 3C8AD, 3C7E9, 3C725, 3C661, 3C59D, 3C4D9, 3C416, 3C352, 3C28F, 3C1CC, 3C109, 3C046, 3BF84, 3BEC1, 3BDFF, 3BD3D, 3BC7B, 3BBB9, 3BAF7, 3BA35, 3B974, 3B8B3, 3B7F2, 3B731, 3B670, 3B5B0, 3B4F0, 3B42F, 3B370, 3B2B0, 3B1F0, 3B131, 3B072, 3AFB3, 3AEF4, 3AE35, 3AD77, 3ACB8, 3ABFA, 3AB3D, 3AA7F, 3A9C2, 3A904, 3A847, 3A78B, 3A6CE, 3A612, 3A556, 3A49A, 3A3DE, 3A322, 3A267, 3A1AC, 3A0F1, 3A037, 39F7C, 39EC2, 39E08, 39D4F, 39C95, 39BDC, 39B23, 39A6B, 399B2, 398FA, 39842, 3978A, 396D3, 3961C, 39565, 394AE, 393F8, 39342, 3928C, 391D6, 39121, 3906C, 38FB7, 38F02, 38E4E, 38D9A, 38CE6, 38C33, 38B80, 38ACD, 38A1A, 38968, 388B6, 38804, 38753, 386A1, 385F0, 38540, 38490, 383E0, 38330, 38281, 381D1, 38123, 38074, 37FC6, 37F18, 37E6B, 37DBD, 37D10, 37C64, 37BB7, 37B0B, 37A60, 379B4, 37909, 3785F, 377B4, 3770A, 37661, 375B7, 3750E, 37466, 373BD, 37315, 3726D, 371C6, 3711F, 37078, 36FD2, 36F2C, 36E87, 36DE1, 36D3C, 36C98, 36BF4, 36B50, 36AAC, 36A09, 36966, 368C4, 36822, 36780, 366DF, 3663E, 3659D, 364FD, 3645D, 363BE, 3631F, 36280, 361E2, 36144, 360A6, 36009, 35F6C, 35ED0, 35E34, 35D98, 35CFD, 35C62, 35BC8, 35B2E, 35A94, 359FB, 35962, 358CA, 35832, 3579A, 35703, 3566C, 355D6, 3553F, 354AA, 35415, 35380, 352EC, 35258, 351C4, 35131, 3509E, 3500C, 34F7A, 34EE9, 34E58, 34DC7, 34D37, 34CA8, 34C18, 34B89, 34AFB, 34A6D, 349E0, 34953, 348C6, 3483A, 347AE, 34723, 34698, 3460D, 34583, 344FA, 34471, 343E8, 34360, 342D8, 34251, 341CA, 34144, 340BE, 34039, 33FB4, 33F2F, 33EAB, 33E28, 33DA4, 33D22, 33CA0, 33C1E, 33B9D, 33B1C, 33A9C, 33A1C, 3399D, 3391E, 3389F, 33822, 337A4, 33727, 336AB, 3362F, 335B3, 33539, 334BE, 33444, 333CB, 33352, 332D9, 33261, 331E9, 33172, 330FC, 33086, 33010, 32F9B, 32F27, 32EB3, 32E3F, 32DCC, 32D5A, 32CE8, 32C76, 32C05, 32B95, 32B25, 32AB5, 32A46, 329D8, 3296A, 328FD, 32890, 32824, 327B8, 3274C, 326E2, 32677, 3260E, 325A4, 3253C, 324D4, 3246C, 32405, 3239E, 32338, 322D3, 3226E, 32209, 321A5, 32142, 320DF, 3207D, 3201B, 31FBA, 31F59, 31EF9, 31E99, 31E3A, 31DDC, 31D7E, 31D21, 31CC4, 31C67, 31C0C, 31BB0, 31B56, 31AFC, 31AA2, 31A49, 319F0, 31999, 31941, 318EA, 31894, 3183E, 317E9, 31795, 31741, 316ED, 3169A, 31648, 315F6, 315A5, 31555, 31504, 314B5, 31466, 31418, 313CA, 3137D, 31330, 312E4, 31298, 3124D, 31203, 311B9, 31170, 31127, 310DF, 31098, 31051, 3100B, 30FC5, 30F80, 30F3B, 30EF7, 30EB4, 30E71, 30E2E, 30DED, 30DAC, 30D6B, 30D2B, 30CEC, 30CAD, 30C6F, 30C31, 30BF4, 30BB8, 30B7C, 30B41, 30B06, 30ACC, 30A92, 30A5A, 30A21, 309EA, 309B2, 3097C, 30946, 30911, 308DC, 308A8, 30874, 30841, 3080F, 307DD, 307AC, 3077B, 3074C, 3071C, 306ED, 306BF, 30692, 30665, 30638, 3060D, 305E1, 305B7, 3058D, 30564, 3053B, 30513, 304EB, 304C4, 3049E, 30478, 30453, 3042F, 3040B, 303E8, 303C5, 303A3, 30381, 30360, 30340, 30321, 30302, 302E3, 302C5, 302A8, 3028C, 30270, 30254, 30239, 3021F, 30206, 301ED, 301D5, 301BD, 301A6, 3018F, 30179, 30164, 30150, 3013C, 30128, 30115, 30103, 300F2, 300E1, 300D0, 300C1, 300B2, 300A3, 30095, 30088, 3007B, 3006F, 30064, 30059, 3004F, 30045, 3003C, 30034, 3002C, 30025, 3001F, 30019, 30014, 3000F, 3000B, 30008, 30005, 30003, 30001, 30000;',
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
    'CSET component_name = bmg_33_986bf723216735a7',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '537b7a0fb84617399fbb9ef285fe3f79',
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
      'core_name0' => 'bmg_33_986bf723216735a7',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 30000, 30000, 30001, 30003, 30005, 30008, 3000B, 3000F, 30014, 30019, 3001F, 30025, 3002C, 30034, 3003C, 30045, 3004F, 30059, 30064, 3006F, 3007B, 30088, 30095, 300A3, 300B2, 300C1, 300D0, 300E1, 300F2, 30103, 30115, 30128, 3013C, 30150, 30164, 30179, 3018F, 301A6, 301BD, 301D5, 301ED, 30206, 3021F, 30239, 30254, 30270, 3028C, 302A8, 302C5, 302E3, 30302, 30321, 30340, 30360, 30381, 303A3, 303C5, 303E8, 3040B, 3042F, 30453, 30478, 3049E, 304C4, 304EB, 30513, 3053B, 30564, 3058D, 305B7, 305E1, 3060D, 30638, 30665, 30692, 306BF, 306ED, 3071C, 3074C, 3077B, 307AC, 307DD, 3080F, 30841, 30874, 308A8, 308DC, 30911, 30946, 3097C, 309B2, 309EA, 30A21, 30A5A, 30A92, 30ACC, 30B06, 30B41, 30B7C, 30BB8, 30BF4, 30C31, 30C6F, 30CAD, 30CEC, 30D2B, 30D6B, 30DAC, 30DED, 30E2E, 30E71, 30EB4, 30EF7, 30F3B, 30F80, 30FC5, 3100B, 31051, 31098, 310DF, 31127, 31170, 311B9, 31203, 3124D, 31298, 312E4, 31330, 3137D, 313CA, 31418, 31466, 314B5, 31504, 31555, 315A5, 315F6, 31648, 3169A, 316ED, 31741, 31795, 317E9, 3183E, 31894, 318EA, 31941, 31999, 319F0, 31A49, 31AA2, 31AFC, 31B56, 31BB0, 31C0C, 31C67, 31CC4, 31D21, 31D7E, 31DDC, 31E3A, 31E99, 31EF9, 31F59, 31FBA, 3201B, 3207D, 320DF, 32142, 321A5, 32209, 3226E, 322D3, 32338, 3239E, 32405, 3246C, 324D4, 3253C, 325A4, 3260E, 32677, 326E2, 3274C, 327B8, 32824, 32890, 328FD, 3296A, 329D8, 32A46, 32AB5, 32B25, 32B95, 32C05, 32C76, 32CE8, 32D5A, 32DCC, 32E3F, 32EB3, 32F27, 32F9B, 33010, 33086, 330FC, 33172, 331E9, 33261, 332D9, 33352, 333CB, 33444, 334BE, 33539, 335B3, 3362F, 336AB, 33727, 337A4, 33822, 3389F, 3391E, 3399D, 33A1C, 33A9C, 33B1C, 33B9D, 33C1E, 33CA0, 33D22, 33DA4, 33E28, 33EAB, 33F2F, 33FB4, 34039, 340BE, 34144, 341CA, 34251, 342D8, 34360, 343E8, 34471, 344FA, 34583, 3460D, 34698, 34723, 347AE, 3483A, 348C6, 34953, 349E0, 34A6D, 34AFB, 34B89, 34C18, 34CA8, 34D37, 34DC7, 34E58, 34EE9, 34F7A, 3500C, 3509E, 35131, 351C4, 35258, 352EC, 35380, 35415, 354AA, 3553F, 355D6, 3566C, 35703, 3579A, 35832, 358CA, 35962, 359FB, 35A94, 35B2E, 35BC8, 35C62, 35CFD, 35D98, 35E34, 35ED0, 35F6C, 36009, 360A6, 36144, 361E2, 36280, 3631F, 363BE, 3645D, 364FD, 3659D, 3663E, 366DF, 36780, 36822, 368C4, 36966, 36A09, 36AAC, 36B50, 36BF4, 36C98, 36D3C, 36DE1, 36E87, 36F2C, 36FD2, 37078, 3711F, 371C6, 3726D, 37315, 373BD, 37466, 3750E, 375B7, 37661, 3770A, 377B4, 3785F, 37909, 379B4, 37A60, 37B0B, 37BB7, 37C64, 37D10, 37DBD, 37E6B, 37F18, 37FC6, 38074, 38123, 381D1, 38281, 38330, 383E0, 38490, 38540, 385F0, 386A1, 38753, 38804, 388B6, 38968, 38A1A, 38ACD, 38B80, 38C33, 38CE6, 38D9A, 38E4E, 38F02, 38FB7, 3906C, 39121, 391D6, 3928C, 39342, 393F8, 394AE, 39565, 3961C, 396D3, 3978A, 39842, 398FA, 399B2, 39A6B, 39B23, 39BDC, 39C95, 39D4F, 39E08, 39EC2, 39F7C, 3A037, 3A0F1, 3A1AC, 3A267, 3A322, 3A3DE, 3A49A, 3A556, 3A612, 3A6CE, 3A78B, 3A847, 3A904, 3A9C2, 3AA7F, 3AB3D, 3ABFA, 3ACB8, 3AD77, 3AE35, 3AEF4, 3AFB3, 3B072, 3B131, 3B1F0, 3B2B0, 3B370, 3B42F, 3B4F0, 3B5B0, 3B670, 3B731, 3B7F2, 3B8B3, 3B974, 3BA35, 3BAF7, 3BBB9, 3BC7B, 3BD3D, 3BDFF, 3BEC1, 3BF84, 3C046, 3C109, 3C1CC, 3C28F, 3C352, 3C416, 3C4D9, 3C59D, 3C661, 3C725, 3C7E9, 3C8AD, 3C972, 3CA36, 3CAFB, 3CBC0, 3CC84, 3CD49, 3CE0F, 3CED4, 3CF99, 3D05F, 3D124, 3D1EA, 3D2B0, 3D376, 3D43C, 3D502, 3D5C8, 3D68F, 3D755, 3D81C, 3D8E2, 3D9A9, 3DA70, 3DB37, 3DBFE, 3DCC5, 3DD8C, 3DE53, 3DF1B, 3DFE2, 3E0AA, 3E171, 3E239, 3E301, 3E3C8, 3E490, 3E558, 3E620, 3E6E8, 3E7B0, 3E879, 3E941, 3EA09, 3EAD2, 3EB9A, 3EC62, 3ED2B, 3EDF3, 3EEBC, 3EF85, 3F04D, 3F116, 3F1DF, 3F2A7, 3F370, 3F439, 3F502, 3F5CB, 3F694, 3F75D, 3F826, 3F8EF, 3F9B8, 3FA81, 3FB4A, 3FC13, 3FCDC, 3FDA5, 3FE6E, 3FF37;',
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
    'CSET component_name = bmg_33_19a1753766f111f5',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '8c048f8adcde4519705fbea5e28a4017',
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
      'core_name0' => 'bmg_33_19a1753766f111f5',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '012f03e3db46f8743fa02fcab523c8ba',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((36 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((36 - 1) downto 0);
    q : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_0c0a0420a6',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '6a3689a4c8f15b422361e49a1439f83d',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
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
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = cntr_11_0_2373afd2271385cb',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'cfce440822dfb3d769b92b1f69f0f552',
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
      'core_name0' => 'cntr_11_0_2373afd2271385cb',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
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
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 13',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_fbf94a08f4aecfc8',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '14769dd93ba58ad4a952d7bded7cd52b',
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
      'core_name0' => 'cntr_11_0_fbf94a08f4aecfc8',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a930b2906bf584ec786ae08f1286a23a',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((4 - 1) downto 0);
  signal d0_1_24: std_logic_vector((9 - 1) downto 0);
  signal d1_1_27: std_logic_vector((9 - 1) downto 0);
  signal d2_1_30: std_logic_vector((9 - 1) downto 0);
  signal d3_1_33: std_logic_vector((9 - 1) downto 0);
  signal d4_1_36: std_logic_vector((9 - 1) downto 0);
  signal d5_1_39: std_logic_vector((9 - 1) downto 0);
  signal d6_1_42: std_logic_vector((9 - 1) downto 0);
  signal d7_1_45: std_logic_vector((9 - 1) downto 0);
  signal d8_1_48: std_logic_vector((9 - 1) downto 0);
  type array_type_pipe_30_22 is array (0 to (1 - 1)) of std_logic_vector((9 - 1) downto 0);
  signal pipe_30_22: array_type_pipe_30_22 := (
    0 => "000000000");
  signal pipe_30_22_front_din: std_logic_vector((9 - 1) downto 0);
  signal pipe_30_22_back: std_logic_vector((9 - 1) downto 0);
  signal pipe_30_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((9 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  d3_1_33 <= d3;
  d4_1_36 <= d4;
  d5_1_39 <= d5;
  d6_1_42 <= d6;
  d7_1_45 <= d7;
  d8_1_48 <= d8;
  pipe_30_22_back <= pipe_30_22(0);
  proc_pipe_30_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_30_22_push_front_pop_back_en = \'1\')) then
        pipe_30_22(0) <= pipe_30_22_front_din;
      end if;
    end if;
  end process proc_pipe_30_22;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, d3_1_33, d4_1_36, d5_1_39, d6_1_42, d7_1_45, d8_1_48, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0000" =>
        unregy_join_6_1 <= d0_1_24;
      when "0001" =>
        unregy_join_6_1 <= d1_1_27;
      when "0010" =>
        unregy_join_6_1 <= d2_1_30;
      when "0011" =>
        unregy_join_6_1 <= d3_1_33;
      when "0100" =>
        unregy_join_6_1 <= d4_1_36;
      when "0101" =>
        unregy_join_6_1 <= d5_1_39;
      when "0110" =>
        unregy_join_6_1 <= d6_1_42;
      when "0111" =>
        unregy_join_6_1 <= d7_1_45;
      when others =>
        unregy_join_6_1 <= d8_1_48;
    end case;
  end process proc_switch_6_1;
  pipe_30_22_front_din <= unregy_join_6_1;
  pipe_30_22_push_front_pop_back_en <= \'1\';
  y <= pipe_30_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((4 - 1) downto 0);
    d0 : in std_logic_vector((9 - 1) downto 0);
    d1 : in std_logic_vector((9 - 1) downto 0);
    d2 : in std_logic_vector((9 - 1) downto 0);
    d3 : in std_logic_vector((9 - 1) downto 0);
    d4 : in std_logic_vector((9 - 1) downto 0);
    d5 : in std_logic_vector((9 - 1) downto 0);
    d6 : in std_logic_vector((9 - 1) downto 0);
    d7 : in std_logic_vector((9 - 1) downto 0);
    d8 : in std_logic_vector((9 - 1) downto 0);
    y : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_bcb919797f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '0f8e1d87dea589376f436456f10f3dd8',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '075fb37cc0f8dfe6fe73112d0200f6c3',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
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
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_33_40ea3f78329f7180',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e0992c2913c6141e4b423db10be05c3a',
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
      'core_name0' => 'bmg_33_40ea3f78329f7180',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '1043e5b201d22ab5dce810911a4d839a',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '58e32801e6373b55e83752d535c3fb5d',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f19960dcb3e20f4bdcd51d94b706344e',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '1b2d329f50ea69bbfcd29bcf98530d61',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '08392012b8fb0e52ec5e1b95be659d85',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '82942cefa26e43351697fc0ba9a20498',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '0c0432124ffad988191215ddeeec7dc6',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a60bb60bc81506f28ea2a324d1eb5fe0',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '120e73d6c29142c7689467364e0ed3f2',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd823588562f3cd5a1e0f46c2dd77fce3',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((9 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((9 - 1) downto 0);
    q : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_a99984b20e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '0c8cef13478c9a4e42db933377adc5f8',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'dcc705a311ee22eb2891fccf674079db',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Distributed_Memory_Generator virtex5 Xilinx,_Inc. 4.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ce_overrides = sync_controls_overrides_ce',
    'CSET coefficient_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 2, 4, 6, 8, A, C, E, 10, 12, 14, 16, 18, 1A, 1C, 1E, 20, 22, 24, 26, 28, 2A, 2C, 2E, 30, 32, 34, 36, 38, 3A, 3C, 3E, 40, 42, 44, 46, 48, 4A, 4C, 4E, 50, 52, 54, 56, 58, 5A, 5C, 5E, 60, 62, 64, 66, 68, 6A, 6C, 6E, 70, 72, 74, 76, 78, 7A, 7C, 7E, 80, 82, 84, 86, 88, 8A, 8C, 8E, 90, 92, 94, 96, 98, 9A, 9C, 9E, A0, A2, A4, A6, A8, AA, AC, AE, B0, B2, B4, B6, B8, BA, BC, BE, C0, C2, C4, C6, C8, CA, CC, CE, D0, D2, D4, D6, D8, DA, DC, DE, E0, E2, E4, E6, E8, EA, EC, EE, F0, F2, F4, F6, F8, FA, FC, FE, 100, 102, 104, 106, 108, 10A, 10C, 10E, 110, 112, 114, 116, 118, 11A, 11C, 11E, 120, 122, 124, 126, 128, 12A, 12C, 12E, 130, 132, 134, 136, 138, 13A, 13C, 13E, 140, 142, 144, 146, 148, 14A, 14C, 14E, 150, 152, 154, 156, 158, 15A, 15C, 15E, 160, 162, 164, 166, 168, 16A, 16C, 16E, 170, 172, 174, 176, 178, 17A, 17C, 17E, 180, 182, 184, 186, 188, 18A, 18C, 18E, 190, 192, 194, 196, 198, 19A, 19C, 19E, 1A0, 1A2, 1A4, 1A6, 1A8, 1AA, 1AC, 1AE, 1B0, 1B2, 1B4, 1B6, 1B8, 1BA, 1BC, 1BE, 1C0, 1C2, 1C4, 1C6, 1C8, 1CA, 1CC, 1CE, 1D0, 1D2, 1D4, 1D6, 1D8, 1DA, 1DC, 1DE, 1E0, 1E2, 1E4, 1E6, 1E8, 1EA, 1EC, 1EE, 1F0, 1F2, 1F4, 1F6, 1F8, 1FA, 1FC, 1FE, 1, 3, 5, 7, 9, B, D, F, 11, 13, 15, 17, 19, 1B, 1D, 1F, 21, 23, 25, 27, 29, 2B, 2D, 2F, 31, 33, 35, 37, 39, 3B, 3D, 3F, 41, 43, 45, 47, 49, 4B, 4D, 4F, 51, 53, 55, 57, 59, 5B, 5D, 5F, 61, 63, 65, 67, 69, 6B, 6D, 6F, 71, 73, 75, 77, 79, 7B, 7D, 7F, 81, 83, 85, 87, 89, 8B, 8D, 8F, 91, 93, 95, 97, 99, 9B, 9D, 9F, A1, A3, A5, A7, A9, AB, AD, AF, B1, B3, B5, B7, B9, BB, BD, BF, C1, C3, C5, C7, C9, CB, CD, CF, D1, D3, D5, D7, D9, DB, DD, DF, E1, E3, E5, E7, E9, EB, ED, EF, F1, F3, F5, F7, F9, FB, FD, FF, 101, 103, 105, 107, 109, 10B, 10D, 10F, 111, 113, 115, 117, 119, 11B, 11D, 11F, 121, 123, 125, 127, 129, 12B, 12D, 12F, 131, 133, 135, 137, 139, 13B, 13D, 13F, 141, 143, 145, 147, 149, 14B, 14D, 14F, 151, 153, 155, 157, 159, 15B, 15D, 15F, 161, 163, 165, 167, 169, 16B, 16D, 16F, 171, 173, 175, 177, 179, 17B, 17D, 17F, 181, 183, 185, 187, 189, 18B, 18D, 18F, 191, 193, 195, 197, 199, 19B, 19D, 19F, 1A1, 1A3, 1A5, 1A7, 1A9, 1AB, 1AD, 1AF, 1B1, 1B3, 1B5, 1B7, 1B9, 1BB, 1BD, 1BF, 1C1, 1C3, 1C5, 1C7, 1C9, 1CB, 1CD, 1CF, 1D1, 1D3, 1D5, 1D7, 1D9, 1DB, 1DD, 1DF, 1E1, 1E3, 1E5, 1E7, 1E9, 1EB, 1ED, 1EF, 1F1, 1F3, 1F5, 1F7, 1F9, 1FB, 1FD, 1FF;',
    '
]',
    'CSET common_output_ce = false',
    'CSET common_output_clk = false',
    'CSET data_width = 9',
    'CSET default_data = 0',
    'CSET default_data_radix = 16',
    'CSET depth = 512',
    'CSET dual_port_address = non_registered',
    'CSET dual_port_output_clock_enable = false',
    'CSET input_clock_enable = false',
    'CSET input_options = non_registered',
    'CSET memory_type = rom',
    'CSET output_options = registered',
    'CSET qualify_we_with_i_ce = false',
    'CSET reset_qdpo = false',
    'CSET reset_qspo = false',
    'CSET single_port_output_clock_enable = true',
    'CSET sync_reset_qdpo = false',
    'CSET sync_reset_qspo = false',
    'CSET component_name = dmg_43_8595496b43aef271',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '04eca7dfe9c5598328db664b0fbda58d',
    'sourceFile' => 'hdl/xlsprom_dist.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out',
      'core_name0' => 'dmg_43_8595496b43aef271',
      'entity_name.0' => 'xlsprom_dist',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'aa270aecf277b38fd51dbea325f4f597',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal rst_1_40: boolean;
  signal count_reg_20_23: unsigned((1 - 1) downto 0) := "0";
  signal count_reg_20_23_rst: std_logic;
  signal bool_44_4: boolean;
  signal count_reg_join_44_1: signed((3 - 1) downto 0);
  signal count_reg_join_44_1_rst: std_logic;
  signal rst_limit_join_44_1: boolean;
begin
  rst_1_40 <= ((rst) = "1");
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (count_reg_20_23_rst = \'1\')) then
        count_reg_20_23 <= "0";
      elsif (ce = \'1\') then 
        count_reg_20_23 <= count_reg_20_23 - std_logic_vector_to_unsigned("1");
      end if;
    end if;
  end process proc_count_reg_20_23;
  bool_44_4 <= rst_1_40 or false;
  proc_if_44_1: process (bool_44_4, count_reg_20_23)
  is
  begin
    if bool_44_4 then
      count_reg_join_44_1_rst <= \'1\';
    else 
      count_reg_join_44_1_rst <= \'0\';
    end if;
    if bool_44_4 then
      rst_limit_join_44_1 <= false;
    else 
      rst_limit_join_44_1 <= false;
    end if;
  end process proc_if_44_1;
  count_reg_20_23_rst <= count_reg_join_44_1_rst;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end',
      'crippled_entity' => 'is
  port (
    rst : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'counter_9f61b180a8',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '917af968d953856628b153823f3e3142',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT RAM-based_Shift_Register virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET AsyncInitRadix = 2',
    'CSET AsyncInitVal = 00000000000000000000000000000000',
    'CSET CE = true',
    'CSET CEPriority = Sync_Overrides_CE',
    'CSET DefaultData = 00000000000000000000000000000000',
    'CSET DefaultDataRadix = 2',
    'CSET Depth = 16',
    'CSET MemInitFile = [
',
    '  MEMORY_INITIALIZATION_RADIX = 2;',
    '  MEMORY_INITIALIZATION_VECTOR = 00000000000000000000000000000000, 00000000000000000000000000000000, 00000000000000000000000000000000, 00000000000000000000000000000000, 00000000000000000000000000000000, 00000000000000000000000000000000, 00000000000000000000000000000000, 00000000000000000000000000000000, 00000000000000000000000000000000, 00000000000000000000000000000000, 00000000000000000000000000000000, 00000000000000000000000000000000, 00000000000000000000000000000000, 00000000000000000000000000000000, 00000000000000000000000000000000, 00000000000000000000000000000000;',
    '
]',
    'CSET OptGoal = Resources',
    'CSET ReadMifFile = true',
    'CSET RegLastBit = false',
    'CSET SCLR = false',
    'CSET SINIT = false',
    'CSET SSET = false',
    'CSET ShiftRegType = Variable_Length_Lossless',
    'CSET SyncCtrlPriority = Reset_Overrides_Set',
    'CSET SyncInitRadix = 2',
    'CSET SyncInitVal = 00000000000000000000000000000000',
    'CSET Width = 32',
    'CSET component_name = asr_11_0_ba3df061fbed523e',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '2256821357b305d560bb8f590982e165',
    'sourceFile' => 'hdl/xladdrsr.vhd',
    'templateKeyValues' => {
      'core_instance_text' => '',
      'core_name0' => 'asr_11_0_ba3df061fbed523e',
      'entity_name.0' => 'xladdrsr',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '33e67768d54a4135954a81a2ff5ba934',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  signal d2_1_30: std_logic_vector((32 - 1) downto 0);
  signal d3_1_33: std_logic_vector((32 - 1) downto 0);
  type array_type_pipe_20_22 is array (0 to (1 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal pipe_20_22: array_type_pipe_20_22 := (
    0 => "00000000000000000000000000000000");
  signal pipe_20_22_front_din: std_logic_vector((32 - 1) downto 0);
  signal pipe_20_22_back: std_logic_vector((32 - 1) downto 0);
  signal pipe_20_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((32 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  d3_1_33 <= d3;
  pipe_20_22_back <= pipe_20_22(0);
  proc_pipe_20_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_20_22_push_front_pop_back_en = \'1\')) then
        pipe_20_22(0) <= pipe_20_22_front_din;
      end if;
    end if;
  end process proc_pipe_20_22;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, d3_1_33, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= d0_1_24;
      when "01" =>
        unregy_join_6_1 <= d1_1_27;
      when "10" =>
        unregy_join_6_1 <= d2_1_30;
      when others =>
        unregy_join_6_1 <= d3_1_33;
    end case;
  end process proc_switch_6_1;
  pipe_20_22_front_din <= unregy_join_6_1;
  pipe_20_22_push_front_pop_back_en <= \'1\';
  y <= pipe_20_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    d2 : in std_logic_vector((32 - 1) downto 0);
    d3 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_c7fc178374',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'cb69e74ee23008e1773e1c5ad31d9a6d',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal insel_1_52: unsigned((32 - 1) downto 0);
  signal slice_5_33: unsigned((2 - 1) downto 0);
  signal fullinsel0_5_1_concat: unsigned((2 - 1) downto 0);
  signal slice_6_33: unsigned((2 - 1) downto 0);
  signal fullinsel1_6_1_concat: unsigned((2 - 1) downto 0);
  signal slice_7_33: unsigned((2 - 1) downto 0);
  signal fullinsel2_7_1_concat: unsigned((2 - 1) downto 0);
  signal slice_8_33: unsigned((2 - 1) downto 0);
  signal fullinsel3_8_1_concat: unsigned((2 - 1) downto 0);
begin
  insel_1_52 <= std_logic_vector_to_unsigned(insel);
  slice_5_33 <= u2u_slice(insel_1_52, 1, 0);
  fullinsel0_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_5_33));
  slice_6_33 <= u2u_slice(insel_1_52, 5, 4);
  fullinsel1_6_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_6_33));
  slice_7_33 <= u2u_slice(insel_1_52, 9, 8);
  fullinsel2_7_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_7_33));
  slice_8_33 <= u2u_slice(insel_1_52, 13, 12);
  fullinsel3_8_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_8_33));
  insel0 <= unsigned_to_std_logic_vector(fullinsel0_5_1_concat);
  insel1 <= unsigned_to_std_logic_vector(fullinsel1_6_1_concat);
  insel2 <= unsigned_to_std_logic_vector(fullinsel2_7_1_concat);
  insel3 <= unsigned_to_std_logic_vector(fullinsel3_8_1_concat);
end',
      'crippled_entity' => 'is
  port (
    insel : in std_logic_vector((32 - 1) downto 0);
    insel0 : out std_logic_vector((2 - 1) downto 0);
    insel1 : out std_logic_vector((2 - 1) downto 0);
    insel2 : out std_logic_vector((2 - 1) downto 0);
    insel3 : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'bitbasher_0b7a692256',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'bb755dd1ddbae592531eede5c2b9a618',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0111111111111111111111110";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_70b906a85f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 25',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_55d5b22cdc7ae682',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a31ca0e8b33018564e9e22c1b92b3ad7',
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
      'core_name0' => 'cntr_11_0_55d5b22cdc7ae682',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c0627b5b9ccbca4b76a4fbb626c61fd2',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27 or d2_1_30;
  y <= std_logic_to_vector(fully_2_1_bit);
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_6cb8f0ce02',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '8ee0e1cb2f90b51581e14d4cf27b04d2',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((25 - 1) downto 0);
  signal b_1_34: unsigned((25 - 1) downto 0);
  signal result_20_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_20_3_rel <= a_1_31 <= b_1_34;
  op <= boolean_to_vector(result_20_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((25 - 1) downto 0);
    b : in std_logic_vector((25 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_e79d89798a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
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
  $instrs = [
    'SELECT Adder_Subtracter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = addsb_11_0_86aee2816a6af1ec',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '4a111b8d251092d36fb0b673bf56fed5',
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
      'core_name0' => 'addsb_11_0_86aee2816a6af1ec',
      'entity_name.0' => 'xladdsub',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = cntr_11_0_717486a23436c11d',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'bb61ca70f1cbc14eb59fa7dae865c17b',
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
      'core_name0' => 'cntr_11_0_717486a23436c11d',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = bmg_33_1325b476538c741b',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f6a744c1349c4bd380e18f518a631f07',
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
      'core_name0' => 'bmg_33_1325b476538c741b',
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
  $instrs = {
    'entity_declaration_hash' => 'b284e244e485fd77e1a85ba05bb92666',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c2ff2c0b5afd9a279f1ee71835e0c6d1',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = bmg_33_d0019849f5e57d19',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '454ad5195ecff41a4e1ac1a6933a6285',
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
      'core_name0' => 'bmg_33_d0019849f5e57d19',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = bmg_33_15bd501b7a688725',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '6bc8aea93779d2d409a72131b0a80eb0',
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
      'core_name0' => 'bmg_33_15bd501b7a688725',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = bmg_33_b6ba55dfff01bfa7',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '0821d7c5e192e16ff1307d3ea512327a',
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
      'core_name0' => 'bmg_33_b6ba55dfff01bfa7',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = bmg_33_5dc95f5c2d6856d3',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a9d22c11ea518b19f7c4c2733360e493',
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
      'core_name0' => 'bmg_33_5dc95f5c2d6856d3',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '4008c6f49dd1bb2d587423bc005d7b54',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '318ca2555e00c36f456f01afe2e1e488',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_22: signed((8 - 1) downto 0);
  signal b_1_25: signed((18 - 1) downto 0);
  type array_type_op_mem_65_20 is array (0 to (2 - 1)) of signed((26 - 1) downto 0);
  signal op_mem_65_20: array_type_op_mem_65_20 := (
    "00000000000000000000000000",
    "00000000000000000000000000");
  signal op_mem_65_20_front_din: signed((26 - 1) downto 0);
  signal op_mem_65_20_back: signed((26 - 1) downto 0);
  signal op_mem_65_20_push_front_pop_back_en: std_logic;
  signal mult_46_56: signed((26 - 1) downto 0);
begin
  a_1_22 <= std_logic_vector_to_signed(a);
  b_1_25 <= std_logic_vector_to_signed(b);
  op_mem_65_20_back <= op_mem_65_20(1);
  proc_op_mem_65_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_65_20_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
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
      'entity_name' => 'mult_124cfbcd07',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a17ef80bcf640d7cbdf33c7a06a309de',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'afd1286a66d434b613af02f05ec076ea',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '970cae03d7f91114bd4f8768814bbdd1',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '02b5b33d0fc2df1ec5a545d9f21fac28',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = bmg_33_2619e307728164ad',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '062b54d05d07847783035f0e698449b2',
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
      'core_name0' => 'bmg_33_2619e307728164ad',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = bmg_33_00320b2c329850d2',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '334501edf762d4e70cf4c3e4626ac59d',
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
      'core_name0' => 'bmg_33_00320b2c329850d2',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = bmg_33_9ce1016fece5c206',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '2e2a652d2f1668a5f2174edfdee6866c',
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
      'core_name0' => 'bmg_33_9ce1016fece5c206',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = bmg_33_6b8ccac7273df3c7',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd13e9c929e45f4ef4426fcaae363451b',
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
      'core_name0' => 'bmg_33_6b8ccac7273df3c7',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = bmg_33_77e902a23549a5af',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e1d6067d47c0231eaa1af32865eaf35d',
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
      'core_name0' => 'bmg_33_77e902a23549a5af',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = bmg_33_3536f099f5b470e5',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f3a0bd5fadc3ffc1d7e81dcf9c9962ff',
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
      'core_name0' => 'bmg_33_3536f099f5b470e5',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = bmg_33_27ce3fa8185857c8',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a91fbf40f76a328f63941c2bdc975790',
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
      'core_name0' => 'bmg_33_27ce3fa8185857c8',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = bmg_33_69cf3e734d1f8889',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '9f5c9343b547d9a17139cff44e16701b',
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
      'core_name0' => 'bmg_33_69cf3e734d1f8889',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = bmg_33_26dc396f9efdb19d',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e3d0d195c08804b90790fd5f01ea9c7b',
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
      'core_name0' => 'bmg_33_26dc396f9efdb19d',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = bmg_33_1e456f34aa244a02',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '2b40028cca768977df6b9d938c14973a',
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
      'core_name0' => 'bmg_33_1e456f34aa244a02',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = bmg_33_d4c4723e07af3139',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '233b59bd8debe22dcf0034f22cf50408',
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
      'core_name0' => 'bmg_33_d4c4723e07af3139',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
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
    'CSET component_name = bmg_33_99d2859e4f5c4884',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '52dc8ae8bc0e47751cba3a1c32212be8',
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
      'core_name0' => 'bmg_33_99d2859e4f5c4884',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '175fccd26143c66f283632b17dd5617a',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert_pipeline.vhd',
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
    'entity_declaration_hash' => '5923e54640bdead338d33f20e5abef28',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "1000000000000000000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_2ae71e3b73',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c8162d745bc1be314673723d54ffe85a',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((25 - 1) downto 0);
  signal b_1_34: unsigned((25 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((25 - 1) downto 0);
    b : in std_logic_vector((25 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_487ac75be9',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b2fd5c22ea8623898e33a13a174fd4c9',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlpassthrough.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'bc855cf850e24f08b6ca9bc8db719745',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlpassthrough.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '87c3789ebd058bb7295200a2a378e770',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000000000000000000000000000000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_bbd7b31fe5',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '34cc51e5f3f81df7eb608ecf2efbdf01',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((10 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((10 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "0000000000");
  signal op_mem_20_24_front_din: std_logic_vector((10 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((10 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((10 - 1) downto 0);
    q : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_cf4f99539f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '98f8e733a1dbe97485c15546524101b9',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((10 - 1) downto 0);
  signal b_1_34: unsigned((10 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    0 => false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  op_mem_32_22_back <= op_mem_32_22(0);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_32_22_push_front_pop_back_en = \'1\')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  result_14_3_rel <= a_1_31 /= b_1_34;
  op_mem_32_22_front_din <= result_14_3_rel;
  op_mem_32_22_push_front_pop_back_en <= \'1\';
  op <= boolean_to_vector(op_mem_32_22_back);
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
      'entity_name' => 'relational_1a5580632c',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 3.3',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = true',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Use_ENB_Pin',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = True_Dual_Port_RAM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 36',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = true',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 1024',
    'CSET write_width_a = 18',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_33_7b1af72e0df0a688',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '2c6480400019815812d57d38dec1defd',
    'sourceFile' => 'hdl/xldpram.vhd',
    'templateKeyValues' => {
      'core_component_def' => 'addra: in std_logic_vector(c_address_width_a - 1 downto 0);
      addrb: in std_logic_vector(c_address_width_b - 1 downto 0);
      dina: in std_logic_vector(c_width_a - 1 downto 0);
      dinb: in std_logic_vector(c_width_b - 1 downto 0);
      clka: in std_logic;
      clkb: in std_logic;
      wea: in std_logic_vector(0 downto 0);
      web: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      enb: in std_logic;
      douta: out std_logic_vector(c_width_a - 1 downto 0);
      doutb: out std_logic_vector(c_width_b - 1 downto 0)',
      'core_instance_text' => 'addra => core_addra,
        clka => a_clk,
        addrb => core_addrb,
        clkb => b_clk,
        dina => core_dina,
        wea(0) => core_wea,
        dinb => core_dinb,
        web(0) => core_web,
        ena => core_a_ce,
        enb => core_b_ce,
        douta => core_douta,
        doutb => core_doutb',
      'core_name0' => 'bmg_33_7b1af72e0df0a688',
      'entity_name.0' => 'xldpram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '29e7c28ecd0eafe18c83e5c1ca2d0df4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: boolean;
  signal in1_1_27: boolean;
  signal y_2_1_concat: unsigned((2 - 1) downto 0);
begin
  in0_1_23 <= ((in0) = "1");
  in1_1_27 <= ((in1) = "1");
  y_2_1_concat <= std_logic_vector_to_unsigned(boolean_to_vector(in0_1_23) & boolean_to_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((1 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_32afb77cd2',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '65dd2180a0e65eb6d04c439a895153ec',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "011111111111111111";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_e3cd42f5d3',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ee2981c28faeb43b08fa0a8111550343',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "100000000000000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_571125472d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '067221da3d933378cedcde033d133650',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '18336ef7eeca81d8b9a074c332d802e1',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal d3_1_33: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (2 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    \'0\',
    \'0\');
  signal latency_pipe_5_26_front_din: std_logic;
  signal latency_pipe_5_26_back: std_logic;
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  d3_1_33 <= d3(0);
  latency_pipe_5_26_back <= latency_pipe_5_26(1);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (latency_pipe_5_26_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          latency_pipe_5_26(i) <= latency_pipe_5_26(i-1);
        end loop;
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= \'1\';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_127a315f20',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Multiplier virtex5 Xilinx,_Inc. 11.2',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ccmimp = Distributed_Memory',
    'CSET clockenable = true',
    'CSET constvalue = 129',
    'CSET internaluser = 0',
    'CSET multiplier_construction = Use_Mults',
    'CSET multtype = Parallel_Multiplier',
    'CSET optgoal = Speed',
    'CSET outputwidthhigh = 35',
    'CSET outputwidthlow = 0',
    'CSET pipestages = 3',
    'CSET portatype = Signed',
    'CSET portawidth = 18',
    'CSET portbtype = Unsigned',
    'CSET portbwidth = 18',
    'CSET roundpoint = 0',
    'CSET sclrcepriority = CE_Overrides_SCLR',
    'CSET syncclear = true',
    'CSET use_custom_output_width = true',
    'CSET userounding = false',
    'CSET zerodetect = false',
    'CSET component_name = mlt_11_2_70b0fe6ba250d126',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '15290bfb50edcffe958709b6a0224ea7',
    'sourceFile' => 'hdl/xlmult.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)',
      'core_instance_text' => '        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b',
      'core_name0' => 'mlt_11_2_70b0fe6ba250d126',
      'entity_name.0' => 'xlmult',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '0ee696d7cb0612b8065367b14bdd3e67',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((18 - 1) downto 0);
  signal d1_1_27: std_logic_vector((18 - 1) downto 0);
  signal d2_1_30: std_logic_vector((18 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((18 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= d0_1_24;
      when "01" =>
        unregy_join_6_1 <= d1_1_27;
      when others =>
        unregy_join_6_1 <= d2_1_30;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((18 - 1) downto 0);
    d1 : in std_logic_vector((18 - 1) downto 0);
    d2 : in std_logic_vector((18 - 1) downto 0);
    y : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_acc4af9f66',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e0a39f5413bb4c60b36863e1c6b4ac58',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: signed((36 - 1) downto 0);
  signal b_1_34: signed((18 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (2 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    false,
    false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal cast_18_16: signed((36 - 1) downto 0);
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  op_mem_32_22_back <= op_mem_32_22(1);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_32_22_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          op_mem_32_22(i) <= op_mem_32_22(i-1);
        end loop;
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  cast_18_16 <= s2s_cast(b_1_34, 17, 36, 20);
  result_18_3_rel <= a_1_31 > cast_18_16;
  op_mem_32_22_front_din <= result_18_3_rel;
  op_mem_32_22_push_front_pop_back_en <= \'1\';
  op <= boolean_to_vector(op_mem_32_22_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((36 - 1) downto 0);
    b : in std_logic_vector((18 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_7f03212d2d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '007968f4171dca3d10e18b919d046b0c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: signed((36 - 1) downto 0);
  signal b_1_34: signed((18 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (2 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    false,
    false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal cast_16_16: signed((36 - 1) downto 0);
  signal result_16_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  op_mem_32_22_back <= op_mem_32_22(1);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_32_22_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          op_mem_32_22(i) <= op_mem_32_22(i-1);
        end loop;
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  cast_16_16 <= s2s_cast(b_1_34, 17, 36, 20);
  result_16_3_rel <= a_1_31 < cast_16_16;
  op_mem_32_22_front_din <= result_16_3_rel;
  op_mem_32_22_push_front_pop_back_en <= \'1\';
  op <= boolean_to_vector(op_mem_32_22_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((36 - 1) downto 0);
    b : in std_logic_vector((18 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_8a86aab7af',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '1c5d997b90331089f612bd4d0bfded6a',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '5f3750d53b4428fc0644ccfb6991d343',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((36 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((36 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "000000000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((36 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((36 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((36 - 1) downto 0);
    q : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_e4b9fcaf02',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '283c3d803a19d4bd3857d3e6d5321182',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((18 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((18 - 1) downto 0);
    q : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_b6092ad150',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c773e012b83659c455a986d55721d8ac',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c519b77ac4ab964d92dc61e7f55befb1',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '90c4aabfe14095dcfb9812719277ad4b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal bit_2_26: std_logic;
  signal fully_2_1_bitnot: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  bit_2_26 <= d0_1_24 or d1_1_27;
  fully_2_1_bitnot <= not bit_2_26;
  y <= std_logic_to_vector(fully_2_1_bitnot);
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
      'entity_name' => 'logical_dfe2dded7f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '97c0192b1e3cb453555b02f5dadc8792',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7133f4e87e1ad3afdfdf2695cd541c05',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal seed_1_48: unsigned((32 - 1) downto 0);
  signal slice_5_58: unsigned((8 - 1) downto 0);
  signal slice_5_87: unsigned((1 - 1) downto 0);
  signal slice_5_106: unsigned((1 - 1) downto 0);
  signal slice_5_125: unsigned((1 - 1) downto 0);
  signal slice_5_144: unsigned((1 - 1) downto 0);
  signal slice_5_163: unsigned((1 - 1) downto 0);
  signal slice_5_182: unsigned((1 - 1) downto 0);
  signal slice_5_201: unsigned((1 - 1) downto 0);
  signal slice_5_220: unsigned((1 - 1) downto 0);
  signal concat_5_78: unsigned((8 - 1) downto 0);
  signal fullseed0_5_1_concat: unsigned((32 - 1) downto 0);
  signal slice_6_58: unsigned((8 - 1) downto 0);
  signal slice_6_88: unsigned((1 - 1) downto 0);
  signal slice_6_107: unsigned((1 - 1) downto 0);
  signal slice_6_126: unsigned((1 - 1) downto 0);
  signal slice_6_147: unsigned((1 - 1) downto 0);
  signal slice_6_168: unsigned((1 - 1) downto 0);
  signal slice_6_189: unsigned((1 - 1) downto 0);
  signal slice_6_210: unsigned((1 - 1) downto 0);
  signal slice_6_231: unsigned((1 - 1) downto 0);
  signal concat_6_79: unsigned((8 - 1) downto 0);
  signal fullseed1_6_1_concat: unsigned((32 - 1) downto 0);
  signal slice_7_58: unsigned((8 - 1) downto 0);
  signal slice_7_89: unsigned((1 - 1) downto 0);
  signal slice_7_110: unsigned((1 - 1) downto 0);
  signal slice_7_131: unsigned((1 - 1) downto 0);
  signal slice_7_152: unsigned((1 - 1) downto 0);
  signal slice_7_173: unsigned((1 - 1) downto 0);
  signal slice_7_194: unsigned((1 - 1) downto 0);
  signal slice_7_215: unsigned((1 - 1) downto 0);
  signal slice_7_236: unsigned((1 - 1) downto 0);
  signal concat_7_80: unsigned((8 - 1) downto 0);
  signal fullseed2_7_1_concat: unsigned((32 - 1) downto 0);
  signal slice_8_58: unsigned((8 - 1) downto 0);
  signal slice_8_89: unsigned((1 - 1) downto 0);
  signal slice_8_110: unsigned((1 - 1) downto 0);
  signal slice_8_131: unsigned((1 - 1) downto 0);
  signal slice_8_152: unsigned((1 - 1) downto 0);
  signal slice_8_173: unsigned((1 - 1) downto 0);
  signal slice_8_194: unsigned((1 - 1) downto 0);
  signal slice_8_215: unsigned((1 - 1) downto 0);
  signal slice_8_236: unsigned((1 - 1) downto 0);
  signal concat_8_80: unsigned((8 - 1) downto 0);
  signal fullseed3_8_1_concat: unsigned((32 - 1) downto 0);
begin
  seed_1_48 <= std_logic_vector_to_unsigned(seed);
  slice_5_58 <= u2u_slice(seed_1_48, 7, 0);
  slice_5_87 <= u2u_slice(seed_1_48, 0, 0);
  slice_5_106 <= u2u_slice(seed_1_48, 1, 1);
  slice_5_125 <= u2u_slice(seed_1_48, 2, 2);
  slice_5_144 <= u2u_slice(seed_1_48, 3, 3);
  slice_5_163 <= u2u_slice(seed_1_48, 4, 4);
  slice_5_182 <= u2u_slice(seed_1_48, 5, 5);
  slice_5_201 <= u2u_slice(seed_1_48, 6, 6);
  slice_5_220 <= u2u_slice(seed_1_48, 7, 7);
  concat_5_78 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_5_87) & unsigned_to_std_logic_vector(slice_5_106) & unsigned_to_std_logic_vector(slice_5_125) & unsigned_to_std_logic_vector(slice_5_144) & unsigned_to_std_logic_vector(slice_5_163) & unsigned_to_std_logic_vector(slice_5_182) & unsigned_to_std_logic_vector(slice_5_201) & unsigned_to_std_logic_vector(slice_5_220));
  fullseed0_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("01011100")) & unsigned_to_std_logic_vector(slice_5_58) & unsigned_to_std_logic_vector(concat_5_78) & unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("10100011")));
  slice_6_58 <= u2u_slice(seed_1_48, 15, 8);
  slice_6_88 <= u2u_slice(seed_1_48, 8, 8);
  slice_6_107 <= u2u_slice(seed_1_48, 9, 9);
  slice_6_126 <= u2u_slice(seed_1_48, 10, 10);
  slice_6_147 <= u2u_slice(seed_1_48, 11, 11);
  slice_6_168 <= u2u_slice(seed_1_48, 12, 12);
  slice_6_189 <= u2u_slice(seed_1_48, 13, 13);
  slice_6_210 <= u2u_slice(seed_1_48, 14, 14);
  slice_6_231 <= u2u_slice(seed_1_48, 15, 15);
  concat_6_79 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_6_88) & unsigned_to_std_logic_vector(slice_6_107) & unsigned_to_std_logic_vector(slice_6_126) & unsigned_to_std_logic_vector(slice_6_147) & unsigned_to_std_logic_vector(slice_6_168) & unsigned_to_std_logic_vector(slice_6_189) & unsigned_to_std_logic_vector(slice_6_210) & unsigned_to_std_logic_vector(slice_6_231));
  fullseed1_6_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("01011100")) & unsigned_to_std_logic_vector(slice_6_58) & unsigned_to_std_logic_vector(concat_6_79) & unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("10100011")));
  slice_7_58 <= u2u_slice(seed_1_48, 23, 16);
  slice_7_89 <= u2u_slice(seed_1_48, 16, 16);
  slice_7_110 <= u2u_slice(seed_1_48, 17, 17);
  slice_7_131 <= u2u_slice(seed_1_48, 18, 18);
  slice_7_152 <= u2u_slice(seed_1_48, 19, 19);
  slice_7_173 <= u2u_slice(seed_1_48, 20, 20);
  slice_7_194 <= u2u_slice(seed_1_48, 21, 21);
  slice_7_215 <= u2u_slice(seed_1_48, 22, 22);
  slice_7_236 <= u2u_slice(seed_1_48, 23, 23);
  concat_7_80 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_7_89) & unsigned_to_std_logic_vector(slice_7_110) & unsigned_to_std_logic_vector(slice_7_131) & unsigned_to_std_logic_vector(slice_7_152) & unsigned_to_std_logic_vector(slice_7_173) & unsigned_to_std_logic_vector(slice_7_194) & unsigned_to_std_logic_vector(slice_7_215) & unsigned_to_std_logic_vector(slice_7_236));
  fullseed2_7_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("01011100")) & unsigned_to_std_logic_vector(slice_7_58) & unsigned_to_std_logic_vector(concat_7_80) & unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("10100011")));
  slice_8_58 <= u2u_slice(seed_1_48, 31, 24);
  slice_8_89 <= u2u_slice(seed_1_48, 24, 24);
  slice_8_110 <= u2u_slice(seed_1_48, 25, 25);
  slice_8_131 <= u2u_slice(seed_1_48, 26, 26);
  slice_8_152 <= u2u_slice(seed_1_48, 27, 27);
  slice_8_173 <= u2u_slice(seed_1_48, 28, 28);
  slice_8_194 <= u2u_slice(seed_1_48, 29, 29);
  slice_8_215 <= u2u_slice(seed_1_48, 30, 30);
  slice_8_236 <= u2u_slice(seed_1_48, 31, 31);
  concat_8_80 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_8_89) & unsigned_to_std_logic_vector(slice_8_110) & unsigned_to_std_logic_vector(slice_8_131) & unsigned_to_std_logic_vector(slice_8_152) & unsigned_to_std_logic_vector(slice_8_173) & unsigned_to_std_logic_vector(slice_8_194) & unsigned_to_std_logic_vector(slice_8_215) & unsigned_to_std_logic_vector(slice_8_236));
  fullseed3_8_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("01011100")) & unsigned_to_std_logic_vector(slice_8_58) & unsigned_to_std_logic_vector(concat_8_80) & unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("10100011")));
  seed0 <= unsigned_to_std_logic_vector(fullseed0_5_1_concat);
  seed1 <= unsigned_to_std_logic_vector(fullseed1_6_1_concat);
  seed2 <= unsigned_to_std_logic_vector(fullseed2_7_1_concat);
  seed3 <= unsigned_to_std_logic_vector(fullseed3_8_1_concat);
end',
      'crippled_entity' => 'is
  port (
    seed : in std_logic_vector((32 - 1) downto 0);
    seed0 : out std_logic_vector((32 - 1) downto 0);
    seed1 : out std_logic_vector((32 - 1) downto 0);
    seed2 : out std_logic_vector((32 - 1) downto 0);
    seed3 : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'bitbasher_5b1e76c782',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 2',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 2',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 2',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_c631a46f8a19a854',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '4cfa541821609ca2e63355f312a7a112',
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
      'core_name0' => 'cntr_11_0_c631a46f8a19a854',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '6c9d442a27689a18de3d8ef0edc0cf26',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((2 - 1) downto 0);
  signal b_1_34: unsigned((2 - 1) downto 0);
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_18_3_rel <= a_1_31 > b_1_34;
  op <= boolean_to_vector(result_18_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((2 - 1) downto 0);
    b : in std_logic_vector((2 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_9b3c9652f3',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '50b9d849b1e3d33019948d2279476715',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((28 - 1) downto 0);
  signal b_1_34: unsigned((28 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    0 => false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal result_22_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  op_mem_32_22_back <= op_mem_32_22(0);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_32_22_push_front_pop_back_en = \'1\')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  result_22_3_rel <= a_1_31 >= b_1_34;
  op_mem_32_22_front_din <= result_22_3_rel;
  op_mem_32_22_push_front_pop_back_en <= \'1\';
  op <= boolean_to_vector(op_mem_32_22_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((28 - 1) downto 0);
    b : in std_logic_vector((28 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_e4a0188a91',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '187616fac07898f685e6a0fc1eb0a18b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal rst_1_40: boolean;
  signal count_reg_20_23: unsigned((28 - 1) downto 0) := "0000000000000000000000000011";
  signal count_reg_20_23_rst: std_logic;
  signal bool_44_4: boolean;
  signal rst_limit_join_44_1: boolean;
  signal count_reg_join_44_1: unsigned((29 - 1) downto 0);
  signal count_reg_join_44_1_rst: std_logic;
begin
  rst_1_40 <= ((rst) = "1");
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (count_reg_20_23_rst = \'1\')) then
        count_reg_20_23 <= "0000000000000000000000000011";
      elsif (ce = \'1\') then 
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("0000000000000000000000000001");
      end if;
    end if;
  end process proc_count_reg_20_23;
  bool_44_4 <= rst_1_40 or false;
  proc_if_44_1: process (bool_44_4, count_reg_20_23)
  is
  begin
    if bool_44_4 then
      count_reg_join_44_1_rst <= \'1\';
    else 
      count_reg_join_44_1_rst <= \'0\';
    end if;
    if bool_44_4 then
      rst_limit_join_44_1 <= false;
    else 
      rst_limit_join_44_1 <= false;
    end if;
  end process proc_if_44_1;
  count_reg_20_23_rst <= count_reg_join_44_1_rst;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end',
      'crippled_entity' => 'is
  port (
    rst : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((28 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'counter_b0e6415aa0',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '9ead1fe6b165801e072dbfc20af01ab8',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "1000000000000000000000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((28 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_3afb0a580d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f929c29933662587fe826c0bd9f59626',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((36 - 1) downto 0);
  signal in1_1_27: unsigned((36 - 1) downto 0);
  signal in2_1_31: unsigned((36 - 1) downto 0);
  signal in3_1_35: unsigned((36 - 1) downto 0);
  signal y_2_1_concat: unsigned((144 - 1) downto 0);
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
    in0 : in std_logic_vector((36 - 1) downto 0);
    in1 : in std_logic_vector((36 - 1) downto 0);
    in2 : in std_logic_vector((36 - 1) downto 0);
    in3 : in std_logic_vector((36 - 1) downto 0);
    y : out std_logic_vector((144 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_bbc53d9757',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 11.5',
    '# DEVICE virtex5',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 32',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_87d335e994d59139',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '765c71c826cfca3935f2183240423ce7',
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
      'core_name0' => 'cntr_11_0_87d335e994d59139',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '366d999d672ac834e4f4c913b87f398c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((144 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((144 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((144 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((144 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((144 - 1) downto 0);
    q : out std_logic_vector((144 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_dc6e12a537',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c51e366ba3f9036aa3a03d57a6013ae6',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_1_26: boolean;
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of boolean;
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => false);
  signal op_mem_22_20_front_din: boolean;
  signal op_mem_22_20_back: boolean;
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: boolean;
begin
  ip_1_26 <= ((ip) = "1");
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_22_20_push_front_pop_back_en = \'1\')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_front_din <= internal_ip_12_1_bitnot;
  op_mem_22_20_push_front_pop_back_en <= \'1\';
  op <= boolean_to_vector(op_mem_22_20_back);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'inverter_6844eee868',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd4450c4035c9a016060350bba165ef79',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '9c90121af4d6186257b4bbfcc9928d6b',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ee0f43ca9e349e7a59c9764b3af048f4',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '9b294559d2c906bb2d6a39a8a7fff979',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7f71f0aa8284d9e4dc67106fac16b87f',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '4325776095793426b25012c95ef4d55f',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'fb5c190f7a06f2606f51863fcba92c95',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f896b031db9649e8971e0353de3db4b5',
    'sourceFile' => '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  local *wrapup = $Sg::{'wrapup'};
  push(@$results, &Sg::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgDeliverFile::{'wrapup'};
  push(@$results, &SgDeliverFile::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgGenerateCores::{'wrapup'};
  push(@$results, &SgGenerateCores::wrapup())   if (defined(&wrapup));
  use Carp qw(croak);
  $ENV{'SYSGEN'} = '/tools/xilinx/11.5/DSP_Tools/lin64/sysgen';
  open(RESULTS, '> /scratch/zaki/workspace/baobab/baopoco/sysgen/sysgen/script_results4806430721601271360') || 
    croak 'couldn\'t open /scratch/zaki/workspace/baobab/baopoco/sysgen/sysgen/script_results4806430721601271360';
  binmode(RESULTS);
  print RESULTS &Sg::toString($results) . "\n";
  close(RESULTS) || 
    croak 'trouble writing /scratch/zaki/workspace/baobab/baopoco/sysgen/sysgen/script_results4806430721601271360';
};

if ($@) {
  open(RESULTS, '> /scratch/zaki/workspace/baobab/baopoco/sysgen/sysgen/script_results4806430721601271360') || 
    croak 'couldn\'t open /scratch/zaki/workspace/baobab/baopoco/sysgen/sysgen/script_results4806430721601271360';
  binmode(RESULTS);
  print RESULTS $@ . "\n";
  close(RESULTS) || 
    croak 'trouble writing /scratch/zaki/workspace/baobab/baopoco/sysgen/sysgen/script_results4806430721601271360';
  exit(1);
}

exit(0);
