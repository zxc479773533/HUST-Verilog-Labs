`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// HUST Verilog Experiment 4 and 5 Latch
//
// Pan Yue
//
//////////////////////////////////////////////////////////////////////////////////

module latch(clk, rst, ld, d, q);
  parameter WIDTH = 8;

  input clk, rst, ld;
  input [WIDTH-1:0] d;
  output reg [WIDTH-1:0] q;

always @(posedge clk) begin
  if (rst)
    q <= 0;
  else if (ld)
    q <= d;
end
endmodule