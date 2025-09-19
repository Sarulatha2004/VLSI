module strobe_use;
reg a,b;

initial begin
#5 a=0; b=0;
$strobe("Time=%t | a=%b |b=%b",$time,a,b);
a=1; b=0;#5
$strobe("Time=%t | a=%b |b=%b",$time,a,b);
a=0;b=1;#5
$finish;
end
endmodule
