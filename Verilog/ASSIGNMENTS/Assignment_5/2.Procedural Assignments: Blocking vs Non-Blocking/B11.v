module block_vs_nonblock;
reg a,b,c,d;
initial begin
a=0;b=0;
#10 a=1;#5 b=1;
end
initial begin
c<=0;d<=0;
#5 c<=1; d<=c;
end 
initial begin
$monitor("time=%t  a=%b  b=%b  c=%b  d=%b",$time,a,b,c,d);
#100 $finish;
end
endmodule
