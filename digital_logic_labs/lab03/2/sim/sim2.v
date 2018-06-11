`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// HUST Digital Logic Experiment 3-2 Simulation
//
// Pan Yue
//  
//////////////////////////////////////////////////////////////////////////////////

module test_module;
  reg x;
  wire z, q1, q2, q3, q4;

  pluse_counter test(.x(x), .z(z), .o1(q1), .o2(q2), .o3(q3), .o4(q4));

initial begin
  x = 0;
  #10;
end

always begin
  #20 x <= ~x;
end
endmodule
