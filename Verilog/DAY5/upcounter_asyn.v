module async_up_counter(
  input clk,
  input reset,
  output [3:0] q
);
  wire q0, q1, q2, q3;

  t_ff t0 (.clk(clk),   .reset(reset), .t(1'b1), .q(q0));
  t_ff t1 (.clk(~q0),    .reset(reset), .t(1'b1), .q(q1));
  t_ff t2 (.clk(~q1),    .reset(reset), .t(1'b1), .q(q2));
  t_ff t3 (.clk(~q2),    .reset(reset), .t(1'b1), .q(q3));

  assign q = {q3, q2, q1, q0};
endmodule

module t_ff(input clk, reset, t, output reg q);
  always @(posedge clk or posedge reset) begin
    if (reset)
      q <= 1'b0;
    else if (t)
      q <= ~q;
  end
endmodule

