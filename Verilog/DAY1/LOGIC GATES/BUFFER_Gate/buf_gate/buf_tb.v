module buf_tb;
reg in;
wire out;
buffer uut(.in(in), .out(out));
initial begin
	$dumpfile("buf.vcd");
	$dumpvars;
	$monitor("in=%b | out=%b ",in,out);
	in=1;#10
	in=1;#10
	in=0;#10
	in=1;#10
	#10
	$finish;
end
endmodule
