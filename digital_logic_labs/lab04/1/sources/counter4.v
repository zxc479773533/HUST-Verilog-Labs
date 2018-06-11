`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// HUST Digital Logic Experiment 4-1 counter4
//
// Pan Yue
//  
//////////////////////////////////////////////////////////////////////////////////

module counter4(cp, clr, qcc, m, ld, A, Q);
  input cp, clr, m, ld;
  input [3:0] A;
  output reg qcc;
  output reg [3:0] Q;

initial begin
  qcc <= 0;
  Q <= 4'b0010;
end

always @(posedge cp) begin
  if (clr == 0)
    Q <= 0;
  else if (ld == 0)
    Q <= A;
  else begin
    if (m == 1) begin
      if (Q == 4'b1111) begin
        Q <= 4'b0000;
        qcc <= 1;
      end
      else begin
        Q <= Q + 1;
        qcc <= 0;
      end
    end
    else begin
      if (Q == 4'b0000) begin
        Q <= 4'b1111;
        qcc <= 1;
      end
      else begin
        Q <= Q - 1;
        qcc <= 0;
      end
    end
  end
end

endmodule