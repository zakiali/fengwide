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
-- You must compile the wrapper file cntr_11_0_e94528e03054f4e0.vhd when simulating
-- the core, cntr_11_0_e94528e03054f4e0. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_e94528e03054f4e0 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
  );
END cntr_11_0_e94528e03054f4e0;

ARCHITECTURE cntr_11_0_e94528e03054f4e0_a OF cntr_11_0_e94528e03054f4e0 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_e94528e03054f4e0
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_e94528e03054f4e0 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
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
      c_width => 13,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_e94528e03054f4e0
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    load => load,
    l => l,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_e94528e03054f4e0_a;
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
-- You must compile the wrapper file cntr_11_0_59da7a7e9e683c63.vhd when simulating
-- the core, cntr_11_0_59da7a7e9e683c63. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_59da7a7e9e683c63 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    up : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
  );
END cntr_11_0_59da7a7e9e683c63;

ARCHITECTURE cntr_11_0_59da7a7e9e683c63_a OF cntr_11_0_59da7a7e9e683c63 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_59da7a7e9e683c63
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    up : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_59da7a7e9e683c63 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 2,
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
U0 : wrapped_cntr_11_0_59da7a7e9e683c63
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    up => up,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_59da7a7e9e683c63_a;
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
-- You must compile the wrapper file cntr_11_0_aecd98f86e85228c.vhd when simulating
-- the core, cntr_11_0_aecd98f86e85228c. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_aecd98f86e85228c IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END cntr_11_0_aecd98f86e85228c;

ARCHITECTURE cntr_11_0_aecd98f86e85228c_a OF cntr_11_0_aecd98f86e85228c IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_aecd98f86e85228c
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_aecd98f86e85228c USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_width => 16,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_aecd98f86e85228c
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_aecd98f86e85228c_a;
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
-- You must compile the wrapper file cntr_11_0_511daee48ac62764.vhd when simulating
-- the core, cntr_11_0_511daee48ac62764. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_511daee48ac62764 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
END cntr_11_0_511daee48ac62764;

ARCHITECTURE cntr_11_0_511daee48ac62764_a OF cntr_11_0_511daee48ac62764 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_511daee48ac62764
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_511daee48ac62764 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_width => 10,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_511daee48ac62764
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_511daee48ac62764_a;
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
-- You must compile the wrapper file cntr_11_0_7310fc5156c4342e.vhd when simulating
-- the core, cntr_11_0_7310fc5156c4342e. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_7310fc5156c4342e IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(18 DOWNTO 0)
  );
END cntr_11_0_7310fc5156c4342e;

ARCHITECTURE cntr_11_0_7310fc5156c4342e_a OF cntr_11_0_7310fc5156c4342e IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_7310fc5156c4342e
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(18 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_7310fc5156c4342e USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_width => 19,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_7310fc5156c4342e
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_7310fc5156c4342e_a;
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
-- You must compile the wrapper file bmg_62_a60cf5549354b619.vhd when simulating
-- the core, bmg_62_a60cf5549354b619. When compiling the wrapper file, be sure to
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
ENTITY bmg_62_a60cf5549354b619 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    clkb : IN STD_LOGIC;
    enb : IN STD_LOGIC;
    web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addrb : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    dinb : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END bmg_62_a60cf5549354b619;

ARCHITECTURE bmg_62_a60cf5549354b619_a OF bmg_62_a60cf5549354b619 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_a60cf5549354b619
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    clkb : IN STD_LOGIC;
    enb : IN STD_LOGIC;
    web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addrb : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    dinb : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_a60cf5549354b619 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 10,
      c_addrb_width => 9,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 1,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 1,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 1,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_a60cf5549354b619.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 2,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 1024,
      c_read_depth_b => 512,
      c_read_width_a => 18,
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
      c_write_depth_a => 1024,
      c_write_depth_b => 512,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 18,
      c_write_width_b => 36,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_a60cf5549354b619
  PORT MAP (
    clka => clka,
    ena => ena,
    wea => wea,
    addra => addra,
    dina => dina,
    douta => douta,
    clkb => clkb,
    enb => enb,
    web => web,
    addrb => addrb,
    dinb => dinb,
    doutb => doutb
  );
-- synthesis translate_on

END bmg_62_a60cf5549354b619_a;
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
-- You must compile the wrapper file bmg_62_8b6902f70206a636.vhd when simulating
-- the core, bmg_62_8b6902f70206a636. When compiling the wrapper file, be sure to
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
ENTITY bmg_62_8b6902f70206a636 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END bmg_62_8b6902f70206a636;

ARCHITECTURE bmg_62_8b6902f70206a636_a OF bmg_62_8b6902f70206a636 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_8b6902f70206a636
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_8b6902f70206a636 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
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
      c_has_mem_output_regs_a => 0,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_8b6902f70206a636.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 24,
      c_read_depth_b => 24,
      c_read_width_a => 2,
      c_read_width_b => 2,
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
      c_write_depth_a => 24,
      c_write_depth_b => 24,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 2,
      c_write_width_b => 2,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_8b6902f70206a636
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_8b6902f70206a636_a;
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
-- You must compile the wrapper file dmg_62_d4b1790d74a4992a.vhd when simulating
-- the core, dmg_62_d4b1790d74a4992a. When compiling the wrapper file, be sure to
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
ENTITY dmg_62_d4b1790d74a4992a IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    spo : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END dmg_62_d4b1790d74a4992a;

ARCHITECTURE dmg_62_d4b1790d74a4992a_a OF dmg_62_d4b1790d74a4992a IS
-- synthesis translate_off
COMPONENT wrapped_dmg_62_d4b1790d74a4992a
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    spo : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_62_d4b1790d74a4992a USE ENTITY XilinxCoreLib.dist_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
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
      c_mem_init_file => "dmg_62_d4b1790d74a4992a.mif",
      c_mem_type => 0,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 2
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_62_d4b1790d74a4992a
  PORT MAP (
    a => a,
    spo => spo
  );
-- synthesis translate_on

END dmg_62_d4b1790d74a4992a_a;
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
-- You must compile the wrapper file bmg_62_73edef83fb7839d9.vhd when simulating
-- the core, bmg_62_73edef83fb7839d9. When compiling the wrapper file, be sure to
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
ENTITY bmg_62_73edef83fb7839d9 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END bmg_62_73edef83fb7839d9;

ARCHITECTURE bmg_62_73edef83fb7839d9_a OF bmg_62_73edef83fb7839d9 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_73edef83fb7839d9
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_73edef83fb7839d9 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 11,
      c_addrb_width => 11,
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
      c_has_mem_output_regs_a => 0,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_73edef83fb7839d9.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 2048,
      c_read_depth_b => 2048,
      c_read_width_a => 9,
      c_read_width_b => 9,
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
      c_write_depth_a => 2048,
      c_write_depth_b => 2048,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 9,
      c_write_width_b => 9,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_73edef83fb7839d9
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_73edef83fb7839d9_a;
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
-- You must compile the wrapper file cntr_11_0_06789a19cedc7671.vhd when simulating
-- the core, cntr_11_0_06789a19cedc7671. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_06789a19cedc7671 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END cntr_11_0_06789a19cedc7671;

ARCHITECTURE cntr_11_0_06789a19cedc7671_a OF cntr_11_0_06789a19cedc7671 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_06789a19cedc7671
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_06789a19cedc7671 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_width => 24,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_06789a19cedc7671
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_06789a19cedc7671_a;
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
-- You must compile the wrapper file dmg_62_29a7fd57730c35e5.vhd when simulating
-- the core, dmg_62_29a7fd57730c35e5. When compiling the wrapper file, be sure to
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
ENTITY dmg_62_29a7fd57730c35e5 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    clk : IN STD_LOGIC;
    we : IN STD_LOGIC;
    spo : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END dmg_62_29a7fd57730c35e5;

ARCHITECTURE dmg_62_29a7fd57730c35e5_a OF dmg_62_29a7fd57730c35e5 IS
-- synthesis translate_off
COMPONENT wrapped_dmg_62_29a7fd57730c35e5
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    clk : IN STD_LOGIC;
    we : IN STD_LOGIC;
    spo : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_62_29a7fd57730c35e5 USE ENTITY XilinxCoreLib.dist_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_default_data => "0",
      c_depth => 16,
      c_family => "virtex5",
      c_has_clk => 1,
      c_has_d => 1,
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
      c_has_we => 1,
      c_mem_init_file => "dmg_62_29a7fd57730c35e5.mif",
      c_mem_type => 1,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 1,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 32
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_62_29a7fd57730c35e5
  PORT MAP (
    a => a,
    d => d,
    clk => clk,
    we => we,
    spo => spo
  );
-- synthesis translate_on

END dmg_62_29a7fd57730c35e5_a;
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
-- You must compile the wrapper file cntr_11_0_5df4e6e0cdb230c4.vhd when simulating
-- the core, cntr_11_0_5df4e6e0cdb230c4. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_5df4e6e0cdb230c4 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
  );
END cntr_11_0_5df4e6e0cdb230c4;

ARCHITECTURE cntr_11_0_5df4e6e0cdb230c4_a OF cntr_11_0_5df4e6e0cdb230c4 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_5df4e6e0cdb230c4
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_5df4e6e0cdb230c4 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_sinit_val => "1000000000000",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 13,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_5df4e6e0cdb230c4
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_5df4e6e0cdb230c4_a;
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
-- You must compile the wrapper file cntr_11_0_9067af53ee8d83ee.vhd when simulating
-- the core, cntr_11_0_9067af53ee8d83ee. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_9067af53ee8d83ee IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
  );
END cntr_11_0_9067af53ee8d83ee;

