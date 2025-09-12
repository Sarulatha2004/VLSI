module tb_ripple_gen;
reg [3:0]A,B;
reg Cin;
wire [3:0]Sum;
wire Cout;
ripple_adder_4 uut(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));
initial begin
$dumpfile("Ripple-wave.vcd");
$dumpvars;
$monitor("Time=%t  |  A=%b  |  B=%b   | Cin=%b  |  Sum=%b  |  Cout=%b ", $time,A,B,Cin,Sum,Cout);
A=4'b0101; B=4'b0111; Cin=0;#10;
A=4'b1101; B=4'b0011; Cin=1;#10;
A=4'b0110; B=4'b1111; Cin=0;#10;
A=4'b1101; B=4'b0101; Cin=1;#10;
A=4'b0111; B=4'b0001; Cin=0;#10;
A=4'b1111; B=4'b1111; Cin=1;#10;
A=4'b0111; B=4'b0100; Cin=0;#10;
#100 $finish;
end 
endmodule
