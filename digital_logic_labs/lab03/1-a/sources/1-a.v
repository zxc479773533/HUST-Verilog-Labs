`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// HUST Digital Logic Experiment 3-1-a
//
// Pan Yue
//  
//////////////////////////////////////////////////////////////////////////////////

module mux_latch(
  input [3:0] data,
  input [1:0] valid,
  input flag,
  output reg valid_data);

initial begin
  valid_data=1'b0;
end

always @ (*)
begin
  case(valid)
    2'b00 : begin
      if(flag) valid_data = data[0];
      else valid_data = 0;
  	end
    2'b01 : begin
      if(flag) valid_data = data[1];
      else valid_data = 0;
    end
  	2'b10 : begin
      if(flag) valid_data = data[2];
      else valid_data = 0;
    end
    2'b11 : begin
      if(flag) valid_data = data[3];
      else valid_data = 0;
    end
    default : valid_data = 0;
  endcase
end
endmodule