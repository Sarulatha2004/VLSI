module tb_flag;
reg f1,f2,f3;
wire out;
flag_logic uut(.f1(f1), .f2(f2), .f3(f3), .out(out));
initial begin
$dumpfile("flag_wave.vcd");
$dumpvars;
$monitor("Time=%t | f1=%b | f2=%b | f3=%b | out=%b",$time,f1,f2,f3,out);
f1=0;f2=0;f3=1;#10;
f1=0;f2=1;f3=0;#10;
f1=1;f2=0;f3=0;#10;
f1=0;f2=0;f3=0;#10;
end
endmodule
