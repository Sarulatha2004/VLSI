module tb_Half_sub;
reg a,b;
wire dif,bor;
Half_sub uut( .a(a), .b(b), .dif(dif) ,.bor(bor));
initial begin
	$dumpfile("Half_sub_wave.vcd");
	$dumpvars(0, tb_Half_sub);
	$display(" a  b  |  sum  carry");
	$monitor(" %b %b |  %b  %b  ",a,b,dif,bor);
	a=0;  b=0;#10;
	a=0;  b=1;#10;
	a=1;  b=0;#10;
	a=1;  b=1;#10;
	$finish;
end 
endmodule
