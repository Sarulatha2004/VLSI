module gen_clk;
reg clk;

always #5 clk=~clk;

initial begin

$monitor("Time+%t | clk=%b",$time,clk);
clk=0;#5
#100;
$finish;
end
endmodule
