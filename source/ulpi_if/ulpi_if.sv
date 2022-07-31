
module ulpi_if (
    input   logic           uclk,
    inout   logic[7:0]      udata,
    output  logic           ustp,
    input   logic           udir,
    output  logic           unxt,
    //
    input   logic           dclk,
    input   logic           tx_dv,
    output  logic           tx_rdy,
    input   logic[7:0]      tx_data,
    output  logic           rx_dv,
    input   logic           rx_rdy,
    output  logic[7:0]      rx_data
);


    logic pre_ustp, pre_unxt, udir_q, unxt_q;
    logic [7:0] udata_out, pre_udata_out, udata_in, udata_in_q;
    assign pre_ustp = 0;
    always_ff @(posedge uclk) begin
        ustp <= pre_ustp;
        udata_out <= pre_udata_out;
        udir_q <= udir;
        unxt_q <= unxt;
        udata_in_q <= udata_in;
    end
    
    assign pre_ustp = 0;
    
    assign udata = (0 == udir_q) ? udata_out : 8'bzzzz_zzzz;
    assign udata_in = udata;
    
    assign pre_udata_out = 0;
    
    ulpi_ila ulpi_ila_inst(.clk(uclk), .probe0({pre_udata_out, udata_in_q, pre_ustp, udir_q, unxt_q})); // 19
    

endmodule

