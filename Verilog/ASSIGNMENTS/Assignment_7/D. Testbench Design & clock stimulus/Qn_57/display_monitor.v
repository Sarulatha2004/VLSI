module display_monitor;
reg a,b;

initial begin
a=1;b=0;
#5 a=1;b=1;
$display("Time=%t | a=%b | b=%b",$time,a,b);
#5;
$monitor("Time=%t | a=%b | b=%b",$time,a,b);
a=0;b=0;#5;
a=1;b=0;#5;
a=0;b=1;#5;
#100;
$finish;
end
endmodule
