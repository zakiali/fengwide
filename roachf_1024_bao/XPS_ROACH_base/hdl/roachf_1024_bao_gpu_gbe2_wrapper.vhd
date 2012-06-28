-------------------------------------------------------------------------------
-- roachf_1024_bao_gpu_gbe2_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library ten_gb_eth_v3_00_a;
use ten_gb_eth_v3_00_a.all;

entity roachf_1024_bao_gpu_gbe2_wrapper is
  port (
    clk : in std_logic;
    rst : in std_logic;
    tx_valid : in std_logic;
    tx_ack : out std_logic;
    tx_end_of_frame : in std_logic;
    tx_discard : in std_logic;
    tx_data : in std_logic_vector(63 downto 0);
    tx_dest_ip : in std_logic_vector(31 downto 0);
    tx_dest_port : in std_logic_vector(15 downto 0);
    rx_valid : out std_logic;
    rx_ack : in std_logic;
    rx_data : out std_logic_vector(63 downto 0);
    rx_end_of_frame : out std_logic;
    rx_size : out std_logic_vector(15 downto 0);
    rx_source_ip : out std_logic_vector(31 downto 0);
    rx_source_port : out std_logic_vector(15 downto 0);
    led_up : out std_logic;
    led_rx : out std_logic;
    led_tx : out std_logic;
    xaui_clk : in std_logic;
    xgmii_txd : out std_logic_vector(63 downto 0);
    xgmii_txc : out std_logic_vector(7 downto 0);
    xgmii_rxd : in std_logic_vector(63 downto 0);
    xgmii_rxc : in std_logic_vector(7 downto 0);
    xaui_reset : out std_logic;
    xaui_status : in std_logic_vector(7 downto 0);
    mgt_rxeqmix : out std_logic_vector(1 downto 0);
    mgt_rxeqpole : out std_logic_vector(3 downto 0);
    mgt_txpreemphasis : out std_logic_vector(2 downto 0);
    mgt_txdiffctrl : out std_logic_vector(2 downto 0);
    OPB_Clk : in std_logic;
    OPB_Rst : in std_logic;
    Sl_DBus : out std_logic_vector(0 to 31);
    Sl_errAck : out std_logic;
    Sl_retry : out std_logic;
    Sl_toutSup : out std_logic;
    Sl_xferAck : out std_logic;
    OPB_ABus : in std_logic_vector(0 to 31);
    OPB_BE : in std_logic_vector(0 to 3);
    OPB_DBus : in std_logic_vector(0 to 31);
    OPB_RNW : in std_logic;
    OPB_select : in std_logic;
    OPB_seqAddr : in std_logic
  );
end roachf_1024_bao_gpu_gbe2_wrapper;

