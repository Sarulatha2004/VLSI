module monitor;
reg a,b;
initial begin
$monitor("Time=%t | a=%b | b=%b ",$time,a,b);
a=0; b=0;#5;
a=1; b=0;#5;
a=0;#5
$monitoroff;
a=1;b=0;#5;
b=1;#5;
a=0;b=0;
$monitoron;
a=1;b=0;#5;
b=1;
#100;
$finish;
end 
endmodule

