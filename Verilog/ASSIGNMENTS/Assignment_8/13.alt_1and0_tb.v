module alt1_0_tb;
reg clk,rst,in;
wire out;
alt1_0 uut (.clk(clk), .rst(rst), .in(in), .out(out));

initial clk=0;
always #5 clk=~clk;

initial begin
	$monitor (" Time=%0t | clk=%b |in=%b |state=%d| out=%b",$time,clk,in,uut.state,out);
	rst=1;in=0;
	#10;
	rst=0;
	in=1;#10
	in=0;#10
	in=1;#10
	in=0;#10
	in=0;#10
	in=1;#10
	in=0;#10
	in=1;#10
	in=0;#10
	in=1;#10
	in=0;#10
	in=0;#10
	in=1;#10
	$finish;
end
endmodule
