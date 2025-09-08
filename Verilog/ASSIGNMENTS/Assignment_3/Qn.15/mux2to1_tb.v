module tb_mux2to1;
reg a,b,s;
wire y;
mux2to1 uut(.a(a), .b(b), .s(s), .y(y));
initial begin 
$dumpfile("mux_wave.vcd");
$dumpvars(0, tb_mux2to1);
$monitor(" a=%b  b=%b  s=%b  |  y=%b",a,b,s,y);
a=0; b=0; s=0;#10;
a=1; b=0; s=0;#10;
a=0; b=1; s=0;#10;
a=1; b=1; s=0;#10;
a=0; b=0; s=1;#10;
a=1; b=0; s=1;#10;
a=0; b=1; s=1;#10;
a=1; b=1; s=1;#10;
$finish;
end
endmodule
