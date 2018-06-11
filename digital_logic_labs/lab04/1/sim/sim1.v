`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// HUST Digital Logic Experiment 4-1 Simulation
//
// Pan Yue
//  
//////////////////////////////////////////////////////////////////////////////////

module test_module;
  wire [3:0] Q;
  reg cp;
  wire qcc;

  counter_mod8 test(.cp(cp), .qcc(qcc), .Q(Q));

initial begin
  cp <= 0;
end

always begin
  #10 cp <= ~cp;
end

endmodule
