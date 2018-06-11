`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// HUST Digital Logic Experiment 3-1-2
//
// Pan Yue
//  
//////////////////////////////////////////////////////////////////////////////////

module simple_sync_seq(clk, t, x, y, q0, q1);
  input clk;
  input t, x;
  output y, q0, q1;
  wire q0, t1, q1, notq1;

  assign t1 = x ^ q0;
  assign y = ~(x & notq1);

  t_trigger t_trigger1(.clk(clk), .x(t), .q(q0));
  t_trigger t_trigger2(.clk(clk), .x(t1), .q(q1), .notq(notq1));
endmodule