ARCHITECTURE cntr_11_0_9067af53ee8d83ee_a OF cntr_11_0_9067af53ee8d83ee IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_9067af53ee8d83ee
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_9067af53ee8d83ee USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_width => 14,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_9067af53ee8d83ee
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    load => load,
    l => l,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_9067af53ee8d83ee_a;
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
-- You must compile the wrapper file bmg_62_bd93aafb66935d25.vhd when simulating
-- the core, bmg_62_bd93aafb66935d25. When compiling the wrapper file, be sure to
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
ENTITY bmg_62_bd93aafb66935d25 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(64 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
    clkb : IN STD_LOGIC;
    enb : IN STD_LOGIC;
    web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addrb : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    dinb : IN STD_LOGIC_VECTOR(64 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(64 DOWNTO 0)
  );
END bmg_62_bd93aafb66935d25;

ARCHITECTURE bmg_62_bd93aafb66935d25_a OF bmg_62_bd93aafb66935d25 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_bd93aafb66935d25
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(64 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
    clkb : IN STD_LOGIC;
    enb : IN STD_LOGIC;
    web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addrb : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    dinb : IN STD_LOGIC_VECTOR(64 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(64 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_bd93aafb66935d25 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 12,
      c_addrb_width => 12,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 1,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_family => "virtex5",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 1,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 0,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_bd93aafb66935d25.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 2,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 4096,
      c_read_depth_b => 4096,
      c_read_width_a => 65,
      c_read_width_b => 65,
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
      c_write_depth_a => 4096,
      c_write_depth_b => 4096,
      c_write_mode_a => "READ_FIRST",
      c_write_mode_b => "READ_FIRST",
      c_write_width_a => 65,
      c_write_width_b => 65,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_bd93aafb66935d25
  PORT MAP (
    clka => clka,
    ena => ena,
    wea => wea,
    addra => addra,
    dina => dina,
    douta => douta,
    clkb => clkb,
    enb => enb,
    web => web,
    addrb => addrb,
    dinb => dinb,
    doutb => doutb
  );
-- synthesis translate_on

END bmg_62_bd93aafb66935d25_a;
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
-- You must compile the wrapper file cntr_11_0_9d1193ca144fd60c.vhd when simulating
-- the core, cntr_11_0_9d1193ca144fd60c. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_9d1193ca144fd60c IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(29 DOWNTO 0)
  );
END cntr_11_0_9d1193ca144fd60c;

ARCHITECTURE cntr_11_0_9d1193ca144fd60c_a OF cntr_11_0_9d1193ca144fd60c IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_9d1193ca144fd60c
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(29 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_9d1193ca144fd60c USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_width => 30,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_9d1193ca144fd60c
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_9d1193ca144fd60c_a;
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
-- You must compile the wrapper file bmg_62_45150160fbf326f2.vhd when simulating
-- the core, bmg_62_45150160fbf326f2. When compiling the wrapper file, be sure to
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
ENTITY bmg_62_45150160fbf326f2 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END bmg_62_45150160fbf326f2;

ARCHITECTURE bmg_62_45150160fbf326f2_a OF bmg_62_45150160fbf326f2 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_45150160fbf326f2
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_45150160fbf326f2 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 11,
      c_addrb_width => 11,
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
      c_init_file_name => "bmg_62_45150160fbf326f2.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 2048,
      c_read_depth_b => 2048,
      c_read_width_a => 8,
      c_read_width_b => 8,
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
      c_write_depth_a => 2048,
      c_write_depth_b => 2048,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 8,
      c_write_width_b => 8,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_45150160fbf326f2
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_45150160fbf326f2_a;
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
-- You must compile the wrapper file addsb_11_0_e48e31d556a35f15.vhd when simulating
-- the core, addsb_11_0_e48e31d556a35f15. When compiling the wrapper file, be sure to
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
ENTITY addsb_11_0_e48e31d556a35f15 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(32 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(32 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(32 DOWNTO 0)
  );
END addsb_11_0_e48e31d556a35f15;

ARCHITECTURE addsb_11_0_e48e31d556a35f15_a OF addsb_11_0_e48e31d556a35f15 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_e48e31d556a35f15
  PORT (
    a : IN STD_LOGIC_VECTOR(32 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(32 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(32 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_e48e31d556a35f15 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 1,
      c_a_width => 33,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 1,
      c_b_value => "000000000000000000000000000000000",
      c_b_width => 33,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 0,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 0,
      c_latency => 0,
      c_out_width => 33,
      c_sclr_overrides_sset => 0,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_e48e31d556a35f15
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_e48e31d556a35f15_a;
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
-- You must compile the wrapper file cntr_11_0_92cf1c8e61537910.vhd when simulating
-- the core, cntr_11_0_92cf1c8e61537910. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_92cf1c8e61537910 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
  );
END cntr_11_0_92cf1c8e61537910;

ARCHITECTURE cntr_11_0_92cf1c8e61537910_a OF cntr_11_0_92cf1c8e61537910 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_92cf1c8e61537910
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_92cf1c8e61537910 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_width => 11,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_92cf1c8e61537910
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_92cf1c8e61537910_a;
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
-- You must compile the wrapper file cntr_11_0_2b657e2d1d4c21af.vhd when simulating
-- the core, cntr_11_0_2b657e2d1d4c21af. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_2b657e2d1d4c21af IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(19 DOWNTO 0)
  );
END cntr_11_0_2b657e2d1d4c21af;

ARCHITECTURE cntr_11_0_2b657e2d1d4c21af_a OF cntr_11_0_2b657e2d1d4c21af IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_2b657e2d1d4c21af
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(19 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_2b657e2d1d4c21af USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_width => 20,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_2b657e2d1d4c21af
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_2b657e2d1d4c21af_a;
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
-- You must compile the wrapper file bmg_62_4780518c6f20c162.vhd when simulating
-- the core, bmg_62_4780518c6f20c162. When compiling the wrapper file, be sure to
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
ENTITY bmg_62_4780518c6f20c162 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END bmg_62_4780518c6f20c162;

ARCHITECTURE bmg_62_4780518c6f20c162_a OF bmg_62_4780518c6f20c162 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_4780518c6f20c162
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_4780518c6f20c162 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
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
      c_has_mem_output_regs_a => 0,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_62_4780518c6f20c162.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 0,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 512,
      c_read_depth_b => 512,
      c_read_width_a => 32,
      c_read_width_b => 32,
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
      c_write_width_a => 32,
      c_write_width_b => 32,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_4780518c6f20c162
  PORT MAP (
    clka => clka,
    ena => ena,
    wea => wea,
    addra => addra,
    dina => dina,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_4780518c6f20c162_a;
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
-- You must compile the wrapper file dmg_62_0a86efc0bb6fa1ec.vhd when simulating
-- the core, dmg_62_0a86efc0bb6fa1ec. When compiling the wrapper file, be sure to
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
ENTITY dmg_62_0a86efc0bb6fa1ec IS
  PORT (
    a : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END dmg_62_0a86efc0bb6fa1ec;

ARCHITECTURE dmg_62_0a86efc0bb6fa1ec_a OF dmg_62_0a86efc0bb6fa1ec IS
-- synthesis translate_off
COMPONENT wrapped_dmg_62_0a86efc0bb6fa1ec
  PORT (
    a : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    clk : IN STD_LOGIC;
    qspo_ce : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_dmg_62_0a86efc0bb6fa1ec USE ENTITY XilinxCoreLib.dist_mem_gen_v6_2(behavioral)
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
      c_mem_init_file => "dmg_62_0a86efc0bb6fa1ec.mif",
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
U0 : wrapped_dmg_62_0a86efc0bb6fa1ec
  PORT MAP (
    a => a,
    clk => clk,
    qspo_ce => qspo_ce,
    qspo => qspo
  );
-- synthesis translate_on

END dmg_62_0a86efc0bb6fa1ec_a;
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
-- You must compile the wrapper file asr_11_0_baa2205482699974.vhd when simulating
-- the core, asr_11_0_baa2205482699974. When compiling the wrapper file, be sure to
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
ENTITY asr_11_0_baa2205482699974 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END asr_11_0_baa2205482699974;

ARCHITECTURE asr_11_0_baa2205482699974_a OF asr_11_0_baa2205482699974 IS
-- synthesis translate_off
COMPONENT wrapped_asr_11_0_baa2205482699974
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_asr_11_0_baa2205482699974 USE ENTITY XilinxCoreLib.c_shift_ram_v11_0(behavioral)
    GENERIC MAP (
      c_addr_width => 4,
      c_ainit_val => "00000000000000000000000000000000",
      c_default_data => "00000000000000000000000000000000",
      c_depth => 16,
      c_has_a => 1,
      c_has_ce => 1,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_mem_init_file => "asr_11_0_baa2205482699974.mif",
      c_opt_goal => 0,
      c_parser_type => 0,
      c_read_mif => 1,
      c_reg_last_bit => 0,
      c_shift_type => 1,
      c_sinit_val => "00000000000000000000000000000000",
      c_sync_enable => 0,
      c_sync_priority => 1,
      c_verbosity => 0,
      c_width => 32,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_asr_11_0_baa2205482699974
  PORT MAP (
    a => a,
    d => d,
    clk => clk,
    ce => ce,
    q => q
  );
-- synthesis translate_on

END asr_11_0_baa2205482699974_a;
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
-- You must compile the wrapper file bmg_62_61722a40b5652b33.vhd when simulating
-- the core, bmg_62_61722a40b5652b33. When compiling the wrapper file, be sure to
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
ENTITY bmg_62_61722a40b5652b33 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END bmg_62_61722a40b5652b33;

ARCHITECTURE bmg_62_61722a40b5652b33_a OF bmg_62_61722a40b5652b33 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_62_61722a40b5652b33
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_62_61722a40b5652b33 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_2(behavioral)
    GENERIC MAP (
      c_addra_width => 11,
      c_addrb_width => 11,
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
      c_init_file_name => "bmg_62_61722a40b5652b33.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 2048,
      c_read_depth_b => 2048,
      c_read_width_a => 8,
      c_read_width_b => 8,
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
      c_write_depth_a => 2048,
      c_write_depth_b => 2048,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 8,
      c_write_width_b => 8,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_62_61722a40b5652b33
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_62_61722a40b5652b33_a;
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
-- You must compile the wrapper file mult_11_2_d745d7ddd0aa234d.vhd when simulating
-- the core, mult_11_2_d745d7ddd0aa234d. When compiling the wrapper file, be sure to
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
ENTITY mult_11_2_d745d7ddd0aa234d IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
  );
END mult_11_2_d745d7ddd0aa234d;

ARCHITECTURE mult_11_2_d745d7ddd0aa234d_a OF mult_11_2_d745d7ddd0aa234d IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_d745d7ddd0aa234d
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_d745d7ddd0aa234d USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 1,
      c_a_width => 9,
      c_b_type => 0,
      c_b_value => "10000001",
      c_b_width => 8,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 3,
      c_model_type => 0,
      c_mult_type => 1,
      c_optimize_goal => 1,
      c_out_high => 16,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_d745d7ddd0aa234d
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_d745d7ddd0aa234d_a;
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
-- You must compile the wrapper file cntr_11_0_520b146027c1d89b.vhd when simulating
-- the core, cntr_11_0_520b146027c1d89b. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_520b146027c1d89b IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END cntr_11_0_520b146027c1d89b;

ARCHITECTURE cntr_11_0_520b146027c1d89b_a OF cntr_11_0_520b146027c1d89b IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_520b146027c1d89b
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_520b146027c1d89b USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_width => 32,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_520b146027c1d89b
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_520b146027c1d89b_a;
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
-- You must compile the wrapper file cntr_11_0_0c399983e369864b.vhd when simulating
-- the core, cntr_11_0_0c399983e369864b. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_0c399983e369864b IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
  );
END cntr_11_0_0c399983e369864b;

ARCHITECTURE cntr_11_0_0c399983e369864b_a OF cntr_11_0_0c399983e369864b IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_0c399983e369864b
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_0c399983e369864b USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_width => 28,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_0c399983e369864b
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    load => load,
    l => l,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_0c399983e369864b_a;
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
-- You must compile the wrapper file cntr_11_0_56cea93c32f2afe9.vhd when simulating
-- the core, cntr_11_0_56cea93c32f2afe9. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_56cea93c32f2afe9 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(60 DOWNTO 0)
  );
END cntr_11_0_56cea93c32f2afe9;

ARCHITECTURE cntr_11_0_56cea93c32f2afe9_a OF cntr_11_0_56cea93c32f2afe9 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_56cea93c32f2afe9
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(60 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_56cea93c32f2afe9 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_width => 61,
      c_xdevicefamily => "virtex5"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_56cea93c32f2afe9
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_56cea93c32f2afe9_a;

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

entity delay_672d2b8d1e is
  port (
    d : in std_logic_vector((32 - 1) downto 0);
    q : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_672d2b8d1e;


architecture behavior of delay_672d2b8d1e is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
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
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_83e473517e is
  port (
    in0 : in std_logic_vector((1 - 1) downto 0);
    in1 : in std_logic_vector((7 - 1) downto 0);
    y : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_83e473517e;


architecture behavior of concat_83e473517e is
  signal in0_1_23: unsigned((1 - 1) downto 0);
  signal in1_1_27: unsigned((7 - 1) downto 0);
  signal y_2_1_concat: unsigned((8 - 1) downto 0);
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

entity inverter_e2b989a05e is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_e2b989a05e;


architecture behavior of inverter_e2b989a05e is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= std_logic_vector_to_unsigned(not unsigned_to_std_logic_vector(ip_1_26));
  op_mem_22_20_push_front_pop_back_en <= '0';
  op <= unsigned_to_std_logic_vector(internal_ip_12_1_bitnot);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_4389dc89bf is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_4389dc89bf;


architecture behavior of reinterpret_4389dc89bf is
  signal input_port_1_40: unsigned((8 - 1) downto 0);
  signal output_port_5_5_force: signed((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_a1e126f11c is
  port (
    in0 : in std_logic_vector((8 - 1) downto 0);
    in1 : in std_logic_vector((8 - 1) downto 0);
    in2 : in std_logic_vector((8 - 1) downto 0);
    in3 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_a1e126f11c;


architecture behavior of concat_a1e126f11c is
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
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_d51df7ac30 is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_d51df7ac30;


architecture behavior of reinterpret_d51df7ac30 is
  signal input_port_1_40: signed((8 - 1) downto 0);
  signal output_port_5_5_force: unsigned((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_9f02caa990 is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_9f02caa990;


architecture behavior of delay_9f02caa990 is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => '0');
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
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
entity xlpassthrough is
    generic (
        din_width    : integer := 16;
        dout_width   : integer := 16
        );
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        dout : out std_logic_vector (dout_width-1 downto 0));
end xlpassthrough;
architecture passthrough_arch of xlpassthrough is
begin
  dout <= din;
end passthrough_arch;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_bbd7b31fe5 is
  port (
    op : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_bbd7b31fe5;


architecture behavior of constant_bbd7b31fe5 is
begin
  op <= "000000000000000000000000000000000000";
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
  component cntr_11_0_06789a19cedc7671
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_06789a19cedc7671:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_06789a19cedc7671:
    component is "true";
  attribute box_type of cntr_11_0_06789a19cedc7671:
    component  is "black_box";
  component cntr_11_0_7310fc5156c4342e
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_7310fc5156c4342e:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_7310fc5156c4342e:
    component is "true";
  attribute box_type of cntr_11_0_7310fc5156c4342e:
    component  is "black_box";
  component cntr_11_0_0c399983e369864b
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_0c399983e369864b:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_0c399983e369864b:
    component is "true";
  attribute box_type of cntr_11_0_0c399983e369864b:
    component  is "black_box";
  component cntr_11_0_9d1193ca144fd60c
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_9d1193ca144fd60c:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_9d1193ca144fd60c:
    component is "true";
  attribute box_type of cntr_11_0_9d1193ca144fd60c:
    component  is "black_box";
  component cntr_11_0_520b146027c1d89b
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_520b146027c1d89b:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_520b146027c1d89b:
    component is "true";
  attribute box_type of cntr_11_0_520b146027c1d89b:
    component  is "black_box";
  component cntr_11_0_2b657e2d1d4c21af
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_2b657e2d1d4c21af:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_2b657e2d1d4c21af:
    component is "true";
  attribute box_type of cntr_11_0_2b657e2d1d4c21af:
    component  is "black_box";
  component cntr_11_0_511daee48ac62764
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_511daee48ac62764:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_511daee48ac62764:
    component is "true";
  attribute box_type of cntr_11_0_511daee48ac62764:
    component  is "black_box";
  component cntr_11_0_aecd98f86e85228c
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_aecd98f86e85228c:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_aecd98f86e85228c:
    component is "true";
  attribute box_type of cntr_11_0_aecd98f86e85228c:
    component  is "black_box";
  component cntr_11_0_59da7a7e9e683c63
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      up: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_59da7a7e9e683c63:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_59da7a7e9e683c63:
    component is "true";
  attribute box_type of cntr_11_0_59da7a7e9e683c63:
    component  is "black_box";
  component cntr_11_0_e94528e03054f4e0
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_e94528e03054f4e0:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_e94528e03054f4e0:
    component is "true";
  attribute box_type of cntr_11_0_e94528e03054f4e0:
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
  component cntr_11_0_92cf1c8e61537910
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_92cf1c8e61537910:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_92cf1c8e61537910:
    component is "true";
  attribute box_type of cntr_11_0_92cf1c8e61537910:
    component  is "black_box";
  component cntr_11_0_56cea93c32f2afe9
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_56cea93c32f2afe9:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_56cea93c32f2afe9:
    component is "true";
  attribute box_type of cntr_11_0_56cea93c32f2afe9:
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
  component cntr_11_0_9067af53ee8d83ee
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_9067af53ee8d83ee:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_9067af53ee8d83ee:
    component is "true";
  attribute box_type of cntr_11_0_9067af53ee8d83ee:
    component  is "black_box";
  component cntr_11_0_5df4e6e0cdb230c4
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_5df4e6e0cdb230c4:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_5df4e6e0cdb230c4:
    component is "true";
  attribute box_type of cntr_11_0_5df4e6e0cdb230c4:
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
  comp1: if ((core_name0 = "cntr_11_0_06789a19cedc7671")) generate
    core_instance1: cntr_11_0_06789a19cedc7671
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp2: if ((core_name0 = "cntr_11_0_7310fc5156c4342e")) generate
    core_instance2: cntr_11_0_7310fc5156c4342e
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp3: if ((core_name0 = "cntr_11_0_0c399983e369864b")) generate
    core_instance3: cntr_11_0_0c399983e369864b
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
  comp4: if ((core_name0 = "cntr_11_0_9d1193ca144fd60c")) generate
    core_instance4: cntr_11_0_9d1193ca144fd60c
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp5: if ((core_name0 = "cntr_11_0_520b146027c1d89b")) generate
    core_instance5: cntr_11_0_520b146027c1d89b
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp6: if ((core_name0 = "cntr_11_0_2b657e2d1d4c21af")) generate
    core_instance6: cntr_11_0_2b657e2d1d4c21af
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp7: if ((core_name0 = "cntr_11_0_511daee48ac62764")) generate
    core_instance7: cntr_11_0_511daee48ac62764
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp8: if ((core_name0 = "cntr_11_0_aecd98f86e85228c")) generate
    core_instance8: cntr_11_0_aecd98f86e85228c
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp9: if ((core_name0 = "cntr_11_0_59da7a7e9e683c63")) generate
    core_instance9: cntr_11_0_59da7a7e9e683c63
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        up => up(0),
        q => op_net
      );
  end generate;
  comp10: if ((core_name0 = "cntr_11_0_e94528e03054f4e0")) generate
    core_instance10: cntr_11_0_e94528e03054f4e0
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
  comp11: if ((core_name0 = "cntr_11_0_813142b9460b2f27")) generate
    core_instance11: cntr_11_0_813142b9460b2f27
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp12: if ((core_name0 = "cntr_11_0_92cf1c8e61537910")) generate
    core_instance12: cntr_11_0_92cf1c8e61537910
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp13: if ((core_name0 = "cntr_11_0_56cea93c32f2afe9")) generate
    core_instance13: cntr_11_0_56cea93c32f2afe9
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp14: if ((core_name0 = "cntr_11_0_e9eaaa5672e4be4d")) generate
    core_instance14: cntr_11_0_e9eaaa5672e4be4d
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
  comp15: if ((core_name0 = "cntr_11_0_9067af53ee8d83ee")) generate
    core_instance15: cntr_11_0_9067af53ee8d83ee
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
  comp16: if ((core_name0 = "cntr_11_0_5df4e6e0cdb230c4")) generate
    core_instance16: cntr_11_0_5df4e6e0cdb230c4
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp17: if ((core_name0 = "cntr_11_0_7ca694f8efe8d963")) generate
    core_instance17: cntr_11_0_7ca694f8efe8d963
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
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_cf4f99539f is
  port (
    d : in std_logic_vector((10 - 1) downto 0);
    q : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_cf4f99539f;


architecture behavior of delay_cf4f99539f is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
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

entity relational_1a5580632c is
  port (
    a : in std_logic_vector((10 - 1) downto 0);
    b : in std_logic_vector((10 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_1a5580632c;


architecture behavior of relational_1a5580632c is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  result_14_3_rel <= a_1_31 /= b_1_34;
  op_mem_32_22_front_din <= result_14_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
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
entity xldpram is
  generic (
    core_name0: string := "";
    c_width_a: integer := 13;
    c_address_width_a: integer := 4;
    c_width_b: integer := 13;
    c_address_width_b: integer := 4;
    c_has_sinita: integer := 0;
    c_has_sinitb: integer := 0;
    latency: integer := 1
  );
  port (
    dina: in std_logic_vector(c_width_a - 1 downto 0);
    addra: in std_logic_vector(c_address_width_a - 1 downto 0);
    wea: in std_logic_vector(0 downto 0);
    a_ce: in std_logic;
    a_clk: in std_logic;
    rsta: in std_logic_vector(0 downto 0) := (others => '0');
    ena: in std_logic_vector(0 downto 0) := (others => '1');
    douta: out std_logic_vector(c_width_a - 1 downto 0);
    dinb: in std_logic_vector(c_width_b - 1 downto 0);
    addrb: in std_logic_vector(c_address_width_b - 1 downto 0);
    web: in std_logic_vector(0 downto 0);
    b_ce: in std_logic;
    b_clk: in std_logic;
    rstb: in std_logic_vector(0 downto 0) := (others => '0');
    enb: in std_logic_vector(0 downto 0) := (others => '1');
    doutb: out std_logic_vector(c_width_b - 1 downto 0)
  );
end xldpram ;
architecture behavior of xldpram is
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

  signal core_addra: std_logic_vector(c_address_width_a - 1 downto 0);
  signal core_addrb: std_logic_vector(c_address_width_b - 1 downto 0);
  signal core_dina, core_douta, dly_douta:
    std_logic_vector(c_width_a - 1 downto 0);
  signal core_dinb, core_doutb, dly_doutb:
    std_logic_vector(c_width_b - 1 downto 0);
  signal core_wea, core_web: std_logic;
  signal core_a_ce, core_b_ce: std_logic;
  signal sinita, sinitb: std_logic;

  component bmg_62_a60cf5549354b619
    port (
        addra: in std_logic_vector(c_address_width_a - 1 downto 0);
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
      doutb: out std_logic_vector(c_width_b - 1 downto 0)
     );
  end component;
  attribute syn_black_box of bmg_62_a60cf5549354b619:
    component is true;
  attribute fpga_dont_touch of bmg_62_a60cf5549354b619:
    component is "true";
  attribute box_type of bmg_62_a60cf5549354b619:
    component  is "black_box";
  component bmg_62_bd93aafb66935d25
    port (
        addra: in std_logic_vector(c_address_width_a - 1 downto 0);
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
      doutb: out std_logic_vector(c_width_b - 1 downto 0)
     );
  end component;
  attribute syn_black_box of bmg_62_bd93aafb66935d25:
    component is true;
  attribute fpga_dont_touch of bmg_62_bd93aafb66935d25:
    component is "true";
  attribute box_type of bmg_62_bd93aafb66935d25:
    component  is "black_box";
begin
  core_addra <= addra;
  core_dina <= dina;
  douta <= dly_douta;
  core_wea <= wea(0);
  core_a_ce <= a_ce and ena(0);
  sinita <= rsta(0) and a_ce;

  core_addrb <= addrb;
  core_dinb <= dinb;
  doutb <= dly_doutb;
  core_web <= web(0);
  core_b_ce <= b_ce and enb(0);
  sinitb <= rstb(0) and b_ce;
  comp0: if ((core_name0 = "bmg_62_a60cf5549354b619")) generate
    core_instance0: bmg_62_a60cf5549354b619
      port map (
          addra => core_addra,
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
        doutb => core_doutb
      );
  end generate;
  comp1: if ((core_name0 = "bmg_62_bd93aafb66935d25")) generate
    core_instance1: bmg_62_bd93aafb66935d25
      port map (
          addra => core_addra,
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
        doutb => core_doutb
      );
  end generate;
  latency_test: if (latency > 2) generate
    regA: synth_reg
      generic map (
        width => c_width_a,
        latency => latency - 2
      )
      port map (
        i => core_douta,
        ce => core_a_ce,
        clr => '0',
        clk => a_clk,
        o => dly_douta
      );
    regB: synth_reg
      generic map (
        width => c_width_b,
        latency => latency - 2
      )
      port map (
        i => core_doutb,
        ce => core_b_ce,
        clr => '0',
        clk => b_clk,
        o => dly_doutb
      );
  end generate;
  latency1: if (latency <= 2) generate
    dly_douta <= core_douta;
    dly_doutb <= core_doutb;
  end generate;
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_1a070f1f35 is
  port (
    in0 : in std_logic_vector((4 - 1) downto 0);
    in1 : in std_logic_vector((4 - 1) downto 0);
    y : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_1a070f1f35;


architecture behavior of concat_1a070f1f35 is
  signal in0_1_23: unsigned((4 - 1) downto 0);
  signal in1_1_27: unsigned((4 - 1) downto 0);
  signal y_2_1_concat: unsigned((8 - 1) downto 0);
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

entity concat_32afb77cd2 is
  port (
    in0 : in std_logic_vector((1 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_32afb77cd2;


architecture behavior of concat_32afb77cd2 is
  signal in0_1_23: boolean;
  signal in1_1_27: boolean;
  signal y_2_1_concat: unsigned((2 - 1) downto 0);
begin
  in0_1_23 <= ((in0) = "1");
  in1_1_27 <= ((in1) = "1");
  y_2_1_concat <= std_logic_vector_to_unsigned(boolean_to_vector(in0_1_23) & boolean_to_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_3ee5f91fcf is
  port (
    op : out std_logic_vector((27 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_3ee5f91fcf;


architecture behavior of constant_3ee5f91fcf is
begin
  op <= "000000000111000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_3d1b04c74c is
  port (
    op : out std_logic_vector((27 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_3d1b04c74c;


architecture behavior of constant_3d1b04c74c is
begin
  op <= "111111111001000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a3d619979c is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a3d619979c;


architecture behavior of constant_a3d619979c is
begin
  op <= "0111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a629aefb53 is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a629aefb53;


architecture behavior of constant_a629aefb53 is
begin
  op <= "1001";
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

entity logical_127a315f20 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_127a315f20;


architecture behavior of logical_127a315f20 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal d3_1_33: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (2 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    '0',
    '0');
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          latency_pipe_5_26(i) <= latency_pipe_5_26(i-1);
        end loop;
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mult_ca473f56c4 is
  port (
    a : in std_logic_vector((18 - 1) downto 0);
    b : in std_logic_vector((18 - 1) downto 0);
    p : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mult_ca473f56c4;


architecture behavior of mult_ca473f56c4 is
  signal a_1_22: signed((18 - 1) downto 0);
  signal b_1_25: unsigned((18 - 1) downto 0);
  type array_type_op_mem_65_20 is array (0 to (3 - 1)) of signed((36 - 1) downto 0);
  signal op_mem_65_20: array_type_op_mem_65_20 := (
    "000000000000000000000000000000000000",
    "000000000000000000000000000000000000",
    "000000000000000000000000000000000000");
  signal op_mem_65_20_front_din: signed((36 - 1) downto 0);
  signal op_mem_65_20_back: signed((36 - 1) downto 0);
  signal op_mem_65_20_push_front_pop_back_en: std_logic;
  signal cast_cast_46_58: signed((19 - 1) downto 0);
  signal mult_46_56: signed((37 - 1) downto 0);
  signal cast_product_46_3_convert: signed((36 - 1) downto 0);
begin
  a_1_22 <= std_logic_vector_to_signed(a);
  b_1_25 <= std_logic_vector_to_unsigned(b);
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
  cast_cast_46_58 <= u2s_cast(b_1_25, 3, 19, 3);
  mult_46_56 <= (a_1_22 * cast_cast_46_58);
  cast_product_46_3_convert <= s2s_cast(mult_46_56, 20, 36, 20);
  op_mem_65_20_front_din <= cast_product_46_3_convert;
  op_mem_65_20_push_front_pop_back_en <= '1';
  p <= signed_to_std_logic_vector(op_mem_65_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_9723c3381b is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((4 - 1) downto 0);
    d1 : in std_logic_vector((4 - 1) downto 0);
    d2 : in std_logic_vector((4 - 1) downto 0);
    y : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_9723c3381b;


architecture behavior of mux_9723c3381b is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((4 - 1) downto 0);
  signal d1_1_27: std_logic_vector((4 - 1) downto 0);
  signal d2_1_30: std_logic_vector((4 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((4 - 1) downto 0);
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

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_df53fd8fe7 is
  port (
    input_port : in std_logic_vector((4 - 1) downto 0);
    output_port : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_df53fd8fe7;


architecture behavior of reinterpret_df53fd8fe7 is
  signal input_port_1_40: signed((4 - 1) downto 0);
  signal output_port_5_5_force: unsigned((4 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_ecc398b3c4 is
  port (
    a : in std_logic_vector((36 - 1) downto 0);
    b : in std_logic_vector((27 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_ecc398b3c4;


architecture behavior of relational_ecc398b3c4 is
  signal a_1_31: signed((36 - 1) downto 0);
  signal b_1_34: signed((27 - 1) downto 0);
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_32_22(i) <= op_mem_32_22(i-1);
        end loop;
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  cast_18_16 <= s2s_cast(b_1_34, 18, 36, 20);
  result_18_3_rel <= a_1_31 > cast_18_16;
  op_mem_32_22_front_din <= result_18_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_1661032f65 is
  port (
    a : in std_logic_vector((36 - 1) downto 0);
    b : in std_logic_vector((27 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_1661032f65;


architecture behavior of relational_1661032f65 is
  signal a_1_31: signed((36 - 1) downto 0);
  signal b_1_34: signed((27 - 1) downto 0);
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_32_22(i) <= op_mem_32_22(i-1);
        end loop;
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  cast_16_16 <= s2s_cast(b_1_34, 18, 36, 20);
  result_16_3_rel <= a_1_31 < cast_16_16;
  op_mem_32_22_front_din <= result_16_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
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

entity delay_b6092ad150 is
  port (
    d : in std_logic_vector((18 - 1) downto 0);
    q : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_b6092ad150;


architecture behavior of delay_b6092ad150 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
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

entity concat_15d98836ad is
  port (
    in0 : in std_logic_vector((8 - 1) downto 0);
    in1 : in std_logic_vector((8 - 1) downto 0);
    in2 : in std_logic_vector((8 - 1) downto 0);
    in3 : in std_logic_vector((8 - 1) downto 0);
    in4 : in std_logic_vector((8 - 1) downto 0);
    in5 : in std_logic_vector((8 - 1) downto 0);
    in6 : in std_logic_vector((8 - 1) downto 0);
    in7 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((64 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_15d98836ad;


architecture behavior of concat_15d98836ad is
  signal in0_1_23: unsigned((8 - 1) downto 0);
  signal in1_1_27: unsigned((8 - 1) downto 0);
  signal in2_1_31: unsigned((8 - 1) downto 0);
  signal in3_1_35: unsigned((8 - 1) downto 0);
  signal in4_1_39: unsigned((8 - 1) downto 0);
  signal in5_1_43: unsigned((8 - 1) downto 0);
  signal in6_1_47: unsigned((8 - 1) downto 0);
  signal in7_1_51: unsigned((8 - 1) downto 0);
  signal y_2_1_concat: unsigned((64 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  in4_1_39 <= std_logic_vector_to_unsigned(in4);
  in5_1_43 <= std_logic_vector_to_unsigned(in5);
  in6_1_47 <= std_logic_vector_to_unsigned(in6);
  in7_1_51 <= std_logic_vector_to_unsigned(in7);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35) & unsigned_to_std_logic_vector(in4_1_39) & unsigned_to_std_logic_vector(in5_1_43) & unsigned_to_std_logic_vector(in6_1_47) & unsigned_to_std_logic_vector(in7_1_51));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
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

entity constant_bdd7f47790 is
  port (
    op : out std_logic_vector((24 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_bdd7f47790;


architecture behavior of constant_bdd7f47790 is
begin
  op <= "100000000000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_831189b190 is
  port (
    a : in std_logic_vector((24 - 1) downto 0);
    b : in std_logic_vector((24 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_831189b190;


architecture behavior of relational_831189b190 is
  signal a_1_31: unsigned((24 - 1) downto 0);
  signal b_1_34: unsigned((24 - 1) downto 0);
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

entity constant_b713aad2a7 is
  port (
    op : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_b713aad2a7;


architecture behavior of constant_b713aad2a7 is
begin
  op <= "1000000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_502d6cf7c0 is
  port (
    a : in std_logic_vector((19 - 1) downto 0);
    b : in std_logic_vector((19 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_502d6cf7c0;


architecture behavior of relational_502d6cf7c0 is
  signal a_1_31: unsigned((19 - 1) downto 0);
  signal b_1_34: unsigned((19 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;

entity fft_wideband_real_core2 is
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
end fft_wideband_real_core2;
library IEEE;
use IEEE.std_logic_1164.all;

entity fir_core is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    pol1_in1: in std_logic_vector(7 downto 0); 
    pol1_in2: in std_logic_vector(7 downto 0); 
    pol1_in3: in std_logic_vector(7 downto 0); 
    pol1_in4: in std_logic_vector(7 downto 0); 
    sync: in std_logic; 
    pol1_out1: out std_logic_vector(17 downto 0); 
    pol1_out2: out std_logic_vector(17 downto 0); 
    pol1_out3: out std_logic_vector(17 downto 0); 
    pol1_out4: out std_logic_vector(17 downto 0); 
    sync_out: out std_logic
  );
end fir_core;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_c1bd3afa8c is
  port (
    op : out std_logic_vector((28 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_c1bd3afa8c;


architecture behavior of constant_c1bd3afa8c is
begin
  op <= "0000000000000000000000000001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_98b461a391 is
  port (
    op : out std_logic_vector((28 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_98b461a391;


architecture behavior of constant_98b461a391 is
begin
  op <= "0000000000000000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_16b5ff1a9f is
  port (
    op : out std_logic_vector((28 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_16b5ff1a9f;


architecture behavior of constant_16b5ff1a9f is
begin
  op <= "1000111111111111111111111111";
end behavior;

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

entity relational_1ea7543d62 is
  port (
    a : in std_logic_vector((28 - 1) downto 0);
    b : in std_logic_vector((28 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_1ea7543d62;


architecture behavior of relational_1ea7543d62 is
  signal a_1_31: unsigned((28 - 1) downto 0);
  signal b_1_34: unsigned((28 - 1) downto 0);
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

entity relational_8759749125 is
  port (
    a : in std_logic_vector((28 - 1) downto 0);
    b : in std_logic_vector((28 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_8759749125;


architecture behavior of relational_8759749125 is
  signal a_1_31: unsigned((28 - 1) downto 0);
  signal b_1_34: unsigned((28 - 1) downto 0);
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

entity constant_42baf59612 is
  port (
    op : out std_logic_vector((30 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_42baf59612;


architecture behavior of constant_42baf59612 is
begin
  op <= "001000111111111111111111111111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity inverter_251f82b86b is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_251f82b86b;


architecture behavior of inverter_251f82b86b is
  signal ip_1_26: boolean;
  type array_type_op_mem_22_20 is array (0 to (2 - 1)) of boolean;
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    false,
    false);
  signal op_mem_22_20_front_din: boolean;
  signal op_mem_22_20_back: boolean;
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: boolean;
begin
  ip_1_26 <= ((ip) = "1");
  op_mem_22_20_back <= op_mem_22_20(1);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_22_20(i) <= op_mem_22_20(i-1);
        end loop;
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_front_din <= internal_ip_12_1_bitnot;
  op_mem_22_20_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_22_20_back);
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
entity xlregister is
   generic (d_width          : integer := 5;
            init_value       : bit_vector := b"00");
   port (d   : in std_logic_vector (d_width-1 downto 0);
         rst : in std_logic_vector(0 downto 0) := "0";
         en  : in std_logic_vector(0 downto 0) := "1";
         ce  : in std_logic;
         clk : in std_logic;
         q   : out std_logic_vector (d_width-1 downto 0));
end xlregister;
architecture behavior of xlregister is
   component synth_reg_w_init
      generic (width      : integer;
               init_index : integer;
               init_value : bit_vector;
               latency    : integer);
      port (i   : in std_logic_vector(width-1 downto 0);
            ce  : in std_logic;
            clr : in std_logic;
            clk : in std_logic;
            o   : out std_logic_vector(width-1 downto 0));
   end component;
   -- synopsys translate_off
   signal real_d, real_q           : real;
   -- synopsys translate_on
   signal internal_clr             : std_logic;
   signal internal_ce              : std_logic;
begin
   internal_clr <= rst(0) and ce;
   internal_ce  <= en(0) and ce;
   synth_reg_inst : synth_reg_w_init
      generic map (width      => d_width,
                   init_index => 2,
                   init_value => init_value,
                   latency    => 1)
      port map (i   => d,
                ce  => internal_ce,
                clr => internal_clr,
                clk => clk,
                o   => q);
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_5dfdb25be4 is
  port (
    a : in std_logic_vector((30 - 1) downto 0);
    b : in std_logic_vector((30 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_5dfdb25be4;


architecture behavior of relational_5dfdb25be4 is
  signal a_1_31: unsigned((30 - 1) downto 0);
  signal b_1_34: unsigned((30 - 1) downto 0);
  signal result_22_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_22_3_rel <= a_1_31 >= b_1_34;
  op <= boolean_to_vector(result_22_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_5773759131 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_5773759131;


architecture behavior of logical_5773759131 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
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
  d2_1_30 <= d2(0);
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
  fully_2_1_bit <= d0_1_24 or d1_1_27 or d2_1_30;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_66f3e02bd3 is
  port (
    in0 : in std_logic_vector((17 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_66f3e02bd3;


architecture behavior of concat_66f3e02bd3 is
  signal in0_1_23: unsigned((17 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((18 - 1) downto 0);
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

entity reinterpret_573890e1c0 is
  port (
    input_port : in std_logic_vector((17 - 1) downto 0);
    output_port : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_573890e1c0;


architecture behavior of reinterpret_573890e1c0 is
  signal input_port_1_40: signed((17 - 1) downto 0);
  signal output_port_5_5_force: unsigned((17 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_542df25df6 is
  port (
    a : in std_logic_vector((18 - 1) downto 0);
    b : in std_logic_vector((11 - 1) downto 0);
    s : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_542df25df6;


architecture behavior of addsub_542df25df6 is
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
  cast_69_18 <= s2s_cast(a_17_32, 11, 19, 11);
  cast_69_22 <= u2s_cast(b_17_35, 11, 19, 11);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_69_5_addsub, 11, 8, 0);
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

entity constant_f5d769813d is
  port (
    op : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_f5d769813d;


architecture behavior of constant_f5d769813d is
begin
  op <= "01111111111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_6b1adb5d55 is
  port (
    input_port : in std_logic_vector((11 - 1) downto 0);
    output_port : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_6b1adb5d55;


architecture behavior of reinterpret_6b1adb5d55 is
  signal input_port_1_40: unsigned((11 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_9d76333483 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_9d76333483;


architecture behavior of logical_9d76333483 is
  signal d0_1_24: std_logic_vector((1 - 1) downto 0);
  signal d1_1_27: std_logic_vector((1 - 1) downto 0);
  signal fully_2_1_bit: std_logic_vector((1 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  fully_2_1_bit <= d0_1_24 xor d1_1_27;
  y <= fully_2_1_bit;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_1e8142cab4 is
  port (
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_1e8142cab4;


architecture behavior of logical_1e8142cab4 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 xor d1_1_27;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= latency_pipe_5_26_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_0fa52c7c40 is
  port (
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_0fa52c7c40;


architecture behavior of logical_0fa52c7c40 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= latency_pipe_5_26_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_f8d41441cb is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_f8d41441cb;


architecture behavior of constant_f8d41441cb is
begin
  op <= "00101011010110110010010100000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_7a5a41eeb1 is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_7a5a41eeb1;


architecture behavior of constant_7a5a41eeb1 is
begin
  op <= "11011011100010110000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_a3d6e8e72f is
  port (
    ip : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_a3d6e8e72f;


architecture behavior of shift_a3d6e8e72f is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_25_3_lsh <= u2u_cast(ip_1_23, 0, 39, 7);
  cast_internal_ip_33_3_convert <= u2u_cast(cast_internal_ip_25_3_lsh, 0, 32, 0);
  op_mem_46_20_push_front_pop_back_en <= '0';
  op <= unsigned_to_std_logic_vector(cast_internal_ip_33_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_9c14cd27bd is
  port (
    ip : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_9c14cd27bd;


architecture behavior of shift_9c14cd27bd is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_25_3_lsh <= u2u_cast(ip_1_23, 0, 47, 15);
  cast_internal_ip_33_3_convert <= u2u_cast(cast_internal_ip_25_3_lsh, 0, 32, 0);
  op_mem_46_20_push_front_pop_back_en <= '0';
  op <= unsigned_to_std_logic_vector(cast_internal_ip_33_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_37567836aa is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_37567836aa;


architecture behavior of constant_37567836aa is
begin
  op <= "00000000000000000000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_f1acd27428 is
  port (
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    d2 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_f1acd27428;


architecture behavior of logical_f1acd27428 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 xor d1_1_27 xor d2_1_30;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= latency_pipe_5_26_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_52ae77d946 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_52ae77d946;


architecture behavior of mux_52ae77d946 is
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

entity mux_86a34309e7 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_86a34309e7;


architecture behavior of mux_86a34309e7 is
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

entity constant_79cd191324 is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_79cd191324;


architecture behavior of constant_79cd191324 is
begin
  op <= "10001110101111111101000000101000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_82822b2849 is
  port (
    ip : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_82822b2849;


architecture behavior of shift_82822b2849 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_33_3_convert <= u2u_cast(ip_1_23, 1, 32, 0);
  op_mem_46_20_front_din <= cast_internal_ip_33_3_convert;
  op_mem_46_20_push_front_pop_back_en <= '1';
  op <= unsigned_to_std_logic_vector(op_mem_46_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity expr_c255d1cf74 is
  port (
    curr : in std_logic_vector((1 - 1) downto 0);
    prev : in std_logic_vector((1 - 1) downto 0);
    dout : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end expr_c255d1cf74;


architecture behavior of expr_c255d1cf74 is
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
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity expr_52ec6336d5 is
  port (
    bootstrap : in std_logic_vector((1 - 1) downto 0);
    ld : in std_logic_vector((1 - 1) downto 0);
    ld_ext : in std_logic_vector((1 - 1) downto 0);
    dout : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end expr_52ec6336d5;


architecture behavior of expr_52ec6336d5 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_12_18_push_front_pop_back_en = '1')) then
        pipe_12_18(0) <= pipe_12_18_front_din;
      end if;
    end if;
  end process proc_pipe_12_18;
  bit_6_39 <= ((boolean_to_vector(ld_1_35) or boolean_to_vector(bootstrap_1_24)) = "1");
  fulldout_6_2_bit <= ((boolean_to_vector(ld_ext_1_39) or boolean_to_vector(bit_6_39)) = "1");
  pipe_12_18_front_din <= fulldout_6_2_bit;
  pipe_12_18_push_front_pop_back_en <= '1';
  dout <= boolean_to_vector(pipe_12_18_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity lfsr_f82dbd1991 is
  port (
    din : in std_logic_vector((32 - 1) downto 0);
    load : in std_logic_vector((1 - 1) downto 0);
    dout : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end lfsr_f82dbd1991;


architecture behavior of lfsr_f82dbd1991 is
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
  signal lfsr26_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr13_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr15_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr14_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr12_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr19_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr28_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr10_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr11_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr29_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr3_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr18_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr20_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr21_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr27_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr23_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr31_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr8_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr9_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr22_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr6_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr7_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr0_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr17_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr5_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr4_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr30_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr16_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr25_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr2_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr24_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr1_join_70_1: unsigned((1 - 1) downto 0);
begin
  din_1_24 <= std_logic_vector_to_unsigned(din);
  load_1_28 <= ((load) = "1");
  proc_lfsr0_2_19: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr0_2_19 <= lfsr0_2_19_next;
      end if;
    end if;
  end process proc_lfsr0_2_19;
  proc_lfsr1_3_19: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr1_3_19 <= lfsr1_3_19_next;
      end if;
    end if;
  end process proc_lfsr1_3_19;
  proc_lfsr2_4_19: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
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
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr7_9_19 <= lfsr7_9_19_next;
      end if;
    end if;
  end process proc_lfsr7_9_19;
  proc_lfsr8_10_19: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
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
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
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
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
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
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr15_17_20 <= lfsr15_17_20_next;
      end if;
    end if;
  end process proc_lfsr15_17_20;
  proc_lfsr16_18_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr16_18_20 <= lfsr16_18_20_next;
      end if;
    end if;
  end process proc_lfsr16_18_20;
  proc_lfsr17_19_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
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
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
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
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr22_24_20 <= lfsr22_24_20_next;
      end if;
    end if;
  end process proc_lfsr22_24_20;
  proc_lfsr23_25_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr23_25_20 <= lfsr23_25_20_next;
      end if;
    end if;
  end process proc_lfsr23_25_20;
  proc_lfsr24_26_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
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
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr26_28_20 <= lfsr26_28_20_next;
      end if;
    end if;
  end process proc_lfsr26_28_20;
  proc_lfsr27_29_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
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
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr29_31_20 <= lfsr29_31_20_next;
      end if;
    end if;
  end process proc_lfsr29_31_20;
  proc_lfsr30_32_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr30_32_20 <= lfsr30_32_20_next;
      end if;
    end if;
  end process proc_lfsr30_32_20;
  proc_lfsr31_33_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
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
      lfsr26_join_70_1 <= lfsr25_27_20;
      lfsr13_join_70_1 <= lfsr12_14_20;
      lfsr15_join_70_1 <= lfsr14_16_20;
      lfsr14_join_70_1 <= lfsr13_15_20;
      lfsr12_join_70_1 <= lfsr11_13_20;
      lfsr19_join_70_1 <= lfsr18_20_20;
      lfsr28_join_70_1 <= lfsr27_29_20;
      lfsr10_join_70_1 <= lfsr9_11_19;
      lfsr11_join_70_1 <= lfsr10_12_20;
      lfsr29_join_70_1 <= lfsr28_30_20;
      lfsr3_join_70_1 <= lfsr2_4_19;
      lfsr18_join_70_1 <= lfsr17_19_20;
      lfsr20_join_70_1 <= lfsr19_21_20;
      lfsr21_join_70_1 <= lfsr20_22_20;
      lfsr27_join_70_1 <= lfsr26_28_20;
      lfsr23_join_70_1 <= lfsr22_24_20;
      lfsr31_join_70_1 <= lfsr30_32_20;
      lfsr8_join_70_1 <= lfsr7_9_19;
      lfsr9_join_70_1 <= lfsr8_10_19;
      lfsr22_join_70_1 <= lfsr21_23_20;
      lfsr6_join_70_1 <= lfsr5_7_19;
      lfsr7_join_70_1 <= lfsr6_8_19;
      lfsr0_join_70_1 <= temp_71_1_bit;
      lfsr17_join_70_1 <= lfsr16_18_20;
      lfsr5_join_70_1 <= lfsr4_6_19;
      lfsr4_join_70_1 <= lfsr3_5_19;
      lfsr30_join_70_1 <= lfsr29_31_20;
      lfsr16_join_70_1 <= lfsr15_17_20;
      lfsr25_join_70_1 <= lfsr24_26_20;
      lfsr2_join_70_1 <= lfsr1_3_19;
      lfsr24_join_70_1 <= lfsr23_25_20;
      lfsr1_join_70_1 <= lfsr0_2_19;
    else 
      lfsr26_join_70_1 <= lfsr26_110_1_slice;
      lfsr13_join_70_1 <= lfsr13_123_1_slice;
      lfsr15_join_70_1 <= lfsr15_121_1_slice;
      lfsr14_join_70_1 <= lfsr14_122_1_slice;
      lfsr12_join_70_1 <= lfsr12_124_1_slice;
      lfsr19_join_70_1 <= lfsr19_117_1_slice;
      lfsr28_join_70_1 <= lfsr28_108_1_slice;
      lfsr10_join_70_1 <= lfsr10_126_1_slice;
      lfsr11_join_70_1 <= lfsr11_125_1_slice;
      lfsr29_join_70_1 <= lfsr29_107_1_slice;
      lfsr3_join_70_1 <= lfsr3_133_1_slice;
      lfsr18_join_70_1 <= lfsr18_118_1_slice;
      lfsr20_join_70_1 <= lfsr20_116_1_slice;
      lfsr21_join_70_1 <= lfsr21_115_1_slice;
      lfsr27_join_70_1 <= lfsr27_109_1_slice;
      lfsr23_join_70_1 <= lfsr23_113_1_slice;
      lfsr31_join_70_1 <= lfsr31_105_1_slice;
      lfsr8_join_70_1 <= lfsr8_128_1_slice;
      lfsr9_join_70_1 <= lfsr9_127_1_slice;
      lfsr22_join_70_1 <= lfsr22_114_1_slice;
      lfsr6_join_70_1 <= lfsr6_130_1_slice;
      lfsr7_join_70_1 <= lfsr7_129_1_slice;
      lfsr0_join_70_1 <= lfsr0_136_1_slice;
      lfsr17_join_70_1 <= lfsr17_119_1_slice;
      lfsr5_join_70_1 <= lfsr5_131_1_slice;
      lfsr4_join_70_1 <= lfsr4_132_1_slice;
      lfsr30_join_70_1 <= lfsr30_106_1_slice;
      lfsr16_join_70_1 <= lfsr16_120_1_slice;
      lfsr25_join_70_1 <= lfsr25_111_1_slice;
      lfsr2_join_70_1 <= lfsr2_134_1_slice;
      lfsr24_join_70_1 <= lfsr24_112_1_slice;
      lfsr1_join_70_1 <= lfsr1_135_1_slice;
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
  component bmg_62_61722a40b5652b33
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_61722a40b5652b33:
    component is true;
  attribute fpga_dont_touch of bmg_62_61722a40b5652b33:
    component is "true";
  attribute box_type of bmg_62_61722a40b5652b33:
    component  is "black_box";
  component bmg_62_45150160fbf326f2
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_45150160fbf326f2:
    component is true;
  attribute fpga_dont_touch of bmg_62_45150160fbf326f2:
    component is "true";
  attribute box_type of bmg_62_45150160fbf326f2:
    component  is "black_box";
  component bmg_62_73edef83fb7839d9
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_73edef83fb7839d9:
    component is true;
  attribute fpga_dont_touch of bmg_62_73edef83fb7839d9:
    component is "true";
  attribute box_type of bmg_62_73edef83fb7839d9:
    component  is "black_box";
  component bmg_62_8b6902f70206a636
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_8b6902f70206a636:
    component is true;
  attribute fpga_dont_touch of bmg_62_8b6902f70206a636:
    component is "true";
  attribute box_type of bmg_62_8b6902f70206a636:
    component  is "black_box";
begin
  core_addr <= addr;
  core_ce <= ce and en(0);
  sinit <= rst(0) and ce;
  comp0: if ((core_name0 = "bmg_62_61722a40b5652b33")) generate
    core_instance0: bmg_62_61722a40b5652b33
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp1: if ((core_name0 = "bmg_62_45150160fbf326f2")) generate
    core_instance1: bmg_62_45150160fbf326f2
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp2: if ((core_name0 = "bmg_62_73edef83fb7839d9")) generate
    core_instance2: bmg_62_73edef83fb7839d9
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp3: if ((core_name0 = "bmg_62_8b6902f70206a636")) generate
    core_instance3: bmg_62_8b6902f70206a636
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
entity xlmult is
  generic (
    core_name0: string := "";
    a_width: integer := 4;
    a_bin_pt: integer := 2;
    a_arith: integer := xlSigned;
    b_width: integer := 4;
    b_bin_pt: integer := 1;
    b_arith: integer := xlSigned;
    p_width: integer := 8;
    p_bin_pt: integer := 2;
    p_arith: integer := xlSigned;
    rst_width: integer := 1;
    rst_bin_pt: integer := 0;
    rst_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    quantization: integer := xlTruncate;
    overflow: integer := xlWrap;
    extra_registers: integer := 0;
    c_a_width: integer := 7;
    c_b_width: integer := 7;
    c_type: integer := 0;
    c_a_type: integer := 0;
    c_b_type: integer := 0;
    c_pipelined: integer := 1;
    c_baat: integer := 4;
    multsign: integer := xlSigned;
    c_output_width: integer := 16
  );
  port (
    a: in std_logic_vector(a_width - 1 downto 0);
    b: in std_logic_vector(b_width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    core_ce: in std_logic := '0';
    core_clr: in std_logic := '0';
    core_clk: in std_logic := '0';
    rst: in std_logic_vector(rst_width - 1 downto 0);
    en: in std_logic_vector(en_width - 1 downto 0);
    p: out std_logic_vector(p_width - 1 downto 0)
  );
end xlmult;
architecture behavior of xlmult is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  component mult_11_2_d745d7ddd0aa234d
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of mult_11_2_d745d7ddd0aa234d:
    component is true;
  attribute fpga_dont_touch of mult_11_2_d745d7ddd0aa234d:
    component is "true";
  attribute box_type of mult_11_2_d745d7ddd0aa234d:
    component  is "black_box";
  signal tmp_a: std_logic_vector(c_a_width - 1 downto 0);
  signal conv_a: std_logic_vector(c_a_width - 1 downto 0);
  signal tmp_b: std_logic_vector(c_b_width - 1 downto 0);
  signal conv_b: std_logic_vector(c_b_width - 1 downto 0);
  signal tmp_p: std_logic_vector(c_output_width - 1 downto 0);
  signal conv_p: std_logic_vector(p_width - 1 downto 0);
  -- synopsys translate_off
  signal real_a, real_b, real_p: real;
  -- synopsys translate_on
  signal rfd: std_logic;
  signal rdy: std_logic;
  signal nd: std_logic;
  signal internal_ce: std_logic;
  signal internal_clr: std_logic;
  signal internal_core_ce: std_logic;
begin
-- synopsys translate_off
-- synopsys translate_on
  internal_ce <= ce and en(0);
  internal_core_ce <= core_ce and en(0);
  internal_clr <= (clr or rst(0)) and ce;
  nd <= internal_ce;
  input_process:  process (a,b)
  begin
    tmp_a <= zero_ext(a, c_a_width);
    tmp_b <= zero_ext(b, c_b_width);
  end process;
  output_process: process (tmp_p)
  begin
    conv_p <= convert_type(tmp_p, c_output_width, a_bin_pt+b_bin_pt, multsign,
                           p_width, p_bin_pt, p_arith, quantization, overflow);
  end process;
  comp0: if ((core_name0 = "mult_11_2_d745d7ddd0aa234d")) generate
    core_instance0: mult_11_2_d745d7ddd0aa234d
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  latency_gt_0: if (extra_registers > 0) generate
    reg: synth_reg
      generic map (
        width => p_width,
        latency => extra_registers
      )
      port map (
        i => conv_p,
        ce => internal_ce,
        clr => internal_clr,
        clk => clk,
        o => p
      );
  end generate;
  latency_eq_0: if (extra_registers = 0) generate
    p <= conv_p;
  end generate;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_d9988e3d87 is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_d9988e3d87;


architecture behavior of reinterpret_d9988e3d87 is
  signal input_port_1_40: signed((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port <= signed_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity scale_b42effccbc is
  port (
    ip : in std_logic_vector((17 - 1) downto 0);
    op : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end scale_b42effccbc;


architecture behavior of scale_b42effccbc is
  signal ip_17_23: signed((17 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_920dce5cac is
  port (
    d : in std_logic_vector((32 - 1) downto 0);
    q : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_920dce5cac;


architecture behavior of delay_920dce5cac is
  signal d_1_22: std_logic_vector((32 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (3 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((32 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((32 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(2);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 2 downto 1 loop 
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

entity bitbasher_a85d9bdfd2 is
  port (
    delay : in std_logic_vector((32 - 1) downto 0);
    delay0 : out std_logic_vector((4 - 1) downto 0);
    delay1 : out std_logic_vector((4 - 1) downto 0);
    delay2 : out std_logic_vector((4 - 1) downto 0);
    delay3 : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end bitbasher_a85d9bdfd2;


architecture behavior of bitbasher_a85d9bdfd2 is
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
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity bitbasher_0b7a692256 is
  port (
    insel : in std_logic_vector((32 - 1) downto 0);
    insel0 : out std_logic_vector((2 - 1) downto 0);
    insel1 : out std_logic_vector((2 - 1) downto 0);
    insel2 : out std_logic_vector((2 - 1) downto 0);
    insel3 : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end bitbasher_0b7a692256;


architecture behavior of bitbasher_0b7a692256 is
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
entity xladdrsr is
  generic (
    core_name0: string := "";
    addr_arith: integer := xlSigned;
    addr_bin_pt: integer := 7;
    addr_width: integer := 12;
    core_addr_width: integer := 0;
    d_arith: integer := xlSigned;
    d_bin_pt: integer := 7;
    d_width: integer := 12;
    en_width: integer := 5;
    en_bin_pt: integer := 2;
    en_arith: integer := xlUnsigned;
    q_arith: integer := xlSigned;
    q_bin_pt: integer := 7;
    q_width: integer := xlSigned
  );
  port (
    d: in std_logic_vector(d_width - 1 downto 0);
    addr: in std_logic_vector(addr_width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    en: in std_logic_vector(0 downto 0) := (others => '1');
    q: out std_logic_vector(d_width - 1 downto 0)
  );
end xladdrsr ;
architecture behavior of xladdrsr is
  signal internal_ce: std_logic;
  signal padded_addr: std_logic_vector(core_addr_width-1 downto 0) := (others => '0');
  component asr_11_0_baa2205482699974
    port (
      clk: in std_logic;
      d: in std_logic_vector(d_width - 1 downto 0);
      q: out std_logic_vector(d_width - 1 downto 0);
      a: in std_logic_vector(core_addr_width - 1 downto 0);
      ce: in std_logic
    );
  end component;
  attribute syn_black_box of asr_11_0_baa2205482699974:
    component is true;
  attribute fpga_dont_touch of asr_11_0_baa2205482699974:
    component is "true";
  attribute box_type of asr_11_0_baa2205482699974:
    component  is "black_box";
begin
  internal_ce <= ce and en(0);
  padded_addr(addr_width-1 downto 0) <= addr(addr_width-1 downto 0);
  comp0: if ((core_name0 = "asr_11_0_baa2205482699974")) generate
    core_instance0: asr_11_0_baa2205482699974
      port map (
        clk => clk,
        d => d,
        q => q,
        a => padded_addr,
        ce => internal_ce
      );
  end generate;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_c7fc178374 is
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
end mux_c7fc178374;


architecture behavior of mux_c7fc178374 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_20_22_push_front_pop_back_en = '1')) then
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
  pipe_20_22_push_front_pop_back_en <= '1';
  y <= pipe_20_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_e18fb31a3d is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_e18fb31a3d;


architecture behavior of delay_e18fb31a3d is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (2 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    '0',
    '0');
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
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

entity concat_8f12c32de0 is
  port (
    in0 : in std_logic_vector((2 - 1) downto 0);
    in1 : in std_logic_vector((3 - 1) downto 0);
    y : out std_logic_vector((5 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_8f12c32de0;


architecture behavior of concat_8f12c32de0 is
  signal in0_1_23: unsigned((2 - 1) downto 0);
  signal in1_1_27: unsigned((3 - 1) downto 0);
  signal y_2_1_concat: unsigned((5 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
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
  component dmg_62_d4b1790d74a4992a
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      spo: out std_logic_vector(c_width - 1 downto 0) 
    );
  end component;
  attribute syn_black_box of dmg_62_d4b1790d74a4992a:
    component is true;
  attribute fpga_dont_touch of dmg_62_d4b1790d74a4992a:
    component is "true";
  attribute box_type of dmg_62_d4b1790d74a4992a:
    component  is "black_box";
  component dmg_62_0a86efc0bb6fa1ec
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of dmg_62_0a86efc0bb6fa1ec:
    component is true;
  attribute fpga_dont_touch of dmg_62_0a86efc0bb6fa1ec:
    component is "true";
  attribute box_type of dmg_62_0a86efc0bb6fa1ec:
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
  comp0: if ((core_name0 = "dmg_62_d4b1790d74a4992a")) generate
    core_instance0: dmg_62_d4b1790d74a4992a
      port map (
        a => core_addr,
        spo => core_data_out
      );
  end generate;
  comp1: if ((core_name0 = "dmg_62_0a86efc0bb6fa1ec")) generate
    core_instance1: dmg_62_0a86efc0bb6fa1ec
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

entity constant_0c7d8005f2 is
  port (
    op : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_0c7d8005f2;


architecture behavior of constant_0c7d8005f2 is
begin
  op <= "01111110000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_b19165022f is
  port (
    a : in std_logic_vector((20 - 1) downto 0);
    b : in std_logic_vector((11 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_b19165022f;


architecture behavior of relational_b19165022f is
  signal a_1_31: unsigned((20 - 1) downto 0);
  signal b_1_34: unsigned((11 - 1) downto 0);
  signal cast_18_16: unsigned((20 - 1) downto 0);
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  cast_18_16 <= u2u_cast(b_1_34, 0, 20, 0);
  result_18_3_rel <= a_1_31 > cast_18_16;
  op <= boolean_to_vector(result_18_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_0bd6d8bc7a is
  port (
    a : in std_logic_vector((20 - 1) downto 0);
    b : in std_logic_vector((11 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_0bd6d8bc7a;


architecture behavior of relational_0bd6d8bc7a is
  signal a_1_31: unsigned((20 - 1) downto 0);
  signal b_1_34: unsigned((11 - 1) downto 0);
  signal cast_16_16: unsigned((20 - 1) downto 0);
  signal result_16_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  cast_16_16 <= u2u_cast(b_1_34, 0, 20, 0);
  result_16_3_rel <= a_1_31 < cast_16_16;
  op <= boolean_to_vector(result_16_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_09e13b86e0 is
  port (
    in0 : in std_logic_vector((1 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    in2 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_09e13b86e0;


architecture behavior of concat_09e13b86e0 is
  signal in0_1_23: boolean;
  signal in1_1_27: boolean;
  signal in2_1_31: boolean;
  signal y_2_1_concat: unsigned((3 - 1) downto 0);
begin
  in0_1_23 <= ((in0) = "1");
  in1_1_27 <= ((in1) = "1");
  in2_1_31 <= ((in2) = "1");
  y_2_1_concat <= std_logic_vector_to_unsigned(boolean_to_vector(in0_1_23) & boolean_to_vector(in1_1_27) & boolean_to_vector(in2_1_31));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_66e06093b2 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((64 - 1) downto 0);
    d1 : in std_logic_vector((64 - 1) downto 0);
    y : out std_logic_vector((64 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_66e06093b2;


architecture behavior of mux_66e06093b2 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((64 - 1) downto 0);
  signal d1_1_27: std_logic_vector((64 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((64 - 1) downto 0);
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
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_d99e59b6d4 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_d99e59b6d4;


architecture behavior of mux_d99e59b6d4 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic;
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
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
  y <= std_logic_to_vector(unregy_join_6_1);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_eab913768e is
  port (
    in0 : in std_logic_vector((6 - 1) downto 0);
    in1 : in std_logic_vector((16 - 1) downto 0);
    in2 : in std_logic_vector((10 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_eab913768e;


architecture behavior of concat_eab913768e is
  signal in0_1_23: unsigned((6 - 1) downto 0);
  signal in1_1_27: unsigned((16 - 1) downto 0);
  signal in2_1_31: unsigned((10 - 1) downto 0);
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
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

entity constant_faaf314423 is
  port (
    op : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_faaf314423;


architecture behavior of constant_faaf314423 is
begin
  op <= "000100";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_47932db5b1 is
  port (
    a : in std_logic_vector((6 - 1) downto 0);
    b : in std_logic_vector((6 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_47932db5b1;


architecture behavior of relational_47932db5b1 is
  signal a_1_31: unsigned((6 - 1) downto 0);
  signal b_1_34: unsigned((6 - 1) downto 0);
  signal result_16_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_16_3_rel <= a_1_31 < b_1_34;
  op <= boolean_to_vector(result_16_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_a4fe5a77f9 is
  port (
    a : in std_logic_vector((6 - 1) downto 0);
    b : in std_logic_vector((6 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_a4fe5a77f9;


architecture behavior of relational_a4fe5a77f9 is
  signal a_1_31: unsigned((6 - 1) downto 0);
  signal b_1_34: unsigned((6 - 1) downto 0);
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_18_3_rel <= a_1_31 > b_1_34;
  op <= boolean_to_vector(result_18_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_e77c53f8bd is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_e77c53f8bd;


architecture behavior of logical_e77c53f8bd is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 xor d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_954ee29728 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_954ee29728;


architecture behavior of logical_954ee29728 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27 and d2_1_30;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_e82b2f8c26 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_e82b2f8c26;


architecture behavior of logical_e82b2f8c26 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
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
  d2_1_30 <= d2(0);
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
  fully_2_1_bit <= d0_1_24 and d1_1_27 and d2_1_30;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_d36fe12c1c is
  port (
    a : in std_logic_vector((12 - 1) downto 0);
    b : in std_logic_vector((12 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_d36fe12c1c;


architecture behavior of relational_d36fe12c1c is
  signal a_1_31: unsigned((12 - 1) downto 0);
  signal b_1_34: unsigned((12 - 1) downto 0);
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

entity relational_6dfa374756 is
  port (
    a : in std_logic_vector((13 - 1) downto 0);
    b : in std_logic_vector((13 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_6dfa374756;


architecture behavior of relational_6dfa374756 is
  signal a_1_31: unsigned((13 - 1) downto 0);
  signal b_1_34: unsigned((13 - 1) downto 0);
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

entity concat_39a9232e16 is
  port (
    in0 : in std_logic_vector((1 - 1) downto 0);
    in1 : in std_logic_vector((64 - 1) downto 0);
    y : out std_logic_vector((65 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_39a9232e16;


architecture behavior of concat_39a9232e16 is
  signal in0_1_23: unsigned((1 - 1) downto 0);
  signal in1_1_27: unsigned((64 - 1) downto 0);
  signal y_2_1_concat: unsigned((65 - 1) downto 0);
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

entity relational_770e12e4ab is
  port (
    a : in std_logic_vector((32 - 1) downto 0);
    b : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_770e12e4ab;


architecture behavior of relational_770e12e4ab is
  signal a_1_31: unsigned((32 - 1) downto 0);
  signal b_1_34: unsigned((32 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    0 => false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal result_12_3_rel: boolean;
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
  result_12_3_rel <= a_1_31 = b_1_34;
  op_mem_32_22_front_din <= result_12_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_8e7646e9fc is
  port (
    a : in std_logic_vector((20 - 1) downto 0);
    b : in std_logic_vector((11 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_8e7646e9fc;


architecture behavior of relational_8e7646e9fc is
  signal a_1_31: unsigned((20 - 1) downto 0);
  signal b_1_34: unsigned((11 - 1) downto 0);
  signal cast_12_17: unsigned((20 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  cast_12_17 <= u2u_cast(b_1_34, 0, 20, 0);
  result_12_3_rel <= a_1_31 = cast_12_17;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_dfe2dded7f is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_dfe2dded7f;


architecture behavior of logical_dfe2dded7f is
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
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity bitbasher_5b1e76c782 is
  port (
    seed : in std_logic_vector((32 - 1) downto 0);
    seed0 : out std_logic_vector((32 - 1) downto 0);
    seed1 : out std_logic_vector((32 - 1) downto 0);
    seed2 : out std_logic_vector((32 - 1) downto 0);
    seed3 : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end bitbasher_5b1e76c782;


architecture behavior of bitbasher_5b1e76c782 is
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
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_31382efd95 is
  port (
    in0 : in std_logic_vector((25 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    in2 : in std_logic_vector((1 - 1) downto 0);
    in3 : in std_logic_vector((1 - 1) downto 0);
    in4 : in std_logic_vector((1 - 1) downto 0);
    in5 : in std_logic_vector((1 - 1) downto 0);
    in6 : in std_logic_vector((1 - 1) downto 0);
    in7 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_31382efd95;


architecture behavior of concat_31382efd95 is
  signal in0_1_23: unsigned((25 - 1) downto 0);
  signal in1_1_27: boolean;
  signal in2_1_31: boolean;
  signal in3_1_35: boolean;
  signal in4_1_39: boolean;
  signal in5_1_43: boolean;
  signal in6_1_47: boolean;
  signal in7_1_51: boolean;
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= ((in1) = "1");
  in2_1_31 <= ((in2) = "1");
  in3_1_35 <= ((in3) = "1");
  in4_1_39 <= ((in4) = "1");
  in5_1_43 <= ((in5) = "1");
  in6_1_47 <= ((in6) = "1");
  in7_1_51 <= ((in7) = "1");
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & boolean_to_vector(in1_1_27) & boolean_to_vector(in2_1_31) & boolean_to_vector(in3_1_35) & boolean_to_vector(in4_1_39) & boolean_to_vector(in5_1_43) & boolean_to_vector(in6_1_47) & boolean_to_vector(in7_1_51));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_6a1bb6dda6 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_6a1bb6dda6;


architecture behavior of constant_6a1bb6dda6 is
begin
  op <= "0000000000000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_c13097e33e is
  port (
    a : in std_logic_vector((1 - 1) downto 0);
    b : in std_logic_vector((1 - 1) downto 0);
    s : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_c13097e33e;


architecture behavior of addsub_c13097e33e is
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
  cast_71_18 <= u2s_cast(a_17_32, 0, 3, 0);
  cast_71_22 <= u2s_cast(b_17_35, 0, 3, 0);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  cast_internal_s_83_3_convert <= s2u_cast(internal_s_71_5_addsub, 0, 1, 0);
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= unsigned_to_std_logic_vector(cast_internal_s_83_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_1d98d96b58 is
  port (
    in0 : in std_logic_vector((9 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_1d98d96b58;


architecture behavior of concat_1d98d96b58 is
  signal in0_1_23: unsigned((9 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((10 - 1) downto 0);
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

entity mux_4fe5face7f is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((10 - 1) downto 0);
    d1 : in std_logic_vector((10 - 1) downto 0);
    y : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_4fe5face7f;


architecture behavior of mux_4fe5face7f is
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
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_6f0047a4a5 is
  port (
    in0 : in std_logic_vector((27 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    in2 : in std_logic_vector((1 - 1) downto 0);
    in3 : in std_logic_vector((1 - 1) downto 0);
    in4 : in std_logic_vector((1 - 1) downto 0);
    in5 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_6f0047a4a5;


architecture behavior of concat_6f0047a4a5 is
  signal in0_1_23: unsigned((27 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal in2_1_31: unsigned((1 - 1) downto 0);
  signal in3_1_35: unsigned((1 - 1) downto 0);
  signal in4_1_39: unsigned((1 - 1) downto 0);
  signal in5_1_43: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  in4_1_39 <= std_logic_vector_to_unsigned(in4);
  in5_1_43 <= std_logic_vector_to_unsigned(in5);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35) & unsigned_to_std_logic_vector(in4_1_39) & unsigned_to_std_logic_vector(in5_1_43));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_9a13f6a2a0 is
  port (
    input_port : in std_logic_vector((64 - 1) downto 0);
    output_port : out std_logic_vector((64 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_9a13f6a2a0;


architecture behavior of reinterpret_9a13f6a2a0 is
  signal input_port_1_40: unsigned((64 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
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
entity xladdsub is
  generic (
    core_name0: string := "";
    a_width: integer := 16;
    a_bin_pt: integer := 4;
    a_arith: integer := xlUnsigned;
    c_in_width: integer := 16;
    c_in_bin_pt: integer := 4;
    c_in_arith: integer := xlUnsigned;
    c_out_width: integer := 16;
    c_out_bin_pt: integer := 4;
    c_out_arith: integer := xlUnsigned;
    b_width: integer := 8;
    b_bin_pt: integer := 2;
    b_arith: integer := xlUnsigned;
    s_width: integer := 17;
    s_bin_pt: integer := 4;
    s_arith: integer := xlUnsigned;
    rst_width: integer := 1;
    rst_bin_pt: integer := 0;
    rst_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    full_s_width: integer := 17;
    full_s_arith: integer := xlUnsigned;
    mode: integer := xlAddMode;
    extra_registers: integer := 0;
    latency: integer := 0;
    quantization: integer := xlTruncate;
    overflow: integer := xlWrap;
    c_latency: integer := 0;
    c_output_width: integer := 17;
    c_has_c_in : integer := 0;
    c_has_c_out : integer := 0
  );
  port (
    a: in std_logic_vector(a_width - 1 downto 0);
    b: in std_logic_vector(b_width - 1 downto 0);
    c_in : in std_logic_vector (0 downto 0) := "0";
    ce: in std_logic;
    clr: in std_logic := '0';
    clk: in std_logic;
    rst: in std_logic_vector(rst_width - 1 downto 0) := "0";
    en: in std_logic_vector(en_width - 1 downto 0) := "1";
    c_out : out std_logic_vector (0 downto 0);
    s: out std_logic_vector(s_width - 1 downto 0)
  );
end xladdsub;
architecture behavior of xladdsub is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  function format_input(inp: std_logic_vector; old_width, delta, new_arith,
                        new_width: integer)
    return std_logic_vector
  is
    variable vec: std_logic_vector(old_width-1 downto 0);
    variable padded_inp: std_logic_vector((old_width + delta)-1  downto 0);
    variable result: std_logic_vector(new_width-1 downto 0);
  begin
    vec := inp;
    if (delta > 0) then
      padded_inp := pad_LSB(vec, old_width+delta);
      result := extend_MSB(padded_inp, new_width, new_arith);
    else
      result := extend_MSB(vec, new_width, new_arith);
    end if;
    return result;
  end;
  constant full_s_bin_pt: integer := fractional_bits(a_bin_pt, b_bin_pt);
  constant full_a_width: integer := full_s_width;
  constant full_b_width: integer := full_s_width;
  signal full_a: std_logic_vector(full_a_width - 1 downto 0);
  signal full_b: std_logic_vector(full_b_width - 1 downto 0);
  signal core_s: std_logic_vector(full_s_width - 1 downto 0);
  signal conv_s: std_logic_vector(s_width - 1 downto 0);
  signal temp_cout : std_logic;
  signal internal_clr: std_logic;
  signal internal_ce: std_logic;
  signal extra_reg_ce: std_logic;
  signal override: std_logic;
  signal logic1: std_logic_vector(0 downto 0);
  component addsb_11_0_e48e31d556a35f15
    port (
          a: in std_logic_vector(33 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(33 - 1 downto 0)
    );
  end component;
  attribute syn_black_box of addsb_11_0_e48e31d556a35f15:
    component is true;
  attribute fpga_dont_touch of addsb_11_0_e48e31d556a35f15:
    component is "true";
  attribute box_type of addsb_11_0_e48e31d556a35f15:
    component  is "black_box";
begin
  internal_clr <= (clr or (rst(0))) and ce;
  internal_ce <= ce and en(0);
  logic1(0) <= '1';
  addsub_process: process (a, b, core_s)
  begin
    full_a <= format_input (a, a_width, b_bin_pt - a_bin_pt, a_arith,
                            full_a_width);
    full_b <= format_input (b, b_width, a_bin_pt - b_bin_pt, b_arith,
                            full_b_width);
    conv_s <= convert_type (core_s, full_s_width, full_s_bin_pt, full_s_arith,
                            s_width, s_bin_pt, s_arith, quantization, overflow);
  end process addsub_process;

  comp0: if ((core_name0 = "addsb_11_0_e48e31d556a35f15")) generate
    core_instance0: addsb_11_0_e48e31d556a35f15
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  latency_test: if (extra_registers > 0) generate
      override_test: if (c_latency > 1) generate
       override_pipe: synth_reg
          generic map (
            width => 1,
            latency => c_latency
          )
          port map (
            i => logic1,
            ce => internal_ce,
            clr => internal_clr,
            clk => clk,
            o(0) => override);
       extra_reg_ce <= ce and en(0) and override;
      end generate override_test;
      no_override: if ((c_latency = 0) or (c_latency = 1)) generate
       extra_reg_ce <= ce and en(0);
      end generate no_override;
      extra_reg: synth_reg
        generic map (
          width => s_width,
          latency => extra_registers
        )
        port map (
          i => conv_s,
          ce => extra_reg_ce,
          clr => internal_clr,
          clk => clk,
          o => s
        );
      cout_test: if (c_has_c_out = 1) generate
      c_out_extra_reg: synth_reg
        generic map (
          width => 1,
          latency => extra_registers
        )
        port map (
          i(0) => temp_cout,
          ce => extra_reg_ce,
          clr => internal_clr,
          clk => clk,
          o => c_out
        );
      end generate cout_test;
  end generate;
  latency_s: if ((latency = 0) or (extra_registers = 0)) generate
    s <= conv_s;
  end generate latency_s;
  latency0: if (((latency = 0) or (extra_registers = 0)) and
                 (c_has_c_out = 1)) generate
    c_out(0) <= temp_cout;
  end generate latency0;
  tie_dangling_cout: if (c_has_c_out = 0) generate
    c_out <= "0";
  end generate tie_dangling_cout;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_f21e7f2ddf is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_f21e7f2ddf;


architecture behavior of reinterpret_f21e7f2ddf is
  signal input_port_1_40: unsigned((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_94bc27a9d6 is
  port (
    in0 : in std_logic_vector((48 - 1) downto 0);
    in1 : in std_logic_vector((8 - 1) downto 0);
    in2 : in std_logic_vector((5 - 1) downto 0);
    in3 : in std_logic_vector((3 - 1) downto 0);
    y : out std_logic_vector((64 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_94bc27a9d6;


architecture behavior of concat_94bc27a9d6 is
  signal in0_1_23: unsigned((48 - 1) downto 0);
  signal in1_1_27: unsigned((8 - 1) downto 0);
  signal in2_1_31: unsigned((5 - 1) downto 0);
  signal in3_1_35: unsigned((3 - 1) downto 0);
  signal y_2_1_concat: unsigned((64 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_62c4475a80 is
  port (
    in0 : in std_logic_vector((32 - 1) downto 0);
    in1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((64 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_62c4475a80;


architecture behavior of concat_62c4475a80 is
  signal in0_1_23: unsigned((32 - 1) downto 0);
  signal in1_1_27: unsigned((32 - 1) downto 0);
  signal y_2_1_concat: unsigned((64 - 1) downto 0);
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

entity delay_e2d047c154 is
  port (
    d : in std_logic_vector((64 - 1) downto 0);
    q : out std_logic_vector((64 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_e2d047c154;


architecture behavior of delay_e2d047c154 is
  signal d_1_22: std_logic_vector((64 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((64 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "0000000000000000000000000000000000000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((64 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((64 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
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

entity delay_d8eaaced1c is
  port (
    d : in std_logic_vector((48 - 1) downto 0);
    q : out std_logic_vector((48 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_d8eaaced1c;


architecture behavior of delay_d8eaaced1c is
  signal d_1_22: std_logic_vector((48 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((48 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "000000000000000000000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((48 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((48 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
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

entity delay_54d5af2115 is
  port (
    d : in std_logic_vector((3 - 1) downto 0);
    q : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_54d5af2115;


architecture behavior of delay_54d5af2115 is
  signal d_1_22: std_logic_vector((3 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((3 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "000");
  signal op_mem_20_24_front_din: std_logic_vector((3 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((3 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
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

entity mux_dc8b84fd59 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((64 - 1) downto 0);
    d1 : in std_logic_vector((64 - 1) downto 0);
    y : out std_logic_vector((64 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_dc8b84fd59;


architecture behavior of mux_dc8b84fd59 is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((64 - 1) downto 0);
  signal d1_1_27: std_logic_vector((64 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((64 - 1) downto 0);
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
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_86b044698f is
  port (
    input_port : in std_logic_vector((36 - 1) downto 0);
    output_port : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_86b044698f;


architecture behavior of reinterpret_86b044698f is
  signal input_port_1_40: unsigned((36 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_a9b7ee2019 is
  port (
    in0 : in std_logic_vector((1 - 1) downto 0);
    in1 : in std_logic_vector((8 - 1) downto 0);
    in2 : in std_logic_vector((1 - 1) downto 0);
    in3 : in std_logic_vector((8 - 1) downto 0);
    in4 : in std_logic_vector((1 - 1) downto 0);
    in5 : in std_logic_vector((8 - 1) downto 0);
    in6 : in std_logic_vector((1 - 1) downto 0);
    in7 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_a9b7ee2019;


architecture behavior of concat_a9b7ee2019 is
  signal in0_1_23: unsigned((1 - 1) downto 0);
  signal in1_1_27: unsigned((8 - 1) downto 0);
  signal in2_1_31: unsigned((1 - 1) downto 0);
  signal in3_1_35: unsigned((8 - 1) downto 0);
  signal in4_1_39: unsigned((1 - 1) downto 0);
  signal in5_1_43: unsigned((8 - 1) downto 0);
  signal in6_1_47: unsigned((1 - 1) downto 0);
  signal in7_1_51: unsigned((8 - 1) downto 0);
  signal y_2_1_concat: unsigned((36 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  in4_1_39 <= std_logic_vector_to_unsigned(in4);
  in5_1_43 <= std_logic_vector_to_unsigned(in5);
  in6_1_47 <= std_logic_vector_to_unsigned(in6);
  in7_1_51 <= std_logic_vector_to_unsigned(in7);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35) & unsigned_to_std_logic_vector(in4_1_39) & unsigned_to_std_logic_vector(in5_1_43) & unsigned_to_std_logic_vector(in6_1_47) & unsigned_to_std_logic_vector(in7_1_51));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_1e5f8fbcb6 is
  port (
    in0 : in std_logic_vector((1 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    in2 : in std_logic_vector((1 - 1) downto 0);
    in3 : in std_logic_vector((1 - 1) downto 0);
    in4 : in std_logic_vector((8 - 1) downto 0);
    in5 : in std_logic_vector((8 - 1) downto 0);
    in6 : in std_logic_vector((8 - 1) downto 0);
    in7 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_1e5f8fbcb6;


architecture behavior of concat_1e5f8fbcb6 is
  signal in0_1_23: unsigned((1 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal in2_1_31: unsigned((1 - 1) downto 0);
  signal in3_1_35: unsigned((1 - 1) downto 0);
  signal in4_1_39: unsigned((8 - 1) downto 0);
  signal in5_1_43: unsigned((8 - 1) downto 0);
  signal in6_1_47: unsigned((8 - 1) downto 0);
  signal in7_1_51: unsigned((8 - 1) downto 0);
  signal y_2_1_concat: unsigned((36 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  in4_1_39 <= std_logic_vector_to_unsigned(in4);
  in5_1_43 <= std_logic_vector_to_unsigned(in5);
  in6_1_47 <= std_logic_vector_to_unsigned(in6);
  in7_1_51 <= std_logic_vector_to_unsigned(in7);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35) & unsigned_to_std_logic_vector(in4_1_39) & unsigned_to_std_logic_vector(in5_1_43) & unsigned_to_std_logic_vector(in6_1_47) & unsigned_to_std_logic_vector(in7_1_51));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
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
  component cntr_11_0_92cf1c8e61537910
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_92cf1c8e61537910:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_92cf1c8e61537910:
    component is "true";
  attribute box_type of cntr_11_0_92cf1c8e61537910:
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
  comp0: if ((core_name0 = "cntr_11_0_38c9cb0851a20d91")) generate
    core_instance0: cntr_11_0_38c9cb0851a20d91
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp1: if ((core_name0 = "cntr_11_0_92cf1c8e61537910")) generate
    core_instance1: cntr_11_0_92cf1c8e61537910
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
entity xlspram_dist is
  generic (
    core_name0: string := "";
    c_width: integer := 12;
    c_address_width: integer := 4;
    addr_width: integer := 4;
    write_mode: integer := 1;
    latency: integer := 1
  );
  port (
    data_in: in std_logic_vector(c_width - 1 downto 0);
    addr: in std_logic_vector(addr_width - 1 downto 0);
    we: in std_logic_vector(0 downto 0);
    en: in std_logic_vector(0 downto 0);
    ce: in std_logic;
    clk: in std_logic;
    data_out: out std_logic_vector(c_width - 1 downto 0)
  );
end xlspram_dist ;
architecture behavior of xlspram_dist is
  component synth_reg is
    generic (
      width: integer := 8;
      latency: integer := 1
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  constant num_extra_addr_bits: integer := (c_address_width - addr_width);
  signal core_addr: std_logic_vector(c_address_width - 1 downto 0);
  signal core_data_in, core_data_out: std_logic_vector(c_width - 1 downto 0);
  signal reg_data_in, reg_data_out: std_logic_vector(c_width - 1 downto 0);
  signal core_ce: std_logic;
  signal core_we: std_logic_vector(0 downto 0);
  component dmg_62_29a7fd57730c35e5
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      d: in std_logic_vector(c_width - 1 downto 0);
      we: in std_logic;
      spo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of dmg_62_29a7fd57730c35e5:
    component is true;
  attribute fpga_dont_touch of dmg_62_29a7fd57730c35e5:
    component is "true";
  attribute box_type of dmg_62_29a7fd57730c35e5:
    component  is "black_box";
begin
  need_to_pad_addr : if num_extra_addr_bits > 0 generate
      core_addr(c_address_width - 1 downto addr_width) <= (others => '0');
      core_addr(addr_width - 1 downto 0) <= addr;
  end generate;
  no_need_to_pad_addr: if num_extra_addr_bits = 0 generate
    core_addr <= addr;
  end generate;
  core_ce <= ce and en(0);
  core_data_in <= data_in;
  data_out <= reg_data_out;
  core_we(0) <= we(0) and core_ce;

  muxed_out : if write_mode = 1 generate
    choose_output: process(core_we(0), core_data_in, core_data_out)
    begin
      case core_we(0) is
        when '1' => reg_data_in <= core_data_in;
        when '0' => reg_data_in <= core_data_out;
        when others => reg_data_in <= core_data_in;
      end case;
    end process;
  end generate;
  nonmuxed_out : if write_mode = 2 generate
    reg_data_in <= core_data_out;
  end generate;

  registered_ram : if latency > 0 generate
    output_reg: synth_reg
      generic map (
        width   => c_width,
        latency => latency
      )
      port map (
        i   => reg_data_in,
        ce  => core_ce,
        clr => '0',
        clk => clk,
        o   => reg_data_out
      );
  end generate;

  nonregistered_ram : if latency = 0 generate
    reg_data_out <= core_data_out;
  end generate;
  comp0: if ((core_name0 = "dmg_62_29a7fd57730c35e5")) generate
    core_instance0: dmg_62_29a7fd57730c35e5
      port map (
        a => core_addr,
        clk => clk,
        d => core_data_in,
        we => core_we(0),
        spo => core_data_out
      );
  end generate;
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

entity constant_60de7cd9a7 is
  port (
    op : out std_logic_vector((14 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_60de7cd9a7;


architecture behavior of constant_60de7cd9a7 is
begin
  op <= "00000000000001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_068ec526a0 is
  port (
    op : out std_logic_vector((14 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_068ec526a0;


architecture behavior of constant_068ec526a0 is
begin
  op <= "00000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a773953785 is
  port (
    op : out std_logic_vector((14 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a773953785;


architecture behavior of constant_a773953785 is
begin
  op <= "10000000001011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_d500ab1630 is
  port (
    a : in std_logic_vector((14 - 1) downto 0);
    b : in std_logic_vector((14 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_d500ab1630;


architecture behavior of relational_d500ab1630 is
  signal a_1_31: unsigned((14 - 1) downto 0);
  signal b_1_34: unsigned((14 - 1) downto 0);
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

entity relational_7f67627fe4 is
  port (
    a : in std_logic_vector((14 - 1) downto 0);
    b : in std_logic_vector((14 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_7f67627fe4;


architecture behavior of relational_7f67627fe4 is
  signal a_1_31: unsigned((14 - 1) downto 0);
  signal b_1_34: unsigned((14 - 1) downto 0);
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

entity bitbasher_ebbd580c85 is
  port (
    a : in std_logic_vector((13 - 1) downto 0);
    b : out std_logic_vector((13 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end bitbasher_ebbd580c85;


architecture behavior of bitbasher_ebbd580c85 is
  signal a_1_26: unsigned((13 - 1) downto 0);
  signal slice_5_38: unsigned((1 - 1) downto 0);
  signal concat_5_29: unsigned((1 - 1) downto 0);
  signal slice_5_57: unsigned((4 - 1) downto 0);
  signal slice_5_73: unsigned((3 - 1) downto 0);
  signal slice_5_90: unsigned((5 - 1) downto 0);
  signal fullb_5_1_concat: unsigned((13 - 1) downto 0);
begin
  a_1_26 <= std_logic_vector_to_unsigned(a);
  slice_5_38 <= u2u_slice(a_1_26, 12, 12);
  concat_5_29 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_5_38));
  slice_5_57 <= u2u_slice(a_1_26, 8, 5);
  slice_5_73 <= u2u_slice(a_1_26, 11, 9);
  slice_5_90 <= u2u_slice(a_1_26, 4, 0);
  fullb_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(concat_5_29) & unsigned_to_std_logic_vector(slice_5_57) & unsigned_to_std_logic_vector(slice_5_73) & unsigned_to_std_logic_vector(slice_5_90));
  b <= unsigned_to_std_logic_vector(fullb_5_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_06590e4008 is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_06590e4008;


architecture behavior of constant_06590e4008 is
begin
  op <= "1111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_c146d55ebf is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((13 - 1) downto 0);
    d1 : in std_logic_vector((13 - 1) downto 0);
    y : out std_logic_vector((13 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_c146d55ebf;


architecture behavior of mux_c146d55ebf is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((13 - 1) downto 0);
  signal d1_1_27: std_logic_vector((13 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((13 - 1) downto 0);
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
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
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

entity mux_c77e20fa3c is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((9 - 1) downto 0);
    d1 : in std_logic_vector((9 - 1) downto 0);
    d2 : in std_logic_vector((9 - 1) downto 0);
    y : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_c77e20fa3c;


architecture behavior of mux_c77e20fa3c is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((9 - 1) downto 0);
  signal d1_1_27: std_logic_vector((9 - 1) downto 0);
  signal d2_1_30: std_logic_vector((9 - 1) downto 0);
  type array_type_pipe_18_22 is array (0 to (1 - 1)) of std_logic_vector((9 - 1) downto 0);
  signal pipe_18_22: array_type_pipe_18_22 := (
    0 => "000000000");
  signal pipe_18_22_front_din: std_logic_vector((9 - 1) downto 0);
  signal pipe_18_22_back: std_logic_vector((9 - 1) downto 0);
  signal pipe_18_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((9 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  pipe_18_22_back <= pipe_18_22(0);
  proc_pipe_18_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_18_22_push_front_pop_back_en = '1')) then
        pipe_18_22(0) <= pipe_18_22_front_din;
      end if;
    end if;
  end process proc_pipe_18_22;
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
  pipe_18_22_front_din <= unregy_join_6_1;
  pipe_18_22_push_front_pop_back_en <= '1';
  y <= pipe_18_22_back;
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
  component bmg_62_4780518c6f20c162
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_62_4780518c6f20c162:
    component is true;
  attribute fpga_dont_touch of bmg_62_4780518c6f20c162:
    component is "true";
  attribute box_type of bmg_62_4780518c6f20c162:
    component  is "black_box";
begin
  data_out <= dly_data_out;
  core_we <= we(0);
  core_ce <= ce and en(0);
  sinit <= rst(0) and ce;
  comp0: if ((core_name0 = "bmg_62_4780518c6f20c162")) generate
    core_instance0: bmg_62_4780518c6f20c162
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

entity bitbasher_6b8a394067 is
  port (
    din : in std_logic_vector((64 - 1) downto 0);
    even : out std_logic_vector((32 - 1) downto 0);
    odd : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end bitbasher_6b8a394067;


architecture behavior of bitbasher_6b8a394067 is
  signal din_1_33: unsigned((64 - 1) downto 0);
  signal slice_5_31: unsigned((8 - 1) downto 0);
  signal slice_5_51: unsigned((8 - 1) downto 0);
  signal slice_5_71: unsigned((8 - 1) downto 0);
  signal slice_5_91: unsigned((8 - 1) downto 0);
  signal fulleven_5_1_concat: unsigned((32 - 1) downto 0);
  signal slice_6_30: unsigned((8 - 1) downto 0);
  signal slice_6_50: unsigned((8 - 1) downto 0);
  signal slice_6_70: unsigned((8 - 1) downto 0);
  signal slice_6_90: unsigned((8 - 1) downto 0);
  signal fullodd_6_1_concat: unsigned((32 - 1) downto 0);
begin
  din_1_33 <= std_logic_vector_to_unsigned(din);
  slice_5_31 <= u2u_slice(din_1_33, 55, 48);
  slice_5_51 <= u2u_slice(din_1_33, 39, 32);
  slice_5_71 <= u2u_slice(din_1_33, 23, 16);
  slice_5_91 <= u2u_slice(din_1_33, 7, 0);
  fulleven_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_5_31) & unsigned_to_std_logic_vector(slice_5_51) & unsigned_to_std_logic_vector(slice_5_71) & unsigned_to_std_logic_vector(slice_5_91));
  slice_6_30 <= u2u_slice(din_1_33, 63, 56);
  slice_6_50 <= u2u_slice(din_1_33, 47, 40);
  slice_6_70 <= u2u_slice(din_1_33, 31, 24);
  slice_6_90 <= u2u_slice(din_1_33, 15, 8);
  fullodd_6_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_6_30) & unsigned_to_std_logic_vector(slice_6_50) & unsigned_to_std_logic_vector(slice_6_70) & unsigned_to_std_logic_vector(slice_6_90));
  even <= unsigned_to_std_logic_vector(fulleven_5_1_concat);
  odd <= unsigned_to_std_logic_vector(fullodd_6_1_concat);
end behavior;

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

  constant2: entity work.constant_16b5ff1a9f
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

  constant1: entity work.constant_42baf59612
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
