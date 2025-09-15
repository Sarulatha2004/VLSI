module siso_right_3 (
  input  wire clk,
  input  wire si,    
  input  wire rst,   
  output reg  so,   
  output reg [2:0] q 
);

  always @(posedge clk) begin
    if (rst) begin
      q <= 3'b000;
    end else begin
      q[2] <= q[1]; 
      q[1] <= q[0]; 
      q[0] <= si;   
    end
  end
  always @(posedge clk) begin
    so <= q[2];
  end

endmodule

