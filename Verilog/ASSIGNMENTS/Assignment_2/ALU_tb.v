module tb_ALU;
reg [3:0]A,B;
reg [2:0]F;
wire CarryOut,Overflow;
wire[3:0]Result;
ALU_struct uut(.A(A), .B(B), .F(F), .CarryOut(CarryOut), .Overflow(Overflow), .Result(Result));
initial begin
$dumpfile("ALU_wave.vcd");
$display("  a    b    f     |   overflow   carry   res");
$dumpvars(0, tb_ALU);
$monitor( " %b      %b     %b     |  %b   %b   %b",A,B,F,CarryOut,Overflow,Result);
A=4'b0011; B=4'b1010; F=3'b110; #10;
A=4'b0101; B=4'b0001; F=3'b101; #10;
A=4'b0101; B=4'b1001; F=3'b111; #10;
A=4'b1010; B=4'b1101; F=3'b001; #10;
A=4'b0101; B=4'b1001; F=3'b100; #10;
A=4'b0110; B=4'b0101; F=3'b101; #10;
A=4'b0111; B=4'b1001; F=3'b111; #10;
$finish;
end
endmodule
