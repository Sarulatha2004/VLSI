module d_flipflop(clk,reset,d,q);
  input clk,reset,d;
  output reg q;
  always @(posedge clk or posedge reset)
    begin
    if (reset)
      q<=0;
   else 
     q=d;
    end 
endmodule




module sipo_shift(clk, reset, din, q);
  input clk, reset, din;
  output [3:0] q;

  d_flipflop d0 (.d(din), .clk(clk), .reset(reset), .q(q[0]));
  d_flipflop d1 (.d(q[0]), .clk(clk), .reset(reset), .q(q[1]));
  d_flipflop d2 (.d(q[1]), .clk(clk), .reset(reset), .q(q[2]));
  d_flipflop d3 (.d(q[2]), .clk(clk), .reset(reset), .q(q[3]));
  
endmodule

