`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// HUST Digital Logic Experiment 3-1-3
//
// Pan Yue
//  
//////////////////////////////////////////////////////////////////////////////////

module pipe3b(sig_nsyn, clk, q1, q2, sig_syn);
    input clk;
    input sig_nsyn;
    output reg q1, q2, sig_syn;
    wire clk_N;

    divider divider(.clk(clk), .clk_N(clk_N));

initial begin
    q1 = 0;
    q2 = 0;
    sig_syn = 0;
end

always@(posedge clk_N) begin
    sig_syn <= q2;
    q2 <= q1;
    q1 <= sig_nsyn;
end

endmodule