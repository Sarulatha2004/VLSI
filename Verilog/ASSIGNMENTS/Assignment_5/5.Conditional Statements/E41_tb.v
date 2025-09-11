module tb_encode;
reg [3:0]d;
wire [1:0]y;
encoder_if uut(.d(d), .y(y));
initial begin
	$dumpfile(" encode_wave.vcd");
	$dumpvars;
	$monitor("Time=%t | d=%b | y=%b ",$time,d,y);
	d=4'b0001;#10;
	d=4'b0010;#10;
	d=4'b0100;#10;
	d=4'b1000;#10;
	#100 $finish;
end
endmodule
