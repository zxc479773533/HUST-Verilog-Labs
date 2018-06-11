`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// HUST Digital Logic Experiment 4-3 Comparator1
//
// Pan Yue
//  
//////////////////////////////////////////////////////////////////////////////////

module comparator1(A, B, f1, f2, f3);
	parameter WIDTH = 1;

	input [WIDTH-1:0] A, B;
	output f1, f2, f3;

	assign f1 = (A > B) ? 1'b1 : 1'b0;
	assign f2 = (A == B) ? 1'b1 : 1'b0;
	assign f3 = (A < B) ? 1'b1 : 1'b0;
endmodule