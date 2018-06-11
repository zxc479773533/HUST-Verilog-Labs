`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// HUST Digital Logic Experiment 4-2 FSM 10110
//
// Pan Yue
//
//////////////////////////////////////////////////////////////////////////////////

module fsm_10110(clk, in, out, state);
  parameter START = 6'b100000;
  parameter FIRST = 6'b010000;
  parameter SECOND = 6'b001000;
  parameter THIRD = 6'b000100;
  parameter FOURTH = 6'b000010;
  parameter DONE = 6'b000001;

  input clk;
  input in;
  output out;
  output state;

  reg [5:0] state;
  reg find;
  wire clk_N;

  assign out = find;
  // 仿真时，注释掉29行 ，并且把always里的时钟改为clk
  divider divider(.clk(clk), .clk_N(clk_N));

initial begin
  state <= START;
  find <= 0;
end

always @(posedge clk_N) begin
  case (state)
    START:begin
      if (in == 0) begin
        state <= START;
        find <= 0;
      end
      else if (in == 1) begin
        state <= FIRST;
        find <= 0;
      end
    end
    FIRST:begin
      if (in == 0) begin
        state <= SECOND;
        find <= 0;
      end
      else if (in == 1) begin
        state <= FIRST;
        find <= 0;
      end
    end
    SECOND:begin
      if (in == 0) begin
        state <= START;
        find <= 0;
      end
      else if (in == 1) begin
        state <= THIRD;
        find <= 0;
      end
    end
    THIRD:begin
      if (in == 0) begin
        state <= SECOND;
        find <= 0;
      end
      else if (in == 1) begin
        state <= FOURTH;
        find <= 0;
      end
    end
    FOURTH:begin
      if (in == 0) begin
        state <= DONE;
        find <= 1;
      end
      else if (in == 1) begin
        state <= FIRST;
        find <= 0;
      end
    end
    DONE:begin
      if (in == 0) begin
        state <= START;
        find <= 0;
      end
      else if (in == 1) begin
        state <= FIRST;
        find <= 0;
      end
    end
  endcase
end
endmodule