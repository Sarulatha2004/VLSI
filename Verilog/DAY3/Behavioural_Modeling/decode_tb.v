module tb_decode;
reg [1:0]d;
wire [3:0]y;
decode uut(.d(d), .y(y));
initial begin
$dumpfile("decode_wave.vcd");
$dumpvars(0, tb_decode);
$monitor(" %b   |    %b" ,d,y);
d=2'b00;#10;
d=2'b01;#10;
d=2'b10;#10;
d=2'b11;#10;
d=2'b1x;#10;
$finish;
end
endmodule
