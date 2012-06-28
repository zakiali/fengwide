//-----------------------------------------------------------------------------
// qdr1_sniffer_wrapper.v
//-----------------------------------------------------------------------------

module qdr1_sniffer_wrapper
  (
    OPB_Clk_config,
    OPB_Rst_config,
    Sl_DBus_config,
    Sl_errAck_config,
    Sl_retry_config,
    Sl_toutSup_config,
    Sl_xferAck_config,
    OPB_ABus_config,
    OPB_BE_config,
    OPB_DBus_config,
    OPB_RNW_config,
    OPB_select_config,
    OPB_seqAddr_config,
    OPB_Clk,
    OPB_Rst,
    Sl_DBus,
    Sl_errAck,
    Sl_retry,
    Sl_toutSup,
    Sl_xferAck,
    OPB_ABus,
    OPB_BE,
    OPB_DBus,
    OPB_RNW,
    OPB_select,
    OPB_seqAddr,
    qdr_clk,
    master_addr,
    master_wr_strb,
    master_wr_data,
    master_wr_be,
    master_rd_strb,
    master_rd_data,
    master_rd_dvld,
    slave_addr,
    slave_wr_strb,
    slave_wr_data,
    slave_wr_be,
    slave_rd_strb,
    slave_rd_data,
    slave_rd_dvld,
    slave_ack,
    phy_rdy,
    cal_fail,
    qdr_reset
  );
  input OPB_Clk_config;
  input OPB_Rst_config;
  output [0:31] Sl_DBus_config;
  output Sl_errAck_config;
  output Sl_retry_config;
  output Sl_toutSup_config;
  output Sl_xferAck_config;
  input [0:31] OPB_ABus_config;
  input [0:3] OPB_BE_config;
  input [0:31] OPB_DBus_config;
  input OPB_RNW_config;
  input OPB_select_config;
  input OPB_seqAddr_config;
  input OPB_Clk;
  input OPB_Rst;
  output [0:31] Sl_DBus;
  output Sl_errAck;
  output Sl_retry;
  output Sl_toutSup;
  output Sl_xferAck;
  input [0:31] OPB_ABus;
  input [0:3] OPB_BE;
  input [0:31] OPB_DBus;
  input OPB_RNW;
  input OPB_select;
  input OPB_seqAddr;
  input qdr_clk;
  output [21:0] master_addr;
  output master_wr_strb;
  output [35:0] master_wr_data;
  output [3:0] master_wr_be;
  output master_rd_strb;
  input [35:0] master_rd_data;
  input master_rd_dvld;
  input [31:0] slave_addr;
  input slave_wr_strb;
  input [35:0] slave_wr_data;
  input [3:0] slave_wr_be;
  input slave_rd_strb;
  output [35:0] slave_rd_data;
  output slave_rd_dvld;
  output slave_ack;
  input phy_rdy;
  input cal_fail;
  output qdr_reset;

  opb_qdr_sniffer
    #(
      .QDR_DATA_WIDTH ( 18 ),
      .QDR_BW_WIDTH ( 2 ),
      .QDR_ADDR_WIDTH ( 22 ),
      .ENABLE ( 0 ),
      .C_BASEADDR ( 32'h03000000 ),
      .C_HIGHADDR ( 32'h03ffffff ),
      .C_OPB_AWIDTH ( 32 ),
      .C_OPB_DWIDTH ( 32 ),
      .C_CONFIG_BASEADDR ( 32'h00030100 ),
      .C_CONFIG_HIGHADDR ( 32'h000301FF ),
      .C_CONFIG_OPB_AWIDTH ( 32 ),
      .C_CONFIG_OPB_DWIDTH ( 32 )
    )
    qdr1_sniffer (
      .OPB_Clk_config ( OPB_Clk_config ),
      .OPB_Rst_config ( OPB_Rst_config ),
      .Sl_DBus_config ( Sl_DBus_config ),
      .Sl_errAck_config ( Sl_errAck_config ),
      .Sl_retry_config ( Sl_retry_config ),
      .Sl_toutSup_config ( Sl_toutSup_config ),
      .Sl_xferAck_config ( Sl_xferAck_config ),
      .OPB_ABus_config ( OPB_ABus_config ),
      .OPB_BE_config ( OPB_BE_config ),
      .OPB_DBus_config ( OPB_DBus_config ),
      .OPB_RNW_config ( OPB_RNW_config ),
      .OPB_select_config ( OPB_select_config ),
      .OPB_seqAddr_config ( OPB_seqAddr_config ),
      .OPB_Clk ( OPB_Clk ),
      .OPB_Rst ( OPB_Rst ),
      .Sl_DBus ( Sl_DBus ),
      .Sl_errAck ( Sl_errAck ),
      .Sl_retry ( Sl_retry ),
      .Sl_toutSup ( Sl_toutSup ),
      .Sl_xferAck ( Sl_xferAck ),
      .OPB_ABus ( OPB_ABus ),
      .OPB_BE ( OPB_BE ),
      .OPB_DBus ( OPB_DBus ),
      .OPB_RNW ( OPB_RNW ),
      .OPB_select ( OPB_select ),
      .OPB_seqAddr ( OPB_seqAddr ),
      .qdr_clk ( qdr_clk ),
      .master_addr ( master_addr ),
      .master_wr_strb ( master_wr_strb ),
      .master_wr_data ( master_wr_data ),
      .master_wr_be ( master_wr_be ),
      .master_rd_strb ( master_rd_strb ),
      .master_rd_data ( master_rd_data ),
      .master_rd_dvld ( master_rd_dvld ),
      .slave_addr ( slave_addr ),
      .slave_wr_strb ( slave_wr_strb ),
      .slave_wr_data ( slave_wr_data ),
      .slave_wr_be ( slave_wr_be ),
      .slave_rd_strb ( slave_rd_strb ),
      .slave_rd_data ( slave_rd_data ),
      .slave_rd_dvld ( slave_rd_dvld ),
      .slave_ack ( slave_ack ),
      .phy_rdy ( phy_rdy ),
      .cal_fail ( cal_fail ),
      .qdr_reset ( qdr_reset )
    );

endmodule

