module tb;
reg [3:0]a;
reg [3:0]b;
wire[7:0]o;

array_multi uut(.a(a),.b(b),.o(o));

initial begin
	$dumpfile("arr_multi.vcd");
	$dumpvars;


	$monitor("Time=%0t  |  a=%b(%d)  |  b=%b(%d)  | Result=%b(%d)",$time,a,a,b,b,o,o);

	a=4'b1110; b=4'b1010; #10;
	a=4'b1010; b=4'b0101; #10;
	a=4'b1010; b=4'b1011; #10;
	a=4'b0110; b=4'b1011; #10;
	a=4'b0010; b=4'b1111; #10;
	a=4'b0011; b=4'b1001; #10;
	a=4'b0111; b=4'b0011; #10;
	a=4'b0100; b=4'b1010; #10;
	a=4'b1111; b=4'b1111; #10;
	a=4'b0111; b=4'b1000; #10;
	a=4'b1110; b=4'b0001; #10;
	$finish;
end
endmodule
