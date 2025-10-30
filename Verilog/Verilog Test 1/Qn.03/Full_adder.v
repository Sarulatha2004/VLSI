module full_adder #(parameter N=8)
(input [N-1:0]A,B,
 input Cin,
 output [N-1:0]Sum,
 output Cout);
 assign Sum=A^B^Cin;
 assign Cout=(A&B) | (B&Cin) | (Cin&A);
endmodule
module full_add_tb;
parameter N=8;
reg [N-1:0]A,B;
reg Cin;
wire [N-1:0]Sum;
wire Cout;

full_adder uut(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));
initial begin
A=20; B=40; Cin=1;
$strobe("A=%b(%d)   | B=%b(%d) | Cin=%b | Sum=%b(%d)  |Cout=%b",A,A,B,B,Cin,Sum,Sum,Cout);
$finish;
end
endmodule


