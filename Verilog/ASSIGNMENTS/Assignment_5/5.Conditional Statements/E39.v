module counter(clk,reset,count);
input clk, reset;
output reg [3:0] count;
  always @(posedge clk) begin
    if (reset)
      count <= 0;    
    else
      count <= count + 1;
  end
endmodule

