`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// HUST Verilog Experiment 4 and 5 RAM
//
// Pan Yue
//
//////////////////////////////////////////////////////////////////////////////////

module ram(addr, data);
  parameter WIDTH = 32;

  input [WIDTH-1:0] addr;
  output [WIDTH-1:0] data;

  reg [WIDTH-1:0] ram[15:0];

initial begin
	$readmemh("ram_init.txt", ram);
end

assign data = ram[addr];
endmodule