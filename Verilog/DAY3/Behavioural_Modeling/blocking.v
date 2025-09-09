module blocking();
reg a,b;
reg clk;
initial begin
#10;
a=#10 1'b1;
b=#10 1'b0;
#30;
a=#10 1'b0;
b=#10 1'b1;
#20;
end
initial
$monitor("time=%t ,a=%b, b=%b",$time,a,b);
initial 
clk=1;
endmodule


