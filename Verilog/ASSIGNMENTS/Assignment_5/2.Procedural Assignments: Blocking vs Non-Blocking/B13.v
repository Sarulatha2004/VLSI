module ALU(A,B,Sel,Out,carry);
input [3:0]A,B;
input [2:0]Sel;
output reg [3:0]Out;
output reg carry;
always @ (*) begin
case(Sel)
 3'b000: {carry,Out}=A+B;
 3'b001: {carry,Out}=A-B;
 3'b010: Out=A/B;
 3'b011: Out=A%B;
 3'b100: Out=A|B;
 3'b101: Out=A&B;
 3'b110: Out=A^B;
 3'b111: Out=~A;
  default: Out=4'bxxxx;
endcase
end
endmodule
