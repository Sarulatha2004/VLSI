module not_gate;
reg in;
wire out;


assign out=~in;

initial begin
$dumpfile("not_wave.vcd");
$dumpvars;
	
$monitor("Time=%t | in=%b | out=%b",$time,in,out);
in=0;#5;
in=1;#5;
in=0;#5;
in=1;#5;
in=0;#5;
in=1;#5;
#50;
$finish;
end 
endmodule
