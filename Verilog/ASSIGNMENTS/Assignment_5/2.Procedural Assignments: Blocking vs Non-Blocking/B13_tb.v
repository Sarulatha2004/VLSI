module tb_ALU;
reg [3:0]A,B;
reg [2:0]Sel;
wire [3:0]Out;
wire carry;
ALU uut(.A(A), .B(B), .Sel(Sel), .Out(Out), .carry(carry));
initial begin
$dumpfile("ALU_wave.vcd");
$dumpvars(0, tb_ALU);
$monitor("Time=%t | Sel=%b  |A=%b  | B=%b  | Out=%b | Carry=%b",$time,Sel,A,B,Out,carry);
A=1010; B=1111;
#10 Sel=000;
#10 Sel=001;
#10 Sel=010;
#10 Sel=011;
#10 Sel=100;
#10 Sel=101;
#10 Sel=110;
#10 Sel=111;
$finish;
end
endmodule 
