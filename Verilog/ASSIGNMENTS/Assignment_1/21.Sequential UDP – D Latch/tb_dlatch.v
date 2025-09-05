module tb_dlatch_udp;
reg clk,d;
wire q;
Dlatch_udp uut( .d(d), .clk(clk), .q(q));
initial  begin 
	$dumpfile("Dlatch_wave.vcd");
	$dumpvars(0, tb_dlatch_udp);
	$display(" Time  :  clk  d : q  ");
	$monitor(" %0t   :   %b  %b: %b",$time,clk,d,q);
        clk=0; d=0; #10;
	clk=0; d=0; #10;
	clk=1; d=0; #10;
	clk=0; d=1; #10;
	clk=1; d=0; #10;
	clk=0; d=1; #10;
	clk=0; d=1; #10;
	clk=1; d=1; #10;
$finish;
end 
endmodule

