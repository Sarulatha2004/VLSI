module tb_HA;
reg a,b;
wire s,c;
HA uut( .a(a), .b(b), .s(s) ,.c(c));
initial begin
	$dumpfile("HA_wave.vcd");
	$dumpvars(0, tb_HA);
	$display(" a  b  |  sum  carry");
	$monitor(" %b %b |  %b  %b  ",a,b,s,c);
	a=0;  b=0;#10;
	a=0;  b=1;#10;
	a=1;  b=0;#10;
	a=1;  b=1;#10;
	$finish;
end 
endmodule

