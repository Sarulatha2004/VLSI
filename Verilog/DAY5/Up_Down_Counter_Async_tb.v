module tb_up_down_counter_async;
reg clk,reset,M;
wire [3:0]q;
up_down_counter_async uut(.clk(clk), .reset(reset), .q(q), .M(M));
always #5 clk=~clk;
initial begin
$dumpfile("Up_down_wave.vcd");
$dumpvars;
$monitor("Time=%t  | clk=%b |  reset=%b | M=%b |  q=%b ",$time,clk,reset,M,q);
clk=0;reset=1; M=1;#10;
reset=0; M=0;#20;
reset=0; M=1;#20;
reset=0; M=1;#20;
reset=0; M=1;#20;
reset=0; M=0;#20;
reset=0; M=0;#20;
reset=0; M=1;#20;
reset=0; M=1;#20;
#200 $finish;
end
endmodule
