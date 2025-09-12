module wrong_casex (input [3:0] in, output reg y);
  always @(*) begin
    casex (in)
      4'b1x00: y = 1;  // matches 1000 and 1100
      4'b0x00: y = 0;  // matches 0000 and 0100
      default: y = 0;
    endcase
  end
endmodule

