module encoder_if(d,y);
  input [3:0] d;
  output reg [1:0] y;
  always @(*) begin
    if (d[3]) y = 2'b11;
    else if (d[2]) y = 2'b10;
    else if (d[1]) y = 2'b01;
    else if (d[0]) y = 2'b00;
    else          y = 2'bxx;
  end
endmodule

