module decoder_casez (in ,out);
input [3:0] in;
output reg [7:0] out;
  always @(*) begin
    casez (in)
      4'b000?: out = 8'b00000001;  // matches 0000 and 0001
      4'b001?: out = 8'b00000010;  // matches 0010 and 0011
      4'b01??: out = 8'b00000100;  // matches 0100–0111
      4'b1???: out = 8'b00001000;  // matches 1000–1111
      default: out = 8'b00000000;
    endcase
  end
endmodule

