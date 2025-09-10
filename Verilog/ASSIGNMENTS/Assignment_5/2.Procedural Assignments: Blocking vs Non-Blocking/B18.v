module mix;
reg a,b,c,clk;
initial begin
a=1; b=0;c=1;
#5 a<=b;
   c=a;
end
initial begin
        clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor("Time=%t |clk=%b| a=%b | b=%b|c=%b|",$time,clk,a,b,c);
a=1; b=0; c=1;
#100 $finish;
end
endmodule
