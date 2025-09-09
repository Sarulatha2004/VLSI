module blocking();
reg a,b;
initial begin
#10;
#10 a<= 1'b1;
#10 b<= 1'b0;
#30;
#10 a<= 1'b0;
#10 b<= 1'b1;
#20;
end
initial
$monitor("time=%t ,a=%b, b=%b",$time,a,b);
endmodule
