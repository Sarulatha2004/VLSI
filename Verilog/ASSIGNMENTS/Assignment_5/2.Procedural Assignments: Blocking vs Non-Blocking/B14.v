module pipeline_reg (
    input clk,
    input [7:0] din,
    output reg [7:0] q1, q2
);
  always @(posedge clk) begin
    q1 <= din;
    q2 <= q1; 
  end

endmodule

