`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// HUST Digital Logic Experiment 3-2
//
// Pan Yue
//  
//////////////////////////////////////////////////////////////////////////////////

module pluse_counter(x, z, o1, o2, o3, o4);
    input x;
    output z, o1, o2, o3, o4;
    wire q1, q2, q3, q4, notq4;
    wire j4, in;

    assign z = x & q1 & q4;
    assign j4 = q3 & q2;
    assign in = 1;
    assign o1 = q1;
    assign o2 = q2;
    assign o3 = q3;
    assign o4 = q4;
    
    jk_trigger jk_trigger1(.clk(x), .j(in), .k(in), .q(q1));
    jk_trigger jk_trigger2(.clk(q1), .j(notq4), .k(in), .q(q2));
    jk_trigger jk_trigger3(.clk(q2), .j(in), .k(in), .q(q3));
    jk_trigger jk_trigger4(.clk(q1), .j(j4), .k(in), .q(q4), .notq(notq4));
endmodule