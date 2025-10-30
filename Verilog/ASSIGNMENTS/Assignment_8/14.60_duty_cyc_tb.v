module tb_clk;
reg clk;
wire clk_out;
reg reset;

duty_cyc_60 uut(.clk(clk), .clk_out(clk_out), .reset(reset));
always #5 clk=~clk;
initial begin
$dumpfile("duty_cyc.vcd");
$dumpvars;
clk=0;
reset =1;
#10 reset =0;
#100
$finish;

  end
endmodule
