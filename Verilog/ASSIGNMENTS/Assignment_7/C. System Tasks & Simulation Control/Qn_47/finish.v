module finish;
reg clk;

always #5 clk=~clk;

initial begin 

$monitor("Time=%t | clk=%b",$time,clk);
clk=0;#5;
#45;$finish;
end
endmodule
