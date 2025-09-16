module piso_shift(clk, reset, load, pin, dout);
  input clk, reset, load;
  input [3:0] pin;
  output reg dout;
  reg [3:0] q;

  always @(posedge clk or posedge reset) begin
    if (reset)
      q <= 4'b0000;
    else if (load)
      q <= pin;       
    else
      q <= {q[2:0], 1'b0};  
  end

  always @(*) begin
    dout = q[3]; 
  end
endmodule

