module tb_logic_udp;
reg x,y,z;
wire f;

logic_udp uut( .x(x), .y(y), .z(z), .f(f));
initial begin
	$dumpfile("logic_udp_wave.vcd");
	$dumpvars(0, tb_logic_udp);
	$display(" Time :  x  y  z :  f  ");
	$monitor(" %0t  :  %b %b %b : %b ",$time,x,y,z,f);

	x=0; y=0; z=0; #10;
	x=0; y=0; z=1; #10;
	x=0; y=1; z=0; #10;
	x=0; y=1; z=1; #10;
	x=1; y=0; z=0; #10;
	x=1; y=0; z=1; #10;
	x=1; y=1; z=0; #10;
	x=1; y=1; z=1; #10;
	$finish;
end 
endmodule
