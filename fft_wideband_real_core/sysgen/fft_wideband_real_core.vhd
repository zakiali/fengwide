--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_62_5863af36f6036886.vhd when simulating
-- the core, dmg_62_5863af36f6036886. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY dmg_62_5863af36f6036886 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    spo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END dmg_62_5863af36f6036886;

ARCHITECTURE dmg_62_5863af36f6036886_a OF dmg_62_5863af36f6036886 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_62_5863af36f6036886
  PORT (
    a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    spo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_62_5863af36f6036886 USE ENTITY XilinxCoreLib.dist_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addr_width => 8,
      c_default_data => "0",
      c_depth => 256,
      c_family => "virtex5",
      c_has_clk => 0,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 0,
      c_has_qspo_ce => 0,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 1,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_62_5863af36f6036886.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 8
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_62_5863af36f6036886
  PORT MAP (
    a => a,
    spo => spo
  );
-- synthesis translate_on

END dmg_62_5863af36f6036886_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_82b2485d32f76714.vhd when simulating
-- the core, bmg_62_82b2485d32f76714. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_82b2485d32f76714 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END bmg_62_82b2485d32f76714;

ARCHITECTURE bmg_62_82b2485d32f76714_a OF bmg_62_82b2485d32f76714 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_82b2485d32f76714
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_82b2485d32f76714 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 5,
      c_addrb_width => 5,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_82b2485d32f76714.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 0,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 32,
      c_read_depth_b => 32,
      c_read_width_a => 36,
      c_read_width_b => 36,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 32,
      c_write_depth_b => 32,
      c_write_mode_a => "READ_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 36,
      c_write_width_b => 36,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_82b2485d32f76714
  PORT MAP (
    clka => clka,
    ena => ena,
    wea => wea,
    addra => addra,
    dina => dina,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_82b2485d32f76714_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_83efd1fdf9477a72.vhd when simulating
-- the core, bmg_62_83efd1fdf9477a72. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_83efd1fdf9477a72 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END bmg_62_83efd1fdf9477a72;

ARCHITECTURE bmg_62_83efd1fdf9477a72_a OF bmg_62_83efd1fdf9477a72 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_83efd1fdf9477a72
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_83efd1fdf9477a72 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 8,
      c_addrb_width => 8,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_83efd1fdf9477a72.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 256,
      c_read_depth_b => 256,
      c_read_width_a => 18,
      c_read_width_b => 18,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 256,
      c_write_depth_b => 256,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 18,
      c_write_width_b => 18,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_83efd1fdf9477a72
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_83efd1fdf9477a72_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_813142b9460b2f27.vhd when simulating
-- the core, cntr_11_0_813142b9460b2f27. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_813142b9460b2f27 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
  );
END cntr_11_0_813142b9460b2f27;

ARCHITECTURE cntr_11_0_813142b9460b2f27_a OF cntr_11_0_813142b9460b2f27 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_813142b9460b2f27
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_813142b9460b2f27 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 13,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_813142b9460b2f27
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_813142b9460b2f27_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_7061fc74b87e2931.vhd when simulating
-- the core, bmg_62_7061fc74b87e2931. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_7061fc74b87e2931 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END bmg_62_7061fc74b87e2931;

ARCHITECTURE bmg_62_7061fc74b87e2931_a OF bmg_62_7061fc74b87e2931 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_7061fc74b87e2931
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_7061fc74b87e2931 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 5,
      c_addrb_width => 5,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_7061fc74b87e2931.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 32,
      c_read_depth_b => 32,
      c_read_width_a => 18,
      c_read_width_b => 18,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 32,
      c_write_depth_b => 32,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 18,
      c_write_width_b => 18,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_7061fc74b87e2931
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_7061fc74b87e2931_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_df2bb90b8fe02ecf.vhd when simulating
-- the core, cntr_11_0_df2bb90b8fe02ecf. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_df2bb90b8fe02ecf IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END cntr_11_0_df2bb90b8fe02ecf;

ARCHITECTURE cntr_11_0_df2bb90b8fe02ecf_a OF cntr_11_0_df2bb90b8fe02ecf IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_df2bb90b8fe02ecf
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_df2bb90b8fe02ecf USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 8,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_df2bb90b8fe02ecf
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_df2bb90b8fe02ecf_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_9f5113eef58d42f3.vhd when simulating
-- the core, cntr_11_0_9f5113eef58d42f3. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_9f5113eef58d42f3 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END cntr_11_0_9f5113eef58d42f3;

ARCHITECTURE cntr_11_0_9f5113eef58d42f3_a OF cntr_11_0_9f5113eef58d42f3 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_9f5113eef58d42f3
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_9f5113eef58d42f3 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 1,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 1,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 2,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_9f5113eef58d42f3
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    load => load,
    l => l,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_9f5113eef58d42f3_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_16e54f007b53b02e.vhd when simulating
-- the core, bmg_62_16e54f007b53b02e. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_16e54f007b53b02e IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END bmg_62_16e54f007b53b02e;

ARCHITECTURE bmg_62_16e54f007b53b02e_a OF bmg_62_16e54f007b53b02e IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_16e54f007b53b02e
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_16e54f007b53b02e USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 6,
      c_addrb_width => 6,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_16e54f007b53b02e.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 64,
      c_read_depth_b => 64,
      c_read_width_a => 18,
      c_read_width_b => 18,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 64,
      c_write_depth_b => 64,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 18,
      c_write_width_b => 18,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_16e54f007b53b02e
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_16e54f007b53b02e_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_e0d381bcdb78c3cc.vhd when simulating
-- the core, cntr_11_0_e0d381bcdb78c3cc. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_e0d381bcdb78c3cc IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
  );
END cntr_11_0_e0d381bcdb78c3cc;

ARCHITECTURE cntr_11_0_e0d381bcdb78c3cc_a OF cntr_11_0_e0d381bcdb78c3cc IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_e0d381bcdb78c3cc
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_e0d381bcdb78c3cc USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 1,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 1,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 5,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_e0d381bcdb78c3cc
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    load => load,
    l => l,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_e0d381bcdb78c3cc_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_66e53735c699b53b.vhd when simulating
-- the core, bmg_62_66e53735c699b53b. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_66e53735c699b53b IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END bmg_62_66e53735c699b53b;

ARCHITECTURE bmg_62_66e53735c699b53b_a OF bmg_62_66e53735c699b53b IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_66e53735c699b53b
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_66e53735c699b53b USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 8,
      c_addrb_width => 8,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_66e53735c699b53b.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 256,
      c_read_depth_b => 256,
      c_read_width_a => 18,
      c_read_width_b => 18,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 256,
      c_write_depth_b => 256,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 18,
      c_write_width_b => 18,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_66e53735c699b53b
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_66e53735c699b53b_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_62_566eb4bdfcc3bc15.vhd when simulating
-- the core, dmg_62_566eb4bdfcc3bc15. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY dmg_62_566eb4bdfcc3bc15 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    spo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END dmg_62_566eb4bdfcc3bc15;

