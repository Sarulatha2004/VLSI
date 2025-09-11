module square;
reg clk;;
initial begin
clk=1;
forever #5 clk=~clk;
end
initial begin
$dumpfile("square_wave.vcd");
$dumpvars;
$monitor("Time=%t, clk=%b",$time,clk);
#100 $finish;
end
endmodule
