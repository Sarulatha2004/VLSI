module diff;
reg a,b;
initial begin
$monitor("time=%t,a=%b,b=%b",$time,a,b);
a=1;b=1;
#10 a=~a;
#100 $finish;
end
always #5 b=~b;
endmodule
