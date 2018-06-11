`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// HUST Digital Logic Experiment 3-1-2
//
// Pan Yue
//  
//////////////////////////////////////////////////////////////////////////////////

module simple_sync_seq(clk, t, x, y);
    input clk;
    input t, x;
    output y;
    wire q0, t1, notq1, clk_N;

    divider divider1(.clk(clk), .clk_N(clk_N));
    assign t1 = x ^ q0;
    assign y = ~(x & notq1);

    t_trigger t_trigger1(.clk(clk_N), .x(t), .q(q0));
    t_trigger t_trigger2(.clk(clk_N), .x(t1), .notq(notq1));
endmodule