ARCHITECTURE dmg_62_566eb4bdfcc3bc15_a OF dmg_62_566eb4bdfcc3bc15 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_62_566eb4bdfcc3bc15
  PORT (
    a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    spo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_62_566eb4bdfcc3bc15 USE ENTITY XilinxCoreLib.dist_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addr_width => 8,
      c_default_data => "0",
      c_depth => 256,
      c_family => "virtex5",
      c_has_clk => 0,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 0,
      c_has_qspo_ce => 0,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 1,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_62_566eb4bdfcc3bc15.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 8
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_62_566eb4bdfcc3bc15
  PORT MAP (
    a => a,
    spo => spo
  );
-- synthesis translate_on

END dmg_62_566eb4bdfcc3bc15_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_89660d475f29ded2.vhd when simulating
-- the core, bmg_62_89660d475f29ded2. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_89660d475f29ded2 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END bmg_62_89660d475f29ded2;

ARCHITECTURE bmg_62_89660d475f29ded2_a OF bmg_62_89660d475f29ded2 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_89660d475f29ded2
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_89660d475f29ded2 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 7,
      c_addrb_width => 7,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_89660d475f29ded2.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 128,
      c_read_depth_b => 128,
      c_read_width_a => 18,
      c_read_width_b => 18,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 128,
      c_write_depth_b => 128,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 18,
      c_write_width_b => 18,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_89660d475f29ded2
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_89660d475f29ded2_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_62_9d0957109dc92693.vhd when simulating
-- the core, dmg_62_9d0957109dc92693. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY dmg_62_9d0957109dc92693 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    spo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END dmg_62_9d0957109dc92693;

ARCHITECTURE dmg_62_9d0957109dc92693_a OF dmg_62_9d0957109dc92693 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_62_9d0957109dc92693
  PORT (
    a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    spo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_62_9d0957109dc92693 USE ENTITY XilinxCoreLib.dist_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addr_width => 8,
      c_default_data => "0",
      c_depth => 256,
      c_family => "virtex5",
      c_has_clk => 0,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 0,
      c_has_qspo_ce => 0,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 1,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_62_9d0957109dc92693.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 8
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_62_9d0957109dc92693
  PORT MAP (
    a => a,
    spo => spo
  );
-- synthesis translate_on

END dmg_62_9d0957109dc92693_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_a1b79e174d5a824f.vhd when simulating
-- the core, bmg_62_a1b79e174d5a824f. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_a1b79e174d5a824f IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END bmg_62_a1b79e174d5a824f;

ARCHITECTURE bmg_62_a1b79e174d5a824f_a OF bmg_62_a1b79e174d5a824f IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_a1b79e174d5a824f
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_a1b79e174d5a824f USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 9,
      c_addrb_width => 9,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_a1b79e174d5a824f.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 512,
      c_read_depth_b => 512,
      c_read_width_a => 18,
      c_read_width_b => 18,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 512,
      c_write_depth_b => 512,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 18,
      c_write_width_b => 18,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_a1b79e174d5a824f
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_a1b79e174d5a824f_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_20f60aed18821bec.vhd when simulating
-- the core, cntr_11_0_20f60aed18821bec. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_20f60aed18821bec IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
  );
END cntr_11_0_20f60aed18821bec;

ARCHITECTURE cntr_11_0_20f60aed18821bec_a OF cntr_11_0_20f60aed18821bec IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_20f60aed18821bec
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_20f60aed18821bec USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 6,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_20f60aed18821bec
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_20f60aed18821bec_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_daa5a8eb8c5c2eed.vhd when simulating
-- the core, bmg_62_daa5a8eb8c5c2eed. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_daa5a8eb8c5c2eed IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END bmg_62_daa5a8eb8c5c2eed;

ARCHITECTURE bmg_62_daa5a8eb8c5c2eed_a OF bmg_62_daa5a8eb8c5c2eed IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_daa5a8eb8c5c2eed
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_daa5a8eb8c5c2eed USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 5,
      c_addrb_width => 5,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_daa5a8eb8c5c2eed.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 32,
      c_read_depth_b => 32,
      c_read_width_a => 18,
      c_read_width_b => 18,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 32,
      c_write_depth_b => 32,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 18,
      c_write_width_b => 18,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_daa5a8eb8c5c2eed
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_daa5a8eb8c5c2eed_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_66064026d4816b4e.vhd when simulating
-- the core, bmg_62_66064026d4816b4e. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_66064026d4816b4e IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END bmg_62_66064026d4816b4e;

ARCHITECTURE bmg_62_66064026d4816b4e_a OF bmg_62_66064026d4816b4e IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_66064026d4816b4e
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_66064026d4816b4e USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 9,
      c_addrb_width => 9,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_66064026d4816b4e.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 0,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 512,
      c_read_depth_b => 512,
      c_read_width_a => 36,
      c_read_width_b => 36,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 512,
      c_write_depth_b => 512,
      c_write_mode_a => "READ_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 36,
      c_write_width_b => 36,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_66064026d4816b4e
  PORT MAP (
    clka => clka,
    ena => ena,
    wea => wea,
    addra => addra,
    dina => dina,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_66064026d4816b4e_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_51321cc7c8e9865c.vhd when simulating
-- the core, bmg_62_51321cc7c8e9865c. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_51321cc7c8e9865c IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END bmg_62_51321cc7c8e9865c;

ARCHITECTURE bmg_62_51321cc7c8e9865c_a OF bmg_62_51321cc7c8e9865c IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_51321cc7c8e9865c
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_51321cc7c8e9865c USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 7,
      c_addrb_width => 7,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_51321cc7c8e9865c.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 0,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 128,
      c_read_depth_b => 128,
      c_read_width_a => 36,
      c_read_width_b => 36,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 128,
      c_write_depth_b => 128,
      c_write_mode_a => "READ_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 36,
      c_write_width_b => 36,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_51321cc7c8e9865c
  PORT MAP (
    clka => clka,
    ena => ena,
    wea => wea,
    addra => addra,
    dina => dina,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_51321cc7c8e9865c_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_073020084dc5d91f.vhd when simulating
-- the core, bmg_62_073020084dc5d91f. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_073020084dc5d91f IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END bmg_62_073020084dc5d91f;

ARCHITECTURE bmg_62_073020084dc5d91f_a OF bmg_62_073020084dc5d91f IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_073020084dc5d91f
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_073020084dc5d91f USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 9,
      c_addrb_width => 9,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_073020084dc5d91f.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 512,
      c_read_depth_b => 512,
      c_read_width_a => 18,
      c_read_width_b => 18,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 512,
      c_write_depth_b => 512,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 18,
      c_write_width_b => 18,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_073020084dc5d91f
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_073020084dc5d91f_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_e195761ec2ed12e6.vhd when simulating
-- the core, bmg_62_e195761ec2ed12e6. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_e195761ec2ed12e6 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END bmg_62_e195761ec2ed12e6;

ARCHITECTURE bmg_62_e195761ec2ed12e6_a OF bmg_62_e195761ec2ed12e6 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_e195761ec2ed12e6
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_e195761ec2ed12e6 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 9,
      c_addrb_width => 9,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_e195761ec2ed12e6.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 512,
      c_read_depth_b => 512,
      c_read_width_a => 18,
      c_read_width_b => 18,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 512,
      c_write_depth_b => 512,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 18,
      c_write_width_b => 18,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_e195761ec2ed12e6
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_e195761ec2ed12e6_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_d4d70c5a247867e8.vhd when simulating
-- the core, cntr_11_0_d4d70c5a247867e8. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_d4d70c5a247867e8 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END cntr_11_0_d4d70c5a247867e8;

ARCHITECTURE cntr_11_0_d4d70c5a247867e8_a OF cntr_11_0_d4d70c5a247867e8 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_d4d70c5a247867e8
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_d4d70c5a247867e8 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 1,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 1,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 9,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_d4d70c5a247867e8
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    load => load,
    l => l,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_d4d70c5a247867e8_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_c2e89722de712678.vhd when simulating
-- the core, cntr_11_0_c2e89722de712678. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_c2e89722de712678 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END cntr_11_0_c2e89722de712678;

ARCHITECTURE cntr_11_0_c2e89722de712678_a OF cntr_11_0_c2e89722de712678 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_c2e89722de712678
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_c2e89722de712678 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 1,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 1,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 4,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_c2e89722de712678
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    load => load,
    l => l,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_c2e89722de712678_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_2d41b260b5e70403.vhd when simulating
-- the core, bmg_62_2d41b260b5e70403. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_2d41b260b5e70403 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END bmg_62_2d41b260b5e70403;

ARCHITECTURE bmg_62_2d41b260b5e70403_a OF bmg_62_2d41b260b5e70403 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_2d41b260b5e70403
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_2d41b260b5e70403 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 3,
      c_addrb_width => 3,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_2d41b260b5e70403.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 8,
      c_read_depth_b => 8,
      c_read_width_a => 18,
      c_read_width_b => 18,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 8,
      c_write_depth_b => 8,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 18,
      c_write_width_b => 18,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_2d41b260b5e70403
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_2d41b260b5e70403_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_92fa6367e92d9ee0.vhd when simulating
-- the core, bmg_62_92fa6367e92d9ee0. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_92fa6367e92d9ee0 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END bmg_62_92fa6367e92d9ee0;

ARCHITECTURE bmg_62_92fa6367e92d9ee0_a OF bmg_62_92fa6367e92d9ee0 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_92fa6367e92d9ee0
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_92fa6367e92d9ee0 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 7,
      c_addrb_width => 7,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_92fa6367e92d9ee0.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 128,
      c_read_depth_b => 128,
      c_read_width_a => 18,
      c_read_width_b => 18,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 128,
      c_write_depth_b => 128,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 18,
      c_write_width_b => 18,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_92fa6367e92d9ee0
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_92fa6367e92d9ee0_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_f1ca57bbf79f0673.vhd when simulating
-- the core, bmg_62_f1ca57bbf79f0673. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_f1ca57bbf79f0673 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END bmg_62_f1ca57bbf79f0673;

ARCHITECTURE bmg_62_f1ca57bbf79f0673_a OF bmg_62_f1ca57bbf79f0673 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_f1ca57bbf79f0673
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_f1ca57bbf79f0673 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 8,
      c_addrb_width => 8,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_f1ca57bbf79f0673.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 0,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 256,
      c_read_depth_b => 256,
      c_read_width_a => 36,
      c_read_width_b => 36,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 256,
      c_write_depth_b => 256,
      c_write_mode_a => "READ_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 36,
      c_write_width_b => 36,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_f1ca57bbf79f0673
  PORT MAP (
    clka => clka,
    ena => ena,
    wea => wea,
    addra => addra,
    dina => dina,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_f1ca57bbf79f0673_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_de80a27a29f3ada6.vhd when simulating
-- the core, bmg_62_de80a27a29f3ada6. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_de80a27a29f3ada6 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END bmg_62_de80a27a29f3ada6;

ARCHITECTURE bmg_62_de80a27a29f3ada6_a OF bmg_62_de80a27a29f3ada6 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_de80a27a29f3ada6
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_de80a27a29f3ada6 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 4,
      c_addrb_width => 4,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_de80a27a29f3ada6.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 0,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 16,
      c_read_depth_b => 16,
      c_read_width_a => 36,
      c_read_width_b => 36,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 16,
      c_write_depth_b => 16,
      c_write_mode_a => "READ_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 36,
      c_write_width_b => 36,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_de80a27a29f3ada6
  PORT MAP (
    clka => clka,
    ena => ena,
    wea => wea,
    addra => addra,
    dina => dina,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_de80a27a29f3ada6_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_fd6c0fe64ab6dcd2.vhd when simulating
-- the core, bmg_62_fd6c0fe64ab6dcd2. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_fd6c0fe64ab6dcd2 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END bmg_62_fd6c0fe64ab6dcd2;

ARCHITECTURE bmg_62_fd6c0fe64ab6dcd2_a OF bmg_62_fd6c0fe64ab6dcd2 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_fd6c0fe64ab6dcd2
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_fd6c0fe64ab6dcd2 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 3,
      c_addrb_width => 3,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_fd6c0fe64ab6dcd2.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 0,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 8,
      c_read_depth_b => 8,
      c_read_width_a => 36,
      c_read_width_b => 36,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 8,
      c_write_depth_b => 8,
      c_write_mode_a => "READ_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 36,
      c_write_width_b => 36,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_fd6c0fe64ab6dcd2
  PORT MAP (
    clka => clka,
    ena => ena,
    wea => wea,
    addra => addra,
    dina => dina,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_fd6c0fe64ab6dcd2_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_936eb415a1e57c2f.vhd when simulating
-- the core, bmg_62_936eb415a1e57c2f. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_936eb415a1e57c2f IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END bmg_62_936eb415a1e57c2f;

ARCHITECTURE bmg_62_936eb415a1e57c2f_a OF bmg_62_936eb415a1e57c2f IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_936eb415a1e57c2f
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_936eb415a1e57c2f USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 8,
      c_addrb_width => 8,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_936eb415a1e57c2f.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 0,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 256,
      c_read_depth_b => 256,
      c_read_width_a => 36,
      c_read_width_b => 36,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 256,
      c_write_depth_b => 256,
      c_write_mode_a => "READ_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 36,
      c_write_width_b => 36,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_936eb415a1e57c2f
  PORT MAP (
    clka => clka,
    ena => ena,
    wea => wea,
    addra => addra,
    dina => dina,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_936eb415a1e57c2f_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_e9eaaa5672e4be4d.vhd when simulating
-- the core, cntr_11_0_e9eaaa5672e4be4d. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_e9eaaa5672e4be4d IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END cntr_11_0_e9eaaa5672e4be4d;

ARCHITECTURE cntr_11_0_e9eaaa5672e4be4d_a OF cntr_11_0_e9eaaa5672e4be4d IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_e9eaaa5672e4be4d
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_e9eaaa5672e4be4d USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 1,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 1,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 3,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_e9eaaa5672e4be4d
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    load => load,
    l => l,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_e9eaaa5672e4be4d_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_721e2d25fd18b8a2.vhd when simulating
-- the core, bmg_62_721e2d25fd18b8a2. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_721e2d25fd18b8a2 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END bmg_62_721e2d25fd18b8a2;

ARCHITECTURE bmg_62_721e2d25fd18b8a2_a OF bmg_62_721e2d25fd18b8a2 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_721e2d25fd18b8a2
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_721e2d25fd18b8a2 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 6,
      c_addrb_width => 6,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_721e2d25fd18b8a2.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 64,
      c_read_depth_b => 64,
      c_read_width_a => 18,
      c_read_width_b => 18,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 64,
      c_write_depth_b => 64,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 18,
      c_write_width_b => 18,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_721e2d25fd18b8a2
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_721e2d25fd18b8a2_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_35c81e3155ab2f6f.vhd when simulating
-- the core, cntr_11_0_35c81e3155ab2f6f. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_35c81e3155ab2f6f IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
  );
END cntr_11_0_35c81e3155ab2f6f;

ARCHITECTURE cntr_11_0_35c81e3155ab2f6f_a OF cntr_11_0_35c81e3155ab2f6f IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_35c81e3155ab2f6f
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_35c81e3155ab2f6f USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 5,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_35c81e3155ab2f6f
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_35c81e3155ab2f6f_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_b9730cea34623a8b.vhd when simulating
-- the core, cntr_11_0_b9730cea34623a8b. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_b9730cea34623a8b IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END cntr_11_0_b9730cea34623a8b;

ARCHITECTURE cntr_11_0_b9730cea34623a8b_a OF cntr_11_0_b9730cea34623a8b IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_b9730cea34623a8b
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_b9730cea34623a8b USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 9,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_b9730cea34623a8b
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_b9730cea34623a8b_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_c84d65465c59fb07.vhd when simulating
-- the core, cntr_11_0_c84d65465c59fb07. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_c84d65465c59fb07 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END cntr_11_0_c84d65465c59fb07;

ARCHITECTURE cntr_11_0_c84d65465c59fb07_a OF cntr_11_0_c84d65465c59fb07 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_c84d65465c59fb07
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_c84d65465c59fb07 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 4,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_c84d65465c59fb07
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_c84d65465c59fb07_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_b2e26777d24cb38d.vhd when simulating
-- the core, cntr_11_0_b2e26777d24cb38d. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_b2e26777d24cb38d IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END cntr_11_0_b2e26777d24cb38d;

ARCHITECTURE cntr_11_0_b2e26777d24cb38d_a OF cntr_11_0_b2e26777d24cb38d IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_b2e26777d24cb38d
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_b2e26777d24cb38d USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 1,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 1,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 8,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_b2e26777d24cb38d
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    load => load,
    l => l,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_b2e26777d24cb38d_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_62_1a18407473b36622.vhd when simulating
-- the core, dmg_62_1a18407473b36622. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY dmg_62_1a18407473b36622 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END dmg_62_1a18407473b36622;

ARCHITECTURE dmg_62_1a18407473b36622_a OF dmg_62_1a18407473b36622 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_62_1a18407473b36622
  PORT (
    a : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_62_1a18407473b36622 USE ENTITY XilinxCoreLib.dist_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addr_width => 9,
      c_default_data => "0",
      c_depth => 512,
      c_family => "virtex5",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_62_1a18407473b36622.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 9
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_62_1a18407473b36622
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_62_1a18407473b36622_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_f5d63000a45b4cf8.vhd when simulating
-- the core, bmg_62_f5d63000a45b4cf8. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_f5d63000a45b4cf8 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END bmg_62_f5d63000a45b4cf8;

ARCHITECTURE bmg_62_f5d63000a45b4cf8_a OF bmg_62_f5d63000a45b4cf8 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_f5d63000a45b4cf8
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_f5d63000a45b4cf8 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 3,
      c_addrb_width => 3,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_f5d63000a45b4cf8.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 8,
      c_read_depth_b => 8,
      c_read_width_a => 18,
      c_read_width_b => 18,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 8,
      c_write_depth_b => 8,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 18,
      c_write_width_b => 18,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_f5d63000a45b4cf8
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_f5d63000a45b4cf8_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_665c019c1c5f5676.vhd when simulating
-- the core, bmg_62_665c019c1c5f5676. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_665c019c1c5f5676 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END bmg_62_665c019c1c5f5676;

ARCHITECTURE bmg_62_665c019c1c5f5676_a OF bmg_62_665c019c1c5f5676 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_665c019c1c5f5676
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_665c019c1c5f5676 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 6,
      c_addrb_width => 6,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_665c019c1c5f5676.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 0,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 64,
      c_read_depth_b => 64,
      c_read_width_a => 36,
      c_read_width_b => 36,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 64,
      c_write_depth_b => 64,
      c_write_mode_a => "READ_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 36,
      c_write_width_b => 36,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_665c019c1c5f5676
  PORT MAP (
    clka => clka,
    ena => ena,
    wea => wea,
    addra => addra,
    dina => dina,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_665c019c1c5f5676_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_c53e3b0687343f7a.vhd when simulating
-- the core, cntr_11_0_c53e3b0687343f7a. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_c53e3b0687343f7a IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
  );
END cntr_11_0_c53e3b0687343f7a;

ARCHITECTURE cntr_11_0_c53e3b0687343f7a_a OF cntr_11_0_c53e3b0687343f7a IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_c53e3b0687343f7a
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_c53e3b0687343f7a USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 1,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 1,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 7,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_c53e3b0687343f7a
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    load => load,
    l => l,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_c53e3b0687343f7a_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_c55d75b26312ffb9.vhd when simulating
-- the core, bmg_62_c55d75b26312ffb9. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_c55d75b26312ffb9 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END bmg_62_c55d75b26312ffb9;

ARCHITECTURE bmg_62_c55d75b26312ffb9_a OF bmg_62_c55d75b26312ffb9 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_c55d75b26312ffb9
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_c55d75b26312ffb9 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 9,
      c_addrb_width => 9,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_c55d75b26312ffb9.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 512,
      c_read_depth_b => 512,
      c_read_width_a => 18,
      c_read_width_b => 18,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 512,
      c_write_depth_b => 512,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 18,
      c_write_width_b => 18,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_c55d75b26312ffb9
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_c55d75b26312ffb9_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_7ca694f8efe8d963.vhd when simulating
-- the core, cntr_11_0_7ca694f8efe8d963. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_7ca694f8efe8d963 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
END cntr_11_0_7ca694f8efe8d963;

ARCHITECTURE cntr_11_0_7ca694f8efe8d963_a OF cntr_11_0_7ca694f8efe8d963 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_7ca694f8efe8d963
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_7ca694f8efe8d963 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 1,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 1,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 10,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_7ca694f8efe8d963
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    load => load,
    l => l,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_7ca694f8efe8d963_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_73d90f0f459a7002.vhd when simulating
-- the core, cntr_11_0_73d90f0f459a7002. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_73d90f0f459a7002 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
  );
END cntr_11_0_73d90f0f459a7002;

ARCHITECTURE cntr_11_0_73d90f0f459a7002_a OF cntr_11_0_73d90f0f459a7002 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_73d90f0f459a7002
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_73d90f0f459a7002 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 1,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 1,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 6,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_73d90f0f459a7002
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    load => load,
    l => l,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_73d90f0f459a7002_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_9adf5a9f785e3fb8.vhd when simulating
-- the core, cntr_11_0_9adf5a9f785e3fb8. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_9adf5a9f785e3fb8 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
  );
END cntr_11_0_9adf5a9f785e3fb8;

ARCHITECTURE cntr_11_0_9adf5a9f785e3fb8_a OF cntr_11_0_9adf5a9f785e3fb8 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_9adf5a9f785e3fb8
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_9adf5a9f785e3fb8 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 7,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_9adf5a9f785e3fb8
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_9adf5a9f785e3fb8_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_38c9cb0851a20d91.vhd when simulating
-- the core, cntr_11_0_38c9cb0851a20d91. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_38c9cb0851a20d91 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END cntr_11_0_38c9cb0851a20d91;

ARCHITECTURE cntr_11_0_38c9cb0851a20d91_a OF cntr_11_0_38c9cb0851a20d91 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_38c9cb0851a20d91
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_38c9cb0851a20d91 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 2,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_38c9cb0851a20d91
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_38c9cb0851a20d91_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_6ea787275fdc24d6.vhd when simulating
-- the core, bmg_62_6ea787275fdc24d6. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_6ea787275fdc24d6 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END bmg_62_6ea787275fdc24d6;

ARCHITECTURE bmg_62_6ea787275fdc24d6_a OF bmg_62_6ea787275fdc24d6 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_6ea787275fdc24d6
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_6ea787275fdc24d6 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 4,
      c_addrb_width => 4,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_6ea787275fdc24d6.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 16,
      c_read_depth_b => 16,
      c_read_width_a => 18,
      c_read_width_b => 18,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 16,
      c_write_depth_b => 16,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 18,
      c_write_width_b => 18,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_6ea787275fdc24d6
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_6ea787275fdc24d6_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_37f844592d213796.vhd when simulating
-- the core, bmg_62_37f844592d213796. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_37f844592d213796 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END bmg_62_37f844592d213796;

ARCHITECTURE bmg_62_37f844592d213796_a OF bmg_62_37f844592d213796 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_37f844592d213796
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_37f844592d213796 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 4,
      c_addrb_width => 4,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_37f844592d213796.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 16,
      c_read_depth_b => 16,
      c_read_width_a => 18,
      c_read_width_b => 18,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 16,
      c_write_depth_b => 16,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 18,
      c_write_width_b => 18,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_37f844592d213796
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_37f844592d213796_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_62_5274d0b3f294243c.vhd when simulating
-- the core, bmg_62_5274d0b3f294243c. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_62_5274d0b3f294243c IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END bmg_62_5274d0b3f294243c;

ARCHITECTURE bmg_62_5274d0b3f294243c_a OF bmg_62_5274d0b3f294243c IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_5274d0b3f294243c
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_5274d0b3f294243c USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 9,
      c_addrb_width => 9,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_5274d0b3f294243c.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 512,
      c_read_depth_b => 512,
      c_read_width_a => 18,
      c_read_width_b => 18,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 512,
      c_write_depth_b => 512,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 18,
      c_write_width_b => 18,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_5274d0b3f294243c
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_5274d0b3f294243c_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_62_f0d8e22702089fe9.vhd when simulating
-- the core, dmg_62_f0d8e22702089fe9. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY dmg_62_f0d8e22702089fe9 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_62_f0d8e22702089fe9;

ARCHITECTURE dmg_62_f0d8e22702089fe9_a OF dmg_62_f0d8e22702089fe9 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_62_f0d8e22702089fe9
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_62_f0d8e22702089fe9 USE ENTITY XilinxCoreLib.dist_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex5",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_62_f0d8e22702089fe9.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_62_f0d8e22702089fe9
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_62_f0d8e22702089fe9_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_05042eb8e8f7781c.vhd when simulating
-- the core, cntr_11_0_05042eb8e8f7781c. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_05042eb8e8f7781c IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END cntr_11_0_05042eb8e8f7781c;

ARCHITECTURE cntr_11_0_05042eb8e8f7781c_a OF cntr_11_0_05042eb8e8f7781c IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_05042eb8e8f7781c
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_05042eb8e8f7781c USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 3,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_05042eb8e8f7781c
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_05042eb8e8f7781c_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_62_252dff5223562ed1.vhd when simulating
-- the core, dmg_62_252dff5223562ed1. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY dmg_62_252dff5223562ed1 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END dmg_62_252dff5223562ed1;

ARCHITECTURE dmg_62_252dff5223562ed1_a OF dmg_62_252dff5223562ed1 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_62_252dff5223562ed1
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_62_252dff5223562ed1 USE ENTITY XilinxCoreLib.dist_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex5",
      c_has_clk => 1,
      c_has_d => 0,
      c_has_dpo => 0,
      c_has_dpra => 0,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 1,
      c_has_qspo_ce => 1,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 0,
      c_has_spra => 0,
      c_has_we => 0,
      c_mem_init_file => "dmg_62_252dff5223562ed1.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 18
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_62_252dff5223562ed1
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_62_252dff5223562ed1_a;

-------------------------------------------------------------------
-- System Generator version 13.2 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
package conv_pkg is
    constant simulating : boolean := false
      -- synopsys translate_off
        or true
      -- synopsys translate_on
    ;
    constant xlUnsigned : integer := 1;
    constant xlSigned : integer := 2;
    constant xlFloat : integer := 3;
    constant xlWrap : integer := 1;
    constant xlSaturate : integer := 2;
    constant xlTruncate : integer := 1;
    constant xlRound : integer := 2;
    constant xlRoundBanker : integer := 3;
    constant xlAddMode : integer := 1;
    constant xlSubMode : integer := 2;
    attribute black_box : boolean;
    attribute syn_black_box : boolean;
    attribute fpga_dont_touch: string;
    attribute box_type :  string;
    attribute keep : string;
    attribute syn_keep : boolean;
    function std_logic_vector_to_unsigned(inp : std_logic_vector) return unsigned;
    function unsigned_to_std_logic_vector(inp : unsigned) return std_logic_vector;
    function std_logic_vector_to_signed(inp : std_logic_vector) return signed;
    function signed_to_std_logic_vector(inp : signed) return std_logic_vector;
    function unsigned_to_signed(inp : unsigned) return signed;
    function signed_to_unsigned(inp : signed) return unsigned;
    function pos(inp : std_logic_vector; arith : INTEGER) return boolean;
    function all_same(inp: std_logic_vector) return boolean;
    function all_zeros(inp: std_logic_vector) return boolean;
    function is_point_five(inp: std_logic_vector) return boolean;
    function all_ones(inp: std_logic_vector) return boolean;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector;
    function cast (inp : std_logic_vector; old_bin_pt,
                   new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
        return std_logic_vector;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
        return unsigned;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
        return unsigned;
    function s2s_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function u2s_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function s2u_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2u_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2v_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function s2v_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                    new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function max_signed(width : INTEGER) return std_logic_vector;
    function min_signed(width : INTEGER) return std_logic_vector;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER) return std_logic_vector;
    function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                        old_arith, new_width, new_bin_pt, new_arith : INTEGER)
                        return std_logic_vector;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                          new_width: INTEGER)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width, arith : integer)
        return std_logic_vector;
    function max(L, R: INTEGER) return INTEGER;
    function min(L, R: INTEGER) return INTEGER;
    function "="(left,right: STRING) return boolean;
    function boolean_to_signed (inp : boolean; width: integer)
        return signed;
    function boolean_to_unsigned (inp : boolean; width: integer)
        return unsigned;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector;
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector;
    function hex_string_to_std_logic_vector (inp : string; width : integer)
        return std_logic_vector;
    function makeZeroBinStr (width : integer) return STRING;
    function and_reduce(inp: std_logic_vector) return std_logic;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean;
    function is_binary_string_undefined (inp : string)
        return boolean;
    function is_XorU(inp : std_logic_vector)
        return boolean;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector;
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector;
    constant display_precision : integer := 20;
    function real_to_string (inp : real) return string;
    function valid_bin_string(inp : string) return boolean;
    function std_logic_vector_to_bin_string(inp : std_logic_vector) return string;
    function std_logic_to_bin_string(inp : std_logic) return string;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string;
    type stdlogic_to_char_t is array(std_logic) of character;
    constant to_char : stdlogic_to_char_t := (
        'U' => 'U',
        'X' => 'X',
        '0' => '0',
        '1' => '1',
        'Z' => 'Z',
        'W' => 'W',
        'L' => 'L',
        'H' => 'H',
        '-' => '-');
    -- synopsys translate_on
end conv_pkg;
package body conv_pkg is
    function std_logic_vector_to_unsigned(inp : std_logic_vector)
        return unsigned
    is
    begin
        return unsigned (inp);
    end;
    function unsigned_to_std_logic_vector(inp : unsigned)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function std_logic_vector_to_signed(inp : std_logic_vector)
        return signed
    is
    begin
        return  signed (inp);
    end;
    function signed_to_std_logic_vector(inp : signed)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function unsigned_to_signed (inp : unsigned)
        return signed
    is
    begin
        return signed(std_logic_vector(inp));
    end;
    function signed_to_unsigned (inp : signed)
        return unsigned
    is
    begin
        return unsigned(std_logic_vector(inp));
    end;
    function pos(inp : std_logic_vector; arith : INTEGER)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            return true;
        else
            if vec(width-1) = '0' then
                return true;
            else
                return false;
            end if;
        end if;
        return true;
    end;
    function max_signed(width : INTEGER)
        return std_logic_vector
    is
        variable ones : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        ones := (others => '1');
        result(width-1) := '0';
        result(width-2 downto 0) := ones;
        return result;
    end;
    function min_signed(width : INTEGER)
        return std_logic_vector
    is
        variable zeros : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        zeros := (others => '0');
        result(width-1) := '1';
        result(width-2 downto 0) := zeros;
        return result;
    end;
    function and_reduce(inp: std_logic_vector) return std_logic
    is
        variable result: std_logic;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := vec(0);
        if width > 1 then
            for i in 1 to width-1 loop
                result := result and vec(i);
            end loop;
        end if;
        return result;
    end;
    function all_same(inp: std_logic_vector) return boolean
    is
        variable result: boolean;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := true;
        if width > 0 then
            for i in 1 to width-1 loop
                if vec(i) /= vec(0) then
                    result := false;
                end if;
            end loop;
        end if;
        return result;
    end;
    function all_zeros(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable zero : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        zero := (others => '0');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(zero)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function is_point_five(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (width > 1) then
           if ((vec(width-1) = '1') and (all_zeros(vec(width-2 downto 0)) = true)) then
               result := true;
           else
               result := false;
           end if;
        else
           if (vec(width-1) = '1') then
               result := true;
           else
               result := false;
           end if;
        end if;
        return result;
    end;
    function all_ones(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable one : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        one := (others => '1');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(one)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function full_precision_num_width(quantization, overflow, old_width,
                                      old_bin_pt, old_arith,
                                      new_width, new_bin_pt, new_arith : INTEGER)
        return integer
    is
        variable result : integer;
    begin
        result := old_width + 2;
        return result;
    end;
    function quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                 old_arith, new_width, new_bin_pt, new_arith
                                 : INTEGER)
        return integer
    is
        variable right_of_dp, left_of_dp, result : integer;
    begin
        right_of_dp := max(new_bin_pt, old_bin_pt);
        left_of_dp := max((new_width - new_bin_pt), (old_width - old_bin_pt));
        result := (old_width + 2) + (new_bin_pt - old_bin_pt);
        return result;
    end;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector
    is
        constant fp_width : integer :=
            full_precision_num_width(quantization, overflow, old_width,
                                     old_bin_pt, old_arith, new_width,
                                     new_bin_pt, new_arith);
        constant fp_bin_pt : integer := old_bin_pt;
        constant fp_arith : integer := old_arith;
        variable full_precision_result : std_logic_vector(fp_width-1 downto 0);
        constant q_width : integer :=
            quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith);
        constant q_bin_pt : integer := new_bin_pt;
        constant q_arith : integer := old_arith;
        variable quantized_result : std_logic_vector(q_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result := (others => '0');
        full_precision_result := cast(inp, old_bin_pt, fp_width, fp_bin_pt,
                                      fp_arith);
        if (quantization = xlRound) then
            quantized_result := round_towards_inf(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        elsif (quantization = xlRoundBanker) then
            quantized_result := round_towards_even(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        else
            quantized_result := trunc(full_precision_result, fp_width, fp_bin_pt,
                                      fp_arith, q_width, q_bin_pt, q_arith);
        end if;
        if (overflow = xlSaturate) then
            result := saturation_arith(quantized_result, q_width, q_bin_pt,
                                       q_arith, new_width, new_bin_pt, new_arith);
        else
             result := wrap_arith(quantized_result, q_width, q_bin_pt, q_arith,
                                  new_width, new_bin_pt, new_arith);
        end if;
        return result;
    end;
    function cast (inp : std_logic_vector; old_bin_pt, new_width,
                   new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        constant left_of_dp : integer := (new_width - new_bin_pt)
                                         - (old_width - old_bin_pt);
        constant right_of_dp : integer := (new_bin_pt - old_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable j   : integer;
    begin
        vec := inp;
        for i in new_width-1 downto 0 loop
            j := i - right_of_dp;
            if ( j > old_width-1) then
                if (new_arith = xlUnsigned) then
                    result(i) := '0';
                else
                    result(i) := vec(old_width-1);
                end if;
            elsif ( j >= 0) then
                result(i) := vec(j);
            else
                result(i) := '0';
            end if;
        end loop;
        return result;
    end;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant q_width : integer := quotient'length;
        constant f_width : integer := fraction'length;
        constant vec_MSB : integer := q_width+f_width-1;
        constant result_MSB : integer := q_width+fraction_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := ( quotient & fraction );
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant inp_width : integer := inp'length;
        constant vec_MSB : integer := inp_width-1;
        constant result_MSB : integer := result_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := inp;
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
      return std_logic_vector
    is
    begin
        return inp(upper downto lower);
    end;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function s2s_cast (inp : signed; old_bin_pt, new_width, new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function s2u_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function u2s_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2u_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2v_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned);
    end;
    function s2v_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned);
    end;
    function boolean_to_signed (inp : boolean; width : integer)
        return signed
    is
        variable result : signed(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_unsigned (inp : boolean; width : integer)
        return unsigned
    is
        variable result : unsigned(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result(0) := inp;
        return result;
    end;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                                new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                result := zero_ext(vec(old_width-1 downto right_of_dp), new_width);
            else
                result := sign_ext(vec(old_width-1 downto right_of_dp), new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                result := zero_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            else
                result := sign_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            end if;
        end if;
        return result;
    end;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (new_arith = xlSigned) then
            if (vec(old_width-1) = '0') then
                one_or_zero(0) := '1';
            end if;
            if (right_of_dp >= 2) and (right_of_dp <= old_width) then
                if (all_zeros(vec(right_of_dp-2 downto 0)) = false) then
                    one_or_zero(0) := '1';
                end if;
            end if;
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                if vec(right_of_dp-1) = '0' then
                    one_or_zero(0) := '0';
                end if;
            else
                one_or_zero(0) := '0';
            end if;
        else
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (right_of_dp >= 1) and (right_of_dp <= old_width) then
            if (is_point_five(vec(right_of_dp-1 downto 0)) = false) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            else
                one_or_zero(0) :=  vec(right_of_dp);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER)
        return std_logic_vector
    is
        constant left_of_dp : integer := (old_width - old_bin_pt) -
                                         (new_width - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable overflow : boolean;
    begin
        vec := inp;
        overflow := true;
        result := (others => '0');
        if (new_width >= old_width) then
            overflow := false;
        end if;
        if ((old_arith = xlSigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if (old_arith = xlSigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    if (vec(new_width-1) = '0') then
                        overflow := false;
                    end if;
                end if;
            end if;
        end if;
        if (old_arith = xlUnsigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    overflow := false;
                end if;
            end if;
        end if;
        if ((old_arith = xlUnsigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if overflow then
            if new_arith = xlSigned then
                if vec(old_width-1) = '0' then
                    result := max_signed(new_width);
                else
                    result := min_signed(new_width);
                end if;
            else
                if ((old_arith = xlSigned) and vec(old_width-1) = '1') then
                    result := (others => '0');
                else
                    result := (others => '1');
                end if;
            end if;
        else
            if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
                if (vec(old_width-1) = '1') then
                    vec := (others => '0');
                end if;
            end if;
            if new_width <= old_width then
                result := vec(new_width-1 downto 0);
            else
                if new_arith = xlUnsigned then
                    result := zero_ext(vec, new_width);
                else
                    result := sign_ext(vec, new_width);
                end if;
            end if;
        end if;
        return result;
    end;
   function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                       old_arith, new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
        variable result_arith : integer;
    begin
        if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
            result_arith := xlSigned;
        end if;
        result := cast(inp, old_bin_pt, new_width, new_bin_pt, result_arith);
        return result;
    end;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER is
    begin
        return max(a_bin_pt, b_bin_pt);
    end;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER is
    begin
        return  max(a_width - a_bin_pt, b_width - b_bin_pt);
    end;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
        constant pad_pos : integer := new_width - orig_width - 1;
    begin
        vec := inp;
        pos := new_width-1;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pad_pos >= 0 then
                for i in pad_pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := vec(old_width-1);
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := '0';
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result(0) := inp;
        for i in new_width-1 downto 1 loop
            result(i) := '0';
        end loop;
        return result;
    end;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            result := zero_ext(vec, new_width);
        else
            result := sign_ext(vec, new_width);
        end if;
        return result;
    end;
    function pad_LSB(inp : std_logic_vector; new_width, arith: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
    begin
        vec := inp;
        pos := new_width-1;
        if (arith = xlUnsigned) then
            result(pos) := '0';
            pos := pos - 1;
        else
            result(pos) := vec(orig_width-1);
            pos := pos - 1;
        end if;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pos >= 0 then
                for i in pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                         new_width: INTEGER)
        return std_logic_vector
    is
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable padded_inp : std_logic_vector((old_width + delta)-1  downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if delta > 0 then
            padded_inp := pad_LSB(vec, old_width+delta);
            result := extend_MSB(padded_inp, new_width, new_arith);
        else
            result := extend_MSB(vec, new_width, new_arith);
        end if;
        return result;
    end;
    function max(L, R: INTEGER) return INTEGER is
    begin
        if L > R then
            return L;
        else
            return R;
        end if;
    end;
    function min(L, R: INTEGER) return INTEGER is
    begin
        if L < R then
            return L;
        else
            return R;
        end if;
    end;
    function "="(left,right: STRING) return boolean is
    begin
        if (left'length /= right'length) then
            return false;
        else
            test : for i in 1 to left'length loop
                if left(i) /= right(i) then
                    return false;
                end if;
            end loop test;
            return true;
        end if;
    end;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'X' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_binary_string_undefined (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'U' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_XorU(inp : std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 0 to width-1 loop
            if (vec(i) = 'U') or (vec(i) = 'X') then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real
    is
        variable  vec : std_logic_vector(inp'length-1 downto 0);
        variable result, shift_val, undefined_real : real;
        variable neg_num : boolean;
    begin
        vec := inp;
        result := 0.0;
        neg_num := false;
        if vec(inp'length-1) = '1' then
            neg_num := true;
        end if;
        for i in 0 to inp'length-1 loop
            if  vec(i) = 'U' or vec(i) = 'X' then
                return undefined_real;
            end if;
            if arith = xlSigned then
                if neg_num then
                    if vec(i) = '0' then
                        result := result + 2.0**i;
                    end if;
                else
                    if vec(i) = '1' then
                        result := result + 2.0**i;
                    end if;
                end if;
            else
                if vec(i) = '1' then
                    result := result + 2.0**i;
                end if;
            end if;
        end loop;
        if arith = xlSigned then
            if neg_num then
                result := result + 1.0;
                result := result * (-1.0);
            end if;
        end if;
        shift_val := 2.0**(-1*bin_pt);
        result := result * shift_val;
        return result;
    end;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real
    is
        variable result : real := 0.0;
    begin
        if inp = '1' then
            result := 1.0;
        end if;
        if arith = xlSigned then
            assert false
                report "It doesn't make sense to convert a 1 bit number to a signed real.";
        end if;
        return result;
    end;
    -- synopsys translate_on
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
    begin
        if (arith = xlSigned) then
            signed_val := to_signed(inp, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(inp, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer
    is
        constant width : integer := inp'length;
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
        variable result : integer;
    begin
        if (arith = xlSigned) then
            signed_val := std_logic_vector_to_signed(inp);
            result := to_integer(signed_val);
        else
            unsigned_val := std_logic_vector_to_unsigned(inp);
            result := to_integer(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer
    is
    begin
        if inp = '1' then
            return 1;
        else
            return 0;
        end if;
    end;
    function makeZeroBinStr (width : integer) return STRING is
        variable result : string(1 to width+3);
    begin
        result(1) := '0';
        result(2) := 'b';
        for i in 3 to width+2 loop
            result(i) := '0';
        end loop;
        result(width+3) := '.';
        return result;
    end;
    -- synopsys translate_off
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
    begin
        result := (others => '0');
        return result;
    end;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable real_val : real;
        variable int_val : integer;
        variable result : std_logic_vector(width-1 downto 0) := (others => '0');
        variable unsigned_val : unsigned(width-1 downto 0) := (others => '0');
        variable signed_val : signed(width-1 downto 0) := (others => '0');
    begin
        real_val := inp;
        int_val := integer(real_val * 2.0**(bin_pt));
        if (arith = xlSigned) then
            signed_val := to_signed(int_val, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(int_val, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    -- synopsys translate_on
    function valid_bin_string (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
    begin
        vec := inp;
        if (vec(1) = '0' and vec(2) = 'b') then
            return true;
        else
            return false;
        end if;
    end;
    function hex_string_to_std_logic_vector(inp: string; width : integer)
        return std_logic_vector is
        constant strlen       : integer := inp'LENGTH;
        variable result       : std_logic_vector(width-1 downto 0);
        variable bitval       : std_logic_vector((strlen*4)-1 downto 0);
        variable posn         : integer;
        variable ch           : character;
        variable vec          : string(1 to strlen);
    begin
        vec := inp;
        result := (others => '0');
        posn := (strlen*4)-1;
        for i in 1 to strlen loop
            ch := vec(i);
            case ch is
                when '0' => bitval(posn downto posn-3) := "0000";
                when '1' => bitval(posn downto posn-3) := "0001";
                when '2' => bitval(posn downto posn-3) := "0010";
                when '3' => bitval(posn downto posn-3) := "0011";
                when '4' => bitval(posn downto posn-3) := "0100";
                when '5' => bitval(posn downto posn-3) := "0101";
                when '6' => bitval(posn downto posn-3) := "0110";
                when '7' => bitval(posn downto posn-3) := "0111";
                when '8' => bitval(posn downto posn-3) := "1000";
                when '9' => bitval(posn downto posn-3) := "1001";
                when 'A' | 'a' => bitval(posn downto posn-3) := "1010";
                when 'B' | 'b' => bitval(posn downto posn-3) := "1011";
                when 'C' | 'c' => bitval(posn downto posn-3) := "1100";
                when 'D' | 'd' => bitval(posn downto posn-3) := "1101";
                when 'E' | 'e' => bitval(posn downto posn-3) := "1110";
                when 'F' | 'f' => bitval(posn downto posn-3) := "1111";
                when others => bitval(posn downto posn-3) := "XXXX";
                               -- synopsys translate_off
                               ASSERT false
                                   REPORT "Invalid hex value" SEVERITY ERROR;
                               -- synopsys translate_on
            end case;
            posn := posn - 4;
        end loop;
        if (width <= strlen*4) then
            result :=  bitval(width-1 downto 0);
        else
            result((strlen*4)-1 downto 0) := bitval;
        end if;
        return result;
    end;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector
    is
        variable pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(inp'length-1 downto 0);
    begin
        vec := inp;
        pos := inp'length-1;
        result := (others => '0');
        for i in 1 to vec'length loop
            -- synopsys translate_off
            if (pos < 0) and (vec(i) = '0' or vec(i) = '1' or vec(i) = 'X' or vec(i) = 'U')  then
                assert false
                    report "Input string is larger than output std_logic_vector. Truncating output.";
                return result;
            end if;
            -- synopsys translate_on
            if vec(i) = '0' then
                result(pos) := '0';
                pos := pos - 1;
            end if;
            if vec(i) = '1' then
                result(pos) := '1';
                pos := pos - 1;
            end if;
            -- synopsys translate_off
            if (vec(i) = 'X' or vec(i) = 'U') then
                result(pos) := 'U';
                pos := pos - 1;
            end if;
            -- synopsys translate_on
        end loop;
        return result;
    end;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector
    is
        constant str_width : integer := width + 4;
        constant inp_len : integer := inp'length;
        constant num_elements : integer := (inp_len + 1)/str_width;
        constant reverse_index : integer := (num_elements-1) - index;
        variable left_pos : integer;
        variable right_pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := (others => '0');
        if (reverse_index = 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := 1;
            right_pos := width + 3;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        if (reverse_index > 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := (reverse_index * str_width) + 1;
            right_pos := left_pos + width + 2;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        return result;
    end;
   -- synopsys translate_off
    function std_logic_vector_to_bin_string(inp : std_logic_vector)
        return string
    is
        variable vec : std_logic_vector(1 to inp'length);
        variable result : string(vec'range);
    begin
        vec := inp;
        for i in vec'range loop
            result(i) := to_char(vec(i));
        end loop;
        return result;
    end;
    function std_logic_to_bin_string(inp : std_logic)
        return string
    is
        variable result : string(1 to 3);
    begin
        result(1) := '0';
        result(2) := 'b';
        result(3) := to_char(inp);
        return result;
    end;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string
    is
        variable width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable str_pos : integer;
        variable result : string(1 to width+3);
    begin
        vec := inp;
        str_pos := 1;
        result(str_pos) := '0';
        str_pos := 2;
        result(str_pos) := 'b';
        str_pos := 3;
        for i in width-1 downto 0  loop
            if (((width+3) - bin_pt) = str_pos) then
                result(str_pos) := '.';
                str_pos := str_pos + 1;
            end if;
            result(str_pos) := to_char(vec(i));
            str_pos := str_pos + 1;
        end loop;
        if (bin_pt = 0) then
            result(str_pos) := '.';
        end if;
        return result;
    end;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string
    is
        variable result : string(1 to width);
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := real_to_std_logic_vector(inp, width, bin_pt, arith);
        result := std_logic_vector_to_bin_string(vec);
        return result;
    end;
    function real_to_string (inp : real) return string
    is
        variable result : string(1 to display_precision) := (others => ' ');
    begin
        result(real'image(inp)'range) := real'image(inp);
        return result;
    end;
    -- synopsys translate_on
end conv_pkg;

-------------------------------------------------------------------
-- System Generator version 13.2 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity srl17e is
    generic (width : integer:=16;
             latency : integer :=8);
    port (clk   : in std_logic;
          ce    : in std_logic;
          d     : in std_logic_vector(width-1 downto 0);
          q     : out std_logic_vector(width-1 downto 0));
end srl17e;
architecture structural of srl17e is
    component SRL16E
        port (D   : in STD_ULOGIC;
              CE  : in STD_ULOGIC;
              CLK : in STD_ULOGIC;
              A0  : in STD_ULOGIC;
              A1  : in STD_ULOGIC;
              A2  : in STD_ULOGIC;
              A3  : in STD_ULOGIC;
              Q   : out STD_ULOGIC);
    end component;
    attribute syn_black_box of SRL16E : component is true;
    attribute fpga_dont_touch of SRL16E : component is "true";
    component FDE
        port(
            Q  :        out   STD_ULOGIC;
            D  :        in    STD_ULOGIC;
            C  :        in    STD_ULOGIC;
            CE :        in    STD_ULOGIC);
    end component;
    attribute syn_black_box of FDE : component is true;
    attribute fpga_dont_touch of FDE : component is "true";
    constant a : std_logic_vector(4 downto 0) :=
        integer_to_std_logic_vector(latency-2,5,xlSigned);
    signal d_delayed : std_logic_vector(width-1 downto 0);
    signal srl16_out : std_logic_vector(width-1 downto 0);
begin
    d_delayed <= d after 200 ps;
    reg_array : for i in 0 to width-1 generate
        srl16_used: if latency > 1 generate
            u1 : srl16e port map(clk => clk,
                                 d => d_delayed(i),
                                 q => srl16_out(i),
                                 ce => ce,
                                 a0 => a(0),
                                 a1 => a(1),
                                 a2 => a(2),
                                 a3 => a(3));
        end generate;
        srl16_not_used: if latency <= 1 generate
            srl16_out(i) <= d_delayed(i);
        end generate;
        fde_used: if latency /= 0  generate
            u2 : fde port map(c => clk,
                              d => srl16_out(i),
                              q => q(i),
                              ce => ce);
        end generate;
        fde_not_used: if latency = 0  generate
            q(i) <= srl16_out(i);
        end generate;
    end generate;
 end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg;
architecture structural of synth_reg is
    component srl17e
        generic (width : integer:=16;
                 latency : integer :=8);
        port (clk : in std_logic;
              ce  : in std_logic;
              d   : in std_logic_vector(width-1 downto 0);
              q   : out std_logic_vector(width-1 downto 0));
    end component;
    function calc_num_srl17es (latency : integer)
        return integer
    is
        variable remaining_latency : integer;
        variable result : integer;
    begin
        result := latency / 17;
        remaining_latency := latency - (result * 17);
        if (remaining_latency /= 0) then
            result := result + 1;
        end if;
        return result;
    end;
    constant complete_num_srl17es : integer := latency / 17;
    constant num_srl17es : integer := calc_num_srl17es(latency);
    constant remaining_latency : integer := latency - (complete_num_srl17es * 17);
    type register_array is array (num_srl17es downto 0) of
        std_logic_vector(width-1 downto 0);
    signal z : register_array;
begin
    z(0) <= i;
    complete_ones : if complete_num_srl17es > 0 generate
        srl17e_array: for i in 0 to complete_num_srl17es-1 generate
            delay_comp : srl17e
                generic map (width => width,
                             latency => 17)
                port map (clk => clk,
                          ce  => ce,
                          d       => z(i),
                          q       => z(i+1));
        end generate;
    end generate;
    partial_one : if remaining_latency > 0 generate
        last_srl17e : srl17e
            generic map (width => width,
                         latency => remaining_latency)
            port map (clk => clk,
                      ce  => ce,
                      d   => z(num_srl17es-1),
                      q   => z(num_srl17es));
    end generate;
    o <= z(num_srl17es);
end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg_reg;
architecture behav of synth_reg_reg is
  type reg_array_type is array (latency-1 downto 0) of std_logic_vector(width -1 downto 0);
  signal reg_bank : reg_array_type := (others => (others => '0'));
  signal reg_bank_in : reg_array_type := (others => (others => '0'));
  attribute syn_allow_retiming : boolean;
  attribute syn_srlstyle : string;
  attribute syn_allow_retiming of reg_bank : signal is true;
  attribute syn_allow_retiming of reg_bank_in : signal is true;
  attribute syn_srlstyle of reg_bank : signal is "registers";
  attribute syn_srlstyle of reg_bank_in : signal is "registers";
begin
  latency_eq_0: if latency = 0 generate
    o <= i;
  end generate latency_eq_0;
  latency_gt_0: if latency >= 1 generate
    o <= reg_bank(latency-1);
    reg_bank_in(0) <= i;
    loop_gen: for idx in latency-2 downto 0 generate
      reg_bank_in(idx+1) <= reg_bank(idx);
    end generate loop_gen;
    sync_loop: for sync_idx in latency-1 downto 0 generate
      sync_proc: process (clk)
      begin
        if clk'event and clk = '1' then
          if clr = '1' then
            reg_bank_in <= (others => (others => '0'));
          elsif ce = '1'  then
            reg_bank(sync_idx) <= reg_bank_in(sync_idx);
          end if;
        end if;
      end process sync_proc;
    end generate sync_loop;
  end generate latency_gt_0;
end behav;

-------------------------------------------------------------------
-- System Generator version 13.2 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity single_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000"
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end single_reg_w_init;
architecture structural of single_reg_w_init is
  function build_init_const(width: integer;
                            init_index: integer;
                            init_value: bit_vector)
    return std_logic_vector
  is
    variable result: std_logic_vector(width - 1 downto 0);
  begin
    if init_index = 0 then
      result := (others => '0');
    elsif init_index = 1 then
      result := (others => '0');
      result(0) := '1';
    else
      result := to_stdlogicvector(init_value);
    end if;
    return result;
  end;
  component fdre
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      r: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdre: component is true;
  attribute fpga_dont_touch of fdre: component is "true";
  component fdse
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      s: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdse: component is true;
  attribute fpga_dont_touch of fdse: component is "true";
  constant init_const: std_logic_vector(width - 1 downto 0)
    := build_init_const(width, init_index, init_value);
begin
  fd_prim_array: for index in 0 to width - 1 generate
    bit_is_0: if (init_const(index) = '0') generate
      fdre_comp: fdre
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          r => clr
        );
    end generate;
    bit_is_1: if (init_const(index) = '1') generate
      fdse_comp: fdse
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          s => clr
        );
    end generate;
  end generate;
end architecture structural;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000";
    latency: integer := 1
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end synth_reg_w_init;
architecture structural of synth_reg_w_init is
  component single_reg_w_init
    generic (
      width: integer := 8;
      init_index: integer := 0;
      init_value: bit_vector := b"0000"
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  signal dly_i: std_logic_vector((latency + 1) * width - 1 downto 0);
  signal dly_clr: std_logic;
begin
  latency_eq_0: if (latency = 0) generate
    o <= i;
  end generate;
  latency_gt_0: if (latency >= 1) generate
    dly_i((latency + 1) * width - 1 downto latency * width) <= i
      after 200 ps;
    dly_clr <= clr after 200 ps;
    fd_array: for index in latency downto 1 generate
       reg_comp: single_reg_w_init
          generic map (
            width => width,
            init_index => init_index,
            init_value => init_value
          )
          port map (
            clk => clk,
            i => dly_i((index + 1) * width - 1 downto index * width),
            o => dly_i(index * width - 1 downto (index - 1) * width),
            ce => ce,
            clr => dly_clr
          );
    end generate;
    o <= dly_i(width - 1 downto 0);
  end generate;
end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_6293007044 is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_6293007044;


architecture behavior of constant_6293007044 is
begin
  op <= "1";
end behavior;


-------------------------------------------------------------------
-- System Generator version 13.2 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;
entity xlcounter_limit is
  generic (
    core_name0: string := "";
    op_width: integer := 5;
    op_arith: integer := xlSigned;
    cnt_63_48: integer:= 0;
    cnt_47_32: integer:= 0;
    cnt_31_16: integer:= 0;
    cnt_15_0: integer:= 0;
    count_limited: integer := 0
  );
  port (
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    op: out std_logic_vector(op_width - 1 downto 0);
    up: in std_logic_vector(0 downto 0) := (others => '0');
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0)
  );
end xlcounter_limit ;
architecture behavior of xlcounter_limit is
  signal high_cnt_to: std_logic_vector(31 downto 0);
  signal low_cnt_to: std_logic_vector(31 downto 0);
  signal cnt_to: std_logic_vector(63 downto 0);
  signal core_sinit, op_thresh0, core_ce: std_logic;
  signal rst_overrides_en: std_logic;
  signal op_net: std_logic_vector(op_width - 1 downto 0);
  -- synopsys translate_off
  signal real_op : real;
   -- synopsys translate_on
  function equals(op, cnt_to : std_logic_vector; width, arith : integer)
    return std_logic
  is
    variable signed_op, signed_cnt_to : signed (width - 1 downto 0);
    variable unsigned_op, unsigned_cnt_to : unsigned (width - 1 downto 0);
    variable result : std_logic;
  begin
    -- synopsys translate_off
    if ((is_XorU(op)) or (is_XorU(cnt_to)) ) then
      result := '0';
      return result;
    end if;
    -- synopsys translate_on
    if (op = cnt_to) then
      result := '1';
    else
      result := '0';
    end if;
    return result;
  end;
  component cntr_11_0_df2bb90b8fe02ecf
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_df2bb90b8fe02ecf:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_df2bb90b8fe02ecf:
    component is "true";
  attribute box_type of cntr_11_0_df2bb90b8fe02ecf:
    component  is "black_box";
  component cntr_11_0_b9730cea34623a8b
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_b9730cea34623a8b:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_b9730cea34623a8b:
    component is "true";
  attribute box_type of cntr_11_0_b9730cea34623a8b:
    component  is "black_box";
  component cntr_11_0_9adf5a9f785e3fb8
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_9adf5a9f785e3fb8:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_9adf5a9f785e3fb8:
    component is "true";
  attribute box_type of cntr_11_0_9adf5a9f785e3fb8:
    component  is "black_box";
  component cntr_11_0_20f60aed18821bec
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_20f60aed18821bec:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_20f60aed18821bec:
    component is "true";
  attribute box_type of cntr_11_0_20f60aed18821bec:
    component  is "black_box";
  component cntr_11_0_35c81e3155ab2f6f
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_35c81e3155ab2f6f:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_35c81e3155ab2f6f:
    component is "true";
  attribute box_type of cntr_11_0_35c81e3155ab2f6f:
    component  is "black_box";
  component cntr_11_0_c84d65465c59fb07
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_c84d65465c59fb07:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_c84d65465c59fb07:
    component is "true";
  attribute box_type of cntr_11_0_c84d65465c59fb07:
    component  is "black_box";
  component cntr_11_0_05042eb8e8f7781c
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_05042eb8e8f7781c:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_05042eb8e8f7781c:
    component is "true";
  attribute box_type of cntr_11_0_05042eb8e8f7781c:
    component  is "black_box";
  component cntr_11_0_813142b9460b2f27
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_813142b9460b2f27:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_813142b9460b2f27:
    component is "true";
  attribute box_type of cntr_11_0_813142b9460b2f27:
    component  is "black_box";
-- synopsys translate_off
  constant zeroVec : std_logic_vector(op_width - 1 downto 0) := (others => '0');
  constant oneVec : std_logic_vector(op_width - 1 downto 0) := (others => '1');
  constant zeroStr : string(1 to op_width) :=
    std_logic_vector_to_bin_string(zeroVec);
  constant oneStr : string(1 to op_width) :=
    std_logic_vector_to_bin_string(oneVec);
-- synopsys translate_on
begin
  -- synopsys translate_off
  -- synopsys translate_on
  cnt_to(63 downto 48) <= integer_to_std_logic_vector(cnt_63_48, 16, op_arith);
  cnt_to(47 downto 32) <= integer_to_std_logic_vector(cnt_47_32, 16, op_arith);
  cnt_to(31 downto 16) <= integer_to_std_logic_vector(cnt_31_16, 16, op_arith);
  cnt_to(15 downto 0) <= integer_to_std_logic_vector(cnt_15_0, 16, op_arith);
  op <= op_net;
  core_ce <= ce and en(0);
  rst_overrides_en <= rst(0) or en(0);
  limit : if (count_limited = 1) generate
    eq_cnt_to : process (op_net, cnt_to)
    begin
      op_thresh0 <= equals(op_net, cnt_to(op_width - 1 downto 0),
                     op_width, op_arith);
    end process;
    core_sinit <= (op_thresh0 or clr or rst(0)) and ce and rst_overrides_en;
  end generate;
  no_limit : if (count_limited = 0) generate
    core_sinit <= (clr or rst(0)) and ce and rst_overrides_en;
  end generate;
  comp0: if ((core_name0 = "cntr_11_0_df2bb90b8fe02ecf")) generate
    core_instance0: cntr_11_0_df2bb90b8fe02ecf
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp1: if ((core_name0 = "cntr_11_0_b9730cea34623a8b")) generate
    core_instance1: cntr_11_0_b9730cea34623a8b
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp2: if ((core_name0 = "cntr_11_0_9adf5a9f785e3fb8")) generate
    core_instance2: cntr_11_0_9adf5a9f785e3fb8
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp3: if ((core_name0 = "cntr_11_0_20f60aed18821bec")) generate
    core_instance3: cntr_11_0_20f60aed18821bec
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp4: if ((core_name0 = "cntr_11_0_35c81e3155ab2f6f")) generate
    core_instance4: cntr_11_0_35c81e3155ab2f6f
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp5: if ((core_name0 = "cntr_11_0_c84d65465c59fb07")) generate
    core_instance5: cntr_11_0_c84d65465c59fb07
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp6: if ((core_name0 = "cntr_11_0_05042eb8e8f7781c")) generate
    core_instance6: cntr_11_0_05042eb8e8f7781c
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp7: if ((core_name0 = "cntr_11_0_813142b9460b2f27")) generate
    core_instance7: cntr_11_0_813142b9460b2f27
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
end  behavior;

-------------------------------------------------------------------
-- System Generator version 13.2 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlspram is
  generic (
    core_name0: string := "";
    c_width: integer := 12;
    c_address_width: integer := 4;
    latency: integer := 1
    );
  port (
    data_in: in std_logic_vector(c_width - 1 downto 0);
    addr: in std_logic_vector(c_address_width - 1 downto 0);
    we: in std_logic_vector(0 downto 0);
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0);
    ce: in std_logic;
    clk: in std_logic;
    data_out: out std_logic_vector(c_width - 1 downto 0)
  );
end xlspram ;
architecture behavior of xlspram is
  component synth_reg
    generic (
      width: integer;
      latency: integer
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  signal core_data_out, dly_data_out: std_logic_vector(c_width - 1 downto 0);
  signal core_we, core_ce, sinit: std_logic;
  component bmg_62_f1ca57bbf79f0673
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_f1ca57bbf79f0673:
    component is true;
  attribute fpga_dont_touch of bmg_62_f1ca57bbf79f0673:
    component is "true";
  attribute box_type of bmg_62_f1ca57bbf79f0673:
    component  is "black_box";
  component bmg_62_936eb415a1e57c2f
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_936eb415a1e57c2f:
    component is true;
  attribute fpga_dont_touch of bmg_62_936eb415a1e57c2f:
    component is "true";
  attribute box_type of bmg_62_936eb415a1e57c2f:
    component  is "black_box";
  component bmg_62_51321cc7c8e9865c
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_51321cc7c8e9865c:
    component is true;
  attribute fpga_dont_touch of bmg_62_51321cc7c8e9865c:
    component is "true";
  attribute box_type of bmg_62_51321cc7c8e9865c:
    component  is "black_box";
  component bmg_62_665c019c1c5f5676
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_665c019c1c5f5676:
    component is true;
  attribute fpga_dont_touch of bmg_62_665c019c1c5f5676:
    component is "true";
  attribute box_type of bmg_62_665c019c1c5f5676:
    component  is "black_box";
  component bmg_62_82b2485d32f76714
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_82b2485d32f76714:
    component is true;
  attribute fpga_dont_touch of bmg_62_82b2485d32f76714:
    component is "true";
  attribute box_type of bmg_62_82b2485d32f76714:
    component  is "black_box";
  component bmg_62_de80a27a29f3ada6
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_de80a27a29f3ada6:
    component is true;
  attribute fpga_dont_touch of bmg_62_de80a27a29f3ada6:
    component is "true";
  attribute box_type of bmg_62_de80a27a29f3ada6:
    component  is "black_box";
  component bmg_62_fd6c0fe64ab6dcd2
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_fd6c0fe64ab6dcd2:
    component is true;
  attribute fpga_dont_touch of bmg_62_fd6c0fe64ab6dcd2:
    component is "true";
  attribute box_type of bmg_62_fd6c0fe64ab6dcd2:
    component  is "black_box";
  component bmg_62_66064026d4816b4e
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_66064026d4816b4e:
    component is true;
  attribute fpga_dont_touch of bmg_62_66064026d4816b4e:
    component is "true";
  attribute box_type of bmg_62_66064026d4816b4e:
    component  is "black_box";
begin
  data_out <= dly_data_out;
  core_we <= we(0);
  core_ce <= ce and en(0);
  sinit <= rst(0) and ce;
  comp0: if ((core_name0 = "bmg_62_f1ca57bbf79f0673")) generate
    core_instance0: bmg_62_f1ca57bbf79f0673
      port map (
                                        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out
      );
  end generate;
  comp1: if ((core_name0 = "bmg_62_936eb415a1e57c2f")) generate
    core_instance1: bmg_62_936eb415a1e57c2f
      port map (
                                        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out
      );
  end generate;
  comp2: if ((core_name0 = "bmg_62_51321cc7c8e9865c")) generate
    core_instance2: bmg_62_51321cc7c8e9865c
      port map (
                                        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out
      );
  end generate;
  comp3: if ((core_name0 = "bmg_62_665c019c1c5f5676")) generate
    core_instance3: bmg_62_665c019c1c5f5676
      port map (
                                        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out
      );
  end generate;
  comp4: if ((core_name0 = "bmg_62_82b2485d32f76714")) generate
    core_instance4: bmg_62_82b2485d32f76714
      port map (
                                        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out
      );
  end generate;
  comp5: if ((core_name0 = "bmg_62_de80a27a29f3ada6")) generate
    core_instance5: bmg_62_de80a27a29f3ada6
      port map (
                                        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out
      );
  end generate;
  comp6: if ((core_name0 = "bmg_62_fd6c0fe64ab6dcd2")) generate
    core_instance6: bmg_62_fd6c0fe64ab6dcd2
      port map (
                                        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out
      );
  end generate;
  comp7: if ((core_name0 = "bmg_62_66064026d4816b4e")) generate
    core_instance7: bmg_62_66064026d4816b4e
      port map (
                                        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out
      );
  end generate;
  latency_test: if (latency > 1) generate
    reg: synth_reg
      generic map (
        width => c_width,
        latency => latency - 1
      )
      port map (
        i => core_data_out,
        ce => core_ce,
        clr => '0',
        clk => clk,
        o => dly_data_out
      );
  end generate;
  latency_1: if (latency <= 1) generate
    dly_data_out <= core_data_out;
  end generate;
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_9a0fa0f632 is
  port (
    input_port : in std_logic_vector((18 - 1) downto 0);
    output_port : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_9a0fa0f632;


architecture behavior of reinterpret_9a0fa0f632 is
  signal input_port_1_40: unsigned((18 - 1) downto 0);
  signal output_port_5_5_force: signed((18 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end behavior;


-------------------------------------------------------------------
-- System Generator version 13.2 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlslice is
    generic (
        new_msb      : integer := 9;
        new_lsb      : integer := 1;
        x_width      : integer := 16;
        y_width      : integer := 8);
    port (
        x : in std_logic_vector (x_width-1 downto 0);
        y : out std_logic_vector (y_width-1 downto 0));
end xlslice;
architecture behavior of xlslice is
begin
    y <= x(new_msb downto new_lsb);
end  behavior;

-------------------------------------------------------------------
-- System Generator version 13.2 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
entity generatePowerEfficientEnable is
  generic (
    use_reg : integer := 0
  );
  port (
    cereg : in std_logic;
    ce : in std_logic;
    en : in std_logic;
    internal_cereg : out std_logic
  );
end  generatePowerEfficientEnable;
architecture structural of generatePowerEfficientEnable is
begin
using_reg : if (use_reg = 1)
generate
  internal_cereg <= cereg and ce and en;
end generate;
not_using_reg : if (use_reg /= 1)
generate
  internal_cereg <= '0';
end generate;
end structural;
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
-- synopsys translate_off
library simprim;
use simprim.VPACKAGE.all;
-- synopsys translate_on
entity xldsp48e is
  generic (
        carryout_width  : integer               := 1;
        alumodereg      : integer               := 1;
        areg            : integer               := 1;
        use_c_port      : integer              := 1;
        use_op          : integer               := 0;
        autoreset_pattern_detect                : boolean               := false;
        autoreset_pattern_detect_optinv         : string                := "MATCH";
        a_input         : string                := "DIRECT";
            acascreg        : integer           := 0;
        bcascreg        : integer               := 1;
        breg            : integer               := 1;
        b_input         : string                := "DIRECT";
        carryinreg      : integer               := 1;
        carryinselreg   : integer               := 1;
        creg            : integer               := 1;
        mask            : bit_vector            := X"3FFFFFFFFFFF";
        mreg            : integer               := 1;
        multcarryinreg  : integer               := 1;
        opmodereg       : integer               := 1;
        pattern         : bit_vector            := X"000000000000";
        preg            : integer               := 1;
        sel_mask        : string                := "MASK";
        sel_pattern     : string                := "PATTERN";
        sel_rounding_mask       : string        := "SEL_MASK";
        use_mult        : string                := "MULT";
        use_pattern_detect      : string        := "NO_PATDET";
        use_simd        : string                := "ONE48"
        );
 port (
        acout              : out std_logic_vector(29 downto 0);
        bcout              : out std_logic_vector(17 downto 0);
        carrycascout       : out std_logic_vector(0 downto 0);
        carryout           : out std_logic_vector(carryout_width-1 downto 0);
        multsignout        : out std_logic_vector(0 downto 0);
        overflow           : out std_logic_vector(0 downto 0);
        p                  : out std_logic_vector(47 downto 0);
        patternbdetect     : out std_logic_vector(0 downto 0);
        patterndetect      : out std_logic_vector(0 downto 0);
        pcout              : out std_logic_vector(47 downto 0);
        underflow          : out std_logic_vector(0 downto 0);
        a                  : in  std_logic_vector(29 downto 0) := (others => '0');
        acin               : in  std_logic_vector(29 downto 0) := (others => '0');
        alumode            : in  std_logic_vector(3 downto 0) := (others => '0');
        b                  : in  std_logic_vector(17 downto 0) := (others => '0');
        bcin               : in  std_logic_vector(17 downto 0) := (others => '0');
        c                  : in  std_logic_vector(47 downto 0) := (others => '0');
        carrycascin        : in  std_logic_vector(0 downto 0) := (others => '0');
        carryin            : in  std_logic_vector(0 downto 0) := (others => '0');
        carryinsel         : in  std_logic_vector(2 downto 0) := (others => '0');
        cea1               : in  std_logic_vector(0 downto 0) := (others => '1');
        cea2               : in  std_logic_vector(0 downto 0) := (others => '1');
        cealumode          : in  std_logic_vector(0 downto 0) := (others => '1');
        ceb1               : in  std_logic_vector(0 downto 0) := (others => '1');
        ceb2               : in  std_logic_vector(0 downto 0) := (others => '1');
        cec                : in  std_logic_vector(0 downto 0) := (others => '1');
        cecarryin          : in  std_logic_vector(0 downto 0) := (others => '1');
        cectrl             : in  std_logic_vector(0 downto 0) := (others => '1');
        cem                : in  std_logic_vector(0 downto 0) := (others => '1');
        cemultcarryin      : in  std_logic_vector(0 downto 0) := (others => '1');
        cep                : in  std_logic_vector(0 downto 0) := (others => '1');
        multsignin         : in  std_logic_vector(0 downto 0) := (others => '0');
        opmode             : in  std_logic_vector(6 downto 0) := (others => '0');
        pcin               : in  std_logic_vector(47 downto 0) := (others => '0');
        rsta               : in  std_logic_vector(0 downto 0) := (others => '0');
        rstcarryin      : in  std_logic_vector(0 downto 0) := (others => '0');
        rstalumode         : in  std_logic_vector(0 downto 0) := (others => '0');
        rstb               : in  std_logic_vector(0 downto 0) := (others => '0');
        rstc               : in  std_logic_vector(0 downto 0) := (others => '0');
        rstctrl            : in  std_logic_vector(0 downto 0) := (others => '0');
        rstm               : in  std_logic_vector(0 downto 0) := (others => '0');
        rstp               : in  std_logic_vector(0 downto 0) := (others => '0');
        op                 : in  std_logic_vector(14 downto 0) := (others => '0');
        clk                : in  std_ulogic;
        en                 : in  std_logic_vector(0 downto 0) := (others => '1');
        rst                : in  std_logic_vector(0 downto 0) := (others => '0');
        ce                 : in  std_logic
      );
end xldsp48e;
architecture behavior of xldsp48e is
component DSP48E
 generic(
        ACASCREG        : integer;
        ALUMODEREG      : integer;
        AREG            : integer;
        AUTORESET_PATTERN_DETECT                : boolean;
        AUTORESET_PATTERN_DETECT_OPTINV         : string;
        A_INPUT         : string;
        BCASCREG        : integer;
        BREG            : integer;
        B_INPUT         : string;
        CARRYINREG      : integer;
        CARRYINSELREG   : integer;
        CREG            : integer;
        MASK            : bit_vector;
        MREG            : integer;
        MULTCARRYINREG  : integer;
        OPMODEREG       : integer;
        PATTERN         : bit_vector;
        PREG            : integer;
        SEL_MASK        : string;
        SEL_PATTERN     : string;
        SEL_ROUNDING_MASK       : string;
        USE_MULT        : string        ;
        USE_PATTERN_DETECT      : string;
        USE_SIMD        : string
        );
  port(
        ACOUT                   : out std_logic_vector(29 downto 0);
        BCOUT                   : out std_logic_vector(17 downto 0);
        CARRYCASCOUT            : out std_ulogic;
        CARRYOUT                : out std_logic_vector(3 downto 0);
        MULTSIGNOUT             : out std_ulogic;
        OVERFLOW                : out std_ulogic;
        P                       : out std_logic_vector(47 downto 0);
        PATTERNBDETECT          : out std_ulogic;
        PATTERNDETECT           : out std_ulogic;
        PCOUT                   : out std_logic_vector(47 downto 0);
        UNDERFLOW               : out std_ulogic;
        A                       : in  std_logic_vector(29 downto 0);
        ACIN                    : in  std_logic_vector(29 downto 0);
        ALUMODE                 : in  std_logic_vector(3 downto 0);
        B                       : in  std_logic_vector(17 downto 0);
        BCIN                    : in  std_logic_vector(17 downto 0);
        C                       : in  std_logic_vector(47 downto 0);
        CARRYCASCIN             : in  std_ulogic;
        CARRYIN                 : in  std_ulogic;
        CARRYINSEL              : in  std_logic_vector(2 downto 0);
        CEA1                    : in  std_ulogic;
        CEA2                    : in  std_ulogic;
        CEALUMODE               : in  std_ulogic;
        CEB1                    : in  std_ulogic;
        CEB2                    : in  std_ulogic;
        CEC                     : in  std_ulogic;
        CECARRYIN               : in  std_ulogic;
        CECTRL                  : in  std_ulogic;
        CEM                     : in  std_ulogic;
        CEMULTCARRYIN           : in  std_ulogic;
        CEP                     : in  std_ulogic;
        CLK                     : in  std_ulogic;
        MULTSIGNIN              : in std_ulogic;
        OPMODE                  : in  std_logic_vector(6 downto 0);
        PCIN                    : in  std_logic_vector(47 downto 0);
        RSTA                    : in  std_ulogic;
        RSTALLCARRYIN           : in  std_ulogic;
        RSTALUMODE              : in  std_ulogic;
        RSTB                    : in  std_ulogic;
        RSTC                    : in  std_ulogic;
        RSTCTRL                 : in  std_ulogic;
        RSTM                    : in  std_ulogic;
        RSTP                    : in  std_ulogic
      );
   end component;
  signal internal_cea1: std_logic;
  signal internal_cea2: std_logic;
  signal internal_ceb1: std_logic;
  signal internal_ceb2: std_logic;
  signal internal_cec: std_logic;
  signal internal_cep: std_logic;
  signal internal_cem: std_logic;
  signal internal_cecarryin: std_logic;
  signal internal_cectrl: std_logic;
  signal internal_rsta : std_logic;
  signal internal_rstb : std_logic;
  signal internal_rstc : std_logic;
  signal internal_rstalumode : std_logic;
  signal internal_rstcarryin : std_logic;
  signal internal_rstctrl : std_logic;
  signal internal_rstm : std_logic;
  signal internal_cecinsub : std_logic;
  signal internal_rstp : std_logic;
  signal internal_opmode : std_logic_vector(6 downto 0);
  signal internal_alumode : std_logic_vector(3 downto 0);
  signal internal_cealumode : std_logic;
  signal internal_carryin : std_logic;
  signal internal_cemultcarryin : std_logic;
  signal internal_carryinsel : std_logic_vector(2 downto 0);
  signal internal_carryout : std_logic_vector(3 downto 0);
begin
  using_c_port: if (use_c_port = 1)
  generate
      generate_power_efficient_creg_enable : entity work.generatePowerEfficientEnable
        generic map(
          use_reg => creg
        )
        port map(
          cereg => cec(0),
          ce => ce,
          en => en(0),
          internal_cereg => internal_cec
        );
      internal_rstc <= (rstc(0) or rst(0)) and ce;
  end generate;
  not_using_c_port: if (use_c_port = 0)
  generate
      internal_cec <= '0';
      internal_rstc <= '1';
  end generate;

  generate_power_efficient_mreg_enable : entity work.generatePowerEfficientEnable
    generic map(
      use_reg => mreg
    )
    port map(
      cereg => cem(0),
      ce => ce,
      en => en(0),
      internal_cereg => internal_cem
    );
  generate_power_efficient_preg_enable : entity work.generatePowerEfficientEnable
    generic map(
      use_reg => preg
    )
    port map(
      cereg => cep(0),
      ce => ce,
      en => en(0),
      internal_cereg => internal_cep
    );
  internal_cecarryin <= cecarryin(0) and ce and en(0);
  internal_cectrl <= cectrl(0) and ce and en(0);
  internal_cealumode <= cealumode(0) and ce and en(0);

  internal_rsta <= (rsta(0) or rst(0)) and ce;
  internal_rstb <= (rstb(0) or rst(0)) and ce;
  internal_rstcarryin <= (rstcarryin(0) or rst(0)) and ce;
  internal_rstctrl <= (rstctrl(0) or rst(0)) and ce;
  internal_rstalumode <= (rstalumode(0) or rst(0)) and ce;
  internal_rstm <= (rstm(0) or rst(0)) and ce;
  internal_rstp <= (rstp(0) or rst(0)) and ce;

  internal_cemultcarryin <= cemultcarryin(0) and ce and en(0);
  ceacontrol_1: if(areg = 1)
  generate
    internal_cea1 <= '0';
    internal_cea2 <= cea1(0) and ce and en(0);
  end generate;
  ceacontrol_2: if(areg = 2)
  generate
    internal_cea1 <= cea1(0) and ce and en(0);
    internal_cea2 <= cea2(0) and ce and en(0);
  end generate;
  ceacontrol_0: if(areg = 0)
  generate
    internal_cea1 <= '0';
    internal_cea2 <= '0';
  end generate;
  cebcontrol_1: if(breg = 1)
  generate
    internal_ceb1 <= '0';
    internal_ceb2 <= ceb1(0) and ce and en(0);
  end generate;
  cebcontrol_2: if(breg = 2)
  generate
    internal_ceb1 <= ceb1(0) and ce and en(0);
    internal_ceb2 <= ceb2(0) and ce and en(0);
  end generate;
  cebcontrol_0: if(breg = 0)
  generate
    internal_ceb1 <= '0';
    internal_ceb2 <= '0';
  end generate;
  opmode_0: if(use_op = 0)
  generate
        internal_opmode <= opmode;
  end generate;
  opmode_1: if(use_op = 1)
  generate
        internal_opmode <= op(6 downto 0);
  end generate;
  sub_0: if(use_op = 0)
  generate
        internal_alumode <= alumode;
  end generate;
  sub_1: if(use_op = 1)
  generate
        internal_alumode <= op(10 downto 7);
  end generate;
  carryin_0: if(use_op = 0)
  generate
        internal_carryin <= carryin(0);
  end generate;
  carryin_1: if(use_op = 1)
  generate
        internal_carryin <= op(11);
  end generate;
  carryinsel_0: if(use_op = 0)
  generate
        internal_carryinsel <= carryinsel;
  end generate;
  carryinsel_1: if(use_op = 1)
  generate
        internal_carryinsel <= op(14 downto 12);
  end generate;
  dsp48e_inst: DSP48E
  generic map(
        ACASCREG        => acascreg,
        ALUMODEREG      => alumodereg,
        AREG            => areg,
        AUTORESET_PATTERN_DETECT                => autoreset_pattern_detect,
        AUTORESET_PATTERN_DETECT_OPTINV         => autoreset_pattern_detect_optinv,
        A_INPUT         => a_input,
        BCASCREG        => bcascreg,
        BREG            => breg,
        B_INPUT         => b_input,
        CARRYINREG      => carryinreg,
        CARRYINSELREG   => carryinselreg,
        CREG            => creg,
        MASK            => mask,
        MREG            => mreg,
        MULTCARRYINREG  => multcarryinreg,
        OPMODEREG       => opmodereg,
        PATTERN         => pattern,
        PREG            => preg,
        SEL_MASK        => sel_mask,
        SEL_PATTERN     => sel_pattern,
        SEL_ROUNDING_MASK       => sel_rounding_mask,
        USE_MULT                => use_mult,
        USE_PATTERN_DETECT      => use_pattern_detect,
        USE_SIMD                => use_simd
        )
  port map(
        ACOUT           => acout,
        BCOUT           => bcout,
        CARRYCASCOUT    => carrycascout(0),
        CARRYOUT        => internal_carryout,
        MULTSIGNOUT     => multsignout(0),
        OVERFLOW        => overflow(0),
        P               => p,
        PATTERNBDETECT  => patternbdetect(0),
        PATTERNDETECT   => patterndetect(0),
        PCOUT           => pcout,
        UNDERFLOW       => underflow(0),
        A               => a,
        ACIN            => acin,
        ALUMODE         => internal_alumode,
        B               => b,
        BCIN            => bcin,
        C               => c,
        CARRYCASCIN     => carrycascin(0),
        CARRYIN         => internal_carryin,
        CARRYINSEL      => internal_carryinsel,
        CEA1            => internal_cea1,
        CEA2            => internal_cea2,
        CEALUMODE       => internal_cealumode,
        CEB1            => internal_ceb1,
        CEB2            => internal_ceb2,
        CEC             => internal_cec,
        CECARRYIN       => internal_cecarryin,
        CECTRL          => internal_cectrl,
        CEM             => internal_cem,
        CEMULTCARRYIN   => internal_cemultcarryin,
        CEP             => internal_cep,
        CLK             => clk,
        MULTSIGNIN      => multsignin(0),
        OPMODE          => internal_opmode,
        PCIN            => pcin,
        RSTA            => internal_rsta,
        RSTALLCARRYIN   => internal_rstcarryin,
        RSTALUMODE      => internal_rstalumode,
        RSTB            => internal_rstb,
        RSTC            => internal_rstc,
        RSTCTRL         => internal_rstctrl,
        RSTM            => internal_rstm,
        RSTP            => internal_rstp
      );
  one48_mode : if (  use_simd = "ONE48") generate
      carryout(0) <= internal_carryout(3);
  end generate;
  two24_mode : if ( use_simd = "TWO24" ) generate
        carryout(1) <= internal_carryout(3);
        carryout(0) <= internal_carryout(1);
  end generate;
  four12_mode : if ( use_simd = "FOUR12" ) generate
        carryout <= internal_carryout;
  end generate;
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_eb03bc3377 is
  port (
    input_port : in std_logic_vector((30 - 1) downto 0);
    output_port : out std_logic_vector((30 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_eb03bc3377;


architecture behavior of reinterpret_eb03bc3377 is
  signal input_port_1_40: unsigned((30 - 1) downto 0);
  signal output_port_5_5_force: signed((30 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_7ea107432a is
  port (
    input_port : in std_logic_vector((48 - 1) downto 0);
    output_port : out std_logic_vector((48 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_7ea107432a;


architecture behavior of reinterpret_7ea107432a is
  signal input_port_1_40: unsigned((48 - 1) downto 0);
  signal output_port_5_5_force: signed((48 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_4c449dd556 is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_4c449dd556;


architecture behavior of constant_4c449dd556 is
begin
  op <= "0000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_963ed6358a is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_963ed6358a;


architecture behavior of constant_963ed6358a is
begin
  op <= "0";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_822933f89b is
  port (
    op : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_822933f89b;


architecture behavior of constant_822933f89b is
begin
  op <= "000";
end behavior;


-------------------------------------------------------------------
-- System Generator version 13.2 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity convert_func_call is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        result : out std_logic_vector (dout_width-1 downto 0));
end convert_func_call;
architecture behavior of convert_func_call is
begin
    result <= convert_type(din, din_width, din_bin_pt, din_arith,
                           dout_width, dout_bin_pt, dout_arith,
                           quantization, overflow);
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlconvert is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        en_width     : integer := 1;
        en_bin_pt    : integer := 0;
        en_arith     : integer := xlUnsigned;
        bool_conversion : integer :=0;
        latency      : integer := 0;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        en  : in std_logic_vector (en_width-1 downto 0);
        ce  : in std_logic;
        clr : in std_logic;
        clk : in std_logic;
        dout : out std_logic_vector (dout_width-1 downto 0));
end xlconvert;
architecture behavior of xlconvert is
    component synth_reg
        generic (width       : integer;
                 latency     : integer);
        port (i       : in std_logic_vector(width-1 downto 0);
              ce      : in std_logic;
              clr     : in std_logic;
              clk     : in std_logic;
              o       : out std_logic_vector(width-1 downto 0));
    end component;
    component convert_func_call
        generic (
            din_width    : integer := 16;
            din_bin_pt   : integer := 4;
            din_arith    : integer := xlUnsigned;
            dout_width   : integer := 8;
            dout_bin_pt  : integer := 2;
            dout_arith   : integer := xlUnsigned;
            quantization : integer := xlTruncate;
            overflow     : integer := xlWrap);
        port (
            din : in std_logic_vector (din_width-1 downto 0);
            result : out std_logic_vector (dout_width-1 downto 0));
    end component;
    -- synopsys translate_off
    -- synopsys translate_on
    signal result : std_logic_vector(dout_width-1 downto 0);
    signal internal_ce : std_logic;
begin
    -- synopsys translate_off
    -- synopsys translate_on
    internal_ce <= ce and en(0);

    bool_conversion_generate : if (bool_conversion = 1)
    generate
      result <= din;
    end generate;
    std_conversion_generate : if (bool_conversion = 0)
    generate
      convert : convert_func_call
        generic map (
          din_width   => din_width,
          din_bin_pt  => din_bin_pt,
          din_arith   => din_arith,
          dout_width  => dout_width,
          dout_bin_pt => dout_bin_pt,
          dout_arith  => dout_arith,
          quantization => quantization,
          overflow     => overflow)
        port map (
          din => din,
          result => result);
    end generate;
    latency_test : if (latency > 0) generate
        reg : synth_reg
            generic map (
              width => dout_width,
              latency => latency
            )
            port map (
              i => result,
              ce => internal_ce,
              clr => clr,
              clk => clk,
              o => dout
            );
    end generate;
    latency0 : if (latency = 0)
    generate
        dout <= result;
    end generate latency0;
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_b57c4be2de is
  port (
    in0 : in std_logic_vector((24 - 1) downto 0);
    in1 : in std_logic_vector((24 - 1) downto 0);
    y : out std_logic_vector((48 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_b57c4be2de;


architecture behavior of concat_b57c4be2de is
  signal in0_1_23: unsigned((24 - 1) downto 0);
  signal in1_1_27: unsigned((24 - 1) downto 0);
  signal y_2_1_concat: unsigned((48 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_270746ab47 is
  port (
    op : out std_logic_vector((7 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_270746ab47;


architecture behavior of constant_270746ab47 is
begin
  op <= "0110011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_3fb4604c01 is
  port (
    input_port : in std_logic_vector((24 - 1) downto 0);
    output_port : out std_logic_vector((24 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_3fb4604c01;


architecture behavior of reinterpret_3fb4604c01 is
  signal input_port_1_40: signed((24 - 1) downto 0);
  signal output_port_5_5_force: unsigned((24 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_4bf1ad328a is
  port (
    input_port : in std_logic_vector((24 - 1) downto 0);
    output_port : out std_logic_vector((24 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_4bf1ad328a;


architecture behavior of reinterpret_4bf1ad328a is
  signal input_port_1_40: unsigned((24 - 1) downto 0);
  signal output_port_5_5_force: signed((24 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_8038205d89 is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_8038205d89;


architecture behavior of constant_8038205d89 is
begin
  op <= "0011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_b198bd62b0 is
  port (
    in0 : in std_logic_vector((18 - 1) downto 0);
    in1 : in std_logic_vector((18 - 1) downto 0);
    y : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_b198bd62b0;


architecture behavior of concat_b198bd62b0 is
  signal in0_1_23: unsigned((18 - 1) downto 0);
  signal in1_1_27: unsigned((18 - 1) downto 0);
  signal y_2_1_concat: unsigned((36 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_580feec131 is
  port (
    input_port : in std_logic_vector((18 - 1) downto 0);
    output_port : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_580feec131;


architecture behavior of reinterpret_580feec131 is
  signal input_port_1_40: signed((18 - 1) downto 0);
  signal output_port_5_5_force: unsigned((18 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end behavior;


-------------------------------------------------------------------
-- System Generator version 13.2 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity convert_pipeline is
    generic (
        old_width   : integer := 16;
        old_bin_pt  : integer := 4;
        old_arith   : integer := xlUnsigned;
        new_width   : integer := 8;
        new_bin_pt  : integer := 2;
        new_arith   : integer := xlUnsigned;
        en_width    : integer := 1;
        en_bin_pt   : integer := 0;
        en_arith    : integer := xlUnsigned;
        quantization : integer := xlTruncate;
        overflow    : integer := xlWrap;
        latency     : integer := 1);
    port (
        din : in std_logic_vector (old_width-1 downto 0);
        en  : in std_logic_vector (en_width-1 downto 0);
        ce  : in std_logic;
        clr : in std_logic;
        clk : in std_logic;
        result : out std_logic_vector (new_width-1 downto 0));
end convert_pipeline;
architecture behavior of convert_pipeline is
    component synth_reg
        generic (width       : integer;
                 latency     : integer);
        port (i           : in std_logic_vector(width-1 downto 0);
              ce      : in std_logic;
              clr     : in std_logic;
              clk     : in std_logic;
              o       : out std_logic_vector(width-1 downto 0));
    end component;
    constant fp_width : integer := old_width + 2;
    constant fp_bin_pt : integer := old_bin_pt;
    constant fp_arith : integer := old_arith;
    constant q_width : integer := (old_width + 2) + (new_bin_pt - old_bin_pt);
    constant q_bin_pt : integer := new_bin_pt;
    constant q_arith : integer := old_arith;
    signal full_precision_result_in, full_precision_result_out
        : std_logic_vector(fp_width-1 downto 0);
    signal quantized_result_in, quantized_result_out
        : std_logic_vector(q_width-1 downto 0);
    signal result_in : std_logic_vector(new_width-1 downto 0):= (others => '0');
    signal internal_ce : std_logic;
begin
    internal_ce <= ce and en(0);

    fp_result : process (din)
    begin
        full_precision_result_in <= cast(din, old_bin_pt,
                                         fp_width, fp_bin_pt, fp_arith);
    end process;
    latency_fpr : if (latency > 2)
    generate
        reg_fpr : synth_reg
            generic map ( width => fp_width,
                          latency => 1)
            port map (i => full_precision_result_in,
                      ce => internal_ce,
                      clr => clr,
                      clk => clk,
                      o => full_precision_result_out);
    end generate;
    no_latency_fpr : if (latency < 3)
    generate
        full_precision_result_out <= full_precision_result_in;
    end generate;
    xlround_generate : if (quantization = xlRound)
    generate
      xlround_result : process (full_precision_result_out)
      begin
          quantized_result_in <= round_towards_inf(full_precision_result_out,
                                                   fp_width, fp_bin_pt,
                                                   fp_arith, q_width, q_bin_pt,
                                                   q_arith);
      end process;
    end generate;
    xlroundbanker_generate : if (quantization = xlRoundBanker)
    generate
      xlroundbanker_result : process (full_precision_result_out)
      begin
          quantized_result_in <= round_towards_even(full_precision_result_out,
                                                   fp_width, fp_bin_pt,
                                                   fp_arith, q_width, q_bin_pt,
                                                   q_arith);
      end process;
    end generate;
    xltruncate_generate : if (quantization = xlTruncate)
    generate
      xltruncate_result : process (full_precision_result_out)
      begin
          quantized_result_in <= trunc(full_precision_result_out,
                                       fp_width, fp_bin_pt,
                                       fp_arith, q_width, q_bin_pt,
                                       q_arith);
      end process;
    end generate;
    latency_qr : if (latency > 1)
    generate
        reg_qr : synth_reg
            generic map ( width => q_width,
                          latency => 1)
            port map (i => quantized_result_in,
                      ce => internal_ce,
                      clr => clr,
                      clk => clk,
                      o => quantized_result_out);
    end generate;
    no_latency_qr : if (latency < 2)
    generate
        quantized_result_out <= quantized_result_in;
    end generate;
    xlsaturate_generate : if (overflow = xlSaturate)
    generate
      xlsaturate_result : process (quantized_result_out)
      begin
          result_in <= saturation_arith(quantized_result_out, q_width, q_bin_pt,
                                       q_arith, new_width, new_bin_pt, new_arith);
      end process;
    end generate;
    xlwrap_generate : if (overflow = xlWrap)
    generate
      xlwrap_result : process (quantized_result_out)
      begin
          result_in <= wrap_arith(quantized_result_out, q_width, q_bin_pt,
                                  q_arith, new_width, new_bin_pt, new_arith);
      end process;
    end generate;
    latency_gt_3 : if (latency > 3)
    generate
        reg_out : synth_reg
            generic map ( width => new_width,
                          latency => latency-2)
            port map (i => result_in,
                      ce => internal_ce,
                      clr => clr,
                      clk => clk,
                      o => result);
    end generate;
    latency_lt_4 : if ((latency < 4) and (latency > 0))
    generate
        reg_out : synth_reg
            generic map ( width => new_width,
                          latency => 1)
            port map (i => result_in,
                      ce => internal_ce,
                      clr => clr,
                      clk => clk,
                      o => result);
    end generate;
    latency0 : if (latency = 0)
    generate
        result <= result_in;
    end generate latency0;
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlconvert_pipeline is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        en_width     : integer := 1;
        en_bin_pt    : integer := 0;
        en_arith     : integer := xlUnsigned;
        bool_conversion : integer :=0;
        latency      : integer := 0;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din  : in std_logic_vector (din_width-1 downto 0);
        en   : in std_logic_vector (en_width-1 downto 0);
        ce   : in std_logic;
        clr  : in std_logic;
        clk  : in std_logic;
        dout : out std_logic_vector (dout_width-1 downto 0));
end xlconvert_pipeline;
architecture behavior of xlconvert_pipeline is
    component convert_pipeline
        generic (
            old_width    : integer := 16;
            old_bin_pt   : integer := 4;
            old_arith    : integer := xlUnsigned;
            new_width    : integer := 8;
            new_bin_pt   : integer := 2;
            new_arith    : integer := xlUnsigned;
            en_width     : integer := 1;
            en_bin_pt    : integer := 0;
            en_arith     : integer := xlUnsigned;
            quantization : integer := xlTruncate;
            overflow     : integer := xlWrap;
            latency      : integer := 1);
        port (
            din    : in std_logic_vector (din_width-1 downto 0);
            en     : in std_logic_vector (en_width-1 downto 0);
            ce     : in std_logic;
            clr    : in std_logic;
            clk    : in std_logic;
            result : out std_logic_vector (dout_width-1 downto 0));
    end component;
   begin
      convert : convert_pipeline
        generic map (
          old_width   => din_width,
          old_bin_pt  => din_bin_pt,
          old_arith   => din_arith,
          new_width   => dout_width,
          new_bin_pt  => dout_bin_pt,
          new_arith   => dout_arith,
          en_width    => en_width,
          en_bin_pt   => en_bin_pt,
          en_arith    => en_arith,
          quantization => quantization,
          overflow    => overflow,
          latency     => latency)
        port map (
          din => din,
          en => en,
          ce => ce,
          clr => clr,
          clk => clk,
          result => dout);
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity scale_9f61027ba4 is
  port (
    ip : in std_logic_vector((19 - 1) downto 0);
    op : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end scale_9f61027ba4;


architecture behavior of scale_9f61027ba4 is
  signal ip_17_23: signed((19 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_9306b5127f is
  port (
    input_port : in std_logic_vector((18 - 1) downto 0);
    output_port : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_9306b5127f;


architecture behavior of reinterpret_9306b5127f is
  signal input_port_1_40: unsigned((18 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_4a391b9a0e is
  port (
    op : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_4a391b9a0e;


architecture behavior of constant_4a391b9a0e is
begin
  op <= "100000000";
end behavior;


-------------------------------------------------------------------
-- System Generator version 13.2 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlcounter_free is
  generic (
    core_name0: string := "";
    op_width: integer := 5;
    op_arith: integer := xlSigned
  );
  port (
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    op: out std_logic_vector(op_width - 1 downto 0);
    up: in std_logic_vector(0 downto 0) := (others => '0');
    load: in std_logic_vector(0 downto 0) := (others => '0');
    din: in std_logic_vector(op_width - 1 downto 0) := (others => '0');
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0)
  );
end xlcounter_free ;
architecture behavior of xlcounter_free is
  component cntr_11_0_b9730cea34623a8b
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_b9730cea34623a8b:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_b9730cea34623a8b:
    component is "true";
  attribute box_type of cntr_11_0_b9730cea34623a8b:
    component  is "black_box";
  component cntr_11_0_d4d70c5a247867e8
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_d4d70c5a247867e8:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_d4d70c5a247867e8:
    component is "true";
  attribute box_type of cntr_11_0_d4d70c5a247867e8:
    component  is "black_box";
  component cntr_11_0_b2e26777d24cb38d
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_b2e26777d24cb38d:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_b2e26777d24cb38d:
    component is "true";
  attribute box_type of cntr_11_0_b2e26777d24cb38d:
    component  is "black_box";
  component cntr_11_0_df2bb90b8fe02ecf
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_df2bb90b8fe02ecf:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_df2bb90b8fe02ecf:
    component is "true";
  attribute box_type of cntr_11_0_df2bb90b8fe02ecf:
    component  is "black_box";
  component cntr_11_0_c53e3b0687343f7a
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_c53e3b0687343f7a:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_c53e3b0687343f7a:
    component is "true";
  attribute box_type of cntr_11_0_c53e3b0687343f7a:
    component  is "black_box";
  component cntr_11_0_9adf5a9f785e3fb8
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_9adf5a9f785e3fb8:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_9adf5a9f785e3fb8:
    component is "true";
  attribute box_type of cntr_11_0_9adf5a9f785e3fb8:
    component  is "black_box";
  component cntr_11_0_73d90f0f459a7002
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_73d90f0f459a7002:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_73d90f0f459a7002:
    component is "true";
  attribute box_type of cntr_11_0_73d90f0f459a7002:
    component  is "black_box";
  component cntr_11_0_20f60aed18821bec
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_20f60aed18821bec:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_20f60aed18821bec:
    component is "true";
  attribute box_type of cntr_11_0_20f60aed18821bec:
    component  is "black_box";
  component cntr_11_0_e0d381bcdb78c3cc
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_e0d381bcdb78c3cc:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_e0d381bcdb78c3cc:
    component is "true";
  attribute box_type of cntr_11_0_e0d381bcdb78c3cc:
    component  is "black_box";
  component cntr_11_0_35c81e3155ab2f6f
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_35c81e3155ab2f6f:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_35c81e3155ab2f6f:
    component is "true";
  attribute box_type of cntr_11_0_35c81e3155ab2f6f:
    component  is "black_box";
  component cntr_11_0_c2e89722de712678
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_c2e89722de712678:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_c2e89722de712678:
    component is "true";
  attribute box_type of cntr_11_0_c2e89722de712678:
    component  is "black_box";
  component cntr_11_0_c84d65465c59fb07
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_c84d65465c59fb07:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_c84d65465c59fb07:
    component is "true";
  attribute box_type of cntr_11_0_c84d65465c59fb07:
    component  is "black_box";
  component cntr_11_0_e9eaaa5672e4be4d
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_e9eaaa5672e4be4d:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_e9eaaa5672e4be4d:
    component is "true";
  attribute box_type of cntr_11_0_e9eaaa5672e4be4d:
    component  is "black_box";
  component cntr_11_0_05042eb8e8f7781c
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_05042eb8e8f7781c:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_05042eb8e8f7781c:
    component is "true";
  attribute box_type of cntr_11_0_05042eb8e8f7781c:
    component  is "black_box";
  component cntr_11_0_9f5113eef58d42f3
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_9f5113eef58d42f3:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_9f5113eef58d42f3:
    component is "true";
  attribute box_type of cntr_11_0_9f5113eef58d42f3:
    component  is "black_box";
  component cntr_11_0_38c9cb0851a20d91
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_38c9cb0851a20d91:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_38c9cb0851a20d91:
    component is "true";
  attribute box_type of cntr_11_0_38c9cb0851a20d91:
    component  is "black_box";
  component cntr_11_0_7ca694f8efe8d963
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_7ca694f8efe8d963:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_7ca694f8efe8d963:
    component is "true";
  attribute box_type of cntr_11_0_7ca694f8efe8d963:
    component  is "black_box";
-- synopsys translate_off
  constant zeroVec: std_logic_vector(op_width - 1 downto 0) := (others => '0');
  constant oneVec: std_logic_vector(op_width - 1 downto 0) := (others => '1');
  constant zeroStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(zeroVec);
  constant oneStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(oneVec);
-- synopsys translate_on
  signal core_sinit: std_logic;
  signal core_ce: std_logic;
  signal op_net: std_logic_vector(op_width - 1 downto 0);
begin
  core_ce <= ce and en(0);
  core_sinit <= (clr or rst(0)) and ce;
  op <= op_net;
  comp0: if ((core_name0 = "cntr_11_0_b9730cea34623a8b")) generate
    core_instance0: cntr_11_0_b9730cea34623a8b
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp1: if ((core_name0 = "cntr_11_0_d4d70c5a247867e8")) generate
    core_instance1: cntr_11_0_d4d70c5a247867e8
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
  comp2: if ((core_name0 = "cntr_11_0_b2e26777d24cb38d")) generate
    core_instance2: cntr_11_0_b2e26777d24cb38d
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
  comp3: if ((core_name0 = "cntr_11_0_df2bb90b8fe02ecf")) generate
    core_instance3: cntr_11_0_df2bb90b8fe02ecf
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp4: if ((core_name0 = "cntr_11_0_c53e3b0687343f7a")) generate
    core_instance4: cntr_11_0_c53e3b0687343f7a
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
  comp5: if ((core_name0 = "cntr_11_0_9adf5a9f785e3fb8")) generate
    core_instance5: cntr_11_0_9adf5a9f785e3fb8
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp6: if ((core_name0 = "cntr_11_0_73d90f0f459a7002")) generate
    core_instance6: cntr_11_0_73d90f0f459a7002
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
  comp7: if ((core_name0 = "cntr_11_0_20f60aed18821bec")) generate
    core_instance7: cntr_11_0_20f60aed18821bec
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp8: if ((core_name0 = "cntr_11_0_e0d381bcdb78c3cc")) generate
    core_instance8: cntr_11_0_e0d381bcdb78c3cc
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
  comp9: if ((core_name0 = "cntr_11_0_35c81e3155ab2f6f")) generate
    core_instance9: cntr_11_0_35c81e3155ab2f6f
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp10: if ((core_name0 = "cntr_11_0_c2e89722de712678")) generate
    core_instance10: cntr_11_0_c2e89722de712678
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
  comp11: if ((core_name0 = "cntr_11_0_c84d65465c59fb07")) generate
    core_instance11: cntr_11_0_c84d65465c59fb07
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp12: if ((core_name0 = "cntr_11_0_e9eaaa5672e4be4d")) generate
    core_instance12: cntr_11_0_e9eaaa5672e4be4d
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
  comp13: if ((core_name0 = "cntr_11_0_05042eb8e8f7781c")) generate
    core_instance13: cntr_11_0_05042eb8e8f7781c
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp14: if ((core_name0 = "cntr_11_0_9f5113eef58d42f3")) generate
    core_instance14: cntr_11_0_9f5113eef58d42f3
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
  comp15: if ((core_name0 = "cntr_11_0_38c9cb0851a20d91")) generate
    core_instance15: cntr_11_0_38c9cb0851a20d91
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp16: if ((core_name0 = "cntr_11_0_7ca694f8efe8d963")) generate
    core_instance16: cntr_11_0_7ca694f8efe8d963
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
end behavior;

-------------------------------------------------------------------
-- System Generator version 13.2 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xldelay is
   generic(width        : integer := -1;
           latency      : integer := -1;
           reg_retiming : integer :=  0;
           reset        : integer :=  0);
   port(d       : in std_logic_vector (width-1 downto 0);
        ce      : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        rst     : in std_logic;
        q       : out std_logic_vector (width-1 downto 0));
end xldelay;
architecture behavior of xldelay is
   component synth_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   component synth_reg_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   signal internal_ce  : std_logic;
begin
   internal_ce  <= ce and en;
   srl_delay: if ((reg_retiming = 0) and (reset = 0)) or (latency < 1) generate
     synth_reg_srl_inst : synth_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => '0',
         clk => clk,
         o   => q);
   end generate srl_delay;
   reg_delay: if ((reg_retiming = 1) or (reset = 1)) and (latency >= 1) generate
     synth_reg_reg_inst : synth_reg_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => rst,
         clk => clk,
         o   => q);
   end generate reg_delay;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_fca786f2ff is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((36 - 1) downto 0);
    d1 : in std_logic_vector((36 - 1) downto 0);
    y : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_fca786f2ff;


architecture behavior of mux_fca786f2ff is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
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
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= pipe_16_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_8701b88949 is
  port (
    a : in std_logic_vector((9 - 1) downto 0);
    b : in std_logic_vector((9 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_8701b88949;


architecture behavior of relational_8701b88949 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  result_18_3_rel <= a_1_31 > b_1_34;
  op_mem_32_22_front_din <= result_18_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity negate_5fcde2e21d is
  port (
    ip : in std_logic_vector((18 - 1) downto 0);
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end negate_5fcde2e21d;


architecture behavior of negate_5fcde2e21d is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_42_20_push_front_pop_back_en = '1')) then
        op_mem_42_20(0) <= op_mem_42_20_front_din;
      end if;
    end if;
  end process proc_op_mem_42_20;
  cast_30_16 <= s2s_cast(ip_18_25, 17, 19, 17);
  internal_ip_30_1_neg <=  -cast_30_16;
  cast_internal_ip_34_3_convert <= s2u_cast(internal_ip_30_1_neg, 17, 18, 17);
  op_mem_42_20_front_din <= cast_internal_ip_34_3_convert;
  op_mem_42_20_push_front_pop_back_en <= '1';
  op <= unsigned_to_std_logic_vector(op_mem_42_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_b4ec9de7d1 is
  port (
    op : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_b4ec9de7d1;


architecture behavior of constant_b4ec9de7d1 is
begin
  op <= "000000001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_fd85eb7067 is
  port (
    op : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_fd85eb7067;


architecture behavior of constant_fd85eb7067 is
begin
  op <= "000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_aacf6e1b0e is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_aacf6e1b0e;


architecture behavior of logical_aacf6e1b0e is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_80f90b97d0 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_80f90b97d0;


architecture behavior of logical_80f90b97d0 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_1bef4ba0e4 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_1bef4ba0e4;


architecture behavior of mux_1bef4ba0e4 is
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
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_6c3ee657fa is
  port (
    a : in std_logic_vector((9 - 1) downto 0);
    b : in std_logic_vector((9 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_6c3ee657fa;


architecture behavior of relational_6c3ee657fa is
  signal a_1_31: unsigned((9 - 1) downto 0);
  signal b_1_34: unsigned((9 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_78eac2928d is
  port (
    a : in std_logic_vector((9 - 1) downto 0);
    b : in std_logic_vector((9 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_78eac2928d;


architecture behavior of relational_78eac2928d is
  signal a_1_31: unsigned((9 - 1) downto 0);
  signal b_1_34: unsigned((9 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_7f6b7da686 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((8 - 1) downto 0);
    d1 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_7f6b7da686;


architecture behavior of mux_7f6b7da686 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
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
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= pipe_16_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_423c6c1400 is
  port (
    d : in std_logic_vector((8 - 1) downto 0);
    q : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_423c6c1400;


architecture behavior of delay_423c6c1400 is
  signal d_1_22: std_logic_vector((8 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_21355083c1 is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_21355083c1;


architecture behavior of delay_21355083c1 is
  signal d_1_22: std_logic_vector((1 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end behavior;


-------------------------------------------------------------------
-- System Generator version 13.2 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlsprom_dist is
  generic (
    core_name0: string := "";
    addr_width: integer := 2;
    latency: integer := 0;
    c_width: integer := 12;
    c_address_width: integer := 4
  );
  port (
    addr: in std_logic_vector(addr_width - 1 downto 0);
    en: in std_logic_vector(0 downto 0);
    ce: in std_logic;
    clk: in std_logic;
    data: out std_logic_vector(c_width - 1 downto 0)
  );
end xlsprom_dist ;
architecture behavior of xlsprom_dist is
  component synth_reg
      generic (width       : integer;
               latency     : integer);
      port (i           : in std_logic_vector(width - 1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width - 1 downto 0));
  end component;
  signal core_data_out: std_logic_vector(c_width - 1 downto 0);
  constant num_extra_addr_bits: integer := (c_address_width - addr_width);
  signal core_addr: std_logic_vector(c_address_width - 1 downto 0);
  signal core_ce: std_logic;
  component dmg_62_5863af36f6036886
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      spo: out std_logic_vector(c_width - 1 downto 0) 
    );
  end component;
  attribute syn_black_box of dmg_62_5863af36f6036886:
    component is true;
  attribute fpga_dont_touch of dmg_62_5863af36f6036886:
    component is "true";
  attribute box_type of dmg_62_5863af36f6036886:
    component  is "black_box";
  component dmg_62_566eb4bdfcc3bc15
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      spo: out std_logic_vector(c_width - 1 downto 0) 
    );
  end component;
  attribute syn_black_box of dmg_62_566eb4bdfcc3bc15:
    component is true;
  attribute fpga_dont_touch of dmg_62_566eb4bdfcc3bc15:
    component is "true";
  attribute box_type of dmg_62_566eb4bdfcc3bc15:
    component  is "black_box";
  component dmg_62_9d0957109dc92693
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      spo: out std_logic_vector(c_width - 1 downto 0) 
    );
  end component;
  attribute syn_black_box of dmg_62_9d0957109dc92693:
    component is true;
  attribute fpga_dont_touch of dmg_62_9d0957109dc92693:
    component is "true";
  attribute box_type of dmg_62_9d0957109dc92693:
    component  is "black_box";
  component dmg_62_f0d8e22702089fe9
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of dmg_62_f0d8e22702089fe9:
    component is true;
  attribute fpga_dont_touch of dmg_62_f0d8e22702089fe9:
    component is "true";
  attribute box_type of dmg_62_f0d8e22702089fe9:
    component  is "black_box";
  component dmg_62_252dff5223562ed1
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of dmg_62_252dff5223562ed1:
    component is true;
  attribute fpga_dont_touch of dmg_62_252dff5223562ed1:
    component is "true";
  attribute box_type of dmg_62_252dff5223562ed1:
    component  is "black_box";
  component dmg_62_1a18407473b36622
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of dmg_62_1a18407473b36622:
    component is true;
  attribute fpga_dont_touch of dmg_62_1a18407473b36622:
    component is "true";
  attribute box_type of dmg_62_1a18407473b36622:
    component  is "black_box";
begin
  need_to_pad_addr: if num_extra_addr_bits > 0 generate
      core_addr(c_address_width - 1 downto addr_width) <= (others => '0');
    core_addr(addr_width - 1 downto 0) <= addr;
  end generate;
  no_need_to_pad_addr: if num_extra_addr_bits = 0 generate
    core_addr <= addr;
  end generate;
  core_ce <= ce and en(0);
  comp0: if ((core_name0 = "dmg_62_5863af36f6036886")) generate
    core_instance0: dmg_62_5863af36f6036886
      port map (
        a => core_addr,
        spo => core_data_out
      );
  end generate;
  comp1: if ((core_name0 = "dmg_62_566eb4bdfcc3bc15")) generate
    core_instance1: dmg_62_566eb4bdfcc3bc15
      port map (
        a => core_addr,
        spo => core_data_out
      );
  end generate;
  comp2: if ((core_name0 = "dmg_62_9d0957109dc92693")) generate
    core_instance2: dmg_62_9d0957109dc92693
      port map (
        a => core_addr,
        spo => core_data_out
      );
  end generate;
  comp3: if ((core_name0 = "dmg_62_f0d8e22702089fe9")) generate
    core_instance3: dmg_62_f0d8e22702089fe9
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp4: if ((core_name0 = "dmg_62_252dff5223562ed1")) generate
    core_instance4: dmg_62_252dff5223562ed1
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  comp5: if ((core_name0 = "dmg_62_1a18407473b36622")) generate
    core_instance5: dmg_62_1a18407473b36622
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  latency_test: if (latency > 1) generate
    reg: synth_reg
      generic map (
        width => c_width,
        latency => latency - 1
      )
      port map (
        i => core_data_out,
        ce => core_ce,
        clr => '0',
        clk => clk,
        o => data
      );
  end generate;
  latency_0_or_1: if (latency <= 1)
  generate
    data <= core_data_out;
  end generate;
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_40da8f5b68 is
  port (
    op : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_40da8f5b68;


architecture behavior of constant_40da8f5b68 is
begin
  op <= "100000100";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_c615d93998 is
  port (
    in0 : in std_logic_vector((20 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((21 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_c615d93998;


architecture behavior of concat_c615d93998 is
  signal in0_1_23: unsigned((20 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((21 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_4a8cbc85ce is
  port (
    input_port : in std_logic_vector((20 - 1) downto 0);
    output_port : out std_logic_vector((20 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_4a8cbc85ce;


architecture behavior of reinterpret_4a8cbc85ce is
  signal input_port_1_40: signed((20 - 1) downto 0);
  signal output_port_5_5_force: unsigned((20 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_27fae134d1 is
  port (
    a : in std_logic_vector((21 - 1) downto 0);
    b : in std_logic_vector((19 - 1) downto 0);
    s : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_27fae134d1;


architecture behavior of addsub_27fae134d1 is
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
  signal cast_internal_s_83_3_convert: signed((18 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
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
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_69_5_addsub, 19, 18, 17);
  op_mem_91_20_front_din <= cast_internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_4709ea49b5 is
  port (
    op : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_4709ea49b5;


architecture behavior of constant_4709ea49b5 is
begin
  op <= "0000000000000000001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_d357e69fa3 is
  port (
    input_port : in std_logic_vector((21 - 1) downto 0);
    output_port : out std_logic_vector((21 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_d357e69fa3;


architecture behavior of reinterpret_d357e69fa3 is
  signal input_port_1_40: unsigned((21 - 1) downto 0);
  signal output_port_5_5_force: signed((21 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_d2180c9169 is
  port (
    input_port : in std_logic_vector((19 - 1) downto 0);
    output_port : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_d2180c9169;


architecture behavior of reinterpret_d2180c9169 is
  signal input_port_1_40: unsigned((19 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_938d99ac11 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_938d99ac11;


architecture behavior of logical_938d99ac11 is
  signal d0_1_24: std_logic_vector((1 - 1) downto 0);
  signal d1_1_27: std_logic_vector((1 - 1) downto 0);
  signal fully_2_1_bit: std_logic_vector((1 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  y <= fully_2_1_bit;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_e9e6541380 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_e9e6541380;


architecture behavior of logical_e9e6541380 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => '0');
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  bit_2_27 <= d0_1_24 and d1_1_27;
  fully_2_1_bitnot <= not bit_2_27;
  latency_pipe_5_26_front_din <= fully_2_1_bitnot;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity inverter_e5b38cca3b is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_e5b38cca3b;


architecture behavior of inverter_e5b38cca3b is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_push_front_pop_back_en <= '0';
  op <= boolean_to_vector(internal_ip_12_1_bitnot);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_a6d07705dd is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_a6d07705dd;


architecture behavior of logical_a6d07705dd is
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
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_28159dbdb9 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((19 - 1) downto 0);
    d1 : in std_logic_vector((19 - 1) downto 0);
    y : out std_logic_vector((20 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_28159dbdb9;


architecture behavior of mux_28159dbdb9 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
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
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= pipe_16_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_a14e3dd1bd is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_a14e3dd1bd;


architecture behavior of delay_a14e3dd1bd is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (5 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    '0',
    '0',
    '0',
    '0',
    '0');
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 4 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= std_logic_to_vector(op_mem_20_24_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_444d3f5046 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_444d3f5046;


architecture behavior of logical_444d3f5046 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => '0');
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 or d1_1_27;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_4bb6f691f7 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((36 - 1) downto 0);
    d1 : in std_logic_vector((36 - 1) downto 0);
    y : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_4bb6f691f7;


architecture behavior of mux_4bb6f691f7 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
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
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= pipe_16_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity counter_11ccef49a2 is
  port (
    rst : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end counter_11ccef49a2;


architecture behavior of counter_11ccef49a2 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (count_reg_20_23_rst = '1')) then
        count_reg_20_23 <= "00000000";
      elsif (ce = '1') then 
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("00000001");
      end if;
    end if;
  end process proc_count_reg_20_23;
  bool_44_4 <= rst_1_40 or false;
  proc_if_44_1: process (bool_44_4, count_reg_20_23)
  is
  begin
    if bool_44_4 then
      count_reg_join_44_1_rst <= '1';
    else 
      count_reg_join_44_1_rst <= '0';
    end if;
    if bool_44_4 then
      rst_limit_join_44_1 <= false;
    else 
      rst_limit_join_44_1 <= false;
    end if;
  end process proc_if_44_1;
  count_reg_20_23_rst <= count_reg_join_44_1_rst;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_fa2be75f6e is
  port (
    d : in std_logic_vector((18 - 1) downto 0);
    q : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_fa2be75f6e;


architecture behavior of delay_fa2be75f6e is
  signal d_1_22: std_logic_vector((18 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (10 - 1)) of std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
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
  op_mem_20_24_back <= op_mem_20_24(9);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 9 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_43bd805056 is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_43bd805056;


architecture behavior of delay_43bd805056 is
  signal d_1_22: std_logic_vector((1 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (5 - 1)) of std_logic_vector((1 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "0",
    "0",
    "0",
    "0",
    "0");
  signal op_mem_20_24_front_din: std_logic_vector((1 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((1 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(4);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 4 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_c462a80bee is
  port (
    d : in std_logic_vector((18 - 1) downto 0);
    q : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_c462a80bee;


architecture behavior of delay_c462a80bee is
  signal d_1_22: std_logic_vector((18 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (5 - 1)) of std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
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
  op_mem_20_24_back <= op_mem_20_24(4);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 4 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_ae3f84524a is
  port (
    d : in std_logic_vector((18 - 1) downto 0);
    q : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_ae3f84524a;


architecture behavior of delay_ae3f84524a is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 6 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_2f744cdafb is
  port (
    d : in std_logic_vector((18 - 1) downto 0);
    q : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_2f744cdafb;


architecture behavior of delay_2f744cdafb is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 3 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_c53de546ea is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_c53de546ea;


architecture behavior of delay_c53de546ea is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (4 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    '0',
    '0',
    '0',
    '0');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(3);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 3 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= std_logic_to_vector(op_mem_20_24_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_aab7b18c27 is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_aab7b18c27;


architecture behavior of delay_aab7b18c27 is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (6 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    '0',
    '0',
    '0',
    '0',
    '0',
    '0');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(5);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 5 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= std_logic_to_vector(op_mem_20_24_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_621a1c5abf is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((18 - 1) downto 0);
    d1 : in std_logic_vector((18 - 1) downto 0);
    y : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_621a1c5abf;


architecture behavior of mux_621a1c5abf is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((18 - 1) downto 0);
  signal d1_1_27: std_logic_vector((18 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (6 - 1)) of std_logic_vector((18 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    "000000000000000000",
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
  pipe_16_22_back <= pipe_16_22(5);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
        for i in 5 downto 1 loop 
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
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= pipe_16_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_181e58d842 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((18 - 1) downto 0);
    d1 : in std_logic_vector((18 - 1) downto 0);
    y : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_181e58d842;


architecture behavior of mux_181e58d842 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
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
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= pipe_16_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity negate_e1a9d1ade1 is
  port (
    ip : in std_logic_vector((18 - 1) downto 0);
    op : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end negate_e1a9d1ade1;


architecture behavior of negate_e1a9d1ade1 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_42_20_push_front_pop_back_en = '1')) then
        op_mem_42_20(0) <= op_mem_42_20_front_din;
      end if;
    end if;
  end process proc_op_mem_42_20;
  cast_30_16 <= s2s_cast(ip_18_25, 17, 19, 17);
  internal_ip_30_1_neg <=  -cast_30_16;
  op_mem_42_20_front_din <= internal_ip_30_1_neg;
  op_mem_42_20_push_front_pop_back_en <= '1';
  op <= signed_to_std_logic_vector(op_mem_42_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_b437b02512 is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_b437b02512;


architecture behavior of constant_b437b02512 is
begin
  op <= "00000001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_91ef1678ca is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_91ef1678ca;


architecture behavior of constant_91ef1678ca is
begin
  op <= "00000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_e8aae5d3bb is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_e8aae5d3bb;


architecture behavior of constant_e8aae5d3bb is
begin
  op <= "10000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_54048c8b02 is
  port (
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_54048c8b02;


architecture behavior of relational_54048c8b02 is
  signal a_1_31: unsigned((8 - 1) downto 0);
  signal b_1_34: unsigned((8 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_16235eb2bf is
  port (
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_16235eb2bf;


architecture behavior of relational_16235eb2bf is
  signal a_1_31: unsigned((8 - 1) downto 0);
  signal b_1_34: unsigned((8 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_f133931c1f is
  port (
    in0 : in std_logic_vector((24 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_f133931c1f;


architecture behavior of concat_f133931c1f is
  signal in0_1_23: unsigned((24 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((25 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_2969055f39 is
  port (
    a : in std_logic_vector((25 - 1) downto 0);
    b : in std_logic_vector((21 - 1) downto 0);
    s : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_2969055f39;


architecture behavior of addsub_2969055f39 is
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
  signal cast_internal_s_83_3_convert: signed((18 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
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
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_69_5_addsub, 21, 18, 17);
  op_mem_91_20_front_din <= cast_internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_9a2c97cce5 is
  port (
    op : out std_logic_vector((21 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_9a2c97cce5;


architecture behavior of constant_9a2c97cce5 is
begin
  op <= "000000000000000000111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_60ea556961 is
  port (
    input_port : in std_logic_vector((25 - 1) downto 0);
    output_port : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_60ea556961;


architecture behavior of reinterpret_60ea556961 is
  signal input_port_1_40: unsigned((25 - 1) downto 0);
  signal output_port_5_5_force: signed((25 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_299ca43e25 is
  port (
    input_port : in std_logic_vector((21 - 1) downto 0);
    output_port : out std_logic_vector((21 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_299ca43e25;


architecture behavior of reinterpret_299ca43e25 is
  signal input_port_1_40: unsigned((21 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_182ac6c51e is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_182ac6c51e;


architecture behavior of logical_182ac6c51e is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal d3_1_33: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => '0');
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  bit_2_27 <= d0_1_24 and d1_1_27 and d2_1_30 and d3_1_33;
  fully_2_1_bitnot <= not bit_2_27;
  latency_pipe_5_26_front_din <= fully_2_1_bitnot;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_be8c56327e is
  port (
    a : in std_logic_vector((36 - 1) downto 0);
    b : in std_logic_vector((36 - 1) downto 0);
    s : out std_logic_vector((37 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_be8c56327e;


architecture behavior of addsub_be8c56327e is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
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
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_eb2273ac28 is
  port (
    a : in std_logic_vector((36 - 1) downto 0);
    b : in std_logic_vector((36 - 1) downto 0);
    s : out std_logic_vector((37 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_eb2273ac28;


architecture behavior of addsub_eb2273ac28 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
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
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_bdaf6c9e55 is
  port (
    d : in std_logic_vector((36 - 1) downto 0);
    q : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_bdaf6c9e55;


architecture behavior of delay_bdaf6c9e55 is
  signal d_1_22: std_logic_vector((36 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (4 - 1)) of std_logic_vector((36 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "000000000000000000000000000000000000",
    "000000000000000000000000000000000000",
    "000000000000000000000000000000000000",
    "000000000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((36 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((36 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(3);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 3 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mult_cfc8c45902 is
  port (
    a : in std_logic_vector((18 - 1) downto 0);
    b : in std_logic_vector((18 - 1) downto 0);
    p : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mult_cfc8c45902;


architecture behavior of mult_cfc8c45902 is
  signal a_1_22: signed((18 - 1) downto 0);
  signal b_1_25: signed((18 - 1) downto 0);
  type array_type_op_mem_65_20 is array (0 to (3 - 1)) of signed((36 - 1) downto 0);
  signal op_mem_65_20: array_type_op_mem_65_20 := (
    "000000000000000000000000000000000000",
    "000000000000000000000000000000000000",
    "000000000000000000000000000000000000");
  signal op_mem_65_20_front_din: signed((36 - 1) downto 0);
  signal op_mem_65_20_back: signed((36 - 1) downto 0);
  signal op_mem_65_20_push_front_pop_back_en: std_logic;
  signal mult_46_56: signed((36 - 1) downto 0);
begin
  a_1_22 <= std_logic_vector_to_signed(a);
  b_1_25 <= std_logic_vector_to_signed(b);
  op_mem_65_20_back <= op_mem_65_20(2);
  proc_op_mem_65_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_65_20_push_front_pop_back_en = '1')) then
        for i in 2 downto 1 loop 
          op_mem_65_20(i) <= op_mem_65_20(i-1);
        end loop;
        op_mem_65_20(0) <= op_mem_65_20_front_din;
      end if;
    end if;
  end process proc_op_mem_65_20;
  mult_46_56 <= (a_1_22 * b_1_25);
  op_mem_65_20_front_din <= mult_46_56;
  op_mem_65_20_push_front_pop_back_en <= '1';
  p <= signed_to_std_logic_vector(op_mem_65_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_f1f44b96f0 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((23 - 1) downto 0);
    d1 : in std_logic_vector((23 - 1) downto 0);
    y : out std_logic_vector((24 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_f1f44b96f0;


architecture behavior of mux_f1f44b96f0 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
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
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= pipe_16_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity scale_e5d0b4a1ec is
  port (
    ip : in std_logic_vector((23 - 1) downto 0);
    op : out std_logic_vector((23 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end scale_e5d0b4a1ec;


architecture behavior of scale_e5d0b4a1ec is
  signal ip_17_23: signed((23 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_180df391de is
  port (
    op : out std_logic_vector((7 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_180df391de;


architecture behavior of constant_180df391de is
begin
  op <= "0000001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_7244cd602b is
  port (
    op : out std_logic_vector((7 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_7244cd602b;


architecture behavior of constant_7244cd602b is
begin
  op <= "0000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_7b07120b87 is
  port (
    op : out std_logic_vector((7 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_7b07120b87;


architecture behavior of constant_7b07120b87 is
begin
  op <= "1000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_9a3978c602 is
  port (
    a : in std_logic_vector((7 - 1) downto 0);
    b : in std_logic_vector((7 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_9a3978c602;


architecture behavior of relational_9a3978c602 is
  signal a_1_31: unsigned((7 - 1) downto 0);
  signal b_1_34: unsigned((7 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_23065a6aa3 is
  port (
    a : in std_logic_vector((7 - 1) downto 0);
    b : in std_logic_vector((7 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_23065a6aa3;


architecture behavior of relational_23065a6aa3 is
  signal a_1_31: unsigned((7 - 1) downto 0);
  signal b_1_34: unsigned((7 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end behavior;


-------------------------------------------------------------------
-- System Generator version 13.2 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlsprom is
  generic (
    core_name0: string := "";
    c_width: integer := 12;
    c_address_width: integer := 4;
    latency: integer := 1
  );
  port (
    addr: in std_logic_vector(c_address_width - 1 downto 0);
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0);
    ce: in std_logic;
    clk: in std_logic;
    data: out std_logic_vector(c_width - 1 downto 0)
  );
end xlsprom ;
architecture behavior of xlsprom is
  component synth_reg
    generic (
      width: integer;
      latency: integer
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  signal core_addr: std_logic_vector(c_address_width - 1 downto 0);
  signal core_data_out: std_logic_vector(c_width - 1 downto 0);
  signal core_ce, sinit: std_logic;
  component bmg_62_2d41b260b5e70403
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_2d41b260b5e70403:
    component is true;
  attribute fpga_dont_touch of bmg_62_2d41b260b5e70403:
    component is "true";
  attribute box_type of bmg_62_2d41b260b5e70403:
    component  is "black_box";
  component bmg_62_f5d63000a45b4cf8
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_f5d63000a45b4cf8:
    component is true;
  attribute fpga_dont_touch of bmg_62_f5d63000a45b4cf8:
    component is "true";
  attribute box_type of bmg_62_f5d63000a45b4cf8:
    component  is "black_box";
  component bmg_62_6ea787275fdc24d6
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_6ea787275fdc24d6:
    component is true;
  attribute fpga_dont_touch of bmg_62_6ea787275fdc24d6:
    component is "true";
  attribute box_type of bmg_62_6ea787275fdc24d6:
    component  is "black_box";
  component bmg_62_37f844592d213796
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_37f844592d213796:
    component is true;
  attribute fpga_dont_touch of bmg_62_37f844592d213796:
    component is "true";
  attribute box_type of bmg_62_37f844592d213796:
    component  is "black_box";
  component bmg_62_daa5a8eb8c5c2eed
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_daa5a8eb8c5c2eed:
    component is true;
  attribute fpga_dont_touch of bmg_62_daa5a8eb8c5c2eed:
    component is "true";
  attribute box_type of bmg_62_daa5a8eb8c5c2eed:
    component  is "black_box";
  component bmg_62_7061fc74b87e2931
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_7061fc74b87e2931:
    component is true;
  attribute fpga_dont_touch of bmg_62_7061fc74b87e2931:
    component is "true";
  attribute box_type of bmg_62_7061fc74b87e2931:
    component  is "black_box";
  component bmg_62_16e54f007b53b02e
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_16e54f007b53b02e:
    component is true;
  attribute fpga_dont_touch of bmg_62_16e54f007b53b02e:
    component is "true";
  attribute box_type of bmg_62_16e54f007b53b02e:
    component  is "black_box";
  component bmg_62_721e2d25fd18b8a2
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_721e2d25fd18b8a2:
    component is true;
  attribute fpga_dont_touch of bmg_62_721e2d25fd18b8a2:
    component is "true";
  attribute box_type of bmg_62_721e2d25fd18b8a2:
    component  is "black_box";
  component bmg_62_92fa6367e92d9ee0
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_92fa6367e92d9ee0:
    component is true;
  attribute fpga_dont_touch of bmg_62_92fa6367e92d9ee0:
    component is "true";
  attribute box_type of bmg_62_92fa6367e92d9ee0:
    component  is "black_box";
  component bmg_62_89660d475f29ded2
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_89660d475f29ded2:
    component is true;
  attribute fpga_dont_touch of bmg_62_89660d475f29ded2:
    component is "true";
  attribute box_type of bmg_62_89660d475f29ded2:
    component  is "black_box";
  component bmg_62_66e53735c699b53b
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_66e53735c699b53b:
    component is true;
  attribute fpga_dont_touch of bmg_62_66e53735c699b53b:
    component is "true";
  attribute box_type of bmg_62_66e53735c699b53b:
    component  is "black_box";
  component bmg_62_83efd1fdf9477a72
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_83efd1fdf9477a72:
    component is true;
  attribute fpga_dont_touch of bmg_62_83efd1fdf9477a72:
    component is "true";
  attribute box_type of bmg_62_83efd1fdf9477a72:
    component  is "black_box";
  component bmg_62_073020084dc5d91f
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_073020084dc5d91f:
    component is true;
  attribute fpga_dont_touch of bmg_62_073020084dc5d91f:
    component is "true";
  attribute box_type of bmg_62_073020084dc5d91f:
    component  is "black_box";
  component bmg_62_c55d75b26312ffb9
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_c55d75b26312ffb9:
    component is true;
  attribute fpga_dont_touch of bmg_62_c55d75b26312ffb9:
    component is "true";
  attribute box_type of bmg_62_c55d75b26312ffb9:
    component  is "black_box";
  component bmg_62_e195761ec2ed12e6
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_e195761ec2ed12e6:
    component is true;
  attribute fpga_dont_touch of bmg_62_e195761ec2ed12e6:
    component is "true";
  attribute box_type of bmg_62_e195761ec2ed12e6:
    component  is "black_box";
  component bmg_62_5274d0b3f294243c
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_5274d0b3f294243c:
    component is true;
  attribute fpga_dont_touch of bmg_62_5274d0b3f294243c:
    component is "true";
  attribute box_type of bmg_62_5274d0b3f294243c:
    component  is "black_box";
  component bmg_62_a1b79e174d5a824f
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_a1b79e174d5a824f:
    component is true;
  attribute fpga_dont_touch of bmg_62_a1b79e174d5a824f:
    component is "true";
  attribute box_type of bmg_62_a1b79e174d5a824f:
    component  is "black_box";
begin
  core_addr <= addr;
  core_ce <= ce and en(0);
  sinit <= rst(0) and ce;
  comp0: if ((core_name0 = "bmg_62_2d41b260b5e70403")) generate
    core_instance0: bmg_62_2d41b260b5e70403
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp1: if ((core_name0 = "bmg_62_f5d63000a45b4cf8")) generate
    core_instance1: bmg_62_f5d63000a45b4cf8
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp2: if ((core_name0 = "bmg_62_6ea787275fdc24d6")) generate
    core_instance2: bmg_62_6ea787275fdc24d6
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp3: if ((core_name0 = "bmg_62_37f844592d213796")) generate
    core_instance3: bmg_62_37f844592d213796
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp4: if ((core_name0 = "bmg_62_daa5a8eb8c5c2eed")) generate
    core_instance4: bmg_62_daa5a8eb8c5c2eed
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp5: if ((core_name0 = "bmg_62_7061fc74b87e2931")) generate
    core_instance5: bmg_62_7061fc74b87e2931
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp6: if ((core_name0 = "bmg_62_16e54f007b53b02e")) generate
    core_instance6: bmg_62_16e54f007b53b02e
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp7: if ((core_name0 = "bmg_62_721e2d25fd18b8a2")) generate
    core_instance7: bmg_62_721e2d25fd18b8a2
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp8: if ((core_name0 = "bmg_62_92fa6367e92d9ee0")) generate
    core_instance8: bmg_62_92fa6367e92d9ee0
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp9: if ((core_name0 = "bmg_62_89660d475f29ded2")) generate
    core_instance9: bmg_62_89660d475f29ded2
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp10: if ((core_name0 = "bmg_62_66e53735c699b53b")) generate
    core_instance10: bmg_62_66e53735c699b53b
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp11: if ((core_name0 = "bmg_62_83efd1fdf9477a72")) generate
    core_instance11: bmg_62_83efd1fdf9477a72
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp12: if ((core_name0 = "bmg_62_073020084dc5d91f")) generate
    core_instance12: bmg_62_073020084dc5d91f
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp13: if ((core_name0 = "bmg_62_c55d75b26312ffb9")) generate
    core_instance13: bmg_62_c55d75b26312ffb9
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp14: if ((core_name0 = "bmg_62_e195761ec2ed12e6")) generate
    core_instance14: bmg_62_e195761ec2ed12e6
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp15: if ((core_name0 = "bmg_62_5274d0b3f294243c")) generate
    core_instance15: bmg_62_5274d0b3f294243c
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp16: if ((core_name0 = "bmg_62_a1b79e174d5a824f")) generate
    core_instance16: bmg_62_a1b79e174d5a824f
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  latency_test: if (latency > 1) generate
    reg: synth_reg
      generic map (
        width => c_width,
        latency => latency - 1
      )
      port map (
        i => core_data_out,
        ce => core_ce,
        clr => '0',
        clk => clk,
        o => data
      );
  end generate;
  latency_1: if (latency <= 1) generate
    data <= core_data_out;
  end generate;
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a267c870be is
  port (
    op : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a267c870be;


architecture behavior of constant_a267c870be is
begin
  op <= "000001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_7ea0f2fff7 is
  port (
    op : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_7ea0f2fff7;


architecture behavior of constant_7ea0f2fff7 is
begin
  op <= "000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_961b61f8a1 is
  port (
    op : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_961b61f8a1;


architecture behavior of constant_961b61f8a1 is
begin
  op <= "100000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_931d61fb72 is
  port (
    a : in std_logic_vector((6 - 1) downto 0);
    b : in std_logic_vector((6 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_931d61fb72;


architecture behavior of relational_931d61fb72 is
  signal a_1_31: unsigned((6 - 1) downto 0);
  signal b_1_34: unsigned((6 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_fe487ce1c7 is
  port (
    a : in std_logic_vector((6 - 1) downto 0);
    b : in std_logic_vector((6 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_fe487ce1c7;


architecture behavior of relational_fe487ce1c7 is
  signal a_1_31: unsigned((6 - 1) downto 0);
  signal b_1_34: unsigned((6 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_582a3706dd is
  port (
    op : out std_logic_vector((5 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_582a3706dd;


architecture behavior of constant_582a3706dd is
begin
  op <= "00001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_fe72737ca0 is
  port (
    op : out std_logic_vector((5 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_fe72737ca0;


architecture behavior of constant_fe72737ca0 is
begin
  op <= "00000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_ef0e2e5fc6 is
  port (
    op : out std_logic_vector((5 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_ef0e2e5fc6;


architecture behavior of constant_ef0e2e5fc6 is
begin
  op <= "10000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_9ece3c8c4e is
  port (
    a : in std_logic_vector((5 - 1) downto 0);
    b : in std_logic_vector((5 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_9ece3c8c4e;


architecture behavior of relational_9ece3c8c4e is
  signal a_1_31: unsigned((5 - 1) downto 0);
  signal b_1_34: unsigned((5 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_dc5bc996c9 is
  port (
    a : in std_logic_vector((5 - 1) downto 0);
    b : in std_logic_vector((5 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_dc5bc996c9;


architecture behavior of relational_dc5bc996c9 is
  signal a_1_31: unsigned((5 - 1) downto 0);
  signal b_1_34: unsigned((5 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_67ad97ca70 is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_67ad97ca70;


architecture behavior of constant_67ad97ca70 is
begin
  op <= "0001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_145086465d is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_145086465d;


architecture behavior of constant_145086465d is
begin
  op <= "1000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_4d3cfceaf4 is
  port (
    a : in std_logic_vector((4 - 1) downto 0);
    b : in std_logic_vector((4 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_4d3cfceaf4;


architecture behavior of relational_4d3cfceaf4 is
  signal a_1_31: unsigned((4 - 1) downto 0);
  signal b_1_34: unsigned((4 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_d930162434 is
  port (
    a : in std_logic_vector((4 - 1) downto 0);
    b : in std_logic_vector((4 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_d930162434;


architecture behavior of relational_d930162434 is
  signal a_1_31: unsigned((4 - 1) downto 0);
  signal b_1_34: unsigned((4 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a1c496ea88 is
  port (
    op : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a1c496ea88;


architecture behavior of constant_a1c496ea88 is
begin
  op <= "001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_469094441c is
  port (
    op : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_469094441c;


architecture behavior of constant_469094441c is
begin
  op <= "100";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_8fc7f5539b is
  port (
    a : in std_logic_vector((3 - 1) downto 0);
    b : in std_logic_vector((3 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_8fc7f5539b;


architecture behavior of relational_8fc7f5539b is
  signal a_1_31: unsigned((3 - 1) downto 0);
  signal b_1_34: unsigned((3 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_47b317dab6 is
  port (
    a : in std_logic_vector((3 - 1) downto 0);
    b : in std_logic_vector((3 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_47b317dab6;


architecture behavior of relational_47b317dab6 is
  signal a_1_31: unsigned((3 - 1) downto 0);
  signal b_1_34: unsigned((3 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a7e2bb9e12 is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a7e2bb9e12;


architecture behavior of constant_a7e2bb9e12 is
begin
  op <= "01";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_cda50df78a is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_cda50df78a;


architecture behavior of constant_cda50df78a is
begin
  op <= "00";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_e8ddc079e9 is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_e8ddc079e9;


architecture behavior of constant_e8ddc079e9 is
begin
  op <= "10";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_5f1eb17108 is
  port (
    a : in std_logic_vector((2 - 1) downto 0);
    b : in std_logic_vector((2 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_5f1eb17108;


architecture behavior of relational_5f1eb17108 is
  signal a_1_31: unsigned((2 - 1) downto 0);
  signal b_1_34: unsigned((2 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_f9928864ea is
  port (
    a : in std_logic_vector((2 - 1) downto 0);
    b : in std_logic_vector((2 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_f9928864ea;


architecture behavior of relational_f9928864ea is
  signal a_1_31: unsigned((2 - 1) downto 0);
  signal b_1_34: unsigned((2 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity counter_223a0f3237 is
  port (
    rst : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end counter_223a0f3237;


architecture behavior of counter_223a0f3237 is
  signal rst_1_40: boolean;
  signal count_reg_20_23: unsigned((1 - 1) downto 0) := "0";
  signal count_reg_20_23_rst: std_logic;
  signal bool_44_4: boolean;
  signal count_reg_join_44_1: unsigned((2 - 1) downto 0);
  signal count_reg_join_44_1_rst: std_logic;
  signal rst_limit_join_44_1: boolean;
begin
  rst_1_40 <= ((rst) = "1");
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (count_reg_20_23_rst = '1')) then
        count_reg_20_23 <= "0";
      elsif (ce = '1') then 
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("1");
      end if;
    end if;
  end process proc_count_reg_20_23;
  bool_44_4 <= rst_1_40 or false;
  proc_if_44_1: process (bool_44_4, count_reg_20_23)
  is
  begin
    if bool_44_4 then
      count_reg_join_44_1_rst <= '1';
    else 
      count_reg_join_44_1_rst <= '0';
    end if;
    if bool_44_4 then
      rst_limit_join_44_1 <= false;
    else 
      rst_limit_join_44_1 <= false;
    end if;
  end process proc_if_44_1;
  count_reg_20_23_rst <= count_reg_join_44_1_rst;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_0c0a0420a6 is
  port (
    d : in std_logic_vector((36 - 1) downto 0);
    q : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_0c0a0420a6;


architecture behavior of delay_0c0a0420a6 is
  signal d_1_22: std_logic_vector((36 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_f1ac4bddff is
  port (
    op : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_f1ac4bddff;


architecture behavior of constant_f1ac4bddff is
begin
  op <= "0000000001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_498bc68c14 is
  port (
    op : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_498bc68c14;


architecture behavior of constant_498bc68c14 is
begin
  op <= "0000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_fbc2f0cce1 is
  port (
    op : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_fbc2f0cce1;


architecture behavior of constant_fbc2f0cce1 is
begin
  op <= "1000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_0ffd72e037 is
  port (
    a : in std_logic_vector((10 - 1) downto 0);
    b : in std_logic_vector((10 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_0ffd72e037;


architecture behavior of relational_0ffd72e037 is
  signal a_1_31: unsigned((10 - 1) downto 0);
  signal b_1_34: unsigned((10 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_f6702ea2f7 is
  port (
    a : in std_logic_vector((10 - 1) downto 0);
    b : in std_logic_vector((10 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_f6702ea2f7;


architecture behavior of relational_f6702ea2f7 is
  signal a_1_31: unsigned((10 - 1) downto 0);
  signal b_1_34: unsigned((10 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_bcb919797f is
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
end mux_bcb919797f;


architecture behavior of mux_bcb919797f is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_30_22_push_front_pop_back_en = '1')) then
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
  pipe_30_22_push_front_pop_back_en <= '1';
  y <= pipe_30_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_a99984b20e is
  port (
    d : in std_logic_vector((9 - 1) downto 0);
    q : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_a99984b20e;


architecture behavior of delay_a99984b20e is
  signal d_1_22: std_logic_vector((9 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity counter_0009e314f5 is
  port (
    rst : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end counter_0009e314f5;


architecture behavior of counter_0009e314f5 is
  signal rst_1_40: boolean;
  signal count_reg_20_23: unsigned((1 - 1) downto 0) := "0";
  signal count_reg_20_23_rst: std_logic;
  signal bool_44_4: boolean;
  signal rst_limit_join_44_1: boolean;
  signal count_reg_join_44_1: signed((3 - 1) downto 0);
  signal count_reg_join_44_1_rst: std_logic;
begin
  rst_1_40 <= ((rst) = "1");
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (count_reg_20_23_rst = '1')) then
        count_reg_20_23 <= "0";
      elsif (ce = '1') then 
        count_reg_20_23 <= count_reg_20_23 - std_logic_vector_to_unsigned("1");
      end if;
    end if;
  end process proc_count_reg_20_23;
  bool_44_4 <= rst_1_40 or false;
  proc_if_44_1: process (bool_44_4, count_reg_20_23)
  is
  begin
    if bool_44_4 then
      count_reg_join_44_1_rst <= '1';
    else 
      count_reg_join_44_1_rst <= '0';
    end if;
    if bool_44_4 then
      rst_limit_join_44_1 <= false;
    else 
      rst_limit_join_44_1 <= false;
    end if;
  end process proc_if_44_1;
  count_reg_20_23_rst <= count_reg_join_44_1_rst;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end behavior;

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
