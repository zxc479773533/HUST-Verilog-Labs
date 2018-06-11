`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// HUST Digital Logic Experiment 3: T tigger
//
// Pan Yue
//  
//////////////////////////////////////////////////////////////////////////////////

module t_trigger(clk, x, q, notq);
    input clk, x;
    output reg q;
    output notq;
initial
begin
    q <= 0;
end
    assign notq = ~q;
always @(negedge clk)
begin
    if (x == 1)
        q <= ~q;
end
endmodule