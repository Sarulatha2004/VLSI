module tb_mul1_by4;
reg clk,rst,in;
wire out;

mul1_by4 uut (.clk(clk), .rst(rst), .in(in), .out(out));

initial clk=0;
always #5 clk=~clk;
initial begin
	$monitor("Time=%t | clk=%b | rst=%b | in=%b | out=%b",$time,clk,rst,in,out);
	in=0;rst=1;#10
	rst=0;
	in=1;#10
	in=1;#10
	in=1;#10
	in=1;#10
	in=1;#10
	in=0;#10
	in=0;#10
	in=1;#10
	in=1;#10
	in=1;#10
	in=1;#10
	in=1;#10
	in=1;#10
	in=1;#10
	$finish;
end
endmodule
