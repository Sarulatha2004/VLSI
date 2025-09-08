module tb_decode;
reg a,b;
wire [3:0]y;
decode uut(.a(a), .b(b), .y(y));
initial begin
$dumpfile("decode_wave.vcd");
$dumpvars(0,tb_decode);
$monitor(" a=%b b=%b  |  y=%b",a,b,y);
a=0; b=0;#10;
a=0; b=1;#10;
a=1; b=0;#10;
a=1; b=1;#10;
$finish;
end 
endmodule
