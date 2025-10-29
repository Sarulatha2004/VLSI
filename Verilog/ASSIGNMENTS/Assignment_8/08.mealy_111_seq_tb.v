module tb_mealy111;

reg clk,rst,x;
wire y;

mealy_111 uut (.clk(clk), .rst(rst), .x(x), .y(y));

initial clk=0;
always #5 clk = ~clk;

initial begin

	$monitor (" Time =%0t |rst=%b |clk=%b |x=%b |state=%b |next_state=%b | y=%b",$time,rst, clk,x,uut.state,uut.next_state,y);

	rst=1;x=0;#5;
	rst=0;

	x=0;#10;
	x=1;#10;
	x=1;#10
	x=1;#10
	x=0;#10
	x=1;#10
	x=1;#10
	x=1;#10
	x=1;#10
	x=0;#10
	x=1;#10
	x=1;#10
	$finish;
end
endmodule


