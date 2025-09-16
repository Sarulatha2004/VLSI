module async_down_counter(
  input clk,
  input reset,
  output [3:0] q
);
  wire q0, q1, q2, q3;
  t_ff t0 (.clk(clk),   .reset(reset),  .q(q0));
  t_ff t1 (.clk(q0),    .reset(reset),  .q(q1));
  t_ff t2 (.clk(q1),    .reset(reset),  .q(q2));
  t_ff t3 (.clk(q2),    .reset(reset),  .q(q3));

  assign q = {q3, q2, q1, q0};
endmodule

module t_ff(input clk, reset, output reg q);
  always @(posedge clk or posedge reset) begin
	  
    if (reset)
      q <= 1'b1;
    else 
      q <= ~q;
  end
endmodule

