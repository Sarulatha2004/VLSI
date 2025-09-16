module d_flipflop(clk,reset,d,q);
  input clk,reset,d;
  output reg q;
  always @(posedge clk or posedge reset)
    begin
    if (reset)
      q<=0;
   else 
     q<=d;
    end 
endmodule
  

module siso_shift(clk,reset,din ,dout);
  input clk,reset,din;
  output wire dout;
  wire q0,q1,q2,q3;
  
    d_flipflop d0 (.d(din),.clk(clk),.reset(reset),.q(q0));
    d_flipflop d1 (.d(q0),.clk(clk),.reset(reset),.q(q1));
    d_flipflop d2 (.d(q1),.clk(clk),.reset(reset),.q(q2));
    d_flipflop d3 (.d(q2),.clk(clk),.reset(reset),.q(q3));
   assign dout=q3;
    
    endmodule
