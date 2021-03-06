`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// HUST Verilog Experiment 4 and 5 : Full adder
//
// Pan Yue
//
//////////////////////////////////////////////////////////////////////////////////

module full_adder(a, b, c, s);
	parameter WIDTH = 32;

	input [WIDTH-1:0]	a, b;
	output [WIDTH-1:0]	s;
	output [WIDTH-1:0]	c;

	assign {c, s} = a + b;
endmodule