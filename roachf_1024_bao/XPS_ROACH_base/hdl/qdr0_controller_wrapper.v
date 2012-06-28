//-----------------------------------------------------------------------------
// qdr0_controller_wrapper.v
//-----------------------------------------------------------------------------

module qdr0_controller_wrapper
  (
    clk0,
    clk180,
    clk270,
    div_clk,
    reset,
    qdr_k_n,
    qdr_k,
    qdr_d,
    qdr_bw_n,
    qdr_sa,
    qdr_w_n,
    qdr_r_n,
    qdr_q,
    qdr_cq_n,
    qdr_cq,
    qdr_qvld,
    qdr_dll_off_n,
    phy_rdy,
    cal_fail,
    usr_addr,
    usr_wr_strb,
    usr_wr_data,
    usr_wr_be,
    usr_rd_strb,
    usr_rd_data,
    usr_rd_dvld
  );
  input clk0;
  input clk180;
  input clk270;
  input div_clk;
  input reset;
  output qdr_k_n;
  output qdr_k;
  output [17:0] qdr_d;
  output [1:0] qdr_bw_n;
  output [21:0] qdr_sa;
  output qdr_w_n;
  output qdr_r_n;
  input [17:0] qdr_q;
  input qdr_cq_n;
  input qdr_cq;
  input qdr_qvld;
  output qdr_dll_off_n;
  output phy_rdy;
  output cal_fail;
  input [21:0] usr_addr;
  input usr_wr_strb;
  input [35:0] usr_wr_data;
  input [3:0] usr_wr_be;
  input usr_rd_strb;
  output [35:0] usr_rd_data;
  output usr_rd_dvld;

  qdr_controller
    #(
      .DATA_WIDTH ( 18 ),
      .BW_WIDTH ( 2 ),
      .ADDR_WIDTH ( 22 ),
      .BURST_LENGTH ( 4 ),
      .CLK_FREQ ( 150 )
    )
    qdr0_controller (
      .clk0 ( clk0 ),
      .clk180 ( clk180 ),
      .clk270 ( clk270 ),
      .div_clk ( div_clk ),
      .reset ( reset ),
      .qdr_k_n ( qdr_k_n ),
      .qdr_k ( qdr_k ),
      .qdr_d ( qdr_d ),
      .qdr_bw_n ( qdr_bw_n ),
      .qdr_sa ( qdr_sa ),
      .qdr_w_n ( qdr_w_n ),
      .qdr_r_n ( qdr_r_n ),
      .qdr_q ( qdr_q ),
      .qdr_cq_n ( qdr_cq_n ),
      .qdr_cq ( qdr_cq ),
      .qdr_qvld ( qdr_qvld ),
      .qdr_dll_off_n ( qdr_dll_off_n ),
      .phy_rdy ( phy_rdy ),
      .cal_fail ( cal_fail ),
      .usr_addr ( usr_addr ),
      .usr_wr_strb ( usr_wr_strb ),
      .usr_wr_data ( usr_wr_data ),
      .usr_wr_be ( usr_wr_be ),
      .usr_rd_strb ( usr_rd_strb ),
      .usr_rd_data ( usr_rd_data ),
      .usr_rd_dvld ( usr_rd_dvld )
    );

endmodule

