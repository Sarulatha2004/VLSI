module clk_forever;
reg clk;
initial begin
clk=0;
$dumpfile("clk_wave.vcd");
$dumpvars;
forever #5 clk=~clk;
end 
initial begin
	$monitor("time=%t , clk=%b",$time,clk);
	#100 $finish;
end
endmodule
