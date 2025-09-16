module up_down_counter_async(clk,reset,M,q);
input clk,reset,M;
output  [3:0]q;
wire q0, q1, q2, q3;


  tff t0 (.clk(clk),   .reset(reset),  .q(q0));
  tff t1 (.clk(M?~q0:q0),    .reset(reset), .q(q1));
  tff t2 (.clk(M?~q1:q1),    .reset(reset), .q(q2));
  tff t3 (.clk(M?~q2:q2),    .reset(reset), .q(q3));

  assign q = {q3, q2, q1, q0};
endmodule



module tff(clk,reset,q);
input clk,reset;
output reg q;
always @(posedge clk or posedge reset) begin
if(reset)
  q<=1'b0;
else
  q<=~q;
end
endmodule
