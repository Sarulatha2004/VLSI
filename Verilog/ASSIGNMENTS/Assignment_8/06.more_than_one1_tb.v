module more_one_tb;
reg clk,rst,in;
wire out;
always #5 clk=~clk;
more_one uut (.clk(clk), .rst(rst), .in(in), .out(out));
initial begin
	$monitor(" Time= %t  |state =%b |in=%b| next_state =%b| out= %b",$time,uut.state, in,uut.next_state,out);
        clk=0;

	rst=1;#5;
	rst=0;

	in=0;#10;
	in=1;#10;
	in=0;#10;
	in=0;#10;
	in=1;#10;
	in=0;#10;
	in=0;#10;
	in=1;#10;
	in=0;#10;
	in=1;#10;
	in=1;#10;
	in=0;#10;
	in=0;#10;
	in=1;#10;
	in=1;#10;
	in=0;#10;
	in=0;#10;
	in=1;#10;
	$finish;
end
endmodule

