`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// HUST Digital Logic Experiment 4-3 Comparator3
//
// Pan Yue
//  
//////////////////////////////////////////////////////////////////////////////////

module Comparator3(A, B, f1, f2, f3);
  input [2:0] A;
  input [2:0] B;
  output f1, f2, f3;

  wire f01, f02, f03;
  wire f11, f12, f13;
  wire f21, f22, f23;

  reg [2:0] result;
  assign {f1, f2, f3} = result;

  comparator1 comparator0(A[0], B[0], f01, f02, f03);
  comparator1 comparator1(A[1], B[1], f11, f12, f13);
  comparator1 comparator2(A[2], B[2], f21, f22, f23);

always @(A, B) begin
  if (f21 == 1)
    result <= 3'b100;
  else if (f23 == 1)
    result <= 3'b001;
  else begin
    if (f11 == 1)
      result <= 3'b100;
    else if (f13 == 1)
      result <= 3'b001;
    else begin
      if (f01 == 1)
        result <= 3'b100;
      else if (f03 == 1)
        result <= 3'b001;
      else
        result <= 3'b010;
    end
  end
end

endmodule