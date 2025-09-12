module bus_decoder (input [3:0] addr, output reg [7:0] data);
  always @(*) begin
    case (addr)
      4'b0000: data = 8'b01010011;
      4'b0001: data = 8'b00111111;
      4'b0010: data = 8'b11100011;
      4'b0011: data = 8'b00110011;
      default: data = 8'b11111111;  
    endcase
  end
endmodule