architecture STRUCTURE of roachf_1024_bao_gpu_gbe2_wrapper is

  component ten_gb_eth is
    generic (
      SWING : string;
      PREEMPHASYS : string;
      DEFAULT_FABRIC_MAC : std_logic_vector;
      DEFAULT_FABRIC_IP : std_logic_vector;
      DEFAULT_FABRIC_GATEWAY : std_logic_vector;
      DEFAULT_FABRIC_PORT : std_logic_vector;
      FABRIC_RUN_ON_STARTUP : integer;
      C_BASEADDR : std_logic_vector;
      C_HIGHADDR : std_logic_vector;
      C_OPB_AWIDTH : INTEGER;
      C_OPB_DWIDTH : INTEGER
    );
    port (
      clk : in std_logic;
      rst : in std_logic;
      tx_valid : in std_logic;
      tx_ack : out std_logic;
      tx_end_of_frame : in std_logic;
      tx_discard : in std_logic;
      tx_data : in std_logic_vector(63 downto 0);
      tx_dest_ip : in std_logic_vector(31 downto 0);
      tx_dest_port : in std_logic_vector(15 downto 0);
      rx_valid : out std_logic;
      rx_ack : in std_logic;
      rx_data : out std_logic_vector(63 downto 0);
      rx_end_of_frame : out std_logic;
      rx_size : out std_logic_vector(15 downto 0);
      rx_source_ip : out std_logic_vector(31 downto 0);
      rx_source_port : out std_logic_vector(15 downto 0);
      led_up : out std_logic;
      led_rx : out std_logic;
      led_tx : out std_logic;
      xaui_clk : in std_logic;
      xgmii_txd : out std_logic_vector(63 downto 0);
      xgmii_txc : out std_logic_vector(7 downto 0);
      xgmii_rxd : in std_logic_vector(63 downto 0);
      xgmii_rxc : in std_logic_vector(7 downto 0);
      xaui_reset : out std_logic;
      xaui_status : in std_logic_vector(7 downto 0);
      mgt_rxeqmix : out std_logic_vector(1 downto 0);
      mgt_rxeqpole : out std_logic_vector(3 downto 0);
      mgt_txpreemphasis : out std_logic_vector(2 downto 0);
      mgt_txdiffctrl : out std_logic_vector(2 downto 0);
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to (C_OPB_DWIDTH-1));
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to (C_OPB_AWIDTH-1));
      OPB_BE : in std_logic_vector(0 to ((C_OPB_DWIDTH/8)-1));
      OPB_DBus : in std_logic_vector(0 to (C_OPB_DWIDTH-1));
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic
    );
  end component;

begin

  roachf_1024_bao_gpu_gbe2 : ten_gb_eth
    generic map (
      SWING => "800",
      PREEMPHASYS => "3",
      DEFAULT_FABRIC_MAC => X"000000000000",
      DEFAULT_FABRIC_IP => X"00000000",
      DEFAULT_FABRIC_GATEWAY => X"00",
      DEFAULT_FABRIC_PORT => X"0000",
      FABRIC_RUN_ON_STARTUP => 0,
      C_BASEADDR => X"0100C000",
      C_HIGHADDR => X"0100FFFF",
      C_OPB_AWIDTH => 32,
      C_OPB_DWIDTH => 32
    )
    port map (
      clk => clk,
      rst => rst,
      tx_valid => tx_valid,
      tx_ack => tx_ack,
      tx_end_of_frame => tx_end_of_frame,
      tx_discard => tx_discard,
      tx_data => tx_data,
      tx_dest_ip => tx_dest_ip,
      tx_dest_port => tx_dest_port,
      rx_valid => rx_valid,
      rx_ack => rx_ack,
      rx_data => rx_data,
      rx_end_of_frame => rx_end_of_frame,
      rx_size => rx_size,
      rx_source_ip => rx_source_ip,
      rx_source_port => rx_source_port,
      led_up => led_up,
      led_rx => led_rx,
      led_tx => led_tx,
      xaui_clk => xaui_clk,
      xgmii_txd => xgmii_txd,
      xgmii_txc => xgmii_txc,
      xgmii_rxd => xgmii_rxd,
      xgmii_rxc => xgmii_rxc,
      xaui_reset => xaui_reset,
      xaui_status => xaui_status,
      mgt_rxeqmix => mgt_rxeqmix,
      mgt_rxeqpole => mgt_rxeqpole,
      mgt_txpreemphasis => mgt_txpreemphasis,
      mgt_txdiffctrl => mgt_txdiffctrl,
      OPB_Clk => OPB_Clk,
      OPB_Rst => OPB_Rst,
      Sl_DBus => Sl_DBus,
      Sl_errAck => Sl_errAck,
      Sl_retry => Sl_retry,
      Sl_toutSup => Sl_toutSup,
      Sl_xferAck => Sl_xferAck,
      OPB_ABus => OPB_ABus,
      OPB_BE => OPB_BE,
      OPB_DBus => OPB_DBus,
      OPB_RNW => OPB_RNW,
      OPB_select => OPB_select,
      OPB_seqAddr => OPB_seqAddr
    );

end architecture STRUCTURE;

