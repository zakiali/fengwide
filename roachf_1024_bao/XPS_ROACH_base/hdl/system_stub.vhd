-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
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
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
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
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
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
      epb_data => epb_data,
      epb_addr => epb_addr,
      epb_addr_gp => epb_addr_gp,
      epb_cs_n => epb_cs_n,
      epb_be_n => epb_be_n,
      epb_r_w_n => epb_r_w_n,
      epb_oe_n => epb_oe_n,
      epb_rdy => epb_rdy,
      ppc_irq_n => ppc_irq_n,
      mgt_ref_clk_top_n => mgt_ref_clk_top_n,
      mgt_ref_clk_top_p => mgt_ref_clk_top_p,
      mgt_ref_clk_bottom_n => mgt_ref_clk_bottom_n,
      mgt_ref_clk_bottom_p => mgt_ref_clk_bottom_p,
      mgt_rx_top_1_n => mgt_rx_top_1_n,
      mgt_rx_top_1_p => mgt_rx_top_1_p,
      mgt_tx_top_1_n => mgt_tx_top_1_n,
      mgt_tx_top_1_p => mgt_tx_top_1_p,
      mgt_rx_top_0_n => mgt_rx_top_0_n,
      mgt_rx_top_0_p => mgt_rx_top_0_p,
      mgt_tx_top_0_n => mgt_tx_top_0_n,
      mgt_tx_top_0_p => mgt_tx_top_0_p,
      mgt_rx_bottom_1_n => mgt_rx_bottom_1_n,
      mgt_rx_bottom_1_p => mgt_rx_bottom_1_p,
      mgt_tx_bottom_1_n => mgt_tx_bottom_1_n,
      mgt_tx_bottom_1_p => mgt_tx_bottom_1_p,
      mgt_rx_bottom_0_n => mgt_rx_bottom_0_n,
      mgt_rx_bottom_0_p => mgt_rx_bottom_0_p,
      mgt_tx_bottom_0_n => mgt_tx_bottom_0_n,
      mgt_tx_bottom_0_p => mgt_tx_bottom_0_p,
      adc0_adc3wire_clk => adc0_adc3wire_clk,
      adc0_adc3wire_data => adc0_adc3wire_data,
      adc0_adc3wire_strobe => adc0_adc3wire_strobe,
      adc0_modepin => adc0_modepin,
      adc1_adc3wire_clk => adc1_adc3wire_clk,
      adc1_adc3wire_data => adc1_adc3wire_data,
      adc1_adc3wire_strobe => adc1_adc3wire_strobe,
      adc1_modepin => adc1_modepin,
      adc0clk_p => adc0clk_p,
      adc0clk_n => adc0clk_n,
      adc0sync_p => adc0sync_p,
      adc0sync_n => adc0sync_n,
      adc0outofrangei_p => adc0outofrangei_p,
      adc0outofrangei_n => adc0outofrangei_n,
      adc0outofrangeq_p => adc0outofrangeq_p,
      adc0outofrangeq_n => adc0outofrangeq_n,
      adc0dataeveni_p => adc0dataeveni_p,
      adc0dataeveni_n => adc0dataeveni_n,
      adc0dataoddi_p => adc0dataoddi_p,
      adc0dataoddi_n => adc0dataoddi_n,
      adc0dataevenq_p => adc0dataevenq_p,
      adc0dataevenq_n => adc0dataevenq_n,
      adc0dataoddq_p => adc0dataoddq_p,
      adc0dataoddq_n => adc0dataoddq_n,
      adc0ddrb_p => adc0ddrb_p,
      adc0ddrb_n => adc0ddrb_n,
      adc1clk_p => adc1clk_p,
      adc1clk_n => adc1clk_n,
      adc1sync_p => adc1sync_p,
      adc1sync_n => adc1sync_n,
      adc1outofrangei_p => adc1outofrangei_p,
      adc1outofrangei_n => adc1outofrangei_n,
      adc1outofrangeq_p => adc1outofrangeq_p,
      adc1outofrangeq_n => adc1outofrangeq_n,
      adc1dataeveni_p => adc1dataeveni_p,
      adc1dataeveni_n => adc1dataeveni_n,
      adc1dataoddi_p => adc1dataoddi_p,
      adc1dataoddi_n => adc1dataoddi_n,
      adc1dataevenq_p => adc1dataevenq_p,
      adc1dataevenq_n => adc1dataevenq_n,
      adc1dataoddq_p => adc1dataoddq_p,
      adc1dataoddq_n => adc1dataoddq_n,
      adc1ddrb_p => adc1ddrb_p,
      adc1ddrb_n => adc1ddrb_n,
      roachf_1024_bao_LEDs_led1_arm_ext => roachf_1024_bao_LEDs_led1_arm_ext(0 to 0),
      roachf_1024_bao_LEDs_led2_sync_ext => roachf_1024_bao_LEDs_led2_sync_ext(0 to 0),
      roachf_1024_bao_LEDs_led4_eq_clip_ext => roachf_1024_bao_LEDs_led4_eq_clip_ext(0 to 0),
      qdr0_k_n => qdr0_k_n,
      qdr0_k => qdr0_k,
      qdr0_d => qdr0_d,
      qdr0_bw_n => qdr0_bw_n,
      qdr0_sa => qdr0_sa,
      qdr0_w_n => qdr0_w_n,
      qdr0_r_n => qdr0_r_n,
      qdr0_q => qdr0_q,
      qdr0_cq_n => qdr0_cq_n,
      qdr0_cq => qdr0_cq,
      qdr0_qvld => qdr0_qvld,
      qdr0_dll_off_n => qdr0_dll_off_n,
      qdr1_k_n => qdr1_k_n,
      qdr1_k => qdr1_k,
      qdr1_d => qdr1_d,
      qdr1_bw_n => qdr1_bw_n,
      qdr1_sa => qdr1_sa,
      qdr1_w_n => qdr1_w_n,
      qdr1_r_n => qdr1_r_n,
      qdr1_q => qdr1_q,
      qdr1_cq_n => qdr1_cq_n,
      qdr1_cq => qdr1_cq,
      qdr1_qvld => qdr1_qvld,
      qdr1_dll_off_n => qdr1_dll_off_n
    );

end architecture STRUCTURE;

