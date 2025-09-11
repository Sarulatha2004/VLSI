module tb_priority;
reg a,b,c;
wire y;
priority_logic uut(.a(a),.b(b) , .c(c), .y(y));
initial  begin 
 $dumpfile("pri_wave.vcd");
 $dumpvars;
 $monitor("Time=%t | a=%b | b=%b | c=%b | y=%b",$time,a,b,c,y);
 a=1;b=0;c=0;#10;
 a=0;b=1;c=0;#10;
 a=0;b=0;c=1;#10;
 a=0;b=1;c=0;#10;
 a=1;b=0;c=0;#10;
 a=0;b=1;c=0;#10;
 a=0;b=0;c=1;#10;
 a=0;b=0;c=0;#10;
 #100; $finish;
 end 
 endmodule
