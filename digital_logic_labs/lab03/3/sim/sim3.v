`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// HUST Digital Logic Experiment 3-3 Simulation
//
// Pan Yue
//  
//////////////////////////////////////////////////////////////////////////////////

module test_module;
  reg clk;
  reg sig_nsyn;
  wire q1, q2, sig_syn;

  pipe3b test(.sig_nsyn(sig_nsyn), .clk(clk), .q1(q1), .q2(q2), .sig_syn(sig_syn));

initial begin
  sig_nsyn = 0;
  clk = 0;
  #100 sig_nsyn = 1;
  #300 sig_nsyn = 0;
  #300 sig_nsyn = 1;
  #300 sig_nsyn = 0;
end

always begin
  #25 clk = ~clk;
end

endmodule
