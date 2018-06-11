`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// HUST Digital Logic Experiment 3: Clock divider
//
// Pan Yue
//  
//////////////////////////////////////////////////////////////////////////////////

module divider(clk, clk_N);
    input clk;
    output reg clk_N;
    parameter N = 100_000_000;
    reg [31:0] counter;

    initial
    begin
        counter = 0;
        clk_N = 0;
    end
    always @(posedge clk)
    begin
        counter <= counter + 1;
        if (counter > N / 2)
            begin
                clk_N <= ~clk_N;
                counter <= 0;
            end
    end
endmodule