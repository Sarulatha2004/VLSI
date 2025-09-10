module race;
reg a,clk;
always @(posedge clk)
  a<=0;
always @(posedge clk)
  a<=1;
initial begin
        clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor("Time=%t  |  clk=%b  |  a=%b  |",$time,clk,a);
#100 $finish;
end
endmodule
