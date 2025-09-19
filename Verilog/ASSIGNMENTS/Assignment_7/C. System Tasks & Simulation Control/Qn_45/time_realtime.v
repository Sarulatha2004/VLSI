`timescale 1ns/1ps
module time_realtime;
reg clk;
always #5.26 clk=~clk;

initial begin
 $monitor("Time=%.2f | RealTime=%.3f |  clk=%b",$time,$realtime,clk);
 clk=0; #100;$finish;
end
endmodule
