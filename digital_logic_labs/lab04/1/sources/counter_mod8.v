`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// HUST Digital Logic Experiment 4-1 counter mod 8
//
// Pan Yue
//  
//////////////////////////////////////////////////////////////////////////////////

module counter_mod8(cp, qcc, Q);
  input cp;
  output qcc;
  output [3:0] Q;

  reg [3:0] A;
  wire ld;
  wire clk_N;

  assign ld = (Q[3] & Q[0]) ? 0 : 1;
  
initial begin
  A <= 4'b0010;
end
  // 仿真时，注释掉25行并将counter1的cp输入改为cp
  divider divider1(.clk(cp), .clk_N(clk_N));
  counter4 counter1(.cp(clk_N), .clr(1), .qcc(qcc), .m(1), .ld(ld), .A(A), .Q(Q));
endmodule