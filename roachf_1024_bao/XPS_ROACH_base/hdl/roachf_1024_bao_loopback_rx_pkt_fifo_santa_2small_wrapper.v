//-----------------------------------------------------------------------------
// roachf_1024_bao_loopback_rx_pkt_fifo_santa_2small_wrapper.v
//-----------------------------------------------------------------------------

module roachf_1024_bao_loopback_rx_pkt_fifo_santa_2small_wrapper
  (
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
    user_data_in,
    user_clk
  );
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
  input [31:0] user_data_in;
  input user_clk;

  opb_register_simulink2ppc
    #(
      .C_BASEADDR ( 32'h01008B00 ),
      .C_HIGHADDR ( 32'h01008BFF ),
      .C_OPB_AWIDTH ( 32 ),
      .C_OPB_DWIDTH ( 32 ),
      .C_FAMILY ( "virtex5" )
    )
    roachf_1024_bao_loopback_rx_pkt_fifo_Santa_2small (
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
      .user_data_in ( user_data_in ),
      .user_clk ( user_clk )
    );

endmodule

