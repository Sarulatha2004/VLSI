module pipo_shift(clk, reset, pin, q);
  input clk, reset;
  input [3:0] pin;
  output reg [3:0] q;

  always @(posedge clk or posedge reset) begin
    if (reset)
      q <= 4'b0000;
    else
      q <= pin;
  end
endmodule

