module tb_bitwise;
reg x,y;
wire a,b,c,d,e;
bitwise_op uut (.x(x), .y(y), .a(a), .b(b), .c(c), .d(d), .e(e));
initial begin 
	$dumpfile(" bitwise_wave.vcd");
	$dumpvars(0, tb_bitwise);
	$display(" X  Y  |  ~X    X&Y   X|Y  X^Y  X~^Y");
	$monitor(" %b  %b |  %b   %b   %b  %b   %b",x,y,a,b,c,d,e);
	x=0; y=0; #10;
	x=0; y=1; #10;
	x=1; y=0; #10;
	x=1; y=1; #10;
	$finish;
end 
endmodule
