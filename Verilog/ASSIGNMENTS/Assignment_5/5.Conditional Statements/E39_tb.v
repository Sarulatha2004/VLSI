module tb_counter;
reg clk,reset;
output [3:0]count;
counter uut( .clk(clk), .reset(reset), .count(count));
initial begin
$dumpfile("counter_wave.vcd");
$dumpvars;
$monitor("Time=%t | clk=%b | reset=%b | count=%b",$time,clk,reset,count);
clk=0; 
reset=1;
#10;
reset=0;
#100;
$finish;
end
always #5 clk=~clk;
endmodule
