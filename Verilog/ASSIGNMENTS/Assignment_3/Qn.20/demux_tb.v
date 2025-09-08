module tb_demux;
reg en;
reg d;
reg[1:0]s;
wire [3:0]y;
demux1to4 uut(.en(en), .d(d), .s(s), .y(y));
initial begin
$dumpfile("demux_wave.vcd");
$dumpvars(0, tb_demux);
$monitor(" en=%b   d=%b    s=%b  |  y=%b",en,d,s,y);
en=0;d=0;s=2'b00;#10;
en=1;d=1;s=2'b00;#10;
en=1;d=1;s=2'b01;#10;
en=1;d=1;s=2'b10;#10;
en=1;d=1;s=2'b11;#10;
$finish;
end
endmodule
