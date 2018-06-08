`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// HUST Verilog Experiment 4 and 5 Dual port RAM
//
// Pan Yue
//
//////////////////////////////////////////////////////////////////////////////////

module dual_port_ram(data, read_addr, writr_addr, we, clk, q);
  parameter DATA_WIDTH = 32;
  parameter ADDR_WIDTH = 4;

  input [DATA_WIDTH-1:0] data;
  input [ADDR_WIDTH-1:0] read_addr, writr_addr;
  input we, clk;
  output reg [DATA_WIDTH-1:0] q;

  reg [DATA_WIDTH-1:0] ram[2**ADDR_WIDTH-1:0];

initial begin
  $readmemh("ram_init.txt", ram);
end

always @(posedge clk) begin
  if (we)
    ram[writr_addr] <= data;
  q <= ram[read_addr];
end
endmodule