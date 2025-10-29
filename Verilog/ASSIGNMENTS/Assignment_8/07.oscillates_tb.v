module tb_oscillate;

reg clk,rst,A;
wire [1:0]out;

oscillate uut (.clk(clk), .rst(rst), .A(A), .out(out));
initial clk=0;

always #5 clk=~clk;

initial begin
	$monitor ( "A=%b | out=%b|" , A, out);
        A=0;
	rst=1;#10;
	rst=0;#10;

	A=0;#10;
	A=0;#10;
	A=1;#10;
	A=0;#10;

	$finish;

end
endmodule


